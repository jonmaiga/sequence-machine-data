import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A148100: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148100, there is no canonical definition to state claims against.
-/

/-! ## A148100.P5570979383711325006

`A005070(A001710(n))+A000085(n)`
-/

namespace A148100.P5570979383711325006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A001710 n).toNat + A000085 n

end

end A148100.P5570979383711325006

/-! ## A148100.P17767432503509854038

`A070204(A088906(n))+A000085(n)`
-/

namespace A148100.P17767432503509854038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (A088906 n).toNat + A000085 n

end

end A148100.P17767432503509854038

/-! ## A148100.P1969114176646327371

`A004489(A291113(n))+A000085(n)`
-/

namespace A148100.P1969114176646327371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A291113 n).toNat + A000085 n

end

end A148100.P1969114176646327371

/-! ## A148100.P11620599754137233978

`A002863(A325553(n))+A000085(n)`
-/

namespace A148100.P11620599754137233978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (A325553 n).toNat + A000085 n

end

end A148100.P11620599754137233978

/-!
# A148101: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148101, there is no canonical definition to state claims against.
-/

/-! ## A148101.P15165000188556598417

`A086079(A049027(n))+A007579(n)`
-/

namespace A148101.P15165000188556598417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086079 (A049027 n).toNat + A007579 n

end

end A148101.P15165000188556598417

/-! ## A148101.P780249253648742891

`A085982(A192744(n))+A007579(n)`
-/

namespace A148101.P780249253648742891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A192744 n).toNat + A007579 n

end

end A148101.P780249253648742891

/-! ## A148101.P14343145470763172622

`A103589(A227681(n))+A007579(n)`
-/

namespace A148101.P14343145470763172622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 (A227681 n).toNat + A007579 n

end

end A148101.P14343145470763172622

/-! ## A148101.P14401067488635737912

`A359372(A144010(n))+A007579(n)`
-/

namespace A148101.P14401067488635737912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (A144010 n).toNat + A007579 n

end

end A148101.P14401067488635737912

/-!
# A148102: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148102, there is no canonical definition to state claims against.
-/

/-! ## A148102.P13862302609241969806

`A278496(A000112(n))`
-/

namespace A148102.P13862302609241969806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278496 (A000112 n).toNat

end

end A148102.P13862302609241969806

/-! ## A148102.P13478643350781175849

`A056155(A370808(n²))`
-/

namespace A148102.P13478643350781175849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (A370808 (n ^ 2)).toNat

end

end A148102.P13478643350781175849

/-! ## A148102.P508711935313077201

`A105518(A174395(n+3))+1`
-/

namespace A148102.P508711935313077201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A174395 (n + 3)).toNat + 1

end

end A148102.P508711935313077201

/-! ## A148102.P13111397929352510861

`A340763(A000984(n)+3)+1`
-/

namespace A148102.P13111397929352510861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A000984 n + 3).toNat + 1

end

end A148102.P13111397929352510861

/-!
# A148103: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148103, there is no canonical definition to state claims against.
-/

/-! ## A148103.P83727659141650498

`A195830(A112960(n+1))+A000085(n)`
-/

namespace A148103.P83727659141650498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195830 (A112960 (n + 1)).toNat + A000085 n

end

end A148103.P83727659141650498

/-! ## A148103.P5404082724418030871

`A281245(A349062(n+1))+A245898(n+1)`
-/

namespace A148103.P5404082724418030871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281245 (A349062 (n + 1)).toNat + A245898 (n + 1)

end

end A148103.P5404082724418030871

/-!
# A148104: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148104, there is no canonical definition to state claims against.
-/

/-! ## A148104.P12802239930521939941

`A180160(A000255(n))+A003239(n)`
-/

namespace A148104.P12802239930521939941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A000255 n).toNat + A003239 n

end

end A148104.P12802239930521939941

/-! ## A148104.P13146617758674210768

`A341024(A152090(n))+A003239(n)`
-/

namespace A148104.P13146617758674210768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A152090 n).toNat + 84) + A003239 n

end

end A148104.P13146617758674210768

/-!
# A148105: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148105, there is no canonical definition to state claims against.
-/

/-! ## A148105.P731757004228024547

`A156562(A135337(n))`
-/

namespace A148105.P731757004228024547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A135337 n).toNat

end

end A148105.P731757004228024547

/-! ## A148105.P1429817550907373415

`A226762(A149917(n))`
-/

namespace A148105.P1429817550907373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149917 n).toNat

end

end A148105.P1429817550907373415

/-! ## A148105.P14581707429477504482

`A226762(A149919(n))`
-/

namespace A148105.P14581707429477504482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149919 n).toNat

end

end A148105.P14581707429477504482

/-! ## A148105.P14778899785696194893

`A226762(A149922(n))`
-/

namespace A148105.P14778899785696194893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149922 n).toNat

end

end A148105.P14778899785696194893

/-!
# A148106: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148106, there is no canonical definition to state claims against.
-/

/-! ## A148106.P18375186291052452133

`A058032(A192502(n))`
-/

namespace A148106.P18375186291052452133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A192502 n).toNat

end

end A148106.P18375186291052452133

/-! ## A148106.P9524020100414718106

`A210357(A148307(n))`
-/

namespace A148106.P9524020100414718106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A148307 n).toNat

end

end A148106.P9524020100414718106

/-! ## A148106.P17399376707452896005

`A156562(A075205(n+1))`
-/

namespace A148106.P17399376707452896005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A075205 (n + 1)).toNat

end

end A148106.P17399376707452896005

/-! ## A148106.P1194276392875968328

`A001462(∑[n!]-A000120(n))`
-/

namespace A148106.P1194276392875968328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000120 n).toNat

end

end A148106.P1194276392875968328

/-!
# A148107: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148107, there is no canonical definition to state claims against.
-/

/-! ## A148107.P13749454952470293572

`A390395(A213091(n+1))`
-/

namespace A148107.P13749454952470293572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A213091 (n + 1)).toNat

end

end A148107.P13749454952470293572

/-! ## A148107.P15139735520080189851

`A340764(A096203(n+2))`
-/

namespace A148107.P15139735520080189851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A096203 (n + 2)).toNat

end

end A148107.P15139735520080189851

/-!
# A148108: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148108, there is no canonical definition to state claims against.
-/

/-! ## A148108.P6683735250310495525

`A023193(A365113(n)+A036721(n))`
-/

namespace A148108.P6683735250310495525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A365113 n + A036721 n).toNat

end

end A148108.P6683735250310495525

/-! ## A148108.P13077617495372541821

`A000009(n)*A000196(A165904(n))`
-/

namespace A148108.P13077617495372541821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000196 (A165904 n).toNat

end

end A148108.P13077617495372541821

/-! ## A148108.P17147972900044847987

`A030307((A304712(n+1)+1-A000005(n+1))*A116411(n))`
-/

namespace A148108.P17147972900044847987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 ((A304712 (n + 1) + (1 - A000005 (n + 1))) * A116411 n).toNat

end

end A148108.P17147972900044847987

/-!
# A148109: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148109, there is no canonical definition to state claims against.
-/

/-! ## A148109.P8351946393199817800

`A226762(A149921(n)+1)`
-/

namespace A148109.P8351946393199817800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149921 n + 1).toNat

end

end A148109.P8351946393199817800

/-! ## A148109.P10210576048633204101

`A245900(n+1)+A135549(n)`
-/

namespace A148109.P10210576048633204101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + A135549 n

end

end A148109.P10210576048633204101

/-! ## A148109.P7687270262444610269

`A245900(n+1)+char[A351950(2*n+3)]`
-/

namespace A148109.P7687270262444610269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A148109.P7687270262444610269

/-! ## A148109.P13163438309292791499

`A317741(round((n+3)²/12))+A245900(n+1)`
-/

namespace A148109.P13163438309292791499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat + A245900 (n + 1)

end

end A148109.P13163438309292791499

/-!
# A148110: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148110, there is no canonical definition to state claims against.
-/

/-! ## A148110.P624330329570739891

`A350969(A061922(n)+n)`
-/

namespace A148110.P624330329570739891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A061922 n + (n : ℤ)).toNat

end

end A148110.P624330329570739891

/-! ## A148110.P4390413173970897666

`A237769(A003266(n))+A000085(n)`
-/

namespace A148110.P4390413173970897666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237769 (A003266 n).toNat + A000085 n

end

end A148110.P4390413173970897666

/-! ## A148110.P16869786293760855098

`A100196(A217924(n)-A001591(n)²)`
-/

namespace A148110.P16869786293760855098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A217924 n - A001591 n ^ 2).toNat

end

end A148110.P16869786293760855098

/-! ## A148110.P13213043627368690952

`A247908(A000108(n))+A154285(n+1)`
-/

namespace A148110.P13213043627368690952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A000108 n).toNat + A154285 (n + 1)

end

end A148110.P13213043627368690952

/-!
# A148111: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148111, there is no canonical definition to state claims against.
-/

/-! ## A148111.P17867939772177165759

`A039708(A148337(n))`
-/

namespace A148111.P17867939772177165759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A148337 n).toNat

end

end A148111.P17867939772177165759

/-!
# A148112: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148112, there is no canonical definition to state claims against.
-/

/-! ## A148112.P2271756605524077984

`A253092(A253092(n)+A060165(n+1))`
-/

namespace A148112.P2271756605524077984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A253092 n + A060165 (n + 1)).toNat

end

end A148112.P2271756605524077984

/-! ## A148112.P17465608445529066138

`A108141(A148144(n))+A089861(A079680(3*n+4))`
-/

namespace A148112.P17465608445529066138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148144 n).toNat + A089861 (A079680 (3 * n + 4)).toNat

end

end A148112.P17465608445529066138

/-!
# A148113: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148113, there is no canonical definition to state claims against.
-/

/-! ## A148113.P8125646331799190265

`A332086(A026898(n+1))`
-/

namespace A148113.P8125646331799190265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A026898 (n + 1)).toNat

