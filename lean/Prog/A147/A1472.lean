import SequenceMachineLib.Basic
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A147200: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147200, there is no canonical definition to state claims against.
-/

/-! ## A147200.P2695184403948359124

`or(1, A169708(A241704(n+1)))`
-/

namespace A147200.P2695184403948359124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169708 (A241704 (n + 1)).toNat)

end

end A147200.P2695184403948359124

/-! ## A147200.P9736429420889713426

`∑[and(A119169(n+1), A282741(n))]`
-/

namespace A147200.P9736429420889713426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119169 (n + 1)) (A282741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147200.P9736429420889713426

/-! ## A147200.P10439472958410830395

`∑[∑[A033676(A003422(n)+1)]-n]-n`
-/

namespace A147200.P10439472958410830395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A003422 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A147200.P10439472958410830395

/-! ## A147200.P6434807250152635008

`A052899(A004495(n)%A282741(n))`
-/

namespace A147200.P6434807250152635008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 (Int.tmod (A004495 n) (A282741 n)).toNat

end

end A147200.P6434807250152635008

/-! ## A147200.P6280971808278139441

`A320643(n+1)+A185305(A156364(n))`
-/

namespace A147200.P6280971808278139441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320643 (n + 1) + A185305 (A156364 n).toNat

end

end A147200.P6280971808278139441

/-!
# A147201: Number of n X n binary arrays with all ones connected only in a 1100-0101-0111 pattern in any orientation.

The programs for A147201, there is no canonical definition to state claims against.
-/

/-! ## A147201.P7597061449379053239

`A147203(2*(n+2))`
-/

namespace A147201.P7597061449379053239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (2 * (n + 2))

end

end A147201.P7597061449379053239

/-! ## A147201.P11591324609700823659

`or(1, A147203(A077797(n+1)))`
-/

namespace A147201.P11591324609700823659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147203 (A077797 (n + 1)).toNat)

end

end A147201.P11591324609700823659

/-! ## A147201.P16143655777663589663

`or(1, A147203(A081874(n+1)))`
-/

namespace A147201.P16143655777663589663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147203 (A081874 (n + 1)).toNat)

end

end A147201.P16143655777663589663

/-! ## A147201.P12736601765927584910

`A147203(A077797(n+1))/A065648(n)`
-/

namespace A147201.P12736601765927584910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147203 (A077797 (n + 1)).toNat : ℚ) / (A065648 n : ℚ)

end

end A147201.P12736601765927584910

/-! ## A147201.P17714404921372574330

`A147203(A081874(n+1))/A065648(n)`
-/

namespace A147201.P17714404921372574330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147203 (A081874 (n + 1)).toNat : ℚ) / (A065648 n : ℚ)

end

end A147201.P17714404921372574330

/-!
# A147202: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0101-0111 pattern in any orientation.

The programs for A147202, there is no canonical definition to state claims against.
-/

/-! ## A147202.P16979259764992111704

`A146776(n+1)-A152889(A152880(n+1))`
-/

namespace A147202.P16979259764992111704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146776 (n + 1) - A152889 (A152880 (n + 1)).toNat

end

end A147202.P16979259764992111704

/-!
# A147204: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0101-0111 pattern in any orientation.

The programs for A147204, there is no canonical definition to state claims against.
-/

/-! ## A147204.P2766124575994896241

`A147206(2*(n+2))`
-/

namespace A147204.P2766124575994896241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147206 (2 * (n + 2))

end

end A147204.P2766124575994896241

/-! ## A147204.P3596584229624272745

`or(1, A147206(A072697(n+1)))`
-/

namespace A147204.P3596584229624272745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147206 (A072697 (n + 1)).toNat)

end

end A147204.P3596584229624272745

/-! ## A147204.P7411205084255213736

`or(1, A147206(A138986(n+1)))`
-/

namespace A147204.P7411205084255213736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147206 (A138986 (n + 1)).toNat)

end

end A147204.P7411205084255213736

/-! ## A147204.P946783030963022910

`or(1, A147206(A144396(n+1)))`
-/

namespace A147204.P946783030963022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147206 (A144396 (n + 1)).toNat)

end

end A147204.P946783030963022910

/-! ## A147204.P6751622576346778894

`or(1, A147206(A190325(n+1)))`
-/

namespace A147204.P6751622576346778894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147206 (A190325 (n + 1)).toNat)

end

end A147204.P6751622576346778894

/-!
# A147205: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0101-0111 pattern in any orientation.

The programs for A147205, there is no canonical definition to state claims against.
-/

/-! ## A147205.P3697037625966304005

`A131319(A146284(n+1))`
-/

namespace A147205.P3697037625966304005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A146284 (n + 1)).toNat

end

end A147205.P3697037625966304005

/-! ## A147205.P17264146881196598687

`A147220(n+1)-A033921(A264428(n))`
-/

namespace A147205.P17264146881196598687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (n + 1) - A033921 (A264428 n).toNat

end

end A147205.P17264146881196598687

/-! ## A147205.P11006474284433371741

`A147220(n+1)-A326642(A206503(n+1))`
-/

namespace A147205.P11006474284433371741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (n + 1) - A326642 (A206503 (n + 1)).toNat

end

end A147205.P11006474284433371741

/-!
# A147208: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0101-0111 pattern in any orientation.

The programs for A147208, there is no canonical definition to state claims against.
-/

/-! ## A147208.P7858044333744959766

`or(1, A065719(A039919(n+1)))`
-/

namespace A147208.P7858044333744959766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065719 (A039919 (n + 1)).toNat)

end

end A147208.P7858044333744959766

/-! ## A147208.P3771750845283824783

`or(1, A065719(∑[A128743(n+1)]/(n+1)))`
-/

namespace A147208.P3771750845283824783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065719 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat)

end

end A147208.P3771750845283824783

/-! ## A147208.P16107577940263823102

`A328612(A000255(n))+A056490(n+1)`
-/

namespace A147208.P16107577940263823102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (A000255 n).toNat + A056490 (n + 1)

end

end A147208.P16107577940263823102

/-! ## A147208.P13886467595115916951

`A175374(A062162(n)-A056898(n+1))`
-/

namespace A147208.P13886467595115916951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175374 (A062162 n - A056898 (n + 1)).toNat

end

end A147208.P13886467595115916951

/-!
# A147209: Number of n X n binary arrays with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147209, there is no canonical definition to state claims against.
-/

/-! ## A147209.P3553650348041463446

`A147211(2*(n+2))`
-/

namespace A147209.P3553650348041463446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147211 (2 * (n + 2))

end

end A147209.P3553650348041463446

/-! ## A147209.P10326455910392499236

`A147211(A285036(n+1))^A147215(n+1)`
-/

namespace A147209.P10326455910392499236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147211 (A285036 (n + 1)).toNat : ℚ) ^ (A147215 (n + 1) : ℤ)

end

end A147209.P10326455910392499236

/-! ## A147209.P11371533492344065795

`A147211(A285036(n+1))/A147211(A147215(n+1)²)`
-/

namespace A147209.P11371533492344065795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147211 (A285036 (n + 1)).toNat : ℚ) / (A147211 (A147215 (n + 1) ^ 2).toNat : ℚ)

end

end A147209.P11371533492344065795

/-!
# A147210: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147210, there is no canonical definition to state claims against.
-/

/-! ## A147210.P11774475466489919912

`or(A147240(n+1), A147252(A005728(n)))`
-/

namespace A147210.P11774475466489919912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147240 (n + 1)) (A147252 (A005728 n).toNat)

end

end A147210.P11774475466489919912

/-! ## A147210.P57116613916912666

`or(A147240(n+1), A147258(A008815(n)))`
-/

namespace A147210.P57116613916912666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147240 (n + 1)) (A147258 (A008815 n).toNat)

end

end A147210.P57116613916912666

/-! ## A147210.P11433836773967180812

`or(A000041(A309861(n)), A147240(n+1))`
-/

namespace A147210.P11433836773967180812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (A309861 n).toNat) (A147240 (n + 1))

end

end A147210.P11433836773967180812

/-! ## A147210.P8350458355504442942

`or(A147229(A195865(n)), A147240(n+1))`
-/

namespace A147210.P8350458355504442942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147229 (A195865 n).toNat) (A147240 (n + 1))

end

end A147210.P8350458355504442942

/-! ## A147210.P570364501623143147

`A146438(n+1)-A048831(A146450(n+4))`
-/

namespace A147210.P570364501623143147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146438 (n + 1) - A048831 (A146450 (n + 4)).toNat

end

end A147210.P570364501623143147

/-!
# A147211: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147211, there is no canonical definition to state claims against.
-/

/-! ## A147211.P14813343808747726573

`A147241(n+1)-A056654(A147266(n+1))`
-/

namespace A147211.P14813343808747726573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147241 (n + 1) - A056654 (A147266 (n + 1)).toNat

end

end A147211.P14813343808747726573

/-!
# A147212: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147212, there is no canonical definition to state claims against.
-/

/-! ## A147212.P2450222003853812943

`A147214(2*n+3)`
-/

namespace A147212.P2450222003853812943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147214 (2 * n + 3)

end

end A147212.P2450222003853812943

/-! ## A147212.P15964539408457388498

`or(1, A147214(A092858(n+1)))`
-/

namespace A147212.P15964539408457388498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147214 (A092858 (n + 1)).toNat)

end

end A147212.P15964539408457388498

/-! ## A147212.P13657866168260824106

`or(1, A147214(A092859(n+1)))`
-/

namespace A147212.P13657866168260824106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147214 (A092859 (n + 1)).toNat)

end

end A147212.P13657866168260824106

/-! ## A147212.P4119885875172983115

`or(1, A147214(A144396(n+1)))`
-/

namespace A147212.P4119885875172983115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147214 (A144396 (n + 1)).toNat)

end

end A147212.P4119885875172983115

/-! ## A147212.P1851592986365218020

`A147214(A092858(n+1))+A064458(n)`
-/

namespace A147212.P1851592986365218020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147214 (A092858 (n + 1)).toNat + A064458 n

end

end A147212.P1851592986365218020

/-!
# A147214: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147214, there is no canonical definition to state claims against.
-/

/-! ## A147214.P17684551474887973592

`A147128(abs(and(1, n)-(n+3))+1)`
-/

namespace A147214.P17684551474887973592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147128 (|(Nat.land 1 n : ℤ) - (n + 3 : ℤ)| + 1).toNat

end

end A147214.P17684551474887973592

/-! ## A147214.P8702757909107716925

`A147128(A007095(n)+2)`
-/

namespace A147214.P8702757909107716925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147128 (A007095 n + 2).toNat

end

end A147214.P8702757909107716925

/-! ## A147214.P1453477730228755962

`A147128(A004442(n)+3)`
-/

namespace A147214.P1453477730228755962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147128 (A004442 n + 3).toNat

end

end A147214.P1453477730228755962

/-! ## A147214.P884169196571404106

`A147128(A067251(n+1)+1)`
-/

namespace A147214.P884169196571404106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147128 (A067251 (n + 1) + 1).toNat

end

end A147214.P884169196571404106

/-!
# A147215: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147215, there is no canonical definition to state claims against.
-/

/-! ## A147215.P11202634202699608734

`A007775(∏{d}[A288112(n), #])`
-/

namespace A147215.P11202634202699608734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A147215.P11202634202699608734

/-! ## A147215.P4432818986196867797

`A099375(A000225(n)*A185163(n))`
-/

namespace A147215.P4432818986196867797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A000225 n * A185163 n).toNat

end

end A147215.P4432818986196867797

/-! ## A147215.P16804334843003494150

`A160014(A125272(n+4)*A357286(n))`
-/

namespace A147215.P16804334843003494150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (A125272 (n + 4) * A357286 n).toNat

end

end A147215.P16804334843003494150

/-! ## A147215.P8647625599794068456

`and(A146602(A335433(n+1)), A146616(n+1))`
-/

namespace A147215.P8647625599794068456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146602 (A335433 (n + 1)).toNat) (A146616 (n + 1))

