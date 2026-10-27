import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
# A035900: Coordination sequence for diamond structure D^+_48. (Edges defined by l_1 norm = 1.).

The programs for A035900, there is no canonical definition to state claims against.
-/

/-! ## A035900.P16997317485716552935

`and(A033999(A069778(n)), A035743(n))`
-/

namespace A035900.P16997317485716552935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A069778 n).toNat) (A035743 n)

end

end A035900.P16997317485716552935

/-! ## A035900.P7829139243649159143

`A000035(A100178(n+1))*A035743(n)`
-/

namespace A035900.P7829139243649159143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100178 (n + 1)).toNat * A035743 n

end

end A035900.P7829139243649159143

/-! ## A035900.P8942075241748381312

`and(A033999(A327475(n)), A035743(n))`
-/

namespace A035900.P8942075241748381312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A327475 n).toNat) (A035743 n)

end

end A035900.P8942075241748381312

/-! ## A035900.P5341887533273398896

`lcm(A035743(n), A092220(A000051(n)))`
-/

namespace A035900.P5341887533273398896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035743 n) (A092220 (A000051 n).toNat)

end

end A035900.P5341887533273398896

/-!
# A035901: Coordination sequence for diamond structure D^+_50. (Edges defined by l_1 norm = 1.).

The programs for A035901, there is no canonical definition to state claims against.
-/

/-! ## A035901.P5471927484486992088

`C(A035745(n), A035748(A138364(n)))`
-/

namespace A035901.P5471927484486992088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035745 n).toNat (A035748 (A138364 n).toNat).toNat

end

end A035901.P5471927484486992088

/-! ## A035901.P2592769481928822158

`A000035(A264443(2*n+1))*A035745(n)`
-/

namespace A035901.P2592769481928822158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264443 (2 * n + 1)).toNat * A035745 n

end

end A035901.P2592769481928822158

/-! ## A035901.P2772183072565458791

`A035745(n)*A267635(A131577(n))`
-/

namespace A035901.P2772183072565458791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035745 n * A267635 (A131577 n).toNat

end

end A035901.P2772183072565458791

/-! ## A035901.P6171333157505483873

`and(A020985(A000225(n)), A035745(n))`
-/

namespace A035901.P6171333157505483873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 (A000225 n).toNat) (A035745 n)

end

end A035901.P6171333157505483873

/-! ## A035901.P7290401863555389051

`A010892(A095121(n))*A035745(n)`
-/

namespace A035901.P7290401863555389051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A095121 n).toNat * A035745 n

end

end A035901.P7290401863555389051

/-!
# A035902: Coordination sequence for diamond structure D^+_52. (Edges defined by l_1 norm = 1.)

The programs for A035902, there is no canonical definition to state claims against.
-/

/-! ## A035902.P17388237611332800946

`and(A033999(A038754(n)), A035811(n))`
-/

namespace A035902.P17388237611332800946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A038754 n).toNat) (A035811 n)

end

end A035902.P17388237611332800946

/-! ## A035902.P7909414811517802098

`and(A033999(A072374(n+1)), A035811(n))`
-/

namespace A035902.P7909414811517802098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A072374 (n + 1)).toNat) (A035811 n)

end

end A035902.P7909414811517802098

/-! ## A035902.P838011337104025575

`and(A035811(n), A195679(A045544(n+1)))`
-/

namespace A035902.P838011337104025575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035811 n) (A195679 (A045544 (n + 1)).toNat)

end

end A035902.P838011337104025575

/-! ## A035902.P6381235947864959264

`A035811(n)*A118816(A038754(n))*A033999(n)`
-/

namespace A035902.P6381235947864959264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035811 n * A118816 (A038754 n).toNat * A033999 n

end

end A035902.P6381235947864959264

/-! ## A035902.P1994235307086875574

`A035811(n)*A118816(A038754(n))*A211987(n+1)`
-/

namespace A035902.P1994235307086875574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035811 n * A118816 (A038754 n).toNat * A211987 (n + 1)

end

end A035902.P1994235307086875574

/-!
# A035903: Coordination sequence for diamond structure D^+_54. (Edges defined by l_1 norm = 1.)

The programs for A035903, there is no canonical definition to state claims against.
-/

/-! ## A035903.P15689147143587139561

`A035812(n)%A046223(A186113(n))`
-/

namespace A035903.P15689147143587139561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035812 n) (A046223 (A186113 n).toNat)

end

end A035903.P15689147143587139561

/-! ## A035903.P14588298747921262226

`A000035(A038754(n))*A035812(n)`
-/

namespace A035903.P14588298747921262226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A038754 n).toNat * A035812 n

end

end A035903.P14588298747921262226

/-! ## A035903.P2337744689579815788

`(1-A030301(A000079(n)))*A035812(n)`
-/

namespace A035903.P2337744689579815788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030301 (A000079 n).toNat) * A035812 n

end

end A035903.P2337744689579815788

/-! ## A035903.P434690842332739143

`A035812(n)*A304109(A048578(n))`
-/

namespace A035903.P434690842332739143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035812 n * A304109 (A048578 n).toNat

end

end A035903.P434690842332739143

/-! ## A035903.P9517357036484578477

`A030301(A000079(n+1))*A035812(n)`
-/

namespace A035903.P9517357036484578477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A000079 (n + 1)).toNat * A035812 n

end

end A035903.P9517357036484578477

/-!
# A035904: Coordination sequence for diamond structure D^+_56. (Edges defined by l_1 norm = 1.)

The programs for A035904, there is no canonical definition to state claims against.
-/

/-! ## A035904.P14302462674772910455

`and(A033999(A119016(n)), A035813(n))`
-/

namespace A035904.P14302462674772910455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A119016 n).toNat) (A035813 n)

end

end A035904.P14302462674772910455

/-! ## A035904.P11322215077658112487

`and(A033999(A187829(n+1)), A035813(n))`
-/

namespace A035904.P11322215077658112487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A187829 (n + 1)).toNat) (A035813 n)

end

end A035904.P11322215077658112487

/-! ## A035904.P16239763639793854605

`A035153(2^n)*A035813(n)`
-/

namespace A035904.P16239763639793854605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035153 (2 ^ n) * A035813 n

end

end A035904.P16239763639793854605

/-! ## A035904.P6740785229700628482

`A000035(A279030(n))*A035813(n)`
-/

namespace A035904.P6740785229700628482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A279030 n).toNat * A035813 n

end

end A035904.P6740785229700628482

/-! ## A035904.P1888032788121025710

`A000035(A278468(n))*A035813(n)`
-/

namespace A035904.P1888032788121025710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278468 n).toNat * A035813 n

end

end A035904.P1888032788121025710

/-!
# A035905: Coordination sequence for diamond structure D^+_58. (Edges defined by l_1 norm = 1.)

The programs for A035905, there is no canonical definition to state claims against.
-/

/-! ## A035905.P5464092771011899601

`A035814(n)*A338690(A005179(n+1))`
-/

namespace A035905.P5464092771011899601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035814 n * A338690 (A005179 (n + 1)).toNat

end

end A035905.P5464092771011899601

/-! ## A035905.P11377166067289221700

`and(A035814(n), A037861(A061547(n)))`
-/

namespace A035905.P11377166067289221700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035814 n) (A037861 (A061547 n).toNat)

end

end A035905.P11377166067289221700

/-! ## A035905.P17694877454511348731

`A035814(n)*A338690(A000079(n))`
-/

namespace A035905.P17694877454511348731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035814 n * A338690 (A000079 n).toNat

end

end A035905.P17694877454511348731

/-! ## A035905.P6777216922651342749

`A035814(n)*A338690(A050732(n+1))`
-/

namespace A035905.P6777216922651342749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035814 n * A338690 (A050732 (n + 1)).toNat

end

end A035905.P6777216922651342749

/-! ## A035905.P7112792495124953663

`A011655(A126646(n))*A035814(n)`
-/

namespace A035905.P7112792495124953663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A126646 n).toNat * A035814 n

end

end A035905.P7112792495124953663

/-!
# A035906: Coordination sequence for diamond structure D^+_60. (Edges defined by l_1 norm = 1.)

The programs for A035906, there is no canonical definition to state claims against.
-/

/-! ## A035906.P12546091380499977014

`and(A033999(A080697(n+1)), A035815(n))`
-/

namespace A035906.P12546091380499977014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A080697 (n + 1)).toNat) (A035815 n)

end

end A035906.P12546091380499977014

/-! ## A035906.P541092855986220353

`(1-A030301(A000079(n)))*A035815(n)`
-/

namespace A035906.P541092855986220353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030301 (A000079 n).toNat) * A035815 n

end

end A035906.P541092855986220353

/-! ## A035906.P4306092307507113823

`A030301(A000079(n+1))*A035815(n)`
-/

namespace A035906.P4306092307507113823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A000079 (n + 1)).toNat * A035815 n

end

end A035906.P4306092307507113823

/-! ## A035906.P14445719377338260027

`A030301(2*A000079(n))*A035815(n)`
-/

namespace A035906.P14445719377338260027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * A000079 n).toNat * A035815 n

end

end A035906.P14445719377338260027

/-! ## A035906.P4584014157174190115

`A010056(A049479(n+2))*A035815(n)`
-/

namespace A035906.P4584014157174190115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A049479 (n + 2)).toNat * A035815 n

end

end A035906.P4584014157174190115

/-!
# A035907: Coordination sequence for diamond structure D^+_62. (Edges defined by l_1 norm = 1.)

The programs for A035907, there is no canonical definition to state claims against.
-/

/-! ## A035907.P13485266091542611670

`A035816(n)*A056594(A244634(n))`
-/

namespace A035907.P13485266091542611670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035816 n * A056594 (A244634 n).toNat

end

end A035907.P13485266091542611670

/-! ## A035907.P11695313738306577944

`and(A035816(n), A049347(A000079(n)))`
-/

namespace A035907.P11695313738306577944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035816 n) (A049347 (A000079 n).toNat)

end

end A035907.P11695313738306577944

/-! ## A035907.P13999439377567091983

`and(A035816(n), A056594((1-(n+2)²)²+1-n²))`
-/

namespace A035907.P13999439377567091983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035816 n) (A056594 ((1 - ((n + 2) ^ 2 : ℤ)) ^ 2 + (1 - (n ^ 2 : ℤ))).toNat)

end

end A035907.P13999439377567091983

/-! ## A035907.P1030571421198411881

`A035816(n)*A118816(A038754(n))`
-/

namespace A035907.P1030571421198411881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035816 n * A118816 (A038754 n).toNat

end

end A035907.P1030571421198411881

/-!
# A035908: Coordination sequence for diamond structure D^+_64. (Edges defined by l_1 norm = 1.)

The programs for A035908, there is no canonical definition to state claims against.
-/

/-! ## A035908.P9401098087889575939

`A033684(A000079(n))*A035817(n)`
-/

namespace A035908.P9401098087889575939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A000079 n).toNat * A035817 n

end

end A035908.P9401098087889575939

/-! ## A035908.P15566184907785088709

`and(A033999(A072374(n+1)), A035817(n))`
-/

namespace A035908.P15566184907785088709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A072374 (n + 1)).toNat) (A035817 n)

end

end A035908.P15566184907785088709

/-! ## A035908.P2077819794541317991

`and(A008683(A120733(n)), A035817(n))`
-/

namespace A035908.P2077819794541317991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A120733 n).toNat) (A035817 n)

end

end A035908.P2077819794541317991

/-!
# A035909: Coordination sequence for diamond structure D^+_66. (Edges defined by l_1 norm = 1.)

The programs for A035909, there is no canonical definition to state claims against.
-/

/-! ## A035909.P14817212329331048453

`(1-A030301(A000079(n)))*A035818(n)`
-/

namespace A035909.P14817212329331048453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030301 (A000079 n).toNat) * A035818 n

end

end A035909.P14817212329331048453

/-! ## A035909.P190371882077565500

`A030301(A000079(n+1))*A035818(n)`
-/

namespace A035909.P190371882077565500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A000079 (n + 1)).toNat * A035818 n

end

end A035909.P190371882077565500

/-! ## A035909.P12517498865819274580

`A030301(2*A000079(n))*A035818(n)`
-/

namespace A035909.P12517498865819274580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * A000079 n).toNat * A035818 n

end

end A035909.P12517498865819274580

/-! ## A035909.P13560462570330591368

`A000035(A187829(n+1))*A035818(n)`
-/

namespace A035909.P13560462570330591368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187829 (n + 1)).toNat * A035818 n

end

end A035909.P13560462570330591368

/-! ## A035909.P5573744511517240074

`lcm(A008683(A100828(n)), A035818(n))`
-/

namespace A035909.P5573744511517240074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A100828 n).toNat) (A035818 n)

end

end A035909.P5573744511517240074

/-!
# A035910: Coordination sequence for diamond structure D^+_68. (Edges defined by l_1 norm = 1.)

The programs for A035910, there is no canonical definition to state claims against.
-/

/-! ## A035910.P3848081230711249306

`lcm(A008683(A171714(n)), A035819(n))`
-/

namespace A035910.P3848081230711249306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A171714 n).toNat) (A035819 n)

end

end A035910.P3848081230711249306

/-! ## A035910.P12025159084423805799

`A035819(n)*A037860(eq[1, A347689(n)])`
-/

namespace A035910.P12025159084423805799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035819 n * A037860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035910.P12025159084423805799

/-! ## A035910.P12277486783776632781

`A035819(n)*A037860(eq[9, A151949(n)])`
-/

namespace A035910.P12277486783776632781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035819 n * A037860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035910.P12277486783776632781

/-! ## A035910.P16124638087720963355

`A000035(A077168(n))*A035819(n)`
-/

namespace A035910.P16124638087720963355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077168 n).toNat * A035819 n

end

end A035910.P16124638087720963355

/-!
# A035911: Coordination sequence for diamond structure D^+_70. (Edges defined by l_1 norm = 1.)

The programs for A035911, there is no canonical definition to state claims against.
-/

/-! ## A035911.P13949115257639639153

`A000035(A007910(n))*A035820(n)`
-/

namespace A035911.P13949115257639639153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007910 n).toNat * A035820 n

end

end A035911.P13949115257639639153

/-! ## A035911.P10567405505302022569

`lcm(A010892(A000079(n)), A035820(n))`
-/

namespace A035911.P10567405505302022569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A000079 n).toNat) (A035820 n)

end

end A035911.P10567405505302022569

/-! ## A035911.P16810732864114087882

`and(A033999(A072374(n+1)), A035820(n))`
-/

namespace A035911.P16810732864114087882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A072374 (n + 1)).toNat) (A035820 n)

end

end A035911.P16810732864114087882

/-!
# A035912: Coordination sequence for diamond structure D^+_72. (Edges defined by l_1 norm = 1.)

The programs for A035912, there is no canonical definition to state claims against.
-/

/-! ## A035912.P11946833911386714767

`A035821(n)*A289741(A067956(n+1))`
-/

namespace A035912.P11946833911386714767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035821 n * A289741 (A067956 (n + 1)).toNat

end

end A035912.P11946833911386714767

/-! ## A035912.P9156650329995426551

`and(A008836(A166444(n+1)), A035821(n))`
-/

namespace A035912.P9156650329995426551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008836 (A166444 (n + 1)).toNat) (A035821 n)

end

end A035912.P9156650329995426551

/-! ## A035912.P9423782665080363819

`lcm(A010892(2^n), A035821(n))`
-/

namespace A035912.P9423782665080363819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (2 ^ n)) (A035821 n)

end

end A035912.P9423782665080363819

/-! ## A035912.P10491282411918313467

`A035186(A000079(n))*A035821(n)`
-/

namespace A035912.P10491282411918313467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A000079 n).toNat * A035821 n

end

end A035912.P10491282411918313467

/-! ## A035912.P7216466121763542498

`and(A010892(A000225(n)), A035821(n))`
-/

namespace A035912.P7216466121763542498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 (A000225 n).toNat) (A035821 n)

end

end A035912.P7216466121763542498

/-!
# A035913: Coordination sequence for diamond structure D^+_74. (Edges defined by l_1 norm = 1.)

The programs for A035913, there is no canonical definition to state claims against.
-/

/-! ## A035913.P13492320547946483451

`A000035(A248038(n+1))*A035822(n)`
-/

namespace A035913.P13492320547946483451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A248038 (n + 1)).toNat * A035822 n

end

end A035913.P13492320547946483451

/-! ## A035913.P5543043483908367531

`A000035(A328023(n+1))*A035822(n)`
-/

namespace A035913.P5543043483908367531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328023 (n + 1)).toNat * A035822 n

end

end A035913.P5543043483908367531

/-! ## A035913.P2518559961913276461

`A000035(A339454(n+1))*A035822(n)`
-/

namespace A035913.P2518559961913276461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A339454 (n + 1)).toNat * A035822 n

end

end A035913.P2518559961913276461

/-! ## A035913.P11131496966132236890

`and(A035822(n), A343785(A011782(n)))`
-/

namespace A035913.P11131496966132236890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035822 n) (A343785 (A011782 n).toNat)

end

end A035913.P11131496966132236890

/-! ## A035913.P7221043578804691243

`A000035(A166671(n+1))*A035822(n)`
-/

namespace A035913.P7221043578804691243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A166671 (n + 1)).toNat * A035822 n

end

end A035913.P7221043578804691243

/-!
# A035914: Coordination sequence for diamond structure D^+_76. (Edges defined by l_1 norm = 1.)

The programs for A035914, there is no canonical definition to state claims against.
-/

/-! ## A035914.P9030379210895928056

`and(A010892(A027383(n)), A035823(n))`
-/

namespace A035914.P9030379210895928056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 (A027383 n).toNat) (A035823 n)