end

end A148113.P8125646331799190265

/-! ## A148113.P3795942739720988425

`A332086(A003101(n+1)+1)`
-/

namespace A148113.P3795942739720988425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A003101 (n + 1) + 1).toNat

end

end A148113.P3795942739720988425

/-! ## A148113.P14205319884879425428

`A366853(∑[∑[A030603(2*n+1)]])`
-/

namespace A148113.P14205319884879425428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148113.P14205319884879425428

/-!
# A148114: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148114, there is no canonical definition to state claims against.
-/

/-! ## A148114.P9026745985898446372

`A226190(A291189(n+1))+A096571(n+1)`
-/

namespace A148114.P9026745985898446372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A291189 (n + 1)).toNat + A096571 (n + 1)

end

end A148114.P9026745985898446372

/-!
# A148116: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148116, there is no canonical definition to state claims against.
-/

/-! ## A148116.P8623886545316283983

`A318186(A004111(n+2))-A309694(n)`
-/

namespace A148116.P8623886545316283983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A004111 (n + 2)).toNat - A309694 n

end

end A148116.P8623886545316283983

/-!
# A148117: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, 0)}.

The programs for A148117, there is no canonical definition to state claims against.
-/

/-! ## A148117.P7259909436182517110

`A109680(A151257(n))`
-/

namespace A148117.P7259909436182517110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A151257 n).toNat

end

end A148117.P7259909436182517110

/-! ## A148117.P16517981562222467555

`A151257(A004880(n+1))`
-/

namespace A148117.P16517981562222467555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151257 (A004880 (n + 1)).toNat

end

end A148117.P16517981562222467555

/-! ## A148117.P16881109921096687781

`A151257(A004891(n+1))`
-/

namespace A148117.P16881109921096687781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151257 (A004891 (n + 1)).toNat

end

end A148117.P16881109921096687781

/-! ## A148117.P9034032819996349374

`A151257(A004902(n+1))`
-/

namespace A148117.P9034032819996349374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151257 (A004902 (n + 1)).toNat

end

end A148117.P9034032819996349374

/-!
# A148118: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148118, there is no canonical definition to state claims against.
-/

/-! ## A148118.P16209148237704138084

`A004526(A148214(n)-A001006(n))+A001006(n)`
-/

namespace A148118.P16209148237704138084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148214 n - A001006 n).toNat + A001006 n

end

end A148118.P16209148237704138084

/-! ## A148118.P18337590160827947041

`A142150(A148214(n)-A001006(n))+A001006(n)`
-/

namespace A148118.P18337590160827947041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A148214 n - A001006 n).toNat + A001006 n

end

end A148118.P18337590160827947041

/-! ## A148118.P8275944652329966345

`A004526(A148214(n)+A001006(n))`
-/

namespace A148118.P8275944652329966345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148214 n + A001006 n).toNat

end

end A148118.P8275944652329966345

/-! ## A148118.P15115969066008224604

`A004526(A148215(n)+A001006(n))`
-/

namespace A148118.P15115969066008224604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148215 n + A001006 n).toNat

end

end A148118.P15115969066008224604

/-! ## A148118.P12623350594394712829

`A123108(A148214(n)+A001006(n))`
-/

namespace A148118.P12623350594394712829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A148214 n + A001006 n).toNat

end

end A148118.P12623350594394712829

/-!
# A148119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148119, there is no canonical definition to state claims against.
-/

/-! ## A148119.P8628039243823200529

`or(A148118(n), A185284(A000123(n)))`
-/

namespace A148119.P8628039243823200529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148118 n) (A185284 (A000123 n).toNat)

end

end A148119.P8628039243823200529

/-!
# A148120: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148120, there is no canonical definition to state claims against.
-/

/-! ## A148120.P2487951942636552210

`A148121(A073789(n))`
-/

namespace A148120.P2487951942636552210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148121 (A073789 n).toNat

end

end A148120.P2487951942636552210

/-! ## A148120.P257409874396469830

`A109680(A148121(n))`
-/

namespace A148120.P257409874396469830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148121 n).toNat

end

end A148120.P257409874396469830

/-! ## A148120.P6832494665522985567

`A148121(A171644(n))`
-/

namespace A148120.P6832494665522985567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148121 (A171644 n).toNat

end

end A148120.P6832494665522985567

/-! ## A148120.P8745015118919017014

`A148121(A004869(n+1))`
-/

namespace A148120.P8745015118919017014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148121 (A004869 (n + 1)).toNat

end

end A148120.P8745015118919017014

/-!
# A148122: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148122, there is no canonical definition to state claims against.
-/

/-! ## A148122.P16120979050904211546

`A148123(A002998(n))`
-/

namespace A148122.P16120979050904211546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148123 (A002998 n).toNat

end

end A148122.P16120979050904211546

/-! ## A148122.P9091066372736680825

`A148123(A039723(n))`
-/

namespace A148122.P9091066372736680825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148123 (A039723 n).toNat

end

end A148122.P9091066372736680825

/-! ## A148122.P18317647394905166622

`A148123(A046469(n))`
-/

namespace A148122.P18317647394905166622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148123 (A046469 n).toNat

end

end A148122.P18317647394905166622

/-! ## A148122.P17919361737039395082

`A148123(A051022(n))`
-/

namespace A148122.P17919361737039395082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148123 (A051022 n).toNat

end

end A148122.P17919361737039395082

/-! ## A148122.P13270846946374597109

`A148123(A056142(n))`
-/

namespace A148122.P13270846946374597109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148123 (A056142 n).toNat

end

end A148122.P13270846946374597109

/-!
# A148124: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 0, -1), (1, 0, 0)}.

The programs for A148124, there is no canonical definition to state claims against.
-/

/-! ## A148124.P16087782475754158024

`A023190(A148619(n))`
-/

namespace A148124.P16087782475754158024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148619 n).toNat

end

end A148124.P16087782475754158024

/-! ## A148124.P11147821575643541238

`A023193(2*A148619(n))`
-/

namespace A148124.P11147821575643541238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (2 * A148619 n).toNat

end

end A148124.P11147821575643541238

/-! ## A148124.P9116240028058377066

`Δ[A008651(A002714(n))]+1`
-/

namespace A148124.P9116240028058377066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A002714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A148124.P9116240028058377066

/-! ## A148124.P4031322391220767337

`xor(A074683(A248059(n+1)), A245898(n+1))`
-/

namespace A148124.P4031322391220767337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074683 (A248059 (n + 1)).toNat) (A245898 (n + 1))

end

end A148124.P4031322391220767337

/-!
# A148125: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, -1, 0)}.

The programs for A148125, there is no canonical definition to state claims against.
-/

/-! ## A148125.P434957871031103074

`A008611(A319789(n)+A151259(n))`
-/

namespace A148125.P434957871031103074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A319789 n + A151259 n).toNat

end

end A148125.P434957871031103074

/-! ## A148125.P5085290681477319318

`A233776(A351983(n))`
-/

namespace A148125.P5085290681477319318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233776 (A351983 n).toNat

end

end A148125.P5085290681477319318

/-! ## A148125.P12108678594096831657

`A267116(n!)+A025262(n+1)`
-/

namespace A148125.P12108678594096831657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (Nat.factorial n) + A025262 (n + 1)

end

end A148125.P12108678594096831657

/-! ## A148125.P17830671577964931710

`A185283((2*n+1)*ceil(n!/2))-A001221(n+1)`
-/

namespace A148125.P17830671577964931710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ((2 * n + 1 : ℤ) * ⌈(Nat.factorial n : ℚ) / 2⌉).toNat - A001221 (n + 1)

end

end A148125.P17830671577964931710

/-!
# A148126: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148126, there is no canonical definition to state claims against.
-/

/-! ## A148126.P1353683358877662253

`xor(log2(A344651(n)), A245898(n+1))`
-/

namespace A148126.P1353683358877662253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A344651 n : ℝ))) (A245898 (n + 1))

end

end A148126.P1353683358877662253

/-! ## A148126.P9380127805533489176

`xor(A117929(n+1), A245898(n+1))`
-/

namespace A148126.P9380127805533489176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117929 (n + 1)) (A245898 (n + 1))

end

end A148126.P9380127805533489176

/-! ## A148126.P9936277431559621949

`xor(A091247(xor(2, n)), A245898(n+1))`
-/

namespace A148126.P9936277431559621949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091247 (Nat.xor 2 n)) (A245898 (n + 1))

end

end A148126.P9936277431559621949

/-! ## A148126.P4321130399882234120

`xor(char[A000203(n+3)], A245898(n+1))`
-/

namespace A148126.P4321130399882234120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245898 (n + 1))

end

end A148126.P4321130399882234120

/-!
# A148127: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148127, there is no canonical definition to state claims against.
-/

/-! ## A148127.P5729424365846075991

`A008616(A318609(n+1)+A259153(3*n+2))`
-/

namespace A148127.P5729424365846075991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A318609 (n + 1) + A259153 (3 * n + 2)).toNat

end

end A148127.P5729424365846075991

/-! ## A148127.P14669779017748934679

`A000006(∏{d}[n, #]+n!)`
-/

namespace A148127.P14669779017748934679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∏ d ∈ Nat.divisors (f1 n), d + Nat.factorial n)

end

end A148127.P14669779017748934679

/-! ## A148127.P16789729377857419755

`or(∑[floor(n/π)], A245898(n+1))`
-/

namespace A148127.P16789729377857419755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A245898 (n + 1))

end

end A148127.P16789729377857419755

/-! ## A148127.P10479533560032451043

`A245898(n+1)+A239456(n+1)²`
-/

namespace A148127.P10479533560032451043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + A239456 (n + 1) ^ 2

end

end A148127.P10479533560032451043

/-!
# A148128: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148128, there is no canonical definition to state claims against.
-/

/-! ## A148128.P2769425134649259816

`A245898(n+1)+(1-A265601(n+1))²`
-/