end

end A147215.P8647625599794068456

/-!
# A147216: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0111-0011 pattern in any orientation.

The programs for A147216, there is no canonical definition to state claims against.
-/

/-! ## A147216.P16236015967216944627

`A351934(n)+A279418(A293493(n))`
-/

namespace A147216.P16236015967216944627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351934 n + A279418 (A293493 n).toNat

end

end A147216.P16236015967216944627

/-! ## A147216.P6475771048993547529

`A007306(A303871(n)-A006498(n))`
-/

namespace A147216.P6475771048993547529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A303871 n - A006498 n).toNat

end

end A147216.P6475771048993547529

/-! ## A147216.P12519969290352952846

`A171181(A351936(n))+∏{p}[A356328(n)², #]`
-/

namespace A147216.P12519969290352952846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356328 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A351936 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A147216.P12519969290352952846

/-! ## A147216.P14874702179503236375

`A337841(A146603(n+1))+A146617(n+1)`
-/

namespace A147216.P14874702179503236375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337841 (A146603 (n + 1)).toNat + A146617 (n + 1)

end

end A147216.P14874702179503236375

/-!
# A147218: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0111-0101 pattern in any orientation.

The programs for A147218, there is no canonical definition to state claims against.
-/

/-! ## A147218.P17571402459223457501

`A324378(lcm(A324372(n), A324412(n+1)))`
-/

namespace A147218.P17571402459223457501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324378 (Int.lcm (A324372 n) (A324412 (n + 1)))

end

end A147218.P17571402459223457501

/-! ## A147218.P16991109436416917572

`or(A146776(n+1), A147175(A336815(n)))`
-/

namespace A147218.P16991109436416917572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A147175 (A336815 n).toNat)

end

end A147218.P16991109436416917572

/-! ## A147218.P8962040232086945919

`or(A147175(A336815(n)), A147202(n+1))`
-/

namespace A147218.P8962040232086945919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147175 (A336815 n).toNat) (A147202 (n + 1))

end

end A147218.P8962040232086945919

/-! ## A147218.P2007600586865205386

`or(A146776(n+1), A226172(A333882(n)))`
-/

namespace A147218.P2007600586865205386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A226172 (A333882 n).toNat)

end

end A147218.P2007600586865205386

/-! ## A147218.P5027344226980353650

`or(A147202(n+1), A324240(A309861(n)))`
-/

namespace A147218.P5027344226980353650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147202 (n + 1)) (A324240 (A309861 n).toNat)

end

end A147218.P5027344226980353650

/-!
# A147219: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0101 pattern in any orientation.

The programs for A147219, there is no canonical definition to state claims against.
-/

/-! ## A147219.P14256327192615189607

`A171561(A068037(n+1))`
-/

namespace A147219.P14256327192615189607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A068037 (n + 1)).toNat

end

end A147219.P14256327192615189607

/-! ## A147219.P14639475060134045568

`or(A147204(n+1), A147220(A321729(n)))`
-/

namespace A147219.P14639475060134045568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147204 (n + 1)) (A147220 (A321729 n).toNat)

end

end A147219.P14639475060134045568

/-! ## A147219.P14169810449898934929

`A318274(xor(A098557(n), A136818(n+1)))`
-/

namespace A147219.P14169810449898934929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (Int.xor (A098557 n) (A136818 (n + 1))).toNat

end

end A147219.P14169810449898934929

/-! ## A147219.P918109607714341062

`A157935(n+2)%A157905(A157940(n+1))`
-/

namespace A147219.P918109607714341062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157935 (n + 2)) (A157905 (A157940 (n + 1)).toNat)

end

end A147219.P918109607714341062

/-!
# A147220: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-0101 pattern in any orientation.

The programs for A147220, there is no canonical definition to state claims against.
-/

/-! ## A147220.P13586021168423337085

`2*A147182(n+1)-A147166(n+1)`
-/

namespace A147220.P13586021168423337085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147182 (n + 1) - A147166 (n + 1)

end

end A147220.P13586021168423337085

/-! ## A147220.P12640312467702501610

`xor(3, A147166(n+1))-A147152(n+1)`
-/

namespace A147220.P12640312467702501610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A147166 (n + 1)) - A147152 (n + 1)

end

end A147220.P12640312467702501610

/-!
# A147221: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0101 pattern in any orientation.

The programs for A147221, there is no canonical definition to state claims against.
-/

/-! ## A147221.P7984651942695039481

`A318396(A335514(n))%A163429(n+1)`
-/

namespace A147221.P7984651942695039481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318396 (A335514 n).toNat) (A163429 (n + 1))

end

end A147221.P7984651942695039481

/-! ## A147221.P17528248519734094593

`A273432(A059053(n)*A270831(2*(n+2)))`
-/

namespace A147221.P17528248519734094593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273432 (A059053 n * A270831 (2 * (n + 2))).toNat

end

end A147221.P17528248519734094593

/-! ## A147221.P13686172399671121552

`A130011(and(A146904(n+1), A147278(n+1)))`
-/

namespace A147221.P13686172399671121552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130011 (Int.land (A146904 (n + 1)) (A147278 (n + 1))).toNat

end

end A147221.P13686172399671121552

/-! ## A147221.P13121230475268466608

`A208239(C(A028387(n+1), A208246(n+3)))`
-/

namespace A147221.P13121230475268466608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208239 (Nat.choose (A028387 (n + 1)).toNat (A208246 (n + 3)).toNat)

end

end A147221.P13121230475268466608

/-!
# A147222: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0111-0101 pattern in any orientation.

The programs for A147222, there is no canonical definition to state claims against.
-/

/-! ## A147222.P8006757523700260094

`A278572(lcm(8, A303287(n)))`
-/

namespace A147222.P8006757523700260094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278572 (Int.lcm 8 (A303287 n))

end

end A147222.P8006757523700260094

/-! ## A147222.P5423379016848055838

`A324689(A116637(n*A002266(n)))`
-/

namespace A147222.P5423379016848055838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (A116637 ((n : ℤ) * A002266 n).toNat).toNat

end

end A147222.P5423379016848055838

/-! ## A147222.P10865581273634400390

`A324689(A116637(n)^A002266(n))`
-/

namespace A147222.P10865581273634400390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (SequenceMachineLib.roundAway ((A116637 n : ℚ) ^ (A002266 n : ℤ))).toNat

end

end A147222.P10865581273634400390

/-!
# A147223: Number of n X n binary arrays with all ones connected only in a 11011-01110 pattern in any orientation.

The programs for A147223, there is no canonical definition to state claims against.
-/

/-! ## A147223.P1245503562852029162

`A147225(2*(n+2))`
-/

namespace A147223.P1245503562852029162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (2 * (n + 2))

end

end A147223.P1245503562852029162

/-! ## A147223.P17789932373400577961

`A147360(C(comp[or(3, n)], n))`
-/

namespace A147223.P17789932373400577961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147360 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A147223.P17789932373400577961

/-!
# A147226: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11011-01110 pattern in any orientation.

The programs for A147226, there is no canonical definition to state claims against.
-/

/-! ## A147226.P5710547467252939983

`A147228(2*(n+2))`
-/

namespace A147226.P5710547467252939983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147228 (2 * (n + 2))

end

end A147226.P5710547467252939983

/-! ## A147226.P2569771939567216996

`A147363(n+1)+A060689(A147404(n+1))`
-/

namespace A147226.P2569771939567216996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147363 (n + 1) + A060689 (A147404 (n + 1)).toNat

end

end A147226.P2569771939567216996

/-! ## A147226.P1569614157775326598

`A147363(n+1)+A101606(A147363(n+3))`
-/

namespace A147226.P1569614157775326598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147363 (n + 1) + A101606 (A147363 (n + 3)).toNat

end

end A147226.P1569614157775326598

/-! ## A147226.P14082503489326084257

`A147363(record[A252648(n)])`
-/

namespace A147226.P14082503489326084257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147226.P14082503489326084257

/-! ## A147226.P8445402352856295065

`A147365(A065153(n+1))`
-/

namespace A147226.P8445402352856295065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A065153 (n + 1)).toNat

end

end A147226.P8445402352856295065

/-!
# A147227: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11011-01110 pattern in any orientation.

The programs for A147227, there is no canonical definition to state claims against.
-/

/-! ## A147227.P1158016165866468626

`A147364(A043318(n+1))`
-/

namespace A147227.P1158016165866468626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (A043318 (n + 1)).toNat

end

end A147227.P1158016165866468626

/-! ## A147227.P443180991897302922

`A147364(A044915(n+1))`
-/

namespace A147227.P443180991897302922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (A044915 (n + 1)).toNat

end

end A147227.P443180991897302922

/-! ## A147227.P14381361589830998524

`A147364(A055647(n+1))`
-/

namespace A147227.P14381361589830998524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (A055647 (n + 1)).toNat

end

end A147227.P14381361589830998524

/-! ## A147227.P18314774222693623314

`A147364(A057846(n+1))`
-/

namespace A147227.P18314774222693623314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (A057846 (n + 1)).toNat

end

end A147227.P18314774222693623314

/-! ## A147227.P10816400493383430190

`A147364(A062947(n+1))`
-/

namespace A147227.P10816400493383430190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (A062947 (n + 1)).toNat

end

end A147227.P10816400493383430190

/-!
# A147229: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11011-01110 pattern in any orientation.

The programs for A147229, there is no canonical definition to state claims against.
-/

/-! ## A147229.P1387445295831057571

`A049456(A007756(n+1)+A001222(3*n+5))`
-/

namespace A147229.P1387445295831057571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A007756 (n + 1) + A001222 (3 * n + 5)).toNat

end

end A147229.P1387445295831057571

/-!
# A147231: Number of n X n binary arrays with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147231, there is no canonical definition to state claims against.
-/

/-! ## A147231.P14655650528526298511

`A147233(2*(n+2))`
-/

namespace A147231.P14655650528526298511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147233 (2 * (n + 2))

end

end A147231.P14655650528526298511

/-! ## A147231.P3840260811246643831

`or(1, A147233(A093161(n+1)))`
-/

namespace A147231.P3840260811246643831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147233 (A093161 (n + 1)).toNat)

end

end A147231.P3840260811246643831

/-! ## A147231.P2095694497840175476

`or(1, A147233(A120351(n+1)))`
-/

namespace A147231.P2095694497840175476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147233 (A120351 (n + 1)).toNat)

end

end A147231.P2095694497840175476

/-! ## A147231.P7165223987607438230

`or(1, A147233(A144396(n+1)))`
-/

namespace A147231.P7165223987607438230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147233 (A144396 (n + 1)).toNat)

end

end A147231.P7165223987607438230

/-! ## A147231.P13125810343229922428

`or(1, A147233(A307782(n+1)))`
-/

namespace A147231.P13125810343229922428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147233 (A307782 (n + 1)).toNat)

end

end A147231.P13125810343229922428

/-!
# A147232: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147232, there is no canonical definition to state claims against.
-/

/-! ## A147232.P2448066860364446060

`or(A025444(A146808(n+1)), A146808(n+1))`
-/

namespace A147232.P2448066860364446060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025444 (A146808 (n + 1)).toNat) (A146808 (n + 1))

end

end A147232.P2448066860364446060

/-! ## A147232.P10085165645439299394

`or(A146808(n+1), A146839(A146780(n+5)))`
-/

namespace A147232.P10085165645439299394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146808 (n + 1)) (A146839 (A146780 (n + 5)).toNat)

end

end A147232.P10085165645439299394

/-! ## A147232.P15638290427097477579

`A267458(C(∑[n], A034162(n)))`
-/

namespace A147232.P15638290427097477579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A034162 n).toNat)

end

end A147232.P15638290427097477579

/-! ## A147232.P4388159051445802210

`or(A033630(n), A106621(A006228(n)))`
-/

namespace A147232.P4388159051445802210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033630 n) (A106621 (A006228 n).toNat)

end

end A147232.P4388159051445802210

