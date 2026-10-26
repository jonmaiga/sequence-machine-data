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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285100: Numbers k for which A065642(k) = A285109(k).

The programs for A285100, there is no canonical definition to state claims against.
-/

/-! ## A285100.P2559577832081990439

`record[gcd(n+1, A065642(n+1))]`
-/

namespace A285100.P2559577832081990439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065642 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285100.P2559577832081990439

/-! ## A285100.P8506691505647261703

`eq[A052125(n+1), A333645(A052125(n+1))]+1`
-/

namespace A285100.P8506691505647261703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333645 (A052125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285100.P8506691505647261703

/-! ## A285100.P15182498103106337685

`∩[A375396(n+1), A383397(n+1)]`
-/

namespace A285100.P15182498103106337685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285100.P15182498103106337685

/-! ## A285100.P8320483749832179702

`record[n+1-A037462(A065642(n+1)%(n+1))]`
-/

namespace A285100.P8320483749832179702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A037462 (Int.tmod (A065642 (n + 1)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285100.P8320483749832179702

/-! ## A285100.P15099154067498695445

`eq[1, A285337(n+1)]+1`
-/

namespace A285100.P15099154067498695445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285100.P15099154067498695445

/-! ## A285100.P11784228914240511996

`record[gcd(A065642(n+1), A163815(n))]`
-/

namespace A285100.P11784228914240511996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065642 (n + 1)) (A163815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285100.P11784228914240511996

/-! ## A285100.P14241410775794201113

`record[A000027(n+1)/A285337(n+1)]`
-/

namespace A285100.P14241410775794201113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A285337 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285100.P14241410775794201113

/-! ## A285100.P12761906882358577094

`eq[A065642(n+1), A285109(n+1)]+1`
-/

namespace A285100.P12761906882358577094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285100.P12761906882358577094

/-! ## A285100.P14215511201433489771

`record[A229994(n+1)/A005361(A229994(n+2))]`
-/

namespace A285100.P14215511201433489771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229994 (n + 1) : ℚ) / (A005361 (A229994 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285100.P14215511201433489771

/-! ## A285100.P3476027960538117190

`∪[A063538(n+1), A316521(n+1)]`
-/

namespace A285100.P3476027960538117190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285100.P3476027960538117190

/-!
# A285102: a(n) = A007913(A285101(n)).

The programs for A285102, there is no canonical definition to state claims against.
-/

/-! ## A285102.P2189664811197077136

`A019565(A068052(n))`
-/

namespace A285102.P2189664811197077136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A068052 n).toNat

end

end A285102.P2189664811197077136

/-!
# A285103: Number of odd terms on row n of A053632: a(n) = A000120(A068052(n)).

The programs for A285103, there is no canonical definition to state claims against.
-/

/-! ## A285103.P8801844391839349428

`∑[n]+1-A285105(n)`
-/

namespace A285103.P8801844391839349428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A285105 n)

end

end A285103.P8801844391839349428

/-! ## A285103.P14087930827974791252

`A000124(n)-A285105(n)`
-/

namespace A285103.P14087930827974791252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A285105 n

end

end A285103.P14087930827974791252

/-! ## A285103.P12662045431354500842

`A000217(n)+1-A285105(n)`
-/

namespace A285103.P12662045431354500842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 1 - A285105 n

end

end A285103.P12662045431354500842

/-! ## A285103.P891226905289565783

`2^n-A285104(n)`
-/

namespace A285103.P891226905289565783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A285104 n

end

end A285103.P891226905289565783

/-! ## A285103.P1852554522119362188

`abs(A000079(n)-A285104(n))`
-/

namespace A285103.P1852554522119362188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A285104 n|

end

end A285103.P1852554522119362188

/-! ## A285103.P7049124367253594484

`A000225(n)+1-A285104(n)`
-/

namespace A285103.P7049124367253594484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A285104 n)

end

end A285103.P7049124367253594484

/-! ## A285103.P1778213220142201257

`A261681(n)-(A285104(n)+A014495(n))`
-/

namespace A285103.P1778213220142201257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - (A285104 n + A014495 n)

end

end A285103.P1778213220142201257

/-! ## A285103.P1438260059813478349

`A171632(n+1)+A199885(n+1)-A285104(n)`
-/

namespace A285103.P1438260059813478349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171632 (n + 1) + (A199885 (n + 1) - A285104 n)

end

end A285103.P1438260059813478349

/-! ## A285103.P3621540523744332909

`A171634(n+1)+A199884(n+1)-A285104(n)`
-/

namespace A285103.P3621540523744332909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171634 (n + 1) + (A199884 (n + 1) - A285104 n)

end

end A285103.P3621540523744332909

/-! ## A285103.P4970202865978638712

`A199886(n+1)+A199887(n+1)-A285104(n)`
-/

namespace A285103.P4970202865978638712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199886 (n + 1) + (A199887 (n + 1) - A285104 n)

end

end A285103.P4970202865978638712

/-! ## A285103.P9287629662177178551

`A007689(n)-(A285104(n)+A000244(n))`
-/

namespace A285103.P9287629662177178551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - (A285104 n + A000244 n)

end

end A285103.P9287629662177178551

/-! ## A285103.P16798867432249372169

`A131055(A000079(n)-A285104(n))`
-/

namespace A285103.P16798867432249372169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A000079 n - A285104 n).toNat

end

end A285103.P16798867432249372169

/-!
# A285104: a(n) = 2^n - A285103(n).

The programs for A285104, there is no canonical definition to state claims against.
-/

/-! ## A285104.P3624514987303346113

`2^n-A285103(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285104.P3624514987303346113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A285103 n

end

end A285104.P3624514987303346113

/-! ## A285104.P3525327084261407658

`A285105(n)+A002662(n)`
-/

namespace A285104.P3525327084261407658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285105 n + A002662 n

end

end A285104.P3525327084261407658

/-! ## A285104.P13571286512472244131

`abs(A000079(n)-A285103(n))`
-/

namespace A285104.P13571286512472244131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A285103 n|

end

end A285104.P13571286512472244131

/-! ## A285104.P15904415203899952925

`and(-A285103(n), A000225(n))`
-/

namespace A285104.P15904415203899952925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A285103 n) (A000225 n)

end

end A285104.P15904415203899952925

/-! ## A285104.P13835310881412147887

`A078008(n+1)+A078008(n)-A285103(n)`
-/

namespace A285104.P13835310881412147887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + (A078008 n - A285103 n)

end

end A285104.P13835310881412147887

/-! ## A285104.P11770692169003148514

`A011782(n+1)-A028310(A285103(n))`
-/

namespace A285104.P11770692169003148514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A028310 (A285103 n).toNat

end

end A285104.P11770692169003148514

/-!
# A285105: Number of even terms on row n of A053632.

The programs for A285105, there is no canonical definition to state claims against.
-/

/-! ## A285105.P5798399718788978040

`∑[n]+1-A285103(n)`
-/

namespace A285105.P5798399718788978040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A285103 n)

end

end A285105.P5798399718788978040

/-! ## A285105.P16853466200974281123

`A000124(n)-A285103(n)`
-/

namespace A285105.P16853466200974281123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A285103 n

end

end A285105.P16853466200974281123

/-! ## A285105.P18172606085558800540

`∑[A028310(n)]-A285103(n)`
-/

namespace A285105.P18172606085558800540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285103 n

end

end A285105.P18172606085558800540

/-! ## A285105.P2494702819990161732

`Δ[A000125(n)]-A285103(n)`
-/

namespace A285105.P2494702819990161732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285103 n

end

end A285105.P2494702819990161732

/-! ## A285105.P3462778308798366179

`Δ[A004006(n)]-A285103(n)`
-/

namespace A285105.P3462778308798366179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285103 n

end

end A285105.P3462778308798366179

/-! ## A285105.P5180782981805412298

`A285104(n)-A002662(n)`
-/

namespace A285105.P5180782981805412298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285104 n - A002662 n

end

end A285105.P5180782981805412298

/-! ## A285105.P4894709050279678935

`A000217(n)+A285104(n)-A000225(n)`
-/

namespace A285105.P4894709050279678935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A285104 n - A000225 n)

end

end A285105.P4894709050279678935

/-!
# A285106: a(n) = A001222(A284576(n)).

The programs for A285106, there is no canonical definition to state claims against.
-/

/-! ## A285106.P11943410651053674708

`A285107(n)+A285108(n)`
-/

namespace A285106.P11943410651053674708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285107 n + A285108 n

end

end A285106.P11943410651053674708

/-! ## A285106.P2694521375033718062

`A001222(A284576(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285106.P2694521375033718062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284576 n).toNat

end

end A285106.P2694521375033718062

/-! ## A285106.P56032038329017795

`A007306(n+1)-A285108(n)`
-/

namespace A285106.P56032038329017795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A285108 n

end

end A285106.P56032038329017795

/-! ## A285106.P10229618248256731257

`(A285107(n)+A007306(n+1))/2`
-/

namespace A285106.P10229618248256731257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285107 n + A007306 (n + 1) : ℚ) / 2

end

end A285106.P10229618248256731257

/-! ## A285106.P8141598818648929002

`A002487(n+1)+A002487(n)-A285108(n)`
-/

namespace A285106.P8141598818648929002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A285108 n)

end

end A285106.P8141598818648929002

/-! ## A285106.P6164541006019782301

`A282720(n+1)-(A285108(n)+A282720(n))`
-/

namespace A285106.P6164541006019782301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282720 (n + 1) - (A285108 n + A282720 n)

end

end A285106.P6164541006019782301

/-! ## A285106.P10130010561813192022

`A071585(A003188(n))-A285108(n)`
-/

namespace A285106.P10130010561813192022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 n).toNat - A285108 n

end

end A285106.P10130010561813192022

/-! ## A285106.P6457411573110117121

`A114214(2*n)-A285108(n)`
-/

namespace A285106.P6457411573110117121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (2 * n) - A285108 n

end

end A285106.P6457411573110117121

/-! ## A285106.P2575858685646031395

`A002487(2*n+1)-A285108(n)`
-/

namespace A285106.P2575858685646031395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A285108 n

end

end A285106.P2575858685646031395

/-! ## A285106.P7114517589308835708

`A057432(2*n+1)-A285108(n)`
-/

namespace A285106.P7114517589308835708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (2 * n + 1) - A285108 n

end

end A285106.P7114517589308835708

/-! ## A285106.P10784394352549861126

`A287896(2*n+1)-A285108(n)`
-/

namespace A285106.P10784394352549861126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A285108 n

end

end A285106.P10784394352549861126

/-!
# A285107: a(n) = A001222(A284577(n)).

The programs for A285107, there is no canonical definition to state claims against.
-/

/-! ## A285107.P17940403003313269106

`A285106(n)-A285108(n)`
-/

namespace A285107.P17940403003313269106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285106 n - A285108 n

end

end A285107.P17940403003313269106

/-! ## A285107.P15473322602141781253

`A001222(A284577(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285107.P15473322602141781253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284577 n).toNat

end

end A285107.P15473322602141781253

/-! ## A285107.P4925126384328533701

`A007306(n+1)-2*A285108(n)`
-/

namespace A285107.P4925126384328533701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - 2 * A285108 n

end

end A285107.P4925126384328533701

/-! ## A285107.P13429883323046994011

`A285106(n)+A057428(n)*A285108(n)`
-/

namespace A285107.P13429883323046994011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285106 n + A057428 n * A285108 n

end

end A285107.P13429883323046994011

/-! ## A285107.P8251625343665468236

`A285106(n)+A285106(n)-A007306(n+1)`
-/

namespace A285107.P8251625343665468236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285106 n + (A285106 n - A007306 (n + 1))

end

end A285107.P8251625343665468236

/-! ## A285107.P6723934333689871952

`2*A285106(n)-A071585(A003188(n))`
-/

namespace A285107.P6723934333689871952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285106 n - A071585 (A003188 n).toNat

end

end A285107.P6723934333689871952

/-! ## A285107.P14214531163039316075

`A071585(A003188(n))-2*A285108(n)`
-/

namespace A285107.P14214531163039316075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 n).toNat - 2 * A285108 n

end

end A285107.P14214531163039316075

/-! ## A285107.P14647078612266240889

`A071585(A003188(n))-A005843(A285108(n))`
-/

namespace A285107.P14647078612266240889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 n).toNat - A005843 (A285108 n).toNat

end

end A285107.P14647078612266240889

/-! ## A285107.P10248984633441294204

`A005843(A285106(n))-A071585(A003188(n))`
-/

namespace A285107.P10248984633441294204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285106 n).toNat - A071585 (A003188 n).toNat

end

end A285107.P10248984633441294204

/-! ## A285107.P12284429508730701069

`2*A285106(n)-A287896(A005408(n))`
-/

namespace A285107.P12284429508730701069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285106 n - A287896 (A005408 n).toNat

end

end A285107.P12284429508730701069

/-! ## A285107.P4731374645460189152

`A005843(A285106(n))-A287896(2*n+1)`
-/

namespace A285107.P4731374645460189152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285106 n).toNat - A287896 (2 * n + 1)

end

end A285107.P4731374645460189152

/-!
# A285108: a(n) = A001222(A284578(n)).

The programs for A285108, there is no canonical definition to state claims against.
-/

/-! ## A285108.P17667103422456869151

`A285106(n)-A285107(n)`
-/

namespace A285108.P17667103422456869151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285106 n - A285107 n

end

end A285108.P17667103422456869151

/-! ## A285108.P6284199649124420961

`A001222(A284578(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285108.P6284199649124420961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284578 n).toNat

end

end A285108.P6284199649124420961

/-! ## A285108.P17829272856733400896

`A007306(n+1)-A285106(n)`
-/

namespace A285108.P17829272856733400896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A285106 n

end

end A285108.P17829272856733400896

/-! ## A285108.P17628579090425465405

`A007306(A000027(n+1))%A285106(n)`
-/

namespace A285108.P17628579090425465405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 (A000027 (n + 1)).toNat) (A285106 n)

end

end A285108.P17628579090425465405

/-! ## A285108.P4629120446122532687

`A002487(n+1)+A002487(n)-A285106(n)`
-/

namespace A285108.P4629120446122532687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A285106 n)

end

end A285108.P4629120446122532687

/-! ## A285108.P9299288438960612727

`(A007306(n+1)%A285106(n))%A007306(n)`
-/

namespace A285108.P9299288438960612727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007306 (n + 1)) (A285106 n)) (A007306 n)

end

end A285108.P9299288438960612727

/-! ## A285108.P6673631399333697721

`A071585(A003188(n))-A285106(n)`
-/

namespace A285108.P6673631399333697721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 n).toNat - A285106 n

end

end A285108.P6673631399333697721

/-! ## A285108.P9430297788816000022

`A114214(2*n)-A285106(n)`
-/

namespace A285108.P9430297788816000022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (2 * n) - A285106 n

end

end A285108.P9430297788816000022

/-! ## A285108.P15003206802826436372

`A002487(2*n+1)-A285106(n)`
-/

namespace A285108.P15003206802826436372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A285106 n

end

end A285108.P15003206802826436372

/-! ## A285108.P13493093947504112229

`A287896(2*n+1)-A285106(n)`
-/

namespace A285108.P13493093947504112229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A285106 n

end

end A285108.P13493093947504112229

/-!
# A285109: a(n) = n multiplied by its smallest prime factor; a(1) = 1.

The programs for A285109, there is no canonical definition to state claims against.
-/

/-! ## A285109.P2590684610333389883

`A020639(n+1)*(n+1)`
-/

namespace A285109.P2590684610333389883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * (n + 1 : ℤ)

end

end A285109.P2590684610333389883

/-! ## A285109.P9006221963148811807

`(n+1)²/A032742(n+1)`
-/

namespace A285109.P9006221963148811807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A032742 (n + 1) : ℚ)

end

end A285109.P9006221963148811807

/-! ## A285109.P8046932998365316808

`(n+1)*sqrt(A088377(n+1))`
-/

namespace A285109.P8046932998365316808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A088377 (n + 1) : ℝ)

end

end A285109.P8046932998365316808

/-! ## A285109.P16789238988322382923

`(n+1)*(A061228(n+1)-(n+1))`
-/

namespace A285109.P16789238988322382923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061228 (n + 1) - (n + 1 : ℤ))

end

end A285109.P16789238988322382923

/-! ## A285109.P16435945822858985692

`(n+1)/gcd(n+1, A060681(n+1))*(n+1)`
-/

namespace A285109.P16435945822858985692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ) * (n + 1 : ℚ)

end

end A285109.P16435945822858985692

/-! ## A285109.P16588310061155456350

`(n+1)*A006530(A028233(n+1))`
-/

namespace A285109.P16588310061155456350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (A028233 (n + 1)).toNat

end

end A285109.P16588310061155456350

/-! ## A285109.P13483683877255212570

`(n+1)*A028233(A007947(n+1))`
-/

namespace A285109.P13483683877255212570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028233 (A007947 (n + 1)).toNat

end

end A285109.P13483683877255212570

/-! ## A285109.P4945923485344980945

`(n+1)*A006530(A068794(n+1))`
-/

namespace A285109.P4945923485344980945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (A068794 (n + 1)).toNat

end

end A285109.P4945923485344980945

/-! ## A285109.P3447464036134869889

`(n+1)*A006530(A074828(n+1))`
-/

namespace A285109.P3447464036134869889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (A074828 (n + 1)).toNat

end

end A285109.P3447464036134869889

/-! ## A285109.P16790133705633681486

`A052126(n+1)*A066048(n+1)`
-/

namespace A285109.P16790133705633681486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A066048 (n + 1)

end

end A285109.P16790133705633681486

/-! ## A285109.P68916227520825214

`A032742(n+1)*A088377(n+1)`
-/

namespace A285109.P68916227520825214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A088377 (n + 1)

end

end A285109.P68916227520825214

/-! ## A285109.P8482087150689927447

`A006530(n+1)*A130065(n+1)`
-/

namespace A285109.P8482087150689927447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A130065 (n + 1)

end

end A285109.P8482087150689927447

/-! ## A285109.P15329490537346784274

`(n+1)*A079068(A117367(n+1))`
-/

namespace A285109.P15329490537346784274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079068 (A117367 (n + 1)).toNat

end

end A285109.P15329490537346784274

/-! ## A285109.P1600370005218430666

`(n+1)*A006530(A304181(n+1))`
-/

namespace A285109.P1600370005218430666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (A304181 (n + 1)).toNat

end

end A285109.P1600370005218430666

/-! ## A285109.P3754329371077010853

`(n+1)*A348470(A064664(n+1))`
-/

namespace A285109.P3754329371077010853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348470 (A064664 (n + 1)).toNat

end

end A285109.P3754329371077010853

/-! ## A285109.P2914554328214438178

`lcm(A130065(n+1), A140580(n+1))`
-/

namespace A285109.P2914554328214438178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130065 (n + 1)) (A140580 (n + 1))

end

end A285109.P2914554328214438178

/-! ## A285109.P15880663702213584948

`A003557(n+1)*A065642(A007947(n+1))`
-/

namespace A285109.P15880663702213584948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A065642 (A007947 (n + 1)).toNat

end

end A285109.P15880663702213584948

/-! ## A285109.P16909050363190543425

`A103164(n+1)*A107286(n+1)`
-/

namespace A285109.P16909050363190543425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (n + 1) * A107286 (n + 1)

end

end A285109.P16909050363190543425

/-! ## A285109.P11484987322992282034

`(n+1)*A000720(A105574(n+1))`
-/

namespace A285109.P11484987322992282034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (A105574 (n + 1)).toNat

end

end A285109.P11484987322992282034

/-!
# A285110: a(n) = A001222(A285323(n)).

The programs for A285110, there is no canonical definition to state claims against.
-/

/-! ## A285110.P2977063465626076435

`A001222(A285323(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285110.P2977063465626076435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285323 n).toNat

end

end A285110.P2977063465626076435

/-! ## A285110.P579157229242994249

`∑{d}[A285323(n), A001221(#)]`
-/

namespace A285110.P579157229242994249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A285110.P579157229242994249

/-! ## A285110.P11083210924526524390

`∑{d}[A285323(n), A338935(#)]`
-/

namespace A285110.P11083210924526524390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A338935 d

end

end A285110.P11083210924526524390

/-! ## A285110.P5842443386061693556

`A000005(A285323(char[1]+n))-1`
-/

namespace A285110.P5842443386061693556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A285323 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - 1

end

end A285110.P5842443386061693556

/-! ## A285110.P9664169426188329547

`A000005(A285323(n)-char[3])-1`
-/

namespace A285110.P9664169426188329547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A285323 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - 1

end

end A285110.P9664169426188329547

/-! ## A285110.P1035077945076003864

`A032741(A285323(sqrt(A000290(n))))`
-/

namespace A285110.P1035077945076003864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A285323 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat).toNat

end

end A285110.P1035077945076003864

/-! ## A285110.P9305056320340554216

`A001221(A000005(A285323(n))!)`
-/

namespace A285110.P9305056320340554216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A000005 (A285323 n).toNat).toNat)

end

end A285110.P9305056320340554216

/-! ## A285110.P4551682741912811119

`A003106(A000005(A285323(n))!)`
-/

namespace A285110.P4551682741912811119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (Nat.factorial (A000005 (A285323 n).toNat).toNat)

end

end A285110.P4551682741912811119

/-! ## A285110.P13807810875337176522

`A008612(2*A000005(A285323(n)))`
-/

namespace A285110.P13807810875337176522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * A000005 (A285323 n).toNat).toNat

end

end A285110.P13807810875337176522

/-! ## A285110.P17954335954106630596

`gcd(A005843(n), A032741(A285323(n)))`
-/

namespace A285110.P17954335954106630596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A032741 (A285323 n).toNat)

end

end A285110.P17954335954106630596

/-! ## A285110.P13770537515469571576

`A004526(A000005(A285323(n)²))`
-/

namespace A285110.P13770537515469571576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (A285323 n ^ 2).toNat).toNat

end

end A285110.P13770537515469571576

/-!
# A285113: Row sums of A285116: a(n) = 2 + Sum_{k=1..(n-1)} (C(n-1,k-1) bitwise-or C(n-1,k)), a(0) = 1, a(1) = 2.

The programs for A285113, there is no canonical definition to state claims against.
-/

/-! ## A285113.P10870888420196011552

`A285114(n)+A285115(n)`
-/

namespace A285113.P10870888420196011552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285114 n + A285115 n

end

end A285113.P10870888420196011552

/-! ## A285113.P5263802983440989472

`A000079(n)-A285115(n)`
-/

namespace A285113.P5263802983440989472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A285115 n

end

end A285113.P5263802983440989472

/-! ## A285113.P7093240252924738435

`A000051(n)-(A285115(n)+1)`
-/

namespace A285113.P7093240252924738435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A285115 n + 1)

end

end A285113.P7093240252924738435

/-! ## A285113.P9747295834920034835

`A000918(n)+2-A285115(n)`
-/

namespace A285113.P9747295834920034835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A285115 n)

end

end A285113.P9747295834920034835

/-! ## A285113.P12856230980387547619

`(A285114(n)+A000079(n))/2`
-/

namespace A285113.P12856230980387547619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285114 n + A000079 n : ℚ) / 2

end

end A285113.P12856230980387547619

/-! ## A285113.P6618489736841653336

`A266607(2*n)-A285115(n)`
-/

namespace A285113.P6618489736841653336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266607 (2 * n) - A285115 n

end

end A285113.P6618489736841653336

/-!
# A285114: Row sums of A285117: a(n) = 2 + Sum_{k=1..(n-1)} C(n-1,k-1) XOR C(n-1,k), a(0) = 1, a(1) = 2.

The programs for A285114, there is no canonical definition to state claims against.
-/

/-! ## A285114.P12562245484525801313

`A285113(n)-A285115(n)`
-/

namespace A285114.P12562245484525801313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285113 n - A285115 n

end

end A285114.P12562245484525801313

/-! ## A285114.P7983740358161126112

`A000079(n)-2*A285115(n)`
-/

namespace A285114.P7983740358161126112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A285115 n

end

end A285114.P7983740358161126112

/-! ## A285114.P1562111467464335820

`∑[A011782(n)]-2*A285115(n)`
-/

namespace A285114.P1562111467464335820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A285115 n

end

end A285114.P1562111467464335820

/-! ## A285114.P12746455114110125126

`record[A122111(n+1)]-2*A285115(n)`
-/

namespace A285114.P12746455114110125126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A285115 n

end

end A285114.P12746455114110125126

/-! ## A285114.P6952519642021566999

`A285113(n)+A285113(n)-A000079(n)`
-/

namespace A285114.P6952519642021566999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285113 n + (A285113 n - A000079 n)

end

end A285114.P6952519642021566999

/-! ## A285114.P7196450385194945955

`2*A285113(n)-A000079(n)`
-/

namespace A285114.P7196450385194945955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285113 n - A000079 n

end

end A285114.P7196450385194945955

/-! ## A285114.P17551191157970798676

`2*A285113(n)-∑[A011782(n)]`
-/

namespace A285114.P17551191157970798676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285113 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285114.P17551191157970798676