namespace A148128.P2769425134649259816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + (1 - A265601 (n + 1)) ^ 2

end

end A148128.P2769425134649259816

/-! ## A148128.P7087712632430591945

`A056924(A000142(n))+A000988(n)`
-/

namespace A148128.P7087712632430591945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A000142 n).toNat + A000988 n

end

end A148128.P7087712632430591945

/-! ## A148128.P15646019861514232930

`A075864(n)+A059906(A157051(n))`
-/

namespace A148128.P15646019861514232930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075864 n + A059906 (A157051 n).toNat

end

end A148128.P15646019861514232930

/-! ## A148128.P1280750922370822122

`A025441(A276748(n))+A006251(n)`
-/

namespace A148128.P1280750922370822122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A276748 n).toNat + A006251 n

end

end A148128.P1280750922370822122

/-!
# A148129: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148129, there is no canonical definition to state claims against.
-/

/-! ## A148129.P15493324457174556825

`A371069(A307543(n))`
-/

namespace A148129.P15493324457174556825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371069 (A307543 n).toNat

end

end A148129.P15493324457174556825

/-! ## A148129.P16136585211622323826

`A371069(A189600(n+1))`
-/

namespace A148129.P16136585211622323826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371069 (A189600 (n + 1)).toNat

end

end A148129.P16136585211622323826

/-! ## A148129.P18309793220427833306

`A325132(A320691(n+1))`
-/

namespace A148129.P18309793220427833306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 (A320691 (n + 1)).toNat

end

end A148129.P18309793220427833306

/-! ## A148129.P15222839329744603299

`or(A001222(A042099(n)), A049401(n))`
-/

namespace A148129.P15222839329744603299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A042099 n).toNat) (A049401 n)

end

end A148129.P15222839329744603299

/-!
# A148130: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148130, there is no canonical definition to state claims against.
-/

/-! ## A148130.P12795228695451711284

`A157271(A151267(n)-floor(n/4))`
-/

namespace A148130.P12795228695451711284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A151267 n - ⌊(n : ℚ) / 4⌋).toNat

end

end A148130.P12795228695451711284

/-! ## A148130.P2087308025742901129

`A157271(xor(floor(n/4), A151267(n)))`
-/

namespace A148130.P2087308025742901129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.xor ⌊(n : ℚ) / 4⌋ (A151267 n)).toNat

end

end A148130.P2087308025742901129

/-! ## A148130.P8921543807366173809

`A023193(or(A149246(n), A161680(n)))`
-/

namespace A148130.P8921543807366173809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A149246 n) (A161680 n)).toNat

end

end A148130.P8921543807366173809

/-! ## A148130.P11923909998466561412

`A023193(or(A149247(n), A161680(n)))`
-/

namespace A148130.P11923909998466561412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A149247 n) (A161680 n)).toNat

end

end A148130.P11923909998466561412

/-!
# A148131: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148131, there is no canonical definition to state claims against.
-/

/-! ## A148131.P15869297909456729935

`A026819(A000720(n+1)*A144188(n)+1)`
-/

namespace A148131.P15869297909456729935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000720 (n + 1) * A144188 n + 1).toNat

end

end A148131.P15869297909456729935

/-! ## A148131.P6897969408505578944

`A264749(2*A071755(n))-A316355(A054175(n))`
-/

namespace A148131.P6897969408505578944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (2 * A071755 n).toNat - A316355 (A054175 n).toNat

end

end A148131.P6897969408505578944

/-!
# A148132: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148132, there is no canonical definition to state claims against.
-/

/-! ## A148132.P17635113352646519198

`A000006(A081600(∑[n!]))`
-/

namespace A148132.P17635113352646519198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A081600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148132.P17635113352646519198

/-! ## A148132.P10939447035460237959

`A247911(floor(sqrt(A228341(n+2))))`
-/

namespace A148132.P10939447035460237959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (Int.sqrt (A228341 (n + 2))).toNat

end

end A148132.P10939447035460237959

/-! ## A148132.P485601941755674025

`A245898(n+1)+∑[∑[A217227(n+1)]]`
-/

namespace A148132.P485601941755674025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148132.P485601941755674025

/-! ## A148132.P1190081893090399103

`A081603(A263688(n))+A049401(n)`
-/

namespace A148132.P1190081893090399103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A263688 n).toNat + A049401 n

end

end A148132.P1190081893090399103

/-!
# A148133: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148133, there is no canonical definition to state claims against.
-/

/-! ## A148133.P12168229751995632835

`A259178(A237770(n+1))`
-/

namespace A148133.P12168229751995632835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A237770 (n + 1)).toNat

end

end A148133.P12168229751995632835

/-! ## A148133.P15123479610714101779

`A254011(16*A351642(n))`
-/

namespace A148133.P15123479610714101779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (16 * A351642 n).toNat

end

end A148133.P15123479610714101779

/-! ## A148133.P7735774813579963530

`A036656(n)+A000006(n!)`
-/

namespace A148133.P7735774813579963530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n + A000006 (Nat.factorial n)

end

end A148133.P7735774813579963530

/-! ## A148133.P16975262463604936197