/-! ## A147232.P4107793277585126780

`or(A070176(n), A106621(A006228(n)))`
-/

namespace A147232.P4107793277585126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070176 n) (A106621 (A006228 n).toNat)

end

end A147232.P4107793277585126780

/-!
# A147234: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147234, there is no canonical definition to state claims against.
-/

/-! ## A147234.P632000051475467536

`A147236(2*(n+2))`
-/

namespace A147234.P632000051475467536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147236 (2 * (n + 2))

end

end A147234.P632000051475467536

/-! ## A147234.P2078967504400350529

`or(1, A147236(A005408(n+1)))`
-/

namespace A147234.P2078967504400350529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147236 (A005408 (n + 1)).toNat)

end

end A147234.P2078967504400350529

/-! ## A147234.P3378440661199428556

`or(1, A147236(A144396(n+1)))`
-/

namespace A147234.P3378440661199428556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147236 (A144396 (n + 1)).toNat)

end

end A147234.P3378440661199428556

/-! ## A147234.P5799696116180159598

`or(1, A147236(A185604(n+1)))`
-/

namespace A147234.P5799696116180159598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147236 (A185604 (n + 1)).toNat)

end

end A147234.P5799696116180159598

/-!
# A147236: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147236, there is no canonical definition to state claims against.
-/

/-! ## A147236.P16204861240439229979

`A072088(A146450(n+1))`
-/

namespace A147236.P16204861240439229979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A146450 (n + 1)).toNat

end

end A147236.P16204861240439229979

/-! ## A147236.P6564667430061000024

`A087052(A146655(n+1))`
-/

namespace A147236.P6564667430061000024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A146655 (n + 1)).toNat

end

end A147236.P6564667430061000024

/-! ## A147236.P9857704810126073533

`A087052(A146687(n+1))`
-/

namespace A147236.P9857704810126073533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A146687 (n + 1)).toNat

end

end A147236.P9857704810126073533

/-! ## A147236.P7523463401394382949

`A087052(A146812(n+1))`
-/

namespace A147236.P7523463401394382949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A146812 (n + 1)).toNat

end

end A147236.P7523463401394382949

/-! ## A147236.P34531306044003075

`A294137(A146599(n+1))+A146812(n+1)`
-/

namespace A147236.P34531306044003075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 (A146599 (n + 1)).toNat + A146812 (n + 1)

end

end A147236.P34531306044003075

/-!
# A147237: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147237, there is no canonical definition to state claims against.
-/

/-! ## A147237.P2285964671438653100

`A167902(or(1, A229885(n)))`
-/

namespace A147237.P2285964671438653100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167902 (Int.lor 1 (A229885 n)).toNat

end

end A147237.P2285964671438653100

/-! ## A147237.P11919945791243021298

`or(1, A167902(A146813(n+1)))`
-/

namespace A147237.P11919945791243021298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A167902 (A146813 (n + 1)).toNat)

end

end A147237.P11919945791243021298

/-! ## A147237.P8864911310040093981

`or(A046226(A146808(n+1)), A146813(n+1))`
-/

namespace A147237.P8864911310040093981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046226 (A146808 (n + 1)).toNat) (A146813 (n + 1))

end

end A147237.P8864911310040093981

/-! ## A147237.P7344731328102726008

`A102614(A001383(n))`
-/

namespace A147237.P7344731328102726008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A001383 n).toNat

end

end A147237.P7344731328102726008

/-! ## A147237.P15264257675465443290

`A102614(A036621(n))`
-/

namespace A147237.P15264257675465443290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A036621 n).toNat

end

end A147237.P15264257675465443290

/-!
# A147238: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1101-0111-0001 pattern in any orientation.

The programs for A147238, there is no canonical definition to state claims against.
-/

/-! ## A147238.P6392084721438032998

`A332745(A061720(n)%A332726(n))`
-/

namespace A147238.P6392084721438032998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332745 (Int.tmod (A061720 n) (A332726 n)).toNat

end

end A147238.P6392084721438032998

/-!
# A147239: Number of n X n binary arrays with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147239, there is no canonical definition to state claims against.
-/

/-! ## A147239.P8609515122364787824

`A147241(2*(n+2))`
-/

namespace A147239.P8609515122364787824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147241 (2 * (n + 2))

end

end A147239.P8609515122364787824

/-! ## A147239.P8449233915691129434

`∏{d}[A062545(n), A147241(#)]`
-/

namespace A147239.P8449233915691129434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147241 d

end

end A147239.P8449233915691129434

/-! ## A147239.P4782936206957819153

`or(1, A147241(A329826(n+1)))`
-/

namespace A147239.P4782936206957819153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147241 (A329826 (n + 1)).toNat)

end

end A147239.P4782936206957819153

/-! ## A147239.P11538787767950028833

`or(1, A147241(A346302(n+1)))`
-/

namespace A147239.P11538787767950028833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147241 (A346302 (n + 1)).toNat)

end

end A147239.P11538787767950028833

/-! ## A147239.P1062679826225915035

`or(1, A147241(A206812(n+2)))`
-/

namespace A147239.P1062679826225915035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147241 (A206812 (n + 2)).toNat)

end

end A147239.P1062679826225915035

/-!
# A147240: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147240, there is no canonical definition to state claims against.
-/

/-! ## A147240.P8015147901409268566

`A147210(n+1)-A243822(A147190(3*n+1))`
-/

namespace A147240.P8015147901409268566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147210 (n + 1) - A243822 (A147190 (3 * n + 1)).toNat

end

end A147240.P8015147901409268566

/-!
# A147241: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147241, there is no canonical definition to state claims against.
-/

/-! ## A147241.P15413681113398909622

`or(A074964(A146466(n+1)), A147211(n+1))`
-/

namespace A147241.P15413681113398909622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074964 (A146466 (n + 1)).toNat) (A147211 (n + 1))

end

end A147241.P15413681113398909622

/-! ## A147241.P4141863094525762110

`or(A147185(A147206(n+1)), A147211(n+1))`
-/

namespace A147241.P4141863094525762110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147185 (A147206 (n + 1)).toNat) (A147211 (n + 1))

end

end A147241.P4141863094525762110

/-! ## A147241.P15191494372469315907

`or(A147211(n+1), A147214(A147198(n+1)))`
-/

namespace A147241.P15191494372469315907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147211 (n + 1)) (A147214 (A147198 (n + 1)).toNat)

end

end A147241.P15191494372469315907

/-! ## A147241.P7899022170617521507

`or(A147200(A147214(n+1)), A147211(n+1))`
-/

namespace A147241.P7899022170617521507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147200 (A147214 (n + 1)).toNat) (A147211 (n + 1))

end

end A147241.P7899022170617521507

/-! ## A147241.P12008461918478584576

`or(A147192(A147236(n+1)), A147211(n+1))`
-/

namespace A147241.P12008461918478584576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147192 (A147236 (n + 1)).toNat) (A147211 (n + 1))

end

end A147241.P12008461918478584576

/-!
# A147242: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147242, there is no canonical definition to state claims against.
-/

/-! ## A147242.P7539544589397812532

`A147244(2*n+3)`
-/

namespace A147242.P7539544589397812532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147244 (2 * n + 3)

end

end A147242.P7539544589397812532

/-! ## A147242.P5958040565105044986

`or(1, A147244(A144396(n+1)))`
-/

namespace A147242.P5958040565105044986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147244 (A144396 (n + 1)).toNat)

end

end A147242.P5958040565105044986

/-! ## A147242.P11857043917508833005

`or(1, A147244(A322660(n+1)))`
-/

namespace A147242.P11857043917508833005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147244 (A322660 (n + 1)).toNat)

end

end A147242.P11857043917508833005

/-! ## A147242.P1794237102869980864

`or(1, A147244(∑[A020649(n+3)]))`
-/

namespace A147242.P1794237102869980864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A147242.P1794237102869980864

/-! ## A147242.P4876400130753527528

`A185036(n)+A147244(A144396(n+1))`
-/

namespace A147242.P4876400130753527528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A147244 (A144396 (n + 1)).toNat

end

end A147242.P4876400130753527528

/-!
# A147243: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147243, there is no canonical definition to state claims against.
-/

/-! ## A147243.P3867741292614702049

`or(A146736(A146788(n+2)), A146787(n+1))`
-/

namespace A147243.P3867741292614702049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146736 (A146788 (n + 2)).toNat) (A146787 (n + 1))

end

end A147243.P3867741292614702049

/-! ## A147243.P8439316423202025488

`or(A103489(A219207(n)), A146787(n+1))`
-/

namespace A147243.P8439316423202025488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103489 (A219207 n).toNat) (A146787 (n + 1))

end

end A147243.P8439316423202025488

/-! ## A147243.P597408364075619127

`A343380(A147227(n+1))+A146787(n+1)`
-/

namespace A147243.P597408364075619127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A147227 (n + 1)).toNat + A146787 (n + 1)

end

end A147243.P597408364075619127

/-! ## A147243.P5779673764608959231

`A348341(A147156(n+1))+A146787(n+1)`
-/

namespace A147243.P5779673764608959231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (A147156 (n + 1)).toNat + A146787 (n + 1)

end

end A147243.P5779673764608959231

/-! ## A147243.P6158316848073173742

`or(A146787(n+1), A146814(A146719(n+3)))`
-/

namespace A147243.P6158316848073173742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146787 (n + 1)) (A146814 (A146719 (n + 3)).toNat)

end

end A147243.P6158316848073173742

/-!
# A147244: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147244, there is no canonical definition to state claims against.
-/

/-! ## A147244.P10977929155809864682

`A324701(A036420(floor(n/2))+1)`
-/

namespace A147244.P10977929155809864682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A036420 ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A147244.P10977929155809864682

/-! ## A147244.P1174793764077763991

`A357849(A146796(n+1))+A146788(n+1)`
-/

namespace A147244.P1174793764077763991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A146796 (n + 1)).toNat + A146788 (n + 1)

end

end A147244.P1174793764077763991

/-! ## A147244.P4970269588751162905

`or(A146788(n+1), A167965(A146780(n+1)))`
-/

namespace A147244.P4970269588751162905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146788 (n + 1)) (A167965 (A146780 (n + 1)).toNat)

end

end A147244.P4970269588751162905

/-! ## A147244.P5952506462968918363

`or(A146788(n+1), A167965(A146766(n)))`
-/

namespace A147244.P5952506462968918363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146788 (n + 1)) (A167965 (A146766 n).toNat)

end

end A147244.P5952506462968918363

/-!
# A147245: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1101-0111-0010 pattern in any orientation.

The programs for A147245, there is no canonical definition to state claims against.
-/

/-! ## A147245.P9073234527998121168

`A146036(n+1)-A241466(A014963(n+1))`
-/

namespace A147245.P9073234527998121168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146036 (n + 1) - A241466 (A014963 (n + 1)).toNat

end

end A147245.P9073234527998121168

/-! ## A147245.P4050148268098702521

`A146036(n+1)-A241466(A020639(n+1))`
-/

namespace A147245.P4050148268098702521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146036 (n + 1) - A241466 (A020639 (n + 1)).toNat

end

end A147245.P4050148268098702521

/-! ## A147245.P5704897690617140614

`A146036(n+1)-A286106(A147232(n+1))`
-/

namespace A147245.P5704897690617140614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146036 (n + 1) - A286106 (A147232 (n + 1)).toNat

end

end A147245.P5704897690617140614

/-! ## A147245.P5537770503451682957

`and(A015919(A146018(n+1)), A146036(n+1))`
-/

namespace A147245.P5537770503451682957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015919 (A146018 (n + 1)).toNat) (A146036 (n + 1))

end

end A147245.P5537770503451682957

/-! ## A147245.P17310146680022825614

`A379850(A062812(n+1))`
-/

namespace A147245.P17310146680022825614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379850 (A062812 (n + 1)).toNat

end

end A147245.P17310146680022825614

/-!
# A147247: Number of n X n binary arrays with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147247, there is no canonical definition to state claims against.
-/

