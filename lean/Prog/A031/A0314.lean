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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A031400: Period of continued fraction for sqrt(k) equal for all a(n) <= k < a(n)+n.

The programs for A031400, there is no canonical definition to state claims against.
-/

/-! ## A031400.P18011481757935572196

`A030307(A002450(n+2)*A002822(n+1)+3)`
-/

namespace A031400.P18011481757935572196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (A002450 (n + 2) * A002822 (n + 1) + 3).toNat

end

end A031400.P18011481757935572196

/-!
# A031402: Sum of terms in period of continued fraction for sqrt(a(n)) increases.

The programs for A031402, there is no canonical definition to state claims against.
-/

/-! ## A031402.P13607583469651758930

`A065115(A031403(n+1))`
-/

namespace A031402.P13607583469651758930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065115 (A031403 (n + 1)).toNat

end

end A031402.P13607583469651758930

/-! ## A031402.P10172772396268059441

`A065115(record[A013944(n+1)])`
-/

namespace A031402.P10172772396268059441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031402.P10172772396268059441

/-! ## A031402.P6706597386890146464

`A065115(record[A010340(n+2)])`
-/

namespace A031402.P6706597386890146464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031402.P6706597386890146464

/-! ## A031402.P11519741991424350732

`eq[A326573(A355402(n+7)), A353493(n)]`
-/

namespace A031402.P11519741991424350732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326573 (A355402 (n + 7)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031402.P11519741991424350732

/-!
# A031403: Sum of terms in period of continued fraction for sqrt(A031402(n)).

The programs for A031403, there is no canonical definition to state claims against.
-/

/-! ## A031403.P11521676117334874814

`record[A013944(n+1)]`
-/

namespace A031403.P11521676117334874814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031403.P11521676117334874814

/-! ## A031403.P6262986541295006967

`record[A010340(n+2)]`
-/

namespace A031403.P6262986541295006967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031403.P6262986541295006967

/-! ## A031403.P1641582274370646789

`A010340(A031402(n+1))`
-/

namespace A031403.P1641582274370646789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A031402 (n + 1)).toNat

end

end A031403.P1641582274370646789

/-! ## A031403.P5531663585473782176

`record[A013944(A008620(n))*A087960(n)]`
-/

namespace A031403.P5531663585473782176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013944 (A008620 n).toNat * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031403.P5531663585473782176

/-! ## A031403.P10909574724845262075

`record[A013944(A008620(n))%A004767(n)]`
-/

namespace A031403.P10909574724845262075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013944 (A008620 n).toNat) (A004767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031403.P10909574724845262075

/-! ## A031403.P17699373064195530857

`A097807(n)²*record[A013944(A008620(n))]`
-/

namespace A031403.P17699373064195530857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013944 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031403.P17699373064195530857

/-!
# A031404: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 1.

The programs for A031404, there is no canonical definition to state claims against.
-/

/-! ## A031404.P742849245327738685

`eq[A134430(n), A308778(n)]`
-/

namespace A031404.P742849245327738685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P742849245327738685

/-! ## A031404.P6762602685615069910

`eq[A141134(n), A308778(n)]`
-/

namespace A031404.P6762602685615069910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P6762602685615069910

/-! ## A031404.P8271479425295341916

`A014601(eq[1, A308778(A014601(n))])`
-/

namespace A031404.P8271479425295341916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031404.P8271479425295341916

/-! ## A031404.P422949999026122828

`eq[A019426(A065033(n)), A308778(n)]`
-/

namespace A031404.P422949999026122828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P422949999026122828

/-! ## A031404.P14225824033893055088

`eq[A019426(A110654(n)), A308778(n)]`
-/

namespace A031404.P14225824033893055088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A110654 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P14225824033893055088

/-! ## A031404.P1014141059952214487

`eq[A019426(A080513(n)+1), A308778(n)]`
-/

namespace A031404.P1014141059952214487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A080513 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P1014141059952214487

/-! ## A031404.P11561077289367637298

`eq[A019428(A110654(n)+2), A308778(n)]`
-/

namespace A031404.P11561077289367637298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A110654 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P11561077289367637298

/-! ## A031404.P8785787473665761565

`eq[A019426(A008619(n+3)), A308778(n)]`
-/

namespace A031404.P8785787473665761565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A008619 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031404.P8785787473665761565

/-!
# A031405: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 2.

The programs for A031405, there is no canonical definition to state claims against.
-/

/-! ## A031405.P13721184609842086922

`eq[2, A308778(A103164(n))]`
-/

namespace A031405.P13721184609842086922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A103164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031405.P13721184609842086922

/-! ## A031405.P14993322289343280693

`eq[A047853(A119335(n)), A308778(n)]`
-/

namespace A031405.P14993322289343280693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 (A119335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031405.P14993322289343280693

/-! ## A031405.P8261482946067548150

`eq[A089120(A174544(n)), A308778(n)]`
-/

namespace A031405.P8261482946067548150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A174544 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031405.P8261482946067548150

/-! ## A031405.P9960087314410723322

`eq[A010123(A341862(n)), A308778(n)]`
-/

namespace A031405.P9960087314410723322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A341862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031405.P9960087314410723322

/-!
# A031406: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 3.

The programs for A031406, there is no canonical definition to state claims against.
-/

/-! ## A031406.P14949443910274604499

`eq[A141134(n)+2, A308778(n)]`
-/

namespace A031406.P14949443910274604499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031406.P14949443910274604499

/-! ## A031406.P11651659500688153067

`eq[3, A134430(n)*A308778(n)]`
-/

namespace A031406.P11651659500688153067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031406.P11651659500688153067

/-! ## A031406.P15524827881647163686

`eq[3, gcd(A110654(n)%2, A308778(n))]`
-/

namespace A031406.P15524827881647163686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A110654 n) 2) (A308778 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031406.P15524827881647163686

/-! ## A031406.P14030203051826441942

`eq[A174971(A110654(n)), A308778(n)]`
-/

namespace A031406.P14030203051826441942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (A110654 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031406.P14030203051826441942

/-! ## A031406.P17221718159732729986

`eq[A019426(A065033(n))+2, A308778(n)]`
-/

namespace A031406.P17221718159732729986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A065033 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031406.P17221718159732729986

/-! ## A031406.P94452313683917344

`eq[13, A134430(n)+A024621(A308778(n)+2)+1]`
-/

namespace A031406.P94452313683917344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n + (A024621 (A308778 n + 2).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031406.P94452313683917344

/-! ## A031406.P17062328615806589394

`eq[A308778(n)+2, A266595(A047216(n+1))]`
-/

namespace A031406.P17062328615806589394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A047216 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031406.P17062328615806589394

/-!
# A031407: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 4.

The programs for A031407, there is no canonical definition to state claims against.
-/

/-! ## A031407.P3844103200676832206

`eq[A100008(A006512(n+1)), A308778(n)]`
-/

namespace A031407.P3844103200676832206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100008 (A006512 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031407.P3844103200676832206

/-! ## A031407.P17864391362260159410

`eq[A040002(n²), A308778(n)]`
-/

namespace A031407.P17864391362260159410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031407.P17864391362260159410

/-! ## A031407.P3545446557771553723

`eq[A052470(n+1), A308778(n)]`
-/

namespace A031407.P3545446557771553723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031407.P3545446557771553723

/-! ## A031407.P5005999672647381190

`eq[A130753(n+1), A308778(n)]`
-/

namespace A031407.P5005999672647381190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031407.P5005999672647381190

/-! ## A031407.P10381468951641712457

`eq[A168587(n+1), A308778(n)]`
-/

namespace A031407.P10381468951641712457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031407.P10381468951641712457

/-!
# A031408: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 5.

The programs for A031408, there is no canonical definition to state claims against.
-/

/-! ## A031408.P13337360499977063131

`eq[6, A308778(n)+A141134(n)]`
-/

namespace A031408.P13337360499977063131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n + A141134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031408.P13337360499977063131

/-! ## A031408.P5713347609084729527

`eq[5, A134430(n)*A308778(n)]`
-/

namespace A031408.P5713347609084729527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031408.P5713347609084729527

/-! ## A031408.P13870297384918120256

`eq[5, gcd(A110654(n)%2, A308778(n))]`
-/

namespace A031408.P13870297384918120256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A110654 n) 2) (A308778 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031408.P13870297384918120256

/-! ## A031408.P15933845442521670033

`eq[A266595(A080513(n)), A308778(n)]`
-/

namespace A031408.P15933845442521670033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A080513 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031408.P15933845442521670033

/-! ## A031408.P13216545031608216319

`eq[A266595(A047216(n+1)), A308778(n)]`
-/

namespace A031408.P13216545031608216319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A047216 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031408.P13216545031608216319

/-!
# A031410: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 7.

The programs for A031410, there is no canonical definition to state claims against.
-/

/-! ## A031410.P13004920660434561678

`eq[A141134(n)+6, A308778(n)]`
-/

namespace A031410.P13004920660434561678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031410.P13004920660434561678

/-! ## A031410.P14031486651943130453

`eq[7, A134430(n)*A308778(n)]`
-/

namespace A031410.P14031486651943130453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031410.P14031486651943130453

/-! ## A031410.P11785286362338244449

`eq[A266595(A080513(n))+2, A308778(n)]`
-/

namespace A031410.P11785286362338244449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A080513 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031410.P11785286362338244449

/-! ## A031410.P13713391583191034699

`eq[7, A000035(A065033(n+2))*A308778(n)]`
-/

namespace A031410.P13713391583191034699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A065033 (n + 2)).toNat * A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031410.P13713391583191034699

/-! ## A031410.P14249824508897097473

`eq[A266595(A047216(n+1))+2, A308778(n)]`
-/

namespace A031410.P14249824508897097473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A047216 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031410.P14249824508897097473

/-!
# A031411: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 8.

The programs for A031411, there is no canonical definition to state claims against.
-/

/-! ## A031411.P12437052465528548561

`eq[A216699(A001122(n+1)), A308778(n)]`
-/

namespace A031411.P12437052465528548561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216699 (A001122 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031411.P12437052465528548561

/-! ## A031411.P4923902272796439467

`eq[A046644(A019337(n+1))+6, A308778(n)]`
-/

namespace A031411.P4923902272796439467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A019337 (n + 1)).toNat + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031411.P4923902272796439467

/-! ## A031411.P7019932256587301509

`eq[A046644(A040994(n+1))+6, A308778(n)]`
-/

namespace A031411.P7019932256587301509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A040994 (n + 1)).toNat + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031411.P7019932256587301509

/-! ## A031411.P634450694497947024

`eq[A046644(A007500(n+1))+6, A308778(n)]`
-/

namespace A031411.P634450694497947024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A007500 (n + 1)).toNat + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031411.P634450694497947024

/-! ## A031411.P14790987628057103968

`eq[A010169(A044414(n+1)), A308778(n)]`
-/

namespace A031411.P14790987628057103968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A044414 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031411.P14790987628057103968

/-!
# A031412: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 9.

The programs for A031412, there is no canonical definition to state claims against.
-/

/-! ## A031412.P9429034701925279299

`eq[A242314(A242307(n+1)), A308778(n)]`
-/

namespace A031412.P9429034701925279299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242314 (A242307 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031412.P9429034701925279299

/-! ## A031412.P16604196742253382086

`eq[A242314(A242309(n+1)), A308778(n)]`
-/

namespace A031412.P16604196742253382086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242314 (A242309 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031412.P16604196742253382086

/-!
# A031413: Numbers k such that the continued fraction for sqrt(k) has even period 2*m and the m-th term of the periodic part is 10.

The programs for A031413, there is no canonical definition to state claims against.
-/

/-! ## A031413.P16430515844663570351

`eq[A066135(A063130(n+1)), A308778(n)]`
-/

namespace A031413.P16430515844663570351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A063130 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031413.P16430515844663570351

/-! ## A031413.P15709824144758811970

`eq[A242314(A242307(n+1))+1, A308778(n)]`
-/

namespace A031413.P15709824144758811970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242314 (A242307 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031413.P15709824144758811970

/-! ## A031413.P4686863636858519954

`eq[A216699(A001122(n+1))+2, A308778(n)]`
-/

namespace A031413.P4686863636858519954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216699 (A001122 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031413.P4686863636858519954

/-! ## A031413.P15864674271575569847

`eq[A054886(A200520(3*n+1)), A308778(n)]`
-/

namespace A031413.P15864674271575569847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (A200520 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031413.P15864674271575569847

/-!
# A031414: Numbers k such that the continued fraction for sqrt(k) has odd period and if the last term of the periodic part is deleted then there are a pair of central terms both equal to 1.

The programs for A031414, there is no canonical definition to state claims against.
-/

/-! ## A031414.P3319174174221033487

`eq[A134430(n+2), A308778(n)]`
-/

namespace A031414.P3319174174221033487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P3319174174221033487

/-! ## A031414.P9526101115867083186

`eq[A141134(n+2), A308778(n)]`
-/

namespace A031414.P9526101115867083186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P9526101115867083186

/-! ## A031414.P4406111042058627533

`eq[A000217(n)%2, A308778(n)]`
-/

namespace A031414.P4406111042058627533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P4406111042058627533

/-! ## A031414.P1699229584750315540

`eq[A110654(n)%2, A308778(n)]`
-/

namespace A031414.P1699229584750315540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P1699229584750315540

/-! ## A031414.P7435511950733876849

`eq[(A134430(n)/2)², A308778(n)]`
-/

namespace A031414.P7435511950733876849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134430 n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031414.P7435511950733876849

/-! ## A031414.P2527415871319437362

`∩[eq[1, A308778(n)], A031396(n+1)]`
-/

namespace A031414.P2527415871319437362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A031414.P2527415871319437362

/-! ## A031414.P18087827241286745424

`eq[(A308778(n)+2)², A147818(n+1)]`
-/

namespace A031414.P18087827241286745424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308778 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P18087827241286745424

/-! ## A031414.P13167496289181789773

`eq[A000035(A065033(n)), A308778(n)]`
-/

namespace A031414.P13167496289181789773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P13167496289181789773

/-! ## A031414.P8794577612389988601

`eq[A019426(A080513(n)), A308778(n)]`
-/

namespace A031414.P8794577612389988601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A080513 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P8794577612389988601

/-! ## A031414.P15401657917373488198

`eq[A000035(A110654(n)), A308778(n)]`
-/

namespace A031414.P15401657917373488198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110654 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P15401657917373488198

/-! ## A031414.P4607208720106003597

`eq[A019426(A008619(n+1)), A308778(n)]`
-/

namespace A031414.P4607208720106003597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A008619 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P4607208720106003597

/-! ## A031414.P1027277664535288034

`eq[A019426(A065033(n)+1), A308778(n)]`
-/

namespace A031414.P1027277664535288034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A065033 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P1027277664535288034

/-! ## A031414.P12065884758531516239

`eq[A019426(A110654(n)+1), A308778(n)]`
-/

namespace A031414.P12065884758531516239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A110654 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P12065884758531516239

/-! ## A031414.P7744450840199843635

`eq[A019428(A110654(n)+1), A308778(n)]`
-/

namespace A031414.P7744450840199843635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A110654 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P7744450840199843635

/-! ## A031414.P9919127284440793489

`eq[A000035(A008619(n+3)), A308778(n)]`
-/

namespace A031414.P9919127284440793489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031414.P9919127284440793489

/-!
# A031415: Numbers k such that the continued fraction for sqrt(k) has odd period and if the last term of the periodic part is deleted then there are a pair of central terms both equal to 2.

The programs for A031415, there is no canonical definition to state claims against.
-/

/-! ## A031415.P9150621474698033377

`∩[eq[2, A308778(n)], A031396(n+1)]`
-/

namespace A031415.P9150621474698033377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A031415.P9150621474698033377

/-!
# A031424: Least term in period of continued fraction for sqrt(n), as n runs through the nonsquares (A000037).

The programs for A031424, there is no canonical definition to state claims against.
-/

/-! ## A031424.P4768042639227292219

`A276689(comp[n²])`
-/

namespace A031424.P4768042639227292219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A031424.P4768042639227292219

/-! ## A031424.P7327909578310779530

`A276689(A000037(n+1))%A106839(n)`
-/

namespace A031424.P7327909578310779530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276689 (A000037 (n + 1)).toNat) (A106839 n)

end

end A031424.P7327909578310779530

/-! ## A031424.P6150084612262840541

`A040790(A006530(n+1))*A276689(A000037(n+1))`
-/

namespace A031424.P6150084612262840541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A006530 (n + 1)).toNat * A276689 (A000037 (n + 1)).toNat

end

end A031424.P6150084612262840541

/-! ## A031424.P10512749858828837160

`A000196(A276689(A000037(n+1))²)`
-/

namespace A031424.P10512749858828837160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276689 (A000037 (n + 1)).toNat ^ 2).toNat

end

end A031424.P10512749858828837160

/-! ## A031424.P931232885271158878

`A000196(A276689(A000037(n+1))^2)`
-/

namespace A031424.P931232885271158878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276689 (A000037 (n + 1)).toNat ^ 2).toNat

end

end A031424.P931232885271158878

/-! ## A031424.P7828720776657548409

`A000194(A276689(A000037(n+1))²)`
-/

namespace A031424.P7828720776657548409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A276689 (A000037 (n + 1)).toNat ^ 2).toNat

end

end A031424.P7828720776657548409

/-! ## A031424.P14428875828148438974

`and(A118883(n+1), A276689(A000037(n+1)))`
-/

namespace A031424.P14428875828148438974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A276689 (A000037 (n + 1)).toNat)

end

end A031424.P14428875828148438974

/-! ## A031424.P13665776592296965856

`A276689(A000037(n+1))+A276689(n²)`
-/

namespace A031424.P13665776592296965856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A000037 (n + 1)).toNat + A276689 (n ^ 2)

end

end A031424.P13665776592296965856

/-!
# A031425: Least term in period of continued fraction for sqrt(n) is 1.

The programs for A031425, there is no canonical definition to state claims against.
-/

/-! ## A031425.P7936480676763654694

`∪[A013648(n+1), A013651(n+1)]`
-/

namespace A031425.P7936480676763654694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031425.P7936480676763654694

/-! ## A031425.P16031160717970459621

`∪[A013651(n+1), A031404(n+1)]`
-/

namespace A031425.P16031160717970459621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031425.P16031160717970459621

/-! ## A031425.P13983284225731860992

`A000037(eq[1, A031424(n+1)]+1)`
-/

namespace A031425.P13983284225731860992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031425.P13983284225731860992

/-! ## A031425.P11657886258772010404

`record[A000037(n+2)/A031424(n+2)]`
-/

namespace A031425.P11657886258772010404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 2) : ℚ) / (A031424 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031425.P11657886258772010404

/-! ## A031425.P14454578469747561845

`eq[1, A276689(n)]`
-/

namespace A031425.P14454578469747561845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031425.P14454578469747561845

/-! ## A031425.P7839547879368569098

`lt[A004482(A276689(n)+1), 1]`
-/

namespace A031425.P7839547879368569098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A276689 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031425.P7839547879368569098

/-! ## A031425.P2947271811598832510

`lt[A004482(2*A276689(n)), 1]`
-/

namespace A031425.P2947271811598832510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (2 * A276689 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031425.P2947271811598832510

/-! ## A031425.P3986789633602584542

`lt[(1-A276689(n))², A057427(n)]`
-/

namespace A031425.P3986789633602584542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A276689 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031425.P3986789633602584542

/-! ## A031425.P524620517571018258

`lt[A276689(n), A276689(A276689(n)+1)]`
-/

namespace A031425.P524620517571018258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A276689 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031425.P524620517571018258

/-! ## A031425.P8516971999311696758

`A297113(p?[A008578(n+1)*A276689(n)])`
-/

namespace A031425.P8516971999311696758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A276689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031425.P8516971999311696758

/-!
# A031426: Least term in period of continued fraction for sqrt(n) is 2.

The programs for A031426, there is no canonical definition to state claims against.
-/

/-! ## A031426.P2224727774597757046

`A000037(eq[2, A031424(n+1)]+1)`
-/

namespace A031426.P2224727774597757046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031426.P2224727774597757046

/-! ## A031426.P241596899438605237

`record[A000037(n+1)/A127218(A031424(n+1))]`
-/

namespace A031426.P241596899438605237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 1) : ℚ) / (A127218 (A031424 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031426.P241596899438605237

/-! ## A031426.P15434554004120110936

`record[A135668(n+1)/A127218(A031424(n+1))]`
-/

namespace A031426.P15434554004120110936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135668 (n + 1) : ℚ) / (A127218 (A031424 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031426.P15434554004120110936

/-! ## A031426.P11086090169828659522

`eq[2, A276689(n)]`
-/

namespace A031426.P11086090169828659522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031426.P11086090169828659522

/-! ## A031426.P12913692882486540420

`lt[(2-A276689(n))², A057427(n)]`
-/

namespace A031426.P12913692882486540420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A276689 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031426.P12913692882486540420

/-! ## A031426.P6093771442483676149

`lt[A004482(A276689(n)), A057427(n)]`
-/

namespace A031426.P6093771442483676149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A276689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031426.P6093771442483676149

/-!
# A031427: Least term in period of continued fraction for sqrt(n) is 3.

The programs for A031427, there is no canonical definition to state claims against.
-/

/-! ## A031427.P8646691803733692802

`eq[3, A276689(n)]`
-/

namespace A031427.P8646691803733692802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031427.P8646691803733692802

/-! ## A031427.P18430865371326080125

`lt[A276733(n+1), A276715(A276689(n))]`
-/

namespace A031427.P18430865371326080125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276715 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031427.P18430865371326080125

/-! ## A031427.P3463818888453008565

`lt[2, A276715(A276689(n))/A276700(n+1)]`
-/

namespace A031427.P3463818888453008565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276715 (A276689 n).toNat : ℚ) / (A276700 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A031427.P3463818888453008565

/-! ## A031427.P13477612788684185393

`lt[2, A276715(A276689(n))/A276713(n+1)]`
-/

namespace A031427.P13477612788684185393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276715 (A276689 n).toNat : ℚ) / (A276713 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A031427.P13477612788684185393

/-! ## A031427.P17929781776297264926

`lt[A276713(n+1)², A276715(A276689(n))]`
-/

namespace A031427.P17929781776297264926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276713 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276715 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031427.P17929781776297264926

/-!
# A031428: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 4.

The programs for A031428, there is no canonical definition to state claims against.
-/

/-! ## A031428.P5245765350359874927

`eq[4, A276689(n)]`
-/

namespace A031428.P5245765350359874927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031428.P5245765350359874927

/-! ## A031428.P2978001024251566212

`(A000005(4^(n+2))+2*n)*A076946(n+2)`
-/

namespace A031428.P2978001024251566212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (4 ^ (n + 2)) + (2 * n : ℤ)) * A076946 (n + 2)

end

end A031428.P2978001024251566212

/-! ## A031428.P14776003205251610652

`A006369(3*n+4)*A329326(A006261(n))`
-/

namespace A031428.P14776003205251610652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (3 * n + 4) * A329326 (A006261 n).toNat

end

end A031428.P14776003205251610652

/-!
# A031429: Least term in period of continued fraction for sqrt(n) is 5.

The programs for A031429, there is no canonical definition to state claims against.
-/

/-! ## A031429.P16634518914025811314

`eq[5, A276689(n)]`
-/

namespace A031429.P16634518914025811314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031429.P16634518914025811314

/-!
# A031430: Least term in period of continued fraction for sqrt(n) is 6.

The programs for A031430, there is no canonical definition to state claims against.
-/

/-! ## A031430.P16267945850830991034

`eq[6, A276689(n)]`
-/

namespace A031430.P16267945850830991034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031430.P16267945850830991034

/-!
# A031431: Least term in period of continued fraction for sqrt(n) is 7.

The programs for A031431, there is no canonical definition to state claims against.
-/

/-! ## A031431.P14576069129401965475

`eq[7, A276689(n)]`
-/

namespace A031431.P14576069129401965475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031431.P14576069129401965475

/-!
# A031435: Reversal point for powers of consecutive natural numbers.

The programs for A031435, the canonical program `A031435.P4487304057678578177` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031435 has offset 1).

The definition of A031435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A031435.P4487304057678578177

`floor(log(1+n+1)/log(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A031435

/-- `floor(log(1+n+1)/log(1+1/(n+1)))` -/
def P4487304057678578177.Spec : Prop :=
  ∀ n, P4487304057678578177.a n = A031435 (n + 1)

theorem P4487304057678578177.correct : P4487304057678578177.Spec := by
  intro n
  simp only [A031435, Nat.add_sub_cancel]

end A031435

/-! ## A031435.P16755763411907824332

`A377206(n+2)+A057428(n)`
-/

namespace A031435.P16755763411907824332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377206 (n + 2) + A057428 n

end

end A031435.P16755763411907824332

namespace A031435

/-- `A377206(n+2)+A057428(n)` -/
def P16755763411907824332.Spec : Prop :=
  ∀ n, P16755763411907824332.a n = A031435 (n + 1)

end A031435

/-! ## A031435.P17239188149412119904

`A377206(n+2)-A057427(n)`
-/

namespace A031435.P17239188149412119904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377206 (n + 2) - A057427 n

end

end A031435.P17239188149412119904

namespace A031435

/-- `A377206(n+2)-A057427(n)` -/
def P17239188149412119904.Spec : Prop :=
  ∀ n, P17239188149412119904.a n = A031435 (n + 1)

end A031435

/-! ## A031435.P9561645108800352414

`record[gcd(A125229(n+2), A125229(n+3))]`
-/

namespace A031435.P9561645108800352414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125229 (n + 2)) (A125229 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031435.P9561645108800352414

namespace A031435

/-- `record[gcd(A125229(n+2), A125229(n+3))]` -/
def P9561645108800352414.Spec : Prop :=
  ∀ n, (P9561645108800352414.a n : ℤ) = A031435 (n + 1)

end A031435

/-! ## A031435.P10478558626161897372

`round(log(A368951(n+2)))`
-/

namespace A031435.P10478558626161897372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A368951 (n + 2) : ℝ))

end

end A031435.P10478558626161897372

namespace A031435

/-- `round(log(A368951(n+2)))` -/
def P10478558626161897372.Spec : Prop :=
  ∀ n, P10478558626161897372.a n = A031435 (n + 1)

end A031435

/-!
# A031439: a(0) = 1, a(n) is the greatest prime factor of a(n-1)^2+1 for n > 0.

The programs for A031439, the canonical program `A031439.P16291751954156180323` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031439 has offset 0).

The definition of A031439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031439.P16291751954156180323

`A006530(a(n-1)²+1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A031439

/-- `A006530(a(n-1)²+1)` -/
def P16291751954156180323.Spec : Prop :=
  ∀ n, P16291751954156180323.a n = A031439 n

theorem P16291751954156180323.correct : P16291751954156180323.Spec := by
  intro n
  simp only [A031439]

end A031439

/-! ## A031439.P560442994608714492

`floor(sqrt(A072268(n+1)))`
-/

namespace A031439.P560442994608714492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A072268 (n + 1))

end

end A031439.P560442994608714492

namespace A031439

/-- `floor(sqrt(A072268(n+1)))` -/
def P560442994608714492.Spec : Prop :=
  ∀ n, P560442994608714492.a n = A031439 n

end A031439

/-! ## A031439.P7266603154174911221

`gcd(A072268(n+1)-1, A072268(n))`
-/

namespace A031439.P7266603154174911221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072268 (n + 1) - 1) (A072268 n)