`A024417(A148858(n)+∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A148133.P16975262463604936197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148858 n + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat

end

end A148133.P16975262463604936197

/-!
# A148134: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148134, there is no canonical definition to state claims against.
-/

/-! ## A148134.P1117042793908561463

`A346632(A116406(n))+A127386(n)`
-/

namespace A148134.P1117042793908561463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A116406 n).toNat + A127386 n

end

end A148134.P1117042793908561463

/-! ## A148134.P14280405084075422187

`A024417(and(A148940(n), A148941(n)))`
-/

namespace A148134.P14280405084075422187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.land (A148940 n) (A148941 n)).toNat

end

end A148134.P14280405084075422187

/-! ## A148134.P11073834785083230944

`A359360(A115587(n+1))+A000085(n)`
-/

namespace A148134.P11073834785083230944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359360 (A115587 (n + 1)).toNat + A000085 n

end

end A148134.P11073834785083230944

/-! ## A148134.P7636914712051579347

`A265718(A305846(n+1))+A127386(n)`
-/

namespace A148134.P7636914712051579347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265718 (A305846 (n + 1)).toNat + A127386 n

end

end A148134.P7636914712051579347

/-!
# A148135: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148135, there is no canonical definition to state claims against.
-/

/-! ## A148135.P1803607208093341415

`A110266(A120010(n+2)+n)`
-/

namespace A148135.P1803607208093341415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A120010 (n + 2) + (n : ℤ)).toNat

end

end A148135.P1803607208093341415

/-! ## A148135.P1679828944881875017

`A349402(n+1)+A245900(n+1)`
-/

namespace A148135.P1679828944881875017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349402 (n + 1) + A245900 (n + 1)

end

end A148135.P1679828944881875017

/-! ## A148135.P16435884127034958123

`A085862(A000088(n))+A000085(n)`
-/

namespace A148135.P16435884127034958123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A000088 n).toNat + A000085 n

end

end A148135.P16435884127034958123

/-! ## A148135.P17180272154197247705

`A247908(A034742(n+1)+A000045(n))`
-/

namespace A148135.P17180272154197247705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A034742 (n + 1) + A000045 n).toNat

end

end A148135.P17180272154197247705

/-!
# A148136: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148136, there is no canonical definition to state claims against.
-/

/-! ## A148136.P8933985571402074911

`A156689(A148405(n))`
-/

namespace A148136.P8933985571402074911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148405 n).toNat

end

end A148136.P8933985571402074911

/-! ## A148136.P5028805849307552046

`A047790(n)+A008687(A150279(n))`
-/

namespace A148136.P5028805849307552046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047790 n + A008687 (A150279 n).toNat

end

end A148136.P5028805849307552046

/-! ## A148136.P17478361494760408081

`A151415(n)+A117479(A151406(n))-A026800(A000211(n))`
-/

namespace A148136.P17478361494760408081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151415 n + A117479 (A151406 n).toNat - A026800 (A000211 n).toNat

end

end A148136.P17478361494760408081

/-! ## A148136.P14415914899561300318

`A151415(n)-A057428(A060356(n))-A026800(A000211(n))`
-/

namespace A148136.P14415914899561300318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151415 n - A057428 (A060356 n).toNat - A026800 (A000211 n).toNat

end

end A148136.P14415914899561300318

/-!
# A148137: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148137, there is no canonical definition to state claims against.
-/

/-! ## A148137.P3040184023388422112

`A264749(A000079(n)*A177510(n))`
-/

namespace A148137.P3040184023388422112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A000079 n * A177510 n).toNat

end

end A148137.P3040184023388422112

/-! ## A148137.P15791177630787250520

`A340651(n)+A319763(A130091(n+1))`
-/

namespace A148137.P15791177630787250520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340651 n + A319763 (A130091 (n + 1)).toNat

end

end A148137.P15791177630787250520

/-! ## A148137.P4244978448619569304

`A363454(n+2)+A192323(A107648(n+1))`
-/

namespace A148137.P4244978448619569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363454 (n + 2) + A192323 (A107648 (n + 1)).toNat

end

end A148137.P4244978448619569304

/-!
# A148138: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148138, there is no canonical definition to state claims against.
-/

/-! ## A148138.P7470029553022797947

`A151415(n)+A117479(A151406(n))`
-/

namespace A148138.P7470029553022797947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151415 n + A117479 (A151406 n).toNat

end

end A148138.P7470029553022797947

/-! ## A148138.P15747004729513471315

`A151415(n)-A057428(A060356(n))`
-/

namespace A148138.P15747004729513471315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151415 n - A057428 (A060356 n).toNat

end

end A148138.P15747004729513471315

/-! ## A148138.P8331054008676845276

`A342513(A342514(2*n))-A342556(n+1)`
-/

namespace A148138.P8331054008676845276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (A342514 (2 * n)).toNat - A342556 (n + 1)

end

end A148138.P8331054008676845276

/-! ## A148138.P15693638110187901871

`A083382(or(A033496(n+1), A148354(n+2)))`
-/

namespace A148138.P15693638110187901871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (Int.lor (A033496 (n + 1)) (A148354 (n + 2))).toNat

end

end A148138.P15693638110187901871

/-!
# A148139: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148139, there is no canonical definition to state claims against.
-/

/-! ## A148139.P13186949609495412771

`A157271(A354734(n)+A007359(n))`
-/

namespace A148139.P13186949609495412771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A354734 n + A007359 n).toNat

end

end A148139.P13186949609495412771

/-! ## A148139.P3262401703169273641

`xor(A037800(A241843(n+1)), A148146(n))`
-/

namespace A148139.P3262401703169273641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 (A241843 (n + 1)).toNat) (A148146 n)

end

end A148139.P3262401703169273641

/-! ## A148139.P2697840864769953994

`A369201(n)+A026819(A000720(n+1)*A144188(n)+1)`
-/

namespace A148139.P2697840864769953994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369201 n + A026819 (A000720 (n + 1) * A144188 n + 1).toNat

end

end A148139.P2697840864769953994

/-!
# A148140: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148140, there is no canonical definition to state claims against.
-/

/-! ## A148140.P16396913911769617596

`A291934(A245900(n+1))`
-/

namespace A148140.P16396913911769617596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (A245900 (n + 1)).toNat

end

end A148140.P16396913911769617596

/-! ## A148140.P17487299406558282318

`A245900(n+1)+A224291(n+1)%3`
-/

namespace A148140.P17487299406558282318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + Int.tmod (A224291 (n + 1)) 3

end

end A148140.P17487299406558282318

/-! ## A148140.P9547439662760918423

`A083661(A007838(n))+A000085(n)`
-/

namespace A148140.P9547439662760918423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083661 (A007838 n).toNat + A000085 n

end

end A148140.P9547439662760918423

/-! ## A148140.P14450313741689531186

`A080907(A000085(n)*A284992(n))`
-/

namespace A148140.P14450313741689531186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A000085 n * A284992 n).toNat

end

end A148140.P14450313741689531186

/-!
# A148141: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, -1, 0)}.

The programs for A148141, there is no canonical definition to state claims against.
-/

/-! ## A148141.P52682456267831478

`A070868(A199874(n)+A008949(n))`
-/

namespace A148141.P52682456267831478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A199874 n + A008949 n).toNat

end

end A148141.P52682456267831478

/-! ## A148141.P4140129032114306990

`or(A001591(n), A100196(A217924(n)))`
-/

namespace A148141.P4140129032114306990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001591 n) (A100196 (A217924 n).toNat)

end

end A148141.P4140129032114306990

/-! ## A148141.P12637905654608135413

`A238098(A002013(n))+A032128(n+1)`
-/

namespace A148141.P12637905654608135413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A002013 n).toNat + A032128 (n + 1)

end

end A148141.P12637905654608135413

/-! ## A148141.P6508218086123069737

`A307989(n+1)+A081608(A186765(n))`
-/

namespace A148141.P6508218086123069737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) + A081608 (A186765 n).toNat

end

end A148141.P6508218086123069737

/-!
# A148142: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148142, there is no canonical definition to state claims against.
-/

/-! ## A148142.P1243599732379560500

`floor(sqrt(A076522(n!+1)))`
-/

namespace A148142.P1243599732379560500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A076522 (Nat.factorial n + 1))

end

end A148142.P1243599732379560500

/-! ## A148142.P9085311323765879207

`floor(sqrt(∑[A245900(n+1)²]))`
-/

namespace A148142.P9085311323765879207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148142.P9085311323765879207

/-! ## A148142.P9891745230038783576

`A247908(A182267(n))`
-/

namespace A148142.P9891745230038783576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A182267 n).toNat

end

end A148142.P9891745230038783576

/-! ## A148142.P7502289897880322715

`A070868(A391036(n))`
-/

namespace A148142.P7502289897880322715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A391036 n).toNat

end

end A148142.P7502289897880322715

/-!
# A148143: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148143, there is no canonical definition to state claims against.
-/

/-! ## A148143.P10266956531385358027

`floor(sqrt(A045395(n!)))`
-/

namespace A148143.P10266956531385358027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045395 (Nat.factorial n))

end

end A148143.P10266956531385358027

/-! ## A148143.P2758962953209039903

`A023193(A149878(n)-n)`
-/

namespace A148143.P2758962953209039903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149878 n - (n : ℤ)).toNat

end

end A148143.P2758962953209039903

/-! ## A148143.P12917046637181524715

`A009998(n)+A008651(A199109(n))`
-/

namespace A148143.P12917046637181524715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n + A008651 (A199109 n).toNat

end

end A148143.P12917046637181524715

/-! ## A148143.P625001428482620093

`A081315(xor(A175003(n+1), A377065(n)))`
-/

namespace A148143.P625001428482620093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (Int.xor (A175003 (n + 1)) (A377065 n)).toNat

end

end A148143.P625001428482620093

/-!
# A148144: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148144, there is no canonical definition to state claims against.
-/

/-! ## A148144.P7009341364006814993

`A183137(ceil(2^(n-2)+n))+1`
-/

namespace A148144.P7009341364006814993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183137 ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)⌉.toNat + 1

end

end A148144.P7009341364006814993

/-! ## A148144.P3458924596734638339

`A038569(A002051(n+1))`
-/

namespace A148144.P3458924596734638339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A002051 (n + 1)).toNat

end

end A148144.P3458924596734638339

/-! ## A148144.P17435598119565679738

`A001462(A303870(n+1))`
-/

namespace A148144.P17435598119565679738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A303870 (n + 1)).toNat

end

end A148144.P17435598119565679738

/-! ## A148144.P16560603018973448834

`A038568(A002051(n+1)+1)`
-/

namespace A148144.P16560603018973448834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A002051 (n + 1) + 1).toNat

end

end A148144.P16560603018973448834

/-!
# A148145: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148145, there is no canonical definition to state claims against.
-/

/-! ## A148145.P9310578567698433375

`A083382(A151279(n+1))`
-/

namespace A148145.P9310578567698433375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A151279 (n + 1)).toNat

end

end A148145.P9310578567698433375

/-! ## A148145.P1137728368264168904

`A094189(A293697(n)+A129000(n+1))`
-/

namespace A148145.P1137728368264168904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A293697 n + A129000 (n + 1)).toNat

end

end A148145.P1137728368264168904

/-! ## A148145.P9178327037185645131

`A391638(A391645(n+1))+A000085(n)`
-/

namespace A148145.P9178327037185645131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 (A391645 (n + 1)).toNat + A000085 n

end

end A148145.P9178327037185645131

/-! ## A148145.P4957456777851350130

`A148186(n)-A235046(A148171(n+2))`
-/

namespace A148145.P4957456777851350130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148186 n - A235046 (A148171 (n + 2)).toNat

end

end A148145.P4957456777851350130

/-!
# A148146: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148146, there is no canonical definition to state claims against.
-/

/-! ## A148146.P1648201152923921341

`A023193(A149319(n))-A025581(A130520(n))`
-/

namespace A148146.P1648201152923921341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149319 n).toNat - A025581 (A130520 n).toNat

end

end A148146.P1648201152923921341

/-! ## A148146.P10159217988989652716

`A023193(A149319(n))-A291437(A000045(n+2))`
-/

namespace A148146.P10159217988989652716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149319 n).toNat - A291437 (A000045 (n + 2)).toNat

end

end A148146.P10159217988989652716

/-! ## A148146.P9395029019347199654

`A023193(A149319(n))-A130520(A003987(3*n))`
-/

namespace A148146.P9395029019347199654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149319 n).toNat - A130520 (A003987 (3 * n)).toNat

end

end A148146.P9395029019347199654

/-!
# A148147: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148147, there is no canonical definition to state claims against.
-/

/-! ## A148147.P15606403501812854596

`A264749(A301279(n)+A000984(n))`
-/

namespace A148147.P15606403501812854596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A301279 n + A000984 n).toNat

end

end A148147.P15606403501812854596

/-! ## A148147.P15204720323275558246

`A157271(A316980(n))-A159914(n)`
-/

namespace A148147.P15204720323275558246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A316980 n).toNat - A159914 n

end

end A148147.P15204720323275558246

/-! ## A148147.P6147823186829886315

`A148190(n)-A211974(A274627(n))`
-/

namespace A148147.P6147823186829886315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148190 n - A211974 (A274627 n).toNat

end

end A148147.P6147823186829886315

/-!
# A148148: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148148, there is no canonical definition to state claims against.
-/

/-! ## A148148.P13069862129524492063

`A148156(A004880(n+1))-char[5]`
-/

namespace A148148.P13069862129524492063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148156 (A004880 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148148.P13069862129524492063

/-! ## A148148.P4091280206023520638

`A157271(A345955(n+1))+char[6]-char[5]`
-/

namespace A148148.P4091280206023520638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A345955 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148148.P4091280206023520638

/-!
# A148149: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148149, there is no canonical definition to state claims against.
-/

/-! ## A148149.P7073183689287583695

`A339861(A339837(n+1))+A339834(n)`
-/

namespace A148149.P7073183689287583695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339861 (A339837 (n + 1)).toNat + A339834 n

end

end A148149.P7073183689287583695

/-! ## A148149.P8364138618387033656

`A339861(A339848(n+3))+A339834(n)`
-/

namespace A148149.P8364138618387033656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339861 (A339848 (n + 3)).toNat + A339834 n

end

end A148149.P8364138618387033656

/-!
# A148150: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148150, there is no canonical definition to state claims against.
-/

/-! ## A148150.P15475209008608476961

`A209081(A032161(n+1))`
-/

namespace A148150.P15475209008608476961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A032161 (n + 1)).toNat

end

end A148150.P15475209008608476961

/-! ## A148150.P13724514030479723270

`A023193(A106269(n)+A028303(n))`
-/

namespace A148150.P13724514030479723270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A106269 n + A028303 n).toNat

end

end A148150.P13724514030479723270

/-! ## A148150.P6482360308582436751

`A023193(A328399(n)+A106269(n))`
-/

namespace A148150.P6482360308582436751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A328399 n + A106269 n).toNat

end

end A148150.P6482360308582436751

/-!
# A148151: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148151, there is no canonical definition to state claims against.
-/

/-! ## A148151.P5981334790519171021

`A225086(A000598(n+1))`
-/

namespace A148151.P5981334790519171021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A000598 (n + 1)).toNat

end

end A148151.P5981334790519171021

/-! ## A148151.P697009416480144811

`A225086(A036376(n+1))`
-/

namespace A148151.P697009416480144811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A036376 (n + 1)).toNat

end

end A148151.P697009416480144811

/-! ## A148151.P13332591827163105260

`floor(∑[A149250(A001222(5^n))]/(n+1))`
-/

namespace A148151.P13332591827163105260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149250 (A001222 (5 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A148151.P13332591827163105260

/-!
# A148152: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148152, there is no canonical definition to state claims against.
-/

/-! ## A148152.P7645700924318932008

`A023190(A359672(n))`
-/

namespace A148152.P7645700924318932008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A359672 n).toNat

end

end A148152.P7645700924318932008

/-! ## A148152.P14778659604714064286

`A008626(8*A030238(n))`
-/

namespace A148152.P14778659604714064286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (8 * A030238 n).toNat

end

end A148152.P14778659604714064286

/-! ## A148152.P10285426558972703070

`A008618(9*A030238(n))`
-/

namespace A148152.P10285426558972703070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (9 * A030238 n).toNat

end

end A148152.P10285426558972703070

/-! ## A148152.P5071297923087887197

`A157271(or(1, A030238(n)))`
-/

namespace A148152.P5071297923087887197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor 1 (A030238 n)).toNat

end

end A148152.P5071297923087887197

/-!
# A148153: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148153, there is no canonical definition to state claims against.
-/

/-! ## A148153.P6307401317723529426

`A226190(∑[A126120(2*n)]-a(n-1))` with `a(0)=1`
-/

namespace A148153.P6307401317723529426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)).toNat

end

end A148153.P6307401317723529426

/-! ## A148153.P10676718926107945190

`A194640(A005142(n)+A000108(n))`
-/

namespace A148153.P10676718926107945190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A005142 n + A000108 n).toNat

end

end A148153.P10676718926107945190

/-! ## A148153.P12485321021626929696

`A266193(n)+A248227(A000108(n))`
-/

namespace A148153.P12485321021626929696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 n + A248227 (A000108 n).toNat

end

end A148153.P12485321021626929696

/-! ## A148153.P12622832256378255884

`A248227(A266755(n)+A000108(n))`
-/

namespace A148153.P12622832256378255884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A266755 n + A000108 n).toNat

end

end A148153.P12622832256378255884

/-!
# A148154: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148154, there is no canonical definition to state claims against.
-/

/-! ## A148154.P14044385636230940418

`A157271(A345955(n+1))`
-/

namespace A148154.P14044385636230940418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A345955 (n + 1)).toNat

end

end A148154.P14044385636230940418

/-! ## A148154.P5958310272869733766

`A148156(n)-A353495(A233335(n))`
-/

namespace A148154.P5958310272869733766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148156 n - A353495 (A233335 n).toNat

end

end A148154.P5958310272869733766

/-! ## A148154.P16246361417656264459

`A248227(A369589(2*n+1)+A000108(n))`
-/

namespace A148154.P16246361417656264459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A369589 (2 * n + 1) + A000108 n).toNat

end

end A148154.P16246361417656264459

/-! ## A148154.P6056573679138732753

`A248227(A369589(2*n+1)+A028364(∑[n]))`
-/

namespace A148154.P6056573679138732753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A369589 (2 * n + 1) + A028364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148154.P6056573679138732753

/-!
# A148155: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148155, there is no canonical definition to state claims against.
-/

/-! ## A148155.P2299541295054283687

`A165190(5*A287967(n+1))`
-/

namespace A148155.P2299541295054283687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (5 * A287967 (n + 1)).toNat

end

end A148155.P2299541295054283687

/-! ## A148155.P1802903648800564404

`A119020(A032551(n+1))-∑{digits}[n, floor(#/5)]`
-/

namespace A148155.P1802903648800564404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119020 (A032551 (n + 1)).toNat - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum

end

end A148155.P1802903648800564404

/-! ## A148155.P13787736939736579710

`A148153(n)+A112765(A084643(n))`
-/

namespace A148155.P13787736939736579710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148153 n + A112765 (A084643 n).toNat

end

end A148155.P13787736939736579710

/-! ## A148155.P12386028365741757623

`A187188(A291000(n)+A148855(n))`
-/

namespace A148155.P12386028365741757623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A291000 n + A148855 n).toNat

end

end A148155.P12386028365741757623

/-!
# A148156: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148156, there is no canonical definition to state claims against.
-/

/-! ## A148156.P13903055955712359766

`A157271(A345955(n+1))+char[6]`
-/

namespace A148156.P13903055955712359766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A345955 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148156.P13903055955712359766

/-! ## A148156.P10291213760774767065

`A279206(n)+A248227(A000108(n))`
-/

namespace A148156.P10291213760774767065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279206 n + A248227 (A000108 n).toNat

end

end A148156.P10291213760774767065

/-!
# A148157: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148157, there is no canonical definition to state claims against.
-/

/-! ## A148157.P9653810574352813385

`A073193(n)+A025437(A002494(n))`
-/

namespace A148157.P9653810574352813385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073193 n + A025437 (A002494 n).toNat

end

end A148157.P9653810574352813385

/-! ## A148157.P8605691887348940022

`A148155(n)+A107846(A002494(n))`
-/

namespace A148157.P8605691887348940022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148155 n + A107846 (A002494 n).toNat

end

end A148157.P8605691887348940022

/-! ## A148157.P7387966005872891881

`A185246(A002378(n))+A148156(n)`
-/

namespace A148157.P7387966005872891881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A002378 n).toNat + A148156 n