/-! ## A147247.P11420810185193231151

`A147249(2*(n+2))`
-/

namespace A147247.P11420810185193231151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (2 * (n + 2))

end

end A147247.P11420810185193231151

/-! ## A147247.P9396382933205085824

`A174616(n)+A147249(A182318(n+1))`
-/

namespace A147247.P9396382933205085824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174616 n + A147249 (A182318 (n + 1)).toNat

end

end A147247.P9396382933205085824

/-! ## A147247.P4273129408324507803

`A147249(A182318(n+1))%A065100(n)`
-/

namespace A147247.P4273129408324507803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147249 (A182318 (n + 1)).toNat) (A065100 n)

end

end A147247.P4273129408324507803

/-! ## A147247.P5514683666897890211

`A147249(A182318(n+1))+A024155(n+1)`
-/

namespace A147247.P5514683666897890211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (A182318 (n + 1)).toNat + A024155 (n + 1)

end

end A147247.P5514683666897890211

/-! ## A147247.P2878463331702390674

`A194186(n+1)+A147249(A182318(n+1))`
-/

namespace A147247.P2878463331702390674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1) + A147249 (A182318 (n + 1)).toNat

end

end A147247.P2878463331702390674

/-!
# A147249: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147249, there is no canonical definition to state claims against.
-/

/-! ## A147249.P7252312508290598809

`A087822(A146141(n+1))`
-/

namespace A147249.P7252312508290598809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087822 (A146141 (n + 1)).toNat

end

end A147249.P7252312508290598809

/-! ## A147249.P6551730447134739460

`A089230(A147378(n+1))`
-/

namespace A147249.P6551730447134739460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089230 (A147378 (n + 1)).toNat

end

end A147249.P6551730447134739460

/-! ## A147249.P17650985796827588891

`A094607(A147013(n+1))`
-/

namespace A147249.P17650985796827588891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (A147013 (n + 1)).toNat

end

end A147249.P17650985796827588891

/-! ## A147249.P1884557310624052959

`A105033(A147045(n+1))`
-/

namespace A147249.P1884557310624052959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (A147045 (n + 1)).toNat

end

end A147249.P1884557310624052959

/-! ## A147249.P6722955185406967648

`A105033(A147195(n+1))`
-/

namespace A147249.P6722955185406967648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (A147195 (n + 1)).toNat

end

end A147249.P6722955185406967648

/-!
# A147250: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147250, there is no canonical definition to state claims against.
-/

/-! ## A147250.P16419046305216998596

`A147252(2*n+3)`
-/

namespace A147250.P16419046305216998596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147252 (2 * n + 3)

end

end A147250.P16419046305216998596

/-! ## A147250.P4240967195522028721

`or(1, A147252(A144396(n+1)))`
-/

namespace A147250.P4240967195522028721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147252 (A144396 (n + 1)).toNat)

end

end A147250.P4240967195522028721

/-! ## A147250.P7694818344602356811

`A147252(A144396(n+1))%A010571(n+1)`
-/

namespace A147250.P7694818344602356811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147252 (A144396 (n + 1)).toNat) (A010571 (n + 1))

end

end A147250.P7694818344602356811

/-! ## A147250.P12655816906628943817

`A147252(A144396(n+1))/A007318(C(2, n))`
-/

namespace A147250.P12655816906628943817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147252 (A144396 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A147250.P12655816906628943817

/-! ## A147250.P14624957506641477348

`A147252(A144396(n+1))/A007318(A001222(n+1))`
-/

namespace A147250.P14624957506641477348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147252 (A144396 (n + 1)).toNat : ℚ) / (A007318 (A001222 (n + 1)).toNat : ℚ)

end

end A147250.P14624957506641477348

/-!
# A147251: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147251, there is no canonical definition to state claims against.
-/

/-! ## A147251.P4961123722253109306

`A101435(A147509(n+1))`
-/

namespace A147251.P4961123722253109306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A147509 (n + 1)).toNat

end

end A147251.P4961123722253109306

/-! ## A147251.P2168604874861397348

`A194975(A147189(n+1))`
-/

namespace A147251.P2168604874861397348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A147189 (n + 1)).toNat

end

end A147251.P2168604874861397348

/-!
# A147252: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147252, there is no canonical definition to state claims against.
-/

/-! ## A147252.P5361095941024098449

`A147250(A225551(n+3)%(n+2))`
-/

namespace A147252.P5361095941024098449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147250 (Int.tmod (A225551 (n + 3)) (n + 2 : ℤ)).toNat

end

end A147252.P5361095941024098449

/-! ## A147252.P13588147959291784230

`A102800(A147402(n+1))`
-/

namespace A147252.P13588147959291784230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A147402 (n + 1)).toNat

end

end A147252.P13588147959291784230

/-! ## A147252.P8169853144592200841

`A118766(A147449(n+1))`
-/

namespace A147252.P8169853144592200841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A147449 (n + 1)).toNat

end

end A147252.P8169853144592200841

/-! ## A147252.P9138826172838091689

`A132197(A147190(n+1))`
-/

namespace A147252.P9138826172838091689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132197 (A147190 (n + 1)).toNat

end

end A147252.P9138826172838091689

/-! ## A147252.P18330420284033911508

`A132197(A147433(n+1))`
-/

namespace A147252.P18330420284033911508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132197 (A147433 (n + 1)).toNat

end

end A147252.P18330420284033911508

/-!
# A147253: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147253, there is no canonical definition to state claims against.
-/

/-! ## A147253.P10490543960534393673

`A226672(A110367(n+2))`
-/

namespace A147253.P10490543960534393673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226672 (A110367 (n + 2)).toNat

end

end A147253.P10490543960534393673

/-! ## A147253.P17833737159245892972

`A305925(C(xor(2, n), A326465(n+1)))`
-/

namespace A147253.P17833737159245892972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (Nat.choose (Nat.xor 2 n) (A326465 (n + 1)).toNat)

end

end A147253.P17833737159245892972

/-! ## A147253.P9765170626613095155

`A006530(A001630(n)^A326450(n))`
-/

namespace A147253.P9765170626613095155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001630 n : ℚ) ^ (A326450 n : ℤ))).toNat

end

end A147253.P9765170626613095155

/-! ## A147253.P11330546553944980074

`A325863(A325863(n+3)%A325859(n))`
-/

namespace A147253.P11330546553944980074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (Int.tmod (A325863 (n + 3)) (A325859 n)).toNat

end

end A147253.P11330546553944980074

/-! ## A147253.P13996106955621535418

`C(A208246(A002537(n)), A208246(n+1))`
-/

namespace A147253.P13996106955621535418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A208246 (A002537 n).toNat).toNat (A208246 (n + 1)).toNat

end

end A147253.P13996106955621535418

/-!
# A147254: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 11100-00100-00111 pattern in any orientation.

The programs for A147254, there is no canonical definition to state claims against.
-/

/-! ## A147254.P12166078134201128552

`A146056(lcm(A146067(n+1), A146071(n+2)))`
-/

namespace A147254.P12166078134201128552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146056 (Int.lcm (A146067 (n + 1)) (A146071 (n + 2)))

end

end A147254.P12166078134201128552

/-!
# A147255: Number of n X n binary arrays with all ones connected only in a 0001-1101-0111 pattern in any orientation.

The programs for A147255, there is no canonical definition to state claims against.
-/

/-! ## A147255.P505693416543978927

`A339557(A283174(n))`
-/

namespace A147255.P505693416543978927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339557 (A283174 n).toNat

end

end A147255.P505693416543978927

/-! ## A147255.P14274321968539595741

`A126168(A200674(n)+2)`
-/

namespace A147255.P14274321968539595741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A200674 n + 2).toNat

end

end A147255.P14274321968539595741

/-!
# A147257: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0001-1101-0111 pattern in any orientation.

The programs for A147257, there is no canonical definition to state claims against.
-/

/-! ## A147257.P2110629186996937334

`or(1, A065714(A000136(n+1)))`
-/

namespace A147257.P2110629186996937334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065714 (A000136 (n + 1)).toNat)

end

end A147257.P2110629186996937334

/-! ## A147257.P17355145125413791381

`or(A069859(A094970(n)), A146850(n+1))`
-/

namespace A147257.P17355145125413791381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069859 (A094970 n).toNat) (A146850 (n + 1))

end

end A147257.P17355145125413791381

/-! ## A147257.P10525627269278653132

`A146850(n+1)+A056170(A146854(n+2))`
-/

namespace A147257.P10525627269278653132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146850 (n + 1) + A056170 (A146854 (n + 2)).toNat

end

end A147257.P10525627269278653132

/-! ## A147257.P13273958884062923775

`A146645(n+1)-A278478(A146619(n+1))`
-/

namespace A147257.P13273958884062923775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146645 (n + 1) - A278478 (A146619 (n + 1)).toNat

end

end A147257.P13273958884062923775

/-! ## A147257.P16654161234651380771

`A333755(A146829(n+2))+A146850(n+1)`
-/

namespace A147257.P16654161234651380771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A146829 (n + 2)).toNat + A146850 (n + 1)

end

end A147257.P16654161234651380771

/-!
# A147258: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0001-1101-0111 pattern in any orientation.

The programs for A147258, there is no canonical definition to state claims against.
-/

/-! ## A147258.P15784099892725410350

`A294748(A146417(n+1))`
-/

namespace A147258.P15784099892725410350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A146417 (n + 1)).toNat

end

end A147258.P15784099892725410350

/-! ## A147258.P13507334406665829191

`A146718(n+1)-A343746(A010048(n))`
-/

namespace A147258.P13507334406665829191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146718 (n + 1) - A343746 (A010048 n).toNat

end

end A147258.P13507334406665829191

/-! ## A147258.P9916321407234081169

`A146718(n+1)-A328599(A131361(n))`
-/

namespace A147258.P9916321407234081169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146718 (n + 1) - A328599 (A131361 n).toNat

end

end A147258.P9916321407234081169

/-! ## A147258.P957472587490089171

`A146718(n+1)-A309711(A309711(n))`
-/

namespace A147258.P957472587490089171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146718 (n + 1) - A309711 (A309711 n).toNat

end

end A147258.P957472587490089171

/-! ## A147258.P6091415552758392977

`A146646(n+1)-A001629(A146647(n+1))`
-/

namespace A147258.P6091415552758392977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146646 (n + 1) - A001629 (A146647 (n + 1)).toNat

end

end A147258.P6091415552758392977

/-!
# A147259: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0001-1101-0111 pattern in any orientation.

The programs for A147259, there is no canonical definition to state claims against.
-/

/-! ## A147259.P15027934646465389379

`A088177(∏[∏[A170824(n+1)]])`
-/

namespace A147259.P15027934646465389379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147259.P15027934646465389379

/-! ## A147259.P15959326280672303798

`or(A146845(n+1), A268115(A144484(n)))`
-/

namespace A147259.P15959326280672303798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146845 (n + 1)) (A268115 (A144484 n).toNat)

end

end A147259.P15959326280672303798

/-! ## A147259.P3401271643329452778

`A146648(n+1)-A287086(A146633(n+1))`
-/

namespace A147259.P3401271643329452778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146648 (n + 1) - A287086 (A146633 (n + 1)).toNat

end

end A147259.P3401271643329452778

/-! ## A147259.P13667432103798401770

`A060775(A146616(n+1)*A146648(n+1))`
-/

namespace A147259.P13667432103798401770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A146616 (n + 1) * A146648 (n + 1)).toNat

end

end A147259.P13667432103798401770

/-! ## A147259.P17669990239534103797

`A060775(A146640(n+1)*A146648(n+1))`
-/

namespace A147259.P17669990239534103797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A146640 (n + 1) * A146648 (n + 1)).toNat

end

end A147259.P17669990239534103797

/-!
# A147260: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0001-1101-0111 pattern in any orientation.

The programs for A147260, there is no canonical definition to state claims against.
-/

/-! ## A147260.P9379173876432559543