/-! ## A285114.P13557262158681352131

`Δ[A000225(n)]-2*A285115(n)`
-/

namespace A285114.P13557262158681352131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A285115 n

end

end A285114.P13557262158681352131

/-! ## A285114.P10938063742118051494

`Δ[A036563(n)]-2*A285115(n)`
-/

namespace A285114.P10938063742118051494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A285115 n

end

end A285114.P10938063742118051494

/-!
# A285115: Row sums of A285118: a(n) = Sum_{k=1..(n-1)} (C(n-1,k-1) bitwise-and C(n-1,k)), a(0) = a(1) = 0.

The programs for A285115, there is no canonical definition to state claims against.
-/

/-! ## A285115.P12642719076571579305

`A000079(n)-A285113(n)`
-/

namespace A285115.P12642719076571579305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A285113 n

end

end A285115.P12642719076571579305

/-! ## A285115.P14737181729899335767

`A285113(n)-A285114(n)`
-/

namespace A285115.P14737181729899335767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285113 n - A285114 n

end

end A285115.P14737181729899335767

/-! ## A285115.P6652494346386227844

`(A000079(n)-A285114(n))/2`
-/

namespace A285115.P6652494346386227844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A285114 n : ℚ) / 2

end

end A285115.P6652494346386227844

/-! ## A285115.P9173097701894074515

`A155559(n)%A285113(n)`
-/

namespace A285115.P9173097701894074515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A285113 n)

end

end A285115.P9173097701894074515

/-! ## A285115.P5846723266698225101

`A171449(n)%A285113(n)`
-/

namespace A285115.P5846723266698225101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A285113 n)

end

end A285115.P5846723266698225101

/-! ## A285115.P5949943365707656129

`A171559(n)%A285113(n)`
-/

namespace A285115.P5949943365707656129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A285113 n)

end

end A285115.P5949943365707656129

/-! ## A285115.P1312262168051208385

`A186949(n)%A285113(n)`
-/

namespace A285115.P1312262168051208385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A285113 n)

end

end A285115.P1312262168051208385

/-!
# A285116: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) OR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and OR is bitwise-OR (A003986).

The programs for A285116, the canonical program `A285116.P11562393058970987769` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285116 has offset 0).

The definition of A285116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285116.P1550207029145968481

`A285118(n)+A285117(n)`
-/

namespace A285116.P1550207029145968481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 n + A285117 n

end

end A285116.P1550207029145968481

namespace A285116

/-- `A285118(n)+A285117(n)` -/
def P1550207029145968481.Spec : Prop :=
  ∀ n, P1550207029145968481.a n = A285116 n

theorem P1550207029145968481.correct : P1550207029145968481.Spec := by
  intro n
  simp only [A285116, Nat.add_sub_cancel, A285116.P1550207029145968481.a, A285116.P11562393058970987769.a, A097805, A097805.P1755176267250853107.a, A285117, A285117.P11572243704474235123.a, A285118, A285118.P16406240334695016361.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285116

/-! ## A285116.P7147474344008161168

`A007318(n)-A285118(n)`
-/

namespace A285116.P7147474344008161168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A285118 n

end

end A285116.P7147474344008161168

namespace A285116

/-- `A007318(n)-A285118(n)` -/
def P7147474344008161168.Spec : Prop :=
  ∀ n, P7147474344008161168.a n = A285116 n

theorem P7147474344008161168.correct : P7147474344008161168.Spec := by
  intro n
  simp only [A285116, Nat.add_sub_cancel, A285116.P7147474344008161168.a, A285116.P11562393058970987769.a, A007318, A007318.P11755526479805562006.a, A097805, A097805.P1755176267250853107.a, A285118, A285118.P16406240334695016361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285116

/-! ## A285116.P7856262432454643162

`(A285117(n)+A007318(n))/2`
-/

namespace A285116.P7856262432454643162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285117 n + A007318 n : ℚ) / 2

end

end A285116.P7856262432454643162

namespace A285116

/-- `(A285117(n)+A007318(n))/2` -/
def P7856262432454643162.Spec : Prop :=
  ∀ n, P7856262432454643162.a n = (A285116 n : ℚ)

theorem P7856262432454643162.correct : P7856262432454643162.Spec := by
  intro n
  simp only [A285116, Nat.add_sub_cancel, A285116.P7856262432454643162.a, A285116.P11562393058970987769.a, A007318, A007318.P11755526479805562006.a, A097805, A097805.P1755176267250853107.a, A285117, A285117.P11572243704474235123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285116

/-! ## A285116.P11562393058970987769

`or(A097805(n+1), A097805(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285116

/-- `or(A097805(n+1), A097805(n))` -/
def P11562393058970987769.Spec : Prop :=
  ∀ n, P11562393058970987769.a n = A285116 n

theorem P11562393058970987769.correct : P11562393058970987769.Spec := by
  intro n
  simp only [A285116]

end A285116

/-! ## A285116.P17726639698909138782

`ceil(A135089(n)/5)-A285118(n)`
-/

namespace A285116.P17726639698909138782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ - A285118 n

end

end A285116.P17726639698909138782

namespace A285116

/-- `ceil(A135089(n)/5)-A285118(n)` -/
def P17726639698909138782.Spec : Prop :=
  ∀ n, P17726639698909138782.a n = A285116 n

end A285116

/-! ## A285116.P17355998911241590267

`A134059(A028310(n))/3-A285118(n)`
-/

namespace A285116.P17355998911241590267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 - (A285118 n : ℚ)

end

end A285116.P17355998911241590267

namespace A285116

/-- `A134059(A028310(n))/3-A285118(n)` -/
def P17355998911241590267.Spec : Prop :=
  ∀ n, P17355998911241590267.a n = (A285116 n : ℚ)

end A285116

/-! ## A285116.P500333487639395114

`C(A003056(n), A002262(n))-A285118(n)`
-/

namespace A285116.P500333487639395114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) - A285118 n

end

end A285116.P500333487639395114

namespace A285116

/-- `C(A003056(n), A002262(n))-A285118(n)` -/
def P500333487639395114.Spec : Prop :=
  ∀ n, P500333487639395114.a n = A285116 n

end A285116

/-! ## A285116.P16312723006470450751

`C(A003056(n), A025581(n))-A285118(n)`
-/

namespace A285116.P16312723006470450751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ) - A285118 n

end

end A285116.P16312723006470450751

namespace A285116

/-- `C(A003056(n), A025581(n))-A285118(n)` -/
def P16312723006470450751.Spec : Prop :=
  ∀ n, P16312723006470450751.a n = A285116 n

end A285116

/-! ## A285116.P363958728043583125

`C(A002024(n+1)-1, A002262(n))-A285118(n)`
-/

namespace A285116.P363958728043583125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002024 (n + 1) - 1).toNat (A002262 n).toNat : ℤ) - A285118 n

end

end A285116.P363958728043583125

namespace A285116

/-- `C(A002024(n+1)-1, A002262(n))-A285118(n)` -/
def P363958728043583125.Spec : Prop :=
  ∀ n, P363958728043583125.a n = A285116 n

end A285116

/-! ## A285116.P18353531256166947761

`C(A003056(n), A002260(n+1)-1)-A285118(n)`
-/

namespace A285116.P18353531256166947761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) - A285118 n

end

end A285116.P18353531256166947761

namespace A285116

/-- `C(A003056(n), A002260(n+1)-1)-A285118(n)` -/
def P18353531256166947761.Spec : Prop :=
  ∀ n, P18353531256166947761.a n = A285116 n

end A285116

/-! ## A285116.P4420887157297354036

`C(A003056(n), A004736(n+1)-1)-A285118(n)`
-/

namespace A285116.P4420887157297354036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) - A285118 n

end

end A285116.P4420887157297354036

namespace A285116

/-- `C(A003056(n), A004736(n+1)-1)-A285118(n)` -/
def P4420887157297354036.Spec : Prop :=
  ∀ n, P4420887157297354036.a n = A285116 n

end A285116

/-! ## A285116.P1403868530353280545

`or(Δ[A308663(n)], A097805(n))`
-/

namespace A285116.P1403868530353280545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A097805 n)

end

end A285116.P1403868530353280545

namespace A285116

/-- `or(Δ[A308663(n)], A097805(n))` -/
def P1403868530353280545.Spec : Prop :=
  ∀ n, P1403868530353280545.a n = A285116 n

end A285116

/-! ## A285116.P12857935192742249960

`or(A135225(n+1), A135225(n))`
-/

namespace A285116.P12857935192742249960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135225 (n + 1)) (A135225 n)

end

end A285116.P12857935192742249960

namespace A285116

/-- `or(A135225(n+1), A135225(n))` -/
def P12857935192742249960.Spec : Prop :=
  ∀ n, P12857935192742249960.a n = A285116 n

end A285116

/-! ## A285116.P16540385544097077713

`or(A071919(A061579(n)), A071919(n))`
-/

namespace A285116.P16540385544097077713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071919 (A061579 n).toNat) (A071919 n)

end

end A285116.P16540385544097077713

namespace A285116

/-- `or(A071919(A061579(n)), A071919(n))` -/
def P16540385544097077713.Spec : Prop :=
  ∀ n, P16540385544097077713.a n = A285116 n

end A285116

/-! ## A285116.P15296704784432443749

`A193554(lt[1, A002260(n+1)])-A285118(n)`
-/

namespace A285116.P15296704784432443749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A285118 n

end

end A285116.P15296704784432443749

namespace A285116

/-- `A193554(lt[1, A002260(n+1)])-A285118(n)` -/
def P15296704784432443749.Spec : Prop :=
  ∀ n, P15296704784432443749.a n = A285116 n

end A285116

/-! ## A285116.P4305526119629623708

`A176348(n)/A176346(n)-A285118(n)`
-/

namespace A285116.P4305526119629623708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) - (A285118 n : ℚ)

end

end A285116.P4305526119629623708

namespace A285116

/-- `A176348(n)/A176346(n)-A285118(n)` -/
def P4305526119629623708.Spec : Prop :=
  ∀ n, P4305526119629623708.a n = (A285116 n : ℚ)

end A285116

/-! ## A285116.P17549092010912714244

`ceil(A134060(n)/3)-A285118(n)`
-/

namespace A285116.P17549092010912714244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ - A285118 n

end

end A285116.P17549092010912714244

namespace A285116

/-- `ceil(A134060(n)/3)-A285118(n)` -/
def P17549092010912714244.Spec : Prop :=
  ∀ n, P17549092010912714244.a n = A285116 n

end A285116

/-! ## A285116.P5139016619720852627

`A134060(A028310(n))-A124927(n)-A285118(n)`
-/

namespace A285116.P5139016619720852627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134060 (A028310 n).toNat - A124927 n - A285118 n

end

end A285116.P5139016619720852627

namespace A285116

/-- `A134060(A028310(n))-A124927(n)-A285118(n)` -/
def P5139016619720852627.Spec : Prop :=
  ∀ n, P5139016619720852627.a n = A285116 n

end A285116

/-!
# A285117: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) XOR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and XOR is bitwise-XOR (A003987).

The programs for A285117, the canonical program `A285117.P11572243704474235123` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285117 has offset 0).

The definition of A285117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285117.P1322661143336476878

`A285116(n)-A285118(n)`
-/

namespace A285117.P1322661143336476878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285116 n - A285118 n

end

end A285117.P1322661143336476878

namespace A285117

/-- `A285116(n)-A285118(n)` -/
def P1322661143336476878.Spec : Prop :=
  ∀ n, P1322661143336476878.a n = A285117 n

theorem P1322661143336476878.correct : P1322661143336476878.Spec := by
  intro n
  simp only [A285117, Nat.add_sub_cancel, A285117.P1322661143336476878.a, A285117.P11572243704474235123.a, A007318, A007318.P11755526479805562006.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285117

/-! ## A285117.P7353039057458441777

`xor(∑[A037012(n)], A097805(n))`
-/

namespace A285117.P7353039057458441777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A097805 n)

end

end A285117.P7353039057458441777

namespace A285117

/-- `xor(∑[A037012(n)], A097805(n))` -/
def P7353039057458441777.Spec : Prop :=
  ∀ n, P7353039057458441777.a n = A285117 n

end A285117

/-! ## A285117.P11572243704474235123

`2*A285116(n)-A007318(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285117

/-- `2*A285116(n)-A007318(n)` -/
def P11572243704474235123.Spec : Prop :=
  ∀ n, P11572243704474235123.a n = A285117 n

theorem P11572243704474235123.correct : P11572243704474235123.Spec := by
  intro n
  simp only [A285117]

end A285117

/-! ## A285117.P10127748895268684649

`A007318(n)-2*A285118(n)`
-/

namespace A285117.P10127748895268684649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 2 * A285118 n

end

end A285117.P10127748895268684649

namespace A285117

/-- `A007318(n)-2*A285118(n)` -/
def P10127748895268684649.Spec : Prop :=
  ∀ n, P10127748895268684649.a n = A285117 n

theorem P10127748895268684649.correct : P10127748895268684649.Spec := by
  intro n
  simp only [A285117, Nat.add_sub_cancel, A285117.P10127748895268684649.a, A285117.P11572243704474235123.a, A007318, A007318.P11755526479805562006.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285117

/-! ## A285117.P4253220220268318466

`xor(A097805(n+1), A097805(n))`
-/

namespace A285117.P4253220220268318466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097805 (n + 1)) (A097805 n)

end

end A285117.P4253220220268318466

namespace A285117

/-- `xor(A097805(n+1), A097805(n))` -/
def P4253220220268318466.Spec : Prop :=
  ∀ n, P4253220220268318466.a n = A285117 n

end A285117

/-! ## A285117.P3068366303629911172

`xor(A285116(A028310(n)), A285118(n))`
-/

namespace A285117.P3068366303629911172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A285116 (A028310 n).toNat) (A285118 n)

end

end A285117.P3068366303629911172

namespace A285117

/-- `xor(A285116(A028310(n)), A285118(n))` -/
def P3068366303629911172.Spec : Prop :=
  ∀ n, P3068366303629911172.a n = A285117 n

end A285117

/-! ## A285117.P9373792696278146464

`xor(A071919(n)-A000007(n), A097805(n))`
-/

namespace A285117.P9373792696278146464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071919 n - A000007 n) (A097805 n)

end

end A285117.P9373792696278146464

namespace A285117

/-- `xor(A071919(n)-A000007(n), A097805(n))` -/
def P9373792696278146464.Spec : Prop :=
  ∀ n, P9373792696278146464.a n = A285117 n

end A285117

/-! ## A285117.P16746216555625169228

`xor(A071919(n)-A080232(n), A071919(n))`
-/

namespace A285117.P16746216555625169228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071919 n - A080232 n) (A071919 n)

end

end A285117.P16746216555625169228

namespace A285117

/-- `xor(A071919(n)-A080232(n), A071919(n))` -/
def P16746216555625169228.Spec : Prop :=
  ∀ n, P16746216555625169228.a n = A285117 n

end A285117

/-! ## A285117.P3344795385519124374

`xor(A134059(n)-A029618(n), A071919(n))`
-/

namespace A285117.P3344795385519124374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134059 n - A029618 n) (A071919 n)

end

end A285117.P3344795385519124374

namespace A285117

/-- `xor(A134059(n)-A029618(n), A071919(n))` -/
def P3344795385519124374.Spec : Prop :=
  ∀ n, P3344795385519124374.a n = A285117 n

end A285117

/-! ## A285117.P5605610328215610294

`xor(A071919(n)%A029618(n), A097805(n))`
-/

namespace A285117.P5605610328215610294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A071919 n) (A029618 n)) (A097805 n)

end

end A285117.P5605610328215610294

namespace A285117

/-- `xor(A071919(n)%A029618(n), A097805(n))` -/
def P5605610328215610294.Spec : Prop :=
  ∀ n, P5605610328215610294.a n = A285117 n

end A285117

/-! ## A285117.P11295411090945751583

`A004277(A285116(n))-A007318(n)`
-/

namespace A285117.P11295411090945751583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285116 n).toNat - A007318 n

end

end A285117.P11295411090945751583

namespace A285117

/-- `A004277(A285116(n))-A007318(n)` -/
def P11295411090945751583.Spec : Prop :=
  ∀ n, P11295411090945751583.a n = A285117 n

end A285117

/-! ## A285117.P15480435079125176666

`A004277(A285116(n))-(A014473(n)+1)`
-/

namespace A285117.P15480435079125176666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285116 n).toNat - (A014473 n + 1)

end

end A285117.P15480435079125176666

namespace A285117

/-- `A004277(A285116(n))-(A014473(n)+1)` -/
def P15480435079125176666.Spec : Prop :=
  ∀ n, P15480435079125176666.a n = A285117 n

end A285117

/-! ## A285117.P16847550207782833590

`A004277(A285116(n))-ceil(A134060(n)/3)`
-/

namespace A285117.P16847550207782833590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285116 n).toNat - ⌈(A134060 n : ℚ) / 3⌉

end

end A285117.P16847550207782833590

namespace A285117

/-- `A004277(A285116(n))-ceil(A134060(n)/3)` -/
def P16847550207782833590.Spec : Prop :=
  ∀ n, P16847550207782833590.a n = A285117 n

end A285117

/-!
# A285118: Triangle read by rows: T(0,n) = T(n,n) = 0; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) AND C(n-1,k), where C(n,k) is binomial coefficient (A007318) & AND is bitwise-AND (A004198).

The programs for A285118, the canonical program `A285118.P16406240334695016361` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285118 has offset 0).

The definition of A285118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285118.P16406240334695016361