end

end A035914.P9030379210895928056

/-! ## A035914.P13743766224702963378

`A000035(A273214(n))*A035823(n)`
-/

namespace A035914.P13743766224702963378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A273214 n).toNat * A035823 n

end

end A035914.P13743766224702963378

/-! ## A035914.P1660400034551637304

`A035823(n)*A086747(2^n)`
-/

namespace A035914.P1660400034551637304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035823 n * A086747 (2 ^ n)

end

end A035914.P1660400034551637304

/-! ## A035914.P16030761431269562972

`and(A010892(A000079(n)), A035823(n))`
-/

namespace A035914.P16030761431269562972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 (A000079 n).toNat) (A035823 n)

end

end A035914.P16030761431269562972

/-! ## A035914.P11928723833101424393

`and(A010892(A000225(n)), A035823(n))`
-/

namespace A035914.P11928723833101424393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 (A000225 n).toNat) (A035823 n)

end

end A035914.P11928723833101424393

/-!
# A035915: Coordination sequence for diamond structure D^+_78. (Edges defined by l_1 norm = 1.)

The programs for A035915, there is no canonical definition to state claims against.
-/

/-! ## A035915.P7734677677554283189

`A000035(A059329(n))*A035824(n)`
-/

namespace A035915.P7734677677554283189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035824 n

end

end A035915.P7734677677554283189

/-! ## A035915.P11143573804941012919

`lcm(A035824(n), A036578(A016850(n)))`
-/

namespace A035915.P11143573804941012919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035824 n) (A036578 (A016850 n).toNat)

end

end A035915.P11143573804941012919

/-! ## A035915.P7565691417810804209

`(1-A030301(A000079(n)))*A035824(n)`
-/

namespace A035915.P7565691417810804209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030301 (A000079 n).toNat) * A035824 n

end

end A035915.P7565691417810804209

/-! ## A035915.P6994767410699403928

`A030301(A000079(n+1))*A035824(n)`
-/

namespace A035915.P6994767410699403928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A000079 (n + 1)).toNat * A035824 n

end

end A035915.P6994767410699403928

/-! ## A035915.P11259911491987983372

`A030301(2*A000079(n))*A035824(n)`
-/

namespace A035915.P11259911491987983372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * A000079 n).toNat * A035824 n

end

end A035915.P11259911491987983372

/-!
# A035916: Coordination sequence for diamond structure D^+_80. (Edges defined by l_1 norm = 1.)

The programs for A035916, there is no canonical definition to state claims against.
-/

/-! ## A035916.P6420381538317931585

`A000035(A059329(n))*A035825(n)`
-/

namespace A035916.P6420381538317931585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035825 n

end

end A035916.P6420381538317931585

/-! ## A035916.P14764210669853770714

`and(A035825(n), A287493(A017449(n)))`
-/

namespace A035916.P14764210669853770714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035825 n) (A287493 (A017449 n).toNat)

end

end A035916.P14764210669853770714

/-! ## A035916.P2237564115958629302

`A000035(A129196(n))*A035825(n)`
-/

namespace A035916.P2237564115958629302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A129196 n).toNat * A035825 n

end

end A035916.P2237564115958629302

/-! ## A035916.P8599450188522995500

`A035825(n)*A057427(A126869(n))`
-/

namespace A035916.P8599450188522995500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035825 n * A057427 (A126869 n).toNat

end

end A035916.P8599450188522995500

/-! ## A035916.P5132701011724495729

`A010054(A066532(n+1))*A035825(n)`
-/

namespace A035916.P5132701011724495729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A066532 (n + 1)).toNat * A035825 n

end

end A035916.P5132701011724495729

/-!
# A035917: Coordination sequence for diamond structure D^+_82. (Edges defined by l_1 norm = 1.)

The programs for A035917, there is no canonical definition to state claims against.
-/

/-! ## A035917.P16433322311368127891

`A000035(A059329(n))*A035826(n)`
-/

namespace A035917.P16433322311368127891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035826 n

end

end A035917.P16433322311368127891

/-! ## A035917.P13275017158627328318

`A035826(n)*A191254(A156676(n))`
-/

namespace A035917.P13275017158627328318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035826 n * A191254 (A156676 n).toNat

end

end A035917.P13275017158627328318

/-! ## A035917.P10798253813641524808

`(1-A030301(A000079(n)))*A035826(n)`
-/

namespace A035917.P10798253813641524808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030301 (A000079 n).toNat) * A035826 n

end

end A035917.P10798253813641524808

/-! ## A035917.P17410315331729869636

`A030301(A000079(n+1))*A035826(n)`
-/

namespace A035917.P17410315331729869636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A000079 (n + 1)).toNat * A035826 n

end

end A035917.P17410315331729869636

/-! ## A035917.P3541413736473624404

`A030301(2*A000079(n))*A035826(n)`
-/

namespace A035917.P3541413736473624404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * A000079 n).toNat * A035826 n

end

end A035917.P3541413736473624404

/-!
# A035918: Coordination sequence for diamond structure D^+_84. (Edges defined by l_1 norm = 1.)

The programs for A035918, there is no canonical definition to state claims against.
-/

/-! ## A035918.P12877571544054768266

`A000035(A059329(n))*A035827(n)`
-/

namespace A035918.P12877571544054768266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035827 n

end

end A035918.P12877571544054768266

/-! ## A035918.P3125294043775683600

`A287227(n)%2*A035827(n)`
-/

namespace A035918.P3125294043775683600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287227 n) 2 * A035827 n

end

end A035918.P3125294043775683600

/-! ## A035918.P5921753470368082776

`A000035((n+1)*Δ[n^3])*A035827(n)`
-/

namespace A035918.P5921753470368082776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat * A035827 n

end

end A035918.P5921753470368082776

/-! ## A035918.P11821147105086175293

`and(A010892(2^n-1), A035827(n))`
-/

namespace A035918.P11821147105086175293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 (2 ^ n - 1)) (A035827 n)

end

end A035918.P11821147105086175293

/-! ## A035918.P11704920419152442442

`lcm(A010892(A000079(n)), A035827(n))`
-/

namespace A035918.P11704920419152442442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A000079 n).toNat) (A035827 n)

end

end A035918.P11704920419152442442

/-!
# A035919: Coordination sequence for diamond structure D^+_86. (Edges defined by l_1 norm = 1.)

The programs for A035919, there is no canonical definition to state claims against.
-/

/-! ## A035919.P14221809670675348749

`A000035(A059329(n))*A035828(n)`
-/

namespace A035919.P14221809670675348749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035828 n

end

end A035919.P14221809670675348749

/-! ## A035919.P14124138390749517551

`A035828(n)*A265182(A138342(n+1))`
-/

namespace A035919.P14124138390749517551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035828 n * A265182 (A138342 (n + 1)).toNat

end

end A035919.P14124138390749517551

/-! ## A035919.P7376731239924037395

`A035828(n)*A191254(A156676(n))`
-/

namespace A035919.P7376731239924037395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035828 n * A191254 (A156676 n).toNat

end

end A035919.P7376731239924037395

/-! ## A035919.P2575147243309376715

`A000035(A157474(n+1))*A035828(n)`
-/

namespace A035919.P2575147243309376715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A157474 (n + 1)).toNat * A035828 n

end

end A035919.P2575147243309376715

/-! ## A035919.P14880070560143041983

`A030300(A095121(n))*A035828(n)`
-/

namespace A035919.P14880070560143041983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A095121 n).toNat * A035828 n

end

end A035919.P14880070560143041983

/-!
# A035920: Coordination sequence for diamond structure D^+_88. (Edges defined by l_1 norm = 1.)

The programs for A035920, there is no canonical definition to state claims against.
-/

/-! ## A035920.P3496613621216065982

`A000035(A059329(n))*A035829(n)`
-/

namespace A035920.P3496613621216065982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A059329 n).toNat * A035829 n

end

end A035920.P3496613621216065982

/-! ## A035920.P17444213302009101579

`A035829(n)*A191254(A156676(n))`
-/

namespace A035920.P17444213302009101579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035829 n * A191254 (A156676 n).toNat

end

end A035920.P17444213302009101579

/-! ## A035920.P9594522361683044582

`lcm(A010892(A000079(n)), A035829(n))`
-/

namespace A035920.P9594522361683044582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A000079 n).toNat) (A035829 n)

end

end A035920.P9594522361683044582

/-! ## A035920.P8338624663149206600

`and(A033999(A072374(n+1)), A035829(n))`
-/

namespace A035920.P8338624663149206600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A072374 (n + 1)).toNat) (A035829 n)

end

end A035920.P8338624663149206600

/-!
# A035924: Coordination sequence for diamond structure D^+_96. (Edges defined by l_1 norm = 1.)

The programs for A035924, there is no canonical definition to state claims against.
-/

/-! ## A035924.P18062225004244429296

`and(A035833(n), A158387(2^n))`
-/

namespace A035924.P18062225004244429296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035833 n) (A158387 (2 ^ n))

end

end A035924.P18062225004244429296

/-!
# A035927: One less than number of n-multisets chosen from a 10-set.

The programs for A035927, the canonical program `A035927.P5963660235913258710` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035927 has offset 0).

The definition of A035927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035927.P5963660235913258710

`C(n+9, 9)-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035927

/-- `C(n+9, 9)-1` -/
def P5963660235913258710.Spec : Prop :=
  ∀ n, P5963660235913258710.a n = A035927 n

theorem P5963660235913258710.correct : P5963660235913258710.Spec := by
  intro n
  simp only [A035927]

end A035927

/-! ## A035927.P12516516057627013034

`or(n, -1)+C(n+9, 9)`
-/

namespace A035927.P12516516057627013034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-1) + (Nat.choose (n + 9) 9 : ℤ)

end

end A035927.P12516516057627013034

namespace A035927

/-- `or(n, -1)+C(n+9, 9)` -/
def P12516516057627013034.Spec : Prop :=
  ∀ n, P12516516057627013034.a n = A035927 n

end A035927

/-! ## A035927.P5982594396609616152

`∑[C(n+8, 8)%C(n+9, 9)]`
-/

namespace A035927.P5982594396609616152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 % Nat.choose (n + 9) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035927.P5982594396609616152

namespace A035927

/-- `∑[C(n+8, 8)%C(n+9, 9)]` -/
def P5982594396609616152.Spec : Prop :=
  ∀ n, (P5982594396609616152.a n : ℤ) = A035927 n

end A035927

/-! ## A035927.P6711839915879784476

`∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]-1`
-/

namespace A035927.P6711839915879784476
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A035927.P6711839915879784476

namespace A035927

/-- `∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]-1` -/
def P6711839915879784476.Spec : Prop :=
  ∀ n, P6711839915879784476.a n = A035927 n

end A035927

/-! ## A035927.P3480930600177165760

`∑[A000581(n+8)%A010968(n)]`
-/

namespace A035927.P3480930600177165760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000581 (n + 8)) (A010968 (n + 15))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035927.P3480930600177165760

namespace A035927

/-- `∑[A000581(n+8)%A010968(n)]` -/
def P3480930600177165760.Spec : Prop :=
  ∀ n, P3480930600177165760.a n = A035927 n

end A035927

/-! ## A035927.P11830995025689315427

`A127229(n+5)%A000582(n+9)`
-/

namespace A035927.P11830995025689315427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A000582 (n + 9))

end

end A035927.P11830995025689315427

namespace A035927

/-- `A127229(n+5)%A000582(n+9)` -/
def P11830995025689315427.Spec : Prop :=
  ∀ n, P11830995025689315427.a n = A035927 n

end A035927

/-! ## A035927.P11373500873296461943

`record[∑[C(n, 8)-char[1]]]`
-/

namespace A035927.P11373500873296461943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 8 : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035927.P11373500873296461943

namespace A035927

/-- `record[∑[C(n, 8)-char[1]]]` -/
def P11373500873296461943.Spec : Prop :=
  ∀ n, P11373500873296461943.a n = A035927 n

end A035927

/-! ## A035927.P14457582241390912938

`(A140354(n)-A000079(n))/A000079(n)`
-/

namespace A035927.P14457582241390912938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140354 n - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A035927.P14457582241390912938

namespace A035927

/-- `(A140354(n)-A000079(n))/A000079(n)` -/
def P14457582241390912938.Spec : Prop :=
  ∀ n, P14457582241390912938.a n = (A035927 n : ℚ)

end A035927

/-! ## A035927.P10856891390508714688

`A014473(eq[8, A116598(n)])`
-/

namespace A035927.P10856891390508714688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035927.P10856891390508714688

namespace A035927

/-- `A014473(eq[8, A116598(n)])` -/
def P10856891390508714688.Spec : Prop :=
  ∀ n, P10856891390508714688.a n = A035927 n

end A035927

/-!
# A035928: Numbers n such that BCR(n) = n, where BCR = binary-complement-and-reverse = take one's complement then reverse bit order.

The programs for A035928, the canonical program `A035928.P1929867611185398910` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035928 has offset 1).

The definition of A035928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035928.P1929867611185398910

`(n+1)*A062383(n+1)+A036044(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035928

/-- `(n+1)*A062383(n+1)+A036044(n+1)` -/
def P1929867611185398910.Spec : Prop :=
  ∀ n, P1929867611185398910.a n = A035928 (n + 1)

theorem P1929867611185398910.correct : P1929867611185398910.Spec := by
  intro n
  simp only [A035928, Nat.add_sub_cancel]

end A035928

/-! ## A035928.P7748012293273037804

`2*A290254(n+2)`
-/

namespace A035928.P7748012293273037804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290254 (n + 2)

end

end A035928.P7748012293273037804

namespace A035928

/-- `2*A290254(n+2)` -/
def P7748012293273037804.Spec : Prop :=
  ∀ n, P7748012293273037804.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P9372563706420647823

`A036044(n+1)+A253608(n+1)-A035327(n+1)`
-/

namespace A035928.P9372563706420647823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + (A253608 (n + 1) - A035327 (n + 1))

end

end A035928.P9372563706420647823

namespace A035928

/-- `A036044(n+1)+A253608(n+1)-A035327(n+1)` -/
def P9372563706420647823.Spec : Prop :=
  ∀ n, P9372563706420647823.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P17038775710739756859

`A290254(n+2)+A290254((n+1)%A136889(n+2)+1)`
-/

namespace A035928.P17038775710739756859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290254 (n + 2) + A290254 (Int.tmod (n + 1 : ℤ) (A136889 (n + 2)) + 1).toNat

end

end A035928.P17038775710739756859

namespace A035928

/-- `A290254(n+2)+A290254((n+1)%A136889(n+2)+1)` -/
def P17038775710739756859.Spec : Prop :=
  ∀ n, P17038775710739756859.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P14337813632824342612

`A277238(A004754(n+1))`
-/

namespace A035928.P14337813632824342612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A004754 (n + 1)).toNat

end

end A035928.P14337813632824342612

namespace A035928

/-- `A277238(A004754(n+1))` -/
def P14337813632824342612.Spec : Prop :=
  ∀ n, P14337813632824342612.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P16062777901278566483

`A277238(A092754(n+1)+1)`
-/

namespace A035928.P16062777901278566483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A092754 (n + 1) + 1).toNat

end

end A035928.P16062777901278566483

namespace A035928

/-- `A277238(A092754(n+1)+1)` -/
def P16062777901278566483.Spec : Prop :=
  ∀ n, P16062777901278566483.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P11564265696793543797

`∩[A044918(n+1), A154391(n+1)]`
-/

namespace A035928.P11564265696793543797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P11564265696793543797

namespace A035928