`or(1, A126205(A027041(n)))`
-/

namespace A147260.P9379173876432559543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126205 (A027041 n).toNat)

end

end A147260.P9379173876432559543

/-! ## A147260.P2178328663325362168

`or(1, A176744(A005043(n)))`
-/

namespace A147260.P2178328663325362168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A176744 (A005043 n).toNat)

end

end A147260.P2178328663325362168

/-! ## A147260.P18361028452405152128

`A162226(A007472(n)+n)`
-/

namespace A147260.P18361028452405152128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A007472 n + (n : ℤ)).toNat

end

end A147260.P18361028452405152128

/-!
# A147261: Number of n X n binary arrays with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147261, there is no canonical definition to state claims against.
-/

/-! ## A147261.P4344874521434636791

`A147263(2*(n+2))`
-/

namespace A147261.P4344874521434636791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147263 (2 * (n + 2))

end

end A147261.P4344874521434636791

/-! ## A147261.P2794805028379791914

`A147263(A005408(n+1))+A000038(n+2)`
-/

namespace A147261.P2794805028379791914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147263 (A005408 (n + 1)).toNat + A000038 (n + 2)

end

end A147261.P2794805028379791914

/-! ## A147261.P13581560673889870264

`and(-1, A147263(A187686(n+1)))`
-/

namespace A147261.P13581560673889870264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A147263 (A187686 (n + 1)).toNat)

end

end A147261.P13581560673889870264

/-! ## A147261.P13343026550465423835

`lcm(A147263(n+1), A147263(A187686(n+1)))`
-/

namespace A147261.P13343026550465423835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A147263 (n + 1)) (A147263 (A187686 (n + 1)).toNat)

end

end A147261.P13343026550465423835

/-!
# A147262: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147262, there is no canonical definition to state claims against.
-/

/-! ## A147262.P123338867456595496

`A174905(A029494(n+1)^A326443(n))`
-/

namespace A147262.P123338867456595496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (SequenceMachineLib.roundAway ((A029494 (n + 1) : ℚ) ^ (A326443 n : ℤ))).toNat

end

end A147262.P123338867456595496

/-! ## A147262.P10754772749015692539

`A270362(A122931(n+1)^A326451(n))`
-/

namespace A147262.P10754772749015692539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (SequenceMachineLib.roundAway ((A122931 (n + 1) : ℚ) ^ (A326451 n : ℤ))).toNat

end

end A147262.P10754772749015692539

/-! ## A147262.P10036489385582719572

`A270362(A122931(n+1)*A326451(n)+1)`
-/

namespace A147262.P10036489385582719572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A122931 (n + 1) * A326451 n + 1).toNat

end

end A147262.P10036489385582719572

/-! ## A147262.P5618684881115492943

`A270362(A000045(2*(n+1))^A079684(n))`
-/

namespace A147262.P5618684881115492943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (SequenceMachineLib.roundAway ((A000045 (2 * (n + 1)) : ℚ) ^ (A079684 n : ℤ))).toNat

end

end A147262.P5618684881115492943

/-!
# A147263: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147263, there is no canonical definition to state claims against.
-/

/-! ## A147263.P2953716535842861282

`A005843(A147109(n+1))-A147125(n+1)`
-/

namespace A147263.P2953716535842861282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A147109 (n + 1)).toNat - A147125 (n + 1)

end

end A147263.P2953716535842861282

/-! ## A147263.P17929277782678743969

`A005843(A147117(n+1))-A147125(n+1)`
-/

namespace A147263.P17929277782678743969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A147117 (n + 1)).toNat - A147125 (n + 1)

end

end A147263.P17929277782678743969

/-!
# A147264: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147264, there is no canonical definition to state claims against.
-/

/-! ## A147264.P4964935005865187815

`A147266(2*(n+2))`
-/

namespace A147264.P4964935005865187815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147266 (2 * (n + 2))

end

end A147264.P4964935005865187815

/-! ## A147264.P16111995364901681990

`or(1, A147266(A111305(n+1)))`
-/

namespace A147264.P16111995364901681990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147266 (A111305 (n + 1)).toNat)

end

end A147264.P16111995364901681990

/-! ## A147264.P5858139200988842421

`or(1, A147266(A144396(n+1)))`
-/

namespace A147264.P5858139200988842421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147266 (A144396 (n + 1)).toNat)

end

end A147264.P5858139200988842421

/-! ## A147264.P4737538741362010222

`or(1, A147266(A186289(n+1)))`
-/

namespace A147264.P4737538741362010222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147266 (A186289 (n + 1)).toNat)

end

end A147264.P4737538741362010222

/-! ## A147264.P12450021850108687378

`or(1, A147266(A186291(n+1)))`
-/

namespace A147264.P12450021850108687378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147266 (A186291 (n + 1)).toNat)

end

end A147264.P12450021850108687378

/-!
# A147266: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147266, there is no canonical definition to state claims against.
-/

/-! ## A147266.P10400016823112512622

`A072154(A175427(A147252(n+1)))`
-/

namespace A147266.P10400016823112512622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A175427 (A147252 (n + 1)).toNat).toNat

end

end A147266.P10400016823112512622

/-!
# A147267: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147267, there is no canonical definition to state claims against.
-/

/-! ## A147267.P8879879596051701575

`A094604(C(floor((n²-n)/11), 3))`
-/

namespace A147267.P8879879596051701575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 (Nat.choose ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋.toNat 3)

end

end A147267.P8879879596051701575

/-! ## A147267.P13423610293237800005

`A354742(A146927(n+1))`
-/

namespace A147267.P13423610293237800005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A146927 (n + 1)).toNat

end

end A147267.P13423610293237800005

/-! ## A147267.P10342271100604892030

`A237270(n^A309897(n))`
-/

namespace A147267.P10342271100604892030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A309897 n : ℤ))).toNat

end

end A147267.P10342271100604892030

/-! ## A147267.P5754329585113858048

`A160121(∏{d}[A239116(n), #])`
-/

namespace A147267.P5754329585113858048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A147267.P5754329585113858048

/-! ## A147267.P4810298124307646169

`A220657(Δ[A007496(n+1)])`
-/

namespace A147267.P4810298124307646169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 (f1 (n + 1) - f1 n).toNat

end

end A147267.P4810298124307646169

/-!
# A147268: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1100-0111-0001 pattern in any orientation.

The programs for A147268, there is no canonical definition to state claims against.
-/

/-! ## A147268.P16988549522956973820

`A231729(A056817(n+1))`
-/

namespace A147268.P16988549522956973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231729 (A056817 (n + 1)).toNat

end

end A147268.P16988549522956973820

/-! ## A147268.P876020005582762013

`A346146(A321099(n+1))`
-/

namespace A147268.P876020005582762013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346146 (A321099 (n + 1)).toNat

end

end A147268.P876020005582762013

/-! ## A147268.P9020200204426142896

`A178334(A014623(n)+2)`
-/

namespace A147268.P9020200204426142896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A014623 n + 2).toNat

end

end A147268.P9020200204426142896

/-! ## A147268.P16314616145170557966

`A333265(A048078(n+2))`
-/

namespace A147268.P16314616145170557966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333265 (A048078 (n + 2)).toNat

end

end A147268.P16314616145170557966

/-!
# A147271: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111-0001 pattern in any orientation.

The programs for A147271, there is no canonical definition to state claims against.
-/

/-! ## A147271.P15463936973278207084

`A156724(C(n, 4)+1)`
-/

namespace A147271.P15463936973278207084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (Nat.choose n 4 + 1)

end

end A147271.P15463936973278207084

/-! ## A147271.P3872714977150323521

`A156724(or(1, C(n, 4)))`
-/

namespace A147271.P3872714977150323521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (Nat.lor 1 (Nat.choose n 4))

end

end A147271.P3872714977150323521

/-! ## A147271.P7486547605428680449

`A156724(A019499(n))`
-/

namespace A147271.P7486547605428680449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A019499 n).toNat

end

end A147271.P7486547605428680449

/-! ## A147271.P15688971631298038980

`A321902(A175954(n))`
-/

namespace A147271.P15688971631298038980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (A175954 n).toNat

end

end A147271.P15688971631298038980

/-! ## A147271.P715854828289528671

`A175107(A350249(n))`
-/

namespace A147271.P715854828289528671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175107 (A350249 n).toNat

end

end A147271.P715854828289528671

/-!
# A147272: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1111-0001 pattern in any orientation.

The programs for A147272, there is no canonical definition to state claims against.
-/

/-! ## A147272.P4427084609829211479

`A147127(n+1)-A001221(A147140(n+1))`
-/

namespace A147272.P4427084609829211479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147127 (n + 1) - A001221 (A147140 (n + 1)).toNat

end

end A147272.P4427084609829211479

/-! ## A147272.P15035803125415891816

`A046074(A238352(3*n+2)+A068044(n))`
-/

namespace A147272.P15035803125415891816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A238352 (3 * n + 2) + A068044 n).toNat

end

end A147272.P15035803125415891816

/-! ## A147272.P6164714729007666396

`A240535(A070939(3*n+4)*A271955(2*(n+1)))`
-/

namespace A147272.P6164714729007666396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240535 (A070939 (3 * n + 4) * A271955 (2 * (n + 1))).toNat

end

end A147272.P6164714729007666396

/-!
# A147273: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111-0001 pattern in any orientation.

The programs for A147273, there is no canonical definition to state claims against.
-/

/-! ## A147273.P243974523754628134

`A125161(A100136(n))`
-/

namespace A147273.P243974523754628134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125161 (A100136 n).toNat

end

end A147273.P243974523754628134

/-! ## A147273.P13147840504856037838

`A128562(A205482(n))`
-/

namespace A147273.P13147840504856037838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128562 (A205482 n).toNat

end

end A147273.P13147840504856037838

/-! ## A147273.P10019921979040252716

`A321902(A116467(n))`
-/

namespace A147273.P10019921979040252716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (A116467 n).toNat

end

end A147273.P10019921979040252716

/-! ## A147273.P4195086468764041267

`A125161(A383952(n))`
-/

namespace A147273.P4195086468764041267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125161 (A383952 n).toNat

end

end A147273.P4195086468764041267

/-! ## A147273.P16112771006304594369

`A358612(A323352(n))`
-/

namespace A147273.P16112771006304594369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358612 (A323352 n).toNat

end

end A147273.P16112771006304594369

/-!
# A147275: Number of n X n binary arrays with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147275, there is no canonical definition to state claims against.
-/

/-! ## A147275.P5536781824502197059

`A147277(2*(n+2))`
-/

namespace A147275.P5536781824502197059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147277 (2 * (n + 2))

end

end A147275.P5536781824502197059

/-! ## A147275.P7517979108930110534

`or(1, A147277(A144396(n+1)))`
-/

namespace A147275.P7517979108930110534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147277 (A144396 (n + 1)).toNat)

end

end A147275.P7517979108930110534

/-! ## A147275.P12628410612483290800

`A147277(A144396(n+1))+A025444(n)`
-/

namespace A147275.P12628410612483290800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147277 (A144396 (n + 1)).toNat + A025444 n

end

end A147275.P12628410612483290800

/-! ## A147275.P6926811659811735628

`A147277(A144396(n+1))/A291168(n)`
-/

namespace A147275.P6926811659811735628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147277 (A144396 (n + 1)).toNat : ℚ) / (A291168 n : ℚ)

end

end A147275.P6926811659811735628

/-! ## A147275.P2531389258071562672

`A147277(A144396(n+1))%A267081(n)`
-/

namespace A147275.P2531389258071562672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147277 (A144396 (n + 1)).toNat) (A267081 n)

end

end A147275.P2531389258071562672

/-!
# A147276: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147276, there is no canonical definition to state claims against.
-/

/-! ## A147276.P1040744721926691506

`A318737(n^A366753(n))`
-/

namespace A147276.P1040744721926691506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318737 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A366753 n : ℤ))).toNat

end

end A147276.P1040744721926691506

/-! ## A147276.P14940128721343594198