`A007318(n)-A285116(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285118

/-- `A007318(n)-A285116(n)` -/
def P16406240334695016361.Spec : Prop :=
  ∀ n, P16406240334695016361.a n = A285118 n

theorem P16406240334695016361.correct : P16406240334695016361.Spec := by
  intro n
  simp only [A285118]

end A285118

/-! ## A285118.P3216992801994801036

`A285116(n)-A285117(n)`
-/

namespace A285118.P3216992801994801036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285116 n - A285117 n

end

end A285118.P3216992801994801036

namespace A285118

/-- `A285116(n)-A285117(n)` -/
def P3216992801994801036.Spec : Prop :=
  ∀ n, P3216992801994801036.a n = A285118 n

theorem P3216992801994801036.correct : P3216992801994801036.Spec := by
  intro n
  simp only [A285118, Nat.add_sub_cancel, A285118.P3216992801994801036.a, A285118.P16406240334695016361.a, A007318, A007318.P11755526479805562006.a, A285116, A285116.P11562393058970987769.a, A285117, A285117.P11572243704474235123.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285118

/-! ## A285118.P3377345497288591226

`A014473(n)+1-A285116(n)`
-/

namespace A285118.P3377345497288591226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (1 - A285116 n)

end

end A285118.P3377345497288591226

namespace A285118

/-- `A014473(n)+1-A285116(n)` -/
def P3377345497288591226.Spec : Prop :=
  ∀ n, P3377345497288591226.a n = A285118 n

theorem P3377345497288591226.correct : P3377345497288591226.Spec := by
  intro n
  simp only [A285118, Nat.add_sub_cancel, A285118.P3377345497288591226.a, A285118.P16406240334695016361.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A285116, A285116.P11562393058970987769.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285118

/-! ## A285118.P17492468026410817628

`(A007318(n)-A285117(n))/2`
-/

namespace A285118.P17492468026410817628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n - A285117 n : ℚ) / 2

end

end A285118.P17492468026410817628

namespace A285118

/-- `(A007318(n)-A285117(n))/2` -/
def P17492468026410817628.Spec : Prop :=
  ∀ n, P17492468026410817628.a n = (A285118 n : ℚ)

theorem P17492468026410817628.correct : P17492468026410817628.Spec := by
  intro n
  simp only [A285118, Nat.add_sub_cancel, A285118.P17492468026410817628.a, A285118.P16406240334695016361.a, A007318, A007318.P11755526479805562006.a, A285116, A285116.P11562393058970987769.a, A285117, A285117.P11572243704474235123.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285118

/-! ## A285118.P15831672354488707697

`and(A097805(n+1), A097805(n))`
-/

namespace A285118.P15831672354488707697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097805 (n + 1)) (A097805 n)

end

end A285118.P15831672354488707697

namespace A285118

/-- `and(A097805(n+1), A097805(n))` -/
def P15831672354488707697.Spec : Prop :=
  ∀ n, P15831672354488707697.a n = A285118 n

end A285118

/-! ## A285118.P2376522970154211307

`ceil(A135089(n)/5)-A285116(n)`
-/

namespace A285118.P2376522970154211307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ - A285116 n

end

end A285118.P2376522970154211307

namespace A285118

/-- `ceil(A135089(n)/5)-A285116(n)` -/
def P2376522970154211307.Spec : Prop :=
  ∀ n, P2376522970154211307.a n = A285118 n

end A285118

/-! ## A285118.P10845253679131535305

`A134059(A028310(n))/3-A285116(n)`
-/

namespace A285118.P10845253679131535305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 - (A285116 n : ℚ)

end

end A285118.P10845253679131535305

namespace A285118

/-- `A134059(A028310(n))/3-A285116(n)` -/
def P10845253679131535305.Spec : Prop :=
  ∀ n, P10845253679131535305.a n = (A285118 n : ℚ)

end A285118

/-! ## A285118.P15419973013514298934

`C(A003056(n), A002262(n))-A285116(n)`
-/

namespace A285118.P15419973013514298934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) - A285116 n

end

end A285118.P15419973013514298934

namespace A285118

/-- `C(A003056(n), A002262(n))-A285116(n)` -/
def P15419973013514298934.Spec : Prop :=
  ∀ n, P15419973013514298934.a n = A285118 n

end A285118

/-! ## A285118.P13843110548669592021

`C(A003056(n), A025581(n))-A285116(n)`
-/

namespace A285118.P13843110548669592021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ) - A285116 n

end

end A285118.P13843110548669592021

namespace A285118

/-- `C(A003056(n), A025581(n))-A285116(n)` -/
def P13843110548669592021.Spec : Prop :=
  ∀ n, P13843110548669592021.a n = A285118 n

end A285118

/-! ## A285118.P1214402778924159148

`C(A003056(n), A103822(n))-A285116(n)`
-/

namespace A285118.P1214402778924159148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A103822 n).toNat : ℤ) - A285116 n

end

end A285118.P1214402778924159148

namespace A285118

/-- `C(A003056(n), A103822(n))-A285116(n)` -/
def P1214402778924159148.Spec : Prop :=
  ∀ n, P1214402778924159148.a n = A285118 n

end A285118

/-! ## A285118.P16383215427189985531

`and(A007318(n)-A135225(n), A135225(n))`
-/

namespace A285118.P16383215427189985531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n - A135225 n) (A135225 n)

end

end A285118.P16383215427189985531

namespace A285118

/-- `and(A007318(n)-A135225(n), A135225(n))` -/
def P16383215427189985531.Spec : Prop :=
  ∀ n, P16383215427189985531.a n = A285118 n

end A285118

/-! ## A285118.P11717543424089630829

`A097805(n+1)+A097805(n)-A285116(n)`
-/

namespace A285118.P11717543424089630829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n - A285116 n

end

end A285118.P11717543424089630829

namespace A285118

/-- `A097805(n+1)+A097805(n)-A285116(n)` -/
def P11717543424089630829.Spec : Prop :=
  ∀ n, P11717543424089630829.a n = A285118 n

end A285118

/-! ## A285118.P3440685703195716980

`C(A002024(n+1)-1, A002262(n))-A285116(n)`
-/

namespace A285118.P3440685703195716980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002024 (n + 1) - 1).toNat (A002262 n).toNat : ℤ) - A285116 n

end

end A285118.P3440685703195716980

namespace A285118

/-- `C(A002024(n+1)-1, A002262(n))-A285116(n)` -/
def P3440685703195716980.Spec : Prop :=
  ∀ n, P3440685703195716980.a n = A285118 n

end A285118

/-! ## A285118.P11537665684078596845

`C(A003056(n), A002260(n+1)-1)-A285116(n)`
-/

namespace A285118.P11537665684078596845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) - A285116 n

end

end A285118.P11537665684078596845

namespace A285118

/-- `C(A003056(n), A002260(n+1)-1)-A285116(n)` -/
def P11537665684078596845.Spec : Prop :=
  ∀ n, P11537665684078596845.a n = A285118 n

end A285118

/-! ## A285118.P6366816501094996323

`C(A003056(n), A004736(n+1)-1)-A285116(n)`
-/

namespace A285118.P6366816501094996323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) - A285116 n

end

end A285118.P6366816501094996323

namespace A285118

/-- `C(A003056(n), A004736(n+1)-1)-A285116(n)` -/
def P6366816501094996323.Spec : Prop :=
  ∀ n, P6366816501094996323.a n = A285118 n

end A285118

/-! ## A285118.P12121642361082489207

`and(Δ[A308663(n)], A097805(n))`
-/

namespace A285118.P12121642361082489207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A097805 n)

end

end A285118.P12121642361082489207

namespace A285118

/-- `and(Δ[A308663(n)], A097805(n))` -/
def P12121642361082489207.Spec : Prop :=
  ∀ n, P12121642361082489207.a n = A285118 n

end A285118

/-! ## A285118.P15612321708970841173

`A193554(lt[1, A124927(n)])-A285116(n)`
-/

namespace A285118.P15612321708970841173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A285116 n

end

end A285118.P15612321708970841173

namespace A285118

/-- `A193554(lt[1, A124927(n)])-A285116(n)` -/
def P15612321708970841173.Spec : Prop :=
  ∀ n, P15612321708970841173.a n = A285118 n

end A285118

/-! ## A285118.P15571744250064983023

`A193554(lt[1, A209518(n)])-A285116(n)`
-/

namespace A285118.P15571744250064983023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A285116 n

end

end A285118.P15571744250064983023

namespace A285118

/-- `A193554(lt[1, A209518(n)])-A285116(n)` -/
def P15571744250064983023.Spec : Prop :=
  ∀ n, P15571744250064983023.a n = A285118 n

end A285118

/-! ## A285118.P6899741713116303666

`A193554(lt[1, A002260(n+1)])-A285116(n)`
-/

namespace A285118.P6899741713116303666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A285116 n

end

end A285118.P6899741713116303666

namespace A285118

/-- `A193554(lt[1, A002260(n+1)])-A285116(n)` -/
def P6899741713116303666.Spec : Prop :=
  ∀ n, P6899741713116303666.a n = A285118 n

end A285118

/-! ## A285118.P9694865856525775328

`and(A071919(n)%A094587(n), A097805(n))`
-/

namespace A285118.P9694865856525775328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A071919 n) (A094587 n)) (A097805 n)

end

end A285118.P9694865856525775328

namespace A285118

/-- `and(A071919(n)%A094587(n), A097805(n))` -/
def P9694865856525775328.Spec : Prop :=
  ∀ n, P9694865856525775328.a n = A285118 n

end A285118

/-!
# A285119: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1)..d(k) are the divisors of n^3.

The programs for A285119, there is no canonical definition to state claims against.
-/

/-! ## A285119.P4742372759838440298

`A056737(A000578(n+1))`
-/

namespace A285119.P4742372759838440298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000578 (n + 1)).toNat

end

end A285119.P4742372759838440298

/-! ## A285119.P4154742363194791810

`A056737(Δ[∑[n]²])`
-/

namespace A285119.P4154742363194791810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285119.P4154742363194791810

/-! ## A285119.P4802087769316211318

`A056737(floor(sqrt((n+1)^6+3)))-C(2, n+2)`
-/

namespace A285119.P4802087769316211318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (Nat.sqrt ((n + 1) ^ 6 + 3)) - (Nat.choose 2 (n + 2) : ℤ)

end

end A285119.P4802087769316211318

/-! ## A285119.P2164103365380707673

`A004526(2*A056737((n+1)^3))`
-/

namespace A285119.P2164103365380707673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A056737 ((n + 1) ^ 3)).toNat

end

end A285119.P2164103365380707673

/-! ## A285119.P6592423979072147434

`A056737(∑[A003215(n)])%(n+1)²`
-/

namespace A285119.P6592423979072147434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ((n + 1) ^ 2 : ℤ)

end

end A285119.P6592423979072147434

/-!
# A285120: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1),..,d(k) are the divisors of n(n+1)/2.

The programs for A285120, there is no canonical definition to state claims against.
-/

/-! ## A285120.P14244017620463718354

`A056737(A000217(n+1))`
-/

namespace A285120.P14244017620463718354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000217 (n + 1)).toNat

end

end A285120.P14244017620463718354

/-! ## A285120.P14407519525964666341

`A078936(n+1)-A078935(n+1)`
-/

namespace A285120.P14407519525964666341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) - A078935 (n + 1)

end

end A285120.P14407519525964666341

/-! ## A285120.P1514688542582421849

`A078936(n+1)+A078936(n+1)-A078934(n+1)`
-/

namespace A285120.P1514688542582421849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) + (A078936 (n + 1) - A078934 (n + 1))

end

end A285120.P1514688542582421849

/-! ## A285120.P17329388444175874580

`A078934(n+1)-A078935(n+1)-A078935(n+1)`
-/

namespace A285120.P17329388444175874580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078934 (n + 1) - A078935 (n + 1) - A078935 (n + 1)

end

end A285120.P17329388444175874580

/-! ## A285120.P6179686491697729375

`A056737(∑[n+1])`
-/

namespace A285120.P6179686491697729375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285120.P6179686491697729375

/-! ## A285120.P10309959932341149752

`A056737(C(n+2, 2))%(n+2)`
-/

namespace A285120.P10309959932341149752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (Nat.choose (n + 2) 2)) (n + 2 : ℤ)

end

end A285120.P10309959932341149752

/-! ## A285120.P11448292025053090348

`∑[n+1]%(A033677(∑[n+1])+1)-1`
-/

namespace A285120.P11448292025053090348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A033677 (∑ j ∈ Finset.range (n + 1), f2 j) + 1) - 1

end

end A285120.P11448292025053090348

/-! ## A285120.P5147791597823993843

`A002264(3*A056737(C(n+2, 2)))`
-/

namespace A285120.P5147791597823993843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A056737 (Nat.choose (n + 2) 2)).toNat

end

end A285120.P5147791597823993843

/-! ## A285120.P15157598842070914801

`A000096(n)%(A033677(∑[n+1])+1)`
-/

namespace A285120.P15157598842070914801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A033677 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A285120.P15157598842070914801

/-! ## A285120.P15040985979747355086

`A033677(∑[n+1])-A033676(∑[n+1])`
-/

namespace A285120.P15040985979747355086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∑ j ∈ Finset.range (n + 1), f1 j) - A033676 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A285120.P15040985979747355086

/-! ## A285120.P16730658159787018031

`A033677(A000217(n+1))-A078935(n+1)`
-/

namespace A285120.P16730658159787018031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A000217 (n + 1)).toNat - A078935 (n + 1)

end

end A285120.P16730658159787018031

/-! ## A285120.P13550553566028829353

`A078936(n+1)-A033676(A000217(n+1))`
-/

namespace A285120.P13550553566028829353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1) - A033676 (A000217 (n + 1)).toNat

end

end A285120.P13550553566028829353

/-!
# A285121: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1),..,d(k) are the divisors of n*(n+1)*(n+2)/6.

The programs for A285121, there is no canonical definition to state claims against.
-/

/-! ## A285121.P13774791736083014439

`A056737(A000292(n+1))`
-/

namespace A285121.P13774791736083014439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000292 (n + 1)).toNat

end

end A285121.P13774791736083014439

/-! ## A285121.P8261577783059350740

`A056737(C(n+3, 3))`
-/

namespace A285121.P8261577783059350740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (Nat.choose (n + 3) 3)

end

end A285121.P8261577783059350740

/-! ## A285121.P984740344887967284

`A056737(∑[∑[n+1]])`
-/

namespace A285121.P984740344887967284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285121.P984740344887967284

/-! ## A285121.P5668279158086091722

`A306257(A210440(n+1))`
-/

namespace A285121.P5668279158086091722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (A210440 (n + 1)).toNat

end

end A285121.P5668279158086091722

/-!
# A285122: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1),..,d(k) are the divisors of n^2+1.

The programs for A285122, there is no canonical definition to state claims against.
-/

/-! ## A285122.P7636603319393714956

`A056737(A002522(n+1))`
-/

namespace A285122.P7636603319393714956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A002522 (n + 1)).toNat

end

end A285122.P7636603319393714956

/-! ## A285122.P1596701099332858614

`A259036(n+1)-A152823(n+1)`
-/

namespace A285122.P1596701099332858614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - A152823 (n + 1)

end

end A285122.P1596701099332858614

/-! ## A285122.P7815275293948329444

`A259036(n+1)-floor(A007491(n+1)/A259036(n+1))`
-/

namespace A285122.P7815275293948329444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - ⌊(A007491 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ)⌋

end

end A285122.P7815275293948329444

/-! ## A285122.P11996923160640654898

`A002522(n+1)%(A259036(n+1)+1)-1`
-/

namespace A285122.P11996923160640654898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (n + 1)) (A259036 (n + 1) + 1) - 1

end

end A285122.P11996923160640654898

/-! ## A285122.P3164639462852778756

`A002522(n+1)/A152823(n+1)-A152823(n+1)`
-/

namespace A285122.P3164639462852778756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A152823 (n + 1) : ℚ) - (A152823 (n + 1) : ℚ)

end

end A285122.P3164639462852778756

/-! ## A285122.P2051403199225869021

`A259036(n+1)-A001281(A005893(n+1)/A259036(n+1))`
-/

namespace A285122.P2051403199225869021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - A001281 (SequenceMachineLib.roundAway ((A005893 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ))).toNat

end

end A285122.P2051403199225869021

/-! ## A285122.P15781170724710831022

`A259036(n+1)-A004526(A005893(n+1)/A259036(n+1))`
-/

namespace A285122.P15781170724710831022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - A004526 (SequenceMachineLib.roundAway ((A005893 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ))).toNat

end

end A285122.P15781170724710831022

/-! ## A285122.P13797282144721098202

`A259036(A004526(2*n+3))-((n+1)²+1)/A259036(n+1)`
-/

namespace A285122.P13797282144721098202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259036 (A004526 (2 * n + 3)).toNat : ℚ) - ((n + 1) ^ 2 + 1 : ℚ) / (A259036 (n + 1) : ℚ)

end

end A285122.P13797282144721098202

/-! ## A285122.P711618285245392149

`A163984((n+1)²)`
-/

namespace A285122.P711618285245392149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163984 ((n + 1) ^ 2)

end

end A285122.P711618285245392149

/-! ## A285122.P16905823566999162320

`A060794((n+1)²+1)`
-/

namespace A285122.P16905823566999162320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060794 ((n + 1) ^ 2 + 1)

end

end A285122.P16905823566999162320

/-! ## A285122.P1616922771310909610

`A082119((n+1)²+1)`
-/

namespace A285122.P1616922771310909610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082119 ((n + 1) ^ 2 + 1)

end

end A285122.P1616922771310909610

/-! ## A285122.P4546930924612492223

`abs(A163984(∑[2*n+1]))`
-/

namespace A285122.P4546930924612492223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163984 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A285122.P4546930924612492223

/-!
# A285123: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1),..,d(k) are the divisors of prime(n) - 1.

The programs for A285123, there is no canonical definition to state claims against.
-/

/-! ## A285123.P190868234735358361

`A056737(eq[1, ∑{e}[n+2, #]]+1)`
-/

namespace A285123.P190868234735358361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A285123.P190868234735358361

/-! ## A285123.P11548898405673457187

`A056737(record[A037225(n)])`
-/

namespace A285123.P11548898405673457187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P11548898405673457187

/-! ## A285123.P157687885601672526

`A056737(A006093(n+1))`
-/

namespace A285123.P157687885601672526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A006093 (n + 1)).toNat

end

end A285123.P157687885601672526

/-! ## A285123.P17824584650368246969

`A056737(eq[1, A013632(n)])`
-/

namespace A285123.P17824584650368246969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285123.P17824584650368246969

/-! ## A285123.P15239606234073240693

`A056737(Δ[A007504(n)]-1)`
-/

namespace A285123.P15239606234073240693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (n + 1) - f1 n - 1).toNat

end

end A285123.P15239606234073240693

/-! ## A285123.P4258184251302342925

`A056737(record[A000010(n+1)])`
-/

namespace A285123.P4258184251302342925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P4258184251302342925

/-! ## A285123.P10543738407600816816

`A056737(record[A002322(n+1)])`
-/

namespace A285123.P10543738407600816816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P10543738407600816816

/-! ## A285123.P9009655830619643282

`A056737(record[A003958(n+1)])`
-/

namespace A285123.P9009655830619643282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P9009655830619643282

/-! ## A285123.P16837659504696470560

`A056737(record[A011773(n+1)])`
-/

namespace A285123.P16837659504696470560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P16837659504696470560

/-! ## A285123.P3104848660687998536

`A056737(record[A051698(n)-1])`
-/

namespace A285123.P3104848660687998536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P3104848660687998536

/-! ## A285123.P17792816729772199866

`A056737(record[A056737(n+2)])`
-/

namespace A285123.P17792816729772199866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285123.P17792816729772199866

/-! ## A285123.P5229293653768892977

`A056737(A000040(n+1)-1)`
-/

namespace A285123.P5229293653768892977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000040 (n + 1) - 1).toNat

end

end A285123.P5229293653768892977

/-! ## A285123.P12922106810090240151

`A056737(A008578(n+2)-1)`
-/

namespace A285123.P12922106810090240151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A008578 (n + 2) - 1).toNat

end

end A285123.P12922106810090240151

/-! ## A285123.P4273654603124342686

`A056737(A008864(n+1)-2)`
-/

namespace A285123.P4273654603124342686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A008864 (n + 1) - 2).toNat

end

end A285123.P4273654603124342686

/-! ## A285123.P10432464927183812923

`A056737(A028815(n+1)-2)`
-/

namespace A285123.P10432464927183812923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A028815 (n + 1) - 2).toNat

end

end A285123.P10432464927183812923

/-! ## A285123.P766630343082228480

`A056737(A299763(n+2)-2)`
-/

namespace A285123.P766630343082228480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A299763 (n + 2) - 2).toNat

end

end A285123.P766630343082228480

/-! ## A285123.P1811908886657944849

`A056737(eq[1, A001222(n+1)])`
-/

namespace A285123.P1811908886657944849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285123.P1811908886657944849

/-! ## A285123.P1522631263358211203

`A056737(eq[2, A000005(n+1)])`
-/

namespace A285123.P1522631263358211203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285123.P1522631263358211203

/-! ## A285123.P4138303083791201783

`A056737(eq[n, A000010(n+1)])`
-/

namespace A285123.P4138303083791201783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285123.P4138303083791201783

/-! ## A285123.P10086948799446401094

`A056737(sqrt(A110833(n+1))-2)`
-/

namespace A285123.P10086948799446401094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ) - 2)).toNat

end

end A285123.P10086948799446401094

/-!
# A285124: Min(|d(k+1-i) - d(i)|, for i = 1..k), where d(1),..,d(k) are the divisors of prime(n) + 1.

The programs for A285124, there is no canonical definition to state claims against.
-/

/-! ## A285124.P5955546337617859761

`A056737(A008864(n+1))`
-/

namespace A285124.P5955546337617859761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A008864 (n + 1)).toNat

end

end A285124.P5955546337617859761

/-! ## A285124.P14044656909989577303

`A056737(A028815(n+1))`
-/

namespace A285124.P14044656909989577303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A028815 (n + 1)).toNat

end

end A285124.P14044656909989577303

/-! ## A285124.P14952331593783179374

`A056737(A299763(n+2))`
-/

namespace A285124.P14952331593783179374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A299763 (n + 2)).toNat

end

end A285124.P14952331593783179374

/-! ## A285124.P2985472109520669819

`A056737(sqrt(A110833(n+1)))`
-/

namespace A285124.P2985472109520669819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat

end

end A285124.P2985472109520669819

/-! ## A285124.P17405230876066295902

`A056737(Δ[A007504(n)]+1)`
-/

namespace A285124.P17405230876066295902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (n + 1) - f1 n + 1).toNat

end

end A285124.P17405230876066295902

/-! ## A285124.P1285683137610708369

`A056737(record[A051698(n)+1])`
-/

namespace A285124.P1285683137610708369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P1285683137610708369

/-! ## A285124.P13686823878470102471

`A056737(record[A037225(n)+2])`
-/

namespace A285124.P13686823878470102471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P13686823878470102471

/-! ## A285124.P12018886538759918561

`A056737(record[A063655(n+2)])`
-/

namespace A285124.P12018886538759918561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P12018886538759918561

/-! ## A285124.P3352531051664973882

`A056737(A000040(n+1)+1)`
-/

namespace A285124.P3352531051664973882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000040 (n + 1) + 1).toNat

end

end A285124.P3352531051664973882

/-! ## A285124.P14109928311301849844

`A056737(A006093(n+1)+2)`
-/

namespace A285124.P14109928311301849844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A006093 (n + 1) + 2).toNat

end

end A285124.P14109928311301849844

/-! ## A285124.P13351205018334492908

`A056737(A008578(n+2)+1)`
-/

namespace A285124.P13351205018334492908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A008578 (n + 2) + 1).toNat

end

end A285124.P13351205018334492908

/-! ## A285124.P7684347393196318497

`A056737(eq[1, A013632(n)]+2)`
-/

namespace A285124.P7684347393196318497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A285124.P7684347393196318497

/-! ## A285124.P10462910314304701746

`A056737(record[A000010(n+1)+2])`
-/

namespace A285124.P10462910314304701746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P10462910314304701746

/-! ## A285124.P6862080115227276844

`A056737(record[A002322(n+1)+2])`
-/

namespace A285124.P6862080115227276844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P6862080115227276844

/-! ## A285124.P4285610566700258420

`A056737(record[A003958(n+1)+2])`
-/

namespace A285124.P4285610566700258420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P4285610566700258420

/-! ## A285124.P5511363719968886583

`A056737(record[A011773(n+1)+2])`
-/

namespace A285124.P5511363719968886583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285124.P5511363719968886583

/-! ## A285124.P7841171358711201792

`A056737(eq[1, A001222(n+1)]+2)`
-/

namespace A285124.P7841171358711201792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A285124.P7841171358711201792

/-! ## A285124.P1974907082317059425

`A056737(eq[2, A000005(n+1)]+2)`
-/

namespace A285124.P1974907082317059425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A285124.P1974907082317059425

/-! ## A285124.P1053141472341203182

`A056737(eq[n, A000010(n+1)]+2)`
-/

namespace A285124.P1053141472341203182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A285124.P1053141472341203182

/-! ## A285124.P12420990975740771461

`A056737(lt[n, A000010(n+2)]+3)`
-/

namespace A285124.P12420990975740771461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A285124.P12420990975740771461

/-!
# A285125: 0-limiting word of the morphism 0->10, 1-> 0000.

The programs for A285125, there is no canonical definition to state claims against.
-/

/-! ## A285125.P5917235507198793800

`char[A285127(n+1)-1]`
-/

namespace A285125.P5917235507198793800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285125.P5917235507198793800

/-! ## A285125.P5100627846923362111

`A285177(A158416(n))`
-/

namespace A285125.P5100627846923362111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A158416 n).toNat

end

end A285125.P5100627846923362111

/-! ## A285125.P8891598567588100399

`A285177(A038459(n+1))`
-/

namespace A285125.P8891598567588100399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A038459 (n + 1)).toNat

end

end A285125.P8891598567588100399

/-! ## A285125.P4789055641019240933

`A285177(A142150(n)+1)`
-/

namespace A285125.P4789055641019240933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A142150 n + 1).toNat

end

end A285125.P4789055641019240933

/-! ## A285125.P16826342090936997811

`A285177(A166514(n)+1)`
-/

namespace A285125.P16826342090936997811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A166514 n + 1).toNat

end

end A285125.P16826342090936997811

/-! ## A285125.P602377919372805198

`A285177(A152271(n+1))`
-/

namespace A285125.P602377919372805198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A152271 (n + 1)).toNat

end

end A285125.P602377919372805198

/-! ## A285125.P11587806026904871882

`A285177(A057979(n+1)+1)`
-/

namespace A285125.P11587806026904871882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A057979 (n + 1) + 1).toNat

end

end A285125.P11587806026904871882

/-! ## A285125.P15061954197003079069

`A285177(A057979(n+3))`
-/

namespace A285125.P15061954197003079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A057979 (n + 3)).toNat

end

end A285125.P15061954197003079069

/-!
# A285126: Positions of 0 in A285125; complement of A285127.

The programs for A285126, there is no canonical definition to state claims against.
-/

/-! ## A285126.P2991938032258622410

`comp[A285127(n+1)-1]+1`
-/

namespace A285126.P2991938032258622410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285126.P2991938032258622410

/-! ## A285126.P14903826306158347799

`ceil((A285405(n+1)+n)/2)`
-/

namespace A285126.P14903826306158347799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285405 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A285126.P14903826306158347799

/-! ## A285126.P3830079372185819587

`comp[A285404(2*n+1)-n-1]+1`
-/

namespace A285126.P3830079372185819587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285404 (2 * n + 1) - (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285126.P3830079372185819587

/-! ## A285126.P10632363700314201969

`floor((A285130(n+1)+2*n+1)/4)+1`
-/

namespace A285126.P10632363700314201969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285130 (n + 1) + (2 * n + 1 : ℤ) : ℚ) / 4⌋ + 1

end

end A285126.P10632363700314201969

/-! ## A285126.P1294047231551072249

`(A285405(n+1)+A103889(A103889(n+1)))/2`
-/

namespace A285126.P1294047231551072249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285405 (n + 1) + A103889 (A103889 (n + 1)).toNat : ℚ) / 2

end

end A285126.P1294047231551072249

/-! ## A285126.P1863170371939097947

`lt[A285125(n+1), 1]+1`
-/

namespace A285126.P1863170371939097947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285126.P1863170371939097947

/-! ## A285126.P2022148386956102694

`a(n-1)+A285125(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285126.P2022148386956102694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285125 (a (n - 1) + 1).toNat + 1)

end

end A285126.P2022148386956102694

/-! ## A285126.P15224628854612720195

`lt[n*A285125(A028310(n)), n]`
-/

namespace A285126.P15224628854612720195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285125 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285126.P15224628854612720195

/-! ## A285126.P17715309910364023141

`lt[char[A285127(n+1)], A057427(n)]`
-/

namespace A285126.P17715309910364023141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285126.P17715309910364023141

/-! ## A285126.P12515742534944043658

`A065262(A285405(n+1)+1+n)`
-/

namespace A285126.P12515742534944043658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A285405 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285126.P12515742534944043658

/-! ## A285126.P6238104083997266402

`A103889(A285405(n+1)+n)/2`
-/

namespace A285126.P6238104083997266402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103889 (A285405 (n + 1) + (n : ℤ)).toNat : ℚ) / 2

end

end A285126.P6238104083997266402

/-! ## A285126.P11292457362526280706

`eq[A285125(n+1), A285125(A285127(n+1)+1)]+1`
-/

namespace A285126.P11292457362526280706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A285127 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285126.P11292457362526280706

/-!
# A285127: Positions of 1 in A285125; complement of A285126.

The programs for A285127, there is no canonical definition to state claims against.
-/

/-! ## A285127.P5423603223619046256

`2*A285402(n+1)-1`
-/

namespace A285127.P5423603223619046256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285402 (n + 1) - 1

end

end A285127.P5423603223619046256

/-! ## A285127.P1507233804737642942

`A004273(A285402(n+1))`
-/

namespace A285127.P1507233804737642942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285402 (n + 1)).toNat

end

end A285127.P1507233804737642942

/-! ## A285127.P4086841052437665798

`A005408(A285402(n+1)-1)`
-/

namespace A285127.P4086841052437665798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285402 (n + 1) - 1).toNat

end

end A285127.P4086841052437665798

/-! ## A285127.P12177619664580330428

`A285404(Δ[n²])-n`
-/

namespace A285127.P12177619664580330428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285127.P12177619664580330428

/-! ## A285127.P3123988490941118405

`record[A285404(n+1)-A028242(n+1)]`
-/

namespace A285127.P3123988490941118405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285404 (n + 1) - A028242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285127.P3123988490941118405

/-! ## A285127.P3831054935649344254

`eq[1, A285125(n+1)]+1`
-/

namespace A285127.P3831054935649344254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285127.P3831054935649344254

/-! ## A285127.P14241051939562305978

`lt[0, A285125(n+2)]+2`
-/

namespace A285127.P14241051939562305978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A285127.P14241051939562305978

/-! ## A285127.P15544508629410207838

`lt[0, A285125(A028310(n))]`
-/

namespace A285127.P15544508629410207838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285127.P15544508629410207838

/-!
# A285128: 1-limiting word of the morphism 0->10, 1-> 0000.

The programs for A285128, there is no canonical definition to state claims against.
-/

/-! ## A285128.P1759916099426381966

`char[A285130(n+1)-1]`
-/

namespace A285128.P1759916099426381966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285130 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285128.P1759916099426381966

/-! ## A285128.P9060769177504476099

`char[2*n*A285403(n+1)]`
-/

namespace A285128.P9060769177504476099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A285403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285128.P9060769177504476099

/-! ## A285128.P11616432564029776116

`A285403(A038459(n+1))`
-/

namespace A285128.P11616432564029776116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (A038459 (n + 1)).toNat

end

end A285128.P11616432564029776116

/-! ## A285128.P7383538904550390067

`and(A000034(n), A285403(A289439(n+2)))`
-/

namespace A285128.P7383538904550390067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A285403 (A289439 (n + 2)).toNat)

end

end A285128.P7383538904550390067

/-! ## A285128.P16889196725623437709

`A000720(Δ[comp[A285401(2*n+1)]])`
-/

namespace A285128.P16889196725623437709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285128.P16889196725623437709

/-! ## A285128.P3855669663090389977

`A098457(A272007(n+1))`
-/

namespace A285128.P3855669663090389977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098457 (A272007 (n + 1)).toNat

end

end A285128.P3855669663090389977

/-! ## A285128.P3894179469173090164

`A209198(A373160(n+2))`
-/

namespace A285128.P3894179469173090164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209198 (A373160 (n + 2)).toNat

end

end A285128.P3894179469173090164

/-!
# A285129: Positions of 0 in A285128; complement of A285130.

The programs for A285129, there is no canonical definition to state claims against.
-/

/-! ## A285129.P17790575675683254786

`round((A285402(n+1)+n)/2)`
-/

namespace A285129.P17790575675683254786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285402 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A285129.P17790575675683254786

/-! ## A285129.P5035851585706630397

`A130747(A285402(n+1)-n)+n`
-/

namespace A285129.P5035851585706630397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A285402 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A285129.P5035851585706630397

/-! ## A285129.P4269755939508041207

`eq[0, (n+1)*A285128(n+1)]+1`
-/

namespace A285129.P4269755939508041207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285129.P4269755939508041207

/-! ## A285129.P9446984317454351881

`eq[0, A285128(n+2)/(n+1)]+2`
-/

namespace A285129.P9446984317454351881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285128 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A285129.P9446984317454351881

/-! ## A285129.P4967551668860742814

`a(n-1)+A285128(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A285129.P4967551668860742814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A285128 (a (n - 1) + 1).toNat + 1)