/-- `∩[A044918(n+1), A154391(n+1)]` -/
def P11564265696793543797.Spec : Prop :=
  ∀ n, (P11564265696793543797.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P4276955200187656972

`∩[A154391(n+1), A277238(n+1)]`
-/

namespace A035928.P4276955200187656972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P4276955200187656972

namespace A035928

/-- `∩[A154391(n+1), A277238(n+1)]` -/
def P4276955200187656972.Spec : Prop :=
  ∀ n, (P4276955200187656972.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P218043988341806404

`∩[2*A031448(n+1), A277238(n+1)]`
-/

namespace A035928.P218043988341806404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P218043988341806404

namespace A035928

/-- `∩[2*A031448(n+1), A277238(n+1)]` -/
def P218043988341806404.Spec : Prop :=
  ∀ n, (P218043988341806404.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P9062662296673759410

`∩[A044918(n+1), A066122(n+1)]`
-/

namespace A035928.P9062662296673759410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P9062662296673759410

namespace A035928

/-- `∩[A044918(n+1), A066122(n+1)]` -/
def P9062662296673759410.Spec : Prop :=
  ∀ n, (P9062662296673759410.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P5385937846147054298

`∩[A031443(n+1), A277238(n+1)]`
-/

namespace A035928.P5385937846147054298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P5385937846147054298

namespace A035928

/-- `∩[A031443(n+1), A277238(n+1)]` -/
def P5385937846147054298.Spec : Prop :=
  ∀ n, (P5385937846147054298.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P17033115033713048353

`∩[2*n, A044918(n+1)]`
-/

namespace A035928.P17033115033713048353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P17033115033713048353

namespace A035928

/-- `∩[2*n, A044918(n+1)]` -/
def P17033115033713048353.Spec : Prop :=
  ∀ n, (P17033115033713048353.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P6773526957029149121

`filter[A044918(n+1), A178226(#)]`
-/

namespace A035928.P6773526957029149121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A035928.P6773526957029149121

namespace A035928

/-- `filter[A044918(n+1), A178226(#)]` -/
def P6773526957029149121.Spec : Prop :=
  ∀ n, P6773526957029149121.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P12898643950807054896

`filter[A031443(n+1), A280910(#)]`
-/

namespace A035928.P12898643950807054896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A035928.P12898643950807054896

namespace A035928

/-- `filter[A031443(n+1), A280910(#)]` -/
def P12898643950807054896.Spec : Prop :=
  ∀ n, P12898643950807054896.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P18389385871309429501

`filter[A154391(n+1), A280910(#)]`
-/

namespace A035928.P18389385871309429501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A035928.P18389385871309429501

namespace A035928

/-- `filter[A154391(n+1), A280910(#)]` -/
def P18389385871309429501.Spec : Prop :=
  ∀ n, P18389385871309429501.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P16516706806295062386

`filter[A044918(n+2), A280910(#)]`
-/

namespace A035928.P16516706806295062386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A035928.P16516706806295062386

namespace A035928

/-- `filter[A044918(n+2), A280910(#)]` -/
def P16516706806295062386.Spec : Prop :=
  ∀ n, P16516706806295062386.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P3593684725679311509

`filter[A096199(n+2), A280910(#)]`
-/

namespace A035928.P3593684725679311509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A035928.P3593684725679311509

namespace A035928

/-- `filter[A096199(n+2), A280910(#)]` -/
def P3593684725679311509.Spec : Prop :=
  ∀ n, P3593684725679311509.a n = A035928 (n + 1)

end A035928

/-! ## A035928.P6289496612350691723

`∩[A044918(n+1), A278465(n+1)]`
-/

namespace A035928.P6289496612350691723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P6289496612350691723

namespace A035928

/-- `∩[A044918(n+1), A278465(n+1)]` -/
def P6289496612350691723.Spec : Prop :=
  ∀ n, (P6289496612350691723.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P4113785157219647303

`∩[A044918(n+1), A195064(n+1)]`
-/

namespace A035928.P4113785157219647303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P4113785157219647303

namespace A035928

/-- `∩[A044918(n+1), A195064(n+1)]` -/
def P4113785157219647303.Spec : Prop :=
  ∀ n, (P4113785157219647303.a n : ℤ) = A035928 (n + 1)

end A035928

/-! ## A035928.P15317188018645881964

`∩[2*A053738(n+1), A277238(n+1)]`
-/

namespace A035928.P15317188018645881964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035928.P15317188018645881964

namespace A035928

/-- `∩[2*A053738(n+1), A277238(n+1)]` -/
def P15317188018645881964.Spec : Prop :=
  ∀ n, (P15317188018645881964.a n : ℤ) = A035928 (n + 1)

end A035928

/-!
# A035929: Number of Dyck n-paths starting U^mD^m (an m-pyramid), followed by a pyramid-free Dyck path.

The programs for A035929, there is no canonical definition to state claims against.
-/

/-! ## A035929.P5391831978757644384

`abs(Δ[A182486(n)])`
-/

namespace A035929.P5391831978757644384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A035929.P5391831978757644384

/-! ## A035929.P2621462634379011835

`∑[A082989(abs(1-n))]`
-/

namespace A035929.P2621462634379011835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082989 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035929.P2621462634379011835

/-! ## A035929.P10149275285435973986

`A082989(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A035929.P10149275285435973986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A082989 (n - 1) + a (n - 1)

end

end A035929.P10149275285435973986

/-! ## A035929.P11657822710810639175

`A182486(n)-A182486(n+1)`
-/

namespace A035929.P11657822710810639175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 n - A182486 (n + 1)

end

end A035929.P11657822710810639175

/-! ## A035929.P9339506615091286464

`(A000007(n)-1)*Δ[A182486(n)]`
-/

namespace A035929.P9339506615091286464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * (f1 (n + 1) - f1 n)

end

end A035929.P9339506615091286464

/-! ## A035929.P7722400704167547893

`Δ[A025452(A025452(n))-A182486(n)]`
-/

namespace A035929.P7722400704167547893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A025452 n).toNat - A182486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035929.P7722400704167547893

/-! ## A035929.P15671195451155592489

`∑[A082989(n)]-A082989(n)`
-/

namespace A035929.P15671195451155592489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A082989 n

end

end A035929.P15671195451155592489

/-! ## A035929.P6958994323904158812

`∑[A094322(∑[n]-n)]-1`
-/

namespace A035929.P6958994323904158812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094322 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035929.P6958994323904158812

/-!
# A035930: Maximal product of any two numbers whose concatenation is n.

The programs for A035930, the canonical program `A035930.P13238734123454317446` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035930 has offset 0).

The definition of A035930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035930.P2081732232148969564

`A257850(A328447(n^A178334(n)))`
-/

namespace A035930.P2081732232148969564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A328447 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A035930.P2081732232148969564

namespace A035930

/-- `A257850(A328447(n^A178334(n)))` -/
def P2081732232148969564.Spec : Prop :=
  ∀ n, P2081732232148969564.a n = A035930 n

end A035930

/-! ## A035930.P14435565489055883227

`A257850(A328447(n)%A068374(n+1))`
-/

namespace A035930.P14435565489055883227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (Int.tmod (A328447 n) (A068374 (n + 1))).toNat

end

end A035930.P14435565489055883227

namespace A035930

/-- `A257850(A328447(n)%A068374(n+1))` -/
def P14435565489055883227.Spec : Prop :=
  ∀ n, P14435565489055883227.a n = A035930 n

end A035930

/-! ## A035930.P9729597435314394910

`A257850(A328447(n))%(A087052(n)+1)`
-/

namespace A035930.P9729597435314394910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257850 (A328447 n).toNat) (A087052 n + 1)

end

end A035930.P9729597435314394910

namespace A035930

/-- `A257850(A328447(n))%(A087052(n)+1)` -/
def P9729597435314394910.Spec : Prop :=
  ∀ n, P9729597435314394910.a n = A035930 n

end A035930

/-! ## A035930.P6638535044044466455

`A257850(A328447(n))+A033909(A087052(n))`
-/

namespace A035930.P6638535044044466455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A328447 n).toNat + A033909 (A087052 n).toNat

end

end A035930.P6638535044044466455

namespace A035930

/-- `A257850(A328447(n))+A033909(A087052(n))` -/
def P6638535044044466455.Spec : Prop :=
  ∀ n, P6638535044044466455.a n = A035930 n

end A035930

/-! ## A035930.P13812330190634483844

`A257850(A328447(n))+A185705(A087052(n)+1)`
-/

namespace A035930.P13812330190634483844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A328447 n).toNat + A185705 (A087052 n + 1).toNat

end

end A035930.P13812330190634483844

namespace A035930

/-- `A257850(A328447(n))+A185705(A087052(n)+1)` -/
def P13812330190634483844.Spec : Prop :=
  ∀ n, P13812330190634483844.a n = A035930 n

end A035930

/-! ## A035930.P17662838668289620416

`A325166(A137688(n))+A257850(A328447(n))`
-/

namespace A035930.P17662838668289620416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A137688 n).toNat + A257850 (A328447 n).toNat

end

end A035930.P17662838668289620416

namespace A035930

/-- `A325166(A137688(n))+A257850(A328447(n))` -/
def P17662838668289620416.Spec : Prop :=
  ∀ n, P17662838668289620416.a n = A035930 n

end A035930

/-! ## A035930.P14587523321673253350

`A257850(A328447(n))/A093178(A130321(n))`
-/

namespace A035930.P14587523321673253350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257850 (A328447 n).toNat : ℚ) / (A093178 (A130321 n).toNat : ℚ)

end

end A035930.P14587523321673253350

namespace A035930

/-- `A257850(A328447(n))/A093178(A130321(n))` -/
def P14587523321673253350.Spec : Prop :=
  ∀ n, P14587523321673253350.a n = (A035930 n : ℚ)

end A035930

/-! ## A035930.P9755486625006282823

`A010122(A248201(n+1))*A257850(A328447(n))`
-/

namespace A035930.P9755486625006282823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A248201 (n + 1)).toNat * A257850 (A328447 n).toNat

end

end A035930.P9755486625006282823

namespace A035930

/-- `A010122(A248201(n+1))*A257850(A328447(n))` -/
def P9755486625006282823.Spec : Prop :=
  ∀ n, P9755486625006282823.a n = A035930 n

end A035930

/-! ## A035930.P4983950137467299776

`A257850(A328447(n))+A000038(A306802(n+1))`
-/

namespace A035930.P4983950137467299776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (A328447 n).toNat + A000038 (A306802 (n + 1)).toNat

end

end A035930.P4983950137467299776

namespace A035930

/-- `A257850(A328447(n))+A000038(A306802(n+1))` -/
def P4983950137467299776.Spec : Prop :=
  ∀ n, P4983950137467299776.a n = A035930 n

end A035930

/-! ## A035930.P615334661504663375

`A257850(A328447(n))%A198277(n)`
-/

namespace A035930.P615334661504663375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257850 (A328447 n).toNat) (A198277 n)

end

end A035930.P615334661504663375

namespace A035930

/-- `A257850(A328447(n))%A198277(n)` -/
def P615334661504663375.Spec : Prop :=
  ∀ n, P615334661504663375.a n = A035930 n

end A035930

/-! ## A035930.P3261016778575326047

`gcd(A330633(n)-A347470(n), A257850(n))`
-/

namespace A035930.P3261016778575326047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330633 n - A347470 n) (A257850 n)

end

end A035930.P3261016778575326047

namespace A035930

/-- `gcd(A330633(n)-A347470(n), A257850(n))` -/
def P3261016778575326047.Spec : Prop :=
  ∀ n, (P3261016778575326047.a n : ℤ) = A035930 n

end A035930

/-! ## A035930.P5205972488327808918

`A330633(A004186(n)%p?[A002522(n)])`
-/

namespace A035930.P5205972488327808918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (Int.tmod (A004186 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A035930.P5205972488327808918

namespace A035930

/-- `A330633(A004186(n)%p?[A002522(n)])` -/
def P5205972488327808918.Spec : Prop :=
  ∀ n, P5205972488327808918.a n = A035930 n

end A035930

/-! ## A035930.P2520706964900372188

`A257850(A328447(n)%p?[A002522(n)])`
-/

namespace A035930.P2520706964900372188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 (Int.tmod (A328447 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A035930.P2520706964900372188

namespace A035930

/-- `A257850(A328447(n)%p?[A002522(n)])` -/
def P2520706964900372188.Spec : Prop :=
  ∀ n, P2520706964900372188.a n = A035930 n

end A035930

/-! ## A035930.P13238734123454317446

`A088116(n)-A257297(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035930

/-- `A088116(n)-A257297(n)` -/
def P13238734123454317446.Spec : Prop :=
  ∀ n, P13238734123454317446.a n = A035930 n

theorem P13238734123454317446.correct : P13238734123454317446.Spec := by
  intro n
  simp only [A035930]

end A035930

/-! ## A035930.P7580373021651433772

`A007954(n%A143573(n))`
-/

namespace A035930.P7580373021651433772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.tmod (n : ℤ) (A143573 n)).toNat

end

end A035930.P7580373021651433772

namespace A035930

/-- `A007954(n%A143573(n))` -/
def P7580373021651433772.Spec : Prop :=
  ∀ n, P7580373021651433772.a n = A035930 n

end A035930

/-! ## A035930.P4082464969083118789

`A111707(n)%A143573(n)`
-/

namespace A035930.P4082464969083118789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111707 n) (A143573 n)

end

end A035930.P4082464969083118789

namespace A035930

/-- `A111707(n)%A143573(n)` -/
def P4082464969083118789.Spec : Prop :=
  ∀ n, P4082464969083118789.a n = A035930 n

end A035930

/-! ## A035930.P17371684835697035951

`A169669(n)%A143573(n)`
-/

namespace A035930.P17371684835697035951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169669 n) (A143573 n)

end

end A035930.P17371684835697035951

namespace A035930

/-- `A169669(n)%A143573(n)` -/
def P17371684835697035951.Spec : Prop :=
  ∀ n, P17371684835697035951.a n = A035930 n

end A035930

/-! ## A035930.P1102430274185123428

`A187844(n)%A143573(n)`
-/

namespace A035930.P1102430274185123428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187844 n) (A143573 n)

end

end A035930.P1102430274185123428

namespace A035930

/-- `A187844(n)%A143573(n)` -/
def P1102430274185123428.Spec : Prop :=
  ∀ n, P1102430274185123428.a n = A035930 n

end A035930

/-!
# A035931: Number of steps to reach 0 under "k->max product of two numbers whose concatenation is k".

The programs for A035931, the canonical program `A035931.P9216625433156157235` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035931 has offset 0).

The definition of A035931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035931.P9216625433156157235

`a(A035930(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035931

/-- `a(A035930(n))+1` -/
def P9216625433156157235.Spec : Prop :=
  ∀ n, (P9216625433156157235.a n : ℤ) = A035931 n

theorem P9216625433156157235.correct : P9216625433156157235.Spec := by
  intro n
  simp only [A035931]

end A035931

/-! ## A035931.P11037997862698551167

`A291769(a(A035930(n)))` with `a(0)=0`
-/

namespace A035931.P11037997862698551167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A035930 n).toNat).toNat

end

end A035931.P11037997862698551167

namespace A035931

/-- `A291769(a(A035930(n)))` -/
def P11037997862698551167.Spec : Prop :=
  ∀ n, P11037997862698551167.a n = A035931 n

end A035931

/-! ## A035931.P8898558125939129254

`A348553(a(A035930(n)))` with `a(0)=0`
-/

namespace A035931.P8898558125939129254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A035930 n).toNat).toNat

end

end A035931.P8898558125939129254

namespace A035931

/-- `A348553(a(A035930(n)))` -/
def P8898558125939129254.Spec : Prop :=
  ∀ n, P8898558125939129254.a n = A035931 n

end A035931

/-! ## A035931.P14613645665820616452

`A020710(a(A035930(n)))-4` with `a(0)=0`
-/

namespace A035931.P14613645665820616452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020710 (a (A035930 n).toNat).toNat - 4

end

end A035931.P14613645665820616452

namespace A035931

/-- `A020710(a(A035930(n)))-4` -/
def P14613645665820616452.Spec : Prop :=
  ∀ n, P14613645665820616452.a n = A035931 n

end A035931

/-! ## A035931.P14886320654588729470

`A129396(a(A035930(n))²)` with `a(0)=0`
-/

namespace A035931.P14886320654588729470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A129396 (a (A035930 n).toNat ^ 2).toNat

end

end A035931.P14886320654588729470

namespace A035931

/-- `A129396(a(A035930(n))²)` -/
def P14886320654588729470.Spec : Prop :=
  ∀ n, P14886320654588729470.a n = A035931 n

end A035931

/-! ## A035931.P234394711829143000

`A048379(a(A257297(n)))` with `a(0)=0`
-/

namespace A035931.P234394711829143000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048379 (a (A257297 n).toNat).toNat

end

end A035931.P234394711829143000

namespace A035931

/-- `A048379(a(A257297(n)))` -/
def P234394711829143000.Spec : Prop :=
  ∀ n, P234394711829143000.a n = A035931 n

end A035931

/-! ## A035931.P11216437976819196297

`A078840(a(A257297(n)))` with `a(0)=0`
-/

namespace A035931.P11216437976819196297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078840 (a (A257297 n).toNat).toNat

end

end A035931.P11216437976819196297

namespace A035931

/-- `A078840(a(A257297(n)))` -/
def P11216437976819196297.Spec : Prop :=
  ∀ n, P11216437976819196297.a n = A035931 n

end A035931

/-! ## A035931.P10834250966542475305

`A330634(A051022(n))*A330634(n)`
-/

namespace A035931.P10834250966542475305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330634 (A051022 n).toNat * A330634 n

end

end A035931.P10834250966542475305

namespace A035931

/-- `A330634(A051022(n))*A330634(n)` -/
def P10834250966542475305.Spec : Prop :=
  ∀ n, P10834250966542475305.a n = A035931 n

end A035931

/-! ## A035931.P349210518975298027

`A339579(A079695(n+1)²)+A330634(n)`
-/

namespace A035931.P349210518975298027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A079695 (n + 1) ^ 2).toNat + A330634 n

end

end A035931.P349210518975298027

namespace A035931

/-- `A339579(A079695(n+1)²)+A330634(n)` -/
def P349210518975298027.Spec : Prop :=
  ∀ n, P349210518975298027.a n = A035931 n

end A035931

/-! ## A035931.P11014889495056199132

`and(A002223(n+1), A330634(n))`
-/

namespace A035931.P11014889495056199132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A330634 n)

end

end A035931.P11014889495056199132

namespace A035931

/-- `and(A002223(n+1), A330634(n))` -/
def P11014889495056199132.Spec : Prop :=
  ∀ n, P11014889495056199132.a n = A035931 n

end A035931

/-!
# A035933: Smallest number that takes n steps to reach 0 under "k->min product of 2 numbers whose concatenation is k".

The programs for A035933, there is no canonical definition to state claims against.
-/

/-! ## A035933.P7175792391707796612

`A035935(n)%A346950(3*n+1)`
-/

namespace A035933.P7175792391707796612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035935 n) (A346950 (3 * n + 1))

end

end A035933.P7175792391707796612

/-! ## A035933.P13641146190889170798

`A035935(n)%A090085(A058794(n))`
-/

namespace A035933.P13641146190889170798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035935 n) (A090085 (A058794 n).toNat)

end

end A035933.P13641146190889170798

/-! ## A035933.P4208637126597989993

`A178746(A178721(n+1))+A035934(n)`
-/

namespace A035933.P4208637126597989993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178746 (A178721 (n + 1)).toNat + A035934 n

end

end A035933.P4208637126597989993

/-!
# A035934: Smallest number that can be made to take n steps to reach 0 under "k -> any product of 2 numbers whose concatenation is k".

The programs for A035934, there is no canonical definition to state claims against.
-/

/-! ## A035934.P4959908956134055108

`A035932(A073789(n))`
-/

namespace A035934.P4959908956134055108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035932 (A073789 n).toNat

end

end A035934.P4959908956134055108

/-! ## A035934.P4594813526530506793

`A035932(A004869(n+1))`
-/

namespace A035934.P4594813526530506793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035932 (A004869 (n + 1)).toNat

end

end A035934.P4594813526530506793

/-! ## A035934.P15920608931119438398

`A035932(A004880(n+1))`
-/

namespace A035934.P15920608931119438398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035932 (A004880 (n + 1)).toNat

end

end A035934.P15920608931119438398

/-! ## A035934.P5119077525213764649

`A035932(A004891(n+1))`
-/

namespace A035934.P5119077525213764649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035932 (A004891 (n + 1)).toNat

end

end A035934.P5119077525213764649

/-!
# A035936: Number of squares in (n^3, (n+1)^3 ].

The programs for A035936, the canonical program `A035936.P428761183194597142` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035936 has offset 0).

The definition of A035936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035936.P428761183194597142

`floor((n+1)^(3/2))-floor(n^(3/2))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035936

/-- `floor((n+1)^(3/2))-floor(n^(3/2))` -/
def P428761183194597142.Spec : Prop :=
  ∀ n, P428761183194597142.a n = A035936 n

theorem P428761183194597142.correct : P428761183194597142.Spec := by
  intro n
  simp only [A035936]

end A035936

/-! ## A035936.P14724899523788075380

`Δ[A077121(n)]`
-/

namespace A035936.P14724899523788075380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035936.P14724899523788075380

namespace A035936

/-- `Δ[A077121(n)]` -/
def P14724899523788075380.Spec : Prop :=
  ∀ n, P14724899523788075380.a n = A035936 n

end A035936

/-! ## A035936.P15455898267836973196

`A000027(Δ[floor(n*sqrt(n))-n]+1)`
-/

namespace A035936.P15455898267836973196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n + 1).toNat

end

end A035936.P15455898267836973196

namespace A035936

/-- `A000027(Δ[floor(n*sqrt(n))-n]+1)` -/
def P15455898267836973196.Spec : Prop :=
  ∀ n, P15455898267836973196.a n = A035936 n

end A035936

/-! ## A035936.P11757449386060425850

`A026234(A026234(Δ[floor(n^(3/2))]))`
-/

namespace A035936.P11757449386060425850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A026234 (f1 (n + 1) - f1 n).toNat).toNat

end

end A035936.P11757449386060425850

namespace A035936

/-- `A026234(A026234(Δ[floor(n^(3/2))]))` -/
def P11757449386060425850.Spec : Prop :=
  ∀ n, P11757449386060425850.a n = A035936 n

end A035936

/-! ## A035936.P11448910743905426435

`Δ[A000093(n)]`
-/

namespace A035936.P11448910743905426435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035936.P11448910743905426435

namespace A035936

/-- `Δ[A000093(n)]` -/
def P11448910743905426435.Spec : Prop :=
  ∀ n, P11448910743905426435.a n = A035936 n

end A035936

/-! ## A035936.P17615791177124854513

`Δ[sqrt(A065733(n))]`
-/

namespace A035936.P17615791177124854513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065733 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035936.P17615791177124854513

namespace A035936

/-- `Δ[sqrt(A065733(n))]` -/
def P17615791177124854513.Spec : Prop :=
  ∀ n, P17615791177124854513.a n = (A035936 n : ℝ)

end A035936

/-! ## A035936.P16739259959280551130

`Δ[A062108(n²)]`
-/

namespace A035936.P16739259959280551130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035936.P16739259959280551130

namespace A035936

/-- `Δ[A062108(n²)]` -/
def P16739259959280551130.Spec : Prop :=
  ∀ n, P16739259959280551130.a n = A035936 n

end A035936

/-!
# A035937: Number of partitions in parts not of the form 7k, 7k+1 or 7k-1. Also number of partitions with no part of size 1 and differences between parts at distance 2 are greater than 1.

The programs for A035937, there is no canonical definition to state claims against.
-/

/-! ## A035937.P16697322223042454627

`A103298(A000930(n))-n%2`
-/

namespace A035937.P16697322223042454627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A000930 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A035937.P16697322223042454627

/-! ## A035937.P7324183777435370326

`A240201(n)+A133985(A063522(n))`
-/

namespace A035937.P7324183777435370326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n + A133985 (A063522 n).toNat

end

end A035937.P7324183777435370326

/-! ## A035937.P13922257653629280325

`A240201(n)+A008683(A290687(n))`
-/

namespace A035937.P13922257653629280325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n + A008683 (A290687 n).toNat

end

end A035937.P13922257653629280325

/-! ## A035937.P14058480568398236975

`A046693(A000930(n))-A000034(n)`
-/

namespace A035937.P14058480568398236975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A000930 n).toNat - A000034 n