`A079523(A135056(n^A326445(n)))`
-/

namespace A147276.P14940128721343594198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (A135056 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A326445 n : ℤ))).toNat).toNat

end

end A147276.P14940128721343594198

/-! ## A147276.P2475722016252818133

`A318737(C(A318770(n), A318771(n)))`
-/

namespace A147276.P2475722016252818133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318737 (Nat.choose (A318770 n).toNat (A318771 n).toNat)

end

end A147276.P2475722016252818133

/-! ## A147276.P14603659362871876455

`A326518(A001592(n))^A335885(n+1)`
-/

namespace A147276.P14603659362871876455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326518 (A001592 n).toNat : ℚ) ^ (A335885 (n + 1) : ℤ)

end

end A147276.P14603659362871876455

/-!
# A147277: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147277, there is no canonical definition to state claims against.
-/

/-! ## A147277.P13942034434121347076

`A147275(A225551(n+3)%(n+2))`
-/

namespace A147277.P13942034434121347076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147275 (Int.tmod (A225551 (n + 3)) (n + 2 : ℤ)).toNat

end

end A147277.P13942034434121347076

/-! ## A147277.P45556755504708791

`and(A076304(A146471(n+3)), A146447(n+1))`
-/

namespace A147277.P45556755504708791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076304 (A146471 (n + 3)).toNat) (A146447 (n + 1))

end

end A147277.P45556755504708791

/-!
# A147278: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147278, there is no canonical definition to state claims against.
-/

/-! ## A147278.P7805144946967267318

`A147280(2*(n+2))`
-/

namespace A147278.P7805144946967267318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147280 (2 * (n + 2))

end

end A147278.P7805144946967267318

/-! ## A147278.P2430920860004274430

`or(1, A147280(A144396(n+1)))`
-/

namespace A147278.P2430920860004274430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147280 (A144396 (n + 1)).toNat)

end

end A147278.P2430920860004274430

/-! ## A147278.P16411274818840213227

`or(1, A147280(A325038(n+1)))`
-/

namespace A147278.P16411274818840213227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147280 (A325038 (n + 1)).toNat)

end

end A147278.P16411274818840213227

/-! ## A147278.P10993932274071830981

`A147280(A320056(n+1))+A054900(n)`
-/

namespace A147278.P10993932274071830981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147280 (A320056 (n + 1)).toNat + A054900 n

end

end A147278.P10993932274071830981

/-! ## A147278.P3879383727002277241

`A147280(A298868(n))/A147280(n+1)`
-/

namespace A147278.P3879383727002277241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147280 (A298868 n).toNat : ℚ) / (A147280 (n + 1) : ℚ)

end

end A147278.P3879383727002277241

/-!
# A147279: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147279, there is no canonical definition to state claims against.
-/

/-! ## A147279.P9082270650478937410

`A055643(A127193(n+1)*A287384(n))`
-/

namespace A147279.P9082270650478937410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A127193 (n + 1) * A287384 n).toNat

end

end A147279.P9082270650478937410

/-! ## A147279.P15612975353639689889

`A055643(A127193(n+1)^A287384(n))`
-/

namespace A147279.P15612975353639689889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A127193 (n + 1) : ℚ) ^ (A287384 n : ℤ))).toNat

end

end A147279.P15612975353639689889

/-! ## A147279.P9023685246354132460

`A055643(lcm(A127193(n+1), A287384(n)))`
-/

namespace A147279.P9023685246354132460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (Int.lcm (A127193 (n + 1)) (A287384 n))

end

end A147279.P9023685246354132460

/-! ## A147279.P16326065822162462525

`A055643(A127193(n+1)^A163551(n+1))`
-/

namespace A147279.P16326065822162462525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A127193 (n + 1) : ℚ) ^ (A163551 (n + 1) : ℤ))).toNat

end

end A147279.P16326065822162462525

/-!
# A147280: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147280, there is no canonical definition to state claims against.
-/

/-! ## A147280.P9470175384460581877

`A093413(A147190(n+1))`
-/

namespace A147280.P9470175384460581877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A147190 (n + 1)).toNat

end

end A147280.P9470175384460581877

/-! ## A147280.P17061019518082952107

`A121274(A147449(n+1))`
-/

namespace A147280.P17061019518082952107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121274 (A147449 (n + 1)).toNat

end

end A147280.P17061019518082952107

/-!
# A147281: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147281, there is no canonical definition to state claims against.
-/

/-! ## A147281.P11965197633420425756

`A292050(A276086(n*A185328(n)))`
-/

namespace A147281.P11965197633420425756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A276086 ((n : ℤ) * A185328 n).toNat).toNat

end

end A147281.P11965197633420425756

/-! ## A147281.P4051152321281832913

`A292050(C(A276086(n), A185328(n)))`
-/

namespace A147281.P4051152321281832913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (Nat.choose (A276086 n).toNat (A185328 n).toNat)

end

end A147281.P4051152321281832913

/-! ## A147281.P2085898013060179879

`A001065(A238795(n+1)-A287823(3*n+2))`
-/

namespace A147281.P2085898013060179879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A238795 (n + 1) - A287823 (3 * n + 2)).toNat

end

end A147281.P2085898013060179879

/-! ## A147281.P13260471293816286995

`A046074(A036052(n))`
-/

namespace A147281.P13260471293816286995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A036052 n).toNat

end

end A147281.P13260471293816286995

/-! ## A147281.P5956842315658432116

`A176480(A098507(n))`
-/

namespace A147281.P5956842315658432116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176480 (A098507 n).toNat

end

end A147281.P5956842315658432116

/-!
# A147282: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1100-0111-0001 pattern in any orientation.

The programs for A147282, there is no canonical definition to state claims against.
-/

/-! ## A147282.P6050799606680830410

`A364501(A186947(n))`
-/

namespace A147282.P6050799606680830410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364501 (A186947 n).toNat

end

end A147282.P6050799606680830410

/-! ## A147282.P980654442042159236

`A216091(A006721(n)²)`
-/

namespace A147282.P980654442042159236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216091 (A006721 n ^ 2).toNat

end

end A147282.P980654442042159236

/-! ## A147282.P9321675772502352369

`A033034(A271714(n!))`
-/

namespace A147282.P9321675772502352369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033034 (A271714 (Nat.factorial n)).toNat

end

end A147282.P9321675772502352369

/-! ## A147282.P2988632577940020056

`A099375(A308932(∑[n]))`
-/

namespace A147282.P2988632577940020056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A308932 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147282.P2988632577940020056

/-!
# A147283: Number of n X n binary arrays with all ones connected only in a 1100-0111-0001-0001 pattern in any orientation.

The programs for A147283, there is no canonical definition to state claims against.
-/

/-! ## A147283.P14741503896005733961

`A008620(A050344(n)²)`
-/

namespace A147283.P14741503896005733961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A050344 n ^ 2).toNat

end

end A147283.P14741503896005733961

/-! ## A147283.P8747971462205807260

`A008620(A050344(n)*A050344(n))`
-/

namespace A147283.P8747971462205807260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A050344 n * A050344 n).toNat

end

end A147283.P8747971462205807260

/-!
# A147285: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0001-0001 pattern in any orientation.

The programs for A147285, there is no canonical definition to state claims against.
-/

/-! ## A147285.P5538515726168656789

`A104746(A151375(n))`
-/

namespace A147285.P5538515726168656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104746 (A151375 n).toNat

end

end A147285.P5538515726168656789

/-! ## A147285.P14258065860498283874

`A342194(A032047(n+1))`
-/

namespace A147285.P14258065860498283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A032047 (n + 1)).toNat

end

end A147285.P14258065860498283874

/-! ## A147285.P1051842772980323782

`A283976(lcm(3, A146041(n+1)))`
-/

namespace A147285.P1051842772980323782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Int.lcm 3 (A146041 (n + 1)))

end

end A147285.P1051842772980323782

/-! ## A147285.P5915861258149074263

`A000267(∑{d}[A092199(n+1), #])`
-/

namespace A147285.P5915861258149074263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A147285.P5915861258149074263

/-! ## A147285.P3481120414286315235

`∑{d}[A200542(n+1), A198193(#)]`
-/

namespace A147285.P3481120414286315235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A198193 d

end

end A147285.P3481120414286315235

/-!
# A147286: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-0001-0001 pattern in any orientation.

The programs for A147286, there is no canonical definition to state claims against.
-/

/-! ## A147286.P14626999057742250760

`A101435(A059053(n+1)+1)`
-/

namespace A147286.P14626999057742250760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A059053 (n + 1) + 1).toNat

end

end A147286.P14626999057742250760

/-! ## A147286.P13538885699012968910

`A378785(A378784(n+1)^A308996(n))`
-/

namespace A147286.P13538885699012968910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378785 (SequenceMachineLib.roundAway ((A378784 (n + 1) : ℚ) ^ (A308996 n : ℤ))).toNat

end

end A147286.P13538885699012968910

/-!
# A147287: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0001-0001 pattern in any orientation.

The programs for A147287, there is no canonical definition to state claims against.
-/

/-! ## A147287.P5558219801944425507

`A108553(A036378(n)-A095062(n+1))`
-/

namespace A147287.P5558219801944425507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108553 (A036378 n - A095062 (n + 1)).toNat

end

end A147287.P5558219801944425507

/-! ## A147287.P3309066165528087742

`A108553(A036378(n)%A095062(n+1))`
-/

namespace A147287.P3309066165528087742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108553 (Int.tmod (A036378 n) (A095062 (n + 1))).toNat

end

end A147287.P3309066165528087742

/-! ## A147287.P15168385250700193860

`and(A147147(n+3), A297002(A147121(n+1)))`
-/

namespace A147287.P15168385250700193860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147147 (n + 3)) (A297002 (A147121 (n + 1)).toNat)

end

end A147287.P15168385250700193860

/-! ## A147287.P921663461419082542

`and(A147220(n+3), A289310(A218656(n+1)))`
-/

namespace A147287.P921663461419082542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147220 (n + 3)) (A289310 (A218656 (n + 1)).toNat)

end

end A147287.P921663461419082542

/-! ## A147287.P17392285317904775197

`∑[and(C(n+3, 3)², A018261(n+1))]`
-/