end

end A285129.P4967551668860742814

/-! ## A285129.P15139814255563730915

`∑[2-A285177(A285402(n+1)-1)]`
-/

namespace A285129.P15139814255563730915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A285177 (A285402 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285129.P15139814255563730915

/-! ## A285129.P15253332658826076335

`A130747(A285402(n+1)+n)`
-/

namespace A285129.P15253332658826076335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A285402 (n + 1) + (n : ℤ)).toNat

end

end A285129.P15253332658826076335

/-! ## A285129.P3247964622022571701

`A065262(A285402(n+1)+1+n)`
-/

namespace A285129.P3247964622022571701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A285402 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285129.P3247964622022571701

/-! ## A285129.P3794856326923313167

`A308217(A285402(n+1)-1+n)`
-/

namespace A285129.P3794856326923313167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A285402 (n + 1) - 1 + (n : ℤ)).toNat

end

end A285129.P3794856326923313167

/-! ## A285129.P4176665661527908784

`A308217(A285404(2*n+1)-ceil(A285127(n+1)/2))`
-/

namespace A285129.P4176665661527908784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A285404 (2 * n + 1) - ⌈(A285127 (n + 1) : ℚ) / 2⌉).toNat

end

end A285129.P4176665661527908784

/-! ## A285129.P8634230617637418901

`A308217(A285404(2*n+1)-ceil((A285404(2*n+1)-n)/2))`
-/

namespace A285129.P8634230617637418901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A285404 (2 * n + 1) - ⌈(A285404 (2 * n + 1) - (n : ℤ) : ℚ) / 2⌉).toNat

end

end A285129.P8634230617637418901

/-!
# A285130: Positions of 1 in A285128; complement of A285139.

The programs for A285130, there is no canonical definition to state claims against.
-/

/-! ## A285130.P8957449806958201990

`2*A285405(n+1)-1`
-/

namespace A285130.P8957449806958201990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285405 (n + 1) - 1

end

end A285130.P8957449806958201990

/-! ## A285130.P12561453122899172914

`A016825(A285405(n+1)-1)/2`
-/

namespace A285130.P12561453122899172914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A285405 (n + 1) - 1).toNat : ℚ) / 2

end

end A285130.P12561453122899172914

/-! ## A285130.P967310339598139928

`record[(2*n+1)*A285403(n+1)]`
-/

namespace A285130.P967310339598139928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A285403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285130.P967310339598139928

/-! ## A285130.P793697041133721962

`A004273(A285405(n+1))`
-/

namespace A285130.P793697041133721962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285405 (n + 1)).toNat

end

end A285130.P793697041133721962

/-! ## A285130.P9999173052041499579

`A285401(Δ[n²])-n`
-/

namespace A285130.P9999173052041499579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285130.P9999173052041499579

/-! ## A285130.P10816080345623206068

`A285401(2*(n+1))-1-n`
-/

namespace A285130.P10816080345623206068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (2 * (n + 1)) - 1 - (n : ℤ)

end

end A285130.P10816080345623206068

/-! ## A285130.P3818305691424836639

`record[A285401(n+1)-A006370(n)]`
-/

namespace A285130.P3818305691424836639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (n + 1) - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285130.P3818305691424836639

/-! ## A285130.P3365016365919709097

`record[A285401(A026741(n+1))]-n`
-/

namespace A285130.P3365016365919709097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A285130.P3365016365919709097

/-! ## A285130.P1853267593837434908

`record[(n+1)*A285128(n+1)]`
-/

namespace A285130.P1853267593837434908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285130.P1853267593837434908

/-! ## A285130.P7052774724633512690

`A103889(2*A285405(n+1))`
-/

namespace A285130.P7052774724633512690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (2 * A285405 (n + 1)).toNat

end

end A285130.P7052774724633512690

/-! ## A285130.P15447802658991829579

`A057174(lt[n, A057174(n)*A285128(n+1)])`
-/

namespace A285130.P15447802658991829579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 n * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285130.P15447802658991829579

/-! ## A285130.P12629546494260648255

`eq[A080513(A007814(n+1)), A285128(n+1)]+1`
-/

namespace A285130.P12629546494260648255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A007814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285130.P12629546494260648255

/-! ## A285130.P15491536128424241335

`A057174(lt[A285142(n+1)/2, A285128(n+1)])`
-/

namespace A285130.P15491536128424241335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285142 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A285130.P15491536128424241335

/-! ## A285130.P2277275777471003506

`lt[A285128(n+1), A285128(A285142(n+1)+n)]`
-/

namespace A285130.P2277275777471003506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (A285142 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285130.P2277275777471003506

/-!
# A285131: Expansion of Product_{k>=0} 1/(1-x^(4*k+3))^(4*k+3).

The programs for A285131, there is no canonical definition to state claims against.
-/

/-! ## A285131.P6763968906509664507

`abs(A285311(n))`
-/

namespace A285131.P6763968906509664507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285311 n|

end

end A285131.P6763968906509664507

/-! ## A285131.P1819647080938237679

`A033999(n)*A285311(n)`
-/

namespace A285131.P1819647080938237679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A285311 n

end

end A285131.P1819647080938237679

/-! ## A285131.P15135817145870676306

`gcd(A000038(n), A285311(n))`
-/

namespace A285131.P15135817145870676306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285311 n)

end

end A285131.P15135817145870676306

/-! ## A285131.P3782571497885297907

`lcm(A020985(n), A285311(n))`
-/

namespace A285131.P3782571497885297907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285311 n)

end

end A285131.P3782571497885297907

/-! ## A285131.P2178370943956490502

`A262811(n)/A284628(n)*A285311(n)`
-/

namespace A285131.P2178370943956490502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A284628 n : ℚ) * (A285311 n : ℚ)

end

end A285131.P2178370943956490502

/-!
# A285133: 0-limiting word of the morphism 0->10, 1-> 0001.

The programs for A285133, there is no canonical definition to state claims against.
-/

/-! ## A285133.P11200841417085045020

`log2(gcd(2, A285138(n+1)))`
-/

namespace A285133.P11200841417085045020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285138 (n + 1)) : ℝ)

end

end A285133.P11200841417085045020

/-! ## A285133.P9757779523428254870

`char[A285135(n+1)-1]`
-/

namespace A285133.P9757779523428254870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285135 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285133.P9757779523428254870

/-! ## A285133.P8450935726336401031

`A020639(A020639(A285138(n+1))+1)-2`
-/

namespace A285133.P8450935726336401031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (A285138 (n + 1)).toNat + 1).toNat - 2

end

end A285133.P8450935726336401031

/-! ## A285133.P5465230669150337312

`A026920(Δ[A285138(n+1)])`
-/

namespace A285133.P5465230669150337312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026920 (f1 (n + 1) - f1 n).toNat

end

end A285133.P5465230669150337312

/-! ## A285133.P3917401586334846736

`A285196(Δ[A285138(n+1)])`
-/

namespace A285133.P3917401586334846736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285196 (f1 (n + 1) - f1 n).toNat

end

end A285133.P3917401586334846736

/-! ## A285133.P2681522587531656941

`A292605(Δ[A285138(n+1)])`
-/

namespace A285133.P2681522587531656941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292605 (f1 (n + 1) - f1 n).toNat

end

end A285133.P2681522587531656941

/-! ## A285133.P3193663195526290992

`1-A081603(Δ[A285138(n+1)])`
-/

namespace A285133.P3193663195526290992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081603 (f1 (n + 1) - f1 n).toNat

end

end A285133.P3193663195526290992

/-! ## A285133.P7030259558836761384

`A131531(Δ[A285138(n+1)]+2)²`
-/

namespace A285133.P7030259558836761384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (f1 (n + 1) - f1 n + 2).toNat ^ 2

end

end A285133.P7030259558836761384

/-! ## A285133.P9531520637036722161

`A131531(2*Δ[A285138(n+1)]+1)`
-/

namespace A285133.P9531520637036722161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (2 * (f1 (n + 1) - f1 n) + 1).toNat

end

end A285133.P9531520637036722161

/-! ## A285133.P6537431828216669003

`2-A307668(Δ[A285138(n+1)]+2)`
-/

namespace A285133.P6537431828216669003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A307668 (f1 (n + 1) - f1 n + 2).toNat

end

end A285133.P6537431828216669003

/-! ## A285133.P9172379350999797186

`val(A285137(A285138(n+2)-A285138(n+1)+1), 4)`
-/

namespace A285133.P9172379350999797186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285137 (A285138 (n + 2) - A285138 (n + 1) + 1).toNat).toNat 4

end

end A285133.P9172379350999797186

/-! ## A285133.P2609647457138486184

`A285128(A285141(n+3)-A285138(n+1))`
-/

namespace A285133.P2609647457138486184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (A285141 (n + 3) - A285138 (n + 1)).toNat

end

end A285133.P2609647457138486184

/-! ## A285133.P10357600057603444868

`and(1, eq[n, n*A285136(n+1)])`
-/

namespace A285133.P10357600057603444868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285133.P10357600057603444868

/-! ## A285133.P2361738216401302919

`record[(n+1)*A285136(n+2)]%2`
-/

namespace A285133.P2361738216401302919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A285133.P2361738216401302919

/-! ## A285133.P17486603434013829933

`A059841(A285138(n+1))`
-/

namespace A285133.P17486603434013829933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285138 (n + 1)).toNat

end

end A285133.P17486603434013829933

/-! ## A285133.P3128307992686053400

`A284851(A285138(n+1)-2*A284851(n+1))`
-/

namespace A285133.P3128307992686053400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A285138 (n + 1) - 2 * A284851 (n + 1)).toNat

end

end A285133.P3128307992686053400

/-! ## A285133.P6270134987454789394

`A284851(A285138(n+1)-A284851(n+1)-A284851(n+1))`
-/

namespace A285133.P6270134987454789394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A285138 (n + 1) - A284851 (n + 1) - A284851 (n + 1)).toNat

end

end A285133.P6270134987454789394

/-!
# A285134: Positions of 0 in A285133; complement of A285135.

The programs for A285134, there is no canonical definition to state claims against.
-/

/-! ## A285134.P7921155312308607754

`eq[0, A285133(n+1)]+1`
-/

namespace A285134.P7921155312308607754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285134.P7921155312308607754

/-! ## A285134.P1087513555321722466

`record[(n+1)*A285138(n+1)%2]`
-/

namespace A285134.P1087513555321722466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A285138 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P1087513555321722466

/-! ## A285134.P13169570205450137030

`record[n+1-A001318(n)*A285133(n+1)]`
-/

namespace A285134.P13169570205450137030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001318 n * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P13169570205450137030

/-! ## A285134.P16831529106169931054

`record[n+1-A087475(n)*A285133(n+1)]`
-/

namespace A285134.P16831529106169931054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A087475 n * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P16831529106169931054

/-! ## A285134.P12954243527537507037

`record[n+1-A285133(n+1)*A338086(n)]`
-/

namespace A285134.P12954243527537507037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285133 (n + 1) * A338086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P12954243527537507037

/-! ## A285134.P17786146921651554953

`record[n+1-A000720(n+1)*A285133(n+1)]`
-/

namespace A285134.P17786146921651554953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (n + 1) * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P17786146921651554953

/-! ## A285134.P10931662887723521976

`record[n+1-A006470(n+1)*A285133(n+1)]`
-/

namespace A285134.P10931662887723521976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006470 (n + 1) * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P10931662887723521976

/-! ## A285134.P2928439073203176860

`record[n+1-A014132(n+1)*A285133(n+1)]`
-/

namespace A285134.P2928439073203176860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014132 (n + 1) * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P2928439073203176860

/-! ## A285134.P2794468878283996950

`record[n+1-A135177(n+1)*A285133(n+1)]`
-/

namespace A285134.P2794468878283996950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135177 (n + 1) * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P2794468878283996950

/-! ## A285134.P309265542330741971

`record[n+1-A270024(n)*A285133(n+1)]`
-/

namespace A285134.P309265542330741971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A270024 n * A285133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285134.P309265542330741971

/-!
# A285135: Positions of 1 in A285133; complement of A285134.

The programs for A285135, there is no canonical definition to state claims against.
-/

/-! ## A285135.P1243544528302489494

`eq[1, A285133(n+1)]+1`
-/

namespace A285135.P1243544528302489494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285135.P1243544528302489494

/-! ## A285135.P3648707756227583868

`record[(n+4)*A285133(n+4)]`
-/

namespace A285135.P3648707756227583868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A285133 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285135.P3648707756227583868

/-! ## A285135.P7667913409122294353

`lt[0, xor(2, -(A285138(n+1)%2))]+1`
-/

namespace A285135.P7667913409122294353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (-Int.tmod (A285138 (n + 1)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285135.P7667913409122294353

/-! ## A285135.P1660515716792022197

`eq[2, A020639(A285138(n+1))]+1`
-/

namespace A285135.P1660515716792022197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285135.P1660515716792022197

/-! ## A285135.P11616573778887800232

`eq[1, A285136(2*(n+1))]-n`
-/

namespace A285135.P11616573778887800232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285135.P11616573778887800232

/-! ## A285135.P13968328553797651684

`eq[1, A285133(A233583(n+1))]`
-/

namespace A285135.P13968328553797651684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285135.P13968328553797651684

/-!
# A285136: 1-limiting word of the morphism 0->10, 1-> 0001.

The programs for A285136, there is no canonical definition to state claims against.
-/

/-! ## A285136.P1248356113234366729

`log2(gcd(2, A285135(n+1)))`
-/

namespace A285136.P1248356113234366729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A285135 (n + 1)) : ℝ)

end

end A285136.P1248356113234366729

/-! ## A285136.P2581000123717865591

`char[A285138(n+1)-1]`
-/

namespace A285136.P2581000123717865591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285136.P2581000123717865591

/-! ## A285136.P4951208317143833303

`(A014486(n)+A285135(n+1)-1)%2`
-/

namespace A285136.P4951208317143833303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014486 n + (A285135 (n + 1) - 1)) 2

end

end A285136.P4951208317143833303

/-! ## A285136.P6082830701166747764

`A063524((n+1)^(A285135(n+1)%2))`
-/

namespace A285136.P6082830701166747764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.tmod (A285135 (n + 1)) 2 : ℤ))).toNat

end

end A285136.P6082830701166747764

/-! ## A285136.P12616757276023026337

`(A243501(n+1)+A285135(n+1)-1)%2`
-/

namespace A285136.P12616757276023026337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243501 (n + 1) + (A285135 (n + 1) - 1)) 2

end

end A285136.P12616757276023026337

/-! ## A285136.P12174299742356500573

`(6*A000005(n+1)+A285135(n+1)-1)%2`
-/

namespace A285136.P12174299742356500573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A000005 (n + 1) + (A285135 (n + 1) - 1)) 2

end

end A285136.P12174299742356500573

/-! ## A285136.P17837702194837528764

`val(A020639(A285135(n+1)), 2)^A007318(n)`
-/

namespace A285136.P17837702194837528764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A020639 (A285135 (n + 1)).toNat).toNat 2 : ℚ) ^ (A007318 n : ℤ)

end

end A285136.P17837702194837528764

/-! ## A285136.P6411918465249285088

`A124540(Δ[A285135(n+1)])`
-/

namespace A285136.P6411918465249285088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (f1 (n + 1) - f1 n).toNat

end

end A285136.P6411918465249285088

/-! ## A285136.P1230719264707641125

`A285196(Δ[A285135(n+1)])`
-/

namespace A285136.P1230719264707641125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285196 (f1 (n + 1) - f1 n).toNat

end

end A285136.P1230719264707641125

/-! ## A285136.P7145357832471993987

`A245168(Δ[A285135(n+1)]+1)`
-/

namespace A285136.P7145357832471993987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245168 (f1 (n + 1) - f1 n + 1).toNat

end

end A285136.P7145357832471993987

/-! ## A285136.P5000438691544763174

`A285073(Δ[A285135(n+1)]+10)`
-/

namespace A285136.P5000438691544763174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (f1 (n + 1) - f1 n + 10).toNat

end

end A285136.P5000438691544763174

/-! ## A285136.P15348658383543599497

`A285196(A285135(n+2)-A285135(n+1))`
-/

namespace A285136.P15348658383543599497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285196 (A285135 (n + 2) - A285135 (n + 1)).toNat

end

end A285136.P15348658383543599497

/-! ## A285136.P11497131905094178245

`val(A285137(A285135(n+2)-A285135(n+1)+1), 4)`
-/

namespace A285136.P11497131905094178245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285137 (A285135 (n + 2) - A285135 (n + 1) + 1).toNat).toNat 4

end

end A285136.P11497131905094178245

/-! ## A285136.P10853155974380983336

`A059841(A285135(n+1))`
-/

namespace A285136.P10853155974380983336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A285135 (n + 1)).toNat

end

end A285136.P10853155974380983336

/-! ## A285136.P4657492977107007676

`val(A020639(eq[1, A285133(n+1)]+1), 2)`
-/

namespace A285136.P4657492977107007676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A285136.P4657492977107007676

/-! ## A285136.P192708900891487059

`A097805(Δ[eq[1, A285133(n+1)]]+1)`
-/

namespace A285136.P192708900891487059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A285136.P192708900891487059

/-! ## A285136.P12506340367618914307

`val(A020639(A285135(n+1)²), 2)`
-/

namespace A285136.P12506340367618914307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A285135 (n + 1) ^ 2).toNat).toNat 2

end

end A285136.P12506340367618914307

/-!
# A285137: Positions of 0 in A285136; complement of A285138.

The programs for A285137, there is no canonical definition to state claims against.
-/

/-! ## A285137.P16680744797940845656

`eq[0, A285136(n+1)]+1`
-/

namespace A285137.P16680744797940845656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285137.P16680744797940845656

/-! ## A285137.P16982288737642064549

`A020725(eq[0, A285136(n+1)])`
-/

namespace A285137.P16982288737642064549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285137.P16982288737642064549

/-! ## A285137.P2561201085594527289

`eq[char[A285138(n+1)], A000007(n)]`
-/

namespace A285137.P2561201085594527289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285137.P2561201085594527289

/-! ## A285137.P15210782826836032795

`eq[char[A285138(n+1)], A000038(n)]`
-/

namespace A285137.P15210782826836032795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285137.P15210782826836032795

/-! ## A285137.P5151051163886851888

`eq[0, A285136(A065033(2*n))]`
-/

namespace A285137.P5151051163886851888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285137.P5151051163886851888

/-!
# A285138: Positions of 1 in A285136; complement of A285137.

The programs for A285138, there is no canonical definition to state claims against.
-/

/-! ## A285138.P5370318826468275903

`eq[1, A285136(n+1)]+1`
-/

namespace A285138.P5370318826468275903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285138.P5370318826468275903

/-! ## A285138.P3963047047489341225

`eq[2, A020639(A285135(n+1))]+1`
-/

namespace A285138.P3963047047489341225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285135 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285138.P3963047047489341225

/-! ## A285138.P5023800792789702026

`record[A000027(n+1)*A285136(n+1)]`
-/

namespace A285138.P5023800792789702026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285138.P5023800792789702026

/-! ## A285138.P12026025876558505879

`record[A059893(A059893(n+1))*A285136(n+1)]`
-/

namespace A285138.P12026025876558505879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A059893 (n + 1)).toNat * A285136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285138.P12026025876558505879

/-! ## A285138.P13838143077785315708

`record[A008619(n)*A285136(A008619(n))]`
-/

namespace A285138.P13838143077785315708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285136 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285138.P13838143077785315708

/-! ## A285138.P12693973770508877481

`eq[1, A285133(2*(n+1))]-n`
-/

namespace A285138.P12693973770508877481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285138.P12693973770508877481

/-! ## A285138.P16705334604989956371

`record[A008620(n)*A285136(A008620(n))]`
-/

namespace A285138.P16705334604989956371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A285136 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285138.P16705334604989956371

/-! ## A285138.P8694416047424771208

`record[A156689(n+1)*A285136(A156689(n+1))]`
-/

namespace A285138.P8694416047424771208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (n + 1) * A285136 (A156689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285138.P8694416047424771208

/-!
# A285139: 0-limiting word of the morphism 0->10, 1-> 0010.

The programs for A285139, there is no canonical definition to state claims against.
-/

/-! ## A285139.P14150212185213000202

`char[A285141(n+1)-1]`
-/

namespace A285139.P14150212185213000202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P14150212185213000202

/-! ## A285139.P15060051715977682839

`char[2*(A285420(n+1)-1)]`
-/

namespace A285139.P15060051715977682839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285420 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P15060051715977682839

/-! ## A285139.P1605837944810996458

`char[A284489(n+1)-1+n]`
-/

namespace A285139.P1605837944810996458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P1605837944810996458

/-! ## A285139.P4934865470284045973

`char[A284491(n+1)-(n+1)]`
-/

namespace A285139.P4934865470284045973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P4934865470284045973

/-! ## A285139.P17005095791887592743

`char[A285422(n+1)-(n+1)]`
-/

namespace A285139.P17005095791887592743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P17005095791887592743

/-! ## A285139.P11748572784052969407

`A285418(n-gcd(n, ∑[n])+1)`
-/

namespace A285139.P11748572784052969407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 1).toNat

end

end A285139.P11748572784052969407

/-! ## A285139.P1428715659564733223

`A285418(A158416(n))`
-/

namespace A285139.P1428715659564733223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (A158416 n).toNat

end

end A285139.P1428715659564733223

/-! ## A285139.P2427317930471197457

`A285418(A142150(n)+1)`
-/

namespace A285139.P2427317930471197457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (A142150 n + 1).toNat

end

end A285139.P2427317930471197457

/-! ## A285139.P17690568596885967111

`char[xor(A284489(n+1)+n, A063524(2*n)+1)]`
-/