end

end A035937.P14058480568398236975

/-! ## A035937.P7784460573532978180

`A240201(n)+A121373(A000330(2*n))`
-/

namespace A035937.P7784460573532978180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n + A121373 (A000330 (2 * n)).toNat

end

end A035937.P7784460573532978180

/-!
# A035939: Number of partitions of n into parts not of the form 7k, 7k+3 or 7k-3. Also number of partitions such that the differences between parts at distance 2 are greater than 1.

The programs for A035939, there is no canonical definition to state claims against.
-/

/-! ## A035939.P927995989059901183

`A000196(A006171(n)+A000726(n))`
-/

namespace A035939.P927995989059901183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006171 n + A000726 n).toNat

end

end A035939.P927995989059901183

/-! ## A035939.P8673535827555311600

`A000194(A006171(n)+A003106(n))`
-/

namespace A035939.P8673535827555311600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A006171 n + A003106 n).toNat

end

end A035939.P8673535827555311600

/-! ## A035939.P183512191195268775

`A000196(A006950(n)+A006171(n))`
-/

namespace A035939.P183512191195268775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006950 n + A006171 n).toNat

end

end A035939.P183512191195268775

/-! ## A035939.P573355316261374314

`A000194(A008483(n)+A006171(n))`
-/

namespace A035939.P573355316261374314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008483 n + A006171 n).toNat

end

end A035939.P573355316261374314

/-! ## A035939.P3017636530800741214

`A000196(A011971(n)+A006171(n))`
-/

namespace A035939.P3017636530800741214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A011971 n + A006171 n).toNat

end

end A035939.P3017636530800741214

/-!
# A035940: Number of partitions in parts not of the form 9k, 9k+1 or 9k-1. Also number of partitions with no part of size 1 and differences between parts at distance 3 are greater than 1.

The programs for A035940, there is no canonical definition to state claims against.
-/

/-! ## A035940.P6422756043889913085

`abs(A137569(3*n+5))`
-/

namespace A035940.P6422756043889913085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137569 (3 * n + 5)|

end

end A035940.P6422756043889913085

/-! ## A035940.P11385784141302314002

`-A137569(2*(n+1)+n+3)`
-/

namespace A035940.P11385784141302314002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137569 (2 * (n + 1) + (n + 3))

end

end A035940.P11385784141302314002

/-! ## A035940.P9412254521168436271

`A057428(n)*A137569(A016789(n+1))`
-/

namespace A035940.P9412254521168436271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A137569 (A016789 (n + 1)).toNat

end

end A035940.P9412254521168436271

/-! ## A035940.P13699255917215677086

`A057428(n)*A137569(A180486(n+1))`
-/

namespace A035940.P13699255917215677086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A137569 (A180486 (n + 1)).toNat

end

end A035940.P13699255917215677086

/-! ## A035940.P13250425023063998042

`A057428(n+1)-A137569(A016789(n+1))+1`
-/

namespace A035940.P13250425023063998042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) - A137569 (A016789 (n + 1)).toNat + 1

end

end A035940.P13250425023063998042

/-!
# A035941: Number of partitions of n into parts not of the form 9k, 9k+2 or 9k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 3 are greater than 1.

The programs for A035941, there is no canonical definition to state claims against.
-/

/-! ## A035941.P11895587924827728146

`abs(record[-A137569(n)])`
-/

namespace A035941.P11895587924827728146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A035941.P11895587924827728146

/-! ## A035941.P7232783089854072378

`abs(A137569(3*n+4))`
-/

namespace A035941.P7232783089854072378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137569 (3 * n + 4)|

end

end A035941.P7232783089854072378

/-! ## A035941.P5283745465597242028

`-A137569(Δ[n²]+n+3)`
-/

namespace A035941.P5283745465597242028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ)).toNat

end

end A035941.P5283745465597242028

/-! ## A035941.P2635541823179603884

`lcm(record[-A137569(n)], A057979(2*n))`
-/

namespace A035941.P2635541823179603884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A057979 (2 * n))

end

end A035941.P2635541823179603884

/-! ## A035941.P6790546008544783169

`gcd(A007814(A000040(n+1)), A137569(3*n+4))`
-/

namespace A035941.P6790546008544783169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A000040 (n + 1)).toNat) (A137569 (3 * n + 4))

end

end A035941.P6790546008544783169

/-! ## A035941.P8666506873107368407

`∑{d}[A137569(A008585(n)+4), A000010(#)]`
-/

namespace A035941.P8666506873107368407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (A008585 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A035941.P8666506873107368407

/-!
# A035942: Number of partitions of n into distinct prime power parts (1 and 2 excluded).

The programs for A035942, there is no canonical definition to state claims against.
-/

/-! ## A035942.P10629582221972806821

`A280152(n)-A004197(A321312(n))`
-/

namespace A035942.P10629582221972806821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 n - A004197 (A321312 n).toNat

end

end A035942.P10629582221972806821

/-! ## A035942.P2173096893692002136

`A178691(A033483(A111417(n))+n)`
-/

namespace A035942.P2173096893692002136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A033483 (A111417 n).toNat + (n : ℤ)).toNat

end

end A035942.P2173096893692002136

/-! ## A035942.P11563015773388980118

`A178691(A107846(A048626(n))+n)`
-/

namespace A035942.P11563015773388980118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A107846 (A048626 n).toNat + (n : ℤ)).toNat

end

end A035942.P11563015773388980118

/-! ## A035942.P2429150658358200713

`A178691(A124762(A351640(n))+n)`
-/

namespace A035942.P2429150658358200713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A124762 (A351640 n).toNat + (n : ℤ)).toNat

end

end A035942.P2429150658358200713

/-! ## A035942.P12050548356125626572

`A178691(n)-A033483(A111417(n))`
-/

namespace A035942.P12050548356125626572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 n - A033483 (A111417 n).toNat

end

end A035942.P12050548356125626572

/-!
# A035943: Number of partitions of n into parts not of the form 9k, 9k+4 or 9k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 3 are greater than 1.

The programs for A035943, there is no canonical definition to state claims against.
-/

/-! ## A035943.P11613639445157376217

`A137569(3*n)`
-/

namespace A035943.P11613639445157376217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (3 * n)

end

end A035943.P11613639445157376217

/-! ## A035943.P976625212825223175

`abs(record[A137569(n+1)])`
-/

namespace A035943.P976625212825223175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A035943.P976625212825223175

/-! ## A035943.P14008237366458107493

`abs(A137569(A008486(n)))`
-/

namespace A035943.P14008237366458107493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137569 (A008486 n).toNat|

end

end A035943.P14008237366458107493

/-! ## A035943.P9884559703401711338

`record[A137569(n+1)]^A001511(A001748(n+1))`
-/

namespace A035943.P9884559703401711338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001511 (A001748 (n + 1)).toNat : ℤ)

end

end A035943.P9884559703401711338

/-! ## A035943.P15952224767111333552

`and(record[A137569(n+1)], A126646(n))`
-/

namespace A035943.P15952224767111333552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A126646 n)

end

end A035943.P15952224767111333552

/-!
# A035944: Number of partitions in parts not of the form 11k, 11k+1 or 11k-1. Also number of partitions with no part of size 1 and differences between parts at distance 4 are greater than 1.

The programs for A035944, there is no canonical definition to state claims against.
-/

/-! ## A035944.P16791487662218195358

`record[A261776(A163352(n))]-A328546(n)`
-/

namespace A035944.P16791487662218195358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 (A163352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A328546 n

end

end A035944.P16791487662218195358

/-! ## A035944.P8605425199261772933

`A035941(n+1)-(A103298(A000930(n))-n%2)`
-/

namespace A035944.P8605425199261772933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035941 (n + 1) - (A103298 (A000930 n).toNat - ((n % 2 : ℕ) : ℤ))

end

end A035944.P8605425199261772933

/-! ## A035944.P13354438120255981130

`A331195(A062878(n))`
-/

namespace A035944.P13354438120255981130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (A062878 n).toNat

end

end A035944.P13354438120255981130

/-!
# A035945: Number of partitions of n into parts not of the form 11k, 11k+2 or 11k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 4 are greater than 1.

The programs for A035945, there is no canonical definition to state claims against.
-/

/-! ## A035945.P1561870315616553819

`A115180(round(sqrt(A030119(n))))`
-/

namespace A035945.P1561870315616553819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (SequenceMachineLib.roundAway (Real.sqrt (A030119 n : ℝ))).toNat

end

end A035945.P1561870315616553819

/-! ## A035945.P2966913931224196614

`A000196(A325853(n)+A240176(3*n+1))`
-/

namespace A035945.P2966913931224196614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A325853 n + A240176 (3 * n + 1)).toNat

end

end A035945.P2966913931224196614

/-! ## A035945.P6788987023353292781

`A000196((A022342(n+1)+1)*A083198(n+5))`
-/

namespace A035945.P6788987023353292781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A022342 (n + 1) + 1) * A083198 (n + 5)).toNat

end

end A035945.P6788987023353292781

/-! ## A035945.P16107620337662548257

`floor(Δ[sqrt(A238483(3*n+2))])`
-/

namespace A035945.P16107620337662548257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238483 (3 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A035945.P16107620337662548257

/-! ## A035945.P9175790470389320939

`Δ[A132462(3*n+4)]%A132453(2*n+3)`
-/

namespace A035945.P9175790470389320939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132462 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A132453 (2 * n + 3))

end

end A035945.P9175790470389320939

/-!
# A035946: Number of partitions in parts not of the form 11k, 11k+3 or 11k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 4 are greater than 1.

The programs for A035946, there is no canonical definition to state claims against.
-/

/-! ## A035946.P5186550227604004866

`A027336(n)+A001996(A187829(n+1))`
-/

namespace A035946.P5186550227604004866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n + A001996 (A187829 (n + 1)).toNat

end

end A035946.P5186550227604004866

/-! ## A035946.P5838271456823005749

`A060027(A187829(n+1))+A046682(n)`
-/

namespace A035946.P5838271456823005749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060027 (A187829 (n + 1)).toNat + A046682 n

end

end A035946.P5838271456823005749

/-! ## A035946.P18194238228203627753

`A035969(A187829(n+1))-A000701(n)`
-/

namespace A035946.P18194238228203627753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035969 (A187829 (n + 1)).toNat - A000701 n

end

end A035946.P18194238228203627753

/-! ## A035946.P16888488394180280095

`A001935(A187829(n+1))-A085811(n+1)`
-/

namespace A035946.P16888488394180280095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A187829 (n + 1)).toNat - A085811 (n + 1)

end

end A035946.P16888488394180280095

/-! ## A035946.P2802663864147121080

`A122921(A301750(2*n+3)+A075383(n+1))`
-/

namespace A035946.P2802663864147121080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A301750 (2 * n + 3) + A075383 (n + 1)).toNat

end

end A035946.P2802663864147121080

/-!
# A035947: Number of partitions of n into parts not of the form 11k, 11k+4 or 11k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 4 are greater than 1.

The programs for A035947, there is no canonical definition to state claims against.
-/

/-! ## A035947.P14124607595404227139

`A035962(n+1)+A350636(n)+A118759(A066447(n))`
-/

namespace A035947.P14124607595404227139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035962 (n + 1) + (A350636 n + A118759 (A066447 n).toNat)

end

end A035947.P14124607595404227139

/-! ## A035947.P4223334056710102437

`A118759(A035962(n+1))+A000726(n)`
-/

namespace A035947.P4223334056710102437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035962 (n + 1)).toNat + A000726 n

end

end A035947.P4223334056710102437

/-! ## A035947.P6526620285523067066

`A118759(A035962(n+1))+A035385(2*n)`
-/

namespace A035947.P6526620285523067066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035962 (n + 1)).toNat + A035385 (2 * n)

end

end A035947.P6526620285523067066

/-! ## A035947.P6907157122428328380

`A286653(∑[n+3])+A118759(A035962(n+1))`
-/

namespace A035947.P6907157122428328380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f1 j) + A118759 (A035962 (n + 1)).toNat

end

end A035947.P6907157122428328380

/-! ## A035947.P9222731449793168782

`A118759(A035972(n+1)-A027336(n))+A000726(n)`
-/

namespace A035947.P9222731449793168782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035972 (n + 1) - A027336 n).toNat + A000726 n

end

end A035947.P9222731449793168782

/-!
# A035948: Number of partitions of n into parts not of the form 11k, 11k+5 or 11k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 4 are greater than 1.

The programs for A035948, there is no canonical definition to state claims against.
-/

/-! ## A035948.P13613855507052969944

`A258939(n)-A185284(2*n+3)`
-/

namespace A035948.P13613855507052969944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258939 n - A185284 (2 * n + 3)

end

end A035948.P13613855507052969944

/-! ## A035948.P3600335923004973587

`-(A258741(2*n+1)+A185238(A123349(n)))`
-/