namespace A147287.P17392285317904775197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose (n + 3) 3 ^ 2 : ℤ) (A018261 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147287.P17392285317904775197

/-!
# A147288: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0111-0001-0001 pattern in any orientation.

The programs for A147288, there is no canonical definition to state claims against.
-/

/-! ## A147288.P18047161376758842860

`A162309(C(n, floor(n/2))+1)`
-/

namespace A147288.P18047161376758842860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A147288.P18047161376758842860

/-! ## A147288.P7442571711262037641

`A354764(Δ[ceil(3/2*a(n-1))]²)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A147288.P7442571711262037641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  ⌈(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354764 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A147288.P7442571711262037641

/-! ## A147288.P15457772945042463865

`A162309(A051920(n))`
-/

namespace A147288.P15457772945042463865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (A051920 n).toNat

end

end A147288.P15457772945042463865

/-! ## A147288.P807031943816239737

`A162309(A307543(n))`
-/

namespace A147288.P807031943816239737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (A307543 n).toNat

end

end A147288.P807031943816239737

/-!
# A147289: A multi-shifted and scaled Pascal triangle: t(n,m)=Binomial[n, m] + Sum[If[n >= 2*k,2*Binomial[n - 2*k, m - k], 0], {k, 1, Floor[n/2]}].

The programs for A147289, there is no canonical definition to state claims against.
-/

/-! ## A147289.P12440754334661665636

`2*A013580(n)-A007318(n)`
-/

namespace A147289.P12440754334661665636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013580 n - A007318 n

end

end A147289.P12440754334661665636

/-! ## A147289.P9528087856390127314

`2*A013580(n)-abs(A130595(n))`
-/

namespace A147289.P9528087856390127314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013580 n - |A130595 n|

end

end A147289.P9528087856390127314

/-! ## A147289.P9006633617576362360

`2*A013580(n)-Δ[A102363(n)]`
-/

namespace A147289.P9006633617576362360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013580 n - (f1 (n + 1) - f1 n)

end

end A147289.P9006633617576362360

/-! ## A147289.P12065761669770310990

`A004277(A013580(n))-A007318(n)`
-/

namespace A147289.P12065761669770310990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A013580 n).toNat - A007318 n

end

end A147289.P12065761669770310990

/-! ## A147289.P1031431000511769911

`A004273(A013580(n))-A014473(n)`
-/

namespace A147289.P1031431000511769911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A013580 n).toNat - A014473 n

end

end A147289.P1031431000511769911

/-! ## A147289.P15715415372816624932

`A005843(A013580(n))-abs(A130595(n))`
-/

namespace A147289.P15715415372816624932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013580 n).toNat - |A130595 n|

end

end A147289.P15715415372816624932

/-! ## A147289.P15621013911886068594

`A005843(A013580(n))-Δ[A102363(n)]`
-/

namespace A147289.P15621013911886068594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013580 n).toNat - (f1 (n + 1) - f1 n)

end

end A147289.P15621013911886068594

/-! ## A147289.P7141854019280608827

`2*A013580(n)-A004526(A028326(n))`
-/

namespace A147289.P7141854019280608827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013580 n - A004526 (A028326 n).toNat

end

end A147289.P7141854019280608827

/-! ## A147289.P12445832204225804753

`2*A065033(A054110(n))-A007318(n)`
-/

namespace A147289.P12445832204225804753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065033 (A054110 n).toNat - A007318 n

end

end A147289.P12445832204225804753

/-! ## A147289.P2592796389308839254

`A005843(A013580(n))-A004526(A028326(n))`
-/

namespace A147289.P2592796389308839254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013580 n).toNat - A004526 (A028326 n).toNat

end

end A147289.P2592796389308839254

/-!
# A147290: A Pascal triangle with an Eulerian-number shift: p(x,n)=If[n < 1, (x + 1)^(n + 1), (x + 1)^(n + 1) + (1 - x)^(n + 1)*PolyLog[ -n, x]].

The programs for A147290, there is no canonical definition to state claims against.
-/

/-! ## A147290.P14978795290817031487

`A007318(n)+A113607(n+1)%A046802(n)`
-/

namespace A147290.P14978795290817031487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A113607 (n + 1)) (A046802 n)

end

end A147290.P14978795290817031487

/-! ## A147290.P16040411332003911746

`A004525(A141591(n)+A134058(n))`
-/

namespace A147290.P16040411332003911746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A141591 n + A134058 n).toNat

end

end A147290.P16040411332003911746

/-! ## A147290.P12459691564766850574

`A065033(A141591(n)+A109128(n))`
-/

namespace A147290.P12459691564766850574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A141591 n + A109128 n).toNat

end

end A147290.P12459691564766850574

/-! ## A147290.P7777387510666429685

`A065033(A141591(n)+A132046(n))`
-/

namespace A147290.P7777387510666429685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A141591 n + A132046 n).toNat

end

end A147290.P7777387510666429685

/-! ## A147290.P10914862624800027265

`A082660(A022173(n))`
-/

namespace A147290.P10914862624800027265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A022173 n).toNat

end

end A147290.P10914862624800027265

/-!
# A147291: a(n) = Sum_{k=1..n^2-1} binomial(2k,k).

The programs for A147291, there is no canonical definition to state claims against.
-/

/-! ## A147291.P9358141139574920342

`A006134(n*(n+2))-1`
-/

namespace A147291.P9358141139574920342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n * (n + 2)) - 1

end

end A147291.P9358141139574920342

/-!
# A147292: Eigentriangle.

The programs for A147292, there is no canonical definition to state claims against.
-/

/-! ## A147292.P6757792360139976596

`A085516(A144155(n))-char[10]`
-/

namespace A147292.P6757792360139976596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A144155 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A147292.P6757792360139976596

/-! ## A147292.P1463827261449517785

`A078391(n)-A054908(A125177(n))`
-/

namespace A147292.P1463827261449517785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n - A054908 (A125177 n).toNat

end

end A147292.P1463827261449517785

/-! ## A147292.P2249003917645846536

`A078391(n)-A025466(A296531(n))`
-/

namespace A147292.P2249003917645846536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n - A025466 (A296531 n).toNat

end

end A147292.P2249003917645846536

/-! ## A147292.P17196502685769403224

`A078391(n)-A102683(A224960(n))`
-/

namespace A147292.P17196502685769403224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n - A102683 (A224960 n).toNat

end

end A147292.P17196502685769403224

/-! ## A147292.P16467113338149010616

`A078391(n)-A025466(A328923(n))`
-/

namespace A147292.P16467113338149010616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n - A025466 (A328923 n).toNat

end

end A147292.P16467113338149010616

/-!
# A147293: Triangle read by rows, A011782 convolved with A001519.

The programs for A147293, there is no canonical definition to state claims against.
-/

/-! ## A147293.P12843649492364772748

`A144224(n+1)*A155038(n+1)`
-/

namespace A147293.P12843649492364772748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144224 (n + 1) * A155038 (n + 1)

end

end A147293.P12843649492364772748

/-! ## A147293.P9501238849759254412

`abs(A122367(A002262(n))*A152568(n))`
-/

namespace A147293.P9501238849759254412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122367 (A002262 n).toNat * A152568 n|

end

end A147293.P9501238849759254412

/-! ## A147293.P12905354442941678789

`A062877(A059268(n))*A155038(n+1)`
-/

namespace A147293.P12905354442941678789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (A059268 n).toNat * A155038 (n + 1)

end

end A147293.P12905354442941678789

/-! ## A147293.P2983259071501399381

`A122367(A002262(n))*A155038(n+1)`
-/

namespace A147293.P2983259071501399381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A002262 n).toNat * A155038 (n + 1)

end

end A147293.P2983259071501399381

/-! ## A147293.P11700964941979187238

`A027935(A245300(n))*A155038(n+1)`
-/

namespace A147293.P11700964941979187238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A245300 n).toNat * A155038 (n + 1)

end

end A147293.P11700964941979187238

/-! ## A147293.P12462514622531563325

`A001519(A002260(n+1))*A155038(n+1)`
-/

namespace A147293.P12462514622531563325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002260 (n + 1)).toNat * A155038 (n + 1)

end

end A147293.P12462514622531563325

/-! ## A147293.P6266392684162614768

`A000045(A158405(n+1))*A155038(n+1)`
-/

namespace A147293.P6266392684162614768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1)).toNat * A155038 (n + 1)

end

end A147293.P6266392684162614768

/-! ## A147293.P16450899185604772128

`A000010(A130321(n))*A122367(A002262(n))`
-/

namespace A147293.P16450899185604772128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A122367 (A002262 n).toNat

end

end A147293.P16450899185604772128

/-! ## A147293.P3483983868990102409

`A000010(A130321(n))*A027935(A245300(n))`
-/

namespace A147293.P3483983868990102409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A027935 (A245300 n).toNat

end

end A147293.P3483983868990102409

/-! ## A147293.P292459233560543476

`A000045(A158405(n+1))*A011782(A025581(n))`
-/

namespace A147293.P292459233560543476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1)).toNat * A011782 (A025581 n).toNat

end

end A147293.P292459233560543476

/-!
# A147294: Eigentriangle, row sums = A125275.

The programs for A147294, there is no canonical definition to state claims against.
-/

/-! ## A147294.P13870530547810554017

`A039599(n)*A125275(A002262(n))`
-/

namespace A147294.P13870530547810554017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A125275 (A002262 n).toNat

end

end A147294.P13870530547810554017

/-! ## A147294.P13379564301323375749

`A050165(A061579(n))*A125275(A002262(n))`
-/

namespace A147294.P13379564301323375749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A061579 n).toNat * A125275 (A002262 n).toNat

end

end A147294.P13379564301323375749

/-! ## A147294.P15669554527204109708

`A050165(A061579(n))*A125275(A025668(n+1))`
-/

namespace A147294.P15669554527204109708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A061579 n).toNat * A125275 (A025668 (n + 1)).toNat

end

end A147294.P15669554527204109708

/-! ## A147294.P7282579389305162811

`A050165(A038722(n+2))*A125275(A002262(n))`
-/

namespace A147294.P7282579389305162811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A038722 (n + 2)).toNat * A125275 (A002262 n).toNat

end

end A147294.P7282579389305162811

/-! ## A147294.P6348257796882709642

`A113313(A292565(n+1))*A125275(A025668(n+1))`
-/

namespace A147294.P6348257796882709642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (A292565 (n + 1)).toNat * A125275 (A025668 (n + 1)).toNat

end

end A147294.P6348257796882709642

/-!
# A147295: Pascal triangle shifted MacMahon numbers: p(x,n)=If[n < 2, -(-2)^n*(x - 1)^(n + 1)*LerchPhi[x, -n, 1/2], 2*x*(x + 1)^(n - 2) - (-2)^n*(x - 1)^(n + 1)*LerchPhi[x, -n, 1/2]].

The programs for A147295, there is no canonical definition to state claims against.
-/

/-! ## A147295.P16049489772025791

`A060187(n+1)+A028275(n)-A007318(n)`
-/

namespace A147295.P16049489772025791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A028275 n - A007318 n)

end

end A147295.P16049489772025791

/-! ## A147295.P15833630717344520540

`A060187(n+1)+A001221(A257608(n))`
-/

namespace A147295.P15833630717344520540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A001221 (A257608 n).toNat

end

end A147295.P15833630717344520540

/-! ## A147295.P4978678456052626493

`A001221(A257608(n))+A257612(n)/A137688(n)`
-/

namespace A147295.P4978678456052626493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A257608 n).toNat : ℚ) + (A257612 n : ℚ) / (A137688 n : ℚ)

end

end A147295.P4978678456052626493

/-! ## A147295.P7664040018826370449

`A001221(A257608(n))+(A154337(n)+A154334(n))/2`
-/

namespace A147295.P7664040018826370449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A257608 n).toNat : ℚ) + (A154337 n + A154334 n : ℚ) / 2

end

end A147295.P7664040018826370449

/-! ## A147295.P2209255001311899904

`A001221(A257608(n))+2*A168523(n)-A168524(n)`
-/

namespace A147295.P2209255001311899904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257608 n).toNat + (2 * A168523 n - A168524 n)

end

end A147295.P2209255001311899904

/-!
# A147296: a(n) = n*(9*n+2).

The programs for A147296, the canonical program `A147296.P3605709138452781436` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147296 has offset 0).

The definition of A147296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n+2)` (program `A147296.P3605709138452781436`, by `A147296.P3605709138452781436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147296.P3605709138452781436

`n*(9*n+2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147296

/-- `n*(9*n+2)` -/
def P3605709138452781436.Spec : Prop :=
  ∀ n, (P3605709138452781436.a n : ℤ) = A147296 n

theorem P3605709138452781436.correct : P3605709138452781436.Spec := by
  intro n
  simp only [A147296]

end A147296

/-! ## A147296.P627492172413044934

`∑[a(n-1)+18]` with `a(0)=0, a(1)=11`
-/

namespace A147296.P627492172413044934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147296.P627492172413044934

namespace A147296

/-- `∑[a(n-1)+18]` -/
def P627492172413044934.Spec : Prop :=
  ∀ n, (P627492172413044934.a n : ℤ) = A147296 n

end A147296

/-! ## A147296.P13344907546128136995

`∑[ogf((11x+7x^2)/(1-2x+x^2))]`
-/

namespace A147296.P13344907546128136995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147296.P13344907546128136995

namespace A147296

/-- `∑[ogf((11x+7x^2)/(1-2x+x^2))]` -/
def P13344907546128136995.Spec : Prop :=
  ∀ n, P13344907546128136995.a n = A147296 n

end A147296

/-! ## A147296.P11624495440890998512

`7-∑[a(n-1)-18]` with `a(0)=7`
-/

namespace A147296.P11624495440890998512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147296.P11624495440890998512

namespace A147296

/-- `7-∑[a(n-1)-18]` -/
def P11624495440890998512.Spec : Prop :=
  ∀ n, P11624495440890998512.a n = A147296 n

end A147296

/-! ## A147296.P2432591787028371494

`11*n²-4*C(n, 2)`
-/

namespace A147296.P2432591787028371494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n ^ 2 : ℤ) - (4 * Nat.choose n 2 : ℤ)

end

end A147296.P2432591787028371494

namespace A147296

/-- `11*n²-4*C(n, 2)` -/
def P2432591787028371494.Spec : Prop :=
  ∀ n, P2432591787028371494.a n = A147296 n

theorem P2432591787028371494.correct : P2432591787028371494.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P2432591787028371494.a, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P12728211675741572806

`Δ[(6*n-1)*C(n, 2)]`
-/

namespace A147296.P12728211675741572806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147296.P12728211675741572806

namespace A147296

/-- `Δ[(6*n-1)*C(n, 2)]` -/
def P12728211675741572806.Spec : Prop :=
  ∀ n, P12728211675741572806.a n = A147296 n

theorem P12728211675741572806.correct : P12728211675741572806.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P12728211675741572806.f1, A147296.P12728211675741572806.a, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P13577806962786559962

`A045945(n)-n`
-/

namespace A147296.P13577806962786559962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n - (n : ℤ)

end

end A147296.P13577806962786559962

namespace A147296

/-- `A045945(n)-n` -/
def P13577806962786559962.Spec : Prop :=
  ∀ n, P13577806962786559962.a n = A147296 n

theorem P13577806962786559962.correct : P13577806962786559962.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P13577806962786559962.a, A147296.P3605709138452781436.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P5293939835385249538

`∑[A019557(n)-1]`
-/

namespace A147296.P5293939835385249538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147296.P5293939835385249538

namespace A147296

/-- `∑[A019557(n)-1]` -/
def P5293939835385249538.Spec : Prop :=
  ∀ n, P5293939835385249538.a n = A147296 n

end A147296

/-! ## A147296.P17050514109031406990

`A033585(n)+n²`
-/

namespace A147296.P17050514109031406990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + (n ^ 2 : ℤ)

end

end A147296.P17050514109031406990

namespace A147296

/-- `A033585(n)+n²` -/
def P17050514109031406990.Spec : Prop :=
  ∀ n, P17050514109031406990.a n = A147296 n

theorem P17050514109031406990.correct : P17050514109031406990.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P17050514109031406990.a, A147296.P3605709138452781436.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P18410259547501157645

`A082040(n)-(n+1)`
-/

namespace A147296.P18410259547501157645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n - (n + 1 : ℤ)

end

end A147296.P18410259547501157645

namespace A147296

/-- `A082040(n)-(n+1)` -/
def P18410259547501157645.Spec : Prop :=
  ∀ n, P18410259547501157645.a n = A147296 n

theorem P18410259547501157645.correct : P18410259547501157645.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P18410259547501157645.a, A147296.P3605709138452781436.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P3020716490801394916

`A016766(n)+2*n`
-/

namespace A147296.P3020716490801394916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + (2 * n : ℤ)

end

end A147296.P3020716490801394916

namespace A147296

/-- `A016766(n)+2*n` -/
def P3020716490801394916.Spec : Prop :=
  ∀ n, P3020716490801394916.a n = A147296 n

theorem P3020716490801394916.correct : P3020716490801394916.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P3020716490801394916.a, A147296.P3605709138452781436.a, A016766, A016766.P3834823630241441293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P13894194201721591681

`2*A022267(n)+n`
-/

namespace A147296.P13894194201721591681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022267 n + (n : ℤ)

end

end A147296.P13894194201721591681

namespace A147296

/-- `2*A022267(n)+n` -/
def P13894194201721591681.Spec : Prop :=
  ∀ n, P13894194201721591681.a n = A147296 n

end A147296

/-! ## A147296.P324485331851747718

`2*A081266(n)-n`
-/

namespace A147296.P324485331851747718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081266 n - (n : ℤ)

end

end A147296.P324485331851747718

namespace A147296

/-- `2*A081266(n)-n` -/
def P324485331851747718.Spec : Prop :=
  ∀ n, P324485331851747718.a n = A147296 n

end A147296

/-! ## A147296.P5703217896710800241

`(A144314(n)+n)/2`
-/

namespace A147296.P5703217896710800241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144314 n + (n : ℤ) : ℚ) / 2

end

end A147296.P5703217896710800241

namespace A147296

/-- `(A144314(n)+n)/2` -/
def P5703217896710800241.Spec : Prop :=
  ∀ n, P5703217896710800241.a n = (A147296 n : ℚ)

theorem P5703217896710800241.correct : P5703217896710800241.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P5703217896710800241.a, A147296.P3605709138452781436.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P17353781449497664511

`A013656(n)+4*n`
-/

namespace A147296.P17353781449497664511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n + (4 * n : ℤ)

end

end A147296.P17353781449497664511

namespace A147296

/-- `A013656(n)+4*n` -/
def P17353781449497664511.Spec : Prop :=
  ∀ n, P17353781449497664511.a n = A147296 n

theorem P17353781449497664511.correct : P17353781449497664511.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P17353781449497664511.a, A147296.P3605709138452781436.a, A013656, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P839909077020733261

`A045946(n)/2-n`
-/

namespace A147296.P839909077020733261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 n : ℚ) / 2 - (n : ℚ)