namespace A285139.P17690568596885967111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284489 (n + 1) + (n : ℤ)) (A063524 (2 * n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P17690568596885967111

/-! ## A285139.P15387612094059029081

`log2(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P15387612094059029081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A285139.P15387612094059029081

/-! ## A285139.P6307443764300588289

`A285418(A152271(n+1))`
-/

namespace A285139.P6307443764300588289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (A152271 (n + 1)).toNat

end

end A285139.P6307443764300588289

/-! ## A285139.P5804236903548630030

`A001222(Δ[comp[A284491(n+1)]])`
-/

namespace A285139.P5804236903548630030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P5804236903548630030

/-! ## A285139.P1939584084746636428

`A001222(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P1939584084746636428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P1939584084746636428

/-! ## A285139.P8285030002484313898

`A074080(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P8285030002484313898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P8285030002484313898

/-! ## A285139.P10650108487494459651

`A156259(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P10650108487494459651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P10650108487494459651

/-! ## A285139.P1824427611426435384

`A265859(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P1824427611426435384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P1824427611426435384

/-! ## A285139.P1512553517795080888

`A285418(Δ[comp[A285422(n+1)]])`
-/

namespace A285139.P1512553517795080888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285139.P1512553517795080888

/-! ## A285139.P12582456233265617938

`char[comp[A284492(n+1)-1]+1-A000027(n+1)]`
-/

namespace A285139.P12582456233265617938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ) - A000027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285139.P12582456233265617938

/-! ## A285139.P9085781146780822825

`1-A284490(abs(2-A284492(n+1))+1)`
-/

namespace A285139.P9085781146780822825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284490 (|2 - A284492 (n + 1)| + 1).toNat

end

end A285139.P9085781146780822825

/-!
# A285140: Positions of 0 in A285139; complement of A285141.

The programs for A285140, there is no canonical definition to state claims against.
-/

/-! ## A285140.P3136205194817942428

`∑[A284487(n+1)+1]`
-/

namespace A285140.P3136205194817942428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285140.P3136205194817942428

/-! ## A285140.P2678282114743664122

`∑[char[A284489(n+1)-1]+1]`
-/

namespace A285140.P2678282114743664122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285140.P2678282114743664122

/-! ## A285140.P7102433947774173831

`lt[A285139(n+1), 1]+1`
-/

namespace A285140.P7102433947774173831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285140.P7102433947774173831

/-! ## A285140.P7468840440986246709

`comp[Δ[n²]*A285418(n+1)]`
-/

namespace A285140.P7468840440986246709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A285418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285140.P7468840440986246709

/-! ## A285140.P2018047530282556611

`a(n-1)+A285139(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285140.P2018047530282556611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285139 (a (n - 1) + 1).toNat + 1)

end

end A285140.P2018047530282556611

/-! ## A285140.P15319225316102434151

`A285423(a(n-1)+1)+n-a(n-1)` with `a(0)=1`
-/

namespace A285140.P15319225316102434151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285423 (a (n - 1) + 1).toNat + (n : ℤ) - a (n - 1)

end

end A285140.P15319225316102434151

/-! ## A285140.P11906750033075643441

`record[gcd(n+1, A059268(n)*A285139(n+1))]`
-/

namespace A285140.P11906750033075643441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A059268 n * A285139 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285140.P11906750033075643441

/-! ## A285140.P11817090079118156656

`eq[char[A284489(n+1)+n], A000038(n)]`
-/

namespace A285140.P11817090079118156656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285140.P11817090079118156656

/-!
# A285141: Positions of 1 in A285139; complement of A285140.

The programs for A285141, there is no canonical definition to state claims against.
-/

/-! ## A285141.P13994660728882629121

`A284489(n+1)+n`
-/

namespace A285141.P13994660728882629121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) + (n : ℤ)

end

end A285141.P13994660728882629121

/-! ## A285141.P11990012862917609576

`A285422(n+1)-n`
-/

namespace A285141.P11990012862917609576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1) - (n : ℤ)

end

end A285141.P11990012862917609576

/-! ## A285141.P6745086057150485643

`2*A285420(n+1)-1`
-/

namespace A285141.P6745086057150485643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285420 (n + 1) - 1

end

end A285141.P6745086057150485643

/-! ## A285141.P2326957261436272940

`2*(A284589(n+1)-n)-1`
-/

namespace A285141.P2326957261436272940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284589 (n + 1) - (n : ℤ)) - 1

end

end A285141.P2326957261436272940

/-! ## A285141.P5007730682884631412

`comp[A284488(n+1)-1]+n+1`
-/

namespace A285141.P5007730682884631412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)

end

end A285141.P5007730682884631412

/-! ## A285141.P3519726989390995759

`A004273(A285420(n+1))`
-/

namespace A285141.P3519726989390995759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285420 (n + 1)).toNat

end

end A285141.P3519726989390995759

/-! ## A285141.P3008940606501554872

`A004277(∑[A285142(n+1)+1])-1`
-/

namespace A285141.P3008940606501554872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A285141.P3008940606501554872

/-! ## A285141.P14428215751778519426

`eq[1, A284487(A028310(n))]+n`
-/

namespace A285141.P14428215751778519426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A285141.P14428215751778519426

/-! ## A285141.P9506416912662513875

`A284491(Δ[n²])-n-n`
-/

namespace A285141.P9506416912662513875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) - (n : ℤ)

end

end A285141.P9506416912662513875

/-! ## A285141.P17355948202715983081

`A284491(2*n+1)-2*n`
-/

namespace A285141.P17355948202715983081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (2 * n + 1) - (2 * n : ℤ)

end

end A285141.P17355948202715983081

/-! ## A285141.P9469246590002616928

`A284773(A284589(n+1))-n`
-/

namespace A285141.P9469246590002616928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A284589 (n + 1)).toNat - (n : ℤ)

end

end A285141.P9469246590002616928

/-! ## A285141.P14449228358714836670

`lt[char[4*n+1], A285139(n+1)]+1`
-/

namespace A285141.P14449228358714836670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A285141.P14449228358714836670

/-! ## A285141.P12927469776225182399

`A004525(∑[lcm(2, A285142(n+1)+2)])+n`
-/

namespace A285141.P12927469776225182399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A285142 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A285141.P12927469776225182399

/-!
# A285142: 1-limiting word of the morphism 0->10, 1->0010.

The programs for A285142, there is no canonical definition to state claims against.
-/

/-! ## A285142.P4730702192716853179

`char[A285144(n+1)-1]`
-/

namespace A285142.P4730702192716853179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P4730702192716853179

/-! ## A285142.P11181264898736678475

`1-char[A285143(n+1)-1]`
-/

namespace A285142.P11181264898736678475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285143 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285142.P11181264898736678475

/-! ## A285142.P9486160200056800988

`char[2*(A285423(n+1)-1)]`
-/

namespace A285142.P9486160200056800988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285423 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P9486160200056800988

/-! ## A285142.P18130609752148718106

`char[A284488(n+1)-(n+1)]`
-/

namespace A285142.P18130609752148718106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P18130609752148718106

/-! ## A285142.P5773238194147220586

`char[A284492(n+1)-1+n]`
-/

namespace A285142.P5773238194147220586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P5773238194147220586

/-! ## A285142.P2052253360518016870

`char[2*n*A285421(n+1)]`
-/

namespace A285142.P2052253360518016870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A285421 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P2052253360518016870

/-! ## A285142.P7212256718957357693

`1-char[∑[A284490(n+1)]+n]`
-/

namespace A285142.P7212256718957357693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285142.P7212256718957357693

/-! ## A285142.P13597914620852447469

`Δ[comp[A285419(n+1)]]-1`
-/

namespace A285142.P13597914620852447469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A285142.P13597914620852447469

/-! ## A285142.P7783792110404008226

`char[comp[A284489(n+1)]-n]`
-/

namespace A285142.P7783792110404008226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285142.P7783792110404008226

/-! ## A285142.P9704850773414104697

`A001222(Δ[comp[A284488(n+1)]])`
-/

namespace A285142.P9704850773414104697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P9704850773414104697

/-! ## A285142.P4135419020685364305

`A001222(Δ[comp[A285419(n+1)]])`
-/

namespace A285142.P4135419020685364305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P4135419020685364305

/-! ## A285142.P438180880275020923

`A074080(Δ[comp[A284488(n+1)]])`
-/

namespace A285142.P438180880275020923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P438180880275020923

/-! ## A285142.P6408834139048474789

`A074080(Δ[comp[A285419(n+1)]])`
-/

namespace A285142.P6408834139048474789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P6408834139048474789

/-! ## A285142.P6858194022986940139

`A265859(Δ[comp[A285419(n+1)]])`
-/

namespace A285142.P6858194022986940139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P6858194022986940139

/-! ## A285142.P5044805714629630228

`A285418(Δ[comp[A285419(n+1)]])`
-/

namespace A285142.P5044805714629630228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P5044805714629630228

/-! ## A285142.P16714255637402422028

`A001222(Δ[comp[A285144(n+1)+n]])`
-/

namespace A285142.P16714255637402422028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285142.P16714255637402422028

/-! ## A285142.P12999000252267141190

`A000035((n+1)*A285421(A004526(n)+1))`
-/

namespace A285142.P12999000252267141190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) * A285421 (A004526 n + 1).toNat).toNat

end

end A285142.P12999000252267141190

/-! ## A285142.P9336174807980488925

`1-A285418(A285420(n+1)-1)`
-/

namespace A285142.P9336174807980488925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285418 (A285420 (n + 1) - 1).toNat

end

end A285142.P9336174807980488925

/-! ## A285142.P9819915086163140898

`1-A285418(eq[1, A285418(n+1)])`
-/

namespace A285142.P9819915086163140898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285142.P9819915086163140898

/-! ## A285142.P16267019096536496588

`1-A285139(A285141(n+1)-2)`
-/

namespace A285142.P16267019096536496588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285139 (A285141 (n + 1) - 2).toNat

end

end A285142.P16267019096536496588

/-!
# A285143: Positions of 0 in A285142; complement of A285144.

The programs for A285143, there is no canonical definition to state claims against.
-/

/-! ## A285143.P750209182732650964

`∑[A284490(n+1)+1]`
-/

namespace A285143.P750209182732650964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285143.P750209182732650964

/-! ## A285143.P12767518594558119921

`comp[A285144(n+1)-1]+1`
-/

namespace A285143.P12767518594558119921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285143.P12767518594558119921

/-! ## A285143.P7134034975607809965

`∑[char[A284492(n+1)-1]+1]`
-/

namespace A285143.P7134034975607809965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285143.P7134034975607809965

/-! ## A285143.P4190808907470381899

`∑[A284588(A008619(n))+1]`
-/

namespace A285143.P4190808907470381899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (A008619 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285143.P4190808907470381899

/-! ## A285143.P9165363684231434454

`eq[0, A285142(n+2)]+2`
-/

namespace A285143.P9165363684231434454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285143.P9165363684231434454

/-! ## A285143.P2193086140307683800

`lt[A285142(n+1), 1]+1`
-/

namespace A285143.P2193086140307683800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285143.P2193086140307683800

/-! ## A285143.P1661248607346197189

`eq[1, Δ[A284489(n+1)]]+2`
-/

namespace A285143.P1661248607346197189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285143.P1661248607346197189

/-! ## A285143.P10537295153636726187

`eq[1, Δ[A285420(n+1)]]+2`
-/

namespace A285143.P10537295153636726187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285143.P10537295153636726187

/-! ## A285143.P4277321861938157905

`eq[2, Δ[A285141(n+1)]]+2`
-/

namespace A285143.P4277321861938157905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285143.P4277321861938157905

/-! ## A285143.P11092507796857719677

`eq[0, A285142(A028310(n))]`
-/

namespace A285143.P11092507796857719677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285143.P11092507796857719677

/-!
# A285144: Positions of 1 in A285142; complement of A285143.

The programs for A285144, there is no canonical definition to state claims against.
-/

/-! ## A285144.P16197358979741279741

`A284492(n+1)+n`
-/

namespace A285144.P16197358979741279741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) + (n : ℤ)

end

end A285144.P16197358979741279741

/-! ## A285144.P12251504719285836030

`A285419(n+1)-n`
-/

namespace A285144.P12251504719285836030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - (n : ℤ)

end

end A285144.P12251504719285836030

/-! ## A285144.P9308035552458641006

`2*A285423(n+1)-1`
-/

namespace A285144.P9308035552458641006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285423 (n + 1) - 1

end

end A285144.P9308035552458641006

/-! ## A285144.P4676244001434384791

`2*(A284534(n+1)-n)-1`
-/

namespace A285144.P4676244001434384791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284534 (n + 1) - (n : ℤ)) - 1

end

end A285144.P4676244001434384791

/-! ## A285144.P15391965860390237301

`2*(∑[A285139(n+1)]+n)+1`
-/

namespace A285144.P15391965860390237301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) + 1

end

end A285144.P15391965860390237301

/-! ## A285144.P10766333618550024938

`∑[A285139(n+1)]+A285423(n+1)+n`
-/

namespace A285144.P10766333618550024938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A285423 (n + 1) + (n : ℤ))

end

end A285144.P10766333618550024938

/-! ## A285144.P11676168490797798349

`2*eq[1, A285421(n+1)]+1`
-/

namespace A285144.P11676168490797798349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285144.P11676168490797798349

/-! ## A285144.P4696563760108364016

`A004273(A285423(n+1))`
-/

namespace A285144.P4696563760108364016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285423 (n + 1)).toNat

end

end A285144.P4696563760108364016

/-! ## A285144.P15839790302654568007

`eq[1, A284490(n+1)]+1+n`
-/

namespace A285144.P15839790302654568007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A285144.P15839790302654568007

/-! ## A285144.P2636899937091714711

`A284488(Δ[n²])-n-n`
-/

namespace A285144.P2636899937091714711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) - (n : ℤ)

end

end A285144.P2636899937091714711

/-! ## A285144.P18240481399752245995

`A284488(2*n+1)-2*n`
-/

namespace A285144.P18240481399752245995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (2 * n + 1) - (2 * n : ℤ)

end

end A285144.P18240481399752245995

/-! ## A285144.P17777638815726114869

`lt[0, A285142(n+1)]+1`
-/

namespace A285144.P17777638815726114869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285144.P17777638815726114869

/-! ## A285144.P13506776061004880422

`eq[n, A028310(n)*A285142(A028310(n))]`
-/

namespace A285144.P13506776061004880422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285142 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285144.P13506776061004880422

/-!
# A285145: Number of n X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285145, there is no canonical definition to state claims against.
-/

/-! ## A285145.P3965624080763799009

`A285152(∑[4*n]+1)`
-/

namespace A285145.P3965624080763799009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285145.P3965624080763799009

/-! ## A285145.P15748920472894084263

`A054977(n)*A285152(A001844(n))`
-/

namespace A285145.P15748920472894084263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A285152 (A001844 n).toNat

end

end A285145.P15748920472894084263

/-! ## A285145.P9519127437727614733

`A285152(A001844(n))%A003923(n)`
-/

namespace A285145.P9519127437727614733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285152 (A001844 n).toNat) (A003923 n)

end

end A285145.P9519127437727614733

/-! ## A285145.P2865969892715828632

`A285152(A001844(n))+A008683(8*n+4)`
-/

namespace A285145.P2865969892715828632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A285145.P2865969892715828632

/-! ## A285145.P7020517054873473086

`C(2, A000040(n+1))!*A285152(A001844(n))`
-/

namespace A285145.P7020517054873473086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000040 (n + 1)).toNat) : ℤ) * A285152 (A001844 n).toNat

end

end A285145.P7020517054873473086

/-!
# A285146: Number of n X 2 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285146, there is no canonical definition to state claims against.
-/

/-! ## A285146.P13558800274241269700

`A284449(2*(n+1))`
-/

namespace A285146.P13558800274241269700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (2 * (n + 1))

end

end A285146.P13558800274241269700

/-! ## A285146.P13887300853226396312

`record[A284449(and(n, n+1))]`
-/

namespace A285146.P13887300853226396312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285146.P13887300853226396312

/-! ## A285146.P4570463748440749108

`record[A284449(n)/(-1)^n]`
-/

namespace A285146.P4570463748440749108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284449 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285146.P4570463748440749108

/-! ## A285146.P807642534647290832

`record[A284449(A006257(n)+1)]`
-/

namespace A285146.P807642534647290832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285146.P807642534647290832

/-! ## A285146.P11364533195068374968

`record[A284449(1-A283971(n)+n)]`
-/

namespace A285146.P11364533195068374968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (1 - A283971 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285146.P11364533195068374968

/-! ## A285146.P9019267124208578410

`record[A284449(A283971(2*n)-n)]`
-/

namespace A285146.P9019267124208578410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (A283971 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285146.P9019267124208578410

/-!
# A285147: Number of n X 3 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285147, there is no canonical definition to state claims against.
-/

/-! ## A285147.P16017877079339989017

`A285152(∑[n+3]+1)`
-/

namespace A285147.P16017877079339989017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285147.P16017877079339989017

/-! ## A285147.P5855381219706768511

`record[gcd(A055300(n+2), A285152(n+1))]`
-/

namespace A285147.P5855381219706768511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A285152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285147.P5855381219706768511

/-! ## A285147.P9687501522882520801

`A285152(A034856(n+2))%A056279(3*n+5)`
-/

namespace A285147.P9687501522882520801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285152 (A034856 (n + 2)).toNat) (A056279 (3 * n + 5))

end

end A285147.P9687501522882520801

/-! ## A285147.P718504561867274047

`A285152(A034856(n+2))%A119065(n+1)`
-/

namespace A285147.P718504561867274047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285152 (A034856 (n + 2)).toNat) (A119065 (n + 1))

end

end A285147.P718504561867274047

/-!
# A285148: Number of n X 4 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285148, there is no canonical definition to state claims against.
-/

/-! ## A285148.P3276816260476872459

`A285152(A141214(n+1))`
-/

namespace A285148.P3276816260476872459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A141214 (n + 1)).toNat

end

end A285148.P3276816260476872459

/-! ## A285148.P1177464508757221398

`A285152(A027379(n+2))`
-/

namespace A285148.P1177464508757221398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A027379 (n + 2)).toNat

end

end A285148.P1177464508757221398

/-! ## A285148.P2213346584217774604

`A285152(A055998(n+2))`
-/

namespace A285148.P2213346584217774604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A055998 (n + 2)).toNat

end

end A285148.P2213346584217774604

/-! ## A285148.P10167020454421655860

`A285152(A155212(n)+5)`
-/

namespace A285148.P10167020454421655860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A155212 n + 5).toNat

end

end A285148.P10167020454421655860

/-! ## A285148.P2243282283686601551

`A285152(A052905(n+1)+2)`
-/

namespace A285148.P2243282283686601551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A052905 (n + 1) + 2).toNat

end

end A285148.P2243282283686601551

/-!
# A285149: Number of n X 5 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285149, there is no canonical definition to state claims against.
-/

/-! ## A285149.P5256066773180695910

`A285152(Δ[A264443(n)])`
-/

namespace A285149.P5256066773180695910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (f1 (n + 1) - f1 n).toNat

end

end A285149.P5256066773180695910

/-! ## A285149.P10380569606839839457

`A285152(A056115(n)+11)`
-/

namespace A285149.P10380569606839839457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A056115 n + 11).toNat

end

end A285149.P10380569606839839457

/-! ## A285149.P14785681228513045041

`A285152(eq[4, A193592(n)])`
-/

namespace A285149.P14785681228513045041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285149.P14785681228513045041

/-! ## A285149.P3619592879948230760

`A285152(eq[8, A209439(n)])`
-/

namespace A285149.P3619592879948230760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285149.P3619592879948230760

/-! ## A285149.P11639264148189954043

`A285152(Δ[A023545(n+1)])`
-/

namespace A285149.P11639264148189954043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (f1 (n + 1) - f1 n).toNat

end

end A285149.P11639264148189954043

/-!
# A285150: Number of n X 6 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285150, there is no canonical definition to state claims against.
-/

/-! ## A285150.P6187387286158515309

`A285152(A052905(n+3))`
-/

namespace A285150.P6187387286158515309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A052905 (n + 3)).toNat

end

end A285150.P6187387286158515309

/-! ## A285150.P9622713770813816806

`A285152(eq[3, A219347(n)])`
-/

namespace A285150.P9622713770813816806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285150.P9622713770813816806

/-! ## A285150.P5835453062353337926

`A285152(eq[5, A193592(n)])`
-/

namespace A285150.P5835453062353337926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285150.P5835453062353337926

/-! ## A285150.P3653511072263077320

`A285152(A055999(n+3)+1)`
-/

namespace A285150.P3653511072263077320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A055999 (n + 3) + 1).toNat

end

end A285150.P3653511072263077320

/-! ## A285150.P7025825206737329100

`A285152(eq[6, A200370(n+1)])`
-/

namespace A285150.P7025825206737329100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285150.P7025825206737329100

/-!
# A285151: Number of n X 7 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285151, there is no canonical definition to state claims against.
-/

/-! ## A285151.P6565067634299530296

`A285152(A055999(n+4))`
-/

namespace A285151.P6565067634299530296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A055999 (n + 4)).toNat

end

end A285151.P6565067634299530296

/-! ## A285151.P11106785887871901266

`A285152(eq[4, A219347(n)])`
-/

namespace A285151.P11106785887871901266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285151.P11106785887871901266

/-! ## A285151.P879444904145153307

`A285152(eq[6, A193592(n)])`
-/

namespace A285151.P879444904145153307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285151.P879444904145153307

/-! ## A285151.P4531607241823010785

`A285152(Δ[A023551(n+2)])`
-/

namespace A285151.P4531607241823010785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (f1 (n + 1) - f1 n).toNat

end

end A285151.P4531607241823010785

/-! ## A285151.P8474367255659412512

`A285152(eq[7, A200370(n+1)])`
-/

namespace A285151.P8474367255659412512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285151.P8474367255659412512

/-!
# A285153: Number of 2 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285153, there is no canonical definition to state claims against.
-/

/-! ## A285153.P3374744968357386619

`A285152(∑[n+1]+2)`
-/

namespace A285153.P3374744968357386619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285153.P3374744968357386619

/-! ## A285153.P7374765040551548772

`A285152(A022856(n+5))%A002409(n)`
-/

namespace A285153.P7374765040551548772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285152 (A022856 (n + 5)).toNat) (A002409 n)

end

end A285153.P7374765040551548772

/-! ## A285153.P17270256595047293536

`A285152(A022856(n+5))+A000007(n+4)`
-/

namespace A285153.P17270256595047293536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A022856 (n + 5)).toNat + A000007 (n + 4)

end

end A285153.P17270256595047293536

/-!
# A285154: Number of 3 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285154, there is no canonical definition to state claims against.
-/

/-! ## A285154.P12661263977163485634

`A285152(∑[n+2]+4)`
-/

namespace A285154.P12661263977163485634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285154.P12661263977163485634

/-! ## A285154.P483547196792800061

`A285152(A167614(n+1))+A011736(n)`
-/

namespace A285154.P483547196792800061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A167614 (n + 1)).toNat + A011736 n

end

end A285154.P483547196792800061

/-! ## A285154.P3348903041650544860

`A285152(A167614(n+1))+A185238(n)`
-/

namespace A285154.P3348903041650544860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A167614 (n + 1)).toNat + A185238 n

end

end A285154.P3348903041650544860

/-! ## A285154.P7597389677012810785

`A285152(A167614(n+1))+A185284(n)`
-/

namespace A285154.P7597389677012810785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A167614 (n + 1)).toNat + A185284 n

end

end A285154.P7597389677012810785

/-! ## A285154.P6628741530294596429

`A285152(A167614(n+1))%A165515(n)`
-/

namespace A285154.P6628741530294596429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285152 (A167614 (n + 1)).toNat) (A165515 n)

end

end A285154.P6628741530294596429

/-!
# A285155: Number of 4 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285155, there is no canonical definition to state claims against.
-/

/-! ## A285155.P9297533302414302979

`A285152(∑[n+3]+7)`
-/

namespace A285155.P9297533302414302979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A285155.P9297533302414302979

/-!
# A285156: Number of 5 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285156, there is no canonical definition to state claims against.
-/

/-! ## A285156.P17954916580712262879

`A285152(A167499(n+3))`
-/

namespace A285156.P17954916580712262879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A167499 (n + 3)).toNat

end

end A285156.P17954916580712262879

/-! ## A285156.P13727734679423905862

`A285152(A155212(n)+13)`
-/

namespace A285156.P13727734679423905862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A155212 n + 13).toNat

end

end A285156.P13727734679423905862

/-! ## A285156.P8750726225375693601

`A285152(A056000(n)+15)`
-/

namespace A285156.P8750726225375693601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A056000 n + 15).toNat

end

end A285156.P8750726225375693601

/-! ## A285156.P1583833951533342049

`A285152(A000096(n+3)+6)`
-/

namespace A285156.P1583833951533342049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A000096 (n + 3) + 6).toNat

end

end A285156.P1583833951533342049

/-! ## A285156.P15153168555843686362

`A285152(eq[6, A131818(n+1)])`
-/

namespace A285156.P15153168555843686362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285156.P15153168555843686362

/-!
# A285157: Number of 6 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285157, there is no canonical definition to state claims against.
-/

/-! ## A285157.P7203313136984543492

`A285152(A166136(n+4))`
-/

namespace A285157.P7203313136984543492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A166136 (n + 4)).toNat

end

end A285157.P7203313136984543492

/-! ## A285157.P5117253836137029474

`A285152(A056115(n)+21)`
-/

namespace A285157.P5117253836137029474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A056115 n + 21).toNat

end

end A285157.P5117253836137029474

/-! ## A285157.P10163673845002194147

`A285152(eq[6, A130270(n+1)])`
-/

namespace A285157.P10163673845002194147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285157.P10163673845002194147

/-! ## A285157.P8855114127096906025

`A285152(eq[7, A131818(n+1)])`
-/

namespace A285157.P8855114127096906025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285157.P8855114127096906025

/-! ## A285157.P2108934179686985270

`A285152(Δ[A023551(n+2)]-1-2*n)`
-/

namespace A285157.P2108934179686985270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (f1 (n + 1) - f1 n - 1 - (2 * n : ℤ)).toNat

end

end A285157.P2108934179686985270

/-!
# A285158: Number of 7 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285158, there is no canonical definition to state claims against.
-/

/-! ## A285158.P11227413494444380886

`A285152(A167487(n+5))`
-/

namespace A285158.P11227413494444380886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A167487 (n + 5)).toNat

end

end A285158.P11227413494444380886

/-! ## A285158.P14618745139800029459

`A285152(A056119(n)+28)`
-/

namespace A285158.P14618745139800029459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A056119 n + 28).toNat

end

end A285158.P14618745139800029459

/-! ## A285158.P16398958449169930137

`A285152(eq[8, A131818(n+1)])`
-/

namespace A285158.P16398958449169930137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285158.P16398958449169930137

/-! ## A285158.P739636990943184523

`A285152(eq[3, A219347(n)]+12)`
-/

namespace A285158.P739636990943184523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A285158.P739636990943184523

/-! ## A285158.P15952596932377036568

`A285152(eq[7, A134868(n+1)]+1)`
-/