namespace A035948.P3600335923004973587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A258741 (2 * n + 1) + A185238 (A123349 n).toNat)

end

end A035948.P3600335923004973587

/-!
# A035949: Number of partitions in parts not of the form 13k, 13k+1 or 13k-1. Also number of partitions with no part of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035949, there is no canonical definition to state claims against.
-/

/-! ## A035949.P127048683352734653

`Δ[A056926(A238869(n)²)]`
-/

namespace A035949.P127048683352734653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A238869 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035949.P127048683352734653

/-! ## A035949.P10846503833456173090

`Δ[A238869(n)]%A045345(n+1)`
-/

namespace A035949.P10846503833456173090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A045345 (n + 1))

end

end A035949.P10846503833456173090

/-! ## A035949.P7614971493688890131

`Δ[A238869(n)%A180565(n+1)]`
-/

namespace A035949.P7614971493688890131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238869 n) (A180565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035949.P7614971493688890131

/-! ## A035949.P5316685665794952489

`A224782(A014375(n))+Δ[A008634(n)]`
-/

namespace A035949.P5316685665794952489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A014375 n).toNat + (f1 (n + 1) - f1 n)

end

end A035949.P5316685665794952489

/-! ## A035949.P2243088878788647728

`A266779(A077168(n))`
-/

namespace A035949.P2243088878788647728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266779 (A077168 n).toNat

end

end A035949.P2243088878788647728

/-!
# A035950: Number of partitions of n into parts not of the form 13k, 13k+2 or 13k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035950, there is no canonical definition to state claims against.
-/

/-! ## A035950.P9474236042359767649

`A118759(A248518(n)+Δ[A000065(n)])`
-/

namespace A035950.P9474236042359767649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A248518 n + (f1 (n + 1) - f1 n)).toNat

end

end A035950.P9474236042359767649

/-! ## A035950.P4231740242897835498

`A118759(A248518(n)+A002865(n+1))`
-/

namespace A035950.P4231740242897835498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A248518 n + A002865 (n + 1)).toNat

end

end A035950.P4231740242897835498

/-! ## A035950.P4165524117897088108

`A204551(A321335(n+1))`
-/

namespace A035950.P4165524117897088108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A321335 (n + 1)).toNat

end

end A035950.P4165524117897088108

/-! ## A035950.P17756812335247548295

`A342496(A214077(n+1))`
-/

namespace A035950.P17756812335247548295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 (A214077 (n + 1)).toNat

end

end A035950.P17756812335247548295

/-! ## A035950.P8973027108263361781

`A394247(A306484(n+1))`
-/

namespace A035950.P8973027108263361781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A306484 (n + 1)).toNat

end

end A035950.P8973027108263361781

/-!
# A035951: Number of partitions in parts not of the form 13k, 13k+3 or 13k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035951, there is no canonical definition to state claims against.
-/

/-! ## A035951.P4519546322537657302

`A036016(2*(n+1))%A265798(n+1)`
-/

namespace A035951.P4519546322537657302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036016 (2 * (n + 1))) (A265798 (n + 1))

end

end A035951.P4519546322537657302

/-! ## A035951.P17670204690832927108

`A029838(4*(n+1))%A270890(2*n+5)`
-/

namespace A035951.P17670204690832927108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029838 (4 * (n + 1))) (A270890 (2 * n + 5))

end

end A035951.P17670204690832927108

/-! ## A035951.P8495923049051403229

`A237048(A144565(3*n+2))+A036016(2*(n+1))`
-/

namespace A035951.P8495923049051403229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (A144565 (3 * n + 2)).toNat + A036016 (2 * (n + 1))

end

end A035951.P8495923049051403229

/-!
# A035952: Number of partitions of n into parts not of the form 13k, 13k+4 or 13k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035952, there is no canonical definition to state claims against.
-/

/-! ## A035952.P14072977129044512034

`A025469(A037957(n))-A104410(2*n+3)`
-/

namespace A035952.P14072977129044512034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A037957 n).toNat - A104410 (2 * n + 3)

end

end A035952.P14072977129044512034

/-! ## A035952.P18299205255523415878

`A000007(A230385(n+4))-A104410(2*n+3)`
-/

namespace A035952.P18299205255523415878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A230385 (n + 4)).toNat - A104410 (2 * n + 3)

end

end A035952.P18299205255523415878

/-! ## A035952.P12744416436210435302

`A010051(A034818(n))-A104410(2*n+3)`
-/

namespace A035952.P12744416436210435302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034818 n).toNat - A104410 (2 * n + 3)

end

end A035952.P12744416436210435302

/-! ## A035952.P6610272954958681123

`A216599(ceil(2^(n-1)))+n+1`
-/

namespace A035952.P6610272954958681123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (n + 1 : ℤ)

end

end A035952.P6610272954958681123

/-! ## A035952.P11647431031005470304

`A360010(A045655(n))`
-/

namespace A035952.P11647431031005470304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A045655 n).toNat

end

end A035952.P11647431031005470304

/-!
# A035953: Number of partitions of n into parts not of the form 13k, 13k+5 or 13k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035953, there is no canonical definition to state claims against.
-/

/-! ## A035953.P3049281544821894701

`A262689(record[Δ[A262064(n)]²])`
-/

namespace A035953.P3049281544821894701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035953.P3049281544821894701

/-! ## A035953.P8952865624959487312

`A118759(A027338(n))+Δ[A008630(n)]`
-/

namespace A035953.P8952865624959487312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027338 n).toNat + (f1 (n + 1) - f1 n)

end

end A035953.P8952865624959487312

/-! ## A035953.P16825896603036276727

`A118759(A027338(n))+Δ[A008636(n)]`
-/

namespace A035953.P16825896603036276727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027338 n).toNat + (f1 (n + 1) - f1 n)

end

end A035953.P16825896603036276727

/-! ## A035953.P15608478062394246507

`A233006(3*n+4)+A027341(n)-A026814(A187829(n+1))`
-/

namespace A035953.P15608478062394246507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233006 (3 * n + 4) + (A027341 n - A026814 (A187829 (n + 1)).toNat)

end

end A035953.P15608478062394246507

/-! ## A035953.P12024130396385339349

`A118759(record[abs(A195054(n))])`
-/

namespace A035953.P12024130396385339349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195054 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035953.P12024130396385339349

/-!
# A035954: Number of partitions of n into parts not of the form 13k, 13k+6 or 13k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 5 are greater than 1.

The programs for A035954, there is no canonical definition to state claims against.
-/

/-! ## A035954.P18339140472556995380

`(A280937(n)+A271661(n))/A000034(A000978(n+1))`
-/

namespace A035954.P18339140472556995380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280937 n + A271661 n : ℚ) / (A000034 (A000978 (n + 1)).toNat : ℚ)

end

end A035954.P18339140472556995380

/-! ## A035954.P14734791093277850526

`(A280937(n)+A271661(n))/A000034(A006094(n+2))`
-/

namespace A035954.P14734791093277850526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280937 n + A271661 n : ℚ) / (A000034 (A006094 (n + 2)).toNat : ℚ)

end

end A035954.P14734791093277850526

/-! ## A035954.P9954840463089286441

`(A280937(n)+A271661(n))/A000034(A005231(n+1))`
-/

namespace A035954.P9954840463089286441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280937 n + A271661 n : ℚ) / (A000034 (A005231 (n + 1)).toNat : ℚ)

end

end A035954.P9954840463089286441

/-! ## A035954.P9810319814232906314

`(A280937(n)+A271661(n))/A020639(A187940(n+1))`
-/

namespace A035954.P9810319814232906314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280937 n + A271661 n : ℚ) / (A020639 (A187940 (n + 1)).toNat : ℚ)

end

end A035954.P9810319814232906314

/-! ## A035954.P8118498740977288009

`(A280937(n)+A271661(n))/A000034(A223209(n+1))`
-/

namespace A035954.P8118498740977288009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280937 n + A271661 n : ℚ) / (A000034 (A223209 (n + 1)).toNat : ℚ)

end

end A035954.P8118498740977288009

/-!
# A035955: Number of partitions in parts not of the form 15k, 15k+1 or 15k-1. Also number of partitions with no part of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035955, there is no canonical definition to state claims against.
-/

/-! ## A035955.P7481410343935333812

`Δ[A052410(A332746(n)²)]`
-/

namespace A035955.P7481410343935333812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A332746 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035955.P7481410343935333812

/-! ## A035955.P1030643262994211567

`Δ[A332746(n)]^∑[A015161(n)]`
-/

namespace A035955.P1030643262994211567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A035955.P1030643262994211567

/-! ## A035955.P14612490478202492435

`Δ[A332746(n)]%A004062(n+1)`
-/

namespace A035955.P14612490478202492435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004062 (n + 1))

end

end A035955.P14612490478202492435

/-! ## A035955.P2418927025759514612

`Δ[A332746(n)%A138393(3*n+1)]`
-/

namespace A035955.P2418927025759514612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332746 n) (A138393 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035955.P2418927025759514612

/-! ## A035955.P9080767604965478485

`Δ[A332746(A001222(2^n))]`
-/

namespace A035955.P9080767604965478485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332746 (A001222 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035955.P9080767604965478485

/-!
# A035956: Number of partitions of n into parts not of the form 15k, 15k+2 or 15k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035956, there is no canonical definition to state claims against.
-/

/-! ## A035956.P14561735183849627839

`A004396(Δ[A242474(n+1)]*A035952(n+1))`
-/

namespace A035956.P14561735183849627839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((f1 (n + 1) - f1 n) * A035952 (n + 1)).toNat

end

end A035956.P14561735183849627839

/-! ## A035956.P2922748905448357313

`A266779(n)+Δ[A194439(n+2)]`
-/

namespace A035956.P2922748905448357313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266779 n + (f1 (n + 1) - f1 n)

end

end A035956.P2922748905448357313

/-! ## A035956.P3293334765169286284

`A001222(A117387(n))*A004396(A035952(n+1))`
-/

namespace A035956.P3293334765169286284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117387 n).toNat * A004396 (A035952 (n + 1)).toNat

end

end A035956.P3293334765169286284

/-! ## A035956.P542589337009259473

`A035986(n+1)-A000701(A187829(n+1))`
-/

namespace A035956.P542589337009259473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035986 (n + 1) - A000701 (A187829 (n + 1)).toNat

end

end A035956.P542589337009259473

/-! ## A035956.P12354705157037723147

`A004396(A035952(n+1))%A018252(A000051(n))`
-/

namespace A035956.P12354705157037723147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A035952 (n + 1)).toNat) (A018252 (A000051 n).toNat)

end

end A035956.P12354705157037723147

/-!
# A035957: Number of partitions in parts not of the form 15k, 15k+3 or 15k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035957, there is no canonical definition to state claims against.
-/

/-! ## A035957.P4163846755269107010

`A185284(A004274(n))+A104410(2*(n+1))`
-/

namespace A035957.P4163846755269107010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004274 n).toNat + A104410 (2 * (n + 1))

end

end A035957.P4163846755269107010

/-! ## A035957.P7879378254192066337

`A104410(record[A131308(n)+2])`
-/

namespace A035957.P7879378254192066337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035957.P7879378254192066337

/-! ## A035957.P10615166800767930366

`A104410(2*(n+1))%p?[A138927(n+1)]`
-/

namespace A035957.P10615166800767930366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104410 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A035957.P10615166800767930366

/-! ## A035957.P1341843830262842834

`A104410(2*(n+1))%A009188(A000032(n))`
-/

namespace A035957.P1341843830262842834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104410 (2 * (n + 1))) (A009188 (A000032 n).toNat)

end

end A035957.P1341843830262842834

/-!
# A035958: Number of partitions of n into parts not of the form 15k, 15k+4 or 15k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035958, there is no canonical definition to state claims against.
-/

/-! ## A035958.P4594232665123946291

`A094023(n)+A003106(A187829(n+1))`
-/

namespace A035958.P4594232665123946291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 n + A003106 (A187829 (n + 1)).toNat

end

end A035958.P4594232665123946291

/-! ## A035958.P11277169757064784083

`A266778(A187829(n+1))+A027337(n)`
-/

namespace A035958.P11277169757064784083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 (A187829 (n + 1)).toNat + A027337 n

end

end A035958.P11277169757064784083

/-! ## A035958.P15587345345541207522

`A003114(2*(n+1))-A340998(A000124(n))`
-/

namespace A035958.P15587345345541207522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (2 * (n + 1)) - A340998 ((A000124 n).toNat + 140)

end

end A035958.P15587345345541207522

/-! ## A035958.P17859817965092338111

`A357875(A335754(n))`
-/

namespace A035958.P17859817965092338111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A335754 n).toNat

end

end A035958.P17859817965092338111

/-! ## A035958.P12172028725027444381

`A238861(n+4)-A132587(A171827(2*n+3))`
-/

namespace A035958.P12172028725027444381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238861 (n + 4) - A132587 (A171827 (2 * n + 3)).toNat

end

end A035958.P12172028725027444381

/-!
# A035959: Number of partitions of n in which no parts are multiples of 5.

The programs for A035959, there is no canonical definition to state claims against.
-/

/-! ## A035959.P15244800410557556302

`abs(record[-A145466(n)])`
-/

namespace A035959.P15244800410557556302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A035959.P15244800410557556302

/-! ## A035959.P11331403593622861637

`abs(A145466(A016861(n)))`
-/

namespace A035959.P11331403593622861637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145466 (A016861 n).toNat|

end

end A035959.P11331403593622861637

/-! ## A035959.P14776014492045628330

`-A145466(Δ[A000566(n)])`
-/

namespace A035959.P14776014492045628330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145466 (f1 (n + 1) - f1 n).toNat

end

end A035959.P14776014492045628330

/-! ## A035959.P18428092964076830239

`abs(A145466(A008706(n)+1))`
-/

namespace A035959.P18428092964076830239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145466 (A008706 n + 1).toNat|

end

end A035959.P18428092964076830239

/-! ## A035959.P914917589531450807

`-A145466(A016813(n)+n)`
-/

namespace A035959.P914917589531450807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145466 (A016813 n + (n : ℤ)).toNat

end

end A035959.P914917589531450807

/-! ## A035959.P3186791674687420114

`A124094(∑[n+5]+5)`
-/

namespace A035959.P3186791674687420114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A035959.P3186791674687420114

/-! ## A035959.P15976748866905479694

`A286653(∑[n+5]+5)`
-/

namespace A035959.P15976748866905479694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A035959.P15976748866905479694

/-!
# A035960: Number of partitions of n into parts not of the form 15k, 15k+6 or 15k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035960, there is no canonical definition to state claims against.
-/

/-! ## A035960.P14972128827844548490

`record[A322389(2*(n+2))-A262346(n+3)]`
-/

namespace A035960.P14972128827844548490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (2 * (n + 2)) - A262346 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035960.P14972128827844548490

/-! ## A035960.P15292404043550841558

`Δ[A001401(n)]+A333193(n)-A185284(A146237(n+1))`
-/

namespace A035960.P15292404043550841558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A333193 n - A185284 (A146237 (n + 1)).toNat)

end

end A035960.P15292404043550841558

/-! ## A035960.P17973468763236173074

`Δ[A001401(n)]+A281744(2*n)^A058276(n)!-A026816(A111581(n))`
-/

namespace A035960.P17973468763236173074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A281744 (2 * n) ^ Nat.factorial (A058276 n).toNat - A026816 (A111581 n).toNat)

end

end A035960.P17973468763236173074

/-! ## A035960.P9899882342801075361

`A000726(A077168(n))+A000701(n)`
-/

namespace A035960.P9899882342801075361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (A077168 n).toNat + A000701 n

end

end A035960.P9899882342801075361

/-! ## A035960.P18233709891754168632

`A027340(n+1)-A026816(A187829(n+2))`
-/

namespace A035960.P18233709891754168632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) - A026816 (A187829 (n + 2)).toNat

end

end A035960.P18233709891754168632

/-!
# A035961: Number of partitions of n into parts not of the form 15k, 15k+7 or 15k-7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 6 are greater than 1.

The programs for A035961, there is no canonical definition to state claims against.
-/

/-! ## A035961.P16685925940498436965

`A285727(2*(A280938(n)+A280937(n)))`
-/

namespace A035961.P16685925940498436965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * (A280938 n + A280937 n)).toNat

end

end A035961.P16685925940498436965

/-! ## A035961.P10923659298969225067

`(A280938(n)+A280937(n))/A001222(A061645(n+1))`
-/

namespace A035961.P10923659298969225067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280938 n + A280937 n : ℚ) / (A001222 (A061645 (n + 1)).toNat : ℚ)

end

end A035961.P10923659298969225067

/-! ## A035961.P15930045072093882041

`(A280938(n)+A280937(n))/A175732(A048977(n+1))`
-/

namespace A035961.P15930045072093882041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280938 n + A280937 n : ℚ) / (A175732 (A048977 (n + 1)).toNat : ℚ)

end

end A035961.P15930045072093882041

/-! ## A035961.P6588564690386721695

`(A280938(n)+A280937(n))/A020639(A175738(n+1))`
-/

namespace A035961.P6588564690386721695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280938 n + A280937 n : ℚ) / (A020639 (A175738 (n + 1)).toNat : ℚ)

end

end A035961.P6588564690386721695

/-! ## A035961.P4685839020721549668

`(A280938(n)+A280937(n))/A020639(A081586(n)+1)`
-/

namespace A035961.P4685839020721549668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280938 n + A280937 n : ℚ) / (A020639 (A081586 n + 1).toNat : ℚ)

end

end A035961.P4685839020721549668

/-!
# A035962: Number of partitions in parts not of the form 17k, 17k+1 or 17k-1. Also number of partitions with no part of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035962, there is no canonical definition to state claims against.
-/