end

end A147296.P839909077020733261

namespace A147296

/-- `A045946(n)/2-n` -/
def P839909077020733261.Spec : Prop :=
  ∀ n, P839909077020733261.a n = (A147296 n : ℚ)

theorem P839909077020733261.correct : P839909077020733261.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P839909077020733261.a, A147296.P3605709138452781436.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P7597322501037017587

`3*A049451(n)-n`
-/

namespace A147296.P7597322501037017587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049451 n - (n : ℤ)

end

end A147296.P7597322501037017587

namespace A147296

/-- `3*A049451(n)-n` -/
def P7597322501037017587.Spec : Prop :=
  ∀ n, P7597322501037017587.a n = A147296 n

theorem P7597322501037017587.correct : P7597322501037017587.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P7597322501037017587.a, A147296.P3605709138452781436.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P15326275173587174625

`n*A017197(n)-n`
-/

namespace A147296.P15326275173587174625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017197 n - (n : ℤ)

end

end A147296.P15326275173587174625

namespace A147296

/-- `n*A017197(n)-n` -/
def P15326275173587174625.Spec : Prop :=
  ∀ n, P15326275173587174625.a n = A147296 n

theorem P15326275173587174625.correct : P15326275173587174625.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P15326275173587174625.a, A147296.P3605709138452781436.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P5965646770360161596

`n²+A188135(n)-1`
-/

namespace A147296.P5965646770360161596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A188135 n - 1)

end

end A147296.P5965646770360161596

namespace A147296

/-- `n²+A188135(n)-1` -/
def P5965646770360161596.Spec : Prop :=
  ∀ n, P5965646770360161596.a n = A147296 n

theorem P5965646770360161596.correct : P5965646770360161596.Spec := by
  intro n
  simp only [A147296, Nat.add_sub_cancel, A147296.P5965646770360161596.a, A147296.P3605709138452781436.a, A188135, A188135.P13478576752506582860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147296

/-! ## A147296.P15943193065032801691

`C(A016813(n), 2)+n²`
-/

namespace A147296.P15943193065032801691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016813 n).toNat 2 + n ^ 2

end

end A147296.P15943193065032801691

namespace A147296

/-- `C(A016813(n), 2)+n²` -/
def P15943193065032801691.Spec : Prop :=
  ∀ n, (P15943193065032801691.a n : ℤ) = A147296 n

end A147296

/-!
# A147297: Primes of the form (2k)^2 + 3(2k + 1)^2.

The programs for A147297, the canonical program `A147297.P13953450478721727119` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147297 has offset 1).

The definition of A147297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147297.P13700338017808972736

`∩[A054554(2*(n+1)), A002383(n+2)]`
-/

namespace A147297.P13700338017808972736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147297.P13700338017808972736

namespace A147297

/-- `∩[A054554(2*(n+1)), A002383(n+2)]` -/
def P13700338017808972736.Spec : Prop :=
  ∀ n, (P13700338017808972736.a n : ℤ) = A147297 (n + 1)

end A147297

/-! ## A147297.P15588191634981272444

`∩[A054554(2*(n+1)), A059055(n+2)]`
-/

namespace A147297.P15588191634981272444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147297.P15588191634981272444

namespace A147297

/-- `∩[A054554(2*(n+1)), A059055(n+2)]` -/
def P15588191634981272444.Spec : Prop :=
  ∀ n, (P15588191634981272444.a n : ℤ) = A147297 (n + 1)

end A147297

/-! ## A147297.P16041642985721877189

`∩[A054554(2*(n+1)), A206864(n+2)]`
-/

namespace A147297.P16041642985721877189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147297.P16041642985721877189

namespace A147297

/-- `∩[A054554(2*(n+1)), A206864(n+2)]` -/
def P16041642985721877189.Spec : Prop :=
  ∀ n, (P16041642985721877189.a n : ℤ) = A147297 (n + 1)

end A147297

/-! ## A147297.P844573170979128936

`∩[A054554(2*(n+1)), A206946(n+2)]`
-/

namespace A147297.P844573170979128936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147297.P844573170979128936

namespace A147297

/-- `∩[A054554(2*(n+1)), A206946(n+2)]` -/
def P844573170979128936.Spec : Prop :=
  ∀ n, (P844573170979128936.a n : ℤ) = A147297 (n + 1)

end A147297

/-! ## A147297.P4652462146144799072

`∩[A054554(2*(n+1)), A346156(n+2)]`
-/

namespace A147297.P4652462146144799072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147297.P4652462146144799072

namespace A147297

/-- `∩[A054554(2*(n+1)), A346156(n+2)]` -/
def P4652462146144799072.Spec : Prop :=
  ∀ n, (P4652462146144799072.a n : ℤ) = A147297 (n + 1)

end A147297

/-! ## A147297.P13953450478721727119

`record[A108154(4*(n+1)+2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A147297

/-- `record[A108154(4*(n+1)+2)]` -/
def P13953450478721727119.Spec : Prop :=
  ∀ n, P13953450478721727119.a n = A147297 (n + 1)

theorem P13953450478721727119.correct : P13953450478721727119.Spec := by
  intro n
  simp only [A147297, Nat.add_sub_cancel]

end A147297

/-!
# A147298: Minimum of rad(m (n - m) n) for 0 < m < n, gcd(m,n) = 1, where rad(k) = A007947(k) = product of prime factors of k.

The programs for A147298, there is no canonical definition to state claims against.
-/

/-! ## A147298.P7841878719054608144

`A007947((n+2)*A392257(n+2))`
-/

namespace A147298.P7841878719054608144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 2 : ℤ) * A392257 (n + 2)).toNat

end

end A147298.P7841878719054608144

/-! ## A147298.P15211836283746818187

`A015052(A078615(n+2)*A199343(n))`
-/

namespace A147298.P15211836283746818187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A078615 (n + 2) * A199343 n).toNat

end

end A147298.P15211836283746818187

/-! ## A147298.P7949966778695099413

`∏{p}[A028310(A078615(n+2)*A199343(n)), #]`
-/

namespace A147298.P7949966778695099413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A078615 (n + 2) * A199343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A147298.P7949966778695099413

/-! ## A147298.P202530613791435668

`A007947(A007947(2*(n+2))*A223081(n+1))`
-/

namespace A147298.P202530613791435668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (2 * (n + 2)) * A223081 (n + 1)).toNat

end

end A147298.P202530613791435668

/-! ## A147298.P15861381283541620785

`∏{p}[A033996(A029970(n+2)), #]`
-/

namespace A147298.P15861381283541620785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A029970 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A147298.P15861381283541620785