namespace A285158.P15952596932377036568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285158.P15952596932377036568

/-!
# A285159: 0-limiting word of the morphism 0->10, 1-> 0011.

The programs for A285159, there is no canonical definition to state claims against.
-/

/-! ## A285159.P17497527944281831938

`char[A285161(n+1)-1]`
-/

namespace A285159.P17497527944281831938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285161 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285159.P17497527944281831938

/-! ## A285159.P269067829377103798

`1-char[A285160(n+1)-1]`
-/

namespace A285159.P269067829377103798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285160 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285159.P269067829377103798

/-! ## A285159.P14238189395837224708

`A285162(A047264(n+2))`
-/

namespace A285159.P14238189395837224708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285162 (A047264 (n + 2)).toNat

end

end A285159.P14238189395837224708

/-! ## A285159.P9218949709066709060

`A285162(∑[A001157(gcd(n, n+2))])`
-/

namespace A285159.P9218949709066709060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (Nat.gcd n (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285159.P9218949709066709060

/-! ## A285159.P18289357316615815463

`A285162(A305548(n+1))`
-/

namespace A285159.P18289357316615815463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285162 (A305548 (n + 1)).toNat

end

end A285159.P18289357316615815463

/-!
# A285160: Positions of 0 in A285159; complement of A285161.

The programs for A285160, there is no canonical definition to state claims against.
-/

/-! ## A285160.P13363739903407324558

`comp[A285161(n+1)-1]+1`
-/

namespace A285160.P13363739903407324558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285161 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285160.P13363739903407324558

/-! ## A285160.P364108971618313934

`eq[0, A285159(n+1)]+1`
-/

namespace A285160.P364108971618313934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285160.P364108971618313934

/-! ## A285160.P7958333495987180397

`record[n+1-A251535(n)*A285159(n+1)]`
-/

namespace A285160.P7958333495987180397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A251535 n * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P7958333495987180397

/-! ## A285160.P4636430552125069118

`record[n+1-A000010(n+1)*A285159(n+1)]`
-/

namespace A285160.P4636430552125069118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P4636430552125069118

/-! ## A285160.P14578993444107356516

`record[n+1-A000040(n+1)*A285159(n+1)]`
-/

namespace A285160.P14578993444107356516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P14578993444107356516

/-! ## A285160.P18401612768127157614

`record[n+1-A089953(n+1)*A285159(n+1)]`
-/

namespace A285160.P18401612768127157614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A089953 (n + 1) * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P18401612768127157614

/-! ## A285160.P17743800846754725929

`record[n+1-A061419(n+1)*A285159(n+1)]`
-/

namespace A285160.P17743800846754725929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061419 (n + 1) * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P17743800846754725929

/-! ## A285160.P17614479564132094816

`record[n+1-A000032(n)*A285159(n+1)]`
-/

namespace A285160.P17614479564132094816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000032 n * A285159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285160.P17614479564132094816

/-!
# A285161: Positions of 1 in A285159; complement of A285160.

The programs for A285161, there is no canonical definition to state claims against.
-/

/-! ## A285161.P17749591486770441153

`comp[A285160(n+1)-1]+1`
-/

namespace A285161.P17749591486770441153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285160 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285161.P17749591486770441153

/-! ## A285161.P2962904283450868457

`eq[1, A285159(n+1)]+1`
-/

namespace A285161.P2962904283450868457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285161.P2962904283450868457

/-! ## A285161.P16210674844820776890

`record[(n+3)*A285159(n+3)]`
-/

namespace A285161.P16210674844820776890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A285159 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285161.P16210674844820776890

/-! ## A285161.P18260877499798348752

`eq[1, A285159(A000038(n)+n)]`
-/

namespace A285161.P18260877499798348752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285161.P18260877499798348752

/-! ## A285161.P10996006280390265260

`eq[1, A285159(xor(n, A000038(n)))]`
-/

namespace A285161.P10996006280390265260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285161.P10996006280390265260

/-! ## A285161.P983541082709170278

`eq[1, A285159(A065033(2*n))]`
-/

namespace A285161.P983541082709170278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285161.P983541082709170278

/-! ## A285161.P10507871076695904844

`eq[1, A285159(A123108(2*n))]`
-/

namespace A285161.P10507871076695904844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285161.P10507871076695904844

/-! ## A285161.P1402251349449738417

`eq[1, A285162(2*(n+1))]-n`
-/

namespace A285161.P1402251349449738417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285162 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285161.P1402251349449738417

/-! ## A285161.P12220976972182915898

`eq[1, A285159(A233583(n+1))]`
-/

namespace A285161.P12220976972182915898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285161.P12220976972182915898

/-!
# A285162: 1-limiting word of the morphism 0->10, 1-> 0011.

The programs for A285162, there is no canonical definition to state claims against.
-/

/-! ## A285162.P1596746332533861896

`char[A285164(n+1)-1]`
-/

namespace A285162.P1596746332533861896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285162.P1596746332533861896

/-! ## A285162.P2236239385316751278

`1-char[A285163(n+1)-1]`
-/

namespace A285162.P2236239385316751278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285163 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285162.P2236239385316751278

/-! ## A285162.P16887302878509061678

`A285159(A047264(n+2))`
-/

namespace A285162.P16887302878509061678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A047264 (n + 2)).toNat

end

end A285162.P16887302878509061678

/-! ## A285162.P427386015077283231

`A285159(A016789(xor(1, n)))`
-/

namespace A285162.P427386015077283231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (A016789 (Nat.xor 1 n)).toNat

end

end A285162.P427386015077283231

/-! ## A285162.P12579025358853238254

`A285159(27*(n+1))`
-/

namespace A285162.P12579025358853238254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (27 * (n + 1))

end

end A285162.P12579025358853238254

/-! ## A285162.P2850417517827135964

`1-A285159(A154266(n))`
-/

namespace A285162.P2850417517827135964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285159 (A154266 n).toNat

end

end A285162.P2850417517827135964

/-! ## A285162.P7850860592448869168

`xor(A158388(n+1), A285159(A154266(n)))`
-/

namespace A285162.P7850860592448869168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158388 (n + 1)) (A285159 (A154266 n).toNat)

end

end A285162.P7850860592448869168

/-! ## A285162.P277947157695487865

`xor(A034947(n+1)², A285159(A154266(n)))`
-/

namespace A285162.P277947157695487865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034947 (n + 1) ^ 2) (A285159 (A154266 n).toNat)

end

end A285162.P277947157695487865

/-!
# A285163: Positions of 0 in A285162; complement of A285164.

The programs for A285163, there is no canonical definition to state claims against.
-/

/-! ## A285163.P9521583683280578678

`comp[A285164(n+1)-1]+1`
-/

namespace A285163.P9521583683280578678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285163.P9521583683280578678

/-! ## A285163.P16432656877568430277

`A016789(n)-A028242(A285164(n+1))`
-/

namespace A285163.P16432656877568430277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A028242 (A285164 (n + 1)).toNat

end

end A285163.P16432656877568430277

/-! ## A285163.P1052126736100322962

`Δ[A027691(n)]-A028242(A285164(n+1))+n`
-/

namespace A285163.P1052126736100322962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A028242 (A285164 (n + 1)).toNat + (n : ℤ)

end

end A285163.P1052126736100322962

/-! ## A285163.P5770915041130503239

`A285161(3*(n+1))%3+2*n`
-/

namespace A285163.P5770915041130503239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285161 (3 * (n + 1))) 3 + (2 * n : ℤ)

end

end A285163.P5770915041130503239

/-! ## A285163.P634028480595558259

`A052938(A285160(3*n+1))-(n+1)`
-/

namespace A285163.P634028480595558259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A285160 (3 * n + 1)).toNat - (n + 1 : ℤ)

end

end A285163.P634028480595558259

/-! ## A285163.P3379357997681840998

`A000027(n+1)+A052938(A285160(3*n+1))%(2*(n+1))`
-/

namespace A285163.P3379357997681840998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + Int.tmod (A052938 (A285160 (3 * n + 1)).toNat) (2 * (n + 1) : ℤ)

end

end A285163.P3379357997681840998

/-!
# A285164: Positions of 1 in A285162; complement of A285163.

The programs for A285164, there is no canonical definition to state claims against.
-/

/-! ## A285164.P2847593427923667322

`eq[1, A285162(n+1)]+1`
-/

namespace A285164.P2847593427923667322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285164.P2847593427923667322

/-! ## A285164.P3929395755453458159

`A285161(3*(n+1))-4*(n+1)`
-/

namespace A285164.P3929395755453458159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285161 (3 * (n + 1)) - (4 * (n + 1) : ℤ)

end

end A285164.P3929395755453458159

/-! ## A285164.P16581714706308735791

`eq[1, A285159(2*(n+1))]-n`
-/

namespace A285164.P16581714706308735791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285159 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285164.P16581714706308735791

/-! ## A285164.P4342105841433832021

`A008611(A285161(3*(n+1))-1)`
-/

namespace A285164.P4342105841433832021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A285161 (3 * (n + 1)) - 1).toNat

end

end A285164.P4342105841433832021

/-! ## A285164.P9793524878632827120

`record[A002264(2*n+5)*A285159(2*(n+2))]`
-/

namespace A285164.P9793524878632827120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n + 5) * A285159 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285164.P9793524878632827120

/-!
# A285166: Column 3 of A285165.

The programs for A285166, there is no canonical definition to state claims against.
-/

/-! ## A285166.P10620718970456644743

`A285165(∑[n+1]+4)`
-/

namespace A285166.P10620718970456644743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285166.P10620718970456644743

/-! ## A285166.P18281320947492479027

`record[and(A110555(n), A285165(n+3))]`
-/

namespace A285166.P18281320947492479027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110555 n) (A285165 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285166.P18281320947492479027

/-! ## A285166.P4541975127641322415

`or(A000007(n), A285165(A027693(n+1)/2))`
-/

namespace A285166.P4541975127641322415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285165 (SequenceMachineLib.roundAway ((A027693 (n + 1) : ℚ) / 2)).toNat)

end

end A285166.P4541975127641322415

/-! ## A285166.P6147032689027970426

`record[and(A285165(n+3), A294254(n))]`
-/

namespace A285166.P6147032689027970426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285165 (n + 3)) (A294254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285166.P6147032689027970426

/-! ## A285166.P9507240677659500391

`A285165(A027693(n+1)/2)%A206695(n+1)`
-/

namespace A285166.P9507240677659500391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285165 (SequenceMachineLib.roundAway ((A027693 (n + 1) : ℚ) / 2)).toNat) (A206695 (n + 1))

end

end A285166.P9507240677659500391

/-!
# A285167: Column 4 of A285165.

The programs for A285167, there is no canonical definition to state claims against.
-/

/-! ## A285167.P17541693629078717242

`A285165(A167499(n+1))`
-/

namespace A285167.P17541693629078717242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167499 (n + 1)).toNat

end

end A285167.P17541693629078717242

/-! ## A285167.P3471214986148166798

`A285165(A055998(n)+8)`
-/

namespace A285167.P3471214986148166798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A055998 n + 8).toNat

end

end A285167.P3471214986148166798

/-! ## A285167.P15884757604614192842

`A285165(A046691(n)+9)`
-/

namespace A285167.P15884757604614192842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A046691 n + 9).toNat

end

end A285167.P15884757604614192842

/-! ## A285167.P5608729745942456602

`A285165(A166136(n+1)-1)`
-/

namespace A285167.P5608729745942456602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A166136 (n + 1) - 1).toNat

end

end A285167.P5608729745942456602

/-! ## A285167.P1272537926042720393

`A285165(A167614(n+1)+2)`
-/

namespace A285167.P1272537926042720393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167614 (n + 1) + 2).toNat

end

end A285167.P1272537926042720393

/-! ## A285167.P10314342512652019928

`A285165(A034856(n+1)+7)`
-/

namespace A285167.P10314342512652019928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A034856 (n + 1) + 7).toNat

end

end A285167.P10314342512652019928

/-! ## A285167.P591251074928288712

`record[and(A285165(n+4), A294254(n))]`
-/

namespace A285167.P591251074928288712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285165 (n + 4)) (A294254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285167.P591251074928288712

/-!
# A285168: Column 5 of A285165.

The programs for A285168, there is no canonical definition to state claims against.
-/

/-! ## A285168.P7882761026825836998

`A285165(A166136(n+2))`
-/

namespace A285168.P7882761026825836998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A166136 (n + 2)).toNat

end

end A285168.P7882761026825836998

/-! ## A285168.P16934157571353380289

`A285165(A052905(n)+11)`
-/

namespace A285168.P16934157571353380289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A052905 n + 11).toNat

end

end A285168.P16934157571353380289

/-! ## A285168.P10399197014158340228

`A285165(A055999(n)+12)`
-/

namespace A285168.P10399197014158340228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A055999 n + 12).toNat

end

end A285168.P10399197014158340228

/-! ## A285168.P15197777717895350019

`A285165(A167614(n+2)+3)`
-/

namespace A285168.P15197777717895350019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167614 (n + 2) + 3).toNat

end

end A285168.P15197777717895350019

/-! ## A285168.P2196700301985532053

`A285165(A167499(n)+2*(n+3))`
-/

namespace A285168.P2196700301985532053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167499 n + (2 * (n + 3) : ℤ)).toNat

end

end A285168.P2196700301985532053

/-!
# A285169: Column 6 of A285165.

The programs for A285169, there is no canonical definition to state claims against.
-/

/-! ## A285169.P5608491775692728736

`A285165(A155212(n)+15)`
-/

namespace A285169.P5608491775692728736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A155212 n + 15).toNat

end

end A285169.P5608491775692728736

/-! ## A285169.P12112501591109594796

`A285165(A166136(n+3)+1)`
-/

namespace A285169.P12112501591109594796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A166136 (n + 3) + 1).toNat

end

end A285169.P12112501591109594796

/-! ## A285169.P15173780706217992896

`A285165(A152950(n+5)+4)`
-/

namespace A285169.P15173780706217992896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A152950 (n + 5) + 4).toNat

end

end A285169.P15173780706217992896

/-! ## A285169.P18211724777890624422

`A285165(A034856(n+3)+9)`
-/

namespace A285169.P18211724777890624422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A034856 (n + 3) + 9).toNat

end

end A285169.P18211724777890624422

/-! ## A285169.P4344215511482778222

`A285165(A052905(n+1)+12)`
-/

namespace A285169.P4344215511482778222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A052905 (n + 1) + 12).toNat

end

end A285169.P4344215511482778222

/-!
# A285170: Column 7 of A285165.

The programs for A285170, there is no canonical definition to state claims against.
-/

/-! ## A285170.P10335349524139537571

`A285165(A166136(n+4)+2)`
-/

namespace A285170.P10335349524139537571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A166136 (n + 4) + 2).toNat

end

end A285170.P10335349524139537571

/-! ## A285170.P11425927870326766972

`A285165(A167499(n+4)+3)`
-/

namespace A285170.P11425927870326766972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167499 (n + 4) + 3).toNat

end

end A285170.P11425927870326766972

/-! ## A285170.P8042755261112755456

`A285165(A167614(n+5)-(n+1))`
-/

namespace A285170.P8042755261112755456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A167614 (n + 5) - (n + 1 : ℤ)).toNat

end

end A285170.P8042755261112755456

/-!
# A285171: Column 8 of A285165.

The programs for A285171, there is no canonical definition to state claims against.
-/

/-! ## A285171.P16038747373522192991

`A285165(A166136(n+5)+3)`
-/

namespace A285171.P16038747373522192991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A166136 (n + 5) + 3).toNat

end

end A285171.P16038747373522192991

/-! ## A285171.P4899654397532837227

`A285165(A000096(n+5)+10)`
-/

namespace A285171.P4899654397532837227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A000096 (n + 5) + 10).toNat

end

end A285171.P4899654397532837227

/-!
# A285173: Numbers n such that A002496(n+1) < A002496(n)^(1+1/n).

The programs for A285173, there is no canonical definition to state claims against.
-/

/-! ## A285173.P1361682269402022641

`comp[68^n]+3`
-/

namespace A285173.P1361682269402022641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  68 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A285173.P1361682269402022641

/-!
# A285174: a(n) is the number of Dyck paths of (2,3)-knight moves of size n.

The programs for A285174, there is no canonical definition to state claims against.
-/

/-! ## A285174.P14267528029764268882

`A325166(A291700(n))+A262448(n)`
-/

namespace A285174.P14267528029764268882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A291700 n).toNat + A262448 n

end

end A285174.P14267528029764268882

/-! ## A285174.P3741700955517175061

`A080224(A281751(n)+19)`
-/

namespace A285174.P3741700955517175061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A281751 n + 19).toNat

end

end A285174.P3741700955517175061

/-! ## A285174.P2839593404813026804

`A160790(A046769(n)%A160784(n+1))`
-/

namespace A285174.P2839593404813026804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (Int.tmod (A046769 n) (A160784 (n + 1))).toNat

end

end A285174.P2839593404813026804

/-! ## A285174.P1382185286889213617

`A220029(A220019(n+1))%A062830(n+2)`
-/

namespace A285174.P1382185286889213617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220029 (A220019 (n + 1)).toNat) (A062830 (n + 2))

end

end A285174.P1382185286889213617

/-! ## A285174.P16465461040726074445

`A265744(and(A065732(n+1), A147248(n+1)))`
-/

namespace A285174.P16465461040726074445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (Int.land (A065732 (n + 1)) (A147248 (n + 1))).toNat

end

end A285174.P16465461040726074445

/-!
# A285175: Number of normal generalized Young tableaux, of shape the integer partition with Heinz number n, with all rows and columns strictly increasing.

The programs for A285175, there is no canonical definition to state claims against.
-/

/-! ## A285175.P16639184316047548279

`A006005(A153452(n+1)%A252020(n+1))`
-/

namespace A285175.P16639184316047548279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A153452 (n + 1)) (A252020 (n + 1))).toNat

end

end A285175.P16639184316047548279

/-! ## A285175.P5635155213921966783

`A204142(A153452(n+1))%A078457(2*n+3)`
-/

namespace A285175.P5635155213921966783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204142 (A153452 (n + 1)).toNat) (A078457 (2 * n + 3))

end

end A285175.P5635155213921966783

/-! ## A285175.P3386534803667532113

`A176997(A153452(n+1))+A000038(A001611(n))`
-/

namespace A285175.P3386534803667532113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (A153452 (n + 1)).toNat + A000038 (A001611 n).toNat

end

end A285175.P3386534803667532113

/-! ## A285175.P12089039736381165549

`A176997(A153452(n+1))+A025468(A007053(n))`
-/

namespace A285175.P12089039736381165549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (A153452 (n + 1)).toNat + A025468 (A007053 n).toNat

end

end A285175.P12089039736381165549

/-! ## A285175.P9118369172229013647

`A204142(A153452(n+1))%A244196(n+1)`
-/

namespace A285175.P9118369172229013647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204142 (A153452 (n + 1)).toNat) (A244196 (n + 1))

end

end A285175.P9118369172229013647

/-!
# A285176: Elastic numbers: numbers n with two or more digits such that for any number m made by inserting any number of 0's between the digits of n, m is a multiple of n.

The programs for A285176, there is no canonical definition to state claims against.
-/

/-! ## A285176.P8603074936186638103

`∩[A396948(n+1), A179239(n)]`
-/

namespace A285176.P8603074936186638103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285176.P8603074936186638103

/-! ## A285176.P16441238829457351518

`∩[A031955(n+1), A343550(n+1)]`
-/

namespace A285176.P16441238829457351518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285176.P16441238829457351518

/-! ## A285176.P11474483449629297031

`∩[A043638(n+1), A343550(n+1)]`
-/

namespace A285176.P11474483449629297031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285176.P11474483449629297031

/-!
# A285177: 0-limiting word of the morphism 0->11, 1->001.

The programs for A285177, there is no canonical definition to state claims against.
-/

/-! ## A285177.P14784799470659951957

`char[A285402(n+1)-1]`
-/

namespace A285177.P14784799470659951957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285402 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285177.P14784799470659951957

/-! ## A285177.P16598501424317550811

`char[comp[A285401(n+1)-1]]`
-/

namespace A285177.P16598501424317550811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285177.P16598501424317550811

/-! ## A285177.P3907275226399772350

`char[A285127(n+1)%A285402(n+1)]`
-/

namespace A285177.P3907275226399772350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285127 (n + 1)) (A285402 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285177.P3907275226399772350

/-! ## A285177.P4965276139936488578

`A285125(Δ[n²])`
-/

namespace A285177.P4965276139936488578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285177.P4965276139936488578

/-! ## A285177.P8936725861577897789

`and(1, A285125(2*n+1))`
-/

namespace A285177.P8936725861577897789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285125 (2 * n + 1))

end

end A285177.P8936725861577897789

/-! ## A285177.P6721254427116235063

`ceil(abs(sin(A285125(n+1+n))))`
-/

namespace A285177.P6721254427116235063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A285125 (n + 1 + n) : ℝ)|⌉

end

end A285177.P6721254427116235063

/-! ## A285177.P3872880642417115151

`A285125(n+n+1)+2-4/2`
-/

namespace A285177.P3872880642417115151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285125 (n + n + 1) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A285177.P3872880642417115151

/-!
# A285181: Index m such that A280864(m) = n^2.

The programs for A285181, there is no canonical definition to state claims against.
-/

/-! ## A285181.P4317480822569671241

`A280741((1+n)²)`
-/

namespace A285181.P4317480822569671241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 ((1 + n) ^ 2)

end

end A285181.P4317480822569671241

/-! ## A285181.P12612372416868162412

`and(-1, A280741(∑[2*n+1]))`
-/

namespace A285181.P12612372416868162412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A280741 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A285181.P12612372416868162412

/-! ## A285181.P7817877677318690203

`A000027(A280741(∑[2*n+1]))`
-/

namespace A285181.P7817877677318690203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A280741 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A285181.P7817877677318690203

/-! ## A285181.P9331624845945274257

`A280741(∑[2*n+1])+A000007(n+1)`
-/

namespace A285181.P9331624845945274257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A285181.P9331624845945274257

/-! ## A285181.P4262446421334936217

`A007318(C(2, n))*A280741(∑[2*n+1])`
-/

namespace A285181.P4262446421334936217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285181.P4262446421334936217

/-! ## A285181.P17802346410367205975

`A280741(∑[2*n+1])+A008683(4*(n+1))`
-/

namespace A285181.P17802346410367205975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 1))

end

end A285181.P17802346410367205975

/-! ## A285181.P15546394098403925021

`A280741(∑[2*n+1])+val(A006530(n+1), 10)`
-/

namespace A285181.P15546394098403925021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 10 : ℤ)

end

end A285181.P15546394098403925021

/-! ## A285181.P4335589053797284941

`A280864(A280741(A280741((n+1)*(n+1))))`
-/

namespace A285181.P4335589053797284941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280741 (A280741 ((n + 1) * (n + 1))).toNat).toNat

end

end A285181.P4335589053797284941

/-! ## A285181.P17624700211837766916

`A174544(A320278(n))*A280741((n+1)*(n+1))`
-/

namespace A285181.P17624700211837766916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 (A320278 n).toNat * A280741 ((n + 1) * (n + 1))

end

end A285181.P17624700211837766916

/-! ## A285181.P6506628508019288916

`A239700(A286600(n))*A280741((n+1)*(n+1))`
-/

namespace A285181.P6506628508019288916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A286600 n).toNat * A280741 ((n + 1) * (n + 1))

end

end A285181.P6506628508019288916

/-! ## A285181.P2822014369727270251

`A001222(A007918(n))*A280741(A000290(n+1))`
-/

namespace A285181.P2822014369727270251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A280741 (A000290 (n + 1)).toNat

end

end A285181.P2822014369727270251

/-! ## A285181.P2929191212362482539

`A014963(A173904(n+1))*A280741((n+1)*(n+1))`
-/

namespace A285181.P2929191212362482539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A173904 (n + 1)).toNat * A280741 ((n + 1) * (n + 1))

end

end A285181.P2929191212362482539

/-!
# A285182: L = A132468(n) = A048669(n)-1 is the length of the longest run of consecutive numbers that have a common factor with n; a(n) = smallest k >= 0 which starts such a run.

The programs for A285182, there is no canonical definition to state claims against.
-/

/-! ## A285182.P1545109055740204611

`A226040(n+1)-A000035(A198775(n+1))`
-/

namespace A285182.P1545109055740204611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 (n + 1) - A000035 (A198775 (n + 1)).toNat

end

end A285182.P1545109055740204611

/-! ## A285182.P11635509934687293256

`A015886(A181569(n+4))*A286470(n+2)`
-/

namespace A285182.P11635509934687293256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (A181569 (n + 4)).toNat * A286470 (n + 2)

end

end A285182.P11635509934687293256

/-! ## A285182.P3905132208797035694

`A046660(lcm(A076690(n+2), A248012(n+2)))`
-/

namespace A285182.P3905132208797035694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (Int.lcm (A076690 (n + 2)) (A248012 (n + 2)))

end

end A285182.P3905132208797035694

/-! ## A285182.P9589583923815821554