end

end A031439.P7266603154174911221

namespace A031439

/-- `gcd(A072268(n+1)-1, A072268(n))` -/
def P7266603154174911221.Spec : Prop :=
  ∀ n, (P7266603154174911221.a n : ℤ) = A031439 n

end A031439

/-! ## A031439.P11698234162808871380

`round(sqrt(A072268(n+1)+A053667(n)))`
-/

namespace A031439.P11698234162808871380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A072268 (n + 1) + A053667 n : ℝ))

end

end A031439.P11698234162808871380

namespace A031439

/-- `round(sqrt(A072268(n+1)+A053667(n)))` -/
def P11698234162808871380.Spec : Prop :=
  ∀ n, P11698234162808871380.a n = A031439 n

end A031439

/-! ## A031439.P8907794384260523184

`round(sqrt(A072656(n)+A072268(n+1)))`
-/

namespace A031439.P8907794384260523184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A072656 n + A072268 (n + 1) : ℝ))

end

end A031439.P8907794384260523184

namespace A031439

/-- `round(sqrt(A072656(n)+A072268(n+1)))` -/
def P8907794384260523184.Spec : Prop :=
  ∀ n, P8907794384260523184.a n = A031439 n

end A031439

/-!
# A031440: a(0) = 3; for n > 0, a(n) is the greatest prime factor of a(n-1)^2 - 2.

The programs for A031440, there is no canonical definition to state claims against.
-/

/-! ## A031440.P16162438125158615627

`A059772(a(n-1))` with `a(0)=3`
-/

namespace A031440.P16162438125158615627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A059772 (a (n - 1)).toNat

end

end A031440.P16162438125158615627

/-! ## A031440.P3481166241282800591

`A164314(a(n-1))` with `a(0)=3`
-/

namespace A031440.P3481166241282800591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A164314 (a (n - 1)).toNat

end

end A031440.P3481166241282800591

/-!
# A031441: a(0) = 3; for n > 0, a(n) is the greatest prime factor of PreviousPrime(a(n-1))*a(n-1)-1 where PreviousPrime(prime(k))=prime(k-1).

The programs for A031441, there is no canonical definition to state claims against.
-/

/-! ## A031441.P1946166596168826130

`A023517(A055396(a(n-1)))` with `a(0)=3, a(1)=5`
-/

namespace A031441.P1946166596168826130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A023517 (A055396 (a (n - 1)).toNat).toNat

end

end A031441.P1946166596168826130

/-!
# A031442: a(0) = 13; for n > 0, a(n) is the greatest prime factor of PreviousPrime(a(n-1))*a(n-1)-1 where PreviousPrime(prime(k))=prime(k-1).

The programs for A031442, there is no canonical definition to state claims against.
-/

/-! ## A031442.P4163206175031681988

`A023517(A055396(a(n-1)))` with `a(0)=13`
-/

namespace A031442.P4163206175031681988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A023517 (A055396 (a (n - 1)).toNat).toNat

end

end A031442.P4163206175031681988

/-!
# A031443: Digitally balanced numbers: positive numbers that in base 2 have the same number of 0's as 1's.

The programs for A031443, the canonical program `A031443.P17598288459084712125` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031443 has offset 1).

The definition of A031443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031443.P10813944358236249192

`∑[A145057(n+1)]`
-/

namespace A031443.P10813944358236249192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031443.P10813944358236249192

namespace A031443

/-- `∑[A145057(n+1)]` -/
def P10813944358236249192.Spec : Prop :=
  ∀ n, P10813944358236249192.a n = A031443 (n + 1)

end A031443

/-! ## A031443.P13471697541689406475

`∑[∑[A145058(n+1)]]`
-/

namespace A031443.P13471697541689406475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031443.P13471697541689406475

namespace A031443

/-- `∑[∑[A145058(n+1)]]` -/
def P13471697541689406475.Spec : Prop :=
  ∀ n, P13471697541689406475.a n = A031443 (n + 1)

end A031443

/-! ## A031443.P12696231636953282846

`floor(A337238(n+1)/4)`
-/

namespace A031443.P12696231636953282846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337238 (n + 1) : ℚ) / 4⌋

end

end A031443.P12696231636953282846

namespace A031443

/-- `floor(A337238(n+1)/4)` -/
def P12696231636953282846.Spec : Prop :=
  ∀ n, P12696231636953282846.a n = A031443 (n + 1)

end A031443

/-! ## A031443.P17598288459084712125

`∩[A096199(n+1), A143909(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A031443

/-- `∩[A096199(n+1), A143909(n+1)]` -/
def P17598288459084712125.Spec : Prop :=
  ∀ n, (P17598288459084712125.a n : ℤ) = A031443 (n + 1)

theorem P17598288459084712125.correct : P17598288459084712125.Spec := by
  intro n
  simp only [A031443, Nat.add_sub_cancel]

end A031443

/-! ## A031443.P5436492849639488210

`A066879(Δ[n²])/2`
-/

namespace A031443.P5436492849639488210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A031443.P5436492849639488210

namespace A031443

/-- `A066879(Δ[n²])/2` -/
def P5436492849639488210.Spec : Prop :=
  ∀ n, P5436492849639488210.a n = (A031443 (n + 1) : ℚ)

end A031443

/-! ## A031443.P4194372668254016078

`lt[abs(n*A145037(n)), n]`
-/

namespace A031443.P4194372668254016078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A145037 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031443.P4194372668254016078

namespace A031443

/-- `lt[abs(n*A145037(n)), n]` -/
def P4194372668254016078.Spec : Prop :=
  ∀ n, (P4194372668254016078.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P11935196563411882325

`eq[A145037(n), A154269(n+1)]`
-/

namespace A031443.P11935196563411882325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P11935196563411882325

namespace A031443

/-- `eq[A145037(n), A154269(n+1)]` -/
def P11935196563411882325.Spec : Prop :=
  ∀ n, (P11935196563411882325.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P8998723608520716491

`∩[A031461(n+1), A072602(n+1)]`
-/

namespace A031443.P8998723608520716491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031443.P8998723608520716491

namespace A031443

/-- `∩[A031461(n+1), A072602(n+1)]` -/
def P8998723608520716491.Spec : Prop :=
  ∀ n, (P8998723608520716491.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P5617193330706312178

`∩[A072602(n+1), A143909(n+1)]`
-/

namespace A031443.P5617193330706312178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031443.P5617193330706312178

namespace A031443

/-- `∩[A072602(n+1), A143909(n+1)]` -/
def P5617193330706312178.Spec : Prop :=
  ∀ n, (P5617193330706312178.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P1213350293051634034

`∩[A031461(n+1), A053754(n+1)]`
-/

namespace A031443.P1213350293051634034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031443.P1213350293051634034

namespace A031443

/-- `∩[A031461(n+1), A053754(n+1)]` -/
def P1213350293051634034.Spec : Prop :=
  ∀ n, (P1213350293051634034.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P14583713292805171385

`∩[A072601(n+1), A072602(n+1)]`
-/

namespace A031443.P14583713292805171385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031443.P14583713292805171385

namespace A031443

/-- `∩[A072601(n+1), A072602(n+1)]` -/
def P14583713292805171385.Spec : Prop :=
  ∀ n, (P14583713292805171385.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P6579347975142785028

`eq[0, A037861(n)]`
-/

namespace A031443.P6579347975142785028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031443.P6579347975142785028

namespace A031443

/-- `eq[0, A037861(n)]` -/
def P6579347975142785028.Spec : Prop :=
  ∀ n, (P6579347975142785028.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P10457815308543211892

`eq[0, A384956(n)]`
-/

namespace A031443.P10457815308543211892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031443.P10457815308543211892

namespace A031443

/-- `eq[0, A384956(n)]` -/
def P10457815308543211892.Spec : Prop :=
  ∀ n, (P10457815308543211892.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P15058480484324558501

`eq[2, A099246(n)]`
-/

namespace A031443.P15058480484324558501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031443.P15058480484324558501

namespace A031443

/-- `eq[2, A099246(n)]` -/
def P15058480484324558501.Spec : Prop :=
  ∀ n, (P15058480484324558501.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P4980163682317567218

`eq[A000120(n), A023416(n)]`
-/

namespace A031443.P4980163682317567218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P4980163682317567218

namespace A031443

/-- `eq[A000120(n), A023416(n)]` -/
def P4980163682317567218.Spec : Prop :=
  ∀ n, (P4980163682317567218.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P17139631167784799917

`eq[A000007(n), A145037(n)]`
-/

namespace A031443.P17139631167784799917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P17139631167784799917

namespace A031443

/-- `eq[A000007(n), A145037(n)]` -/
def P17139631167784799917.Spec : Prop :=
  ∀ n, (P17139631167784799917.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P4118923780831900433

`eq[A000038(n), A145037(n)]`
-/

namespace A031443.P4118923780831900433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P4118923780831900433

namespace A031443

/-- `eq[A000038(n), A145037(n)]` -/
def P4118923780831900433.Spec : Prop :=
  ∀ n, (P4118923780831900433.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P10707636445317809164

`eq[A099894(n), A145037(n)]`
-/

namespace A031443.P10707636445317809164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P10707636445317809164

namespace A031443

/-- `eq[A099894(n), A145037(n)]` -/
def P10707636445317809164.Spec : Prop :=
  ∀ n, (P10707636445317809164.a n : ℤ) = A031443 (n + 1)

end A031443

/-! ## A031443.P9431370859026435343

`eq[A130706(n), A145037(n)]`
-/

namespace A031443.P9431370859026435343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031443.P9431370859026435343

namespace A031443

/-- `eq[A130706(n), A145037(n)]` -/
def P9431370859026435343.Spec : Prop :=
  ∀ n, (P9431370859026435343.a n : ℤ) = A031443 (n + 1)

end A031443

/-!
# A031444: Numbers whose base-2 representation has one more 0 than 1's.

The programs for A031444, the canonical program `A031444.P3616120243307179198` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031444 has offset 1).

The definition of A031444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031444.P3616120243307179198

`eq[4, floor(n/A001316(n)²)+3]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031444

/-- `eq[4, floor(n/A001316(n)²)+3]` -/
def P3616120243307179198.Spec : Prop :=
  ∀ n, (P3616120243307179198.a n : ℤ) = A031444 (n + 1)

theorem P3616120243307179198.correct : P3616120243307179198.Spec := by
  intro n
  simp only [A031444, Nat.add_sub_cancel]

end A031444

/-! ## A031444.P15606029770261640222

`∩[A031462(n+1), A089648(n+1)]`
-/

namespace A031444.P15606029770261640222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031444.P15606029770261640222

namespace A031444