end

end A148157.P7387966005872891881

/-! ## A148157.P16565682647837880392

`A148155(n)+A112765(A084643(n))`
-/

namespace A148157.P16565682647837880392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148155 n + A112765 (A084643 n).toNat

end

end A148157.P16565682647837880392

/-!
# A148158: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148158, there is no canonical definition to state claims against.
-/

/-! ## A148158.P3575536363877845261

`A157271(A319775(n)+A219653(n))`
-/

namespace A148158.P3575536363877845261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A319775 n + A219653 n).toNat

end

end A148158.P3575536363877845261

/-! ## A148158.P13277626757951708382

`xor(A023969(A000984(n)), A148165(n))`
-/

namespace A148158.P13277626757951708382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023969 (A000984 n).toNat) (A148165 n)

end

end A148158.P13277626757951708382

/-!
# A148159: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148159, there is no canonical definition to state claims against.
-/

/-! ## A148159.P8795715130055287917

`A247908(A148445(n))`
-/

namespace A148159.P8795715130055287917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A148445 n).toNat

end

end A148159.P8795715130055287917

/-! ## A148159.P14196909042538267402

`A329332(n)+A054404(A306485(n))`
-/

namespace A148159.P14196909042538267402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329332 n + A054404 (A306485 n).toNat

end

end A148159.P14196909042538267402

/-! ## A148159.P15470906934342572573

`A023193(xor(A149212(n), A289207(n)))`
-/

namespace A148159.P15470906934342572573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.xor (A149212 n) (A289207 n)).toNat

end

end A148159.P15470906934342572573

/-!
# A148160: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148160, there is no canonical definition to state claims against.
-/

/-! ## A148160.P1270364968948142976

`A342517(A390345(n+1))`
-/

namespace A148160.P1270364968948142976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A390345 (n + 1)).toNat

end

end A148160.P1270364968948142976

/-! ## A148160.P1474164794250787840

`A342517(∑[∑[A005206(n)]])`
-/

namespace A148160.P1474164794250787840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148160.P1474164794250787840

/-! ## A148160.P3964771631724856850

`A008618(A278646(n+2)+4)`
-/

namespace A148160.P3964771631724856850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A278646 (n + 2) + 4).toNat

end

end A148160.P3964771631724856850

/-! ## A148160.P312578772013603248

`A185714(A050342(3*n)+6)`
-/

namespace A148160.P312578772013603248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A050342 (3 * n) + 6).toNat

end

end A148160.P312578772013603248

/-!
# A148161: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148161, there is no canonical definition to state claims against.
-/

/-! ## A148161.P4987394612424411386

`A300121(A214255(n)+1)`
-/

namespace A148161.P4987394612424411386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A214255 n + 1).toNat

end

end A148161.P4987394612424411386

/-! ## A148161.P3138748424633954403

`A300121(A351359(n+2))`
-/

namespace A148161.P3138748424633954403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A351359 (n + 2)).toNat

end

end A148161.P3138748424633954403

/-! ## A148161.P9131237878519879717

`A300121(∑[A000032(n)]-ceil(n²/2))`
-/

namespace A148161.P9131237878519879717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A148161.P9131237878519879717

/-! ## A148161.P15533492620089962671

`A300121(A026007(n)+A002262(n))`
-/

namespace A148161.P15533492620089962671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A026007 n + A002262 n).toNat

end

end A148161.P15533492620089962671

/-!
# A148162: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148162, there is no canonical definition to state claims against.
-/

/-! ## A148162.P9517714051836694820

`A000108(n)-A003074(A033321(n))`
-/

namespace A148162.P9517714051836694820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A003074 (A033321 n).toNat

end

end A148162.P9517714051836694820

/-! ## A148162.P10935242536083017262

`A120588(n+1)-A003074(A033321(n))`
-/

namespace A148162.P10935242536083017262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A003074 (A033321 n).toNat