`A028304(n)%A200326(A181064(n+1))`
-/

namespace A285182.P9589583923815821554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 n) (A200326 (A181064 (n + 1)).toNat)

end

end A285182.P9589583923815821554

/-! ## A285182.P15898291748600750993

`A006331(A273430(3*n+4))%A318305(n+2)`
-/

namespace A285182.P15898291748600750993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006331 (A273430 (3 * n + 4)).toNat) (A318305 (n + 2))

end

end A285182.P15898291748600750993

/-!
# A285183: Nearest integer to n*omega(n)/phi(n).

The programs for A285183, the canonical program `A285183.P16153452333160018341` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285183 has offset 1).

The definition of A285183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285183.P16153452333160018341

`round((n+1)*A001221(n+1)/A000010(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285183

/-- `round((n+1)*A001221(n+1)/A000010(n+1))` -/
def P16153452333160018341.Spec : Prop :=
  ∀ n, P16153452333160018341.a n = A285183 (n + 1)

theorem P16153452333160018341.correct : P16153452333160018341.Spec := by
  intro n
  simp only [A285183, Nat.add_sub_cancel]

end A285183

/-! ## A285183.P13386231580568449647

`round(A328260(n+1)/A000010(n+1))`
-/

namespace A285183.P13386231580568449647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A328260 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P13386231580568449647

namespace A285183

/-- `round(A328260(n+1)/A000010(n+1))` -/
def P13386231580568449647.Spec : Prop :=
  ∀ n, P13386231580568449647.a n = A285183 (n + 1)

theorem P13386231580568449647.correct : P13386231580568449647.Spec := by
  intro n
  simp only [A285183, Nat.add_sub_cancel, A285183.P13386231580568449647.a, A285183.P16153452333160018341.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A328260, A328260.P5916290271217475718.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285183

/-! ## A285183.P5877131715884526202

`round(∑{p}[n+1, A001221(#)+n]/A000010(n+1))`
-/

namespace A285183.P5877131715884526202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (A001221 p + (n : ℤ)) : ℤ) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P5877131715884526202

namespace A285183

/-- `round(∑{p}[n+1, A001221(#)+n]/A000010(n+1))` -/
def P5877131715884526202.Spec : Prop :=
  ∀ n, P5877131715884526202.a n = A285183 (n + 1)

end A285183

/-! ## A285183.P16078354751401612898

`round(∑{p}[n+1, A001221(#)+n]/(A039649(n+1)-1))`
-/

namespace A285183.P16078354751401612898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (A001221 p + (n : ℤ)) : ℤ) : ℚ) / (A039649 (n + 1) - 1 : ℚ))

end

end A285183.P16078354751401612898

namespace A285183

/-- `round(∑{p}[n+1, A001221(#)+n]/(A039649(n+1)-1))` -/
def P16078354751401612898.Spec : Prop :=
  ∀ n, P16078354751401612898.a n = A285183 (n + 1)

end A285183

/-! ## A285183.P4300744451238695415

`round(A001222(∏{p}[n+1, #])*(n+1)/A000010(n+1))`
-/

namespace A285183.P4300744451238695415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) * (n + 1 : ℤ) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P4300744451238695415

namespace A285183

/-- `round(A001222(∏{p}[n+1, #])*(n+1)/A000010(n+1))` -/
def P4300744451238695415.Spec : Prop :=
  ∀ n, P4300744451238695415.a n = A285183 (n + 1)

end A285183

/-! ## A285183.P6409350827664522024

`round(A001222(∏{p}[n+1, #])*(n+1)/(A039649(n+1)-1))`
-/

namespace A285183.P6409350827664522024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) * (n + 1 : ℤ) : ℚ) / (A039649 (n + 1) - 1 : ℚ))

end

end A285183.P6409350827664522024

namespace A285183

/-- `round(A001222(∏{p}[n+1, #])*(n+1)/(A039649(n+1)-1))` -/
def P6409350827664522024.Spec : Prop :=
  ∀ n, P6409350827664522024.a n = A285183 (n + 1)

end A285183

/-! ## A285183.P14103421405323058123

`round(∑{e}[n+1, A007318(A007318(#))+n]/A000010(n+1))`
-/

namespace A285183.P14103421405323058123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (A007318 (A007318 (Nat.factorization (f1 n) p)).toNat + (n : ℤ)) : ℤ) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P14103421405323058123

namespace A285183

/-- `round(∑{e}[n+1, A007318(A007318(#))+n]/A000010(n+1))` -/
def P14103421405323058123.Spec : Prop :=
  ∀ n, P14103421405323058123.a n = A285183 (n + 1)

end A285183

/-! ## A285183.P318320891313285902

`round(∑{e}[n+1, A007318(A007318(#))+n]/(A039649(n+1)-1))`
-/

namespace A285183.P318320891313285902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (A007318 (A007318 (Nat.factorization (f1 n) p)).toNat + (n : ℤ)) : ℤ) : ℚ) / (A039649 (n + 1) - 1 : ℚ))

end

end A285183.P318320891313285902

namespace A285183

/-- `round(∑{e}[n+1, A007318(A007318(#))+n]/(A039649(n+1)-1))` -/
def P318320891313285902.Spec : Prop :=
  ∀ n, P318320891313285902.a n = A285183 (n + 1)

end A285183

/-!
# A285184: a(n) = 2*a(n-1) + a(n-3) with initial terms 1,3,5.

The programs for A285184, the canonical program `A285184.P6384269116124679049` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285184 has offset 0).

The definition of A285184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A285184.P6384269116124679049`, by `A285184.P6384269116124679049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285184.P6384269116124679049

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285184

/-- `2*a(n-1)+a(n-3)` -/
def P6384269116124679049.Spec : Prop :=
  ∀ n, (P6384269116124679049.a n : ℤ) = A285184 n

theorem P6384269116124679049.correct : P6384269116124679049.Spec := by
  intro n
  simp only [A285184]

end A285184

/-! ## A285184.P475327380638440676

`ogf((1+x-x^2)/(1-2x-x^3))`
-/

namespace A285184.P475327380638440676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, 0, -1] n

end

end A285184.P475327380638440676

namespace A285184

/-- `ogf((1+x-x^2)/(1-2x-x^3))` -/
def P475327380638440676.Spec : Prop :=
  ∀ n, P475327380638440676.a n = A285184 n

end A285184

/-! ## A285184.P2424568446978183553

`a(n-3)+lcm(2, a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A285184.P2424568446978183553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 3) + Nat.lcm 2 (a (n - 1))

end

end A285184.P2424568446978183553

namespace A285184

/-- `a(n-3)+lcm(2, a(n-1))` -/
def P2424568446978183553.Spec : Prop :=
  ∀ n, (P2424568446978183553.a n : ℤ) = A285184 n

end A285184

/-! ## A285184.P12701495218396622018

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A285184.P12701495218396622018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A285184.P12701495218396622018

namespace A285184

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P12701495218396622018.Spec : Prop :=
  ∀ n, (P12701495218396622018.a n : ℤ) = A285184 n

theorem P12701495218396622018.correct : P12701495218396622018.Spec := by
  intro n
  simp only [A285184, Nat.add_sub_cancel, A285184.P12701495218396622018.a, A285184.P6384269116124679049.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A285184

/-! ## A285184.P2632459892775879791

`A232059(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A285184.P2632459892775879791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A232059 (n - 1) + a (n - 1)

end

end A285184.P2632459892775879791

namespace A285184

/-- `A232059(n-1)+a(n-1)` -/
def P2632459892775879791.Spec : Prop :=
  ∀ n, P2632459892775879791.a n = A285184 n

end A285184

/-! ## A285184.P8940748842313342275

`A335242(n+1)+A052980(n)`
-/

namespace A285184.P8940748842313342275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (n + 1) + A052980 n

end

end A285184.P8940748842313342275

namespace A285184

/-- `A335242(n+1)+A052980(n)` -/
def P8940748842313342275.Spec : Prop :=
  ∀ n, P8940748842313342275.a n = A285184 n

end A285184

/-! ## A285184.P5726735724986392521

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A285184.P5726735724986392521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A285184.P5726735724986392521

namespace A285184

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P5726735724986392521.Spec : Prop :=
  ∀ n, P5726735724986392521.a n = A285184 n

end A285184

/-! ## A285184.P13691160057776693863

`2*A052910(n)-a(n-1)` with `a(0)=1`
-/

namespace A285184.P13691160057776693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A052910 n - a (n - 1)

end

end A285184.P13691160057776693863

namespace A285184

/-- `2*A052910(n)-a(n-1)` -/
def P13691160057776693863.Spec : Prop :=
  ∀ n, P13691160057776693863.a n = A285184 n

end A285184

/-! ## A285184.P10206091237765328271

`A183304(n+1)-A335274(n)`
-/

namespace A285184.P10206091237765328271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183304 (n + 1) - A335274 n

end

end A285184.P10206091237765328271

namespace A285184

/-- `A183304(n+1)-A335274(n)` -/
def P10206091237765328271.Spec : Prop :=
  ∀ n, P10206091237765328271.a n = A285184 n

end A285184

/-! ## A285184.P6915448864372147514

`A335274(n+1)-A214260(n)`
-/

namespace A285184.P6915448864372147514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) - A214260 n

end

end A285184.P6915448864372147514

namespace A285184

/-- `A335274(n+1)-A214260(n)` -/
def P6915448864372147514.Spec : Prop :=
  ∀ n, P6915448864372147514.a n = A285184 n

end A285184

/-! ## A285184.P13664837712593534875

`A190512(n+1)-(A335274(n)+A052980(n))`
-/

namespace A285184.P13664837712593534875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - (A335274 n + A052980 n)

end

end A285184.P13664837712593534875

namespace A285184

/-- `A190512(n+1)-(A335274(n)+A052980(n))` -/
def P13664837712593534875.Spec : Prop :=
  ∀ n, P13664837712593534875.a n = A285184 n

end A285184

/-! ## A285184.P5545589675706256414

`A214260(n+1)+A008998(n)-A052980(n+1)`
-/

namespace A285184.P5545589675706256414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (n + 1) + (A008998 n - A052980 (n + 1))

end

end A285184.P5545589675706256414

namespace A285184

/-- `A214260(n+1)+A008998(n)-A052980(n+1)` -/
def P5545589675706256414.Spec : Prop :=
  ∀ n, P5545589675706256414.a n = A285184 n

end A285184

/-! ## A285184.P6681500015905708244

`A335274(n+1)+A052980(n)-A052980(n+1)`
-/

namespace A285184.P6681500015905708244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) + (A052980 n - A052980 (n + 1))

end

end A285184.P6681500015905708244

namespace A285184

/-- `A335274(n+1)+A052980(n)-A052980(n+1)` -/
def P6681500015905708244.Spec : Prop :=
  ∀ n, P6681500015905708244.a n = A285184 n

end A285184

/-! ## A285184.P11357063404972890229

`A335274(n+1)+A008998(n)-A193641(n+1)`
-/

namespace A285184.P11357063404972890229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) + (A008998 n - A193641 (n + 1))

end

end A285184.P11357063404972890229

namespace A285184

/-- `A335274(n+1)+A008998(n)-A193641(n+1)` -/
def P11357063404972890229.Spec : Prop :=
  ∀ n, P11357063404972890229.a n = A285184 n

end A285184

/-! ## A285184.P10806309001368959798

`A190512(n+1)+A190512(n)-A332647(n+1)`
-/

namespace A285184.P10806309001368959798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) + (A190512 n - A332647 (n + 1))

end

end A285184.P10806309001368959798

namespace A285184

/-- `A190512(n+1)+A190512(n)-A332647(n+1)` -/
def P10806309001368959798.Spec : Prop :=
  ∀ n, P10806309001368959798.a n = A285184 n

end A285184

/-! ## A285184.P6835944120076143766

`A008998(n+1)+A193641(n+1)-A332647(n+1)`
-/

namespace A285184.P6835944120076143766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) + (A193641 (n + 1) - A332647 (n + 1))

end

end A285184.P6835944120076143766

namespace A285184

/-- `A008998(n+1)+A193641(n+1)-A332647(n+1)` -/
def P6835944120076143766.Spec : Prop :=
  ∀ n, P6835944120076143766.a n = A285184 n

end A285184

/-! ## A285184.P10457069130324963380

`A008998(n+1)+A335242(n+1)-A193641(n+1)`
-/

namespace A285184.P10457069130324963380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) + (A335242 (n + 1) - A193641 (n + 1))

end

end A285184.P10457069130324963380

namespace A285184

/-- `A008998(n+1)+A335242(n+1)-A193641(n+1)` -/
def P10457069130324963380.Spec : Prop :=
  ∀ n, P10457069130324963380.a n = A285184 n

end A285184

/-! ## A285184.P7177928916781992568

`A052980(n+1)+A193641(n+1)-A332491(n+1)`
-/

namespace A285184.P7177928916781992568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + (A193641 (n + 1) - A332491 (n + 1))

end

end A285184.P7177928916781992568

namespace A285184

/-- `A052980(n+1)+A193641(n+1)-A332491(n+1)` -/
def P7177928916781992568.Spec : Prop :=
  ∀ n, P7177928916781992568.a n = A285184 n

end A285184

/-! ## A285184.P3802970918023616386

`A214260(n+1)+A214260(n+1)-A193641(n+1)`
-/

namespace A285184.P3802970918023616386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (n + 1) + (A214260 (n + 1) - A193641 (n + 1))

end

end A285184.P3802970918023616386

namespace A285184

/-- `A214260(n+1)+A214260(n+1)-A193641(n+1)` -/
def P3802970918023616386.Spec : Prop :=
  ∀ n, P3802970918023616386.a n = A285184 n

end A285184

/-! ## A285184.P11055918472111949400

`A193641(n+2)-2*A052980(n+1)`
-/

namespace A285184.P11055918472111949400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 2) - 2 * A052980 (n + 1)

end

end A285184.P11055918472111949400

namespace A285184

/-- `A193641(n+2)-2*A052980(n+1)` -/
def P11055918472111949400.Spec : Prop :=
  ∀ n, P11055918472111949400.a n = A285184 n

end A285184

/-!
# A285185: Expansion of (2*x+4*x^2) / (1-2*x-2*x^2+2*x^3).

The programs for A285185, the canonical program `A285185.P13375318517708863132` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285185 has offset 0).

The definition of A285185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+4x^2)/(1-2x-2x^2+2x^3))` (program `A285185.P13375318517708863132`, by `A285185.P13375318517708863132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285185.P13375318517708863132

`ogf((2x+4x^2)/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285185

/-- `ogf((2x+4x^2)/(1-2x-2x^2+2x^3))` -/
def P13375318517708863132.Spec : Prop :=
  ∀ n, P13375318517708863132.a n = A285185 n

theorem P13375318517708863132.correct : P13375318517708863132.Spec := by
  intro n
  simp only [A285185]

end A285185

/-! ## A285185.P3944044194910226452

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A285185.P3944044194910226452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A285185.P3944044194910226452

namespace A285185

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P3944044194910226452.Spec : Prop :=
  ∀ n, P3944044194910226452.a n = A285185 n

end A285185

/-! ## A285185.P2539221038598620421

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A285185.P2539221038598620421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A285185.P2539221038598620421

namespace A285185

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P2539221038598620421.Spec : Prop :=
  ∀ n, P2539221038598620421.a n = A285185 n

end A285185

/-! ## A285185.P16564648009268049910

`2*A285186(n)`
-/

namespace A285185.P16564648009268049910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285186 n

end

end A285185.P16564648009268049910

namespace A285185

/-- `2*A285186(n)` -/
def P16564648009268049910.Spec : Prop :=
  ∀ n, P16564648009268049910.a n = A285185 n

end A285185

/-! ## A285185.P15035955791956087515

`A285186(n)+A285186(n%(n+1))`
-/

namespace A285185.P15035955791956087515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285186 n + A285186 (n % (n + 1))

end

end A285185.P15035955791956087515

namespace A285185

/-- `A285186(n)+A285186(n%(n+1))` -/
def P15035955791956087515.Spec : Prop :=
  ∀ n, P15035955791956087515.a n = A285185 n

end A285185

/-! ## A285185.P2243688282443928297

`A285186(A005843(n)/2)+A285186(n)`
-/

namespace A285185.P2243688282443928297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285186 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A285186 n

end

end A285185.P2243688282443928297

namespace A285185

/-- `A285186(A005843(n)/2)+A285186(n)` -/
def P2243688282443928297.Spec : Prop :=
  ∀ n, P2243688282443928297.a n = A285185 n

end A285185

/-! ## A285185.P7166333631277550294

`A285186(A005843(n)-n)+A285186(n)`
-/

namespace A285185.P7166333631277550294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285186 (A005843 n - (n : ℤ)).toNat + A285186 n

end

end A285185.P7166333631277550294

namespace A285185

/-- `A285186(A005843(n)-n)+A285186(n)` -/
def P7166333631277550294.Spec : Prop :=
  ∀ n, P7166333631277550294.a n = A285185 n

end A285185

/-! ## A285185.P5403954750199359373

`A285186(n)+A285186(n)/A033273(A091301(n+1))`
-/

namespace A285185.P5403954750199359373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285186 n : ℚ) + (A285186 n : ℚ) / (A033273 (A091301 (n + 1)).toNat : ℚ)

end

end A285185.P5403954750199359373

namespace A285185

/-- `A285186(n)+A285186(n)/A033273(A091301(n+1))` -/
def P5403954750199359373.Spec : Prop :=
  ∀ n, P5403954750199359373.a n = (A285185 n : ℚ)

end A285185

/-! ## A285185.P10783734923207839487

`2*(abs(A078053(n))-A052987(n))`
-/

namespace A285185.P10783734923207839487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|A078053 n| - A052987 n)

end

end A285185.P10783734923207839487

namespace A285185

/-- `2*(abs(A078053(n))-A052987(n))` -/
def P10783734923207839487.Spec : Prop :=
  ∀ n, P10783734923207839487.a n = A285185 n

end A285185

/-! ## A285185.P16820700439085700287

`A285186(n)+A285186(n)%A083100(n)`
-/

namespace A285185.P16820700439085700287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285186 n + Int.tmod (A285186 n) (A083100 n)

end

end A285185.P16820700439085700287

namespace A285185

/-- `A285186(n)+A285186(n)%A083100(n)` -/
def P16820700439085700287.Spec : Prop :=
  ∀ n, P16820700439085700287.a n = A285185 n

end A285185

/-!
# A285186: Expansion of (x+2*x^2) / (1-2*x-2*x^2+2*x^3).

The programs for A285186, the canonical program `A285186.P5785267108191942157` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285186 has offset 0).

The definition of A285186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2)/(1-2x-2x^2+2x^3))` (program `A285186.P5785267108191942157`, by `A285186.P5785267108191942157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285186.P5785267108191942157

`ogf((x+2x^2)/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285186

/-- `ogf((x+2x^2)/(1-2x-2x^2+2x^3))` -/
def P5785267108191942157.Spec : Prop :=
  ∀ n, P5785267108191942157.a n = A285186 n

theorem P5785267108191942157.correct : P5785267108191942157.Spec := by
  intro n
  simp only [A285186]

end A285186

/-! ## A285186.P13082599991034556778

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A285186.P13082599991034556778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A285186.P13082599991034556778

namespace A285186

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P13082599991034556778.Spec : Prop :=
  ∀ n, P13082599991034556778.a n = A285186 n

end A285186

/-! ## A285186.P10975538784164881149

`A285185(n)/2`
-/

namespace A285186.P10975538784164881149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285185 n : ℚ) / 2

end

end A285186.P10975538784164881149

namespace A285186

/-- `A285185(n)/2` -/
def P10975538784164881149.Spec : Prop :=
  ∀ n, P10975538784164881149.a n = (A285186 n : ℚ)

end A285186

/-! ## A285186.P16922523068285248385

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A285186.P16922523068285248385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A285186.P16922523068285248385

namespace A285186

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P16922523068285248385.Spec : Prop :=
  ∀ n, P16922523068285248385.a n = A285186 n

end A285186

/-! ## A285186.P11769013383097595757

`A077937(n)-A052987(log2(A011782(n)))`
-/

namespace A285186.P11769013383097595757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 n - A052987 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A285186.P11769013383097595757

namespace A285186

/-- `A077937(n)-A052987(log2(A011782(n)))` -/
def P11769013383097595757.Spec : Prop :=
  ∀ n, P11769013383097595757.a n = A285186 n

end A285186

/-! ## A285186.P309039472817538446

`3*A052528(n)-A107300(n)`
-/

namespace A285186.P309039472817538446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052528 n - A107300 n

end

end A285186.P309039472817538446

namespace A285186

/-- `3*A052528(n)-A107300(n)` -/
def P309039472817538446.Spec : Prop :=
  ∀ n, P309039472817538446.a n = A285186 n

end A285186

/-! ## A285186.P1741023521315432051

`abs(A078053(n))-A052987(n)`
-/

namespace A285186.P1741023521315432051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078053 n| - A052987 n

end

end A285186.P1741023521315432051

namespace A285186

/-- `abs(A078053(n))-A052987(n)` -/
def P1741023521315432051.Spec : Prop :=
  ∀ n, P1741023521315432051.a n = A285186 n

end A285186

/-!
# A285187: a(n) = Sum(psi(k-1)*psi(n-k-1),k=0..n)+(1-(-1)^n)/2, where psi(k) = A000931(k+6).

The programs for A285187, the canonical program `A285187.P15261003129053085157` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285187 has offset 0).

The definition of A285187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285187.P15261003129053085157

`A228364(n+2)+A000035(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A285187

/-- `A228364(n+2)+A000035(n)` -/
def P15261003129053085157.Spec : Prop :=
  ∀ n, P15261003129053085157.a n = A285187 n

theorem P15261003129053085157.correct : P15261003129053085157.Spec := by
  intro n
  simp only [A285187]

end A285187

/-! ## A285187.P17014316772141617277

`A228364(n+2)+Δ[A004526(n)]`
-/

namespace A285187.P17014316772141617277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 2) + (f1 (n + 1) - f1 n)

end

end A285187.P17014316772141617277

namespace A285187

/-- `A228364(n+2)+Δ[A004526(n)]` -/
def P17014316772141617277.Spec : Prop :=
  ∀ n, P17014316772141617277.a n = A285187 n

end A285187

/-! ## A285187.P8829176091984113656

`A228364(n+2)+Δ[A008619(n)]`
-/

namespace A285187.P8829176091984113656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 2) + (f1 (n + 1) - f1 n)

end

end A285187.P8829176091984113656

namespace A285187

/-- `A228364(n+2)+Δ[A008619(n)]` -/
def P8829176091984113656.Spec : Prop :=
  ∀ n, P8829176091984113656.a n = A285187 n

end A285187

/-! ## A285187.P10507544752115675702

`A228364(n+2)+char[A005408(n)]`
-/

namespace A285187.P10507544752115675702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285187.P10507544752115675702

namespace A285187

/-- `A228364(n+2)+char[A005408(n)]` -/
def P10507544752115675702.Spec : Prop :=
  ∀ n, P10507544752115675702.a n = A285187 n

end A285187

/-! ## A285187.P14969171096910206557

`or(char[A004273(n)], A228364(n+2))`
-/

namespace A285187.P14969171096910206557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A228364 (n + 2))

end

end A285187.P14969171096910206557

namespace A285187

/-- `or(char[A004273(n)], A228364(n+2))` -/
def P14969171096910206557.Spec : Prop :=
  ∀ n, P14969171096910206557.a n = A285187 n

end A285187

/-!
# A285188: a(n) = Sum_{k=1..n} (k^2*floor(k/2)).

The programs for A285188, the canonical program `A285188.P11800870653070609043` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285188 has offset 1).

The definition of A285188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285188.P11800870653070609043

`(n+1)*(n+2)*(3*(n+1)²+n+1-1+3*(-1)^(n+1))/24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285188

/-- `(n+1)*(n+2)*(3*(n+1)²+n+1-1+3*(-1)^(n+1))/24` -/
def P11800870653070609043.Spec : Prop :=
  ∀ n, P11800870653070609043.a n = (A285188 (n + 1) : ℚ)

end A285188

/-! ## A285188.P8138893552804752143

`floor(∑[(n+1)²*∑[1-a(n-1)]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A285188.P8138893552804752143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P8138893552804752143

namespace A285188

/-- `floor(∑[(n+1)²*∑[1-a(n-1)]])` -/
def P8138893552804752143.Spec : Prop :=
  ∀ n, P8138893552804752143.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P12626092704729154918

`a(n-1)+(n+1)²*floor((n+1)/2)` with `a(0)=0`
-/

namespace A285188.P12626092704729154918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 : ℤ) * ⌊(n + 1 : ℚ) / 2⌋

end

end A285188.P12626092704729154918

namespace A285188

/-- `a(n-1)+(n+1)²*floor((n+1)/2)` -/
def P12626092704729154918.Spec : Prop :=
  ∀ n, P12626092704729154918.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P1186460272292892550

`∑[(n+1)*A093353(n)]`
-/

namespace A285188.P1186460272292892550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P1186460272292892550

namespace A285188

/-- `∑[(n+1)*A093353(n)]` -/
def P1186460272292892550.Spec : Prop :=
  ∀ n, P1186460272292892550.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P7120559126755279446

`∑[(n+1)²*A110654(n)]`
-/

namespace A285188.P7120559126755279446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P7120559126755279446

namespace A285188

/-- `∑[(n+1)²*A110654(n)]` -/
def P7120559126755279446.Spec : Prop :=
  ∀ n, P7120559126755279446.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P6380284907297431686

`A213496(n)+a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A285188.P6380284907297431686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A213496 n + a (n - 2)