/-- `∩[A031462(n+1), A089648(n+1)]` -/
def P15606029770261640222.Spec : Prop :=
  ∀ n, (P15606029770261640222.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P15666228536804847252

`∩[A072603(n+1), A089648(n+1)]`
-/

namespace A031444.P15666228536804847252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031444.P15666228536804847252

namespace A031444

/-- `∩[A072603(n+1), A089648(n+1)]` -/
def P15666228536804847252.Spec : Prop :=
  ∀ n, (P15666228536804847252.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P6069309523442325551

`∩[A031462(n+1), A053738(n+1)]`
-/

namespace A031444.P6069309523442325551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031444.P6069309523442325551

namespace A031444

/-- `∩[A031462(n+1), A053738(n+1)]` -/
def P6069309523442325551.Spec : Prop :=
  ∀ n, (P6069309523442325551.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P16666343938458130196

`eq[0, A145037(n)+1]`
-/

namespace A031444.P16666343938458130196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031444.P16666343938458130196

namespace A031444

/-- `eq[0, A145037(n)+1]` -/
def P16666343938458130196.Spec : Prop :=
  ∀ n, (P16666343938458130196.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P7989491550752421653

`eq[1, floor(n/A102376(n))]`
-/

namespace A031444.P7989491550752421653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A102376 n : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031444.P7989491550752421653

namespace A031444

/-- `eq[1, floor(n/A102376(n))]` -/
def P7989491550752421653.Spec : Prop :=
  ∀ n, (P7989491550752421653.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P14362363366580111273

`eq[1, A037861(n+1)]+1`
-/

namespace A031444.P14362363366580111273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031444.P14362363366580111273

namespace A031444

/-- `eq[1, A037861(n+1)]+1` -/
def P14362363366580111273.Spec : Prop :=
  ∀ n, (P14362363366580111273.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P16204965364199104583

`lt[abs(A145037(2*n+1)), 1]`
-/

namespace A031444.P16204965364199104583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 (2 * n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031444.P16204965364199104583

namespace A031444

/-- `lt[abs(A145037(2*n+1)), 1]` -/
def P16204965364199104583.Spec : Prop :=
  ∀ n, (P16204965364199104583.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P15352219503762668398

`A298847(A031450(n+1))`
-/

namespace A031444.P15352219503762668398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A031450 (n + 1)).toNat

end

end A031444.P15352219503762668398

namespace A031444

/-- `A298847(A031450(n+1))` -/
def P15352219503762668398.Spec : Prop :=
  ∀ n, P15352219503762668398.a n = A031444 (n + 1)

end A031444

/-! ## A031444.P18378821262852867421

`eq[A037861(n), A043545(n)]`
-/

namespace A031444.P18378821262852867421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P18378821262852867421

namespace A031444

/-- `eq[A037861(n), A043545(n)]` -/
def P18378821262852867421.Spec : Prop :=
  ∀ n, (P18378821262852867421.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P13618543827708723990

`eq[A037861(n), A054977(n)]`
-/

namespace A031444.P13618543827708723990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P13618543827708723990

namespace A031444

/-- `eq[A037861(n), A054977(n)]` -/
def P13618543827708723990.Spec : Prop :=
  ∀ n, (P13618543827708723990.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P16104786095850932920

`eq[A037861(n), A057427(n)]`
-/

namespace A031444.P16104786095850932920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P16104786095850932920

namespace A031444

/-- `eq[A037861(n), A057427(n)]` -/
def P16104786095850932920.Spec : Prop :=
  ∀ n, (P16104786095850932920.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P10952736911604144893

`eq[A053644(n), A102376(n)]`
-/

namespace A031444.P10952736911604144893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P10952736911604144893

namespace A031444

/-- `eq[A053644(n), A102376(n)]` -/
def P10952736911604144893.Spec : Prop :=
  ∀ n, (P10952736911604144893.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P683517329579411913

`eq[A037861(n), A141044(n)]`
-/

namespace A031444.P683517329579411913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P683517329579411913

namespace A031444

/-- `eq[A037861(n), A141044(n)]` -/
def P683517329579411913.Spec : Prop :=
  ∀ n, (P683517329579411913.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P8048712246070432088

`eq[A037861(n), A157928(n)]`
-/

namespace A031444.P8048712246070432088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P8048712246070432088

namespace A031444

/-- `eq[A037861(n), A157928(n)]` -/
def P8048712246070432088.Spec : Prop :=
  ∀ n, (P8048712246070432088.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P13908292565921917339

`eq[A037861(n), A158388(n)]`
-/

namespace A031444.P13908292565921917339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P13908292565921917339

namespace A031444

/-- `eq[A037861(n), A158388(n)]` -/
def P13908292565921917339.Spec : Prop :=
  ∀ n, (P13908292565921917339.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P7680693655104263615

`eq[A080100(n), A117973(n)]`
-/

namespace A031444.P7680693655104263615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P7680693655104263615

namespace A031444

/-- `eq[A080100(n), A117973(n)]` -/
def P7680693655104263615.Spec : Prop :=
  ∀ n, (P7680693655104263615.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P1437749176099428528

`eq[A037861(n), A252744(n)]`
-/

namespace A031444.P1437749176099428528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P1437749176099428528

namespace A031444

/-- `eq[A037861(n), A252744(n)]` -/
def P1437749176099428528.Spec : Prop :=
  ∀ n, (P1437749176099428528.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P14764857098501139125

`eq[A037861(n), A261143(n)]`
-/

namespace A031444.P14764857098501139125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P14764857098501139125

namespace A031444

/-- `eq[A037861(n), A261143(n)]` -/
def P14764857098501139125.Spec : Prop :=
  ∀ n, (P14764857098501139125.a n : ℤ) = A031444 (n + 1)

end A031444

/-! ## A031444.P15593537566094680141

`eq[A037861(n), A294619(n)]`
-/

namespace A031444.P15593537566094680141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031444.P15593537566094680141

namespace A031444

/-- `eq[A037861(n), A294619(n)]` -/
def P15593537566094680141.Spec : Prop :=
  ∀ n, (P15593537566094680141.a n : ℤ) = A031444 (n + 1)

end A031444

/-!
# A031445: Numbers whose base-2 representation has 2 more 0's than 1's.

The programs for A031445, the canonical program `A031445.P4446514973149469838` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031445 has offset 1).

The definition of A031445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031445.P4446514973149469838

`eq[3, a(n-1)-A269735(n)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031445

/-- `eq[3, a(n-1)-A269735(n)]` -/
def P4446514973149469838.Spec : Prop :=
  ∀ n, (P4446514973149469838.a n : ℤ) = A031445 (n + 1)

theorem P4446514973149469838.correct : P4446514973149469838.Spec := by
  intro n
  simp only [A031445, Nat.add_sub_cancel]

end A031445

/-! ## A031445.P14664174122084665942

`eq[2, -A145037(n)]`
-/

namespace A031445.P14664174122084665942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031445.P14664174122084665942

namespace A031445

/-- `eq[2, -A145037(n)]` -/
def P14664174122084665942.Spec : Prop :=
  ∀ n, (P14664174122084665942.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P7351958486135560844

`eq[A124754(A003188(n))-2, -4]`
-/

namespace A031445.P7351958486135560844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P7351958486135560844

namespace A031445

/-- `eq[A124754(A003188(n))-2, -4]` -/
def P7351958486135560844.Spec : Prop :=
  ∀ n, (P7351958486135560844.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P9918415785716964439

`∩[A031462(n+1), A053754(n+1)]`
-/

namespace A031445.P9918415785716964439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031445.P9918415785716964439

namespace A031445

/-- `∩[A031462(n+1), A053754(n+1)]` -/
def P9918415785716964439.Spec : Prop :=
  ∀ n, (P9918415785716964439.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P5654522065816293559

`eq[2, A037861(n)]`
-/

namespace A031445.P5654522065816293559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031445.P5654522065816293559

namespace A031445

/-- `eq[2, A037861(n)]` -/
def P5654522065816293559.Spec : Prop :=
  ∀ n, (P5654522065816293559.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P2238718794243053699

`eq[a(and(n, n-1))+1, A023416(n)]` with `a(0)=2`
-/

namespace A031445.P2238718794243053699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031445.P2238718794243053699

namespace A031445

/-- `eq[a(and(n, n-1))+1, A023416(n)]` -/
def P2238718794243053699.Spec : Prop :=
  ∀ n, (P2238718794243053699.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P2560418956739199792

`eq[A072376(n), A102376(n)]`
-/

namespace A031445.P2560418956739199792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P2560418956739199792

namespace A031445

/-- `eq[A072376(n), A102376(n)]` -/
def P2560418956739199792.Spec : Prop :=
  ∀ n, (P2560418956739199792.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P6467103303744349760

`eq[A113679(n), A145037(n)]`
-/

namespace A031445.P6467103303744349760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P6467103303744349760

namespace A031445

/-- `eq[A113679(n), A145037(n)]` -/
def P6467103303744349760.Spec : Prop :=
  ∀ n, (P6467103303744349760.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P9067977108851503413

`eq[A076535(n), A353292(n)]`
-/

namespace A031445.P9067977108851503413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P9067977108851503413

namespace A031445

/-- `eq[A076535(n), A353292(n)]` -/
def P9067977108851503413.Spec : Prop :=
  ∀ n, (P9067977108851503413.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P10521855481226949794

`eq[A001316(n)², A072376(n)]`
-/

namespace A031445.P10521855481226949794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P10521855481226949794

namespace A031445

/-- `eq[A001316(n)², A072376(n)]` -/
def P10521855481226949794.Spec : Prop :=
  ∀ n, (P10521855481226949794.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P10082452939811884407

`eq[A145037(n)+1, A057428(n)]`
-/

namespace A031445.P10082452939811884407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P10082452939811884407

namespace A031445

/-- `eq[A145037(n)+1, A057428(n)]` -/
def P10082452939811884407.Spec : Prop :=
  ∀ n, (P10082452939811884407.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P17013776825789012994

`eq[A000120(n)+2, A023416(n)]`
-/

namespace A031445.P17013776825789012994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P17013776825789012994

namespace A031445

/-- `eq[A000120(n)+2, A023416(n)]` -/
def P17013776825789012994.Spec : Prop :=
  ∀ n, (P17013776825789012994.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P702272966016435224

`eq[A000120(n)+2, A080791(n)]`
-/

namespace A031445.P702272966016435224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P702272966016435224

namespace A031445

/-- `eq[A000120(n)+2, A080791(n)]` -/
def P702272966016435224.Spec : Prop :=
  ∀ n, (P702272966016435224.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P10493365929379360544

`eq[A145037(n)+2, A000007(n)]`
-/

namespace A031445.P10493365929379360544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P10493365929379360544

namespace A031445

/-- `eq[A145037(n)+2, A000007(n)]` -/
def P10493365929379360544.Spec : Prop :=
  ∀ n, (P10493365929379360544.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P2625128074931656807

`eq[A145037(n)+2, A130706(n)]`
-/

namespace A031445.P2625128074931656807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P2625128074931656807

namespace A031445

/-- `eq[A145037(n)+2, A130706(n)]` -/
def P2625128074931656807.Spec : Prop :=
  ∀ n, (P2625128074931656807.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P701053066009863632

`eq[A145037(n)+2, A151669(n)]`
-/

namespace A031445.P701053066009863632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P701053066009863632

namespace A031445

/-- `eq[A145037(n)+2, A151669(n)]` -/
def P701053066009863632.Spec : Prop :=
  ∀ n, (P701053066009863632.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P6644950839142484330

`eq[A145037(n)+2, A151673(n)]`
-/

namespace A031445.P6644950839142484330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P6644950839142484330

namespace A031445

/-- `eq[A145037(n)+2, A151673(n)]` -/
def P6644950839142484330.Spec : Prop :=
  ∀ n, (P6644950839142484330.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P1812601218280871964

`eq[2*A102376(n), A053644(n)]`
-/

namespace A031445.P1812601218280871964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P1812601218280871964

namespace A031445

/-- `eq[2*A102376(n), A053644(n)]` -/
def P1812601218280871964.Spec : Prop :=
  ∀ n, (P1812601218280871964.a n : ℤ) = A031445 (n + 1)

end A031445

/-! ## A031445.P8561482931093305922

`eq[2*A117973(n), A080100(n)]`
-/

namespace A031445.P8561482931093305922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117973 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031445.P8561482931093305922

namespace A031445

/-- `eq[2*A117973(n), A080100(n)]` -/
def P8561482931093305922.Spec : Prop :=
  ∀ n, (P8561482931093305922.a n : ℤ) = A031445 (n + 1)

end A031445

/-!
# A031446: Numbers whose base-2 representation has 3 more 0's than 1's.

The programs for A031446, there is no canonical definition to state claims against.
-/

/-! ## A031446.P9727645254685989233

`record[A273943(A031447(n+1))]`
-/

namespace A031446.P9727645254685989233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A031447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031446.P9727645254685989233

/-! ## A031446.P10180424303914732438

`∩[A031463(n+1), A053738(n+1)]`
-/

namespace A031446.P10180424303914732438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031446.P10180424303914732438

/-! ## A031446.P15808097234206004307

`record[A246425(A031447(n+1)-1)]`
-/

namespace A031446.P15808097234206004307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A031447 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031446.P15808097234206004307

/-! ## A031446.P14449205092595905535

`A298847(∩[A031467(n+1), A053738(n+1)])`
-/

namespace A031446.P14449205092595905535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A031446.P14449205092595905535

/-! ## A031446.P9781812540993735431

`∩[A053754(2*(n+1)), A031463(n+2)]/2`
-/

namespace A031446.P9781812540993735431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A031446.P9781812540993735431

/-!
# A031447: Numbers whose base-2 representation has 4 more 0's than 1's.

The programs for A031447, the canonical program `A031447.P8720380611452908298` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031447 has offset 1).

The definition of A031447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031447.P8720380611452908298

`eq[4, -A145037(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031447

/-- `eq[4, -A145037(n)]` -/
def P8720380611452908298.Spec : Prop :=
  ∀ n, (P8720380611452908298.a n : ℤ) = A031447 (n + 1)

theorem P8720380611452908298.correct : P8720380611452908298.Spec := by
  intro n
  simp only [A031447, Nat.add_sub_cancel]

end A031447

/-! ## A031447.P8543884161216252457

`∩[A031463(n+1), A053754(n+1)]`
-/

namespace A031447.P8543884161216252457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031447.P8543884161216252457

namespace A031447

/-- `∩[A031463(n+1), A053754(n+1)]` -/
def P8543884161216252457.Spec : Prop :=
  ∀ n, (P8543884161216252457.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P6981357766642241238

`eq[4, A037861(n)]`
-/

namespace A031447.P6981357766642241238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031447.P6981357766642241238

namespace A031447

/-- `eq[4, A037861(n)]` -/
def P6981357766642241238.Spec : Prop :=
  ∀ n, (P6981357766642241238.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P9434482288215600575

`eq[a(and(n, n-1))+1, A023416(n)]` with `a(0)=4`
-/

namespace A031447.P9434482288215600575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031447.P9434482288215600575

namespace A031447

/-- `eq[a(and(n, n-1))+1, A023416(n)]` -/
def P9434482288215600575.Spec : Prop :=
  ∀ n, (P9434482288215600575.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P11270032983333009647

`eq[A167275(n)², A072376(n)]`
-/

namespace A031447.P11270032983333009647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167275 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P11270032983333009647

namespace A031447

/-- `eq[A167275(n)², A072376(n)]` -/
def P11270032983333009647.Spec : Prop :=
  ∀ n, (P11270032983333009647.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P10055471078746814626

`eq[A072376(n), 4*A102376(n)]`
-/

namespace A031447.P10055471078746814626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P10055471078746814626

namespace A031447

/-- `eq[A072376(n), 4*A102376(n)]` -/
def P10055471078746814626.Spec : Prop :=
  ∀ n, (P10055471078746814626.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P4827701569440056211

`eq[(2*A001316(n))², A072376(n)]`
-/

namespace A031447.P4827701569440056211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P4827701569440056211

namespace A031447

/-- `eq[(2*A001316(n))², A072376(n)]` -/
def P4827701569440056211.Spec : Prop :=
  ∀ n, (P4827701569440056211.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P3863974079500948798

`eq[a(n%A053644(n))+1, A023416(n)]` with `a(0)=4`
-/

namespace A031447.P3863974079500948798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (Int.tmod (n : ℤ) (A053644 n)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031447.P3863974079500948798

namespace A031447

/-- `eq[a(n%A053644(n))+1, A023416(n)]` -/
def P3863974079500948798.Spec : Prop :=
  ∀ n, (P3863974079500948798.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P4667452264045943314

`eq[A071051(n)², A072376(n)]`
-/

namespace A031447.P4667452264045943314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P4667452264045943314

namespace A031447

/-- `eq[A071051(n)², A072376(n)]` -/
def P4667452264045943314.Spec : Prop :=
  ∀ n, (P4667452264045943314.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P2605845244235226167

`eq[A117973(n)², A072376(n)]`
-/

namespace A031447.P2605845244235226167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P2605845244235226167

namespace A031447

/-- `eq[A117973(n)², A072376(n)]` -/
def P2605845244235226167.Spec : Prop :=
  ∀ n, (P2605845244235226167.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P2379832933377208355

`eq[A145037(n)+2, A113679(n)]`
-/

namespace A031447.P2379832933377208355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P2379832933377208355

namespace A031447

/-- `eq[A145037(n)+2, A113679(n)]` -/
def P2379832933377208355.Spec : Prop :=
  ∀ n, (P2379832933377208355.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P1256528431170148242

`A298847(A255568(n+1))`
-/

namespace A031447.P1256528431170148242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A255568 (n + 1)).toNat

end

end A031447.P1256528431170148242

namespace A031447

/-- `A298847(A255568(n+1))` -/
def P1256528431170148242.Spec : Prop :=
  ∀ n, P1256528431170148242.a n = A031447 (n + 1)

end A031447

/-! ## A031447.P15209710808955343494

`record[A078898(A031446(n+2)-1)]`
-/

namespace A031447.P15209710808955343494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A031446 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031447.P15209710808955343494

namespace A031447

/-- `record[A078898(A031446(n+2)-1)]` -/
def P15209710808955343494.Spec : Prop :=
  ∀ n, P15209710808955343494.a n = A031447 (n + 1)

end A031447

/-! ## A031447.P8829945431540363961

`record[A130747(A031446(n+2)-2)]`
-/

namespace A031447.P8829945431540363961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A031446 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031447.P8829945431540363961

namespace A031447

/-- `record[A130747(A031446(n+2)-2)]` -/
def P8829945431540363961.Spec : Prop :=
  ∀ n, P8829945431540363961.a n = A031447 (n + 1)

end A031447

/-! ## A031447.P17795124514697387883

`eq[A071051(2*n+1)², A053644(2*n)]`
-/

namespace A031447.P17795124514697387883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P17795124514697387883

namespace A031447

/-- `eq[A071051(2*n+1)², A053644(2*n)]` -/
def P17795124514697387883.Spec : Prop :=
  ∀ n, (P17795124514697387883.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P16485670749484843794

`eq[A117973(2*n+1)², A053644(2*n)]`
-/

namespace A031447.P16485670749484843794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P16485670749484843794

namespace A031447

/-- `eq[A117973(2*n+1)², A053644(2*n)]` -/
def P16485670749484843794.Spec : Prop :=
  ∀ n, (P16485670749484843794.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P17254414491709145499

`eq[A167275(2*n+1)², A053644(2*n)]`
-/

namespace A031447.P17254414491709145499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167275 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P17254414491709145499

namespace A031447

/-- `eq[A167275(2*n+1)², A053644(2*n)]` -/
def P17254414491709145499.Spec : Prop :=
  ∀ n, (P17254414491709145499.a n : ℤ) = A031447 (n + 1)

end A031447

/-! ## A031447.P10049609444415228406

`eq[2*A070939(A071051(n)), A070939(n)]`
-/

namespace A031447.P10049609444415228406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070939 (A071051 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031447.P10049609444415228406

namespace A031447

/-- `eq[2*A070939(A071051(n)), A070939(n)]` -/
def P10049609444415228406.Spec : Prop :=
  ∀ n, (P10049609444415228406.a n : ℤ) = A031447 (n + 1)

end A031447

/-!
# A031448: Numbers whose base-2 representation has one fewer 0's than 1's.

The programs for A031448, the canonical program `A031448.P3285887168020942697` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031448 has offset 1).

The definition of A031448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031448.P17867386300320273709

`∩[A031461(n+1), A143903(n+1)]`
-/

namespace A031448.P17867386300320273709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031448.P17867386300320273709

namespace A031448

/-- `∩[A031461(n+1), A143903(n+1)]` -/
def P17867386300320273709.Spec : Prop :=
  ∀ n, (P17867386300320273709.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P10568025980170168685

`∩[A031461(n+1), A053738(n+1)]`
-/

namespace A031448.P10568025980170168685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031448.P10568025980170168685

namespace A031448

/-- `∩[A031461(n+1), A053738(n+1)]` -/
def P10568025980170168685.Spec : Prop :=
  ∀ n, (P10568025980170168685.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P1695984045710419055

`∩[A031461(n+1), A072600(n+1)]`
-/

namespace A031448.P1695984045710419055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031448.P1695984045710419055

namespace A031448

/-- `∩[A031461(n+1), A072600(n+1)]` -/
def P1695984045710419055.Spec : Prop :=
  ∀ n, (P1695984045710419055.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P3285887168020942697

`∩[A072600(n+1), A089648(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031448

/-- `∩[A072600(n+1), A089648(n+1)]` -/
def P3285887168020942697.Spec : Prop :=
  ∀ n, (P3285887168020942697.a n : ℤ) = A031448 (n + 1)

theorem P3285887168020942697.correct : P3285887168020942697.Spec := by
  intro n
  simp only [A031448, Nat.add_sub_cancel]

end A031448

/-! ## A031448.P6996665011719147154

`eq[1, A145037(n)]`
-/

namespace A031448.P6996665011719147154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031448.P6996665011719147154

namespace A031448

/-- `eq[1, A145037(n)]` -/
def P6996665011719147154.Spec : Prop :=
  ∀ n, (P6996665011719147154.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P16445837579934102438

`eq[1, -A037861(n)]`
-/

namespace A031448.P16445837579934102438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031448.P16445837579934102438

namespace A031448

/-- `eq[1, -A037861(n)]` -/
def P16445837579934102438.Spec : Prop :=
  ∀ n, (P16445837579934102438.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P12457098981785670425

`eq[A298847(n+1), n+1]+1`
-/

namespace A031448.P12457098981785670425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A031448.P12457098981785670425

namespace A031448

/-- `eq[A298847(n+1), n+1]+1` -/
def P12457098981785670425.Spec : Prop :=
  ∀ n, (P12457098981785670425.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P17966675930540048150

`eq[1, A124754(A003188(n))]`
-/

namespace A031448.P17966675930540048150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031448.P17966675930540048150

namespace A031448

/-- `eq[1, A124754(A003188(n))]` -/
def P17966675930540048150.Spec : Prop :=
  ∀ n, (P17966675930540048150.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P11785053097882233623

`eq[A037861(n), A057428(n)]`
-/

namespace A031448.P11785053097882233623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P11785053097882233623

namespace A031448

/-- `eq[A037861(n), A057428(n)]` -/
def P11785053097882233623.Spec : Prop :=
  ∀ n, (P11785053097882233623.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P4796266153379101728

`eq[A092391(n), A233272(n)]`
-/

namespace A031448.P4796266153379101728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P4796266153379101728

namespace A031448

/-- `eq[A092391(n), A233272(n)]` -/
def P4796266153379101728.Spec : Prop :=
  ∀ n, (P4796266153379101728.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P12444327260912271250

`eq[A053644(n), A309074(n)]`
-/

namespace A031448.P12444327260912271250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P12444327260912271250

namespace A031448

/-- `eq[A053644(n), A309074(n)]` -/
def P12444327260912271250.Spec : Prop :=
  ∀ n, (P12444327260912271250.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P6557782757460619847

`eq[A231204(n), A359400(n)]`
-/

namespace A031448.P6557782757460619847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P6557782757460619847

namespace A031448

/-- `eq[A231204(n), A359400(n)]` -/
def P6557782757460619847.Spec : Prop :=
  ∀ n, (P6557782757460619847.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P16361846465631590953

`A028310(eq[0, A037861(n)+1])`
-/

namespace A031448.P16361846465631590953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031448.P16361846465631590953

namespace A031448

/-- `A028310(eq[0, A037861(n)+1])` -/
def P16361846465631590953.Spec : Prop :=
  ∀ n, P16361846465631590953.a n = A031448 (n + 1)

end A031448

/-! ## A031448.P12345654573573235621

`A028310(eq[2, 1-A037861(n)])`
-/

namespace A031448.P12345654573573235621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031448.P12345654573573235621

namespace A031448

/-- `A028310(eq[2, 1-A037861(n)])` -/
def P12345654573573235621.Spec : Prop :=
  ∀ n, P12345654573573235621.a n = A031448 (n + 1)

end A031448

/-! ## A031448.P5698279459975929397

`filter[A031461(n+1), A115516(#)]`
-/

namespace A031448.P5698279459975929397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115516 (f1 j).toNat = 1) n)

end

end A031448.P5698279459975929397

namespace A031448

/-- `filter[A031461(n+1), A115516(#)]` -/
def P5698279459975929397.Spec : Prop :=
  ∀ n, P5698279459975929397.a n = A031448 (n + 1)

end A031448

/-! ## A031448.P9071546750011531942

`filter[A089648(n+1), A115516(#)]`
-/

namespace A031448.P9071546750011531942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115516 (f1 j).toNat = 1) n)

end

end A031448.P9071546750011531942

namespace A031448

/-- `filter[A089648(n+1), A115516(#)]` -/
def P9071546750011531942.Spec : Prop :=
  ∀ n, P9071546750011531942.a n = A031448 (n + 1)

end A031448

/-! ## A031448.P9353161631128814280

`eq[A000120(n), A008687(n+1)]`
-/

namespace A031448.P9353161631128814280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P9353161631128814280

namespace A031448

/-- `eq[A000120(n), A008687(n+1)]` -/
def P9353161631128814280.Spec : Prop :=
  ∀ n, (P9353161631128814280.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P5868279786057530167

`eq[A023416(n)+1, A000120(n)]`
-/

namespace A031448.P5868279786057530167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P5868279786057530167

namespace A031448

/-- `eq[A023416(n)+1, A000120(n)]` -/
def P5868279786057530167.Spec : Prop :=
  ∀ n, (P5868279786057530167.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P5597519125037818071

`eq[A080791(n)+1, A000120(n)]`
-/

namespace A031448.P5597519125037818071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P5597519125037818071

namespace A031448

/-- `eq[A080791(n)+1, A000120(n)]` -/
def P5597519125037818071.Spec : Prop :=
  ∀ n, (P5597519125037818071.a n : ℤ) = A031448 (n + 1)

end A031448

/-! ## A031448.P11087684305383068547

`eq[A056791(n)+1, A324467(n)]`
-/

namespace A031448.P11087684305383068547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031448.P11087684305383068547

namespace A031448

/-- `eq[A056791(n)+1, A324467(n)]` -/
def P11087684305383068547.Spec : Prop :=
  ∀ n, (P11087684305383068547.a n : ℤ) = A031448 (n + 1)

end A031448

/-!
# A031449: Numbers whose base-2 representation has two fewer 0's than 1's.

The programs for A031449, the canonical program `A031449.P14252400872149792696` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031449 has offset 1).

The definition of A031449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031449.P14252400872149792696

`eq[2, a(floor(n/2))-(-1)^n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A031449

/-- `eq[2, a(floor(n/2))-(-1)^n]` -/
def P14252400872149792696.Spec : Prop :=
  ∀ n, (P14252400872149792696.a n : ℤ) = A031449 (n + 1)

theorem P14252400872149792696.correct : P14252400872149792696.Spec := by
  intro n
  simp only [A031449, Nat.add_sub_cancel]

end A031449

/-! ## A031449.P3209307534858390692

`eq[2, A145037(n)]`
-/

namespace A031449.P3209307534858390692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P3209307534858390692

namespace A031449

/-- `eq[2, A145037(n)]` -/
def P3209307534858390692.Spec : Prop :=
  ∀ n, (P3209307534858390692.a n : ℤ) = A031449 (n + 1)

theorem P3209307534858390692.correct : P3209307534858390692.Spec := by
  intro n
  simp only [A031449, Nat.add_sub_cancel, A031449.P3209307534858390692.f1, A031449.P3209307534858390692.f2, A031449.P3209307534858390692.a, A031449.P14252400872149792696.f1, A031449.P14252400872149792696.f2, A031449.P14252400872149792696.a, A145037, A145037.P925688750715602079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031449

/-! ## A031449.P844785480555961436

`eq[2, A124754(A003188(n))]`
-/

namespace A031449.P844785480555961436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P844785480555961436

namespace A031449

/-- `eq[2, A124754(A003188(n))]` -/
def P844785480555961436.Spec : Prop :=
  ∀ n, (P844785480555961436.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P3174358801188149493

`eq[2*A267584(n), A001316(n)]`
-/

namespace A031449.P3174358801188149493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P3174358801188149493

namespace A031449

/-- `eq[2*A267584(n), A001316(n)]` -/
def P3174358801188149493.Spec : Prop :=
  ∀ n, (P3174358801188149493.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P10621878338002384058

`∩[A031466(n+1), A053754(n+1)]`
-/

namespace A031449.P10621878338002384058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031449.P10621878338002384058

namespace A031449

/-- `∩[A031466(n+1), A053754(n+1)]` -/
def P10621878338002384058.Spec : Prop :=
  ∀ n, (P10621878338002384058.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P9168094124438498346

`eq[2, -A037861(n)]`
-/

namespace A031449.P9168094124438498346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P9168094124438498346

namespace A031449

/-- `eq[2, -A037861(n)]` -/
def P9168094124438498346.Spec : Prop :=
  ∀ n, (P9168094124438498346.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P5469160089829974462

`eq[1, A274575(n)]+1`
-/

namespace A031449.P5469160089829974462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031449.P5469160089829974462

namespace A031449

/-- `eq[1, A274575(n)]+1` -/
def P5469160089829974462.Spec : Prop :=
  ∀ n, (P5469160089829974462.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P12956776395120493609

`eq[A037861(n)+1, A057428(n)]`
-/

namespace A031449.P12956776395120493609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P12956776395120493609

namespace A031449

/-- `eq[A037861(n)+1, A057428(n)]` -/
def P12956776395120493609.Spec : Prop :=
  ∀ n, (P12956776395120493609.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P1324935487659679690

`eq[A056792(n), A119477(n+1)]`
-/

namespace A031449.P1324935487659679690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P1324935487659679690

namespace A031449

/-- `eq[A056792(n), A119477(n+1)]` -/
def P1324935487659679690.Spec : Prop :=
  ∀ n, (P1324935487659679690.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P11115476186074418777

`eq[A233272(n)+1, A092391(n)]`
-/

namespace A031449.P11115476186074418777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P11115476186074418777

namespace A031449

/-- `eq[A233272(n)+1, A092391(n)]` -/
def P11115476186074418777.Spec : Prop :=
  ∀ n, (P11115476186074418777.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P16491078765098992480

`eq[A023416(n)+2, A000120(n)]`
-/

namespace A031449.P16491078765098992480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P16491078765098992480

namespace A031449

/-- `eq[A023416(n)+2, A000120(n)]` -/
def P16491078765098992480.Spec : Prop :=
  ∀ n, (P16491078765098992480.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P6860718654178671179

`eq[A037861(n)+2, A000007(n)]`
-/

namespace A031449.P6860718654178671179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P6860718654178671179

namespace A031449

/-- `eq[A037861(n)+2, A000007(n)]` -/
def P6860718654178671179.Spec : Prop :=
  ∀ n, (P6860718654178671179.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P13102026976647361279

`eq[A080791(n)+2, A000120(n)]`
-/

namespace A031449.P13102026976647361279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P13102026976647361279

namespace A031449

/-- `eq[A080791(n)+2, A000120(n)]` -/
def P13102026976647361279.Spec : Prop :=
  ∀ n, (P13102026976647361279.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P18147468305001553020

`eq[2*A309074(n), A053644(n)]`
-/

namespace A031449.P18147468305001553020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309074 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P18147468305001553020

namespace A031449

/-- `eq[2*A309074(n), A053644(n)]` -/
def P18147468305001553020.Spec : Prop :=
  ∀ n, (P18147468305001553020.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P459502968606704306

`eq[2*A053644(n), A267584(n)²]`
-/

namespace A031449.P459502968606704306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P459502968606704306

namespace A031449

/-- `eq[2*A053644(n), A267584(n)²]` -/
def P459502968606704306.Spec : Prop :=
  ∀ n, (P459502968606704306.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P7650562501063245015

`eq[A023416(n)+2, A001222(A001316(n))]`
-/

namespace A031449.P7650562501063245015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P7650562501063245015

namespace A031449

/-- `eq[A023416(n)+2, A001222(A001316(n))]` -/
def P7650562501063245015.Spec : Prop :=
  ∀ n, (P7650562501063245015.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P2254431892656837585

`eq[A000120(A035327(n))+2, A000120(n)]`
-/

namespace A031449.P2254431892656837585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P2254431892656837585

namespace A031449

/-- `eq[A000120(A035327(n))+2, A000120(n)]` -/
def P2254431892656837585.Spec : Prop :=
  ∀ n, (P2254431892656837585.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P18264982174564359279

`eq[A080791(n)+2, A080791(A001316(n))]`
-/

namespace A031449.P18264982174564359279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031449.P18264982174564359279

namespace A031449

/-- `eq[A080791(n)+2, A080791(A001316(n))]` -/
def P18264982174564359279.Spec : Prop :=
  ∀ n, (P18264982174564359279.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P5842428594452019431

`eq[2, A274575(2*n)]`
-/

namespace A031449.P5842428594452019431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P5842428594452019431

namespace A031449

/-- `eq[2, A274575(2*n)]` -/
def P5842428594452019431.Spec : Prop :=
  ∀ n, (P5842428594452019431.a n : ℤ) = A031449 (n + 1)

end A031449

/-! ## A031449.P1645313177926690316

`eq[1, A037861(2*n)+2]`
-/

namespace A031449.P1645313177926690316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P1645313177926690316

namespace A031449

/-- `eq[1, A037861(2*n)+2]` -/
def P1645313177926690316.Spec : Prop :=
  ∀ n, (P1645313177926690316.a n : ℤ) = A031449 (n + 1)

end A031449

/-!
# A031450: Numbers whose base-2 representation has 3 fewer 0's than 1's.

The programs for A031450, the canonical program `A031450.P8940164331547798912` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031450 has offset 1).

The definition of A031450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1078 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031450.P7425587102540136021

`∩[A031466(n+2), A053738(n+2)+2]`
-/

namespace A031450.P7425587102540136021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031450.P7425587102540136021

namespace A031450

/-- `∩[A031466(n+2), A053738(n+2)+2]` -/
def P7425587102540136021.Spec : Prop :=
  ∀ n, (P7425587102540136021.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P1354512749152837005

`∩[A031466(n+1), A053738(n+1)]`
-/

namespace A031450.P1354512749152837005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031450.P1354512749152837005

namespace A031450

/-- `∩[A031466(n+1), A053738(n+1)]` -/
def P1354512749152837005.Spec : Prop :=
  ∀ n, (P1354512749152837005.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P8940164331547798912

`eq[3, A145037(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031450

/-- `eq[3, A145037(n)]` -/
def P8940164331547798912.Spec : Prop :=
  ∀ n, (P8940164331547798912.a n : ℤ) = A031450 (n + 1)

theorem P8940164331547798912.correct : P8940164331547798912.Spec := by
  intro n
  simp only [A031450, Nat.add_sub_cancel]

end A031450

/-! ## A031450.P5094003266295328405

`eq[3, -A037861(n)]`
-/

namespace A031450.P5094003266295328405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031450.P5094003266295328405

namespace A031450

/-- `eq[3, -A037861(n)]` -/
def P5094003266295328405.Spec : Prop :=
  ∀ n, (P5094003266295328405.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P6533192238969387187

`eq[2, A274575(n)]+1`
-/

namespace A031450.P6533192238969387187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031450.P6533192238969387187

namespace A031450

/-- `eq[2, A274575(n)]+1` -/
def P6533192238969387187.Spec : Prop :=
  ∀ n, (P6533192238969387187.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P11637010136926763158

`A298847(A031444(n+1))`
-/

namespace A031450.P11637010136926763158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A031444 (n + 1)).toNat

end

end A031450.P11637010136926763158

namespace A031450

/-- `A298847(A031444(n+1))` -/
def P11637010136926763158.Spec : Prop :=
  ∀ n, P11637010136926763158.a n = A031450 (n + 1)

end A031450

/-! ## A031450.P12848280940231820430

`eq[A267584(n)², A053644(n)]`
-/

namespace A031450.P12848280940231820430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P12848280940231820430

namespace A031450

/-- `eq[A267584(n)², A053644(n)]` -/
def P12848280940231820430.Spec : Prop :=
  ∀ n, (P12848280940231820430.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P17462812938270045965

`eq[1, A124754(A003188(n))-2]`
-/

namespace A031450.P17462812938270045965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031450.P17462812938270045965

namespace A031450

/-- `eq[1, A124754(A003188(n))-2]` -/
def P17462812938270045965.Spec : Prop :=
  ∀ n, (P17462812938270045965.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P14793818174082151426

`eq[2, A124754(A003188(2*n))]`
-/

namespace A031450.P14793818174082151426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031450.P14793818174082151426

namespace A031450

/-- `eq[2, A124754(A003188(2*n))]` -/
def P14793818174082151426.Spec : Prop :=
  ∀ n, (P14793818174082151426.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P13709996514845971489

`eq[A037861(n)+2, A057428(n)]`
-/

namespace A031450.P13709996514845971489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P13709996514845971489

namespace A031450

/-- `eq[A037861(n)+2, A057428(n)]` -/
def P13709996514845971489.Spec : Prop :=
  ∀ n, (P13709996514845971489.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P10529100401740524262

`eq[A233272(n)+2, A092391(n)]`
-/

namespace A031450.P10529100401740524262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P10529100401740524262

namespace A031450

/-- `eq[A233272(n)+2, A092391(n)]` -/
def P10529100401740524262.Spec : Prop :=
  ∀ n, (P10529100401740524262.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P17028866910041192119

`eq[A023416(n)+3, A000120(n)]`
-/

namespace A031450.P17028866910041192119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P17028866910041192119

namespace A031450

/-- `eq[A023416(n)+3, A000120(n)]` -/
def P17028866910041192119.Spec : Prop :=
  ∀ n, (P17028866910041192119.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P2331160136045176924

`eq[A000120(n)-3, A080791(n)]`
-/

namespace A031450.P2331160136045176924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P2331160136045176924

namespace A031450

/-- `eq[A000120(n)-3, A080791(n)]` -/
def P2331160136045176924.Spec : Prop :=
  ∀ n, (P2331160136045176924.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P1599875141536889228

`eq[A119477(n+1)+1, A056792(n)]`
-/

namespace A031450.P1599875141536889228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P1599875141536889228

namespace A031450

/-- `eq[A119477(n+1)+1, A056792(n)]` -/
def P1599875141536889228.Spec : Prop :=
  ∀ n, (P1599875141536889228.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P16268804595602410978

`eq[A008687(n+1)+2, A000120(n)]`
-/

namespace A031450.P16268804595602410978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P16268804595602410978

namespace A031450

/-- `eq[A008687(n+1)+2, A000120(n)]` -/
def P16268804595602410978.Spec : Prop :=
  ∀ n, (P16268804595602410978.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P10136831293021020405

`A298847(eq[A001316(n)², A053644(n)])`
-/

namespace A031450.P10136831293021020405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031450.P10136831293021020405

namespace A031450

/-- `A298847(eq[A001316(n)², A053644(n)])` -/
def P10136831293021020405.Spec : Prop :=
  ∀ n, P10136831293021020405.a n = A031450 (n + 1)

end A031450

/-! ## A031450.P10327101827699561120

`eq[A000005(A080100(n))+2, A000120(n)]`
-/

namespace A031450.P10327101827699561120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080100 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P10327101827699561120

namespace A031450

/-- `eq[A000005(A080100(n))+2, A000120(n)]` -/
def P10327101827699561120.Spec : Prop :=
  ∀ n, (P10327101827699561120.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P4864069459861365422

`eq[A001316(n), A267584(A267584(2*n))]`
-/

namespace A031450.P4864069459861365422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A267584 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031450.P4864069459861365422

namespace A031450

/-- `eq[A001316(n), A267584(A267584(2*n))]` -/
def P4864069459861365422.Spec : Prop :=
  ∀ n, (P4864069459861365422.a n : ℤ) = A031450 (n + 1)

end A031450

/-! ## A031450.P14441315796323663707

`eq[3, A274575(2*n)]`
-/

namespace A031450.P14441315796323663707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031450.P14441315796323663707

namespace A031450

/-- `eq[3, A274575(2*n)]` -/
def P14441315796323663707.Spec : Prop :=
  ∀ n, (P14441315796323663707.a n : ℤ) = A031450 (n + 1)

end A031450

/-!
# A031451: Numbers whose base-2 representation has 4 fewer 0's than 1's.

The programs for A031451, the canonical program `A031451.P5833261908256610895` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031451 has offset 1).

The definition of A031451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031451.P1078702374566396415

`eq[4, A145037(n)]`
-/

namespace A031451.P1078702374566396415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P1078702374566396415

namespace A031451

/-- `eq[4, A145037(n)]` -/
def P1078702374566396415.Spec : Prop :=
  ∀ n, (P1078702374566396415.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P5833261908256610895

`eq[2, A124754(A003188(n))-2]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A031451

/-- `eq[2, A124754(A003188(n))-2]` -/
def P5833261908256610895.Spec : Prop :=
  ∀ n, (P5833261908256610895.a n : ℤ) = A031451 (n + 1)

theorem P5833261908256610895.correct : P5833261908256610895.Spec := by
  intro n
  simp only [A031451, Nat.add_sub_cancel]

end A031451

/-! ## A031451.P5222289278860285144

`∩[A031467(n+1), A053754(n+1)]`
-/

namespace A031451.P5222289278860285144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031451.P5222289278860285144

namespace A031451

/-- `∩[A031467(n+1), A053754(n+1)]` -/
def P5222289278860285144.Spec : Prop :=
  ∀ n, (P5222289278860285144.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P591757170583430544

`∩[A053738(2*(n+1)), A031466(n+2)]/2`
-/

namespace A031451.P591757170583430544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A031451.P591757170583430544

namespace A031451

/-- `∩[A053738(2*(n+1)), A031466(n+2)]/2` -/
def P591757170583430544.Spec : Prop :=
  ∀ n, P591757170583430544.a n = (A031451 (n + 1) : ℚ)

end A031451

/-! ## A031451.P11340413788604230674

`eq[4, -A037861(n)]`
-/

namespace A031451.P11340413788604230674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P11340413788604230674

namespace A031451

/-- `eq[4, -A037861(n)]` -/
def P11340413788604230674.Spec : Prop :=
  ∀ n, (P11340413788604230674.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P15873930008156392481

`eq[2*A267584(n)², A053644(n)]`
-/

namespace A031451.P15873930008156392481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267584 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P15873930008156392481

namespace A031451

/-- `eq[2*A267584(n)², A053644(n)]` -/
def P15873930008156392481.Spec : Prop :=
  ∀ n, (P15873930008156392481.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P5486907274933345843

`eq[(2*A267584(n))², A062383(n)]`
-/

namespace A031451.P5486907274933345843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A267584 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P5486907274933345843

namespace A031451

/-- `eq[(2*A267584(n))², A062383(n)]` -/
def P5486907274933345843.Spec : Prop :=
  ∀ n, (P5486907274933345843.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P13657225787764836838

`eq[A119477(n+1)+2, A056792(n)]`
-/

namespace A031451.P13657225787764836838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P13657225787764836838

namespace A031451

/-- `eq[A119477(n+1)+2, A056792(n)]` -/
def P13657225787764836838.Spec : Prop :=
  ∀ n, (P13657225787764836838.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P14525522149029329831

`eq[A267584(A267584(n))², A062383(n)]`
-/

namespace A031451.P14525522149029329831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A267584 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P14525522149029329831

namespace A031451

/-- `eq[A267584(A267584(n))², A062383(n)]` -/
def P14525522149029329831.Spec : Prop :=
  ∀ n, (P14525522149029329831.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P10933934938708695129

`eq[4, A274575(2*n)]`
-/

namespace A031451.P10933934938708695129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P10933934938708695129

namespace A031451

/-- `eq[4, A274575(2*n)]` -/
def P10933934938708695129.Spec : Prop :=
  ∀ n, (P10933934938708695129.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P12117947205281644943

`eq[5, A337319(2*n+1)]`
-/

namespace A031451.P12117947205281644943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P12117947205281644943

namespace A031451

/-- `eq[5, A337319(2*n+1)]` -/
def P12117947205281644943.Spec : Prop :=
  ∀ n, (P12117947205281644943.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P4431184586086617441

`A298847(A031445(n+1))`
-/

namespace A031451.P4431184586086617441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A031445 (n + 1)).toNat

end

end A031451.P4431184586086617441

namespace A031451

/-- `A298847(A031445(n+1))` -/
def P4431184586086617441.Spec : Prop :=
  ∀ n, P4431184586086617441.a n = A031451 (n + 1)

end A031451

/-! ## A031451.P10008423545675336093

`eq[A057428(n)-2, A037861(2*n)]`
-/

namespace A031451.P10008423545675336093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P10008423545675336093

namespace A031451

/-- `eq[A057428(n)-2, A037861(2*n)]` -/
def P10008423545675336093.Spec : Prop :=
  ∀ n, (P10008423545675336093.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P12755873877462704057

`eq[A037861(2*n)+2, A057428(n+1)]`
-/

namespace A031451.P12755873877462704057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P12755873877462704057

namespace A031451

/-- `eq[A037861(2*n)+2, A057428(n+1)]` -/
def P12755873877462704057.Spec : Prop :=
  ∀ n, (P12755873877462704057.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P3650692190215410447

`eq[A056791(2*n+1)+2, A324467(n)]`
-/

namespace A031451.P3650692190215410447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P3650692190215410447

namespace A031451

/-- `eq[A056791(2*n+1)+2, A324467(n)]` -/
def P3650692190215410447.Spec : Prop :=
  ∀ n, (P3650692190215410447.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P11629932060712653122

`eq[A233272(2*n)+2, A092391(2*n)]`
-/

namespace A031451.P11629932060712653122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P11629932060712653122

namespace A031451

/-- `eq[A233272(2*n)+2, A092391(2*n)]` -/
def P11629932060712653122.Spec : Prop :=
  ∀ n, (P11629932060712653122.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P4624382657632661241

`eq[2*A070939(A267584(n)), A070939(n)]`
-/

namespace A031451.P4624382657632661241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070939 (A267584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031451.P4624382657632661241

namespace A031451

/-- `eq[2*A070939(A267584(n)), A070939(n)]` -/
def P4624382657632661241.Spec : Prop :=
  ∀ n, (P4624382657632661241.a n : ℤ) = A031451 (n + 1)

end A031451

/-! ## A031451.P7068761647658909396

`A298847(eq[(2*A001316(n))², A053644(2*n)])`
-/

namespace A031451.P7068761647658909396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031451.P7068761647658909396

namespace A031451

/-- `A298847(eq[(2*A001316(n))², A053644(2*n)])` -/
def P7068761647658909396.Spec : Prop :=
  ∀ n, P7068761647658909396.a n = A031451 (n + 1)

end A031451

/-!
# A031452: Numbers whose base-3 representation has the same number of 0's as 2's.

The programs for A031452, the canonical program `A031452.P806854237752856273` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031452 has offset 1).

The definition of A031452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031452.P806854237752856273

`eq[A053735(n), A081604(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031452

/-- `eq[A053735(n), A081604(n)]` -/
def P806854237752856273.Spec : Prop :=
  ∀ n, (P806854237752856273.a n : ℤ) = A031452 (n + 1)

theorem P806854237752856273.correct : P806854237752856273.Spec := by
  intro n
  simp only [A031452, Nat.add_sub_cancel]

end A031452

/-! ## A031452.P8862206490330784574

`eq[A077267(n), A081603(n)]`
-/

namespace A031452.P8862206490330784574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P8862206490330784574

namespace A031452

/-- `eq[A077267(n), A081603(n)]` -/
def P8862206490330784574.Spec : Prop :=
  ∀ n, (P8862206490330784574.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P14499488308341860675

`eq[log2(A117592(n)), A077267(n)]`
-/

namespace A031452.P14499488308341860675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117592 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A031452.P14499488308341860675

namespace A031452

/-- `eq[log2(A117592(n)), A077267(n)]` -/
def P14499488308341860675.Spec : Prop :=
  ∀ n, (P14499488308341860675.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P6626736459689545838

`eq[dr(A007089(n)), A081604(n)]`
-/

namespace A031452.P6626736459689545838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007089 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P6626736459689545838

namespace A031452

/-- `eq[dr(A007089(n)), A081604(n)]` -/
def P6626736459689545838.Spec : Prop :=
  ∀ n, (P6626736459689545838.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P17778035510822588538

`eq[3, A006530(A319803(n)+1)]`
-/

namespace A031452.P17778035510822588538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319803 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P17778035510822588538

namespace A031452

/-- `eq[3, A006530(A319803(n)+1)]` -/
def P17778035510822588538.Spec : Prop :=
  ∀ n, (P17778035510822588538.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P9350916887767158561

`eq[A171960(n)+n, A319803(n)]`
-/

namespace A031452.P9350916887767158561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P9350916887767158561

namespace A031452

/-- `eq[A171960(n)+n, A319803(n)]` -/
def P9350916887767158561.Spec : Prop :=
  ∀ n, (P9350916887767158561.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P17961699710651137755

`eq[A053735(n+1), A080342(n+2)]+1`
-/

namespace A031452.P17961699710651137755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031452.P17961699710651137755

namespace A031452

/-- `eq[A053735(n+1), A080342(n+2)]+1` -/
def P17961699710651137755.Spec : Prop :=
  ∀ n, (P17961699710651137755.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P2351062619383825627

`eq[A006047(n), A006047(A171960(n))]`
-/

namespace A031452.P2351062619383825627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P2351062619383825627

namespace A031452

/-- `eq[A006047(n), A006047(A171960(n))]` -/
def P2351062619383825627.Spec : Prop :=
  ∀ n, (P2351062619383825627.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P6431693686549192379

`eq[A006047(n), A006047(A284797(n))]`
-/

namespace A031452.P6431693686549192379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P6431693686549192379

namespace A031452

/-- `eq[A006047(n), A006047(A284797(n))]` -/
def P6431693686549192379.Spec : Prop :=
  ∀ n, (P6431693686549192379.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P7041261083955076752

`eq[A206424(A171960(n)), A206424(n)]`
-/

namespace A031452.P7041261083955076752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 (A171960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P7041261083955076752

namespace A031452

/-- `eq[A206424(A171960(n)), A206424(n)]` -/
def P7041261083955076752.Spec : Prop :=
  ∀ n, (P7041261083955076752.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P9709201243675194499

`eq[A206424(n), A206424(A284797(n))]`
-/

namespace A031452.P9709201243675194499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P9709201243675194499

namespace A031452

/-- `eq[A206424(n), A206424(A284797(n))]` -/
def P9709201243675194499.Spec : Prop :=
  ∀ n, (P9709201243675194499.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P2254181407069537835

`eq[1, A309953(A319803(n)/2)]`
-/

namespace A031452.P2254181407069537835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 (SequenceMachineLib.roundAway ((A319803 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P2254181407069537835

namespace A031452

/-- `eq[1, A309953(A319803(n)/2)]` -/
def P2254181407069537835.Spec : Prop :=
  ∀ n, (P2254181407069537835.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P9810533027973019149

`eq[A053735(n), A053735(A171960(n))]`
-/

namespace A031452.P9810533027973019149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P9810533027973019149

namespace A031452

/-- `eq[A053735(n), A053735(A171960(n))]` -/
def P9810533027973019149.Spec : Prop :=
  ∀ n, (P9810533027973019149.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P8812140042505960622

`eq[A117592(n), A117592(A171960(n))]`
-/

namespace A031452.P8812140042505960622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P8812140042505960622

namespace A031452

/-- `eq[A117592(n), A117592(A171960(n))]` -/
def P8812140042505960622.Spec : Prop :=
  ∀ n, (P8812140042505960622.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P15556894100181529937

`eq[A120879(n), A120879(A171960(n))]`
-/

namespace A031452.P15556894100181529937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P15556894100181529937

namespace A031452

/-- `eq[A120879(n), A120879(A171960(n))]` -/
def P15556894100181529937.Spec : Prop :=
  ∀ n, (P15556894100181529937.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P1164934552837142713

`eq[A081603(n), A081603(A284797(n))]`
-/

namespace A031452.P1164934552837142713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P1164934552837142713

namespace A031452

/-- `eq[A081603(n), A081603(A284797(n))]` -/
def P1164934552837142713.Spec : Prop :=
  ∀ n, (P1164934552837142713.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P10335840862688593218

`eq[A062756(A357616(n)), A077267(n)]`
-/

namespace A031452.P10335840862688593218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P10335840862688593218

namespace A031452

/-- `eq[A062756(A357616(n)), A077267(n)]` -/
def P10335840862688593218.Spec : Prop :=
  ∀ n, (P10335840862688593218.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P17615043239085796157

`eq[0, A171960(A319803(n))]`
-/

namespace A031452.P17615043239085796157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P17615043239085796157

namespace A031452

/-- `eq[0, A171960(A319803(n))]` -/
def P17615043239085796157.Spec : Prop :=
  ∀ n, (P17615043239085796157.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P15669782300811249568

`eq[3, A014963(A319803(n)+1)]`
-/

namespace A031452.P15669782300811249568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A319803 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P15669782300811249568

namespace A031452

/-- `eq[3, A014963(A319803(n)+1)]` -/
def P15669782300811249568.Spec : Prop :=
  ∀ n, (P15669782300811249568.a n : ℤ) = A031452 (n + 1)

end A031452

/-! ## A031452.P7867652086033520488

`eq[1, A037861(A023709(n+1))+1]`
-/

namespace A031452.P7867652086033520488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A023709 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031452.P7867652086033520488

namespace A031452

/-- `eq[1, A037861(A023709(n+1))+1]` -/
def P7867652086033520488.Spec : Prop :=
  ∀ n, (P7867652086033520488.a n : ℤ) = A031452 (n + 1)

end A031452

/-!
# A031453: Numbers whose base-3 representation has one more 0 than 2's.

The programs for A031453, the canonical program `A031453.P14508670588110786033` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031453 has offset 1).

The definition of A031453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031453.P14508670588110786033

`eq[A081603(n)+1, A077267(A028310(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A031453

/-- `eq[A081603(n)+1, A077267(A028310(n))]` -/
def P14508670588110786033.Spec : Prop :=
  ∀ n, (P14508670588110786033.a n : ℤ) = A031453 (n + 1)

theorem P14508670588110786033.correct : P14508670588110786033.Spec := by
  intro n
  simp only [A031453, Nat.add_sub_cancel]

end A031453

/-! ## A031453.P11710936781712166613

`eq[A053735(n)+1, A080342(n+1)]`
-/

namespace A031453.P11710936781712166613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P11710936781712166613

namespace A031453

/-- `eq[A053735(n)+1, A080342(n+1)]` -/
def P11710936781712166613.Spec : Prop :=
  ∀ n, (P11710936781712166613.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P10210583254779449104

`eq[A080342(n+1), A173523(n+1)]`
-/

namespace A031453.P10210583254779449104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P10210583254779449104

namespace A031453

/-- `eq[A080342(n+1), A173523(n+1)]` -/
def P10210583254779449104.Spec : Prop :=
  ∀ n, (P10210583254779449104.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P9884713293360166383

`eq[A053735(n+1), A062153(n+2)]+1`
-/

namespace A031453.P9884713293360166383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031453.P9884713293360166383

namespace A031453

/-- `eq[A053735(n+1), A062153(n+2)]+1` -/
def P9884713293360166383.Spec : Prop :=
  ∀ n, (P9884713293360166383.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P17881878554994541319

`eq[A053735(A028310(n)), A062153(n+1)]`
-/

namespace A031453.P17881878554994541319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P17881878554994541319

namespace A031453

/-- `eq[A053735(A028310(n)), A062153(n+1)]` -/
def P17881878554994541319.Spec : Prop :=
  ∀ n, (P17881878554994541319.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P12905150231708088799

`eq[A053735(n)+2, A000005(A064235(n+1))]`
-/

namespace A031453.P12905150231708088799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P12905150231708088799

namespace A031453

/-- `eq[A053735(n)+2, A000005(A064235(n+1))]` -/
def P12905150231708088799.Spec : Prop :=
  ∀ n, (P12905150231708088799.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P2637140599225974485

`eq[A081603(n)+1, A081603(A274601(n+1))]`
-/

namespace A031453.P2637140599225974485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P2637140599225974485

namespace A031453

/-- `eq[A081603(n)+1, A081603(A274601(n+1))]` -/
def P2637140599225974485.Spec : Prop :=
  ∀ n, (P2637140599225974485.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P9761836038245190782

`eq[A053735(n)+2, A064099(A004128(n))]`
-/

namespace A031453.P9761836038245190782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A004128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P9761836038245190782

namespace A031453

/-- `eq[A053735(n)+2, A064099(A004128(n))]` -/
def P9761836038245190782.Spec : Prop :=
  ∀ n, (P9761836038245190782.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P444532367047624294

`eq[A053735(n)+2, A064099(A007494(n))]`
-/

namespace A031453.P444532367047624294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A007494 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P444532367047624294

namespace A031453

/-- `eq[A053735(n)+2, A064099(A007494(n))]` -/
def P444532367047624294.Spec : Prop :=
  ∀ n, (P444532367047624294.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P8102560827392379802

`eq[A053735(n)+2, A064099(A032766(n))]`
-/

namespace A031453.P8102560827392379802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A032766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P8102560827392379802

namespace A031453

/-- `eq[A053735(n)+2, A064099(A032766(n))]` -/
def P8102560827392379802.Spec : Prop :=
  ∀ n, (P8102560827392379802.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P3095220912358606330

`eq[A081603(n)+2, A077267(3*n)]`
-/

namespace A031453.P3095220912358606330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P3095220912358606330

namespace A031453

/-- `eq[A081603(n)+2, A077267(3*n)]` -/
def P3095220912358606330.Spec : Prop :=
  ∀ n, (P3095220912358606330.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P13061204224140649180

`eq[A053735(A008486(n)+1), A081604(n)]`
-/

namespace A031453.P13061204224140649180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P13061204224140649180

namespace A031453

/-- `eq[A053735(A008486(n)+1), A081604(n)]` -/
def P13061204224140649180.Spec : Prop :=
  ∀ n, (P13061204224140649180.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P13004796343648309402

`eq[2, A081604(A008486(n))-A053735(n)]`
-/

namespace A031453.P13004796343648309402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A008486 n).toNat - A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031453.P13004796343648309402

namespace A031453

/-- `eq[2, A081604(A008486(n))-A053735(n)]` -/
def P13004796343648309402.Spec : Prop :=
  ∀ n, (P13004796343648309402.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P7049699418499529950

`eq[A053735(n)+2, A081604(A016789(n))]`
-/

namespace A031453.P7049699418499529950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P7049699418499529950

namespace A031453

/-- `eq[A053735(n)+2, A081604(A016789(n))]` -/
def P7049699418499529950.Spec : Prop :=
  ∀ n, (P7049699418499529950.a n : ℤ) = A031453 (n + 1)

end A031453

/-! ## A031453.P5157480053704179357

`eq[2, A037861(A023709(n+1))]`
-/

namespace A031453.P5157480053704179357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A023709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031453.P5157480053704179357

namespace A031453

/-- `eq[2, A037861(A023709(n+1))]` -/
def P5157480053704179357.Spec : Prop :=
  ∀ n, (P5157480053704179357.a n : ℤ) = A031453 (n + 1)

end A031453

/-!
# A031454: Numbers whose base-3 representation has 2 more 0's than 2's.

The programs for A031454, the canonical program `A031454.P1259300085302729579` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031454 has offset 1).

The definition of A031454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031454.P1259300085302729579

`eq[A053735(n)+2, A081604(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031454

/-- `eq[A053735(n)+2, A081604(n)]` -/
def P1259300085302729579.Spec : Prop :=
  ∀ n, (P1259300085302729579.a n : ℤ) = A031454 (n + 1)

theorem P1259300085302729579.correct : P1259300085302729579.Spec := by
  intro n
  simp only [A031454, Nat.add_sub_cancel]

end A031454

/-! ## A031454.P6847207593211998921

`eq[A081603(n)+2, A077267(n)]`
-/

namespace A031454.P6847207593211998921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P6847207593211998921

namespace A031454

/-- `eq[A081603(n)+2, A077267(n)]` -/
def P6847207593211998921.Spec : Prop :=
  ∀ n, (P6847207593211998921.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P5300120477323201188

`eq[A053735(n)+1, A062153(n+1)]`
-/

namespace A031454.P5300120477323201188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P5300120477323201188

namespace A031454

/-- `eq[A053735(n)+1, A062153(n+1)]` -/
def P5300120477323201188.Spec : Prop :=
  ∀ n, (P5300120477323201188.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P2704085043065017475

`eq[A062153(n+1), A173523(n+1)]`
-/

namespace A031454.P2704085043065017475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P2704085043065017475

namespace A031454

/-- `eq[A062153(n+1), A173523(n+1)]` -/
def P2704085043065017475.Spec : Prop :=
  ∀ n, (P2704085043065017475.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P2199803172461531690

`eq[A053735(n)+2, A080342(n+1)]`
-/

namespace A031454.P2199803172461531690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P2199803172461531690

namespace A031454

/-- `eq[A053735(n)+2, A080342(n+1)]` -/
def P2199803172461531690.Spec : Prop :=
  ∀ n, (P2199803172461531690.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P12651869664438120042

`eq[A173523(n+1)+1, A080342(n+1)]`
-/

namespace A031454.P12651869664438120042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P12651869664438120042

namespace A031454

/-- `eq[A173523(n+1)+1, A080342(n+1)]` -/
def P12651869664438120042.Spec : Prop :=
  ∀ n, (P12651869664438120042.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P11329680013581996815

`eq[A062153(A028310(n))-1, A053735(n)]`
-/

namespace A031454.P11329680013581996815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A028310 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P11329680013581996815

namespace A031454

/-- `eq[A062153(A028310(n))-1, A053735(n)]` -/
def P11329680013581996815.Spec : Prop :=
  ∀ n, (P11329680013581996815.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P1209009826284415600

`eq[2, A077267(A028310(n))-A081603(n)]`
-/

namespace A031454.P1209009826284415600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A028310 n).toNat - A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031454.P1209009826284415600

namespace A031454

/-- `eq[2, A077267(A028310(n))-A081603(n)]` -/
def P1209009826284415600.Spec : Prop :=
  ∀ n, (P1209009826284415600.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P2054769331807907668

`eq[A081603(n)+2, A081603(A274601(n+1))]`
-/

namespace A031454.P2054769331807907668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P2054769331807907668

namespace A031454

/-- `eq[A081603(n)+2, A081603(A274601(n+1))]` -/
def P2054769331807907668.Spec : Prop :=
  ∀ n, (P2054769331807907668.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P1642570948269224228

`eq[A081603(n)+2, A081603(A284797(n))]`
-/

namespace A031454.P1642570948269224228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P1642570948269224228

namespace A031454

/-- `eq[A081603(n)+2, A081603(A284797(n))]` -/
def P1642570948269224228.Spec : Prop :=
  ∀ n, (P1642570948269224228.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P1248760180966397149

`eq[A062756(A357616(n))+2, A077267(n)]`
-/

namespace A031454.P1248760180966397149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P1248760180966397149

namespace A031454

/-- `eq[A062756(A357616(n))+2, A077267(n)]` -/
def P1248760180966397149.Spec : Prop :=
  ∀ n, (P1248760180966397149.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P13175128347029890689

`record[A108738(A031455(n+1))]`
-/

namespace A031454.P13175128347029890689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A031455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031454.P13175128347029890689

namespace A031454

/-- `record[A108738(A031455(n+1))]` -/
def P13175128347029890689.Spec : Prop :=
  ∀ n, P13175128347029890689.a n = A031454 (n + 1)

end A031454

/-! ## A031454.P11757254193933213905

`record[A135997(A031455(A028310(n)))]`
-/

namespace A031454.P11757254193933213905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A031455 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031454.P11757254193933213905

namespace A031454

/-- `record[A135997(A031455(A028310(n)))]` -/
def P11757254193933213905.Spec : Prop :=
  ∀ n, P11757254193933213905.a n = A031454 (n + 1)

end A031454

/-! ## A031454.P8331250972189259538

`record[A135997(A031455(A052938(n)))]`
-/

namespace A031454.P8331250972189259538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A031455 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031454.P8331250972189259538

namespace A031454

/-- `record[A135997(A031455(A052938(n)))]` -/
def P8331250972189259538.Spec : Prop :=
  ∀ n, P8331250972189259538.a n = A031454 (n + 1)

end A031454

/-! ## A031454.P4646901436037527951

`eq[A053735(A016789(n)), A081604(n)]`
-/

namespace A031454.P4646901436037527951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A016789 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P4646901436037527951

namespace A031454

/-- `eq[A053735(A016789(n)), A081604(n)]` -/
def P4646901436037527951.Spec : Prop :=
  ∀ n, (P4646901436037527951.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P1242400392294528050

`eq[2, A081604(n)-A053735(A008486(n))]`
-/

namespace A031454.P1242400392294528050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n - A053735 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031454.P1242400392294528050

namespace A031454

/-- `eq[2, A081604(n)-A053735(A008486(n))]` -/
def P1242400392294528050.Spec : Prop :=
  ∀ n, (P1242400392294528050.a n : ℤ) = A031454 (n + 1)

end A031454

/-! ## A031454.P302139977759480661

`eq[2, A037861(A023709(n+1))-2]`
-/

namespace A031454.P302139977759480661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A023709 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031454.P302139977759480661

namespace A031454

/-- `eq[2, A037861(A023709(n+1))-2]` -/
def P302139977759480661.Spec : Prop :=
  ∀ n, (P302139977759480661.a n : ℤ) = A031454 (n + 1)

end A031454

/-!
# A031455: Numbers whose base-3 representation has 3 more 0's than 2's.

The programs for A031455, the canonical program `A031455.P11485756920974938664` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031455 has offset 1).

The definition of A031455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031455.P11485756920974938664

`eq[A053735(n)+3, A081604(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031455

/-- `eq[A053735(n)+3, A081604(n)]` -/
def P11485756920974938664.Spec : Prop :=
  ∀ n, (P11485756920974938664.a n : ℤ) = A031455 (n + 1)

theorem P11485756920974938664.correct : P11485756920974938664.Spec := by
  intro n
  simp only [A031455, Nat.add_sub_cancel]

end A031455

/-! ## A031455.P16871563374110549225

`eq[A081603(n)+3, A077267(n)]`
-/

namespace A031455.P16871563374110549225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P16871563374110549225

namespace A031455

/-- `eq[A081603(n)+3, A077267(n)]` -/
def P16871563374110549225.Spec : Prop :=
  ∀ n, (P16871563374110549225.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P12389036577863353413

`eq[A053735(n)+2, A062153(n+1)]`
-/

namespace A031455.P12389036577863353413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P12389036577863353413

namespace A031455

/-- `eq[A053735(n)+2, A062153(n+1)]` -/
def P12389036577863353413.Spec : Prop :=
  ∀ n, (P12389036577863353413.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P7942173418099969132

`eq[A173523(n+1)+1, A062153(n+1)]`
-/

namespace A031455.P7942173418099969132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P7942173418099969132

namespace A031455

/-- `eq[A173523(n+1)+1, A062153(n+1)]` -/
def P7942173418099969132.Spec : Prop :=
  ∀ n, (P7942173418099969132.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P16270255699277230445

`eq[A173523(n+1)+2, A080342(n+1)]`
-/

namespace A031455.P16270255699277230445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P16270255699277230445

namespace A031455

/-- `eq[A173523(n+1)+2, A080342(n+1)]` -/
def P16270255699277230445.Spec : Prop :=
  ∀ n, (P16270255699277230445.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P9961275087312045468

`eq[A029579(A061282(n)), A062153(n+1)]`
-/

namespace A031455.P9961275087312045468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A061282 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P9961275087312045468

namespace A031455

/-- `eq[A029579(A061282(n)), A062153(n+1)]` -/
def P9961275087312045468.Spec : Prop :=
  ∀ n, (P9961275087312045468.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P3391183946420961095

`eq[A290094(A120879(n))+1, A077267(n)]`
-/

namespace A031455.P3391183946420961095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 (A120879 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P3391183946420961095

namespace A031455

/-- `eq[A290094(A120879(n))+1, A077267(n)]` -/
def P3391183946420961095.Spec : Prop :=
  ∀ n, (P3391183946420961095.a n : ℤ) = A031455 (n + 1)

end A031455

/-! ## A031455.P2240250975628657824

`record[A078898(A004396(A031456(n+1)))]`
-/

namespace A031455.P2240250975628657824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004396 (A031456 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031455.P2240250975628657824

namespace A031455

/-- `record[A078898(A004396(A031456(n+1)))]` -/
def P2240250975628657824.Spec : Prop :=
  ∀ n, P2240250975628657824.a n = A031455 (n + 1)

end A031455

/-! ## A031455.P6877498689370572404

`eq[6, A037861(A023709(n+1))]`
-/

namespace A031455.P6877498689370572404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A023709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031455.P6877498689370572404

namespace A031455

/-- `eq[6, A037861(A023709(n+1))]` -/
def P6877498689370572404.Spec : Prop :=
  ∀ n, (P6877498689370572404.a n : ℤ) = A031455 (n + 1)

end A031455

/-!
# A031456: Numbers whose base-3 representation has 4 more 0's than 2's.

The programs for A031456, there is no canonical definition to state claims against.
-/

/-! ## A031456.P17789178704807526952

`eq[32, A065361(A014682(n))]`
-/

namespace A031456.P17789178704807526952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A014682 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031456.P17789178704807526952

/-! ## A031456.P12615278662282473307

`A043324(A083964(n+1))`
-/

namespace A031456.P12615278662282473307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (A083964 (n + 1)).toNat

end

end A031456.P12615278662282473307

/-!
# A031457: Numbers whose base-3 representation has one fewer 0 than 2's.

The programs for A031457, the canonical program `A031457.P3503844430823756382` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031457 has offset 1).

The definition of A031457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031457.P3503844430823756382

`eq[A081604(n)+1, A053735(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031457

/-- `eq[A081604(n)+1, A053735(n)]` -/
def P3503844430823756382.Spec : Prop :=
  ∀ n, (P3503844430823756382.a n : ℤ) = A031457 (n + 1)

theorem P3503844430823756382.correct : P3503844430823756382.Spec := by
  intro n
  simp only [A031457, Nat.add_sub_cancel]

end A031457

/-! ## A031457.P16990366544983708694

`eq[A077267(n)+1, A081603(n)]`
-/

namespace A031457.P16990366544983708694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P16990366544983708694

namespace A031457

/-- `eq[A077267(n)+1, A081603(n)]` -/
def P16990366544983708694.Spec : Prop :=
  ∀ n, (P16990366544983708694.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P14870962011811778839

`eq[A077267(n)+1, log2(A117592(n))]`
-/

namespace A031457.P14870962011811778839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A031457.P14870962011811778839

namespace A031457

/-- `eq[A077267(n)+1, log2(A117592(n))]` -/
def P14870962011811778839.Spec : Prop :=
  ∀ n, (P14870962011811778839.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P7818547873503382633

`eq[A080342(n+1)+1, A053735(n)]`
-/

namespace A031457.P7818547873503382633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P7818547873503382633

namespace A031457

/-- `eq[A080342(n+1)+1, A053735(n)]` -/
def P7818547873503382633.Spec : Prop :=
  ∀ n, (P7818547873503382633.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P15446708061311527625

`eq[A080342(n+1)+2, A173523(n+1)]`
-/

namespace A031457.P15446708061311527625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P15446708061311527625

namespace A031457

/-- `eq[A080342(n+1)+2, A173523(n+1)]` -/
def P15446708061311527625.Spec : Prop :=
  ∀ n, (P15446708061311527625.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P2318081579996351293

`eq[A000005(A064235(n+1)), A053735(n)]`
-/

namespace A031457.P2318081579996351293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064235 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P2318081579996351293

namespace A031457

/-- `eq[A000005(A064235(n+1)), A053735(n)]` -/
def P2318081579996351293.Spec : Prop :=
  ∀ n, (P2318081579996351293.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P7094890615246082953

`eq[A062153(A028310(n))+2, A053735(n)]`
-/

namespace A031457.P7094890615246082953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P7094890615246082953

namespace A031457

/-- `eq[A062153(A028310(n))+2, A053735(n)]` -/
def P7094890615246082953.Spec : Prop :=
  ∀ n, (P7094890615246082953.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P1353271478297433703

`eq[A081603(A274601(n+1))+1, A081603(n)]`
-/

namespace A031457.P1353271478297433703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P1353271478297433703

namespace A031457

/-- `eq[A081603(A274601(n+1))+1, A081603(n)]` -/
def P1353271478297433703.Spec : Prop :=
  ∀ n, (P1353271478297433703.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P10515085915973009928

`eq[A081604(n)+1, dr(A007089(n))]`
-/

namespace A031457.P10515085915973009928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007089 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031457.P10515085915973009928

namespace A031457

/-- `eq[A081604(n)+1, dr(A007089(n))]` -/
def P10515085915973009928.Spec : Prop :=
  ∀ n, (P10515085915973009928.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P1945947719058885143

`eq[A053735(n), A064099(A004128(n))]`
-/

namespace A031457.P1945947719058885143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A004128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P1945947719058885143

namespace A031457

/-- `eq[A053735(n), A064099(A004128(n))]` -/
def P1945947719058885143.Spec : Prop :=
  ∀ n, (P1945947719058885143.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P8889287121525458130

`eq[A053735(n), A064099(A007494(n))]`
-/

namespace A031457.P8889287121525458130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A007494 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P8889287121525458130

namespace A031457

/-- `eq[A053735(n), A064099(A007494(n))]` -/
def P8889287121525458130.Spec : Prop :=
  ∀ n, (P8889287121525458130.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P18404889369327468774

`eq[A053735(n), A064099(A032766(n))]`
-/

namespace A031457.P18404889369327468774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A032766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P18404889369327468774

namespace A031457

/-- `eq[A053735(n), A064099(A032766(n))]` -/
def P18404889369327468774.Spec : Prop :=
  ∀ n, (P18404889369327468774.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P1921473277736576685

`eq[A081603(A284797(n))+1, A081603(n)]`
-/

namespace A031457.P1921473277736576685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P1921473277736576685

namespace A031457

/-- `eq[A081603(A284797(n))+1, A081603(n)]` -/
def P1921473277736576685.Spec : Prop :=
  ∀ n, (P1921473277736576685.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P4085279412942143749

`eq[A077267(n)+1, A062756(A357616(n))]`
-/

namespace A031457.P4085279412942143749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P4085279412942143749

namespace A031457

/-- `eq[A077267(n)+1, A062756(A357616(n))]` -/
def P4085279412942143749.Spec : Prop :=
  ∀ n, (P4085279412942143749.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P14023665564659214669

`eq[A053735(A171960(n))+2, A053735(n)]`
-/

namespace A031457.P14023665564659214669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A171960 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P14023665564659214669

namespace A031457

/-- `eq[A053735(A171960(n))+2, A053735(n)]` -/
def P14023665564659214669.Spec : Prop :=
  ∀ n, (P14023665564659214669.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P17476735884903328163

`eq[2*A117592(A171960(n)), A117592(n)]`
-/

namespace A031457.P17476735884903328163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117592 (A171960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P17476735884903328163

namespace A031457

/-- `eq[2*A117592(A171960(n)), A117592(n)]` -/
def P17476735884903328163.Spec : Prop :=
  ∀ n, (P17476735884903328163.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P17982573910384923725

`eq[2*A120879(A171960(n)), A120879(n)]`
-/

namespace A031457.P17982573910384923725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120879 (A171960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P17982573910384923725

namespace A031457

/-- `eq[2*A120879(A171960(n)), A120879(n)]` -/
def P17982573910384923725.Spec : Prop :=
  ∀ n, (P17982573910384923725.a n : ℤ) = A031457 (n + 1)

end A031457

/-! ## A031457.P5930345842491355393

`eq[A053735(n), A081604(3*n)]`
-/

namespace A031457.P5930345842491355393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P5930345842491355393

namespace A031457

/-- `eq[A053735(n), A081604(3*n)]` -/
def P5930345842491355393.Spec : Prop :=
  ∀ n, (P5930345842491355393.a n : ℤ) = A031457 (n + 1)

end A031457

/-!
# A031458: Numbers whose base-3 representation has 2 fewer 0's than 2's.

The programs for A031458, the canonical program `A031458.P4865628708223611302` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031458 has offset 1).

The definition of A031458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031458.P4865628708223611302

`eq[A081604(n)+2, A053735(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031458

/-- `eq[A081604(n)+2, A053735(n)]` -/
def P4865628708223611302.Spec : Prop :=
  ∀ n, (P4865628708223611302.a n : ℤ) = A031458 (n + 1)

theorem P4865628708223611302.correct : P4865628708223611302.Spec := by
  intro n
  simp only [A031458, Nat.add_sub_cancel]

end A031458

/-! ## A031458.P16257987413262470288

`eq[A077267(n)+2, A081603(n)]`
-/

namespace A031458.P16257987413262470288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P16257987413262470288

namespace A031458

/-- `eq[A077267(n)+2, A081603(n)]` -/
def P16257987413262470288.Spec : Prop :=
  ∀ n, (P16257987413262470288.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P2657826042583685728

`eq[A077267(n)+2, log2(A117592(n))]`
-/

namespace A031458.P2657826042583685728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A031458.P2657826042583685728

namespace A031458

/-- `eq[A077267(n)+2, log2(A117592(n))]` -/
def P2657826042583685728.Spec : Prop :=
  ∀ n, (P2657826042583685728.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P4113691382968900304

`eq[A080342(n+1)+2, A053735(n)]`
-/

namespace A031458.P4113691382968900304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P4113691382968900304

namespace A031458

/-- `eq[A080342(n+1)+2, A053735(n)]` -/
def P4113691382968900304.Spec : Prop :=
  ∀ n, (P4113691382968900304.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P9978264374064177887

`eq[A000005(A064235(n+1))+1, A053735(n)]`
-/

namespace A031458.P9978264374064177887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064235 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P9978264374064177887

namespace A031458

/-- `eq[A000005(A064235(n+1))+1, A053735(n)]` -/
def P9978264374064177887.Spec : Prop :=
  ∀ n, (P9978264374064177887.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P10602091605502116814

`eq[A081603(A274601(n+1))+2, A081603(n)]`
-/

namespace A031458.P10602091605502116814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A274601 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P10602091605502116814

namespace A031458

/-- `eq[A081603(A274601(n+1))+2, A081603(n)]` -/
def P10602091605502116814.Spec : Prop :=
  ∀ n, (P10602091605502116814.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P5520939627167045373

`eq[A064099(A004128(n))+1, A053735(n)]`
-/

namespace A031458.P5520939627167045373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A004128 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P5520939627167045373

namespace A031458

/-- `eq[A064099(A004128(n))+1, A053735(n)]` -/
def P5520939627167045373.Spec : Prop :=
  ∀ n, (P5520939627167045373.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P7822328634434643756

`eq[A064099(A007494(n))+1, A053735(n)]`
-/

namespace A031458.P7822328634434643756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A007494 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P7822328634434643756

namespace A031458

/-- `eq[A064099(A007494(n))+1, A053735(n)]` -/
def P7822328634434643756.Spec : Prop :=
  ∀ n, (P7822328634434643756.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P7202643847483537739

`eq[A064099(A032766(n))+1, A053735(n)]`
-/

namespace A031458.P7202643847483537739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A032766 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P7202643847483537739

namespace A031458

/-- `eq[A064099(A032766(n))+1, A053735(n)]` -/
def P7202643847483537739.Spec : Prop :=
  ∀ n, (P7202643847483537739.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P2805350262956516258

`eq[A081603(A284797(n))+2, A081603(n)]`
-/

namespace A031458.P2805350262956516258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A284797 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P2805350262956516258

namespace A031458

/-- `eq[A081603(A284797(n))+2, A081603(n)]` -/
def P2805350262956516258.Spec : Prop :=
  ∀ n, (P2805350262956516258.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P2213510806669601221

`eq[A077267(n)+2, A062756(A357616(n))]`
-/

namespace A031458.P2213510806669601221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P2213510806669601221

namespace A031458

/-- `eq[A077267(n)+2, A062756(A357616(n))]` -/
def P2213510806669601221.Spec : Prop :=
  ∀ n, (P2213510806669601221.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P17757962862312175977

`eq[A053735(n)-1, A081604(A008486(n))]`
-/

namespace A031458.P17757962862312175977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P17757962862312175977

namespace A031458

/-- `eq[A053735(n)-1, A081604(A008486(n))]` -/
def P17757962862312175977.Spec : Prop :=
  ∀ n, (P17757962862312175977.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P3287141064740378697

`eq[A053735(n)-1, A081604(A016789(n))]`
-/

namespace A031458.P3287141064740378697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P3287141064740378697

namespace A031458

/-- `eq[A053735(n)-1, A081604(A016789(n))]` -/
def P3287141064740378697.Spec : Prop :=
  ∀ n, (P3287141064740378697.a n : ℤ) = A031458 (n + 1)

end A031458

/-! ## A031458.P15216550418345268426

`eq[A081604(n)+2, dr(A007089(n))]`
-/

namespace A031458.P15216550418345268426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007089 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031458.P15216550418345268426

namespace A031458

/-- `eq[A081604(n)+2, dr(A007089(n))]` -/
def P15216550418345268426.Spec : Prop :=
  ∀ n, (P15216550418345268426.a n : ℤ) = A031458 (n + 1)

end A031458

/-!
# A031459: Numbers whose base-3 representation has 3 fewer 0's than 2's.

The programs for A031459, the canonical program `A031459.P7164562208403630870` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031459 has offset 1).

The definition of A031459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031459.P7164562208403630870

`eq[A081604(n)+3, A053735(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031459

/-- `eq[A081604(n)+3, A053735(n)]` -/
def P7164562208403630870.Spec : Prop :=
  ∀ n, (P7164562208403630870.a n : ℤ) = A031459 (n + 1)

theorem P7164562208403630870.correct : P7164562208403630870.Spec := by
  intro n
  simp only [A031459, Nat.add_sub_cancel]

end A031459

/-! ## A031459.P13313827322790395799

`eq[A077267(n)+3, A081603(n)]`
-/

namespace A031459.P13313827322790395799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P13313827322790395799

namespace A031459

/-- `eq[A077267(n)+3, A081603(n)]` -/
def P13313827322790395799.Spec : Prop :=
  ∀ n, (P13313827322790395799.a n : ℤ) = A031459 (n + 1)

end A031459

/-! ## A031459.P5552664388917628738

`eq[A000005(A064235(n+1))+2, A053735(n)]`
-/

namespace A031459.P5552664388917628738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064235 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P5552664388917628738

namespace A031459

/-- `eq[A000005(A064235(n+1))+2, A053735(n)]` -/
def P5552664388917628738.Spec : Prop :=
  ∀ n, (P5552664388917628738.a n : ℤ) = A031459 (n + 1)

end A031459

/-! ## A031459.P3349316091815994920

`eq[A064099(A004128(n))+2, A053735(n)]`
-/

namespace A031459.P3349316091815994920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A004128 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P3349316091815994920

namespace A031459

/-- `eq[A064099(A004128(n))+2, A053735(n)]` -/
def P3349316091815994920.Spec : Prop :=
  ∀ n, (P3349316091815994920.a n : ℤ) = A031459 (n + 1)

end A031459

/-! ## A031459.P1589556513602931573

`eq[A064099(A007494(n))+2, A053735(n)]`
-/

namespace A031459.P1589556513602931573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A007494 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P1589556513602931573

namespace A031459

/-- `eq[A064099(A007494(n))+2, A053735(n)]` -/
def P1589556513602931573.Spec : Prop :=
  ∀ n, (P1589556513602931573.a n : ℤ) = A031459 (n + 1)

end A031459

/-! ## A031459.P10879094718461789877

`eq[A064099(A032766(n))+2, A053735(n)]`
-/

namespace A031459.P10879094718461789877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A032766 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P10879094718461789877

namespace A031459

/-- `eq[A064099(A032766(n))+2, A053735(n)]` -/
def P10879094718461789877.Spec : Prop :=
  ∀ n, (P10879094718461789877.a n : ℤ) = A031459 (n + 1)

end A031459

/-! ## A031459.P14276236068521740403

`eq[A053735(n), A276621(3*n+1)]`
-/

namespace A031459.P14276236068521740403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P14276236068521740403

namespace A031459

/-- `eq[A053735(n), A276621(3*n+1)]` -/
def P14276236068521740403.Spec : Prop :=
  ∀ n, (P14276236068521740403.a n : ℤ) = A031459 (n + 1)

end A031459

/-!
# A031460: Numbers whose base-3 representation has 4 fewer 0's than 2's.

The programs for A031460, there is no canonical definition to state claims against.
-/

/-! ## A031460.P7369304216280241613

`A044993(A062399(n)+1)`
-/

namespace A031460.P7369304216280241613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044993 (A062399 n + 1).toNat

end

end A031460.P7369304216280241613

/-! ## A031460.P3273253681368273871

`A044993(A351870(n)+1)`
-/

namespace A031460.P3273253681368273871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044993 (A351870 n + 1).toNat

end

end A031460.P3273253681368273871

/-! ## A031460.P11991092727243001977

`A044993((n+1)^A089170(n))`
-/

namespace A031460.P11991092727243001977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A089170 n : ℤ))).toNat

end

end A031460.P11991092727243001977

/-! ## A031460.P16549209276924183298

`A044993(C(A043316(n+1), n))`
-/

namespace A031460.P16549209276924183298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044993 (Nat.choose (A043316 (n + 1)).toNat n)

end

end A031460.P16549209276924183298

/-! ## A031460.P2142727812418896723

`A121262(A000244(n))+A044993(n+1)`
-/

namespace A031460.P2142727812418896723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000244 n).toNat + A044993 (n + 1)

end

end A031460.P2142727812418896723

/-!
# A031461: Numbers whose base-4 representation has the same number of 0's as 3's.

The programs for A031461, the canonical program `A031461.P1040658194019081971` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031461 has offset 1).

The definition of A031461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031461.P1040658194019081971

`∪[A031443(n+1), A031448(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A031461

/-- `∪[A031443(n+1), A031448(n+1)]` -/
def P1040658194019081971.Spec : Prop :=
  ∀ n, (P1040658194019081971.a n : ℤ) = A031461 (n + 1)

theorem P1040658194019081971.correct : P1040658194019081971.Spec := by
  intro n
  simp only [A031461, Nat.add_sub_cancel]

end A031461

/-! ## A031461.P3215569814706432003

`∪[A032925(n+1), A039279(n+1)]`
-/

namespace A031461.P3215569814706432003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031461.P3215569814706432003

namespace A031461

/-- `∪[A032925(n+1), A039279(n+1)]` -/
def P3215569814706432003.Spec : Prop :=
  ∀ n, (P3215569814706432003.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P14566419105788467963

`∩[A072601(n+1), A089648(n+1)]`
-/

namespace A031461.P14566419105788467963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031461.P14566419105788467963

namespace A031461

/-- `∩[A072601(n+1), A089648(n+1)]` -/
def P14566419105788467963.Spec : Prop :=
  ∀ n, (P14566419105788467963.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P4224234308799807834

`eq[0, ceil(atan(A037861(n)))]`
-/

namespace A031461.P4224234308799807834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A037861 n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031461.P4224234308799807834

namespace A031461

/-- `eq[0, ceil(atan(A037861(n)))]` -/
def P4224234308799807834.Spec : Prop :=
  ∀ n, (P4224234308799807834.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P15678418000734644495

`eq[1, A280910(A073138(n))]`
-/

namespace A031461.P15678418000734644495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 (A073138 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031461.P15678418000734644495

namespace A031461

/-- `eq[1, A280910(A073138(n))]` -/
def P15678418000734644495.Spec : Prop :=
  ∀ n, (P15678418000734644495.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P11044126327335669374

`eq[A000120(n), A110591(n)]`
-/

namespace A031461.P11044126327335669374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P11044126327335669374

namespace A031461

/-- `eq[A000120(n), A110591(n)]` -/
def P11044126327335669374.Spec : Prop :=
  ∀ n, (P11044126327335669374.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P6912757472264456946

`eq[A037861(n)², A145037(n)]`
-/

namespace A031461.P6912757472264456946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P6912757472264456946

namespace A031461

/-- `eq[A037861(n)², A145037(n)]` -/
def P6912757472264456946.Spec : Prop :=
  ∀ n, (P6912757472264456946.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P5940706692636209183

`eq[log2(A001316(n)), A110591(n)]`
-/

namespace A031461.P5940706692636209183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A031461.P5940706692636209183

namespace A031461

/-- `eq[log2(A001316(n)), A110591(n)]` -/
def P5940706692636209183.Spec : Prop :=
  ∀ n, (P5940706692636209183.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P11670960411567686513

`eq[dr(A007088(n)), A110591(n)]`
-/

namespace A031461.P11670960411567686513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031461.P11670960411567686513

namespace A031461

/-- `eq[dr(A007088(n)), A110591(n)]` -/
def P11670960411567686513.Spec : Prop :=
  ∀ n, (P11670960411567686513.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P14413980193881494428

`filter[A089648(n+1), A115517(#)]`
-/

namespace A031461.P14413980193881494428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A031461.P14413980193881494428

namespace A031461

/-- `filter[A089648(n+1), A115517(#)]` -/
def P14413980193881494428.Spec : Prop :=
  ∀ n, P14413980193881494428.a n = A031461 (n + 1)

end A031461

/-! ## A031461.P15610055890348308515

`eq[A160380(n+1), A160383(n+1)]+1`
-/

namespace A031461.P15610055890348308515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031461.P15610055890348308515

namespace A031461

/-- `eq[A160380(n+1), A160383(n+1)]+1` -/
def P15610055890348308515.Spec : Prop :=
  ∀ n, (P15610055890348308515.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P2348343735165744783

`eq[A000120(n), A070939(A000196(n))]`
-/

namespace A031461.P2348343735165744783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P2348343735165744783

namespace A031461

/-- `eq[A000120(n), A070939(A000196(n))]` -/
def P2348343735165744783.Spec : Prop :=
  ∀ n, (P2348343735165744783.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P17908577984908163890

`eq[A004526(A070939(n)), A023416(n)]`
-/

namespace A031461.P17908577984908163890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P17908577984908163890

namespace A031461

/-- `eq[A004526(A070939(n)), A023416(n)]` -/
def P17908577984908163890.Spec : Prop :=
  ∀ n, (P17908577984908163890.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P10463641847071643440

`eq[A000120(n), A065033(A070939(n))]`
-/

namespace A031461.P10463641847071643440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P10463641847071643440

namespace A031461

/-- `eq[A000120(n), A065033(A070939(n))]` -/
def P10463641847071643440.Spec : Prop :=
  ∀ n, (P10463641847071643440.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P3678389123119524078

`eq[A037861(n), A057428(A037861(n)²)]`
-/

namespace A031461.P3678389123119524078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A037861 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P3678389123119524078

namespace A031461

/-- `eq[A037861(n), A057428(A037861(n)²)]` -/
def P3678389123119524078.Spec : Prop :=
  ∀ n, (P3678389123119524078.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P13581370104273800076

`eq[A145037(A028310(n))², A145037(n)]`
-/

namespace A031461.P13581370104273800076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P13581370104273800076

namespace A031461

/-- `eq[A145037(A028310(n))², A145037(n)]` -/
def P13581370104273800076.Spec : Prop :=
  ∀ n, (P13581370104273800076.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P902989558229723683

`eq[A000360(A072376(n))+1, A000120(n)]`
-/

namespace A031461.P902989558229723683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A072376 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P902989558229723683

namespace A031461

/-- `eq[A000360(A072376(n))+1, A000120(n)]` -/
def P902989558229723683.Spec : Prop :=
  ∀ n, (P902989558229723683.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P9775058607245466851

`eq[A053644(2*A000196(n)), A001316(n)]`
-/

namespace A031461.P9775058607245466851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * A000196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P9775058607245466851

namespace A031461

/-- `eq[A053644(2*A000196(n)), A001316(n)]` -/
def P9775058607245466851.Spec : Prop :=
  ∀ n, (P9775058607245466851.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P9648794734552486896

`eq[A145037(A000007(n)+n)², A145037(n)]`
-/

namespace A031461.P9648794734552486896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A000007 n + (n : ℤ)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P9648794734552486896

namespace A031461

/-- `eq[A145037(A000007(n)+n)², A145037(n)]` -/
def P9648794734552486896.Spec : Prop :=
  ∀ n, (P9648794734552486896.a n : ℤ) = A031461 (n + 1)

end A031461

/-! ## A031461.P18444614945354347063

`eq[A000038(n)+A145037(n)², A145037(n)]`
-/

namespace A031461.P18444614945354347063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + A145037 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031461.P18444614945354347063

namespace A031461

/-- `eq[A000038(n)+A145037(n)², A145037(n)]` -/
def P18444614945354347063.Spec : Prop :=
  ∀ n, (P18444614945354347063.a n : ℤ) = A031461 (n + 1)

end A031461

/-!
# A031462: Numbers whose base-4 representation has one more 0 than 3's.

The programs for A031462, the canonical program `A031462.P2223033496409481425` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031462 has offset 1).

The definition of A031462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031462.P2223033496409481425

`∪[A031444(n+1), A031445(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031462

/-- `∪[A031444(n+1), A031445(n+1)]` -/
def P2223033496409481425.Spec : Prop :=
  ∀ n, (P2223033496409481425.a n : ℤ) = A031462 (n + 1)

theorem P2223033496409481425.correct : P2223033496409481425.Spec := by
  intro n
  simp only [A031462, Nat.add_sub_cancel]

end A031462

/-! ## A031462.P177714713125483

`eq[A160383(n)+1, A160380(n)]`
-/

namespace A031462.P177714713125483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P177714713125483

namespace A031462

/-- `eq[A160383(n)+1, A160380(n)]` -/
def P177714713125483.Spec : Prop :=
  ∀ n, (P177714713125483.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P1974333367284799700

`eq[A000120(n+1), A102572(n+2)]+1`
-/

namespace A031462.P1974333367284799700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031462.P1974333367284799700

namespace A031462

/-- `eq[A000120(n+1), A102572(n+2)]+1` -/
def P1974333367284799700.Spec : Prop :=
  ∀ n, (P1974333367284799700.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P635501950746201617

`eq[A001316(n), A053644(A000194(n))]`
-/

namespace A031462.P635501950746201617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P635501950746201617

namespace A031462

/-- `eq[A001316(n), A053644(A000194(n))]` -/
def P635501950746201617.Spec : Prop :=
  ∀ n, (P635501950746201617.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P11001904210021351049

`eq[A001316(n), A053644(A000196(n))]`
-/

namespace A031462.P11001904210021351049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P11001904210021351049

namespace A031462

/-- `eq[A001316(n), A053644(A000196(n))]` -/
def P11001904210021351049.Spec : Prop :=
  ∀ n, (P11001904210021351049.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P17710226900918645068

`eq[A000120(n), A000360(A072376(n))]`
-/

namespace A031462.P17710226900918645068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A072376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P17710226900918645068

namespace A031462

/-- `eq[A000120(n), A000360(A072376(n))]` -/
def P17710226900918645068.Spec : Prop :=
  ∀ n, (P17710226900918645068.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P10772176128224121479

`eq[A023416(n), A029837(A020986(n))]`
-/

namespace A031462.P10772176128224121479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A020986 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P10772176128224121479

namespace A031462

/-- `eq[A023416(n), A029837(A020986(n))]` -/
def P10772176128224121479.Spec : Prop :=
  ∀ n, (P10772176128224121479.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P13275059113299855949

`eq[A023416(n), A029837(A101776(n))]`
-/

namespace A031462.P13275059113299855949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A101776 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P13275059113299855949

namespace A031462

/-- `eq[A023416(n), A029837(A101776(n))]` -/
def P13275059113299855949.Spec : Prop :=
  ∀ n, (P13275059113299855949.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P17088487357010558754

`eq[A008619(A070939(n)), A080791(n)]`
-/

namespace A031462.P17088487357010558754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P17088487357010558754

namespace A031462

/-- `eq[A008619(A070939(n)), A080791(n)]` -/
def P17088487357010558754.Spec : Prop :=
  ∀ n, (P17088487357010558754.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P6608799095836245409

`eq[A000120(n)+2, A070939(A000267(n))]`
-/

namespace A031462.P6608799095836245409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P6608799095836245409

namespace A031462

/-- `eq[A000120(n)+2, A070939(A000267(n))]` -/
def P6608799095836245409.Spec : Prop :=
  ∀ n, (P6608799095836245409.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P14110487675584953395

`lt[(A145037(n)+1)², abs(A145037(2*n))]`
-/

namespace A031462.P14110487675584953395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145037 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 (2 * n)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031462.P14110487675584953395

namespace A031462

/-- `lt[(A145037(n)+1)², abs(A145037(2*n))]` -/
def P14110487675584953395.Spec : Prop :=
  ∀ n, (P14110487675584953395.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P9013918032993641753

`eq[A000925(A062383(n)), A037861(n)]`
-/

namespace A031462.P9013918032993641753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A062383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P9013918032993641753

namespace A031462

/-- `eq[A000925(A062383(n)), A037861(n)]` -/
def P9013918032993641753.Spec : Prop :=
  ∀ n, (P9013918032993641753.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P6095237320632102226

`eq[A046951(A062383(n)), A080791(n)]`
-/

namespace A031462.P6095237320632102226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A062383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P6095237320632102226

namespace A031462

/-- `eq[A046951(A062383(n)), A080791(n)]` -/
def P6095237320632102226.Spec : Prop :=
  ∀ n, (P6095237320632102226.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P8725398564261381259

`eq[1, or(1, A037861(2*n+1))]`
-/

namespace A031462.P8725398564261381259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037861 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031462.P8725398564261381259

namespace A031462

/-- `eq[1, or(1, A037861(2*n+1))]` -/
def P8725398564261381259.Spec : Prop :=
  ∀ n, (P8725398564261381259.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P9100818320975612033

`lt[A037861(2*n+1)², A037861(n)]`
-/

namespace A031462.P9100818320975612033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031462.P9100818320975612033

namespace A031462

/-- `lt[A037861(2*n+1)², A037861(n)]` -/
def P9100818320975612033.Spec : Prop :=
  ∀ n, (P9100818320975612033.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P551224746614281274

`eq[(A145037(n)+1)², A037861(2*n+1)]`
-/

namespace A031462.P551224746614281274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145037 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P551224746614281274

namespace A031462

/-- `eq[(A145037(n)+1)², A037861(2*n+1)]` -/
def P551224746614281274.Spec : Prop :=
  ∀ n, (P551224746614281274.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P6857600566119152077

`eq[A037861(2*n+1), A082024((A037861(n)+1)²)]`
-/

namespace A031462.P6857600566119152077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 ((A037861 n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P6857600566119152077

namespace A031462

/-- `eq[A037861(2*n+1), A082024((A037861(n)+1)²)]` -/
def P6857600566119152077.Spec : Prop :=
  ∀ n, (P6857600566119152077.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P6945493338675509887

`eq[A037861(2*n+1), A138364(A037861(2*n+1)²)]`
-/

namespace A031462.P6945493338675509887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (A037861 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P6945493338675509887

namespace A031462

/-- `eq[A037861(2*n+1), A138364(A037861(2*n+1)²)]` -/
def P6945493338675509887.Spec : Prop :=
  ∀ n, (P6945493338675509887.a n : ℤ) = A031462 (n + 1)

end A031462

/-! ## A031462.P5165190880095839789

`eq[A023416(n), A160385(A003817(2*n))]`
-/

namespace A031462.P5165190880095839789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A003817 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031462.P5165190880095839789

namespace A031462

/-- `eq[A023416(n), A160385(A003817(2*n))]` -/
def P5165190880095839789.Spec : Prop :=
  ∀ n, (P5165190880095839789.a n : ℤ) = A031462 (n + 1)

end A031462

/-!
# A031463: Numbers whose base-4 representation has 2 more 0's than 3's.

The programs for A031463, there is no canonical definition to state claims against.
-/

/-! ## A031463.P17428186634949037627

`∪[A031446(n+1), A031447(n+1)]`
-/

namespace A031463.P17428186634949037627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031463.P17428186634949037627

/-! ## A031463.P15395091712853951726

`eq[2, ceil(A037861(n)/2)]`
-/

namespace A031463.P15395091712853951726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037861 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031463.P15395091712853951726

/-! ## A031463.P1521901439162393251

`eq[A000120(n)+2, A110591(n)]`
-/

namespace A031463.P1521901439162393251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P1521901439162393251

/-! ## A031463.P10993533604700566498

`eq[log2(A001316(n))+2, A110591(n)]`
-/

namespace A031463.P10993533604700566498
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A031463.P10993533604700566498

/-! ## A031463.P6576044539394456630

`eq[dr(A007088(n)+2), A110591(n)]`
-/

namespace A031463.P6576044539394456630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031463.P6576044539394456630

/-! ## A031463.P12736402818144250221

`eq[A000120(n)+2, A070939(A000196(n))]`
-/

namespace A031463.P12736402818144250221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P12736402818144250221

/-! ## A031463.P1976630620437469125

`eq[2*A001316(n), A053644(A000196(n))]`
-/

namespace A031463.P1976630620437469125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P1976630620437469125

/-! ## A031463.P13927435972271139610

`eq[A160383(n)+2, A160380(n)]`
-/

namespace A031463.P13927435972271139610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P13927435972271139610

/-! ## A031463.P10307187674357637703

`eq[A000120(n)+1, A102572(n+1)]`
-/

namespace A031463.P10307187674357637703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P10307187674357637703

/-! ## A031463.P16793536102305691434

`eq[A063787(n+1), A102572(n+1)]`
-/

namespace A031463.P16793536102305691434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P16793536102305691434

/-! ## A031463.P3954231660438960899

`eq[A008619(A070939(n))+1, A080791(n)]`
-/

namespace A031463.P3954231660438960899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A070939 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P3954231660438960899

/-! ## A031463.P6875348675392521650

`eq[A004526(A070939(n))+2, A023416(n)]`
-/

namespace A031463.P6875348675392521650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P6875348675392521650

/-! ## A031463.P16868078536722600063

`eq[A000120(n)+2, A065033(A070939(n))]`
-/

namespace A031463.P16868078536722600063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P16868078536722600063

/-! ## A031463.P8983178941880309930

`eq[2*A001316(n), A053644(A000194(n))]`
-/

namespace A031463.P8983178941880309930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P8983178941880309930

/-! ## A031463.P15207952646623415481

`eq[A000120(n)+1, A004526(A000523(n+1))]`
-/

namespace A031463.P15207952646623415481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P15207952646623415481

/-! ## A031463.P17616253423953574790

`eq[A000120(n)+1, A000360(A072376(n+1))]`
-/

namespace A031463.P17616253423953574790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A072376 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P17616253423953574790

/-! ## A031463.P8445114145417551197

`eq[A160383(A003817(n))+2, A023416(n)]`
-/

namespace A031463.P8445114145417551197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A003817 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031463.P8445114145417551197

/-! ## A031463.P4107592977740433110

`record[A298847(A004526(A031468(n+1)))]`
-/

namespace A031463.P4107592977740433110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A004526 (A031468 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031463.P4107592977740433110

/-! ## A031463.P7620971710052087389

`record[A078898(A026741(A031464(n+1)))]`
-/

namespace A031463.P7620971710052087389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A026741 (A031464 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031463.P7620971710052087389

/-!
# A031464: Numbers whose base-4 representation has 3 more 0's than 3's.

The programs for A031464, the canonical program `A031464.P2183421695892632133` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031464 has offset 1).

The definition of A031464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031464.P2183421695892632133

`eq[A010717(A000523(n+1)), A037861(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031464

/-- `eq[A010717(A000523(n+1)), A037861(n)]` -/
def P2183421695892632133.Spec : Prop :=
  ∀ n, (P2183421695892632133.a n : ℤ) = A031464 (n + 1)

theorem P2183421695892632133.correct : P2183421695892632133.Spec := by
  intro n
  simp only [A031464, Nat.add_sub_cancel]

end A031464

/-! ## A031464.P13337469108041099861

`record[A078898(A078898(A031465(n+1)))]`
-/

namespace A031464.P13337469108041099861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A078898 (A031465 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031464.P13337469108041099861

namespace A031464

/-- `record[A078898(A078898(A031465(n+1)))]` -/
def P13337469108041099861.Spec : Prop :=
  ∀ n, P13337469108041099861.a n = A031464 (n + 1)

end A031464

/-! ## A031464.P10323128465366595604

`eq[A023416(A031445(n+1)), A023416(n)]`
-/

namespace A031464.P10323128465366595604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A031445 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031464.P10323128465366595604

namespace A031464

/-- `eq[A023416(A031445(n+1)), A023416(n)]` -/
def P10323128465366595604.Spec : Prop :=
  ∀ n, (P10323128465366595604.a n : ℤ) = A031464 (n + 1)

end A031464

/-! ## A031464.P11342125373566116390

`eq[A042327(A000120(n)), A102572(n+1)]`
-/

namespace A031464.P11342125373566116390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042327 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031464.P11342125373566116390

namespace A031464

/-- `eq[A042327(A000120(n)), A102572(n+1)]` -/
def P11342125373566116390.Spec : Prop :=
  ∀ n, (P11342125373566116390.a n : ℤ) = A031464 (n + 1)

end A031464

/-! ## A031464.P9363858239261600094

`eq[A080791(A031445(n+1)), A080791(n)]`
-/

namespace A031464.P9363858239261600094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A031445 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031464.P9363858239261600094

namespace A031464

/-- `eq[A080791(A031445(n+1)), A080791(n)]` -/
def P9363858239261600094.Spec : Prop :=
  ∀ n, (P9363858239261600094.a n : ℤ) = A031464 (n + 1)

end A031464

/-!
# A031465: Numbers whose base-4 representation has 4 more 0's than 3's.

The programs for A031465, there is no canonical definition to state claims against.
-/

/-! ## A031465.P11899212569782752742

`A280498(2*A045081(n+1))`
-/

namespace A031465.P11899212569782752742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (2 * A045081 (n + 1)).toNat

end

end A031465.P11899212569782752742

/-! ## A031465.P4011362405702904332

`A323467(2*A045081(n+1))`
-/

namespace A031465.P4011362405702904332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (2 * A045081 (n + 1)).toNat

end

end A031465.P4011362405702904332

/-! ## A031465.P13418816528143677017

`A045081(A187829(n+1))`
-/

namespace A031465.P13418816528143677017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045081 (A187829 (n + 1)).toNat

end

end A031465.P13418816528143677017

/-! ## A031465.P15009810137715804057

`A045081(A077168(n))`
-/

namespace A031465.P15009810137715804057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045081 (A077168 n).toNat

end

end A031465.P15009810137715804057

/-! ## A031465.P14230500285434917686

`A286956(A045081(n+1))`
-/

namespace A031465.P14230500285434917686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (A045081 (n + 1)).toNat

end

end A031465.P14230500285434917686

/-!
# A031466: Numbers whose base-4 representation has one fewer 0 than 3's.

The programs for A031466, the canonical program `A031466.P5427241902019165645` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031466 has offset 1).

The definition of A031466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031466.P5427241902019165645

`∪[A031449(n+1), A031450(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031466

/-- `∪[A031449(n+1), A031450(n+1)]` -/
def P5427241902019165645.Spec : Prop :=
  ∀ n, (P5427241902019165645.a n : ℤ) = A031466 (n + 1)

theorem P5427241902019165645.correct : P5427241902019165645.Spec := by
  intro n
  simp only [A031466, Nat.add_sub_cancel]

end A031466

/-! ## A031466.P2678746858280683813

`lt[(2-A145037(n))², A145037(n)]`
-/

namespace A031466.P2678746858280683813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A145037 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031466.P2678746858280683813

namespace A031466

/-- `lt[(2-A145037(n))², A145037(n)]` -/
def P2678746858280683813.Spec : Prop :=
  ∀ n, (P2678746858280683813.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P2028413777819648170

`eq[A145037(n), A331885(A145037(n)²)]`
-/

namespace A031466.P2028413777819648170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 (A145037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P2028413777819648170

namespace A031466

/-- `eq[A145037(n), A331885(A145037(n)²)]` -/
def P2028413777819648170.Spec : Prop :=
  ∀ n, (P2028413777819648170.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P13774772551784431939

`eq[1, or(1, A037861(n)+3)]`
-/

namespace A031466.P13774772551784431939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037861 n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031466.P13774772551784431939

namespace A031466

/-- `eq[1, or(1, A037861(n)+3)]` -/
def P13774772551784431939.Spec : Prop :=
  ∀ n, (P13774772551784431939.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P12113223608297663973

`eq[A110591(n)+1, A000120(n)]`
-/

namespace A031466.P12113223608297663973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P12113223608297663973

namespace A031466

/-- `eq[A110591(n)+1, A000120(n)]` -/
def P12113223608297663973.Spec : Prop :=
  ∀ n, (P12113223608297663973.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P11128188283494374249

`eq[A160380(n)+1, A160383(n)]`
-/

namespace A031466.P11128188283494374249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P11128188283494374249

namespace A031466

/-- `eq[A160380(n)+1, A160383(n)]` -/
def P11128188283494374249.Spec : Prop :=
  ∀ n, (P11128188283494374249.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P10464515263527453127

`eq[A110591(n)+1, log2(A001316(n))]`
-/

namespace A031466.P10464515263527453127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A031466.P10464515263527453127

namespace A031466

/-- `eq[A110591(n)+1, log2(A001316(n))]` -/
def P10464515263527453127.Spec : Prop :=
  ∀ n, (P10464515263527453127.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P2208925189740470048

`eq[A110591(n)+1, dr(A007088(n))]`
-/

namespace A031466.P2208925189740470048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031466.P2208925189740470048

namespace A031466

/-- `eq[A110591(n)+1, dr(A007088(n))]` -/
def P2208925189740470048.Spec : Prop :=
  ∀ n, (P2208925189740470048.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P10120305382271006073

`eq[A000120(n), A070939(A000267(n))]`
-/

namespace A031466.P10120305382271006073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P10120305382271006073

namespace A031466

/-- `eq[A000120(n), A070939(A000267(n))]` -/
def P10120305382271006073.Spec : Prop :=
  ∀ n, (P10120305382271006073.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P1342912196619897715

`eq[A053644(A003056(n)), A267584(n)]`
-/

namespace A031466.P1342912196619897715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A003056 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P1342912196619897715

namespace A031466

/-- `eq[A053644(A003056(n)), A267584(n)]` -/
def P1342912196619897715.Spec : Prop :=
  ∀ n, (P1342912196619897715.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P4868848920820097006

`eq[A000120(n), A029837(A027434(n+1))]`
-/

namespace A031466.P4868848920820097006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A027434 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P4868848920820097006

namespace A031466

/-- `eq[A000120(n), A029837(A027434(n+1))]` -/
def P4868848920820097006.Spec : Prop :=
  ∀ n, (P4868848920820097006.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P4971572371021707899

`eq[A070939(A000196(n))+1, A000120(n)]`
-/

namespace A031466.P4971572371021707899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000196 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P4971572371021707899

namespace A031466

/-- `eq[A070939(A000196(n))+1, A000120(n)]` -/
def P4971572371021707899.Spec : Prop :=
  ∀ n, (P4971572371021707899.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P6972628316567499250

`eq[A023416(n)+1, A004526(A070939(n))]`
-/

namespace A031466.P6972628316567499250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P6972628316567499250

namespace A031466

/-- `eq[A023416(n)+1, A004526(A070939(n))]` -/
def P6972628316567499250.Spec : Prop :=
  ∀ n, (P6972628316567499250.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P13140915325656404618

`eq[A000120(n), A080513(A029837(n+1))]`
-/

namespace A031466.P13140915325656404618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A029837 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P13140915325656404618

namespace A031466

/-- `eq[A000120(n), A080513(A029837(n+1))]` -/
def P13140915325656404618.Spec : Prop :=
  ∀ n, (P13140915325656404618.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P642970400157197922

`eq[A065033(A070939(n))+1, A000120(n)]`
-/

namespace A031466.P642970400157197922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A070939 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P642970400157197922

namespace A031466

/-- `eq[A065033(A070939(n))+1, A000120(n)]` -/
def P642970400157197922.Spec : Prop :=
  ∀ n, (P642970400157197922.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P17893590035235615770

`eq[A000360(A072376(n))+2, A000120(n)]`
-/

namespace A031466.P17893590035235615770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A072376 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P17893590035235615770

namespace A031466

/-- `eq[A000360(A072376(n))+2, A000120(n)]` -/
def P17893590035235615770.Spec : Prop :=
  ∀ n, (P17893590035235615770.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P10862261889438531575

`eq[A080791(n)+2, A008619(A070939(n))]`
-/

namespace A031466.P10862261889438531575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P10862261889438531575

namespace A031466

/-- `eq[A080791(n)+2, A008619(A070939(n))]` -/
def P10862261889438531575.Spec : Prop :=
  ∀ n, (P10862261889438531575.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P6531784003864950030

`eq[A000120(n), A070939(2*A000196(n))]`
-/

namespace A031466.P6531784003864950030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P6531784003864950030

namespace A031466

/-- `eq[A000120(n), A070939(2*A000196(n))]` -/
def P6531784003864950030.Spec : Prop :=
  ∀ n, (P6531784003864950030.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P984839837522163457

`eq[A023416(n)+1, A160383(A003817(n))]`
-/

namespace A031466.P984839837522163457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P984839837522163457

namespace A031466

/-- `eq[A023416(n)+1, A160383(A003817(n))]` -/
def P984839837522163457.Spec : Prop :=
  ∀ n, (P984839837522163457.a n : ℤ) = A031466 (n + 1)

end A031466

/-! ## A031466.P14192839820069881886

`eq[A004526(A070939(n)), A023416(2*n)]`
-/

namespace A031466.P14192839820069881886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031466.P14192839820069881886

namespace A031466

/-- `eq[A004526(A070939(n)), A023416(2*n)]` -/
def P14192839820069881886.Spec : Prop :=
  ∀ n, (P14192839820069881886.a n : ℤ) = A031466 (n + 1)

end A031466

/-!
# A031467: Numbers whose base-4 representation has 2 fewer 0's than 3's.

The programs for A031467, the canonical program `A031467.P1411473748757651581` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031467 has offset 1).

The definition of A031467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031467.P9223415428794368896

`eq[A110591(n)+2, A000120(n)]`
-/

namespace A031467.P9223415428794368896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P9223415428794368896

namespace A031467

/-- `eq[A110591(n)+2, A000120(n)]` -/
def P9223415428794368896.Spec : Prop :=
  ∀ n, (P9223415428794368896.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P7228454536476403845

`eq[A160380(n)+2, A160383(n)]`
-/

namespace A031467.P7228454536476403845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P7228454536476403845

namespace A031467

/-- `eq[A160380(n)+2, A160383(n)]` -/
def P7228454536476403845.Spec : Prop :=
  ∀ n, (P7228454536476403845.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P7409862321860890274

`eq[A110591(n)+2, log2(A001316(n))]`
-/

namespace A031467.P7409862321860890274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A031467.P7409862321860890274

namespace A031467

/-- `eq[A110591(n)+2, log2(A001316(n))]` -/
def P7409862321860890274.Spec : Prop :=
  ∀ n, (P7409862321860890274.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P11165697842724247817

`eq[A110591(n)+2, dr(A007088(n))]`
-/

namespace A031467.P11165697842724247817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A031467.P11165697842724247817

namespace A031467

/-- `eq[A110591(n)+2, dr(A007088(n))]` -/
def P11165697842724247817.Spec : Prop :=
  ∀ n, (P11165697842724247817.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P1411473748757651581

`eq[A000120(n), A070939(A000267(n))+1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031467

/-- `eq[A000120(n), A070939(A000267(n))+1]` -/
def P1411473748757651581.Spec : Prop :=
  ∀ n, (P1411473748757651581.a n : ℤ) = A031467 (n + 1)

theorem P1411473748757651581.correct : P1411473748757651581.Spec := by
  intro n
  simp only [A031467, Nat.add_sub_cancel]

end A031467

/-! ## A031467.P11519885521476282649

`eq[A070939(A000196(n))+2, A000120(n)]`
-/

namespace A031467.P11519885521476282649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000196 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P11519885521476282649

namespace A031467

/-- `eq[A070939(A000196(n))+2, A000120(n)]` -/
def P11519885521476282649.Spec : Prop :=
  ∀ n, (P11519885521476282649.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P12493928242143523344

`eq[A023416(n)+2, A004526(A070939(n))]`
-/

namespace A031467.P12493928242143523344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P12493928242143523344

namespace A031467

/-- `eq[A023416(n)+2, A004526(A070939(n))]` -/
def P12493928242143523344.Spec : Prop :=
  ∀ n, (P12493928242143523344.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P7286694181048868747

`eq[A065033(A070939(n))+2, A000120(n)]`
-/

namespace A031467.P7286694181048868747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A070939 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P7286694181048868747

namespace A031467

/-- `eq[A065033(A070939(n))+2, A000120(n)]` -/
def P7286694181048868747.Spec : Prop :=
  ∀ n, (P7286694181048868747.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P17115358393864030949

`eq[A000120(n), A070939(2*A000267(n))]`
-/

namespace A031467.P17115358393864030949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A000267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P17115358393864030949

namespace A031467

/-- `eq[A000120(n), A070939(2*A000267(n))]` -/
def P17115358393864030949.Spec : Prop :=
  ∀ n, (P17115358393864030949.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P16280061417487558400

`eq[2*A267584(n), A053644(A003056(n))]`
-/

namespace A031467.P16280061417487558400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A003056 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P16280061417487558400

namespace A031467

/-- `eq[2*A267584(n), A053644(A003056(n))]` -/
def P16280061417487558400.Spec : Prop :=
  ∀ n, (P16280061417487558400.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P7170914249265195569

`eq[A029837(A027434(n+1))+1, A000120(n)]`
-/

namespace A031467.P7170914249265195569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A027434 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P7170914249265195569

namespace A031467

/-- `eq[A029837(A027434(n+1))+1, A000120(n)]` -/
def P7170914249265195569.Spec : Prop :=
  ∀ n, (P7170914249265195569.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P7721196984765384090

`eq[A080513(A029837(n+1))+1, A000120(n)]`
-/

namespace A031467.P7721196984765384090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A029837 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P7721196984765384090

namespace A031467

/-- `eq[A080513(A029837(n+1))+1, A000120(n)]` -/
def P7721196984765384090.Spec : Prop :=
  ∀ n, (P7721196984765384090.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P13763867208087712048

`eq[A023416(n)+2, A160383(A003817(n))]`
-/

namespace A031467.P13763867208087712048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P13763867208087712048

namespace A031467

/-- `eq[A023416(n)+2, A160383(A003817(n))]` -/
def P13763867208087712048.Spec : Prop :=
  ∀ n, (P13763867208087712048.a n : ℤ) = A031467 (n + 1)

end A031467

/-! ## A031467.P9794806323873782030

`eq[A000120(n), A023416(A031444(n+1))]`
-/

namespace A031467.P9794806323873782030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A031444 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P9794806323873782030

namespace A031467

/-- `eq[A000120(n), A023416(A031444(n+1))]` -/
def P9794806323873782030.Spec : Prop :=
  ∀ n, (P9794806323873782030.a n : ℤ) = A031467 (n + 1)

end A031467

/-!
# A031468: Numbers whose base-4 representation has 3 fewer 0's than 3's.

The programs for A031468, there is no canonical definition to state claims against.
-/

/-! ## A031468.P135233002653326286

`A045064(n+1)%A004607(n+1)`
-/

namespace A031468.P135233002653326286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045064 (n + 1)) (A004607 (n + 1))

end

end A031468.P135233002653326286

/-! ## A031468.P4691132243098594588

`A045064(n+1)%A002148(A002148(n))`
-/

namespace A031468.P4691132243098594588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045064 (n + 1)) (A002148 (A002148 n).toNat)

end

end A031468.P4691132243098594588

/-! ## A031468.P3537814336941176258

`or(A001221(A177248(n)), A045064(n+1))`
-/

namespace A031468.P3537814336941176258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A177248 n).toNat) (A045064 (n + 1))

end

end A031468.P3537814336941176258

/-! ## A031468.P9079323543359927790

`or(A045064(n+1), A186114(A001595(n)))`
-/

namespace A031468.P9079323543359927790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045064 (n + 1)) (A186114 (A001595 n).toNat)

end

end A031468.P9079323543359927790

/-! ## A031468.P4597560369305345024

`A045064(n+1)+A010816(A045104(n+1))`
-/

namespace A031468.P4597560369305345024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045064 (n + 1) + A010816 (A045104 (n + 1)).toNat

end

end A031468.P4597560369305345024

/-!
# A031469: Numbers whose base-4 representation has 4 fewer 0's than 3's.

The programs for A031469, there is no canonical definition to state claims against.
-/

/-! ## A031469.P5298384789384532382

`A002264(3*A045065(n+1))`
-/

namespace A031469.P5298384789384532382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A045065 (n + 1)).toNat

end

end A031469.P5298384789384532382

/-! ## A031469.P3296585658678122115

`A185255(A007318(n))+A045065(n+1)`
-/

namespace A031469.P3296585658678122115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A007318 n).toNat + A045065 (n + 1)

end

end A031469.P3296585658678122115

/-! ## A031469.P11450700822954991605

`A185255(A185255(n))+A045065(n+1)`
-/

namespace A031469.P11450700822954991605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A185255 n).toNat + A045065 (n + 1)

end

end A031469.P11450700822954991605

/-! ## A031469.P10886359662167596919

`A001222(A037299(n))*A045065(n+1)`
-/

namespace A031469.P10886359662167596919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037299 n).toNat * A045065 (n + 1)

end

end A031469.P10886359662167596919

/-! ## A031469.P4421440904822926901

`A045065(n+1)^A027907(A001316(n))`
-/

namespace A031469.P4421440904822926901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045065 (n + 1) : ℚ) ^ (A027907 (A001316 n).toNat : ℤ)

end

end A031469.P4421440904822926901

/-!
# A031470: Numbers whose base-5 representation has the same number of 0's as 4's.

The programs for A031470, there is no canonical definition to state claims against.
-/

/-! ## A031470.P17566784424915972969

`eq[A055641(A007091(n)), A248640(n)]`
-/

namespace A031470.P17566784424915972969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031470.P17566784424915972969

/-! ## A031470.P7140304237457669232

`eq[A055641(A309956(n)), A248640(n)]`
-/

namespace A031470.P7140304237457669232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A309956 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031470.P7140304237457669232

/-! ## A031470.P10084762219476187196

`eq[A055641(A080228(n+1)), A248640(n)]`
-/

namespace A031470.P10084762219476187196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031470.P10084762219476187196

/-! ## A031470.P14761660942749261696

`eq[A055641(A014263(n+1)/2), A248640(n)]`
-/

namespace A031470.P14761660942749261696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031470.P14761660942749261696

/-! ## A031470.P17658154625847290236

`eq[A055641(A024657(2*n)/2), A248640(n)]`
-/

namespace A031470.P17658154625847290236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031470.P17658154625847290236

/-!
# A031471: Numbers whose base-5 representation has one more 0 than 4's.

The programs for A031471, there is no canonical definition to state claims against.
-/

/-! ## A031471.P1539225444409227309

`A118759(A045206(n+2))`
-/

namespace A031471.P1539225444409227309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A045206 (n + 2)).toNat

end

end A031471.P1539225444409227309

/-! ## A031471.P17069791049342195551

`A000194(A045206(n+2)²)`
-/

namespace A031471.P17069791049342195551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A045206 (n + 2) ^ 2).toNat

end

end A031471.P17069791049342195551

/-! ## A031471.P4555222494939033462

`A000196(A045206(n+2)²)`
-/

namespace A031471.P4555222494939033462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045206 (n + 2) ^ 2).toNat

end

end A031471.P4555222494939033462

/-! ## A031471.P12841496979981445818

`A004739(A045206(n+2)²)`
-/

namespace A031471.P12841496979981445818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A045206 (n + 2) ^ 2).toNat

end

end A031471.P12841496979981445818

/-! ## A031471.P3321742706748579102

`A000196(A045206(n+2)^2)`
-/

namespace A031471.P3321742706748579102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045206 (n + 2) ^ 2).toNat

end

end A031471.P3321742706748579102

/-!
# A031472: Numbers whose base-5 representation has 2 more 0's than 4's.

The programs for A031472, there is no canonical definition to state claims against.
-/

/-! ## A031472.P2125805390827907047

`A045210(n+1)%A034820(n)`
-/

namespace A031472.P2125805390827907047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045210 (n + 1)) (A034820 n)

end

end A031472.P2125805390827907047

/-! ## A031472.P230464526312527164

`A045210(n+1)^A185255(n)!`
-/

namespace A031472.P230464526312527164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045210 (n + 1) ^ Nat.factorial (A185255 n).toNat

end

end A031472.P230464526312527164

/-! ## A031472.P17267757532225751139

`A185255(A185255(n)²)+A045210(n+1)`
-/

namespace A031472.P17267757532225751139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A185255 n ^ 2).toNat + A045210 (n + 1)

end

end A031472.P17267757532225751139

/-! ## A031472.P12562662962192302779

`A045210(n+1)+A000007(A045213(n+1))`
-/

namespace A031472.P12562662962192302779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045210 (n + 1) + A000007 (A045213 (n + 1)).toNat

end

end A031472.P12562662962192302779

/-! ## A031472.P1328558940019239667

`A162212(A045216(n+1))+A045210(n+1)`
-/

namespace A031472.P1328558940019239667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162212 (A045216 (n + 1)).toNat + A045210 (n + 1)

end

end A031472.P1328558940019239667

/-!
# A031473: Numbers whose base-5 representation has 3 more 0's than 4's.

The programs for A031473, there is no canonical definition to state claims against.
-/

/-! ## A031473.P2942486689245956156

`A002265(4*A045214(n+1))`
-/

namespace A031473.P2942486689245956156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A045214 (n + 1)).toNat

end

end A031473.P2942486689245956156

/-! ## A031473.P17995009520986079202

`A054576(4*A045214(n+1))`
-/

namespace A031473.P17995009520986079202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (4 * A045214 (n + 1)).toNat

end

end A031473.P17995009520986079202

/-! ## A031473.P374433603823197523

`A045214(n+1)%A054738(n)`
-/

namespace A031473.P374433603823197523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045214 (n + 1)) (A054738 n)

end

end A031473.P374433603823197523

/-! ## A031473.P18101345920120268550

`A059169(4*A045214(n+1)+1)`
-/

namespace A031473.P18101345920120268550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A045214 (n + 1) + 1).toNat

end

end A031473.P18101345920120268550

/-! ## A031473.P17721538276321020121

`A008621(4*A045214(n+1)-1)`
-/

namespace A031473.P17721538276321020121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A045214 (n + 1) - 1).toNat

end

end A031473.P17721538276321020121

/-!
# A031474: Numbers whose base-5 representation has one fewer 0 than 4's.

The programs for A031474, there is no canonical definition to state claims against.
-/

/-! ## A031474.P11508475277812085103

`A118759(A045203(n+1))`
-/

namespace A031474.P11508475277812085103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A045203 (n + 1)).toNat

end

end A031474.P11508475277812085103

/-! ## A031474.P3863923898970485567

`A000188(A045203(n+1)²)`
-/

namespace A031474.P3863923898970485567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A045203 (n + 1) ^ 2).toNat

end

end A031474.P3863923898970485567

/-! ## A031474.P4901243749408890823

`A000194(A045203(n+1)²)`
-/

namespace A031474.P4901243749408890823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A045203 (n + 1) ^ 2).toNat

end

end A031474.P4901243749408890823

/-! ## A031474.P5808051043958261571

`A000196(A045203(n+1)²)`
-/

namespace A031474.P5808051043958261571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045203 (n + 1) ^ 2).toNat

end

end A031474.P5808051043958261571

/-! ## A031474.P4374118579468536721

`A122197(A045203(n+1)²)`
-/

namespace A031474.P4374118579468536721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A045203 (n + 1) ^ 2).toNat

end

end A031474.P4374118579468536721

/-!
# A031475: Numbers whose base-5 representation has 2 fewer 0's than 4's.

The programs for A031475, there is no canonical definition to state claims against.
-/

/-! ## A031475.P12352339868687981123

`A045204(n+1)+A028586(A008778(n))`
-/

namespace A031475.P12352339868687981123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045204 (n + 1) + A028586 (A008778 n).toNat

end

end A031475.P12352339868687981123

/-! ## A031475.P18139150569116071638

`A045204(n+1)+A000007(A090035(n))`
-/

namespace A031475.P18139150569116071638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045204 (n + 1) + A000007 (A090035 n).toNat

end

end A031475.P18139150569116071638

/-! ## A031475.P3037422441423310865

`A045204(n+1)+A000007(A129125(n))`
-/

namespace A031475.P3037422441423310865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045204 (n + 1) + A000007 (A129125 n).toNat

end

end A031475.P3037422441423310865

/-! ## A031475.P5001415299099141048

`A045204(n+1)*A057427(A005286(n))`
-/

namespace A031475.P5001415299099141048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045204 (n + 1) * A057427 (A005286 n).toNat

end

end A031475.P5001415299099141048

/-! ## A031475.P8848337251241224836

`A045204(n+1)%A034820(n)`
-/

namespace A031475.P8848337251241224836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045204 (n + 1)) (A034820 n)

end

end A031475.P8848337251241224836

/-!
# A031476: Numbers whose base-5 representation has 3 fewer 0's than 4's.

The programs for A031476, there is no canonical definition to state claims against.
-/

/-! ## A031476.P209685165318057288

`A002265(4*A045205(n+1))`
-/

namespace A031476.P209685165318057288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A045205 (n + 1)).toNat

end

end A031476.P209685165318057288

/-! ## A031476.P6552015879746944307

`A060819(4*A045205(n+1))`
-/

namespace A031476.P6552015879746944307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (4 * A045205 (n + 1)).toNat

end

end A031476.P6552015879746944307

/-! ## A031476.P1372446252082809906

`A110655(4*A045205(n+1))`
-/

namespace A031476.P1372446252082809906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (4 * A045205 (n + 1)).toNat

end

end A031476.P1372446252082809906

/-! ## A031476.P3542612040518080762

`A110657(4*A045205(n+1))`
-/

namespace A031476.P3542612040518080762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (4 * A045205 (n + 1)).toNat

end

end A031476.P3542612040518080762

/-! ## A031476.P10151164644639377691

`A045205(n+1)%A059666(n+1)`
-/

namespace A031476.P10151164644639377691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045205 (n + 1)) (A059666 (n + 1))

end

end A031476.P10151164644639377691

/-!
# A031477: Numbers whose base-6 representation has the same number of 0's as 5's.

The programs for A031477, there is no canonical definition to state claims against.
-/

/-! ## A031477.P9904503058974938929

`∑[A108103(A314024(n)²)]`
-/

namespace A031477.P9904503058974938929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A314024 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031477.P9904503058974938929

/-! ## A031477.P2580095334869610768

`lt[1, A010875(A281873(n+1))]`
-/

namespace A031477.P2580095334869610768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A281873 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031477.P2580095334869610768

/-! ## A031477.P16126128440466139452

`lt[A138341(n), sqrt(A138394(n+1))]`
-/

namespace A031477.P16126128440466139452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138341 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138394 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031477.P16126128440466139452

/-! ## A031477.P6154662899698248833

`eq[Δ[A185284(n)], A221150(3*n+2)]`
-/

namespace A031477.P6154662899698248833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A031477.P6154662899698248833

/-! ## A031477.P9433703957394837500

`lt[∑[A318423(n+1)], A026252(2*(n+1))]`
-/

namespace A031477.P9433703957394837500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A031477.P9433703957394837500

/-!
# A031478: Numbers whose base-6 representation has one more 0 than 5's.

The programs for A031478, there is no canonical definition to state claims against.
-/

/-! ## A031478.P11968575920272213319

`A037465(A043349(n+1)%A157184(n+1))`
-/

namespace A031478.P11968575920272213319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A043349 (n + 1)) (A157184 (n + 1))).toNat

end

end A031478.P11968575920272213319

/-! ## A031478.P3737329714538815802

`A037465(A043349(n+1))%A117528(n+5)`
-/

namespace A031478.P3737329714538815802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037465 (A043349 (n + 1)).toNat) (A117528 (n + 5))

end

end A031478.P3737329714538815802

/-! ## A031478.P6552104725466299021

`A037465(A043349(n+1))+A000007(A094103(n+1))`
-/

namespace A031478.P6552104725466299021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A043349 (n + 1)).toNat + A000007 (A094103 (n + 1)).toNat

end

end A031478.P6552104725466299021

/-! ## A031478.P7861987935710613238

`A037465(A043349(n+1))*A057427(A058367(n+1))`
-/

namespace A031478.P7861987935710613238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A043349 (n + 1)).toNat * A057427 (A058367 (n + 1)).toNat

end

end A031478.P7861987935710613238

/-! ## A031478.P1504280358953694315

`A000035(A199934(2*n+1))*A037465(A043349(n+1))`
-/

namespace A031478.P1504280358953694315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A199934 (2 * n + 1)).toNat * A037465 (A043349 (n + 1)).toNat

end

end A031478.P1504280358953694315

/-!
# A031479: Numbers whose base-6 representation has 2 more 0's than 5's.

The programs for A031479, there is no canonical definition to state claims against.
-/

/-! ## A031479.P9427507894118665475

`A043370(∑[A201637(n)!])`
-/

namespace A031479.P9427507894118665475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A201637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031479.P9427507894118665475

/-! ## A031479.P16707636872205038927

`A043370(∑{e}[A078234(n+1), #])`
-/

namespace A031479.P16707636872205038927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043370 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A031479.P16707636872205038927

/-!
# A031480: Numbers whose base-6 representation has one fewer 0 than 5's.

The programs for A031480, there is no canonical definition to state claims against.
-/

/-! ## A031480.P15922517462673936948

`A333656(lt[A073902(n+5), A316484(n+1)])`
-/

namespace A031480.P15922517462673936948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073902 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031480.P15922517462673936948

/-! ## A031480.P15068360625800895096

`∑[A324656(A354554(n))]+n`
-/

namespace A031480.P15068360625800895096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A354554 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A031480.P15068360625800895096

/-! ## A031480.P14673967894381942939

`A043389(∑[A265663(n+1)!])`
-/

namespace A031480.P14673967894381942939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031480.P14673967894381942939

/-! ## A031480.P1360399484652340782

`A333656(∑[A265663(n+1)!])`
-/

namespace A031480.P1360399484652340782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031480.P1360399484652340782

/-! ## A031480.P13044818560260438770

`∩[A043389(n+1), A055572(n)]`
-/

namespace A031480.P13044818560260438770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031480.P13044818560260438770

/-!
# A031481: Numbers whose base-6 representation has 2 fewer 0's than 5's.

The programs for A031481, there is no canonical definition to state claims against.
-/

/-! ## A031481.P10144683435256762799

`record[A043390(n+1)/A007732(A078715(n+1))]`
-/

namespace A031481.P10144683435256762799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043390 (n + 1) : ℚ) / (A007732 (A078715 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031481.P10144683435256762799

/-! ## A031481.P14833919112251952126

`A043390(∑[A265663(n+1)!])`
-/

namespace A031481.P14833919112251952126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031481.P14833919112251952126

/-! ## A031481.P15976856026870000754

`A043390(∑[A124976(2^(∑[n]%(n+1)))])`
-/

namespace A031481.P15976856026870000754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124976 (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031481.P15976856026870000754

/-! ## A031481.P4941151597565968520

`∩[A043390(n+1), A333854(n+1)]`
-/

namespace A031481.P4941151597565968520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031481.P4941151597565968520

/-!
# A031482: Numbers whose base-7 representation has the same number of 0's as 6's.

The programs for A031482, there is no canonical definition to state claims against.
-/

/-! ## A031482.P1783253854781843722

`eq[A016377(n+1), A151622(n)]`
-/

namespace A031482.P1783253854781843722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031482.P1783253854781843722

/-! ## A031482.P17217999796602726118

`A047337(n+1)+A016377(A185255(n))`
-/

namespace A031482.P17217999796602726118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1) + A016377 (A185255 n).toNat

end

end A031482.P17217999796602726118

/-! ## A031482.P14521130291298215902

`eq[A015283(n), A035039(A138999(n+1))]`
-/

namespace A031482.P14521130291298215902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (A138999 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031482.P14521130291298215902

/-! ## A031482.P2798147734486802544

`∑[or(1, A107454(3*n+5))]`
-/

namespace A031482.P2798147734486802544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A107454 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031482.P2798147734486802544

/-! ## A031482.P14207195823490735071

`and(A047369(n+1), A359085(n+1))`
-/

namespace A031482.P14207195823490735071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047369 (n + 1)) (A359085 (n + 1))

end

end A031482.P14207195823490735071

/-!
# A031483: Numbers whose base-7 representation has one more 0 than 6's.

The programs for A031483, there is no canonical definition to state claims against.
-/

/-! ## A031483.P1434828844684527578

`A020657(eq[A151713(n), A309957(n)]+1)`
-/

namespace A031483.P1434828844684527578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A031483.P1434828844684527578

/-! ## A031483.P7810036665300508728

`∩[A028779(n+1), A043393(n+1)]`
-/

namespace A031483.P7810036665300508728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031483.P7810036665300508728

/-! ## A031483.P8942739875778896594

`∩[A028779(n+1), A382413(n+1)]`
-/

namespace A031483.P8942739875778896594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031483.P8942739875778896594

/-! ## A031483.P17593973952306864045

`A043393(record[A139024(n+1)])`
-/

namespace A031483.P17593973952306864045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031483.P17593973952306864045

/-! ## A031483.P12579248610067647242

`∑[A001203(A003269(n)!)]`
-/

namespace A031483.P12579248610067647242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (Nat.factorial (A003269 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031483.P12579248610067647242

/-!
# A031484: Numbers whose base-7 representation has 2 more 0's than 6's.

The programs for A031484, there is no canonical definition to state claims against.
-/

/-! ## A031484.P3220295248779551392

`A043394(∑[A265663(n+1)!])`
-/

namespace A031484.P3220295248779551392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031484.P3220295248779551392

/-! ## A031484.P15717915299789058987

`A043394(∑[A124976(2^(∑[n]%(n+1)))])`
-/

namespace A031484.P15717915299789058987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124976 (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031484.P15717915299789058987

/-!
# A031485: Numbers whose base-7 representation has one fewer 0 than 6's.

The programs for A031485, there is no canonical definition to state claims against.
-/

/-! ## A031485.P631942190954659182

`lt[A256887(A242603(n+1)), A165412(n+1)]`
-/

namespace A031485.P631942190954659182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256887 (A242603 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031485.P631942190954659182

/-! ## A031485.P2192231034643214089

`A337141(A037474(n+1)%A095785(3*n+4))`
-/

namespace A031485.P2192231034643214089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (Int.tmod (A037474 (n + 1)) (A095785 (3 * n + 4))).toNat

end

end A031485.P2192231034643214089

/-! ## A031485.P7386866591614154844

`A316945(A044892(n+1)+9)`
-/

namespace A031485.P7386866591614154844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A044892 (n + 1) + 9).toNat

end

end A031485.P7386866591614154844

/-! ## A031485.P3012359214243312076

`∑[A014963(A267408(n+1)+6)]-1`
-/

namespace A031485.P3012359214243312076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A267408 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A031485.P3012359214243312076

/-! ## A031485.P7615845826491584425

`A337141(n+1)+A000035(A242523(n+1))`
-/

namespace A031485.P7615845826491584425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1) + A000035 (A242523 (n + 1)).toNat

end

end A031485.P7615845826491584425

/-!
# A031486: Numbers whose base-7 representation has 2 fewer 0's than 6's.

The programs for A031486, there is no canonical definition to state claims against.
-/

/-! ## A031486.P6106535967463302291

`A043418(A293900(ceil(2^(n-1))+1)+n)`
-/

namespace A031486.P6106535967463302291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043418 (A293900 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1).toNat + (n : ℤ)).toNat

end

end A031486.P6106535967463302291

/-! ## A031486.P17370906862459108532

`A043418(A037474(n+1))+A014744(A014727(2*n))`
-/

namespace A031486.P17370906862459108532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043418 (A037474 (n + 1)).toNat + A014744 (A014727 (2 * n)).toNat

end

end A031486.P17370906862459108532

/-! ## A031486.P17459066162052143375

`A043418(A037474(n+1))+A014744(A014725(2*n+1))`
-/

namespace A031486.P17459066162052143375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043418 (A037474 (n + 1)).toNat + A014744 (A014725 (2 * n + 1)).toNat

end

end A031486.P17459066162052143375

/-! ## A031486.P9602608630746614773

`A010051(A067756(2*n+1))*A043418(A037474(n+1))`
-/

namespace A031486.P9602608630746614773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A067756 (2 * n + 1)).toNat * A043418 (A037474 (n + 1)).toNat

end

end A031486.P9602608630746614773

/-!
# A031487: Numbers whose base-8 representation has the same number of 0's as 7's.

The programs for A031487, there is no canonical definition to state claims against.
-/

/-! ## A031487.P13333746701518345429

`lt[A170837(A170840(n+4)), A170847(n)]`
-/

namespace A031487.P13333746701518345429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (A170840 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031487.P13333746701518345429

/-! ## A031487.P9888122786720982878

`lt[A065363(A367764(n+1)), A090281(n+1)]`
-/

namespace A031487.P9888122786720982878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A367764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031487.P9888122786720982878

/-! ## A031487.P13685383136050230077

`A047602(n+1)+A054353(A076303(n+1))%2`
-/

namespace A031487.P13685383136050230077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047602 (n + 1) + Int.tmod (A054353 (A076303 (n + 1)).toNat) 2

end

end A031487.P13685383136050230077

/-!
# A031488: Numbers whose base-8 representation has one more 0 than 7's.

The programs for A031488, there is no canonical definition to state claims against.
-/

/-! ## A031488.P13858377427947431238

`A271910(C(n, 2)+1)+A037474(A043393(n+1))`
-/

namespace A031488.P13858377427947431238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (Nat.choose n 2 + 1) + A037474 (A043393 (n + 1)).toNat

end

end A031488.P13858377427947431238

/-! ## A031488.P16404956598252825635

`A271910(A161680(n)+1)+A037474(A043393(n+1))`
-/

namespace A031488.P16404956598252825635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A161680 n + 1).toNat + A037474 (A043393 (n + 1)).toNat

end

end A031488.P16404956598252825635

/-! ## A031488.P13774042173627667913

`A271910(∑[n+1])+A037474(A043393(n+1))`
-/

namespace A031488.P13774042173627667913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (∑ j ∈ Finset.range (n + 1), f1 j) + A037474 (A043393 (n + 1)).toNat

end

end A031488.P13774042173627667913

/-! ## A031488.P13624148917722261458

`A037474(A043393(n+1))%A246913(A004767(n))`
-/

namespace A031488.P13624148917722261458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043393 (n + 1)).toNat) (A246913 (A004767 n).toNat)

end

end A031488.P13624148917722261458

/-! ## A031488.P1968904810105281415

`A011614(A029640(n+1))²*A037474(A043393(n+1))`
-/

namespace A031488.P1968904810105281415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011614 (A029640 (n + 1)).toNat ^ 2 * A037474 (A043393 (n + 1)).toNat

end

end A031488.P1968904810105281415

/-! ## A031488.P15249465201613503882

`lcm(A011614(A029640(n+2)), A037474(A043393(n+1)))`
-/

namespace A031488.P15249465201613503882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011614 (A029640 (n + 2)).toNat) (A037474 (A043393 (n + 1)).toNat)

end

end A031488.P15249465201613503882

/-! ## A031488.P1319980620355744910

`A037474(A043393(n+1))*A133790(A086005(n+1))`
-/

namespace A031488.P1319980620355744910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043393 (n + 1)).toNat * A133790 (A086005 (n + 1)).toNat

end

end A031488.P1319980620355744910

/-! ## A031488.P10748034599131107661

`A037474(A043393(n+1))/A133790(A086005(n+1)+1)`
-/

namespace A031488.P10748034599131107661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037474 (A043393 (n + 1)).toNat : ℚ) / (A133790 (A086005 (n + 1) + 1).toNat : ℚ)

end

end A031488.P10748034599131107661

/-! ## A031488.P3089798636550302862

`A037474(A043393(n+1))+A000038(A000132(n))`
-/

namespace A031488.P3089798636550302862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043393 (n + 1)).toNat + A000038 (A000132 n).toNat

end

end A031488.P3089798636550302862

/-!
# A031489: Numbers whose base-8 representation has 2 more 0's than 7's.

The programs for A031489, there is no canonical definition to state claims against.
-/

/-! ## A031489.P5045562398317381331

`∩[A043422(n+1), A140117(n+1)]`
-/

namespace A031489.P5045562398317381331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031489.P5045562398317381331

/-! ## A031489.P6035851296130800341

`A043422(∑[A063698(n)!])`
-/

namespace A031489.P6035851296130800341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A063698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031489.P6035851296130800341

/-! ## A031489.P9373073665025160354

`A043422(A037474(n+1)^A136400(n))`
-/

namespace A031489.P9373073665025160354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043422 (SequenceMachineLib.roundAway ((A037474 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A031489.P9373073665025160354

/-! ## A031489.P2303373711323605044

`A037474(A043394(n+1)^A213217(n))`
-/

namespace A031489.P2303373711323605044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043394 (n + 1) : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A031489.P2303373711323605044

/-!
# A031490: Numbers whose base-8 representation has one fewer 0 than 7's.

The programs for A031490, there is no canonical definition to state claims against.
-/

/-! ## A031490.P16282138123444229752

`record[A117358(A039335(n+1))]`
-/

namespace A031490.P16282138123444229752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A039335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031490.P16282138123444229752

/-! ## A031490.P205578726898483953

`filter[A043449(n+1), A395285(#)]`
-/

namespace A031490.P205578726898483953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395285 (f1 j).toNat = 1) n)

end

end A031490.P205578726898483953

/-! ## A031490.P5656904792862108656

`record[gcd(A198317(n), A337239(n+1))]`
-/

namespace A031490.P5656904792862108656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198317 n) (A337239 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031490.P5656904792862108656

/-! ## A031490.P4337149842759133740

`∩[A043449(n+1), A249407(n+1)]`
-/

namespace A031490.P4337149842759133740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031490.P4337149842759133740

/-! ## A031490.P14463814471225311227

`lt[A109168(n+4), A153679(A109168(n+1))]`
-/

namespace A031490.P14463814471225311227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A109168 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031490.P14463814471225311227

/-!
# A031491: Numbers whose base-8 representation has 2 fewer 0's than 7's.

The programs for A031491, there is no canonical definition to state claims against.
-/

/-! ## A031491.P9685489464333913149

`A017077(eq[A044938(n+1), A294335(n)]+1)-2`
-/

namespace A031491.P9685489464333913149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 2

end

end A031491.P9685489464333913149

/-! ## A031491.P88000525093344584

`A043450(A033948(n+1)^A136400(n))`
-/

namespace A031491.P88000525093344584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043450 (SequenceMachineLib.roundAway ((A033948 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A031491.P88000525093344584

/-! ## A031491.P18325681547128476537

`A043450(A136400(n)!*A033948(n+1))`
-/

namespace A031491.P18325681547128476537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043450 ((Nat.factorial (A136400 n).toNat : ℤ) * A033948 (n + 1)).toNat

end

end A031491.P18325681547128476537

/-!
# A031492: Numbers whose base-9 representation has the same number of 0's as 8's.

The programs for A031492, there is no canonical definition to state claims against.
-/

/-! ## A031492.P2718377147092348904

`record[n-2%dr(n+1)]%A334488(n+1)+1`
-/

namespace A031492.P2718377147092348904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A334488 (n + 1)) + 1

end

end A031492.P2718377147092348904

/-! ## A031492.P1324034184502143706

`lt[1, A113018(A001844(n))]`
-/

namespace A031492.P1324034184502143706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113018 (A001844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031492.P1324034184502143706

/-! ## A031492.P8353693773966679404

`∑[A000045((2-Δ[A032972(n+1)])²)]`
-/

namespace A031492.P8353693773966679404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 - (f2 (n + 1) - f2 n)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031492.P8353693773966679404

/-! ## A031492.P5761137060757210836

`lt[A305936(n+1), A010888(A001844(n))]`
-/

namespace A031492.P5761137060757210836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A001844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031492.P5761137060757210836

/-! ## A031492.P4138128597946704808

`lt[A316439(n+1), A010888(A001844(n))]`
-/

namespace A031492.P4138128597946704808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A001844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031492.P4138128597946704808

/-!
# A031493: Numbers whose base-9 representation has one more 0 than 8's.

The programs for A031493, there is no canonical definition to state claims against.
-/

/-! ## A031493.P14562467936432638633

`A037477(A043421(n+1))%A280080(2*(n+2))`
-/

namespace A031493.P14562467936432638633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A043421 (n + 1)).toNat) (A280080 (2 * (n + 2)))

end

end A031493.P14562467936432638633

/-! ## A031493.P15840939901770540304

`∩[A043453(n+1), A364058(n+1)]`
-/

namespace A031493.P15840939901770540304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031493.P15840939901770540304

/-! ## A031493.P8721203412060454983

`A037477(A043421(n+1)^A136400(n+1))`
-/

namespace A031493.P8721203412060454983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043421 (n + 1) : ℚ) ^ (A136400 (n + 1) : ℤ))).toNat

end

end A031493.P8721203412060454983

/-!
# A031494: Numbers whose base-9 representation has 2 more 0's than 8's.

The programs for A031494, there is no canonical definition to state claims against.
-/

/-! ## A031494.P16539660473498332995

`A043454(A078129(n+1)%A048367(n+1))`
-/

namespace A031494.P16539660473498332995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043454 (Int.tmod (A078129 (n + 1)) (A048367 (n + 1))).toNat

end

end A031494.P16539660473498332995

/-! ## A031494.P14913338932513233847

`A043454(A078129(n+1))%A308574(n+1)`
-/

namespace A031494.P14913338932513233847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043454 (A078129 (n + 1)).toNat) (A308574 (n + 1))

end

end A031494.P14913338932513233847

/-! ## A031494.P14626329547844064857

`A037477(A043422(n+1)^A117358(n+1))`
-/

namespace A031494.P14626329547844064857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043422 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A031494.P14626329547844064857

/-! ## A031494.P8606269378961879866

`A037477(C(A043422(n+1), A117358(n+1)))`
-/

namespace A031494.P8606269378961879866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043422 (n + 1)).toNat (A117358 (n + 1)).toNat)

end

end A031494.P8606269378961879866

/-! ## A031494.P4160223695842048868

`A037477(A043422(n+1)*A213217(n))`
-/

namespace A031494.P4160223695842048868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043422 (n + 1) * A213217 n).toNat

end

end A031494.P4160223695842048868

/-!
# A031495: Numbers whose base-9 representation has one fewer 0 than 8's.

The programs for A031495, there is no canonical definition to state claims against.
-/

/-! ## A031495.P8435331594348340345

`A338090(A343107(n+1)%A122235(n+3))`
-/

namespace A031495.P8435331594348340345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (Int.tmod (A343107 (n + 1)) (A122235 (n + 3))).toNat

end

end A031495.P8435331594348340345

/-! ## A031495.P15183732450479830135

`A338090(A343107(n+1))%A042983(n+1)`
-/

namespace A031495.P15183732450479830135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338090 (A343107 (n + 1)).toNat) (A042983 (n + 1))

end

end A031495.P15183732450479830135

/-! ## A031495.P8417774253917859682

`∩[A028797(n+1), A043485(n+1)]`
-/

namespace A031495.P8417774253917859682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031495.P8417774253917859682

/-! ## A031495.P2486019118343098891

`∩[A043485(n+1), A096997(n+1)]`
-/

namespace A031495.P2486019118343098891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031495.P2486019118343098891

/-! ## A031495.P16156624124511899727

`∩[A043485(n+1), A132329(n+1)]`
-/

namespace A031495.P16156624124511899727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031495.P16156624124511899727

/-!
# A031496: Numbers whose base-9 representation has 2 fewer 0's than 8's.

The programs for A031496, there is no canonical definition to state claims against.
-/

/-! ## A031496.P14825111023718977666

`A043486(∑[A279061(A087394(n+3))])`
-/

namespace A031496.P14825111023718977666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A087394 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031496.P14825111023718977666

/-! ## A031496.P2594533902547597433

`A233583(9*A044894(n+1))`
-/

namespace A031496.P2594533902547597433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (9 * A044894 (n + 1)).toNat

end

end A031496.P2594533902547597433

/-! ## A031496.P17489424515818687951

`A189670(3*(A031495(n+1)+A000120(2^n)))`
-/

namespace A031496.P17489424515818687951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (3 * (A031495 (n + 1) + A000120 (2 ^ n))).toNat

end

end A031496.P17489424515818687951

/-! ## A031496.P4242709271912196237

`(A033999(A183977(n+1))+A031495(n+1))/(1/3)²-1`
-/

namespace A031496.P4242709271912196237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (A183977 (n + 1)).toNat + A031495 (n + 1) : ℚ) / ((1 : ℚ) / 3) ^ 2 - 1

end

end A031496.P4242709271912196237

/-! ## A031496.P10571579835456606039

`∩[A043486(n+1), A277725(n+1)]`
-/

namespace A031496.P10571579835456606039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031496.P10571579835456606039

/-!
# A031497: Numbers whose base-10 representation has one more 0 than 9's.

The programs for A031497, the canonical program `A031497.P1152109054829542898` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031497 has offset 1).

The definition of A031497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031497.P413410999216617196

`A007095(A043453(n+1))/A002828((n+6)²)`
-/

namespace A031497.P413410999216617196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A043453 (n + 1)).toNat : ℚ) / (A002828 ((n + 6) ^ 2) : ℚ)

end

end A031497.P413410999216617196

namespace A031497

/-- `A007095(A043453(n+1))/A002828((n+6)²)` -/
def P413410999216617196.Spec : Prop :=
  ∀ n, P413410999216617196.a n = (A031497 (n + 1) : ℚ)

end A031497

/-! ## A031497.P1152109054829542898

`A007095(A043453(n+1))%A155085((n+6)²)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A031497

/-- `A007095(A043453(n+1))%A155085((n+6)²)` -/
def P1152109054829542898.Spec : Prop :=
  ∀ n, P1152109054829542898.a n = A031497 (n + 1)

theorem P1152109054829542898.correct : P1152109054829542898.Spec := by
  intro n
  simp only [A031497, Nat.add_sub_cancel]

end A031497

/-! ## A031497.P13472370009827684959

`A007095(A043453(n+1))/A001222(A020482((n+6)²))`
-/

namespace A031497.P13472370009827684959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A043453 (n + 1)).toNat : ℚ) / (A001222 (A020482 ((n + 6) ^ 2)).toNat : ℚ)

end

end A031497.P13472370009827684959

namespace A031497

/-- `A007095(A043453(n+1))/A001222(A020482((n+6)²))` -/
def P13472370009827684959.Spec : Prop :=
  ∀ n, P13472370009827684959.a n = (A031497 (n + 1) : ℚ)

end A031497

/-! ## A031497.P14024506776592009310

`A007095(A043453(n+1))-A010054(A000124(n+8))`
-/

namespace A031497.P14024506776592009310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043453 (n + 1)).toNat - A010054 (A000124 (n + 8)).toNat

end

end A031497.P14024506776592009310

namespace A031497

/-- `A007095(A043453(n+1))-A010054(A000124(n+8))` -/
def P14024506776592009310.Spec : Prop :=
  ∀ n, P14024506776592009310.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P4403816034017671496

`A007095(A043453(n+1)%A345798(n+1))`
-/

namespace A031497.P4403816034017671496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043453 (n + 1)) (A345798 (n + 1))).toNat

end

end A031497.P4403816034017671496

namespace A031497

/-- `A007095(A043453(n+1)%A345798(n+1))` -/
def P4403816034017671496.Spec : Prop :=
  ∀ n, P4403816034017671496.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P4367599974074128163

`A134452(A028326(n))+A007095(A043453(n+1))`
-/

namespace A031497.P4367599974074128163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A028326 n).toNat + A007095 (A043453 (n + 1)).toNat

end

end A031497.P4367599974074128163

namespace A031497

/-- `A134452(A028326(n))+A007095(A043453(n+1))` -/
def P4367599974074128163.Spec : Prop :=
  ∀ n, P4367599974074128163.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P9499526067322250330

`A007095(A043453(n+1))*A097706(A059268(n))`
-/

namespace A031497.P9499526067322250330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043453 (n + 1)).toNat * A097706 (A059268 n).toNat

end

end A031497.P9499526067322250330

namespace A031497

/-- `A007095(A043453(n+1))*A097706(A059268(n))` -/
def P9499526067322250330.Spec : Prop :=
  ∀ n, P9499526067322250330.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P7043645657232581378

`A007095(A043453(n+1))*A140670(A328575(n))`
-/

namespace A031497.P7043645657232581378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043453 (n + 1)).toNat * A140670 (A328575 n).toNat

end

end A031497.P7043645657232581378

namespace A031497

/-- `A007095(A043453(n+1))*A140670(A328575(n))` -/
def P7043645657232581378.Spec : Prop :=
  ∀ n, P7043645657232581378.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P15574790200461223803

`A134452(A159793(n))+A007095(A043453(n+1))`
-/

namespace A031497.P15574790200461223803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A159793 n).toNat + A007095 (A043453 (n + 1)).toNat

end

end A031497.P15574790200461223803

namespace A031497

/-- `A134452(A159793(n))+A007095(A043453(n+1))` -/
def P15574790200461223803.Spec : Prop :=
  ∀ n, P15574790200461223803.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P6511431070429001100

`A007095(A043453(n+1))%A237703(n+1)`
-/

namespace A031497.P6511431070429001100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043453 (n + 1)).toNat) (A237703 (n + 1))

end

end A031497.P6511431070429001100

namespace A031497

/-- `A007095(A043453(n+1))%A237703(n+1)` -/
def P6511431070429001100.Spec : Prop :=
  ∀ n, P6511431070429001100.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P8853337901330593282

`A007095(A043453(n+1))*A325566(A158350(n+1))`
-/

namespace A031497.P8853337901330593282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043453 (n + 1)).toNat * A325566 (A158350 (n + 1)).toNat

end

end A031497.P8853337901330593282

namespace A031497

/-- `A007095(A043453(n+1))*A325566(A158350(n+1))` -/
def P8853337901330593282.Spec : Prop :=
  ∀ n, P8853337901330593282.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P16121535792841720710

`ceil(A007095(A043453(n+1))-A175402(n)/(n+1))`
-/

namespace A031497.P16121535792841720710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007095 (A043453 (n + 1)).toNat : ℚ) - (A175402 n : ℚ) / (n + 1 : ℚ)⌉

end

end A031497.P16121535792841720710

namespace A031497

/-- `ceil(A007095(A043453(n+1))-A175402(n)/(n+1))` -/
def P16121535792841720710.Spec : Prop :=
  ∀ n, P16121535792841720710.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P6334621019196987771

`A007095(A164660(n)²*A043453(n+1))`
-/

namespace A031497.P6334621019196987771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A164660 n ^ 2 * A043453 (n + 1)).toNat

end

end A031497.P6334621019196987771

namespace A031497

/-- `A007095(A164660(n)²*A043453(n+1))` -/
def P6334621019196987771.Spec : Prop :=
  ∀ n, P6334621019196987771.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P2743151463452078427

`A007095(A043453(n+1)/A164660(n)²)`
-/

namespace A031497.P2743151463452078427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043453 (n + 1) : ℚ) / (A164660 n ^ 2 : ℚ))).toNat

end

end A031497.P2743151463452078427

namespace A031497

/-- `A007095(A043453(n+1)/A164660(n)²)` -/
def P2743151463452078427.Spec : Prop :=
  ∀ n, P2743151463452078427.a n = A031497 (n + 1)

end A031497

/-! ## A031497.P10970322707352242924

`A007095(A043453(n+1)*A164660(n)*A164660(n))`
-/

namespace A031497.P10970322707352242924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043453 (n + 1) * A164660 n * A164660 n).toNat

end

end A031497.P10970322707352242924

namespace A031497

/-- `A007095(A043453(n+1)*A164660(n)*A164660(n))` -/
def P10970322707352242924.Spec : Prop :=
  ∀ n, P10970322707352242924.a n = A031497 (n + 1)

end A031497

/-!
# A031498: Numbers whose base-10 representation has 2 more 0's than 9's.

The programs for A031498, the canonical program `A031498.P8103621898576385170` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031498 has offset 1).

The definition of A031498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031498.P16261308863120563181

`A007814(A051635(3*(n+1)))+A007095(A043454(n+1))`
-/

namespace A031498.P16261308863120563181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051635 (3 * (n + 1))).toNat + A007095 (A043454 (n + 1)).toNat

end

end A031498.P16261308863120563181

namespace A031498

/-- `A007814(A051635(3*(n+1)))+A007095(A043454(n+1))` -/
def P16261308863120563181.Spec : Prop :=
  ∀ n, P16261308863120563181.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P8103621898576385170

`A007095(A043454(n+1))*A007913(A062503(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031498

/-- `A007095(A043454(n+1))*A007913(A062503(n+1))` -/
def P8103621898576385170.Spec : Prop :=
  ∀ n, P8103621898576385170.a n = A031498 (n + 1)

theorem P8103621898576385170.correct : P8103621898576385170.Spec := by
  intro n
  simp only [A031498, Nat.add_sub_cancel]

end A031498

/-! ## A031498.P17711923591950421369

`A007095(A043454(n+1))*A107286(A185069(n+1))`
-/

namespace A031498.P17711923591950421369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat * A107286 (A185069 (n + 1)).toNat

end

end A031498.P17711923591950421369

namespace A031498

/-- `A007095(A043454(n+1))*A107286(A185069(n+1))` -/
def P17711923591950421369.Spec : Prop :=
  ∀ n, P17711923591950421369.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P13001864875992394333

`A007095(A043454(n+1))/A112049(n²+1)`
-/

namespace A031498.P13001864875992394333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A043454 (n + 1)).toNat : ℚ) / (A112049 (n ^ 2 + 1) : ℚ)

end

end A031498.P13001864875992394333

namespace A031498

/-- `A007095(A043454(n+1))/A112049(n²+1)` -/
def P13001864875992394333.Spec : Prop :=
  ∀ n, P13001864875992394333.a n = (A031498 (n + 1) : ℚ)

end A031498

/-! ## A031498.P12061494809711197346

`A007095(A043454(n+1)%A235107(n+1))`
-/

namespace A031498.P12061494809711197346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043454 (n + 1)) (A235107 (n + 1))).toNat

end

end A031498.P12061494809711197346

namespace A031498

/-- `A007095(A043454(n+1)%A235107(n+1))` -/
def P12061494809711197346.Spec : Prop :=
  ∀ n, P12061494809711197346.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P12922432987670259522

`A007095(A043454(n+1))+A000007(A047130(n))`
-/

namespace A031498.P12922432987670259522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat + A000007 (A047130 n).toNat

end

end A031498.P12922432987670259522

namespace A031498

/-- `A007095(A043454(n+1))+A000007(A047130(n))` -/
def P12922432987670259522.Spec : Prop :=
  ∀ n, P12922432987670259522.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P17887581281216874974

`-(A007095(A043454(n+1))/A033999(A014963(61*n+47)))`
-/

namespace A031498.P17887581281216874974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A007095 (A043454 (n + 1)).toNat : ℚ) / (A033999 (A014963 (61 * n + 47)).toNat : ℚ))

end

end A031498.P17887581281216874974

namespace A031498

/-- `-(A007095(A043454(n+1))/A033999(A014963(61*n+47)))` -/
def P17887581281216874974.Spec : Prop :=
  ∀ n, P17887581281216874974.a n = (A031498 (n + 1) : ℚ)

end A031498

/-! ## A031498.P3357355580975314754

`and(A007095(A043454(n+1)), A290683(2*(n+4)))`
-/

namespace A031498.P3357355580975314754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007095 (A043454 (n + 1)).toNat) (A290683 (2 * (n + 4)))

end

end A031498.P3357355580975314754

namespace A031498

/-- `and(A007095(A043454(n+1)), A290683(2*(n+4)))` -/
def P3357355580975314754.Spec : Prop :=
  ∀ n, P3357355580975314754.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P14936802997751745342

`A007095(A043454(n+1))+A000007(A047140(n))`
-/

namespace A031498.P14936802997751745342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat + A000007 (A047140 n).toNat

end

end A031498.P14936802997751745342

namespace A031498

/-- `A007095(A043454(n+1))+A000007(A047140(n))` -/
def P14936802997751745342.Spec : Prop :=
  ∀ n, P14936802997751745342.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P5411967852849698803

`A007095(A043454(n+1))+A000007(A047110(n))`
-/

namespace A031498.P5411967852849698803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat + A000007 (A047110 n).toNat

end

end A031498.P5411967852849698803

namespace A031498

/-- `A007095(A043454(n+1))+A000007(A047110(n))` -/
def P5411967852849698803.Spec : Prop :=
  ∀ n, P5411967852849698803.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P10459872750577113046

`A007095(A043454(n+1))+A000007(A023896(n+1))`
-/

namespace A031498.P10459872750577113046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat + A000007 (A023896 (n + 1)).toNat

end

end A031498.P10459872750577113046

namespace A031498

/-- `A007095(A043454(n+1))+A000007(A023896(n+1))` -/
def P10459872750577113046.Spec : Prop :=
  ∀ n, P10459872750577113046.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P18224624942905186101

`A007095(A043454(n+1))*A007318(∑[n])`
-/

namespace A031498.P18224624942905186101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031498.P18224624942905186101

namespace A031498

/-- `A007095(A043454(n+1))*A007318(∑[n])` -/
def P18224624942905186101.Spec : Prop :=
  ∀ n, P18224624942905186101.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P13569287186663651658

`A007095(A043454(n+1)/A007318(∑[n]))`
-/

namespace A031498.P13569287186663651658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043454 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A031498.P13569287186663651658

namespace A031498

/-- `A007095(A043454(n+1)/A007318(∑[n]))` -/
def P13569287186663651658.Spec : Prop :=
  ∀ n, P13569287186663651658.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P12584670598844555382

`A082784(A238531(n))+A007095(A043454(n+1))`
-/

namespace A031498.P12584670598844555382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A238531 n).toNat + A007095 (A043454 (n + 1)).toNat

end

end A031498.P12584670598844555382

namespace A031498

/-- `A082784(A238531(n))+A007095(A043454(n+1))` -/
def P12584670598844555382.Spec : Prop :=
  ∀ n, P12584670598844555382.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P14665625797683940101

`A007095(A043454(n+1))+A000007(∑[n+5])`
-/

namespace A031498.P14665625797683940101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat + A000007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031498.P14665625797683940101

namespace A031498

/-- `A007095(A043454(n+1))+A000007(∑[n+5])` -/
def P14665625797683940101.Spec : Prop :=
  ∀ n, P14665625797683940101.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P10157961614393295773

`A143645(∑[n+5])+A007095(A043454(n+1))`
-/

namespace A031498.P10157961614393295773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 (∑ j ∈ Finset.range (n + 1), f1 j) + A007095 (A043454 (n + 1)).toNat

end

end A031498.P10157961614393295773

namespace A031498

/-- `A143645(∑[n+5])+A007095(A043454(n+1))` -/
def P10157961614393295773.Spec : Prop :=
  ∀ n, P10157961614393295773.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P2297314196378232497

`A007095(A043454(n+1))*A007913(A263095(n+1))`
-/

namespace A031498.P2297314196378232497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat * A007913 (A263095 (n + 1)).toNat

end

end A031498.P2297314196378232497

namespace A031498

/-- `A007095(A043454(n+1))*A007913(A263095(n+1))` -/
def P2297314196378232497.Spec : Prop :=
  ∀ n, P2297314196378232497.a n = A031498 (n + 1)

end A031498

/-! ## A031498.P11848564614461886028

`A007095(A043454(n+1))*A009001(A046092(n))`
-/

namespace A031498.P11848564614461886028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat * A009001 (A046092 n).toNat

end

end A031498.P11848564614461886028

namespace A031498

/-- `A007095(A043454(n+1))*A009001(A046092(n))` -/
def P11848564614461886028.Spec : Prop :=
  ∀ n, P11848564614461886028.a n = A031498 (n + 1)

end A031498

/-!
# A031499: Numbers whose base-10 representation has one fewer 0 than 9's.

The programs for A031499, there is no canonical definition to state claims against.
-/

/-! ## A031499.P4979488866057547877

`eq[A207693(n+1)^A055641(n), A102683(n)]`
-/

namespace A031499.P4979488866057547877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207693 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031499.P4979488866057547877

/-! ## A031499.P147823402498022961

`eq[A207960(n+1)^A055641(n), A102683(n)]`
-/

namespace A031499.P147823402498022961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207960 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031499.P147823402498022961

/-! ## A031499.P2420050402971186602

`eq[A208164(n+1)^A055641(n), A102683(n)]`
-/

namespace A031499.P2420050402971186602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208164 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031499.P2420050402971186602

/-! ## A031499.P11855973408462071206

`eq[A207242(n+1)^A055641(n), A102683(n)]`
-/

namespace A031499.P11855973408462071206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207242 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031499.P11855973408462071206

/-! ## A031499.P8326797408633187854

`eq[A207500(n+1)^A055641(n), A102683(n)]`
-/

namespace A031499.P8326797408633187854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207500 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A031499.P8326797408633187854