end

end A148162.P10935242536083017262

/-! ## A148162.P9055321935009630850

`A317137(A008988(n))`
-/

namespace A148162.P9055321935009630850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A008988 n).toNat

end

end A148162.P9055321935009630850

/-! ## A148162.P10821444938304118659

`A008651(6*A052979(n))`
-/

namespace A148162.P10821444938304118659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (6 * A052979 n).toNat

end

end A148162.P10821444938304118659

/-!
# A148163: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148163, there is no canonical definition to state claims against.
-/

/-! ## A148163.P7936407328594112908

`A053251(record[A192575(n)])`
-/

namespace A148163.P7936407328594112908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A148163.P7936407328594112908

/-! ## A148163.P18015662263673757113

`A053251(∏{e}[A000400(n), #])`
-/

namespace A148163.P18015662263673757113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A148163.P18015662263673757113

/-! ## A148163.P3617298880329476473

`A080098(A000262(n)+C(n, 3))`
-/

namespace A148163.P3617298880329476473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A000262 n + (Nat.choose n 3 : ℤ)).toNat

end

end A148163.P3617298880329476473

/-! ## A148163.P9999532565422611704

`A053251(∏{e}[A017992(3*n), #])`
-/

namespace A148163.P9999532565422611704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017992 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A148163.P9999532565422611704

/-!
# A148164: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148164, there is no canonical definition to state claims against.
-/

/-! ## A148164.P18083185694410563205

`A008621(A126120(n)+A076866(n))`
-/

namespace A148164.P18083185694410563205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A126120 n + A076866 n).toNat

end

end A148164.P18083185694410563205

/-! ## A148164.P11137313111553754956

`A060384(A006130(n)+A000105(n+2))`
-/

namespace A148164.P11137313111553754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A006130 n + A000105 (n + 2)).toNat

end

end A148164.P11137313111553754956

/-! ## A148164.P2367903309215144854

`or(A008621(A076866(n)), A112473(n+1))`
-/

namespace A148164.P2367903309215144854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A076866 n).toNat) (A112473 (n + 1))

end

end A148164.P2367903309215144854

/-! ## A148164.P398292050115556991

`A008621(A144644(2*n+1)+A076866(n))`
-/

namespace A148164.P398292050115556991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A144644 (2 * n + 1) + A076866 n).toNat

end

end A148164.P398292050115556991

/-!
# A148165: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148165, there is no canonical definition to state claims against.
-/

/-! ## A148165.P12507653229983370419

`A081753(A094648(2*n)+4)`
-/

namespace A148165.P12507653229983370419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A094648 (2 * n) + 4).toNat

end

end A148165.P12507653229983370419

/-! ## A148165.P9597218421073954619

`A008679(A255116(n))+A008671(n)`
-/

namespace A148165.P9597218421073954619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A255116 n).toNat + A008671 n

end

end A148165.P9597218421073954619

/-! ## A148165.P9947137810799966405

`A066723(n)-A249871(A011782(n))`
-/

namespace A148165.P9947137810799966405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066723 n - A249871 (A011782 n).toNat

end

end A148165.P9947137810799966405

/-!
# A148166: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148166, there is no canonical definition to state claims against.
-/

/-! ## A148166.P10780855748498726203

`A055679(A149482(n))+1`
-/

namespace A148166.P10780855748498726203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A149482 n).toNat + 1

end

end A148166.P10780855748498726203

/-! ## A148166.P6159543356138669533

`A108954(A149432(n)+A098968(n))`
-/

namespace A148166.P6159543356138669533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A149432 n + A098968 n).toNat

end

end A148166.P6159543356138669533

/-!
# A148167: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148167, there is no canonical definition to state claims against.
-/

/-! ## A148167.P7396249295205152759

`A348841(or(9, (4^n-2^n)/2))`
-/

namespace A148167.P7396249295205152759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348841 (Int.lor 9 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2))).toNat

end

end A148167.P7396249295205152759

/-! ## A148167.P7040197502692073227

`A081753(10*A148248(n))`
-/

namespace A148167.P7040197502692073227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (10 * A148248 n).toNat

end

end A148167.P7040197502692073227

/-! ## A148167.P3242038833044786293

`A332086(A285637(n)+A000984(n))`
-/

namespace A148167.P3242038833044786293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A285637 n + A000984 n).toNat

end

end A148167.P3242038833044786293

/-! ## A148167.P12354744300177092487

`A004251(n)-A008651(A318895(n))`
-/

namespace A148167.P12354744300177092487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004251 n - A008651 (A318895 n).toNat

end

end A148167.P12354744300177092487

/-!
# A148168: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148168, there is no canonical definition to state claims against.
-/

/-! ## A148168.P4468981387009070213

`A143265(A148166(n))`
-/

namespace A148168.P4468981387009070213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143265 (A148166 n).toNat

end

end A148168.P4468981387009070213

/-! ## A148168.P276130094426680691

`A156562(A148324(n))`
-/

namespace A148168.P276130094426680691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A148324 n).toNat

end

end A148168.P276130094426680691

/-! ## A148168.P1803734995176883225

`A241920(round(sqrt(A248828(n))))`
-/

namespace A148168.P1803734995176883225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (SequenceMachineLib.roundAway (Real.sqrt (A248828 n : ℝ))).toNat

end

end A148168.P1803734995176883225

/-! ## A148168.P6589283647244462682

`A004251(n)-sqrt(A184955(2*n+1))`
-/

namespace A148168.P6589283647244462682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004251 n : ℝ) - Real.sqrt (A184955 (2 * n + 1) : ℝ)

end

end A148168.P6589283647244462682

/-!
# A148169: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148169, there is no canonical definition to state claims against.
-/

/-! ## A148169.P14053406590915797525

`A056172(A149680(n)+3)`
-/

namespace A148169.P14053406590915797525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A149680 n + 3).toNat

end

end A148169.P14053406590915797525

/-! ## A148169.P3481702091978336090

`A008616(4*A088327(n))`
-/

namespace A148169.P3481702091978336090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A088327 n).toNat

end

end A148169.P3481702091978336090

/-! ## A148169.P15406668901060149938

`A008616(6*A148450(n))`
-/

namespace A148169.P15406668901060149938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (6 * A148450 n).toNat

end

end A148169.P15406668901060149938

/-! ## A148169.P10369612756101450902

`A165190(12*A148450(n))`
-/

namespace A148169.P10369612756101450902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (12 * A148450 n).toNat

end

end A148169.P10369612756101450902

/-!
# A148170: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148170, there is no canonical definition to state claims against.
-/

/-! ## A148170.P16537477340712120420

`A247908(A148387(n))`
-/

namespace A148170.P16537477340712120420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A148387 n).toNat

end

end A148170.P16537477340712120420

/-! ## A148170.P17059071765063885351

`A247908(A148391(n))`
-/

namespace A148170.P17059071765063885351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A148391 n).toNat

end

end A148170.P17059071765063885351

/-! ## A148170.P9777458910432201595

`A076885(A148301(n+1))`
-/

namespace A148170.P9777458910432201595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A148301 (n + 1)).toNat

end

end A148170.P9777458910432201595

/-! ## A148170.P3525485228875082313

`A098131(n)+A008617(A007052(n))`
-/

namespace A148170.P3525485228875082313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098131 n + A008617 (A007052 n).toNat

end

end A148170.P3525485228875082313

/-!
# A148171: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148171, there is no canonical definition to state claims against.
-/

/-! ## A148171.P16371970757681908548

`A008647(9*A272461(n+1))`
-/

namespace A148171.P16371970757681908548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (9 * A272461 (n + 1)).toNat

end

end A148171.P16371970757681908548

/-! ## A148171.P1916294394474509948