/-! ## A035962.P11721605457889265804

`A118759(A035947(n+1)-A000726(n))`
-/

namespace A035962.P11721605457889265804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035947 (n + 1) - A000726 n).toNat

end

end A035962.P11721605457889265804

/-! ## A035962.P483993475956307395

`A118759(A035972(n+1)-A027336(n))`
-/

namespace A035962.P483993475956307395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035972 (n + 1) - A027336 n).toNat

end

end A035962.P483993475956307395

/-! ## A035962.P10460763989248359254

`A000196((A035947(n+1)-A000726(n))²)`
-/

namespace A035962.P10460763989248359254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A035947 (n + 1) - A000726 n) ^ 2).toNat

end

end A035962.P10460763989248359254

/-! ## A035962.P4231073649657305428

`Δ[A330641(n)]%A179859(n+1)`
-/

namespace A035962.P4231073649657305428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A179859 (n + 1))

end

end A035962.P4231073649657305428

/-! ## A035962.P9810842829743284913

`Δ[A330641(n)%A005553(n+8)]`
-/

namespace A035962.P9810842829743284913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330641 n) (A005553 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035962.P9810842829743284913

/-!
# A035963: Number of partitions of n into parts not of the form 17k, 17k+2 or 17k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035963, there is no canonical definition to state claims against.
-/

/-! ## A035963.P8535924156000334410

`A104408(record[A131308(n)+2])`
-/

namespace A035963.P8535924156000334410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035963.P8535924156000334410

/-! ## A035963.P18012809231061163947

`A104408(2*(n+1))%A302492(A000978(n+1))`
-/

namespace A035963.P18012809231061163947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104408 (2 * (n + 1))) (A302492 (A000978 (n + 1)).toNat)

end

end A035963.P18012809231061163947

/-! ## A035963.P9627096687532517592

`A104408(2*(n+1))+A010815(A317637(n+1)+1)`
-/

namespace A035963.P9627096687532517592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104408 (2 * (n + 1)) + A010815 (A317637 (n + 1) + 1).toNat

end

end A035963.P9627096687532517592

/-!
# A035964: Number of partitions in parts not of the form 17k, 17k+3 or 17k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035964, there is no canonical definition to state claims against.
-/

/-! ## A035964.P5402489776095130659

`A035997(n+1)-A118759(A000701(n))`
-/

namespace A035964.P5402489776095130659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035997 (n + 1) - A118759 (A000701 n).toNat

end

end A035964.P5402489776095130659

/-! ## A035964.P1535316074580551710

`A266781(A187829(n+1))+A027336(n)`
-/

namespace A035964.P1535316074580551710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266781 (A187829 (n + 1)).toNat + A027336 n

end

end A035964.P1535316074580551710

/-! ## A035964.P2533662549606863022

`A035997(A187829(n+1))-A000701(n)`
-/

namespace A035964.P2533662549606863022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035997 (A187829 (n + 1)).toNat - A000701 n

end

end A035964.P2533662549606863022

/-! ## A035964.P15641483480073773237

`A035972(n+1)-∑[A254379(A005043(n))]`
-/

namespace A035964.P15641483480073773237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A005043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035972 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035964.P15641483480073773237

/-! ## A035964.P2068842224810828761

`A266781(A187829(n+1))+A027342(n)-A000701(n)`
-/

namespace A035964.P2068842224810828761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266781 (A187829 (n + 1)).toNat + A027342 n - A000701 n

end

end A035964.P2068842224810828761

/-!
# A035965: Number of partitions of n into parts not of the form 17k, 17k+4 or 17k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035965, there is no canonical definition to state claims against.
-/

/-! ## A035965.P5806664661794926682

`A027338(A187829(n+1))-A004526(A332286(n))`
-/

namespace A035965.P5806664661794926682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (A187829 (n + 1)).toNat - A004526 (A332286 n).toNat

end

end A035965.P5806664661794926682

/-! ## A035965.P1721147413767753539

`A027338(n+1)-A102683(2^n)`
-/

namespace A035965.P1721147413767753539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A102683 (2 ^ n)

end

end A035965.P1721147413767753539

/-! ## A035965.P9195081526078794702

`A000196(A027589(n)*A299253(n))`
-/

namespace A035965.P9195081526078794702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027589 n * A299253 n).toNat

end

end A035965.P9195081526078794702

/-! ## A035965.P5717008274939201662

`A035973(n+1)-A185036(A187829(n+2))`
-/

namespace A035965.P5717008274939201662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035973 (n + 1) - A185036 (A187829 (n + 2)).toNat

end

end A035965.P5717008274939201662

/-! ## A035965.P8198263937947254869

`A035982(n+1)-A185036(A187829(n+2))`
-/

namespace A035965.P8198263937947254869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035982 (n + 1) - A185036 (A187829 (n + 2)).toNat

end

end A035965.P8198263937947254869

/-!
# A035966: Number of partitions of n into parts not of the form 17k, 17k+5 or 17k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035966, there is no canonical definition to state claims against.
-/

/-! ## A035966.P10711662837059432799

`A132292(A107236(n))+A036801(A187829(n+1))`
-/

namespace A035966.P10711662837059432799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A107236 n).toNat + A036801 (A187829 (n + 1)).toNat

end

end A035966.P10711662837059432799

/-! ## A035966.P12731438061636493933

`A035974(n+1)-A178798(A027338(n))`
-/

namespace A035966.P12731438061636493933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035974 (n + 1) - A178798 (A027338 n).toNat

end

end A035966.P12731438061636493933

/-! ## A035966.P16849487620327721356

`A178798(A005232(n))+A036004(n+1)`
-/

namespace A035966.P16849487620327721356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A005232 n).toNat + A036004 (n + 1)

end

end A035966.P16849487620327721356

/-! ## A035966.P2290643731368559478

`A118759(A266755(n+1)+A008638(n))`
-/

namespace A035966.P2290643731368559478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A266755 (n + 1) + A008638 n).toNat

end

end A035966.P2290643731368559478

/-! ## A035966.P8049978248396615406

`A035974(n+1)-A102683(A080877(n))`
-/

namespace A035966.P8049978248396615406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035974 (n + 1) - A102683 (A080877 n).toNat

end

end A035966.P8049978248396615406

/-!
# A035967: Number of partitions of n into parts not of the form 17k, 17k+6 or 17k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035967, there is no canonical definition to state claims against.
-/

/-! ## A035967.P16859113935602567892

`A035959(n)+Δ[A194439(n+2)]`
-/

namespace A035967.P16859113935602567892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n + (f1 (n + 1) - f1 n)

end

end A035967.P16859113935602567892

/-! ## A035967.P9768678021637908466

`A035959(n)+Δ[A286531(A011782(n))]`
-/

namespace A035967.P9768678021637908466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n + (f1 (n + 1) - f1 n)

end

end A035967.P9768678021637908466

/-! ## A035967.P15049946362094540236

`A035959(n)+A002865(A187829(n+1))`
-/

namespace A035967.P15049946362094540236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n + A002865 (A187829 (n + 1)).toNat

end

end A035967.P15049946362094540236

/-! ## A035967.P15879111386837247295

`A008639(A187829(n+1))-A026811(n)`
-/

namespace A035967.P15879111386837247295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 (A187829 (n + 1)).toNat - A026811 n

end

end A035967.P15879111386837247295

/-! ## A035967.P11406317787179253085

`A027340(A187829(n+1))-A026816(n)`
-/

namespace A035967.P11406317787179253085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (A187829 (n + 1)).toNat - A026816 n

end

end A035967.P11406317787179253085

/-!
# A035968: Number of partitions of n into parts not of the form 17k, 17k+7 or 17k-7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035968, there is no canonical definition to state claims against.
-/

/-! ## A035968.P5846095144017247476

`A248518(A187829(n+1))+A027340(n)`
-/

namespace A035968.P5846095144017247476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248518 (A187829 (n + 1)).toNat + A027340 n

end

end A035968.P5846095144017247476

/-! ## A035968.P58813424008631142

`A027341(A187829(n+1))-A026815(n)`
-/

namespace A035968.P58813424008631142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (A187829 (n + 1)).toNat - A026815 n

end

end A035968.P58813424008631142

/-! ## A035968.P11960174815210202797

`A027341(A187829(n+1))-A024794(n+1)`
-/

namespace A035968.P11960174815210202797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (A187829 (n + 1)).toNat - A024794 (n + 1)

end

end A035968.P11960174815210202797

/-! ## A035968.P2745123869833880024

`A246786(A239883(n))`
-/

namespace A035968.P2745123869833880024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (A239883 n).toNat

end

end A035968.P2745123869833880024

/-! ## A035968.P17807682068169028978

`A321728(n+3)+A049285(A328706(n+1))`
-/

namespace A035968.P17807682068169028978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 3) + A049285 (A328706 (n + 1)).toNat

end

end A035968.P17807682068169028978

/-!
# A035969: Number of partitions of n into parts not of the form 17k, 17k+8 or 17k-8. Also number of partitions with at most 7 parts of size 1 and differences between parts at distance 7 are greater than 1.

The programs for A035969, there is no canonical definition to state claims against.
-/

/-! ## A035969.P4477782092665534298

`∑[A363213(n+5)%A383531(3*n+1)]`
-/

namespace A035969.P4477782092665534298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363213 (n + 5)) (A383531 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035969.P4477782092665534298

/-! ## A035969.P6381910412407715720

`∑[A363213(n+5)]%A270929(2*n+5)`
-/

namespace A035969.P6381910412407715720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363213 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A270929 (2 * n + 5))

end

end A035969.P6381910412407715720

/-! ## A035969.P2598342901585471498

`∑[A363213(n+5)%A265772(n+1)]`
-/

namespace A035969.P2598342901585471498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363213 (n + 5)) (A265772 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035969.P2598342901585471498

/-! ## A035969.P10861905679308411850

`or(A325853(n), A350289(A027306(n)))`
-/

namespace A035969.P10861905679308411850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325853 n) (A350289 (A027306 n).toNat)

end

end A035969.P10861905679308411850

/-! ## A035969.P2630530840594229074

`A111133(n)+A178786(A355389(n))+1`
-/

namespace A035969.P2630530840594229074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (A178786 (A355389 n).toNat + 1)

end

end A035969.P2630530840594229074

/-!
# A035970: Number of partitions in parts not of the form 19k, 19k+1 or 19k-1. Also number of partitions with no part of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035970, there is no canonical definition to state claims against.
-/

/-! ## A035970.P13883838038396396385

`A104409(record[A131308(n)+2])`
-/

namespace A035970.P13883838038396396385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104409 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035970.P13883838038396396385

/-! ## A035970.P3979483394648137854

`A104409(2*(n+1))%A104399(2*n+3)`
-/

namespace A035970.P3979483394648137854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104409 (2 * (n + 1))) (A104399 (2 * n + 3))

end

end A035970.P3979483394648137854

/-! ## A035970.P17140379912336677143

`A121262(A000213(n))+A104409(2*(n+1))`
-/

namespace A035970.P17140379912336677143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000213 n).toNat + A104409 (2 * (n + 1))

end

end A035970.P17140379912336677143

/-! ## A035970.P91001840772741716

`A104409(2*n+2)+A000007(A143644(3*n))`
-/

namespace A035970.P91001840772741716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104409 (2 * n + 2) + A000007 (A143644 (3 * n)).toNat

end

end A035970.P91001840772741716

/-! ## A035970.P17668525689290444824

`A104409(2*(n+1))%A000203(A296284(n))`
-/

namespace A035970.P17668525689290444824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104409 (2 * (n + 1))) (A000203 (A296284 n).toNat)

end

end A035970.P17668525689290444824

/-!
# A035971: Number of partitions of n into parts not of the form 19k, 19k+2 or 19k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035971, there is no canonical definition to state claims against.
-/

/-! ## A035971.P3694735950242229314

`A178780(A241415(n))+A027336(n+1)`
-/

namespace A035971.P3694735950242229314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A241415 n).toNat + A027336 (n + 1)

end

end A035971.P3694735950242229314

/-! ## A035971.P1662084785952431855

`A178780(A241415(n))+A035990(n+1)`
-/

namespace A035971.P1662084785952431855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A241415 n).toNat + A035990 (n + 1)

end

end A035971.P1662084785952431855

/-! ## A035971.P12578147813947046145

`A178798(A302889(n+1))+A027336(n+1)`
-/

namespace A035971.P12578147813947046145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A302889 (n + 1)).toNat + A027336 (n + 1)

end

end A035971.P12578147813947046145

/-! ## A035971.P683760346762430592

`Δ[A084376(n)]-A068932(A185063(n))`
-/

namespace A035971.P683760346762430592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A068932 (A185063 n).toNat

end

end A035971.P683760346762430592

/-! ## A035971.P1310218987226607697

`A027336(n+1)-A025466(A022171(n))`
-/

namespace A035971.P1310218987226607697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A025466 (A022171 n).toNat

end

end A035971.P1310218987226607697

/-!
# A035972: Number of partitions in parts not of the form 19k, 19k+3 or 19k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035972, there is no canonical definition to state claims against.
-/

/-! ## A035972.P5609892901127023042

`A118759(A035962(n+1))+A027336(n)`
-/

namespace A035972.P5609892901127023042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035962 (n + 1)).toNat + A027336 n

end

end A035972.P5609892901127023042

/-! ## A035972.P12695597118442733

`A035981(n+1)-A055736(A185284(2*(n+1))+1)`
-/

namespace A035972.P12695597118442733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035981 (n + 1) - A055736 (A185284 (2 * (n + 1)) + 1).toNat

end

end A035972.P12695597118442733

/-! ## A035972.P10997468033388148495

`A118759(A035947(n+1)-A000726(n))+A027336(n)`
-/

namespace A035972.P10997468033388148495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035947 (n + 1) - A000726 n).toNat + A027336 n

end

end A035972.P10997468033388148495

/-! ## A035972.P3110099179137119897

`A027336(n)+A035947(A000005(2^n))-A000726(n)`
-/

namespace A035972.P3110099179137119897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n + (A035947 (A000005 (2 ^ n)).toNat - A000726 n)

end

end A035972.P3110099179137119897

/-! ## A035972.P4283238181248324667

`A118759(A027337(n+1))`
-/

namespace A035972.P4283238181248324667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027337 (n + 1)).toNat

end

end A035972.P4283238181248324667

/-!
# A035973: Number of partitions of n into parts not of the form 19k, 19k+4 or 19k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035973, there is no canonical definition to state claims against.
-/

/-! ## A035973.P12183075776413383698

`A035992(n+1)-A335474(A185036(n))`
-/

namespace A035973.P12183075776413383698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035992 (n + 1) - A335474 (A185036 n).toNat

end

end A035973.P12183075776413383698

/-! ## A035973.P16030264775019518415

`A036003(n+1)-A335474(A185036(n))`
-/

namespace A035973.P16030264775019518415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036003 (n + 1) - A335474 (A185036 n).toNat

end

end A035973.P16030264775019518415

/-! ## A035973.P16643341737122423671

`A027338(n+1)-A101040(A083961(n+1))`
-/

namespace A035973.P16643341737122423671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A101040 (A083961 (n + 1)).toNat

end

end A035973.P16643341737122423671

/-! ## A035973.P9366277754545176288

`A035982(n+1)-A101040(A083961(n+1))`
-/

namespace A035973.P9366277754545176288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035982 (n + 1) - A101040 (A083961 (n + 1)).toNat

end

end A035973.P9366277754545176288

/-! ## A035973.P7198976317150187135

`A035992(n+1)-A101040(A083961(n+1))`
-/

namespace A035973.P7198976317150187135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035992 (n + 1) - A101040 (A083961 (n + 1)).toNat

end

end A035973.P7198976317150187135

/-!
# A035974: Number of partitions of n into parts not of the form 19k, 19k+5 or 19k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035974, there is no canonical definition to state claims against.
-/

/-! ## A035974.P9722604071024509371

`A035955(A187829(n+1))+A027338(n)`
-/

namespace A035974.P9722604071024509371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035955 (A187829 (n + 1)).toNat + A027338 n

end

end A035974.P9722604071024509371

/-! ## A035974.P1257512746061340236

`A035983(n+1)-A102683(A001970(n))`
-/

namespace A035974.P1257512746061340236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035983 (n + 1) - A102683 (A001970 n).toNat

end

end A035974.P1257512746061340236

/-! ## A035974.P347606924564907646

`A036004(n+1)-A102683(A001970(n))`
-/

namespace A035974.P347606924564907646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036004 (n + 1) - A102683 (A001970 n).toNat

end

end A035974.P347606924564907646

/-! ## A035974.P8619545811239168890

`A035983(n+1)-∑[A254379(A005043(n))]`
-/

namespace A035974.P8619545811239168890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A005043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035983 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035974.P8619545811239168890

/-! ## A035974.P15708969673548965510

`A035983(n+1)-A185284(A006218(n))`
-/

namespace A035974.P15708969673548965510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035983 (n + 1) - A185284 (A006218 n).toNat

end

end A035974.P15708969673548965510

/-!
# A035975: Number of partitions of n into parts not of the form 19k, 19k+6 or 19k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035975, there is no canonical definition to state claims against.
-/

/-! ## A035975.P3540345581971419198

`A194439(n+3)-A024791(n+2)`
-/

namespace A035975.P3540345581971419198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 3) - A024791 (n + 2)

end

end A035975.P3540345581971419198

/-! ## A035975.P7654289157796936151

`A035985(n+2)-A118759(A035979(n+2))`
-/

namespace A035975.P7654289157796936151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035985 (n + 2) - A118759 (A035979 (n + 2)).toNat

end

end A035975.P7654289157796936151