end

end A285188.P6380284907297431686

namespace A285188

/-- `A213496(n)+a(n-2)` -/
def P6380284907297431686.Spec : Prop :=
  ∀ n, P6380284907297431686.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P2601898465121304633

`∑[(n+1)*∑[n+1]]-A212760(n)`
-/

namespace A285188.P2601898465121304633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A212760 n

end

end A285188.P2601898465121304633

namespace A285188

/-- `∑[(n+1)*∑[n+1]]-A212760(n)` -/
def P2601898465121304633.Spec : Prop :=
  ∀ n, P2601898465121304633.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P14555353558064615894

`∑[A265645(n+1)]`
-/

namespace A285188.P14555353558064615894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P14555353558064615894

namespace A285188

/-- `∑[A265645(n+1)]` -/
def P14555353558064615894.Spec : Prop :=
  ∀ n, P14555353558064615894.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P16195905470398452969

`∑[(n+1)²*A004526(n+1)]`
-/

namespace A285188.P16195905470398452969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P16195905470398452969

namespace A285188

/-- `∑[(n+1)²*A004526(n+1)]` -/
def P16195905470398452969.Spec : Prop :=
  ∀ n, P16195905470398452969.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P9641274652330607223

`∑[(n+1)²*A123108(n+1)]`
-/

namespace A285188.P9641274652330607223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285188.P9641274652330607223

namespace A285188

/-- `∑[(n+1)²*A123108(n+1)]` -/
def P9641274652330607223.Spec : Prop :=
  ∀ n, P9641274652330607223.a n = A285188 (n + 1)

end A285188

/-! ## A285188.P16439472706933674230

`A006331(∑[n%2])+A000914(n)`
-/

namespace A285188.P16439472706933674230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (∑ j ∈ Finset.range (n + 1), f1 j) + A000914 n

end

end A285188.P16439472706933674230

namespace A285188

/-- `A006331(∑[n%2])+A000914(n)` -/
def P16439472706933674230.Spec : Prop :=
  ∀ n, P16439472706933674230.a n = A285188 (n + 1)

end A285188

/-!
# A285189: k appears A283832(k+1) times.

The programs for A285189, there is no canonical definition to state claims against.
-/

/-! ## A285189.P6741609964733252921

`∑[char[A280774(n+1)]]`
-/

namespace A285189.P6741609964733252921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280774 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285189.P6741609964733252921

/-! ## A285189.P15165613161857760480

`∑[char[∑[A283832(n+1)]]]`
-/

namespace A285189.P15165613161857760480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285189.P15165613161857760480

/-! ## A285189.P5001324326546356828

`∑[char[eq[1, A280738(n+2)]+1]]`
-/

namespace A285189.P5001324326546356828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285189.P5001324326546356828

/-! ## A285189.P6644004723588976876

`n-∑[A060576(A280738(n+1))]`
-/

namespace A285189.P6644004723588976876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A280738 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285189.P6644004723588976876

/-! ## A285189.P14814737164462718064

`∑[floor(A178334(n)/A280738(n+1))]`
-/

namespace A285189.P14814737164462718064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178334 n : ℚ) / (A280738 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285189.P14814737164462718064

/-!
# A285190: Records in A283832.

The programs for A285190, there is no canonical definition to state claims against.
-/

/-! ## A285190.P9698263242495201677

`record[A283832(n+1)]`
-/

namespace A285190.P9698263242495201677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285190.P9698263242495201677

/-! ## A285190.P3587393856777419264

`A283832(A285191(n+1))`
-/

namespace A285190.P3587393856777419264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (A285191 (n + 1)).toNat

end

end A285190.P3587393856777419264

/-! ## A285190.P6318629552453262271

`eq[A102572(2*(n+2)), A162514(A292741(n+2))]`
-/

namespace A285190.P6318629552453262271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A292741 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285190.P6318629552453262271

/-!
# A285192: Array read by antidiagonals: T(n,k) = n*k*(3+n*k)/2 (n >= 0, k >= 0).

The programs for A285192, the canonical program `A285192.P6231520047233259556` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285192 has offset 0).

The definition of A285192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285192.P6231520047233259556

`col(n)*(row(n)-col(n))*(3+col(n)*(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285192

/-- `col(n)*(row(n)-col(n))*(3+col(n)*(row(n)-col(n)))/2` -/
def P6231520047233259556.Spec : Prop :=
  ∀ n, P6231520047233259556.a n = (A285192 n : ℚ)

end A285192

/-! ## A285192.P398011325552142949

`(row(n)-col(n))*col(n)*(3+(row(n)-col(n))*col(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285192.P398011325552142949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * (3 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) : ℚ) / 2

end

end A285192.P398011325552142949

namespace A285192

/-- `(row(n)-col(n))*col(n)*(3+(row(n)-col(n))*col(n))/2` -/
def P398011325552142949.Spec : Prop :=
  ∀ n, P398011325552142949.a n = (A285192 n : ℚ)

end A285192

/-! ## A285192.P8636717589507868454

`floor(A082046(n)/2)`
-/

namespace A285192.P8636717589507868454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082046 n : ℚ) / 2⌋

end

end A285192.P8636717589507868454

namespace A285192

/-- `floor(A082046(n)/2)` -/
def P8636717589507868454.Spec : Prop :=
  ∀ n, P8636717589507868454.a n = A285192 n

end A285192

/-! ## A285192.P11599822058226530677

`abs(1-C(A077028(n)+1, 2))`
-/

namespace A285192.P11599822058226530677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A077028 n + 1).toNat 2 : ℤ)|

end

end A285192.P11599822058226530677

namespace A285192

/-- `abs(1-C(A077028(n)+1, 2))` -/
def P11599822058226530677.Spec : Prop :=
  ∀ n, P11599822058226530677.a n = A285192 n

end A285192

/-! ## A285192.P13793540878540936892

`A000096(A004247(n))`
-/

namespace A285192.P13793540878540936892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004247 n).toNat

end

end A285192.P13793540878540936892

namespace A285192

/-- `A000096(A004247(n))` -/
def P13793540878540936892.Spec : Prop :=
  ∀ n, P13793540878540936892.a n = A285192 n

end A285192

/-! ## A285192.P13593259376830410524

`A131119(A157528(n))`
-/

namespace A285192.P13593259376830410524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131119 (A157528 n).toNat

end

end A285192.P13593259376830410524

namespace A285192

/-- `A131119(A157528(n))` -/
def P13593259376830410524.Spec : Prop :=
  ∀ n, P13593259376830410524.a n = A285192 n

end A285192

/-! ## A285192.P15344838892403131231

`A175631(A309555(n))`
-/

namespace A285192.P15344838892403131231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175631 (A309555 n).toNat

end

end A285192.P15344838892403131231

namespace A285192

/-- `A175631(A309555(n))` -/
def P15344838892403131231.Spec : Prop :=
  ∀ n, P15344838892403131231.a n = A285192 n

end A285192

/-! ## A285192.P5482112786984298213

`A000096(A077028(n)-1)`
-/

namespace A285192.P5482112786984298213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A077028 n - 1).toNat

end

end A285192.P5482112786984298213

namespace A285192

/-- `A000096(A077028(n)-1)` -/
def P5482112786984298213.Spec : Prop :=
  ∀ n, P5482112786984298213.a n = A285192 n

end A285192

/-! ## A285192.P12118088426801105116

`A000096(1-A176270(n))`
-/

namespace A285192.P12118088426801105116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (1 - A176270 n).toNat

end

end A285192.P12118088426801105116

namespace A285192

/-- `A000096(1-A176270(n))` -/
def P12118088426801105116.Spec : Prop :=
  ∀ n, P12118088426801105116.a n = A285192 n

end A285192

/-! ## A285192.P6987833941219279240

`A000217(A004247(n)+1)-1`
-/

namespace A285192.P6987833941219279240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004247 n + 1).toNat - 1

end

end A285192.P6987833941219279240

namespace A285192

/-- `A000217(A004247(n)+1)-1` -/
def P6987833941219279240.Spec : Prop :=
  ∀ n, P6987833941219279240.a n = A285192 n

end A285192

/-! ## A285192.P9293762409101465219

`A161680(A077028(n)+1)-1`
-/

namespace A285192.P9293762409101465219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A077028 n + 1).toNat - 1

end

end A285192.P9293762409101465219

namespace A285192

/-- `A161680(A077028(n)+1)-1` -/
def P9293762409101465219.Spec : Prop :=
  ∀ n, P9293762409101465219.a n = A285192 n

end A285192

/-! ## A285192.P7376093964793822846

`A000124(A004247(n)+1)-2`
-/

namespace A285192.P7376093964793822846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004247 n + 1).toNat - 2

end

end A285192.P7376093964793822846

namespace A285192

/-- `A000124(A004247(n)+1)-2` -/
def P7376093964793822846.Spec : Prop :=
  ∀ n, P7376093964793822846.a n = A285192 n

end A285192

/-! ## A285192.P3761729675498964961

`A161680(A004247(n)+2)-1`
-/

namespace A285192.P3761729675498964961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004247 n + 2).toNat - 1

end

end A285192.P3761729675498964961

namespace A285192

/-- `A161680(A004247(n)+2)-1` -/
def P3761729675498964961.Spec : Prop :=
  ∀ n, P3761729675498964961.a n = A285192 n

end A285192

/-! ## A285192.P7808834475191066183

`A000217(2-A176270(n))-1`
-/

namespace A285192.P7808834475191066183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 - A176270 n).toNat - 1

end

end A285192.P7808834475191066183

namespace A285192

/-- `A000217(2-A176270(n))-1` -/
def P7808834475191066183.Spec : Prop :=
  ∀ n, P7808834475191066183.a n = A285192 n

end A285192

/-! ## A285192.P7746335365609591665

`A008795(2*A004247(n))-1`
-/

namespace A285192.P7746335365609591665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A004247 n).toNat - 1

end

end A285192.P7746335365609591665

namespace A285192

/-- `A008795(2*A004247(n))-1` -/
def P7746335365609591665.Spec : Prop :=
  ∀ n, P7746335365609591665.a n = A285192 n

end A285192

/-! ## A285192.P1928255412442872551

`A000124(2-A176270(n))-2`
-/

namespace A285192.P1928255412442872551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 - A176270 n).toNat - 2

end

end A285192.P1928255412442872551

namespace A285192

/-- `A000124(2-A176270(n))-2` -/
def P1928255412442872551.Spec : Prop :=
  ∀ n, P1928255412442872551.a n = A285192 n

end A285192

/-! ## A285192.P16405675355876240105

`A106247(2*A077028(n))-2`
-/

namespace A285192.P16405675355876240105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (2 * A077028 n).toNat - 2

end

end A285192.P16405675355876240105

namespace A285192

/-- `A106247(2*A077028(n))-2` -/
def P16405675355876240105.Spec : Prop :=
  ∀ n, P16405675355876240105.a n = A285192 n

end A285192

/-! ## A285192.P366440112055653155

`(A077028(n)²-A176270(n))/2`
-/

namespace A285192.P366440112055653155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077028 n ^ 2 - A176270 n : ℚ) / 2

end

end A285192.P366440112055653155

namespace A285192

/-- `(A077028(n)²-A176270(n))/2` -/
def P366440112055653155.Spec : Prop :=
  ∀ n, P366440112055653155.a n = (A285192 n : ℚ)

end A285192

/-! ## A285192.P9218985473268725363

`A001971(A130154(n+1)+2)-1`
-/

namespace A285192.P9218985473268725363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A130154 (n + 1) + 2).toNat - 1

end

end A285192.P9218985473268725363

namespace A285192

/-- `A001971(A130154(n+1)+2)-1` -/
def P9218985473268725363.Spec : Prop :=
  ∀ n, P9218985473268725363.a n = A285192 n

end A285192

/-! ## A285192.P14783370838521019143

`A000096(A003984(n)*A004197(n))`
-/

namespace A285192.P14783370838521019143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003984 n * A004197 n).toNat

end

end A285192.P14783370838521019143

namespace A285192

/-- `A000096(A003984(n)*A004197(n))` -/
def P14783370838521019143.Spec : Prop :=
  ∀ n, P14783370838521019143.a n = A285192 n

end A285192

/-!
# A285193: Expansion of 1/(1+x+2*x^2) mod 3.

The programs for A285193, the canonical program `A285193.P4053812820359465802` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285193 has offset 0).

The definition of A285193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285193.P4053812820359465802

`a(n-8)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0, a(4)=2, a(5)=1, a(6)=1, a(7)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285193

/-- `a(n-8)` -/
def P4053812820359465802.Spec : Prop :=
  ∀ n, (P4053812820359465802.a n : ℤ) = A285193 n

theorem P4053812820359465802.correct : P4053812820359465802.Spec := by
  intro n
  simp only [A285193]

end A285193

/-!
# A285194: Expansion of (1+x^2)/(1+x+x^4) mod 3.

The programs for A285194, the canonical program `A285194.P12820240869321444829` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285194 has offset 0).

The definition of A285194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285194.P12820240869321444829

`∑[A081172(n)]%3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A285194

/-- `∑[A081172(n)]%3` -/
def P12820240869321444829.Spec : Prop :=
  ∀ n, P12820240869321444829.a n = A285194 n

theorem P12820240869321444829.correct : P12820240869321444829.Spec := by
  intro n
  simp only [A285194]

end A285194

/-!
# A285195: G.f.: 2C(x)/(3-sqrt(1-4xC(x))) where C = g.f. for A000108.

The programs for A285195, there is no canonical definition to state claims against.
-/

/-! ## A285195.P15334320110135510997

`A000001(A015446(n))-A015459(n)`
-/

namespace A285195.P15334320110135510997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A015446 n).toNat - A015459 n

end

end A285195.P15334320110135510997

/-! ## A285195.P6426526601786855775

`A066099(A124533(n))-A015459(n)`
-/

namespace A285195.P6426526601786855775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A124533 n).toNat - A015459 n

end

end A285195.P6426526601786855775

/-! ## A285195.P10916540483521426327

`A181935(A015460(n))-A015459(n)`
-/

namespace A285195.P10916540483521426327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A015460 n).toNat - A015459 n

end

end A285195.P10916540483521426327

/-!
# A285196: If A_k denotes the first 2*3^k terms, then A_0 = 01, A_{k+1} = A_k A_k B_k, where B_k is the reversal of A_k.

The programs for A285196, the canonical program `A285196.P9246399367700703755` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285196 has offset 0).

The definition of A285196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285196.P17118698588089681341

`A064990(comp[3*n])`
-/

namespace A285196.P17118698588089681341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A285196.P17118698588089681341

namespace A285196

/-- `A064990(comp[3*n])` -/
def P17118698588089681341.Spec : Prop :=
  ∀ n, P17118698588089681341.a n = A285196 n

end A285196

/-! ## A285196.P15851744482306824805

`A004488(comp[3*n])%2`
-/

namespace A285196.P15851744482306824805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A285196.P15851744482306824805

namespace A285196

/-- `A004488(comp[3*n])%2` -/
def P15851744482306824805.Spec : Prop :=
  ∀ n, P15851744482306824805.a n = A285196 n

end A285196

/-! ## A285196.P8106282626356714803

`A081603(comp[3*n])%2`
-/

namespace A285196.P8106282626356714803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A285196.P8106282626356714803

namespace A285196

/-- `A081603(comp[3*n])%2` -/
def P8106282626356714803.Spec : Prop :=
  ∀ n, P8106282626356714803.a n = A285196 n

end A285196

/-! ## A285196.P8512919941528285028

`A137305(comp[3*n])%2`
-/

namespace A285196.P8512919941528285028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A285196.P8512919941528285028

namespace A285196

/-- `A137305(comp[3*n])%2` -/
def P8512919941528285028.Spec : Prop :=
  ∀ n, P8512919941528285028.a n = A285196 n

end A285196

/-! ## A285196.P3683500607524240143

`A300956(comp[3*n])%2`
-/

namespace A285196.P3683500607524240143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300956 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A285196.P3683500607524240143

namespace A285196

/-- `A300956(comp[3*n])%2` -/
def P3683500607524240143.Spec : Prop :=
  ∀ n, P3683500607524240143.a n = A285196 n

end A285196

/-! ## A285196.P11196152180358991928

`A332498(comp[3*n])%2`
-/

namespace A285196.P11196152180358991928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332498 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A285196.P11196152180358991928

namespace A285196

/-- `A332498(comp[3*n])%2` -/
def P11196152180358991928.Spec : Prop :=
  ∀ n, P11196152180358991928.a n = A285196 n

end A285196

/-! ## A285196.P9380326376663157482

`char[Δ[n²]-A064990(n)]`
-/

namespace A285196.P9380326376663157482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A064990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285196.P9380326376663157482

namespace A285196

/-- `char[Δ[n²]-A064990(n)]` -/
def P9380326376663157482.Spec : Prop :=
  ∀ n, (P9380326376663157482.a n : ℤ) = A285196 n

end A285196

/-! ## A285196.P13454893453540637932

`and(1, A004488(ceil(3*n/2)))`
-/

namespace A285196.P13454893453540637932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 ⌈3 * ((n : ℚ) / 2)⌉.toNat)

end

end A285196.P13454893453540637932

namespace A285196

/-- `and(1, A004488(ceil(3*n/2)))` -/
def P13454893453540637932.Spec : Prop :=
  ∀ n, P13454893453540637932.a n = A285196 n

end A285196

/-! ## A285196.P4669462647049282869

`char[char[A004488(2*n)]+2*n]`
-/

namespace A285196.P4669462647049282869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285196.P4669462647049282869

namespace A285196

/-- `char[char[A004488(2*n)]+2*n]` -/
def P4669462647049282869.Spec : Prop :=
  ∀ n, (P4669462647049282869.a n : ℤ) = A285196 n

end A285196

/-! ## A285196.P6162056066861350300

`char[2*n+1-A061436(n+1)%2]`
-/

namespace A285196.P6162056066861350300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod (A061436 (n + 1)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285196.P6162056066861350300

namespace A285196

/-- `char[2*n+1-A061436(n+1)%2]` -/
def P6162056066861350300.Spec : Prop :=
  ∀ n, (P6162056066861350300.a n : ℤ) = A285196 n

end A285196

/-! ## A285196.P1835559167410402425

`A189717(A320928(n+1))%2`
-/

namespace A285196.P1835559167410402425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189717 (A320928 (n + 1)).toNat) 2

end

end A285196.P1835559167410402425

namespace A285196

/-- `A189717(A320928(n+1))%2` -/
def P1835559167410402425.Spec : Prop :=
  ∀ n, P1835559167410402425.a n = A285196 n

end A285196

/-! ## A285196.P9077931032845207253

`and(1, A064990(A284818(n+1)))`
-/

namespace A285196.P9077931032845207253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064990 (A284818 (n + 1)).toNat)

end

end A285196.P9077931032845207253

namespace A285196

/-- `and(1, A064990(A284818(n+1)))` -/
def P9077931032845207253.Spec : Prop :=
  ∀ n, P9077931032845207253.a n = A285196 n

end A285196

/-! ## A285196.P9246399367700703755

`and(1, A081603(A001057(n)+n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285196

/-- `and(1, A081603(A001057(n)+n))` -/
def P9246399367700703755.Spec : Prop :=
  ∀ n, P9246399367700703755.a n = A285196 n

theorem P9246399367700703755.correct : P9246399367700703755.Spec := by
  intro n
  simp only [A285196]

end A285196

/-! ## A285196.P18293730397448410363

`char[A004523(A004488(2*n+1))]`
-/

namespace A285196.P18293730397448410363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004488 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285196.P18293730397448410363

namespace A285196

/-- `char[A004523(A004488(2*n+1))]` -/
def P18293730397448410363.Spec : Prop :=
  ∀ n, (P18293730397448410363.a n : ℤ) = A285196 n

end A285196

/-! ## A285196.P14161213151757380300

`1-char[A004523(A004488(2*n))]`
-/

namespace A285196.P14161213151757380300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004488 (2 * n)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285196.P14161213151757380300

namespace A285196

/-- `1-char[A004523(A004488(2*n))]` -/
def P14161213151757380300.Spec : Prop :=
  ∀ n, P14161213151757380300.a n = A285196 n

end A285196

/-! ## A285196.P9412255318667639999

`and(1, A000120(A289814(comp[3*n])))`
-/

namespace A285196.P9412255318667639999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000120 (A289814 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat)

end

end A285196.P9412255318667639999

namespace A285196

/-- `and(1, A000120(A289814(comp[3*n])))` -/
def P9412255318667639999.Spec : Prop :=
  ∀ n, P9412255318667639999.a n = A285196 n

end A285196

/-! ## A285196.P3580190678835635549

`1-A064990(A156638(n+1)-2)`
-/

namespace A285196.P3580190678835635549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064990 (A156638 (n + 1) - 2).toNat

end

end A285196.P3580190678835635549

namespace A285196

/-- `1-A064990(A156638(n+1)-2)` -/
def P3580190678835635549.Spec : Prop :=
  ∀ n, P3580190678835635549.a n = A285196 n

end A285196

/-! ## A285196.P15397049303806765838

`A189717(A189665(3*n+1))%2`
-/

namespace A285196.P15397049303806765838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189717 (A189665 (3 * n + 1)).toNat) 2

end

end A285196.P15397049303806765838

namespace A285196

/-- `A189717(A189665(3*n+1))%2` -/
def P15397049303806765838.Spec : Prop :=
  ∀ n, P15397049303806765838.a n = A285196 n

end A285196

/-! ## A285196.P9871440019730977821

`A160383(eq[A131575(n+1), A160382(n)])%2`
-/

namespace A285196.P9871440019730977821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160383 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)) 2

end

end A285196.P9871440019730977821

namespace A285196

/-- `A160383(eq[A131575(n+1), A160382(n)])%2` -/
def P9871440019730977821.Spec : Prop :=
  ∀ n, P9871440019730977821.a n = A285196 n

end A285196

/-!
# A285197: Expansion of (1-6*x+11*x^2-5*x^3) / ((1-x)*(1-3*x)*(1-3*x+x^2)).

The programs for A285197, the canonical program `A285197.P4626010508136434285` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285197 has offset 0).

The definition of A285197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+11x^2-5x^3)/(1-7x+16x^2-13x^3+3x^4))` (program `A285197.P4626010508136434285`, by `A285197.P4626010508136434285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285197.P4626010508136434285

`ogf((1-6x+11x^2-5x^3)/(1-7x+16x^2-13x^3+3x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285197

/-- `ogf((1-6x+11x^2-5x^3)/(1-7x+16x^2-13x^3+3x^4))` -/
def P4626010508136434285.Spec : Prop :=
  ∀ n, P4626010508136434285.a n = A285197 n

theorem P4626010508136434285.correct : P4626010508136434285.Spec := by
  intro n
  simp only [A285197]

end A285197

/-! ## A285197.P9565284573058762795

`7*a(n-1)-16*a(n-2)+13*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A285197.P9565284573058762795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  7 * a (n - 1) - 16 * a (n - 2) + 13 * a (n - 3) - 3 * a (n - 4)

end

end A285197.P9565284573058762795

namespace A285197

/-- `7*a(n-1)-16*a(n-2)+13*a(n-3)-3*a(n-4)` -/
def P9565284573058762795.Spec : Prop :=
  ∀ n, P9565284573058762795.a n = A285197 n

end A285197

/-! ## A285197.P11660476579892831355

`1/2+3^n/2+2^-n*((3-sqrt(5))^n-(3+sqrt(5))^n)/sqrt(5)`
-/

namespace A285197.P11660476579892831355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 + (3 ^ n : ℚ) / 2 : ℝ) + ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ) * ((3 - Real.sqrt (5 : ℝ)) ^ n - (3 + Real.sqrt (5 : ℝ)) ^ n) / Real.sqrt (5 : ℝ)

end

end A285197.P11660476579892831355

namespace A285197

/-- `1/2+3^n/2+2^-n*((3-sqrt(5))^n-(3+sqrt(5))^n)/sqrt(5)` -/
def P11660476579892831355.Spec : Prop :=
  ∀ n, P11660476579892831355.a n = (A285197 n : ℝ)

end A285197

/-!
# A285199: Product of n! and the n-th Legendre polynomial evaluated at 2.

The programs for A285199, there is no canonical definition to state claims against.
-/

/-! ## A285199.P16511429496633674258

`A330396((4*n-3)*a(n-1))+1` with `a(0)=1`
-/

namespace A285199.P16511429496633674258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330396 (((4 * n : ℤ) - 3) * a (n - 1)).toNat + 1

end

end A285199.P16511429496633674258