`A345918(2*a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A148171.P1916294394474509948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A345918 (2 * a (n - 1) - 1).toNat

end

end A148171.P1916294394474509948

/-! ## A148171.P1713780962595882806

`A112325(A029759(n))`
-/

namespace A148171.P1713780962595882806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A029759 n).toNat

end

end A148171.P1713780962595882806

/-!
# A148172: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148172, there is no canonical definition to state claims against.
-/

/-! ## A148172.P2687636363346660441

`A256974(A274936(n))+A148173(n)`
-/

namespace A148172.P2687636363346660441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A274936 n).toNat + A148173 n

end

end A148172.P2687636363346660441

/-! ## A148172.P18345629962199044455

`A256974(A274936(n))+A148174(n)`
-/

namespace A148172.P18345629962199044455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A274936 n).toNat + A148174 n

end

end A148172.P18345629962199044455

/-! ## A148172.P8096103210442319223

`A148173(A073789(n))`
-/

namespace A148172.P8096103210442319223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148173 (A073789 n).toNat

end

end A148172.P8096103210442319223

/-! ## A148172.P15654534620552718709

`A109680(A148173(n))`
-/

namespace A148172.P15654534620552718709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148173 n).toNat

end

end A148172.P15654534620552718709

/-!
# A148173: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148173, there is no canonical definition to state claims against.
-/

/-! ## A148173.P14715486105998776436

`A148174(A055648(n))`
-/

namespace A148173.P14715486105998776436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148174 (A055648 n).toNat

end

end A148173.P14715486105998776436

/-! ## A148173.P15274465232814583544

`A148174(A004874(n+1))`
-/

namespace A148173.P15274465232814583544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148174 (A004874 (n + 1)).toNat

end

end A148173.P15274465232814583544

/-! ## A148173.P11732004916010849158

`A148174(A004885(n+1))`
-/

namespace A148173.P11732004916010849158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148174 (A004885 (n + 1)).toNat

end

end A148173.P11732004916010849158

/-! ## A148173.P12249632635675568986

`A148174(A004896(n+1))`
-/

namespace A148173.P12249632635675568986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148174 (A004896 (n + 1)).toNat

end

end A148173.P12249632635675568986

/-! ## A148173.P15204665145228073531

`A148174(A004907(n+1))`
-/

namespace A148173.P15204665145228073531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148174 (A004907 (n + 1)).toNat

end

end A148173.P15204665145228073531

/-!
# A148175: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, -1, 0)}.

The programs for A148175, there is no canonical definition to state claims against.
-/

/-! ## A148175.P7356786164853565273

`A109680(A151258(n))`
-/

namespace A148175.P7356786164853565273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A151258 n).toNat

end

end A148175.P7356786164853565273

/-! ## A148175.P800975909563375519

`A262689(A151258(n)²)`
-/

namespace A148175.P800975909563375519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A151258 n ^ 2).toNat

end

end A148175.P800975909563375519

/-! ## A148175.P14309068156761989761

`A151258(A004880(n+1))`
-/

namespace A148175.P14309068156761989761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151258 (A004880 (n + 1)).toNat

end

end A148175.P14309068156761989761

/-! ## A148175.P922406256330493301

`A151258(A004891(n+1))`
-/

namespace A148175.P922406256330493301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151258 (A004891 (n + 1)).toNat

end

end A148175.P922406256330493301

/-!
# A148176: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148176, there is no canonical definition to state claims against.
-/

/-! ## A148176.P4573412985449805915

`A148177(n)-A185264(A279785(n))`
-/

namespace A148176.P4573412985449805915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148177 n - A185264 (A279785 n).toNat

end

end A148176.P4573412985449805915

/-! ## A148176.P14687573331575758630

`A148177(A073789(n))`
-/

namespace A148176.P14687573331575758630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148177 (A073789 n).toNat

end

end A148176.P14687573331575758630

/-! ## A148176.P16576723873782093393

`A109680(A148177(n))`
-/

namespace A148176.P16576723873782093393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148177 n).toNat

end

end A148176.P16576723873782093393

/-! ## A148176.P11792643873500672915

`A148177(A171644(n))`
-/

namespace A148176.P11792643873500672915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148177 (A171644 n).toNat

end

end A148176.P11792643873500672915

/-!
# A148177: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148177, there is no canonical definition to state claims against.
-/

/-! ## A148177.P4504709633200815055

`A185264(A279785(n))+A148176(n)`
-/

namespace A148177.P4504709633200815055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A279785 n).toNat + A148176 n

end

end A148177.P4504709633200815055

/-!
# A148178: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148178, there is no canonical definition to state claims against.
-/

/-! ## A148178.P15721079254139445115

`A397205(A005833(n+1))`
-/

namespace A148178.P15721079254139445115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397205 (A005833 (n + 1)).toNat

end

end A148178.P15721079254139445115

/-! ## A148178.P2326814619188217934

`A185712(A328406(3*n+1)+A005560(n+2))`
-/

namespace A148178.P2326814619188217934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A328406 (3 * n + 1) + A005560 (n + 2)).toNat

end

end A148178.P2326814619188217934

/-!
# A148179: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148179, there is no canonical definition to state claims against.
-/

/-! ## A148179.P15134137416263468745

`A157271(or(A151267(n), A151339(n)))`
-/

namespace A148179.P15134137416263468745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A151267 n) (A151339 n)).toNat

end

end A148179.P15134137416263468745

/-! ## A148179.P12692487791988244464

`A083382(A291000(n+1)-A112472(2*n+1))`
-/

namespace A148179.P12692487791988244464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A291000 (n + 1) - A112472 (2 * n + 1)).toNat

end

end A148179.P12692487791988244464

/-! ## A148179.P18121342232423025605

`A289493(A075997(2*(n+2))*A289501(n)+n)`
-/

namespace A148179.P18121342232423025605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A075997 (2 * (n + 2)) * A289501 n + (n : ℤ)).toNat

end

end A148179.P18121342232423025605

/-!
# A148180: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, 0)}.

The programs for A148180, there is no canonical definition to state claims against.
-/

/-! ## A148180.P11375460772593639740

`∏{e}[7^n, A148181(#)]`
-/

namespace A148180.P11375460772593639740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148181 (Nat.factorization (f1 n) p)

end

end A148180.P11375460772593639740

/-! ## A148180.P2956740400746813496

`A148181(A073789(n))`
-/

namespace A148180.P2956740400746813496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148181 (A073789 n).toNat

end

end A148180.P2956740400746813496

/-! ## A148180.P6948180260279625304

`A148181(A171644(n))`
-/

namespace A148180.P6948180260279625304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148181 (A171644 n).toNat

end

end A148180.P6948180260279625304

/-! ## A148180.P6646355620982403675

`A390395(A148257(n))`
-/

namespace A148180.P6646355620982403675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148257 n).toNat

end

end A148180.P6646355620982403675

/-!
# A148182: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148182, there is no canonical definition to state claims against.
-/

/-! ## A148182.P8610828274961285794

`A309262(6*A205503(n))`
-/

namespace A148182.P8610828274961285794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (6 * A205503 n).toNat

end

end A148182.P8610828274961285794

/-! ## A148182.P4293508730331179091

`A171181(A148189(n)+A148179(n))`
-/

namespace A148182.P4293508730331179091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A148189 n + A148179 n).toNat

end

end A148182.P4293508730331179091

/-! ## A148182.P2610914932985908385

`A148187(n)-A353810(A147518(n))`
-/

namespace A148182.P2610914932985908385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148187 n - A353810 (A147518 n).toNat

end

end A148182.P2610914932985908385

/-! ## A148182.P10276101843494099946

`A148184(n)-A172263(A217987(n+1))`
-/

namespace A148182.P10276101843494099946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148184 n - A172263 (A217987 (n + 1)).toNat

end

end A148182.P10276101843494099946

/-!
# A148183: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148183, there is no canonical definition to state claims against.
-/

/-! ## A148183.P11292625085017561066

`A154099(A309117(n))`
-/

namespace A148183.P11292625085017561066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A309117 n).toNat

end

end A148183.P11292625085017561066

/-! ## A148183.P5179175945826479642

`A123621(A148584(n)+A107849(n))`
-/

namespace A148183.P5179175945826479642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A148584 n + A107849 n).toNat

end

end A148183.P5179175945826479642

/-! ## A148183.P7614012654327150988

`A024417(A148906(n)-A130520(n))`
-/

namespace A148183.P7614012654327150988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148906 n - A130520 n).toNat

end

end A148183.P7614012654327150988

/-! ## A148183.P16821494495779074395

`A024417(and(A148906(n), A148908(n)))`
-/

namespace A148183.P16821494495779074395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.land (A148906 n) (A148908 n)).toNat

end

end A148183.P16821494495779074395

/-!
# A148184: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148184, there is no canonical definition to state claims against.
-/

/-! ## A148184.P10729048547605327046

`A008337(floor((n/2)²))+floor(n/2)`
-/

namespace A148184.P10729048547605327046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008337 ⌊((n : ℚ) / 2) ^ 2⌋.toNat + ⌊(n : ℚ) / 2⌋

end

end A148184.P10729048547605327046

/-! ## A148184.P3355280859757648243

`A216188(A114277(n))+A205504(n)`
-/

namespace A148184.P3355280859757648243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216188 (A114277 n).toNat + A205504 n

end

end A148184.P3355280859757648243

/-! ## A148184.P17975499283726944255

`A148188(n)-A098804(A008765(n))`
-/

namespace A148184.P17975499283726944255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148188 n - A098804 (A008765 n).toNat

end

end A148184.P17975499283726944255

/-! ## A148184.P10388954129592697876

`A148188(n)-A098804(A035985(n))`
-/

namespace A148184.P10388954129592697876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148188 n - A098804 (A035985 n).toNat

end

end A148184.P10388954129592697876

/-!
# A148185: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148185, there is no canonical definition to state claims against.
-/

/-! ## A148185.P1285256859742390267

`A185712(A124642(2*(n+1))+A081668(n+2))`
-/

namespace A148185.P1285256859742390267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A124642 (2 * (n + 1)) + A081668 (n + 2)).toNat

end

end A148185.P1285256859742390267

/-!
# A148186: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148186, there is no canonical definition to state claims against.
-/

/-! ## A148186.P10001214543180159492

`A111439(A364723(n))`
-/

namespace A148186.P10001214543180159492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A364723 n).toNat

end

end A148186.P10001214543180159492

/-! ## A148186.P8007433888333908315

`A083382(A151279(n+1))+floor(n/4)`
-/

namespace A148186.P8007433888333908315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A151279 (n + 1)).toNat + ⌊(n : ℚ) / 4⌋

end

end A148186.P8007433888333908315

/-! ## A148186.P2506679662992795388

`A046155(A289158(n)+A001862(n))`
-/

namespace A148186.P2506679662992795388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A289158 n + A001862 n).toNat

end

end A148186.P2506679662992795388

/-! ## A148186.P16906353780765730065

`A235046(A290206(n))+A148145(n)`
-/

namespace A148186.P16906353780765730065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (A290206 n).toNat + A148145 n

end

end A148186.P16906353780765730065

/-!
# A148187: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148187, there is no canonical definition to state claims against.
-/

/-! ## A148187.P2953873208945932214

`A055679(2*A149191(n)+1)`
-/

namespace A148187.P2953873208945932214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A149191 n + 1).toNat

end

end A148187.P2953873208945932214

/-! ## A148187.P17270495606171561111

`A353810(A147518(n))+A148182(n)`
-/

namespace A148187.P17270495606171561111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353810 (A147518 n).toNat + A148182 n

end

end A148187.P17270495606171561111

/-! ## A148187.P4300567592722225819

`A148217(n)-A010059(A060223(n))`
-/

namespace A148187.P4300567592722225819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148217 n - A010059 (A060223 n).toNat

end

end A148187.P4300567592722225819

/-! ## A148187.P6930871484017569719

`A148218(n)-A010059(A060223(n))`
-/

namespace A148187.P6930871484017569719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 n - A010059 (A060223 n).toNat

end

end A148187.P6930871484017569719

/-!
# A148188: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148188, there is no canonical definition to state claims against.
-/