/-! ## A035975.P6698062015054879756

`A035985(n+2)-A118759(A035989(n+2))`
-/

namespace A035975.P6698062015054879756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035985 (n + 2) - A118759 (A035989 (n + 2)).toNat

end

end A035975.P6698062015054879756

/-! ## A035975.P13206211416665432985

`A035985(n+2)-A118759(Δ[A000065(n+1)])`
-/

namespace A035975.P13206211416665432985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035985 (n + 2) - A118759 (f1 (n + 1) - f1 n).toNat

end

end A035975.P13206211416665432985

/-! ## A035975.P11718830483375371108

`A035984(n+1)-A340998(A027338(n))`
-/

namespace A035975.P11718830483375371108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035984 (n + 1) - A340998 ((A027338 n).toNat + 140)

end

end A035975.P11718830483375371108

/-!
# A035976: Number of partitions of n into parts not of the form 19k, 19k+7 or 19k-7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035976, there is no canonical definition to state claims against.
-/

/-! ## A035976.P8488656502764907028

`A027340(n)+Δ[A347577(n)%A347576(2*n+3)]`
-/

namespace A035976.P8488656502764907028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347577 (n + 55)) (A347576 (2 * n + 3 + 45))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n + (f1 (n + 1) - f1 n)

end

end A035976.P8488656502764907028

/-! ## A035976.P14980332127699254121

`A000041(A187829(n+1))-A241549(n)`
-/

namespace A035976.P14980332127699254121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A187829 (n + 1)).toNat - A241549 n

end

end A035976.P14980332127699254121

/-! ## A035976.P11331575688208980432

`A000041(A187829(n+1))-∑[A035562(n)]`
-/

namespace A035976.P11331575688208980432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A187829 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035976.P11331575688208980432

/-! ## A035976.P980230025659342937

`A035967(n+1)+A035562(A187829(n+1))`
-/

namespace A035976.P980230025659342937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035967 (n + 1) + A035562 (A187829 (n + 1)).toNat

end

end A035976.P980230025659342937

/-! ## A035976.P811432254143575370

`A027341(A187829(n+1))-A152467(A308908(n))`
-/

namespace A035976.P811432254143575370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 (A187829 (n + 1)).toNat - A152467 (A308908 n).toNat

end

end A035976.P811432254143575370

/-!
# A035977: Number of partitions of n into parts not of the form 19k, 19k+8 or 19k-8. Also number of partitions with at most 7 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035977, there is no canonical definition to state claims against.
-/

/-! ## A035977.P10588408391562826779

`A261776(n)+A001996(A187829(n+1))`
-/

namespace A035977.P10588408391562826779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 n + A001996 (A187829 (n + 1)).toNat

end

end A035977.P10588408391562826779

/-! ## A035977.P430501586747171454

`A266778(A187829(n+1))+A027341(n)`
-/

namespace A035977.P430501586747171454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 (A187829 (n + 1)).toNat + A027341 n

end

end A035977.P430501586747171454

/-! ## A035977.P4183687580040634041

`A027342(A187829(n+1))-A026816(n)`
-/

namespace A035977.P4183687580040634041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (A187829 (n + 1)).toNat - A026816 n

end

end A035977.P4183687580040634041

/-! ## A035977.P8407102161997494912

`A027342(A187829(n+1))-A326589(n)`
-/

namespace A035977.P8407102161997494912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (A187829 (n + 1)).toNat - A326589 n

end

end A035977.P8407102161997494912

/-! ## A035977.P13210712693702259371

`A027342(A187829(n+1))-A326590(n)`
-/

namespace A035977.P13210712693702259371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (A187829 (n + 1)).toNat - A326590 n

end

end A035977.P13210712693702259371

/-!
# A035978: Number of partitions of n into parts not of the form 19k, 19k+9 or 19k-9. Also number of partitions with at most 8 parts of size 1 and differences between parts at distance 8 are greater than 1.

The programs for A035978, there is no canonical definition to state claims against.
-/

/-! ## A035978.P7940182416469359208

`∑[A303944(n+1)-A187219(n+1)%A003119(n)]`
-/

namespace A035978.P7940182416469359208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303944 (n + 1) - Int.tmod (A187219 (n + 1)) (A003119 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035978.P7940182416469359208

/-! ## A035978.P9848176821761850115

`A027343(A156537(3*(n+2))+n)-A326590(n)`
-/

namespace A035978.P9848176821761850115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027343 (A156537 (3 * (n + 2)) + (n : ℤ)).toNat - A326590 n

end

end A035978.P9848176821761850115

/-! ## A035978.P8189288352038834330

`A027343(n)^A000383(A373843(n+1))-A326590(n)`
-/

namespace A035978.P8189288352038834330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027343 n : ℚ) ^ (A000383 (A373843 (n + 1)).toNat : ℤ) - (A326590 n : ℚ)

end

end A035978.P8189288352038834330

/-! ## A035978.P6504048909977627585

`A104502(A051903(2^n))-A326590(n)`
-/

namespace A035978.P6504048909977627585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104502 (A051903 (2 ^ n)).toNat - A326590 n

end

end A035978.P6504048909977627585

/-! ## A035978.P2982515298546136958

`A302242(A000079(n))+A027343(n)-A326590(n)`
-/

namespace A035978.P2982515298546136958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000079 n).toNat + A027343 n - A326590 n

end

end A035978.P2982515298546136958

/-!
# A035979: Number of partitions in parts not of the form 21k, 21k+1 or 21k-1. Also number of partitions with no part of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035979, there is no canonical definition to state claims against.
-/

/-! ## A035979.P14706549997451506454

`Δ[A000041(n)]-A241312(A184945(n))`
-/

namespace A035979.P14706549997451506454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A241312 (A184945 n).toNat

end

end A035979.P14706549997451506454

/-! ## A035979.P8222453750348451275

`A002865(n+1)-A178798(A087153(n))`
-/

namespace A035979.P8222453750348451275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A178798 (A087153 n).toNat

end

end A035979.P8222453750348451275

/-! ## A035979.P6632982794086754335

`Δ[A000041(n)]-A185264(A326628(n+1))`
-/

namespace A035979.P6632982794086754335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A185264 (A326628 (n + 1)).toNat

end

end A035979.P6632982794086754335

/-! ## A035979.P8980307468988007705

`Δ[A035363(2*n)]-A151774(A275064(n))`
-/

namespace A035979.P8980307468988007705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A151774 (A275064 n).toNat

end

end A035979.P8980307468988007705

/-!
# A035980: Number of partitions of n into parts not of the form 21k, 21k+2 or 21k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035980, there is no canonical definition to state claims against.
-/

/-! ## A035980.P1421129526858657183

`A035990(n+1)-A185284(A103609(n))`
-/

namespace A035980.P1421129526858657183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035990 (n + 1) - A185284 (A103609 n).toNat

end

end A035980.P1421129526858657183

/-! ## A035980.P11951131863069189120

`A036001(n+1)-A185284(A103609(n))`
-/

namespace A035980.P11951131863069189120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036001 (n + 1) - A185284 (A103609 n).toNat

end

end A035980.P11951131863069189120

/-! ## A035980.P17548957337637452740

`A027336(n+1)-A185238(A119620(n))`
-/

namespace A035980.P17548957337637452740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A185238 (A119620 n).toNat

end

end A035980.P17548957337637452740

/-! ## A035980.P9785763215544505582

`A027336(n+1)-A178798(A103609(n+2))`
-/

namespace A035980.P9785763215544505582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A178798 (A103609 (n + 2)).toNat

end

end A035980.P9785763215544505582

/-! ## A035980.P17374233030405758822

`A036001(n+1)-A185284(Δ[n²])`
-/

namespace A035980.P17374233030405758822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036001 (n + 1) - A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A035980.P17374233030405758822

/-!
# A035981: Number of partitions in parts not of the form 21k, 21k+3 or 21k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035981, there is no canonical definition to state claims against.
-/

/-! ## A035981.P17050738121773323200

`A262346(2*(n+1))%A124249(n+2)`
-/

namespace A035981.P17050738121773323200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262346 (2 * (n + 1))) (A124249 (n + 2))

end

end A035981.P17050738121773323200

/-! ## A035981.P7833899125561754906

`A262346(2*n+2)%A226259(n+3)`
-/

namespace A035981.P7833899125561754906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262346 (2 * n + 2)) (A226259 (n + 3))

end

end A035981.P7833899125561754906

/-! ## A035981.P18122892282127979313

`A262346(2*(n+1))+A000038(A001498(n))`
-/

namespace A035981.P18122892282127979313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262346 (2 * (n + 1)) + A000038 (A001498 n).toNat

end

end A035981.P18122892282127979313

/-! ## A035981.P11824925947789910517

`A262346(2*n+2)+A187795(A058137(n+4))`
-/

namespace A035981.P11824925947789910517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262346 (2 * n + 2) + A187795 (A058137 (n + 4)).toNat

end

end A035981.P11824925947789910517

/-! ## A035981.P15427603362687637888

`A355739(A139251(n+4))+A262346(2*n+2)`
-/

namespace A035981.P15427603362687637888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A139251 (n + 4)).toNat + A262346 (2 * n + 2)

end

end A035981.P15427603362687637888

/-!
# A035982: Number of partitions of n into parts not of the form 21k, 21k+4 or 21k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035982, there is no canonical definition to state claims against.
-/

/-! ## A035982.P15595415728350304331

`A027338(n+1)-∑[A162782(A051358(n))]`
-/

namespace A035982.P15595415728350304331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A051358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035982.P15595415728350304331

/-! ## A035982.P298934061297465247

`A035992(n+1)-A185284(A000961(n+3))`
-/

namespace A035982.P298934061297465247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035992 (n + 1) - A185284 (A000961 (n + 3)).toNat

end

end A035982.P298934061297465247

/-! ## A035982.P8756076300363562119

`A036003(n+1)-A185284(A000961(n+3))`
-/

namespace A035982.P8756076300363562119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036003 (n + 1) - A185284 (A000961 (n + 3)).toNat

end

end A035982.P8756076300363562119

/-! ## A035982.P1435544405188318768

`A027338(n+1)-A185284(2*n+1)-A185284(A000961(n+3))`
-/

namespace A035982.P1435544405188318768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A185284 (2 * n + 1) - A185284 (A000961 (n + 3)).toNat

end

end A035982.P1435544405188318768

/-! ## A035982.P2722976905687537192

`A027338(n+1)-A010051(A022171(n))`
-/

namespace A035982.P2722976905687537192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A010051 (A022171 n).toNat

end

end A035982.P2722976905687537192

/-!
# A035983: Number of partitions of n into parts not of the form 21k, 21k+5 or 21k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035983, there is no canonical definition to state claims against.
-/

/-! ## A035983.P12975409664789320406

`A035993(n+1)-A055736(A185284(2*(n+1))+1)`
-/

namespace A035983.P12975409664789320406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035993 (n + 1) - A055736 (A185284 (2 * (n + 1)) + 1).toNat

end

end A035983.P12975409664789320406

/-! ## A035983.P5637226546340393720

`A027339(n+1)-A185284(A029004(n))`
-/

namespace A035983.P5637226546340393720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A185284 (A029004 n).toNat

end

end A035983.P5637226546340393720

/-! ## A035983.P6299609688193018341

`A035993(n+1)-A185284(A029004(n))`
-/

namespace A035983.P6299609688193018341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035993 (n + 1) - A185284 (A029004 n).toNat

end

end A035983.P6299609688193018341

/-! ## A035983.P5193882041543411048

`A036004(n+1)-A185284(A029004(n))`
-/

namespace A035983.P5193882041543411048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036004 (n + 1) - A185284 (A029004 n).toNat

end

end A035983.P5193882041543411048

/-! ## A035983.P10898352070059014947

`A035993(n+1)-A178798(A056877(n+1))`
-/

namespace A035983.P10898352070059014947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035993 (n + 1) - A178798 (A056877 (n + 1)).toNat

end

end A035983.P10898352070059014947

/-!
# A035984: Number of partitions of n into parts not of the form 21k, 21k+6 or 21k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035984, there is no canonical definition to state claims against.
-/

/-! ## A035984.P4572024939072811025

`A035994(n+1)-A185294(A039071(n+1))`
-/

namespace A035984.P4572024939072811025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035994 (n + 1) - A185294 (A039071 (n + 1)).toNat

end

end A035984.P4572024939072811025

/-! ## A035984.P1082405860244026730

`A036005(n+1)-A185294(A039071(n+1))`
-/

namespace A035984.P1082405860244026730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036005 (n + 1) - A185294 (A039071 (n + 1)).toNat

end

end A035984.P1082405860244026730

/-! ## A035984.P15179575481517922388

`A027340(n+1)-A185284(A146237(n+1))`
-/

namespace A035984.P15179575481517922388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) - A185284 (A146237 (n + 1)).toNat

end

end A035984.P15179575481517922388

/-! ## A035984.P13147855778362412683

`A035994(n+1)-A185284(A146237(n+1))`
-/

namespace A035984.P13147855778362412683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035994 (n + 1) - A185284 (A146237 (n + 1)).toNat

end

end A035984.P13147855778362412683

/-! ## A035984.P431282406301695673

`A036005(n+1)-A185284(A146237(n+1))`
-/

namespace A035984.P431282406301695673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036005 (n + 1) - A185284 (A146237 (n + 1)).toNat

end

end A035984.P431282406301695673

/-!
# A035985: Number of partitions of n into parts not a multiple of 7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035985, there is no canonical definition to state claims against.
-/

/-! ## A035985.P9540562983284628345

`abs(A244600(7*n+2))`
-/

namespace A035985.P9540562983284628345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244600 (7 * n + 2)|

end

end A035985.P9540562983284628345

/-! ## A035985.P9386870500614193958

`-A244600(A017005(n))`
-/

namespace A035985.P9386870500614193958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A244600 (A017005 n).toNat

end

end A035985.P9386870500614193958

/-! ## A035985.P4138894571902635999

`lcm(A006519(2*n+5), A244600(7*n+2))`
-/

namespace A035985.P4138894571902635999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (2 * n + 5)) (A244600 (7 * n + 2))

end

end A035985.P4138894571902635999

/-! ## A035985.P16951745613295865282

`gcd(A000038(n), A244600(A017005(n)))`
-/

namespace A035985.P16951745613295865282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244600 (A017005 n).toNat)

end

end A035985.P16951745613295865282

/-! ## A035985.P18028986758477156005

`lcm(A020985(n), A244600(A017005(n)))`
-/

namespace A035985.P18028986758477156005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A244600 (A017005 n).toNat)

end

end A035985.P18028986758477156005

/-! ## A035985.P17920420514957208240

`A000038(n+1)-A244600(A017005(n))`
-/

namespace A035985.P17920420514957208240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A244600 (A017005 n).toNat

end

end A035985.P17920420514957208240

/-! ## A035985.P17092977606729905380

`A000038(n)-A244600(A017005(n)-A000038(n))`
-/

namespace A035985.P17092977606729905380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A244600 (A017005 n - A000038 n).toNat

end

end A035985.P17092977606729905380

/-! ## A035985.P2131925998146440802

`lcm(A000188(A019348(n+1)), A244600(7*n+2))`
-/

namespace A035985.P2131925998146440802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (A019348 (n + 1)).toNat) (A244600 (7 * n + 2))

end

end A035985.P2131925998146440802

/-! ## A035985.P3454202166625947020

`A124094(A046691(n+5)-3)`
-/

namespace A035985.P3454202166625947020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A046691 (n + 5) - 3).toNat

end

end A035985.P3454202166625947020

/-! ## A035985.P3863033735798433088

`A124094(A000217(n+7)-7)`
-/

namespace A035985.P3863033735798433088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A000217 (n + 7) - 7).toNat

end

end A035985.P3863033735798433088

/-! ## A035985.P9901274250746537562

`A286653(A000217(n+7)-7)`
-/

namespace A035985.P9901274250746537562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 7) - 7).toNat

end

end A035985.P9901274250746537562

/-! ## A035985.P6221839216950176807

`A286653(Δ[A023551(n+2)]-1)`
-/

namespace A035985.P6221839216950176807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (f1 (n + 1) - f1 n - 1).toNat

end

end A035985.P6221839216950176807

/-! ## A035985.P2725854784270764055

`A286653(Δ[A026054(n+4)]-1)`
-/

namespace A035985.P2725854784270764055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (f1 (n + 1) - f1 n - 1).toNat

end

end A035985.P2725854784270764055

/-!
# A035986: Number of partitions of n into parts not of the form 21k, 21k+8 or 21k-8. Also number of partitions with at most 7 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035986, there is no canonical definition to state claims against.
-/

/-! ## A035986.P13310060309602172766

`A118759(Δ[A008635(n)])+A027341(n)`
-/

namespace A035986.P13310060309602172766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (n + 1) - f1 n).toNat + A027341 n

end

end A035986.P13310060309602172766

/-! ## A035986.P2432386321540465852

`A281744(n*A001316(2^n))+Δ[A027342(n)]`
-/

namespace A035986.P2432386321540465852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 ((n : ℤ) * A001316 (2 ^ n)).toNat + (f1 (n + 1) - f1 n)

end

end A035986.P2432386321540465852

/-! ## A035986.P11632330872087279702

`A118759(A035956(n+1))+A000701(A118759(n+1))`
-/

namespace A035986.P11632330872087279702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035956 (n + 1)).toNat + A000701 (A118759 (n + 1)).toNat

end

end A035986.P11632330872087279702

/-! ## A035986.P11086068395913106467

`A035976(A187829(n+1))+A035562(n)`
-/

namespace A035986.P11086068395913106467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035976 (A187829 (n + 1)).toNat + A035562 n

end