/-! ## A148188.P5405343941561881008

`A148184(n)+A098804(A008765(n))`
-/

namespace A148188.P5405343941561881008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148184 n + A098804 (A008765 n).toNat

end

end A148188.P5405343941561881008

/-! ## A148188.P6817667230273008378

`A148184(n)+A098804(A035985(n))`
-/

namespace A148188.P6817667230273008378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148184 n + A098804 (A035985 n).toNat

end

end A148188.P6817667230273008378

/-!
# A148189: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148189, there is no canonical definition to state claims against.
-/

/-! ## A148189.P713307842108137920

`A332086(or(A002513(n), A002533(n)))`
-/

namespace A148189.P713307842108137920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (Int.lor (A002513 n) (A002533 n)).toNat

end

end A148189.P713307842108137920

/-! ## A148189.P11670111920627660396

`A083382(A023116(n+1)+A000073(2*n+3))`
-/

namespace A148189.P11670111920627660396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A023116 (n + 1) + A000073 (2 * n + 3)).toNat

end

end A148189.P11670111920627660396

/-!
# A148190: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148190, there is no canonical definition to state claims against.
-/

/-! ## A148190.P14105787779136755797

`A199571(A132332(n))+A073193(n)`
-/

namespace A148190.P14105787779136755797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 (A132332 n).toNat + A073193 n

end

end A148190.P14105787779136755797

/-! ## A148190.P4292364560738135692

`A211974(A274627(n))+A148147(n)`
-/

namespace A148190.P4292364560738135692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 (A274627 n).toNat + A148147 n

end

end A148190.P4292364560738135692

/-!
# A148191: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148191, there is no canonical definition to state claims against.
-/

/-! ## A148191.P17509439958296684277

`A346699(A116406(n))+A289595(n)`
-/

namespace A148191.P17509439958296684277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A116406 n).toNat + A289595 n

end

end A148191.P17509439958296684277

/-! ## A148191.P10504577196396086271

`xor(A036859(A287993(n)), A287966(n))`
-/

namespace A148191.P10504577196396086271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036859 (A287993 n).toNat) (A287966 n)

end

end A148191.P10504577196396086271

/-! ## A148191.P4059290812223461648

`A360054(n+1)+A001462(A000142(n))`
-/

namespace A148191.P4059290812223461648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360054 (n + 1) + A001462 (A000142 n).toNat

end

end A148191.P4059290812223461648

/-! ## A148191.P3683248913957890388

`A210253(A298269(n))-A147307(n+1)`
-/

namespace A148191.P3683248913957890388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210253 (A298269 n).toNat - A147307 (n + 1)

end

end A148191.P3683248913957890388

/-!
# A148192: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148192, there is no canonical definition to state claims against.
-/

/-! ## A148192.P3462298754522136507

`A380751(A150094(n))`
-/

namespace A148192.P3462298754522136507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380751 (A150094 n).toNat

end

end A148192.P3462298754522136507

/-! ## A148192.P12867629569853679336

`A050231(n+1)+A001055(A001710(n))`
-/

namespace A148192.P12867629569853679336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050231 (n + 1) + A001055 (A001710 n).toNat

end

end A148192.P12867629569853679336

/-! ## A148192.P2820569493329322148

`A148156(A004880(n+1))+A000600(n)`
-/

namespace A148192.P2820569493329322148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148156 (A004880 (n + 1)).toNat + A000600 n

end

end A148192.P2820569493329322148

/-!
# A148193: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148193, there is no canonical definition to state claims against.
-/

/-! ## A148193.P16468177602916531753

`A024417(A148989(n))`
-/

namespace A148193.P16468177602916531753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148989 n).toNat

end

end A148193.P16468177602916531753

/-! ## A148193.P2408263879415814908

`A200381(A181819(n!))`
-/

namespace A148193.P2408263879415814908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200381 (A181819 (Nat.factorial n)).toNat

end

end A148193.P2408263879415814908

/-! ## A148193.P6449745978005211512

`A008647(A141214(n)+A077644(n))`
-/

namespace A148193.P6449745978005211512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A141214 n + A077644 n).toNat

end

end A148193.P6449745978005211512

/-! ## A148193.P15782057177809647875

`A185033(n)+A001462(A213227(n))`
-/

namespace A148193.P15782057177809647875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185033 n + A001462 (A213227 n).toNat

end

end A148193.P15782057177809647875

/-!
# A148194: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148194, there is no canonical definition to state claims against.
-/

/-! ## A148194.P15466531924891975769

`A289501(n)-A181154(A118011(n+1))`
-/

namespace A148194.P15466531924891975769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 n - A181154 (A118011 (n + 1)).toNat

end

end A148194.P15466531924891975769

/-! ## A148194.P4649213139712600549

`A216818(n+4)-A008683(A305771(n+1))`
-/

namespace A148194.P4649213139712600549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216818 (n + 4) - A008683 (A305771 (n + 1)).toNat

end

end A148194.P4649213139712600549

/-! ## A148194.P1975927798021923731

`A216819(n+4)-A008683(A305771(n+1))`
-/

namespace A148194.P1975927798021923731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216819 (n + 4) - A008683 (A305771 (n + 1)).toNat

end

end A148194.P1975927798021923731

/-! ## A148194.P5219830809103979398

`A216820(n+4)-A008683(A305771(n+1))`
-/

namespace A148194.P5219830809103979398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216820 (n + 4) - A008683 (A305771 (n + 1)).toNat

end

end A148194.P5219830809103979398

/-!
# A148195: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148195, there is no canonical definition to state claims against.
-/

/-! ## A148195.P3258479166488309236

`A108954(xor(n, A149987(n)))`
-/

namespace A148195.P3258479166488309236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.xor (n : ℤ) (A149987 n)).toNat

end

end A148195.P3258479166488309236

/-! ## A148195.P310523396846340026

`A108954(xor(n, A149988(n)))`
-/

namespace A148195.P310523396846340026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.xor (n : ℤ) (A149988 n)).toNat

end

end A148195.P310523396846340026

/-! ## A148195.P2627234937922690701

`A135339(n)+A125184(A008776(n))`
-/

namespace A148195.P2627234937922690701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135339 n + A125184 (A008776 n).toNat

end

end A148195.P2627234937922690701

/-! ## A148195.P3173958889874149863

`A110490(n)-A054404(A148776(n))`
-/

namespace A148195.P3173958889874149863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110490 n - A054404 (A148776 n).toNat

end

end A148195.P3173958889874149863

/-!
# A148196: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148196, there is no canonical definition to state claims against.
-/

/-! ## A148196.P14249889708028063789

`A100196(A000248(n)+1)`
-/

namespace A148196.P14249889708028063789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000248 n + 1).toNat

end

end A148196.P14249889708028063789

/-! ## A148196.P926071963618886340

`A100196(A116071(∑[n])+1)`
-/

namespace A148196.P926071963618886340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A116071 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A148196.P926071963618886340

/-! ## A148196.P7640932727653014564

`A100196(A235596(n+1)+2)`
-/

namespace A148196.P7640932727653014564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A235596 (n + 1) + 2).toNat

end

end A148196.P7640932727653014564

/-! ## A148196.P9765764223826428642

`A100196(A145460(∑[n+2]-1)+1)`
-/

namespace A148196.P9765764223826428642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A145460 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1).toNat

end

end A148196.P9765764223826428642

/-!
# A148197: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148197, there is no canonical definition to state claims against.
-/

/-! ## A148197.P7310091132002115547

`A014321(A291190(n+1))`
-/

namespace A148197.P7310091132002115547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (A291190 (n + 1)).toNat

end

end A148197.P7310091132002115547

/-! ## A148197.P5200957909878416351

`A325106(A030033(n))+A298269(n)`
-/

namespace A148197.P5200957909878416351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A030033 n).toNat + A298269 n

end

end A148197.P5200957909878416351

/-! ## A148197.P3958384290363503380

`A247908(A014137(n))-A249579(2*n)`
-/

namespace A148197.P3958384290363503380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A014137 n).toNat - A249579 (2 * n)

end

end A148197.P3958384290363503380

/-! ## A148197.P964187079110280245

`A214701(or(A339108(n), A343663(n+1)))`
-/

namespace A148197.P964187079110280245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Int.lor (A339108 n) (A343663 (n + 1))).toNat

end

end A148197.P964187079110280245

/-!
# A148198: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148198, there is no canonical definition to state claims against.
-/

/-! ## A148198.P1974503622490995043

`A137954(n)+A058064(A008578(n+3))`
-/

namespace A148198.P1974503622490995043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137954 n + A058064 (A008578 (n + 3)).toNat

end

end A148198.P1974503622490995043

/-! ## A148198.P5857196812004039861

`A157271(or(A028303(2*n+1), A028303(n)))`
-/

namespace A148198.P5857196812004039861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A028303 (2 * n + 1)) (A028303 n)).toNat

end

end A148198.P5857196812004039861

/-! ## A148198.P8969141567889522307

`A332086(A049128(n+2))+A253092(A275309(n))`
-/

namespace A148198.P8969141567889522307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A049128 (n + 2)).toNat + A253092 (A275309 n).toNat

end

end A148198.P8969141567889522307

/-!
# A148199: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148199, there is no canonical definition to state claims against.
-/

/-! ## A148199.P17928004461690374795

`A193114(n)-A065339(A154638(n))`
-/

namespace A148199.P17928004461690374795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A065339 (A154638 n).toNat

end

end A148199.P17928004461690374795

/-! ## A148199.P11804853631834535184

`A343663(n+1)-A343632(A343756(n))`
-/

namespace A148199.P11804853631834535184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343663 (n + 1) - A343632 (A343756 n).toNat

end

end A148199.P11804853631834535184

/-! ## A148199.P18187476314257401961

`A160532(A148087(n))`
-/

namespace A148199.P18187476314257401961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160532 (A148087 n).toNat

end

end A148199.P18187476314257401961