end A035986.P11086068395913106467

/-! ## A035986.P15838711340722863664

`A027342(n+1)-A089309(A213380(n))`
-/

namespace A035986.P15838711340722863664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 (n + 1) - A089309 (A213380 n).toNat

end

end A035986.P15838711340722863664

/-!
# A035987: Number of partitions of n into parts not of the form 21k, 21k+9 or 21k-9. Also number of partitions with at most 8 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035987, there is no canonical definition to state claims against.
-/

/-! ## A035987.P15791622654251553536

`A118759(A000701(n))+A104410(2*(n+1))`
-/

namespace A035987.P15791622654251553536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000701 n).toNat + A104410 (2 * (n + 1))

end

end A035987.P15791622654251553536

/-! ## A035987.P8354611381135419637

`A111660(∑[A326469(n+1)])+A008637(n+1)`
-/

namespace A035987.P8354611381135419637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008637 (n + 1)

end

end A035987.P8354611381135419637

/-! ## A035987.P7110823709041045982

`A111660(∑[A326594(n+2)])+A008637(n+1)`
-/

namespace A035987.P7110823709041045982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008637 (n + 1)

end

end A035987.P7110823709041045982

/-! ## A035987.P16730667287105912219

`A035957(A187829(n+1))+A000701(n)`
-/

namespace A035987.P16730667287105912219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035957 (A187829 (n + 1)).toNat + A000701 n

end

end A035987.P16730667287105912219

/-! ## A035987.P8951364735376889047

`A064173(A187829(n+1))+A001935(n)`
-/

namespace A035987.P8951364735376889047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (A187829 (n + 1)).toNat + A001935 n

end

end A035987.P8951364735376889047

/-!
# A035988: Number of partitions of n into parts not of the form 21k, 21k+10 or 21k-10. Also number of partitions with at most 9 parts of size 1 and differences between parts at distance 9 are greater than 1.

The programs for A035988, there is no canonical definition to state claims against.
-/

/-! ## A035988.P7172130507401582784

`A008632(n)+∑[A111660(A326591(n))]`
-/

namespace A035988.P7172130507401582784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A326591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008632 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035988.P7172130507401582784

/-! ## A035988.P5956793284647938774

`A008638(n)+∑[A111660(A326591(n))]`
-/

namespace A035988.P5956793284647938774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A326591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035988.P5956793284647938774

/-! ## A035988.P16857186788277037176

`∑[A266777(n)+A111660(A326591(n))]`
-/

namespace A035988.P16857186788277037176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n + A111660 (A326591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035988.P16857186788277037176

/-! ## A035988.P13367563558400872135

`A051056(A242474(n+1))+A027337(n)`
-/

namespace A035988.P13367563558400872135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 (A242474 (n + 1)).toNat + A027337 n

end

end A035988.P13367563558400872135

/-! ## A035988.P9868437318254280916

`A000196(A000041(n)*A218509(n))`
-/

namespace A035988.P9868437318254280916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000041 n * A218509 n).toNat

end

end A035988.P9868437318254280916

/-!
# A035989: Number of partitions in parts not of the form 23k, 23k+1 or 23k-1. Also number of partitions with no part of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035989, there is no canonical definition to state claims against.
-/

/-! ## A035989.P14856089127371903758

`A002865(n+1)-A011745(A348519(n+1))`
-/

namespace A035989.P14856089127371903758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A011745 (A348519 (n + 1)).toNat

end

end A035989.P14856089127371903758

/-! ## A035989.P8491470865590011867

`A002865(n+1)-A335520(A147706(n+1))`
-/

namespace A035989.P8491470865590011867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A335520 (A147706 (n + 1)).toNat

end

end A035989.P8491470865590011867

/-! ## A035989.P3746864827537016825

`A085811(n+4)-A178798(A206557(n+1))`
-/

namespace A035989.P3746864827537016825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 4) - A178798 (A206557 (n + 1)).toNat

end

end A035989.P3746864827537016825

/-! ## A035989.P11936245072836817331

`A240019(n+1)%A268710(n)`
-/

namespace A035989.P11936245072836817331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240019 (n + 1 + 10)) (A268710 n)

end

end A035989.P11936245072836817331

/-! ## A035989.P6592229255271749419

`record[A371783(n+1)]-A000041(n)`
-/

namespace A035989.P6592229255271749419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000041 n

end

end A035989.P6592229255271749419

/-!
# A035990: Number of partitions of n into parts not of the form 23k, 23k+2 or 23k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035990, there is no canonical definition to state claims against.
-/

/-! ## A035990.P8808154393232200186

`A027336(n+1)-A178798(A103609(n))`
-/

namespace A035990.P8808154393232200186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A178798 (A103609 n).toNat

end

end A035990.P8808154393232200186

/-! ## A035990.P8850609000757654002

`A036001(n+1)-A178798(A103609(n))`
-/

namespace A035990.P8850609000757654002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036001 (n + 1) - A178798 (A103609 n).toNat

end

end A035990.P8850609000757654002

/-! ## A035990.P7974780845701777732

`Δ[A194805(n)]-A185284(A318611(n+1))`
-/

namespace A035990.P7974780845701777732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A185284 (A318611 (n + 1)).toNat

end

end A035990.P7974780845701777732

/-! ## A035990.P1555620176103959826

`A178798(A103609(n)+1)+A036001(n+1)`
-/

namespace A035990.P1555620176103959826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A103609 n + 1).toNat + A036001 (n + 1)

end

end A035990.P1555620176103959826

/-! ## A035990.P12805314808840598755

`A027336(n+1)-A354996(A351374(n+1))`
-/

namespace A035990.P12805314808840598755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) - A354996 (A351374 (n + 1)).toNat

end

end A035990.P12805314808840598755

/-!
# A035991: Number of partitions in parts not of the form 23k, 23k+3 or 23k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035991, there is no canonical definition to state claims against.
-/

/-! ## A035991.P17816947176100472609

`A027337(n+1)-A185284(A000931(n))`
-/

namespace A035991.P17816947176100472609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) - A185284 (A000931 n).toNat

end

end A035991.P17816947176100472609

/-! ## A035991.P1193382775468797853

`A036002(n+1)-A185284(A000931(n))`
-/

namespace A035991.P1193382775468797853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036002 (n + 1) - A185284 (A000931 n).toNat

end

end A035991.P1193382775468797853

/-! ## A035991.P15062413358539985946

`A027337(n+1)-A144193(A236939(n+2))`
-/

namespace A035991.P15062413358539985946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) - A144193 (A236939 (n + 2 + 10)).toNat

end

end A035991.P15062413358539985946

/-! ## A035991.P13049823733720393479

`A027337(n+1)-A185284(A245145(n+6))`
-/

namespace A035991.P13049823733720393479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) - A185284 (A245145 (n + 6)).toNat

end

end A035991.P13049823733720393479

/-! ## A035991.P16072893363729379938

`A036002(n+1)-A185284(A245145(n+6))`
-/

namespace A035991.P16072893363729379938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036002 (n + 1) - A185284 (A245145 (n + 6)).toNat

end

end A035991.P16072893363729379938

/-!
# A035992: Number of partitions of n into parts not of the form 23k, 23k+4 or 23k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035992, there is no canonical definition to state claims against.
-/

/-! ## A035992.P17676466453272297143

`A036003(n+1)-A178798(A026812(n))`
-/

namespace A035992.P17676466453272297143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036003 (n + 1) - A178798 (A026812 n).toNat

end

end A035992.P17676466453272297143

/-! ## A035992.P1735202368990656006

`A027338(n+1)-A185284(A000961(n+1))`
-/

namespace A035992.P1735202368990656006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A185284 (A000961 (n + 1)).toNat

end

end A035992.P1735202368990656006

/-! ## A035992.P16603962158536311908

`A036003(n+1)-A185284(A000961(n+1))`
-/

namespace A035992.P16603962158536311908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036003 (n + 1) - A185284 (A000961 (n + 1)).toNat

end

end A035992.P16603962158536311908

/-! ## A035992.P10430123952601303540

`A027338(n+1)-A185284(2*n+1)`
-/

namespace A035992.P10430123952601303540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A185284 (2 * n + 1)

end

end A035992.P10430123952601303540

/-! ## A035992.P6419172253501045166

`A036003(n+1)-A185284(2*n+1)`
-/

namespace A035992.P6419172253501045166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036003 (n + 1) - A185284 (2 * n + 1)

end

end A035992.P6419172253501045166

/-!
# A035993: Number of partitions of n into parts not of the form 23k, 23k+5 or 23k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035993, there is no canonical definition to state claims against.
-/

/-! ## A035993.P3637761473814870686

`A036004(n+1)-A178798(A087153(n+2))`
-/

namespace A035993.P3637761473814870686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036004 (n + 1) - A178798 (A087153 (n + 2)).toNat

end

end A035993.P3637761473814870686

/-! ## A035993.P2316529339441565438

`record[A262364(2*n)-A184945(A241312(n+1))]`
-/

namespace A035993.P2316529339441565438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262364 (2 * n) - A184945 (A241312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035993.P2316529339441565438

/-! ## A035993.P2879490191169694050

`A027339(n+1)-A185284(A008756(n))`
-/

namespace A035993.P2879490191169694050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A185284 (A008756 n).toNat

end

end A035993.P2879490191169694050

/-! ## A035993.P3790761623179288462

`A027339(n+1)-A185284(A008759(n))`
-/

namespace A035993.P3790761623179288462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A185284 (A008759 n).toNat

end

end A035993.P3790761623179288462

/-!
# A035994: Number of partitions of n into parts not of the form 23k, 23k+6 or 23k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035994, there is no canonical definition to state claims against.
-/

/-! ## A035994.P5457417802126313740

`A036005(n+1)-A044941(A000079(n))`
-/

namespace A035994.P5457417802126313740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036005 (n + 1) - A044941 (A000079 n).toNat

end

end A035994.P5457417802126313740

/-! ## A035994.P12605831247531827864

`A036005(n+1)-A025439(A184955(n))`
-/

namespace A035994.P12605831247531827864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036005 (n + 1) - A025439 (A184955 n).toNat

end

end A035994.P12605831247531827864

/-! ## A035994.P2414665287497961230

`A036005(n+1)-A185284(A026811(n))`
-/

namespace A035994.P2414665287497961230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036005 (n + 1) - A185284 (A026811 n).toNat

end

end A035994.P2414665287497961230

/-! ## A035994.P12320833107810728517

`A104503(n+1)-A025439(A184955(n))`
-/

namespace A035994.P12320833107810728517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104503 (n + 1) - A025439 (A184955 n).toNat

end

end A035994.P12320833107810728517

/-! ## A035994.P477317846203501514

`A027340(n+1)-A058276(A263159(n))`
-/

namespace A035994.P477317846203501514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 1) - A058276 (A263159 n).toNat

end

end A035994.P477317846203501514

/-!
# A035995: Number of partitions of n into parts not of the form 23k, 23k+7 or 23k-7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035995, there is no canonical definition to state claims against.
-/

/-! ## A035995.P11455550698761777310

`record[A035363(n)]-A118759(A024793(n+3))`
-/

namespace A035995.P11455550698761777310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A118759 (A024793 (n + 3)).toNat

end

end A035995.P11455550698761777310

/-! ## A035995.P15535748935137541858

`record[A035444(n)]-A118759(A024793(n+3))`
-/

namespace A035995.P15535748935137541858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A118759 (A024793 (n + 3)).toNat

end

end A035995.P15535748935137541858

/-! ## A035995.P12118522039015435907

`A000041(n+1)-A118759(A024793(n+3))`
-/

namespace A035995.P12118522039015435907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A118759 (A024793 (n + 3)).toNat

end

end A035995.P12118522039015435907

/-! ## A035995.P14123508337613475495

`A194621(A000096(n+1))-A118759(A024793(n+3))`
-/

namespace A035995.P14123508337613475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A000096 (n + 1)).toNat - A118759 (A024793 (n + 3)).toNat

end

end A035995.P14123508337613475495

/-! ## A035995.P17395034679718666849

`A194621(A034856(n+1))-A118759(A024793(n+3))`
-/

namespace A035995.P17395034679718666849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A034856 (n + 1)).toNat - A118759 (A024793 (n + 3)).toNat

end

end A035995.P17395034679718666849

/-!
# A035996: Number of partitions of n into parts not of the form 23k, 23k+8 or 23k-8. Also number of partitions with at most 7 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035996, there is no canonical definition to state claims against.
-/

/-! ## A035996.P9696025239089211659

`Δ[A213598(n)]-A001489(A035985(n))`
-/

namespace A035996.P9696025239089211659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001489 (A035985 n).toNat

end

end A035996.P9696025239089211659

/-! ## A035996.P5371188478110687652

`A028310(A035985(n))+A002865(n+1)`
-/

namespace A035996.P5371188478110687652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A035985 n).toNat + A002865 (n + 1)

end

end A035996.P5371188478110687652

/-! ## A035996.P3172331554189823180

`A110655(Δ[A299474(n)])+A035985(n)`
-/

namespace A035996.P3172331554189823180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (n + 1) - f1 n).toNat + A035985 n

end

end A035996.P3172331554189823180

/-! ## A035996.P10797934090151413156

`A118759(Δ[A000065(n)])+A035985(n)`
-/

namespace A035996.P10797934090151413156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (n + 1) - f1 n).toNat + A035985 n

end

end A035996.P10797934090151413156

/-! ## A035996.P11029492696893725083

`A118759(A035979(n+1))+A035985(n)`
-/

namespace A035996.P11029492696893725083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A035979 (n + 1)).toNat + A035985 n

end

end A035996.P11029492696893725083

/-!
# A035997: Number of partitions of n into parts not of the form 23k, 23k+9 or 23k-9. Also number of partitions with at most 8 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035997, there is no canonical definition to state claims against.
-/

/-! ## A035997.P8424470066504371180

`A118759(A000701(n))+A035964(n+1)`
-/

namespace A035997.P8424470066504371180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000701 n).toNat + A035964 (n + 1)

end

end A035997.P8424470066504371180

/-! ## A035997.P5091779635868961509

`A035964(A187829(n+1))+A000701(n)`
-/

namespace A035997.P5091779635868961509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035964 (A187829 (n + 1)).toNat + A000701 n

end

end A035997.P5091779635868961509

/-! ## A035997.P7616098774061111215

`A266781(A187829(n+1))+A027342(n)`
-/

namespace A035997.P7616098774061111215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266781 (A187829 (n + 1)).toNat + A027342 n

end

end A035997.P7616098774061111215

/-! ## A035997.P4025857104793712212

`A008637(A187829(n+1))+∑[A035565(n)]`
-/

namespace A035997.P4025857104793712212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 (A187829 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035997.P4025857104793712212

/-! ## A035997.P296850880543937592

`A104502(A187829(n+1))-A162781(n+1)`
-/

namespace A035997.P296850880543937592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104502 (A187829 (n + 1)).toNat - A162781 (n + 1)

end

end A035997.P296850880543937592

/-!
# A035998: Number of partitions of n into parts not of the form 23k, 23k+10 or 23k-10. Also number of partitions with at most 9 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035998, there is no canonical definition to state claims against.
-/

/-! ## A035998.P6380802160110433924

`A332280(A187829(n+1))+char[14]`
-/

namespace A035998.P6380802160110433924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A035998.P6380802160110433924

/-! ## A035998.P16934363230375415689

`record[A332280(n)%A325700(3*n+4)]`
-/

namespace A035998.P16934363230375415689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332280 n) (A325700 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035998.P16934363230375415689

/-! ## A035998.P4975460734034184873

`A137792(n+1)-A129251(A387623(n))`
-/

namespace A035998.P4975460734034184873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137792 (n + 1) - A129251 (A387623 n).toNat

end

end A035998.P4975460734034184873

/-! ## A035998.P6826805426464788506

`or(A306211(A205015(2*n+1)), A332280(n+1))`
-/

namespace A035998.P6826805426464788506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A306211 (A205015 (2 * n + 1)).toNat) (A332280 (n + 1))

end

end A035998.P6826805426464788506

/-! ## A035998.P11105469556753717493

`A212187(A077168(n))`
-/

namespace A035998.P11105469556753717493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212187 (A077168 n).toNat

end

end A035998.P11105469556753717493

/-!
# A035999: Number of partitions of n into parts not of the form 23k, 23k+11 or 23k-11. Also number of partitions with at most 10 parts of size 1 and differences between parts at distance 10 are greater than 1.

The programs for A035999, there is no canonical definition to state claims against.
-/

/-! ## A035999.P3570410620281789661

`A008640(n)-A178798(A330447(n))`
-/

namespace A035999.P3570410620281789661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 n - A178798 (A330447 n).toNat

end

end A035999.P3570410620281789661

/-! ## A035999.P16308316265972228110

`A104502(n)+A054868(A370530(n))`
-/

namespace A035999.P16308316265972228110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104502 n + A054868 (A370530 n).toNat

end

end A035999.P16308316265972228110

/-! ## A035999.P692474481513606448

`A337196(A145795(n+1))+A261776(n)`
-/

namespace A035999.P692474481513606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337196 (A145795 (n + 1)).toNat + A261776 n

end

end A035999.P692474481513606448

/-! ## A035999.P17964643216955672583

`A261776(n)+A046660(A062786(3*n+2))`
-/

namespace A035999.P17964643216955672583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 n + A046660 (A062786 (3 * n + 2)).toNat

end

end A035999.P17964643216955672583

/-! ## A035999.P3544156777105193185

`A261776(n)+A008966(A046762(3*n+5))`
-/

namespace A035999.P3544156777105193185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 n + A008966 (A046762 (3 * n + 5)).toNat

end

end A035999.P3544156777105193185

