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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
# A288100: Number of solutions to x^5 + y^5 = z^5 mod n.

The programs for A288100, there is no canonical definition to state claims against.
-/

/-! ## A288100.P4843024915675688686

`A288102(A062399(n+1))`
-/

namespace A288100.P4843024915675688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (A062399 (n + 1)).toNat

end

end A288100.P4843024915675688686

/-! ## A288100.P9224439136069260433

`A288102(A087051(n)+1)`
-/

namespace A288100.P9224439136069260433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (A087051 n + 1).toNat

end

end A288100.P9224439136069260433

/-! ## A288100.P11098315777455709679

`A288102(A120126(n+1))`
-/

namespace A288100.P11098315777455709679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (A120126 (n + 1)).toNat

end

end A288100.P11098315777455709679

/-! ## A288100.P5061726212626919653

`A288102(A351870(n+1))`
-/

namespace A288100.P5061726212626919653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (A351870 (n + 1)).toNat

end

end A288100.P5061726212626919653

/-! ## A288100.P14387320622558617190

`A288102(n+1)+A185213(A100100(n))`
-/

namespace A288100.P14387320622558617190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (n + 1) + A185213 (A100100 n).toNat

end

end A288100.P14387320622558617190

/-!
# A288105: Number of solutions to x^10 + y^10 = z^10 mod n.

The programs for A288105, there is no canonical definition to state claims against.
-/

/-! ## A288105.P1482556744353422681

`A050873(A007837(n))*A062775(n+1)`
-/

namespace A288105.P1482556744353422681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A007837 n).toNat * A062775 (n + 1)

end

end A288105.P1482556744353422681

/-! ## A288105.P7374398233132290956

`A051194(A148197(n))*A062775(n+1)`
-/

namespace A288105.P7374398233132290956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A148197 n).toNat * A062775 (n + 1)

end

end A288105.P7374398233132290956

/-! ## A288105.P13076321490710165707

`A031280(A293734(n))*A062775(n+1)`
-/

namespace A288105.P13076321490710165707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031280 (A293734 n).toNat * A062775 (n + 1)

end

end A288105.P13076321490710165707

/-! ## A288105.P17773501293787697153

`A062775(n+1)*A341969(A091965(n))`
-/

namespace A288105.P17773501293787697153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062775 (n + 1) * A341969 (A091965 n).toNat

end

end A288105.P17773501293787697153

/-! ## A288105.P2440396087207860640

`A062775(n+1)*A290105(A225588(n))`
-/

namespace A288105.P2440396087207860640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062775 (n + 1) * A290105 (A225588 n).toNat

end

end A288105.P2440396087207860640

/-!
# A288106: Fixed point of the mapping 00->0010, 1->00, starting with 00.

The programs for A288106, there is no canonical definition to state claims against.
-/

/-! ## A288106.P12324441469725337966

`char[A287184(n+1)-1]`
-/

namespace A288106.P12324441469725337966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287184 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288106.P12324441469725337966

/-! ## A288106.P2100018188017484583

`char[comp[A287183(n+1)-1]]`
-/

namespace A288106.P2100018188017484583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288106.P2100018188017484583

/-! ## A288106.P9285301013468761476

`1-char[A287183(xor(1, n)+1)-1]`
-/

namespace A288106.P9285301013468761476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288106.P9285301013468761476

/-! ## A288106.P17686033225206130421

`1-char[A287183(floor(n/3)+1)-1]`
-/

namespace A288106.P17686033225206130421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 (⌊(n : ℚ) / 3⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288106.P17686033225206130421

/-! ## A288106.P13419629523249593351

`char[A023443(A287184(n+1))]`
-/

namespace A288106.P13419629523249593351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A287184 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288106.P13419629523249593351

/-! ## A288106.P1883138499872102048

`char[abs(A287184(A065033(n))-1)]`
-/

namespace A288106.P1883138499872102048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287184 (A065033 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288106.P1883138499872102048

/-! ## A288106.P12969256133186979720

`char[abs(A287184(A152271(n))-1)]`
-/

namespace A288106.P12969256133186979720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287184 (A152271 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288106.P12969256133186979720

/-! ## A288106.P13185871708807134265

`char[A023443(comp[A287183(n+1)])]`
-/

namespace A288106.P13185871708807134265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287183 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288106.P13185871708807134265

/-! ## A288106.P13535788139243588956

`A003415(Δ[char[A287184(n+1)]]+1)`
-/

namespace A288106.P13535788139243588956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288106.P13535788139243588956

/-! ## A288106.P2322610798528726015

`A032741(Δ[char[A287184(n+1)]]+1)`
-/

namespace A288106.P2322610798528726015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288106.P2322610798528726015

/-!
# A288107: Numbers k such that p = prime(k) + prime(k+1) + prime(k+2), q = p + prime(k+3) + prime(k+4) and r = q + prime(k+5) + prime(k+6) are all prime.

The programs for A288107, there is no canonical definition to state claims against.
-/

/-! ## A288107.P5865135820152511422

`A000720(A370139(n+1))`
-/

namespace A288107.P5865135820152511422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370139 (n + 1)).toNat

end

end A288107.P5865135820152511422

/-! ## A288107.P515618603894403687

`A061395(A370139(n+1)%A005935(n+1))`
-/

namespace A288107.P515618603894403687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A370139 (n + 1)) (A005935 (n + 1))).toNat

end

end A288107.P515618603894403687

/-! ## A288107.P4694756272699667724

`A061395(A370139(n+1))%A112796(n+1)`
-/

namespace A288107.P4694756272699667724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A370139 (n + 1)).toNat) (A112796 (n + 1))

end

end A288107.P4694756272699667724

/-! ## A288107.P2732347790792585895

`A061395(2*A370139(n+1))`
-/

namespace A288107.P2732347790792585895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A370139 (n + 1)).toNat

end

end A288107.P2732347790792585895

/-! ## A288107.P164406088139607669

`A061395(lcm(2, A370139(n+1)))`
-/

namespace A288107.P164406088139607669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A370139 (n + 1)))

end

end A288107.P164406088139607669

/-!
# A288108: Number T(n,k) of Dyck paths of semilength n such that each level has exactly k peaks or no peaks; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A288108, there is no canonical definition to state claims against.
-/

/-! ## A288108.P6576702153186928073

`A287822(n)-A151755(A176420(n))`
-/

namespace A288108.P6576702153186928073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 n - A151755 (A176420 n).toNat

end

end A288108.P6576702153186928073

/-! ## A288108.P766932931684338559

`A287822(n)%A329534(A004767(n))`
-/

namespace A288108.P766932931684338559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287822 n) (A329534 (A004767 n).toNat)

end

end A288108.P766932931684338559

/-! ## A288108.P10819154902460974756

`and(A108337(A064045(n)), A287822(n))`
-/

namespace A288108.P10819154902460974756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108337 (A064045 n).toNat) (A287822 n)

end

end A288108.P10819154902460974756

/-! ## A288108.P11146697872312473268

`xor(A135814(A330942(n)), A238802(n))`
-/

namespace A288108.P11146697872312473268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135814 (A330942 n).toNat) (A238802 n)

end

end A288108.P11146697872312473268

/-! ## A288108.P10143012915460701824

`A105972(A281446(n))`
-/

namespace A288108.P10143012915460701824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105972 (A281446 n).toNat

end

end A288108.P10143012915460701824

/-!
# A288109: Number of Dyck paths of semilength n such that all levels with peaks have exactly the same number of peaks.

The programs for A288109, there is no canonical definition to state claims against.
-/

/-! ## A288109.P5493304861134716217

`A350945(A035055(n+1))`
-/

namespace A288109.P5493304861134716217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (A035055 (n + 1)).toNat

end

end A288109.P5493304861134716217

/-! ## A288109.P16716606395322968178

`A350945(∑[A352130(∑[n])])`
-/

namespace A288109.P16716606395322968178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288109.P16716606395322968178

/-! ## A288109.P991081395710810203

`A000079(n)-A231577(A150045(n))`
-/

namespace A288109.P991081395710810203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A231577 (A150045 n).toNat

end

end A288109.P991081395710810203

/-! ## A288109.P8709322293081040024

`A003986(A219662(n+1)+A193649(n))`
-/

namespace A288109.P8709322293081040024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A219662 (n + 1) + A193649 n).toNat

end

end A288109.P8709322293081040024

/-!
# A288110: Number of Dyck paths of semilength n such that each level has exactly three peaks or no peaks.

The programs for A288110, there is no canonical definition to state claims against.
-/

/-! ## A288110.P15881273995587346231

`A288108(∑[char[2]+n]+2)`
-/

namespace A288110.P15881273995587346231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A288110.P15881273995587346231

/-! ## A288110.P7970097093609494287

`A002260(A082938(n))-A284848(n+1)`
-/

namespace A288110.P7970097093609494287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A082938 n).toNat - A284848 (n + 1)

end

end A288110.P7970097093609494287

/-! ## A288110.P10569085259426092936

`A322111(A007094(n))-∑{e}[n+1, or(1, #-1)]`
-/

namespace A288110.P10569085259426092936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 (A007094 n).toNat - ∑ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A288110.P10569085259426092936

/-! ## A288110.P3242525261832087739

`A114640(A335443(n)+A030101(n))`
-/

namespace A288110.P3242525261832087739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (A335443 n + A030101 n).toNat

end

end A288110.P3242525261832087739

/-! ## A288110.P8926039031248278738

`A094266(lcm(A221718(n), A294950(n)))`
-/

namespace A288110.P8926039031248278738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094266 (Int.lcm (A221718 n) (A294950 n))

end

end A288110.P8926039031248278738

/-!
# A288111: Number of Dyck paths of semilength n such that each level has exactly four peaks or no peaks.

The programs for A288111, there is no canonical definition to state claims against.
-/

/-! ## A288111.P13951767076623704485

`A288108(A145018(n+1)%A143689(n))`
-/

namespace A288111.P13951767076623704485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (Int.tmod (A145018 (n + 1)) (A143689 n)).toNat

end

end A288111.P13951767076623704485

/-! ## A288111.P932819668284600404

`A288108(A300404(n)+∑[n])`
-/

namespace A288111.P932819668284600404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A300404 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A288111.P932819668284600404

/-! ## A288111.P9653800624089563986

`A288108(A145018(n+1))%A163982(n)`
-/

namespace A288111.P9653800624089563986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288108 (A145018 (n + 1)).toNat) (A163982 n)

end

end A288111.P9653800624089563986

/-!
# A288112: Number of Dyck paths of semilength n such that each level has exactly five peaks or no peaks.

The programs for A288112, there is no canonical definition to state claims against.
-/

/-! ## A288112.P10566200879949907078

`A288108(A077169(A028310(n))+n)`
-/

namespace A288112.P10566200879949907078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A077169 (A028310 n).toNat + (n : ℤ)).toNat

end

end A288112.P10566200879949907078

/-! ## A288112.P7493299715937276326

`A288108(A077169(n)+A065033(2*n))`
-/

namespace A288112.P7493299715937276326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A077169 n + A065033 (2 * n)).toNat

end

end A288112.P7493299715937276326

/-! ## A288112.P12194818109672818269

`A005428(n)-A064097(A340548(n+1))`
-/

namespace A288112.P12194818109672818269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 n - A064097 (A340548 (n + 1)).toNat

end

end A288112.P12194818109672818269

/-!
# A288113: Number of Dyck paths of semilength n such that each level has exactly six peaks or no peaks.

The programs for A288113, there is no canonical definition to state claims against.
-/

/-! ## A288113.P9316761475799405321

`A316893(A066213(n+1))`
-/

namespace A288113.P9316761475799405321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (A066213 (n + 1)).toNat

end

end A288113.P9316761475799405321

/-! ## A288113.P8024458179762529637

`A319764(n)+A208276(A121208(n+1))`
-/

namespace A288113.P8024458179762529637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319764 n + A208276 (A121208 (n + 1)).toNat

end

end A288113.P8024458179762529637

/-! ## A288113.P14746005653800278409

`Δ[A003179(A079955(n+3))%A193053(n)]`
-/

namespace A288113.P14746005653800278409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003179 (A079955 (n + 3)).toNat) (A193053 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288113.P14746005653800278409

/-!
# A288116: Number of Dyck paths of semilength n such that each level has exactly nine peaks or no peaks.

The programs for A288116, there is no canonical definition to state claims against.
-/

/-! ## A288116.P6364205450554015226

`A114516(A286316(n)^3)`
-/

namespace A288116.P6364205450554015226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114516 (A286316 n ^ 3).toNat

end

end A288116.P6364205450554015226

/-! ## A288116.P7679730814109412854

`A303534(10*A014378(n))`
-/

namespace A288116.P7679730814109412854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (10 * A014378 n).toNat

end

end A288116.P7679730814109412854

/-! ## A288116.P4475150389375373847

`A178241(ceil(sqrt(A014378(n))))`
-/

namespace A288116.P4475150389375373847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178241 ⌈Real.sqrt (A014378 n : ℝ)⌉.toNat

end

end A288116.P4475150389375373847

/-! ## A288116.P16270802570988902463

`A003056(ceil(sqrt(A026815(n)^n)))`
-/

namespace A288116.P16270802570988902463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A026815 n ^ n : ℝ)⌉.toNat

end

end A288116.P16270802570988902463

/-! ## A288116.P16686001058491552482

`A276611(A326469(n)^A004396(n))`
-/

namespace A288116.P16686001058491552482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (SequenceMachineLib.roundAway ((A326469 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A288116.P16686001058491552482

/-!
# A288117: Number of Dyck paths of semilength n such that each level has exactly ten peaks or no peaks.

The programs for A288117, there is no canonical definition to state claims against.
-/

/-! ## A288117.P13772104130003352407

`A165582(A326632(n)^A006666(n+1))`
-/

namespace A288117.P13772104130003352407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (SequenceMachineLib.roundAway ((A326632 n : ℚ) ^ (A006666 (n + 1) : ℤ))).toNat

end

end A288117.P13772104130003352407

/-!
# A288119: Lexicographically earliest sequence of distinct nonnegative terms such that, for any i and j >= 0, a(i+j) != a(i) + a(j).

The programs for A288119, the canonical program `A288119.P9217322777058320822` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288119 has offset 0).

The definition of A288119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288119.P9217322777058320822

`a(gcd(3, a(n-3)))+a(n-3)+2` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288119

/-- `a(gcd(3, a(n-3)))+a(n-3)+2` -/
def P9217322777058320822.Spec : Prop :=
  ∀ n, (P9217322777058320822.a n : ℤ) = A288119 n

theorem P9217322777058320822.correct : P9217322777058320822.Spec := by
  intro n
  simp only [A288119]

end A288119

/-! ## A288119.P5791165889628374160

`A057078(A194960(n+1))+A057078(n)+n`
-/

namespace A288119.P5791165889628374160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A194960 (n + 1)).toNat + (A057078 n + (n : ℤ))

end

end A288119.P5791165889628374160

namespace A288119

/-- `A057078(A194960(n+1))+A057078(n)+n` -/
def P5791165889628374160.Spec : Prop :=
  ∀ n, P5791165889628374160.a n = A288119 n

end A288119

/-! ## A288119.P18122845178754001795

`A004483(a(n-3)+3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A288119.P18122845178754001795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A004483 (a (n - 3) + 3).toNat

end

end A288119.P18122845178754001795

namespace A288119

/-- `A004483(a(n-3)+3)` -/
def P18122845178754001795.Spec : Prop :=
  ∀ n, P18122845178754001795.a n = A288119 n

end A288119

/-! ## A288119.P248464195153244248

`A147534(A147534(n+1))-A102283(A004773(n))`
-/

namespace A288119.P248464195153244248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A147534 (n + 1)).toNat - A102283 (A004773 n).toNat

end

end A288119.P248464195153244248

namespace A288119

/-- `A147534(A147534(n+1))-A102283(A004773(n))` -/
def P248464195153244248.Spec : Prop :=
  ∀ n, P248464195153244248.a n = A288119 n

end A288119

/-!
# A288120: Number of partitions of n into distinct pentanacci numbers (with a single type of 1) (A001591).

The programs for A288120, there is no canonical definition to state claims against.
-/

/-! ## A288120.P16525623530386714093

`A133233(A090996(n)*A341775(n+4))`
-/

namespace A288120.P16525623530386714093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A090996 n * A341775 (n + 4)).toNat

end

end A288120.P16525623530386714093

/-! ## A288120.P12064219331350907506

`A059317(and(A000120(n), A351699(n+1)))`
-/

namespace A288120.P12064219331350907506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (Int.land (A000120 n) (A351699 (n + 1))).toNat

end

end A288120.P12064219331350907506

/-! ## A288120.P429186475094609281

`A056556(gcd(A179748(n+2), A319416(n)))`
-/

namespace A288120.P429186475094609281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.gcd (A179748 (n + 2)) (A319416 n))

end

end A288120.P429186475094609281

/-! ## A288120.P14406594286716884392

`A047884(gcd(A000120(n), A197457(2*n+1)))`
-/

namespace A288120.P14406594286716884392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (Int.gcd (A000120 n) (A197457 (2 * n + 1)))

end

end A288120.P14406594286716884392

/-! ## A288120.P8775428979120409456

`A049076(∏{p}[n, A029942(#)])`
-/

namespace A288120.P8775428979120409456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (∏ p ∈ Nat.primeFactors (f1 n), A029942 p).toNat

end

end A288120.P8775428979120409456

/-! ## A288120.P5394324787364678752

`gcd(A194136(3*n+1), A219347(A151755(n)))`
-/

namespace A288120.P5394324787364678752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194136 (3 * n + 1)) (A219347 (A151755 n).toNat)

end

end A288120.P5394324787364678752

/-! ## A288120.P12230960400056046405

`gcd(A250120(A133188(n+1)), A327103(n))`
-/

namespace A288120.P12230960400056046405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250120 (A133188 (n + 1)).toNat) (A327103 n)

end

end A288120.P12230960400056046405

/-! ## A288120.P5327914322836420988

`A007318(round(1/∑{d}[n+1, 1/#])*A352514(n))`
-/

namespace A288120.P5327914322836420988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ))) * A352514 n).toNat

end

end A288120.P5327914322836420988

/-! ## A288120.P14406767704303663715

`A347550(n*A002266(A000120(n)))`
-/

namespace A288120.P14406767704303663715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 ((n : ℤ) * A002266 (A000120 n).toNat).toNat

end

end A288120.P14406767704303663715

/-!
# A288121: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A288121, there is no canonical definition to state claims against.
-/

/-! ## A288121.P13531029259119941887

`A000042(n+1)%A289937(A028310(n))`
-/

namespace A288121.P13531029259119941887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289937 (A028310 n).toNat)

end

end A288121.P13531029259119941887

/-! ## A288121.P14644690976606824537

`A000042(n+1)+A000007(n)-A289937(n)`
-/

namespace A288121.P14644690976606824537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A289937 n)

end

end A288121.P14644690976606824537

/-! ## A288121.P581809910874702906

`∑{d}[A288124(n), A007088(A000010(#))]`
-/

namespace A288121.P581809910874702906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007088 (A000010 d).toNat

end

end A288121.P581809910874702906

/-! ## A288121.P13693446709713480511

`A286863(n)-A010051(2^floor(n/2))`
-/

namespace A288121.P13693446709713480511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286863 n - A010051 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A288121.P13693446709713480511

/-! ## A288121.P14768183404434559128

`A007088(A288124(n))`
-/

namespace A288121.P14768183404434559128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288124 n).toNat

end

end A288121.P14768183404434559128

/-!
# A288122: Number of partitions of n into prime Fibonacci numbers (A005478).

The programs for A288122, there is no canonical definition to state claims against.
-/

/-! ## A288122.P8748424033135932310

`Δ[A259361(∑[A083024(n)])]`
-/

namespace A288122.P8748424033135932310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288122.P8748424033135932310

/-! ## A288122.P12237317565480393269

`A029147(n)-A053186(A008616(n))^A053742(n)`
-/

namespace A288122.P12237317565480393269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029147 n : ℚ) - (A053186 (A008616 n).toNat : ℚ) ^ (A053742 n : ℤ)

end

end A288122.P12237317565480393269

/-! ## A288122.P6831109522321458482

`A029147(n)-A053186(A008616(n))^A054552(n)`
-/

namespace A288122.P6831109522321458482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029147 n : ℚ) - (A053186 (A008616 n).toNat : ℚ) ^ (A054552 n : ℤ)

end

end A288122.P6831109522321458482

/-! ## A288122.P4555263811151832108

`A029147(n)-A053186(A008616(n))^A046002(n+1)`
-/

namespace A288122.P4555263811151832108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029147 n : ℚ) - (A053186 (A008616 n).toNat : ℚ) ^ (A046002 (n + 1) : ℤ)

end

end A288122.P4555263811151832108

/-! ## A288122.P1211016087727418026

`A029147(n)-A053186(A008616(n))^A177372(n+1)`
-/

namespace A288122.P1211016087727418026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029147 n : ℚ) - (A053186 (A008616 n).toNat : ℚ) ^ (A177372 (n + 1) : ℤ)

end

end A288122.P1211016087727418026

/-!
# A288124: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A288124, there is no canonical definition to state claims against.
-/

/-! ## A288124.P682415959260502215

`A095121(n)+1-A289939(n)`
-/

namespace A288124.P682415959260502215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A289939 n)

end

end A288124.P682415959260502215

/-! ## A288124.P1109312611386034645

`xor(record[A324821(n+1)], A289939(n))`
-/

namespace A288124.P1109312611386034645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289939 n)

end

end A288124.P1109312611386034645

/-! ## A288124.P6678445560015918014

`A052955(A004277(n))-A289939(n)`
-/

namespace A288124.P6678445560015918014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289939 n

end

end A288124.P6678445560015918014

/-! ## A288124.P13120050584827492780

`A126646(n)%A289939(A028310(n))`
-/

namespace A288124.P13120050584827492780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289939 (A028310 n).toNat)

end

end A288124.P13120050584827492780

/-! ## A288124.P4762656769716362665

`xor(A289939(n), A324821(A008578(n+1)))`
-/

namespace A288124.P4762656769716362665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A289939 n) (A324821 (A008578 (n + 1)).toNat)

end

end A288124.P4762656769716362665

/-! ## A288124.P16249615549892443805

`A000007(n)+A126646(n)-A289939(n)`
-/

namespace A288124.P16249615549892443805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289939 n)

end

end A288124.P16249615549892443805

/-!
# A288125: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A288125, there is no canonical definition to state claims against.
-/

/-! ## A288125.P10705490697339459167

`and(-A289940(n), A095121(n))`
-/

namespace A288125.P10705490697339459167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289940 n) (A095121 n)

end

end A288125.P10705490697339459167

/-! ## A288125.P11430755248396912800

`xor(record[A324821(n+1)], A289940(n))`
-/

namespace A288125.P11430755248396912800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289940 n)

end

end A288125.P11430755248396912800

/-! ## A288125.P7507674385305131276

`A052955(A004277(n))-A289940(n)`
-/

namespace A288125.P7507674385305131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289940 n

end

end A288125.P7507674385305131276

/-! ## A288125.P18377439741374112629

`xor(A289940(n), A324821(A008578(n+1)))`
-/

namespace A288125.P18377439741374112629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A289940 n) (A324821 (A008578 (n + 1)).toNat)

end

end A288125.P18377439741374112629

/-! ## A288125.P1909178597882091575

`A000007(n)+A126646(n)-A289940(n)`
-/

namespace A288125.P1909178597882091575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289940 n)

end

end A288125.P1909178597882091575

/-! ## A288125.P17854687427611239470

`A288124(n)+A289939(n)-A289940(n)`
-/

namespace A288125.P17854687427611239470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288124 n + (A289939 n - A289940 n)

end

end A288125.P17854687427611239470

/-! ## A288125.P7986121262292812294

`and(A126646(n)*A289940(n), A095121(n))`
-/

namespace A288125.P7986121262292812294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A289940 n) (A095121 n)

end

end A288125.P7986121262292812294

/-! ## A288125.P1945825738064402100

`and(A002023(n)-A289940(n), A095121(n))`
-/

namespace A288125.P1945825738064402100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002023 n - A289940 n) (A095121 n)

end

end A288125.P1945825738064402100

/-!
# A288126: Number of partitions of n-th triangular number (A000217) into distinct triangular parts.

The programs for A288126, there is no canonical definition to state claims against.
-/

/-! ## A288126.P17491216634780398766

`A024940(A000217(n))`
-/

namespace A288126.P17491216634780398766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 (A000217 n).toNat

end

end A288126.P17491216634780398766

/-! ## A288126.P7059506695573319836

`A024940(∑[n])`
-/

namespace A288126.P7059506695573319836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288126.P7059506695573319836

/-! ## A288126.P1398531532484789984

`and(-1, A024940(C(n+1, 2)))`
-/

namespace A288126.P1398531532484789984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A024940 (Nat.choose (n + 1) 2))

end

end A288126.P1398531532484789984

/-! ## A288126.P3549053496922193009

`and(-1, A024940((n²+n)/2))`
-/

namespace A288126.P3549053496922193009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A024940 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A288126.P3549053496922193009

/-! ## A288126.P11676659646762699648

`Δ[A024940(C(n, 2))+a(n-1)]` with `a(0)=0`
-/

namespace A288126.P11676659646762699648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A024940 (Nat.choose n 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288126.P11676659646762699648

/-! ## A288126.P8956109151195691085

`A024940(or(1, n)*ceil(n/2))^floor(atan(n))`
-/

namespace A288126.P8956109151195691085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024940 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A288126.P8956109151195691085

/-! ## A288126.P6838418572469963306

`A024940(record[C(n, 2)-n]-n)^floor(atan(n))`
-/

namespace A288126.P6838418572469963306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024940 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A288126.P6838418572469963306

/-! ## A288126.P10404255048933906901

`gcd(A000038(n), A024940(C(n+1, 2)))`
-/

namespace A288126.P10404255048933906901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A024940 (Nat.choose (n + 1) 2))

end

end A288126.P10404255048933906901

/-! ## A288126.P14187927761948188141

`A024940(C(n+1, 2))%A000032(2*n)`
-/

namespace A288126.P14187927761948188141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024940 (Nat.choose (n + 1) 2)) (A000032 (2 * n))

end

end A288126.P14187927761948188141

/-! ## A288126.P78095134202361492

`A007318(C(2, n))*A024940(C(n+1, 2))`
-/

namespace A288126.P78095134202361492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A024940 (Nat.choose (n + 1) 2)

end

end A288126.P78095134202361492

/-! ## A288126.P2999456161292897060

`A024940(C(n+1, 2))+val(A000040(n+1), 4)`
-/

namespace A288126.P2999456161292897060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 (Nat.choose (n + 1) 2) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A288126.P2999456161292897060

/-!
# A288129: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

The programs for A288129, the canonical program `A288129.P13028226010156660586` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288129 has offset 0).

The definition of A288129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288129.P13028226010156660586

`xor(A077896(A053438(n)), A289768(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288129

/-- `xor(A077896(A053438(n)), A289768(n))` -/
def P13028226010156660586.Spec : Prop :=
  ∀ n, P13028226010156660586.a n = A288129 n

theorem P13028226010156660586.correct : P13028226010156660586.Spec := by
  intro n
  simp only [A288129]

end A288129

/-! ## A288129.P10542083413381178230

`xor(A077896(A266303(n)), A289768(n))`
-/

namespace A288129.P10542083413381178230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A266303 n).toNat) (A289768 n)

end

end A288129.P10542083413381178230

namespace A288129

/-- `xor(A077896(A266303(n)), A289768(n))` -/
def P10542083413381178230.Spec : Prop :=
  ∀ n, P10542083413381178230.a n = A288129 n

end A288129

/-! ## A288129.P7693160535665232811

`xor(A077896(A042963(n+1)), A289768(n))`
-/

namespace A288129.P7693160535665232811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A042963 (n + 1)).toNat) (A289768 n)

end

end A288129.P7693160535665232811

namespace A288129

/-- `xor(A077896(A042963(n+1)), A289768(n))` -/
def P7693160535665232811.Spec : Prop :=
  ∀ n, P7693160535665232811.a n = A288129 n

end A288129

/-! ## A288129.P14210781352020392155

`xor(A000035(n)*A126646(n), A289768(n))`
-/

namespace A288129.P14210781352020392155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n * A126646 n) (A289768 n)

end

end A288129.P14210781352020392155

namespace A288129

/-- `xor(A000035(n)*A126646(n), A289768(n))` -/
def P14210781352020392155.Spec : Prop :=
  ∀ n, P14210781352020392155.a n = A288129 n

end A288129

/-!
# A288130: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

The programs for A288130, the canonical program `A288130.P13868285853343528695` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288130 has offset 0).

The definition of A288130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288130.P13868285853343528695

`xor(A077896(A053438(n)), A289769(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288130

/-- `xor(A077896(A053438(n)), A289769(n))` -/
def P13868285853343528695.Spec : Prop :=
  ∀ n, P13868285853343528695.a n = A288130 n

theorem P13868285853343528695.correct : P13868285853343528695.Spec := by
  intro n
  simp only [A288130]

end A288130

/-! ## A288130.P9222068977497408420

`xor(A077896(A266303(n)), A289769(n))`
-/

namespace A288130.P9222068977497408420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A266303 n).toNat) (A289769 n)

end

end A288130.P9222068977497408420

namespace A288130

/-- `xor(A077896(A266303(n)), A289769(n))` -/
def P9222068977497408420.Spec : Prop :=
  ∀ n, P9222068977497408420.a n = A288130 n

end A288130

/-! ## A288130.P10645179279797897094

`A077896(A053438(n))+A033999(n)*A289769(n)`
-/

namespace A288130.P10645179279797897094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (A053438 n).toNat + A033999 n * A289769 n

end

end A288130.P10645179279797897094

namespace A288130

/-- `A077896(A053438(n))+A033999(n)*A289769(n)` -/
def P10645179279797897094.Spec : Prop :=
  ∀ n, P10645179279797897094.a n = A288130 n

end A288130

/-! ## A288130.P8427847603859837177

`xor(A077896(A042963(n+1)), A289769(n))`
-/

namespace A288130.P8427847603859837177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A042963 (n + 1)).toNat) (A289769 n)

end

end A288130.P8427847603859837177

namespace A288130

/-- `xor(A077896(A042963(n+1)), A289769(n))` -/
def P8427847603859837177.Spec : Prop :=
  ∀ n, P8427847603859837177.a n = A288130 n

end A288130

/-! ## A288130.P15703647480283935143

`xor(A000035(n)*A126646(n), A289769(n))`
-/

namespace A288130.P15703647480283935143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n * A126646 n) (A289769 n)

end

end A288130.P15703647480283935143

namespace A288130

/-- `xor(A000035(n)*A126646(n), A289769(n))` -/
def P15703647480283935143.Spec : Prop :=
  ∀ n, P15703647480283935143.a n = A288130 n

end A288130

/-!
# A288131: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A288131, there is no canonical definition to state claims against.
-/

/-! ## A288131.P2562581846209404488

`A007088(A288137(n))`
-/

namespace A288131.P2562581846209404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288137 n).toNat

end

end A288131.P2562581846209404488

/-! ## A288131.P14585963446744523146

`A185544(2*A288137(n))`
-/

namespace A288131.P14585963446744523146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288137 n).toNat

end

end A288131.P14585963446744523146

/-! ## A288131.P5489516390861973680

`A007088(or(A020639(n!), A287780(n)))`
-/

namespace A288131.P5489516390861973680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A020639 (Nat.factorial n)) (A287780 n)).toNat

end

end A288131.P5489516390861973680

/-! ## A288131.P4113675951870396410

`or(A094026(A288546(n+7)), A288588(n))`
-/

namespace A288131.P4113675951870396410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094026 (A288546 (n + 7)).toNat) (A288588 n)

end

end A288131.P4113675951870396410

/-! ## A288131.P3902241826991158261

`A185544(2*or(A020639(n!), A287780(n)))`
-/

namespace A288131.P3902241826991158261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A020639 (Nat.factorial n)) (A287780 n)).toNat

end

end A288131.P3902241826991158261

/-!
# A288132: Fixed point of the mapping 00->0010, 1->11, starting with 00.

The programs for A288132, the canonical program `A288132.P3271536657450335669` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288132 has offset 1).

The definition of A288132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288132.P9592991391796849256

`char[∑[char[2^n-1]+1]]`
-/

namespace A288132.P9592991391796849256
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288132.P9592991391796849256

namespace A288132

/-- `char[∑[char[2^n-1]+1]]` -/
def P9592991391796849256.Spec : Prop :=
  ∀ n, (P9592991391796849256.a n : ℤ) = A288132 (n + 1)

end A288132

/-! ## A288132.P15575995816342320631

`3%A319956(n)`
-/

namespace A288132.P15575995816342320631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A319956 n)

end

end A288132.P15575995816342320631

namespace A288132

/-- `3%A319956(n)` -/
def P15575995816342320631.Spec : Prop :=
  ∀ n, P15575995816342320631.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P17983721093570370039

`1-char[A052968(n)-2]`
-/

namespace A288132.P17983721093570370039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288132.P17983721093570370039

namespace A288132

/-- `1-char[A052968(n)-2]` -/
def P17983721093570370039.Spec : Prop :=
  ∀ n, P17983721093570370039.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P3271536657450335669

`a(A004001(n-1))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288132

/-- `a(A004001(n-1))` -/
def P3271536657450335669.Spec : Prop :=
  ∀ n, (P3271536657450335669.a n : ℤ) = A288132 (n + 1)

theorem P3271536657450335669.correct : P3271536657450335669.Spec := by
  intro n
  simp only [A288132, Nat.add_sub_cancel]

end A288132

/-! ## A288132.P14380633223540471245

`1-char[A288382(n+1)-2]`
-/

namespace A288132.P14380633223540471245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288132.P14380633223540471245

namespace A288132

/-- `1-char[A288382(n+1)-2]` -/
def P14380633223540471245.Spec : Prop :=
  ∀ n, P14380633223540471245.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P16323479280282370226

`1-char[A011782(n)-1+n]`
-/

namespace A288132.P16323479280282370226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288132.P16323479280282370226

namespace A288132

/-- `1-char[A011782(n)-1+n]` -/
def P16323479280282370226.Spec : Prop :=
  ∀ n, P16323479280282370226.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P10224903931645930476

`A288381(n+2)`
-/

namespace A288132.P10224903931645930476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (n + 2)

end

end A288132.P10224903931645930476

namespace A288132

/-- `A288381(n+2)` -/
def P10224903931645930476.Spec : Prop :=
  ∀ n, P10224903931645930476.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P10683165404169968355

`A103354(n+1)+A127419(n)-A127419(n+1)`
-/

namespace A288132.P10683165404169968355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1) + (A127419 n - A127419 (n + 1))

end

end A288132.P10683165404169968355

namespace A288132

/-- `A103354(n+1)+A127419(n)-A127419(n+1)` -/
def P10683165404169968355.Spec : Prop :=
  ∀ n, P10683165404169968355.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P12010330120389247479

`Δ[Δ[A127419(n)]]`
-/

namespace A288132.P12010330120389247479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288132.P12010330120389247479

namespace A288132

/-- `Δ[Δ[A127419(n)]]` -/
def P12010330120389247479.Spec : Prop :=
  ∀ n, P12010330120389247479.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P8640500375912115887

`val(A319956(n), A020639(A028815(n)))`
-/

namespace A288132.P8640500375912115887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319956 n).toNat (A020639 (A028815 n).toNat).toNat

end

end A288132.P8640500375912115887

namespace A288132

/-- `val(A319956(n), A020639(A028815(n)))` -/
def P8640500375912115887.Spec : Prop :=
  ∀ n, (P8640500375912115887.a n : ℤ) = A288132 (n + 1)

end A288132

/-! ## A288132.P13141670081001675133

`p?[A080940(n+1)+2]-2`
-/

namespace A288132.P13141670081001675133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A288132.P13141670081001675133

namespace A288132

/-- `p?[A080940(n+1)+2]-2` -/
def P13141670081001675133.Spec : Prop :=
  ∀ n, P13141670081001675133.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P13890057845934878783

`filter[A080940(n+1), A010054(#)]`
-/

namespace A288132.P13890057845934878783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A288132.P13890057845934878783

namespace A288132

/-- `filter[A080940(n+1), A010054(#)]` -/
def P13890057845934878783.Spec : Prop :=
  ∀ n, P13890057845934878783.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P17668878779112085712

`filter[A080940(n+1), A036987(#)]`
-/

namespace A288132.P17668878779112085712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036987 (f1 j).toNat = 1) n)

end

end A288132.P17668878779112085712

namespace A288132

/-- `filter[A080940(n+1), A036987(#)]` -/
def P17668878779112085712.Spec : Prop :=
  ∀ n, P17668878779112085712.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P2607095324864606430

`filter[A080940(n+1), A039982(#)]`
-/

namespace A288132.P2607095324864606430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A288132.P2607095324864606430

namespace A288132

/-- `filter[A080940(n+1), A039982(#)]` -/
def P2607095324864606430.Spec : Prop :=
  ∀ n, P2607095324864606430.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P9921671613991567740

`filter[A080940(n+1), A058840(#)]`
-/

namespace A288132.P9921671613991567740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A288132.P9921671613991567740

namespace A288132

/-- `filter[A080940(n+1), A058840(#)]` -/
def P9921671613991567740.Spec : Prop :=
  ∀ n, P9921671613991567740.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P11449233734231599058

`filter[A080940(n+1), A093719(#)]`
-/

namespace A288132.P11449233734231599058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A288132.P11449233734231599058

namespace A288132

/-- `filter[A080940(n+1), A093719(#)]` -/
def P11449233734231599058.Spec : Prop :=
  ∀ n, P11449233734231599058.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P11789150312885485027

`filter[A080940(n+1), A117964(#)]`
-/

namespace A288132.P11789150312885485027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117964 (f1 j).toNat = 1) n)

end

end A288132.P11789150312885485027

namespace A288132

/-- `filter[A080940(n+1), A117964(#)]` -/
def P11789150312885485027.Spec : Prop :=
  ∀ n, P11789150312885485027.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P1889140419617523601

`filter[A080940(n+1), A147612(#)]`
-/

namespace A288132.P1889140419617523601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A147612 (f1 j).toNat = 1) n)

end

end A288132.P1889140419617523601

namespace A288132

/-- `filter[A080940(n+1), A147612(#)]` -/
def P1889140419617523601.Spec : Prop :=
  ∀ n, P1889140419617523601.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P11233599072921274610

`filter[A080940(n+1), A151667(#)]`
-/

namespace A288132.P11233599072921274610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A151667 (f1 j).toNat = 1) n)

end

end A288132.P11233599072921274610

namespace A288132

/-- `filter[A080940(n+1), A151667(#)]` -/
def P11233599072921274610.Spec : Prop :=
  ∀ n, P11233599072921274610.a n = A288132 (n + 1)

end A288132

/-! ## A288132.P487888931997257982

`filter[A080940(n+1), A178225(#)]`
-/

namespace A288132.P487888931997257982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A288132.P487888931997257982

namespace A288132

/-- `filter[A080940(n+1), A178225(#)]` -/
def P487888931997257982.Spec : Prop :=
  ∀ n, P487888931997257982.a n = A288132 (n + 1)

end A288132

/-!
# A288133: Positions of 0 in A288132; complement of A288134.

The programs for A288133, the canonical program `A288133.P1048909912668993397` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288133 has offset 1).

The definition of A288133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288133.P1048909912668993397

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288133

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P1048909912668993397.Spec : Prop :=
  ∀ n, P1048909912668993397.a n = A288133 (n + 1)

theorem P1048909912668993397.correct : P1048909912668993397.Spec := by
  intro n
  simp only [A288133, Nat.add_sub_cancel]

end A288133

/-! ## A288133.P12666005357023643845

`ceil(2^(n-1)+n)`
-/

namespace A288133.P12666005357023643845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ)⌉

end

end A288133.P12666005357023643845

namespace A288133

/-- `ceil(2^(n-1)+n)` -/
def P12666005357023643845.Spec : Prop :=
  ∀ n, P12666005357023643845.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P17126683181373538323

`2^((n-1)%(n+1))+n`
-/

namespace A288133.P17126683181373538323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) + (n : ℚ)

end

end A288133.P17126683181373538323

namespace A288133

/-- `2^((n-1)%(n+1))+n` -/
def P17126683181373538323.Spec : Prop :=
  ∀ n, P17126683181373538323.a n = (A288133 (n + 1) : ℚ)

end A288133

/-! ## A288133.P10649619810866490753

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A288133.P10649619810866490753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288133.P10649619810866490753

namespace A288133

/-- `∑[2*a(n-1)-1]` -/
def P10649619810866490753.Spec : Prop :=
  ∀ n, P10649619810866490753.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P12733821437428232636

`2*(a(n-1)+1)-n` with `a(0)=1, a(1)=2`
-/

namespace A288133.P12733821437428232636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + 1) - (n : ℤ)

end

end A288133.P12733821437428232636

namespace A288133

/-- `2*(a(n-1)+1)-n` -/
def P12733821437428232636.Spec : Prop :=
  ∀ n, P12733821437428232636.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P17453048361611329120

`2*a(n-1)-(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A288133.P17453048361611329120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 2)

end

end A288133.P17453048361611329120

namespace A288133

/-- `2*a(n-1)-(n-2)` -/
def P17453048361611329120.Spec : Prop :=
  ∀ n, P17453048361611329120.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P9211728854297198948

`round(gcd(2, 2*n)^(n-1)+n)`
-/

namespace A288133.P9211728854297198948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ))

end

end A288133.P9211728854297198948

namespace A288133

/-- `round(gcd(2, 2*n)^(n-1)+n)` -/
def P9211728854297198948.Spec : Prop :=
  ∀ n, P9211728854297198948.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P1373444575389128859

`lcm(2, a(n-1)-n)+n+2` with `a(0)=1, a(1)=2`
-/

namespace A288133.P1373444575389128859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 2 ((a (n - 1) : ℤ) - (n : ℤ)) + (n + 2)

end

end A288133.P1373444575389128859

namespace A288133

/-- `lcm(2, a(n-1)-n)+n+2` -/
def P1373444575389128859.Spec : Prop :=
  ∀ n, (P1373444575389128859.a n : ℤ) = A288133 (n + 1)

end A288133

/-! ## A288133.P17167619168997926685

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A288133.P17167619168997926685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288133.P17167619168997926685

namespace A288133

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P17167619168997926685.Spec : Prop :=
  ∀ n, P17167619168997926685.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P9321284257118408235

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A288133.P9321284257118408235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288133.P9321284257118408235

namespace A288133

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P9321284257118408235.Spec : Prop :=
  ∀ n, P9321284257118408235.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P12669712629935868374

`a(n-1)+a(n-1)+2-n` with `a(0)=1, a(1)=2`
-/

namespace A288133.P12669712629935868374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (2 - (n : ℤ)))

end

end A288133.P12669712629935868374

namespace A288133

/-- `a(n-1)+a(n-1)+2-n` -/
def P12669712629935868374.Spec : Prop :=
  ∀ n, P12669712629935868374.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P12270538903846362892

`2-(n-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A288133.P12270538903846362892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A288133.P12270538903846362892

namespace A288133

/-- `2-(n-a(n-1)-a(n-1))` -/
def P12270538903846362892.Spec : Prop :=
  ∀ n, P12270538903846362892.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P12598464508067871671

`A052968(n)-1`
-/

namespace A288133.P12598464508067871671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - 1

end

end A288133.P12598464508067871671

namespace A288133

/-- `A052968(n)-1` -/
def P12598464508067871671.Spec : Prop :=
  ∀ n, P12598464508067871671.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P15735442891018114689

`n+A011782(n)`
-/

namespace A288133.P15735442891018114689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A011782 n

end

end A288133.P15735442891018114689

namespace A288133

/-- `n+A011782(n)` -/
def P15735442891018114689.Spec : Prop :=
  ∀ n, P15735442891018114689.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P2645199238633680327

`abs(A123344(n))+n`
-/

namespace A288133.P2645199238633680327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123344 n| + (n : ℤ)

end

end A288133.P2645199238633680327

namespace A288133

/-- `abs(A123344(n))+n` -/
def P2645199238633680327.Spec : Prop :=
  ∀ n, P2645199238633680327.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P15167656831279949473

`∑[A034008(n)]+n`
-/

namespace A288133.P15167656831279949473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A288133.P15167656831279949473

namespace A288133

/-- `∑[A034008(n)]+n` -/
def P15167656831279949473.Spec : Prop :=
  ∀ n, P15167656831279949473.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P12207446902110397922

`∑[A323227(n)-n]`
-/

namespace A288133.P12207446902110397922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288133.P12207446902110397922

namespace A288133

/-- `∑[A323227(n)-n]` -/
def P12207446902110397922.Spec : Prop :=
  ∀ n, P12207446902110397922.a n = A288133 (n + 1)

end A288133

/-! ## A288133.P16784602790362488792

`A288382(n+2)-1`
-/

namespace A288133.P16784602790362488792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 2) - 1

end

end A288133.P16784602790362488792

namespace A288133

/-- `A288382(n+2)-1` -/
def P16784602790362488792.Spec : Prop :=
  ∀ n, P16784602790362488792.a n = A288133 (n + 1)

end A288133

/-!
# A288134: Positions of 1 in A288132; complement of A288133.

The programs for A288134, the canonical program `A288134.P4515230978772871518` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288134 has offset 1).

The definition of A288134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288134.P14666461620095293804

`floor(log2(n+1)+3+n)`
-/

namespace A288134.P14666461620095293804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) + 3 + (n : ℝ)⌋

end

end A288134.P14666461620095293804

namespace A288134

/-- `floor(log2(n+1)+3+n)` -/
def P14666461620095293804.Spec : Prop :=
  ∀ n, P14666461620095293804.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P4515230978772871518

`∑[ceil(3/∏{p}[n+1, #])]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288134

/-- `∑[ceil(3/∏{p}[n+1, #])]` -/
def P4515230978772871518.Spec : Prop :=
  ∀ n, P4515230978772871518.a n = A288134 (n + 1)

theorem P4515230978772871518.correct : P4515230978772871518.Spec := by
  intro n
  simp only [A288134, Nat.add_sub_cancel]

end A288134

/-! ## A288134.P11576270337539677394

`∑[C(2, ∏{p}[n+1, #])+1]`
-/

namespace A288134.P11576270337539677394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288134.P11576270337539677394

namespace A288134

/-- `∑[C(2, ∏{p}[n+1, #])+1]` -/
def P11576270337539677394.Spec : Prop :=
  ∀ n, (P11576270337539677394.a n : ℤ) = A288134 (n + 1)

end A288134

/-! ## A288134.P6546486581744838751

`ceil(n+2-log2(acot(n+1)))`
-/

namespace A288134.P6546486581744838751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) - Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A288134.P6546486581744838751

namespace A288134

/-- `ceil(n+2-log2(acot(n+1)))` -/
def P6546486581744838751.Spec : Prop :=
  ∀ n, P6546486581744838751.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P16007689116566329456

`∑[round(ratio[or(n, 2*n+1)])]`
-/

namespace A288134.P16007689116566329456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288134.P16007689116566329456

namespace A288134

/-- `∑[round(ratio[or(n, 2*n+1)])]` -/
def P16007689116566329456.Spec : Prop :=
  ∀ n, P16007689116566329456.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P12435911608585880829

`∑[C(2, and(n, n+1)²)]+n+2`
-/

namespace A288134.P12435911608585880829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)

end

end A288134.P12435911608585880829

namespace A288134

/-- `∑[C(2, and(n, n+1)²)]+n+2` -/
def P12435911608585880829.Spec : Prop :=
  ∀ n, (P12435911608585880829.a n : ℤ) = A288134 (n + 1)

end A288134

/-! ## A288134.P14035064747301085805

`∑[C(and(n, 2*n+1), n)]+n+2`
-/

namespace A288134.P14035064747301085805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (2 * n + 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)

end

end A288134.P14035064747301085805

namespace A288134

/-- `∑[C(and(n, 2*n+1), n)]+n+2` -/
def P14035064747301085805.Spec : Prop :=
  ∀ n, (P14035064747301085805.a n : ℤ) = A288134 (n + 1)

end A288134

/-! ## A288134.P17547530216295888619

`∑[floor((and(n, 2*n)+n+3)/(n+1))]`
-/

namespace A288134.P17547530216295888619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land n (2 * n) + (n + 3) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288134.P17547530216295888619

namespace A288134

/-- `∑[floor((and(n, 2*n)+n+3)/(n+1))]` -/
def P17547530216295888619.Spec : Prop :=
  ∀ n, P17547530216295888619.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P13828800199979223500

`comp[A052944(n)]+2`
-/

namespace A288134.P13828800199979223500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A288134.P13828800199979223500

namespace A288134

/-- `comp[A052944(n)]+2` -/
def P13828800199979223500.Spec : Prop :=
  ∀ n, (P13828800199979223500.a n : ℤ) = A288134 (n + 1)

end A288134

/-! ## A288134.P11716762006706793112

`A080804(n+1)+2`
-/

namespace A288134.P11716762006706793112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (n + 1) + 2

end

end A288134.P11716762006706793112

namespace A288134

/-- `A080804(n+1)+2` -/
def P11716762006706793112.Spec : Prop :=
  ∀ n, P11716762006706793112.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P17999651454080791140

`A288383(n+1)-1`
-/

namespace A288134.P17999651454080791140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288383 (n + 1) - 1

end

end A288134.P17999651454080791140

namespace A288134

/-- `A288383(n+1)-1` -/
def P17999651454080791140.Spec : Prop :=
  ∀ n, P17999651454080791140.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P4570603304573901815

`∑[abs(A286299(n))]+2`
-/

namespace A288134.P4570603304573901815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286299 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288134.P4570603304573901815

namespace A288134

/-- `∑[abs(A286299(n))]+2` -/
def P4570603304573901815.Spec : Prop :=
  ∀ n, P4570603304573901815.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P13813744559766574474

`∑[A036987(n)+1]+1`
-/

namespace A288134.P13813744559766574474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288134.P13813744559766574474

namespace A288134

/-- `∑[A036987(n)+1]+1` -/
def P13813744559766574474.Spec : Prop :=
  ∀ n, P13813744559766574474.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P8314699501833631860

`∑[A297382(n+1)]+1`
-/

namespace A288134.P8314699501833631860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288134.P8314699501833631860

namespace A288134

/-- `∑[A297382(n+1)]+1` -/
def P8314699501833631860.Spec : Prop :=
  ∀ n, P8314699501833631860.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P4984061716979433113

`∑[3-A201219(n+1)]`
-/

namespace A288134.P4984061716979433113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A201219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288134.P4984061716979433113

namespace A288134

/-- `∑[3-A201219(n+1)]` -/
def P4984061716979433113.Spec : Prop :=
  ∀ n, P4984061716979433113.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P10447097186777925833

`Δ[A123753(n)]+n+1`
-/

namespace A288134.P10447097186777925833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A288134.P10447097186777925833

namespace A288134

/-- `Δ[A123753(n)]+n+1` -/
def P10447097186777925833.Spec : Prop :=
  ∀ n, P10447097186777925833.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P12253786475831949143

`A113473(n+1)+2+n`
-/

namespace A288134.P12253786475831949143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) + 2 + (n : ℤ)

end

end A288134.P12253786475831949143

namespace A288134

/-- `A113473(n+1)+2+n` -/
def P12253786475831949143.Spec : Prop :=
  ∀ n, P12253786475831949143.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P13058469230864606373

`A000523(n+1)+3+n`
-/

namespace A288134.P13058469230864606373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + 3 + (n : ℤ)

end

end A288134.P13058469230864606373

namespace A288134

/-- `A000523(n+1)+3+n` -/
def P13058469230864606373.Spec : Prop :=
  ∀ n, P13058469230864606373.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P4026370039019288706

`∑[ceil(3/A006530(n+1))]`
-/

namespace A288134.P4026370039019288706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (A006530 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288134.P4026370039019288706

namespace A288134

/-- `∑[ceil(3/A006530(n+1))]` -/
def P4026370039019288706.Spec : Prop :=
  ∀ n, P4026370039019288706.a n = A288134 (n + 1)

end A288134

/-! ## A288134.P507996722324905328

`ceil(log2(A004757(n+1))+n)`
-/

namespace A288134.P507996722324905328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004757 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A288134.P507996722324905328

namespace A288134

/-- `ceil(log2(A004757(n+1))+n)` -/
def P507996722324905328.Spec : Prop :=
  ∀ n, P507996722324905328.a n = A288134 (n + 1)

end A288134

/-!
# A288135: Coefficients of 1/(Sum_{k>=0} [(k+1)*r]*(-x)^k), where r = sqrt(7/3) and [ ] = floor.

The programs for A288135, there is no canonical definition to state claims against.
-/

/-! ## A288135.P3163373927453107276

`A008683(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A288135.P3163373927453107276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A288135.P3163373927453107276

/-! ## A288135.P4461985892578561632

`A355689(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A288135.P4461985892578561632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355689 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A288135.P4461985892578561632

/-! ## A288135.P3736845423612428744

`2*a(n-1)-A207735(3^floor(n/2))` with `a(0)=1`
-/

namespace A288135.P3736845423612428744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A207735 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A288135.P3736845423612428744

/-! ## A288135.P5136326085174878135

`A160595(A098011(n+1))+and(-2, 2^n)`
-/

namespace A288135.P5136326085174878135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A098011 (n + 1)).toNat + Int.land (-2) (2 ^ n : ℤ)

end

end A288135.P5136326085174878135

/-! ## A288135.P6422638156588625733

`lcm(A010873(A001846(n)), A279634(n))`
-/

namespace A288135.P6422638156588625733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010873 (A001846 n).toNat) (A279634 n)

end

end A288135.P6422638156588625733

/-!
# A288136: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A288136, there is no canonical definition to state claims against.
-/

/-! ## A288136.P16319169971397967236

`A007088(A288138(n))`
-/

namespace A288136.P16319169971397967236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288138 n).toNat

end

end A288136.P16319169971397967236

/-! ## A288136.P2544153557893436849

`A185544(2*A288138(n))`
-/

namespace A288136.P2544153557893436849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288138 n).toNat

end

end A288136.P2544153557893436849

/-! ## A288136.P12754145491765977906

`A288589(A004891(n+1))`
-/

namespace A288136.P12754145491765977906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288589 (A004891 (n + 1)).toNat

end

end A288136.P12754145491765977906

/-! ## A288136.P15214429410456564039

`A288589(A001222(5^n))`
-/

namespace A288136.P15214429410456564039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288589 (A001222 (5 ^ n)).toNat

end

end A288136.P15214429410456564039

/-!
# A288137: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A288137, there is no canonical definition to state claims against.
-/

/-! ## A288137.P9657152388331253592

`or(Δ[A328085(n+1)], A288590(n))`
-/

namespace A288137.P9657152388331253592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A288590 n)

end

end A288137.P9657152388331253592

/-! ## A288137.P4367854719816734270

`or(A025437(A263986(n)), A288590(n))`
-/

namespace A288137.P4367854719816734270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025437 (A263986 n).toNat) (A288590 n)

end

end A288137.P4367854719816734270

/-! ## A288137.P9256615497714138412

`or(A000005(A292096(n)), A288334(n))`
-/

namespace A288137.P9256615497714138412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A292096 n).toNat) (A288334 n)

end

end A288137.P9256615497714138412

/-! ## A288137.P5773190228325294584

`or(A136167(A288331(n)), A288334(n))`
-/

namespace A288137.P5773190228325294584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136167 (A288331 n).toNat) (A288334 n)

end

end A288137.P5773190228325294584

/-! ## A288137.P13849881834820883738

`or(A213177(A319084(n+1)), A288590(n))`
-/

namespace A288137.P13849881834820883738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213177 (A319084 (n + 1)).toNat) (A288590 n)

end

end A288137.P13849881834820883738

/-!
# A288138: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A288138, there is no canonical definition to state claims against.
-/

/-! ## A288138.P11040485831374584712

`or(A162510(A003946(n)), A287851(n))`
-/

namespace A288138.P11040485831374584712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162510 (A003946 n).toNat) (A287851 n)

end

end A288138.P11040485831374584712

/-! ## A288138.P871460284331048734

`or(A275727(A000142(n)), A287851(n))`
-/

namespace A288138.P871460284331048734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275727 (A000142 n).toNat) (A287851 n)

end

end A288138.P871460284331048734

/-! ## A288138.P3573477853483827774

`or(A002487(A178975(n+1)), A288591(n))`
-/

namespace A288138.P3573477853483827774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 (A178975 (n + 1)).toNat) (A288591 n)

end

end A288138.P3573477853483827774

/-! ## A288138.P14649198851265587970

`or(A132466(A059405(n+1)), A288591(n))`
-/

namespace A288138.P14649198851265587970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132466 (A059405 (n + 1)).toNat) (A288591 n)

end

end A288138.P14649198851265587970

/-!
# A288139: Lexicographically earliest sequence of distinct positive terms such that the sum of two consecutive terms has Hamming weight <= 4.

The programs for A288139, there is no canonical definition to state claims against.
-/

/-! ## A288139.P11773660079456469426

`Δ[A166240(A306548(n)+2)+∑[n]]`
-/

namespace A288139.P11773660079456469426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A306548 n + 2).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288139.P11773660079456469426

/-! ## A288139.P7500741480565636153

`A000027(n+1)+Δ[A166240(A306548(n)+2)]`
-/

namespace A288139.P7500741480565636153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A306548 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A288139.P7500741480565636153

/-! ## A288139.P2761123374987766600

`Δ[A166240(A306548(n)+2)]-A001478(n+1)`
-/

namespace A288139.P2761123374987766600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A306548 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001478 (n + 1)

end

end A288139.P2761123374987766600

/-! ## A288139.P3533421427784494944

`xor(n+1, A185284(A323647(n+1)))`
-/

namespace A288139.P3533421427784494944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A185284 (A323647 (n + 1)).toNat)

end

end A288139.P3533421427784494944

/-! ## A288139.P8953978175750449791

`Δ[A025466(A321223(3*n+4)+A028421(n))]+1+n`
-/

namespace A288139.P8953978175750449791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A321223 (3 * n + 4) + A028421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A288139.P8953978175750449791

/-!
# A288141: Number of Dyck paths of semilength n such that the number of peaks is strongly decreasing from lower to higher levels.

The programs for A288141, there is no canonical definition to state claims against.
-/

/-! ## A288141.P7886167244221302162

`A055169(A148942(n))`
-/

namespace A288141.P7886167244221302162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055169 (A148942 n).toNat

end

end A288141.P7886167244221302162

/-! ## A288141.P9907937368808073666

`A066635(A148872(n))`
-/

namespace A288141.P9907937368808073666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A148872 n).toNat

end

end A288141.P9907937368808073666

/-! ## A288141.P14668540967829971010

`A329129(A362596(n))`
-/

namespace A288141.P14668540967829971010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A362596 n).toNat

end

end A288141.P14668540967829971010

/-! ## A288141.P168650003163986694

`A154957(A001047(n))+A136401(n)`
-/

namespace A288141.P168650003163986694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154957 (A001047 n).toNat + A136401 n

end

end A288141.P168650003163986694

/-!
# A288143: Expansion of x * phi(x) * phi(x^3)^2 * f(x, x^5)^3 in powers of x where phi() is a Ramanujan theta function and f(, ) is Ramanujan's general theta function.

The programs for A288143, the canonical program `A288143.P10004612521345683866` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288143 has offset 1).

The definition of A288143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214262, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A288143.P10004612521345683866

`(-1)^n*A214262(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288143

/-- `(-1)^n*A214262(n+1)` -/
def P10004612521345683866.Spec : Prop :=
  ∀ n, P10004612521345683866.a n = A288143 (n + 1)

theorem P10004612521345683866.correct : P10004612521345683866.Spec := by
  intro n
  simp only [A288143, Nat.add_sub_cancel]

end A288143

/-! ## A288143.P1126420328319303870

`abs(A214262(n+1))`
-/

namespace A288143.P1126420328319303870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214262 (n + 1)|

end

end A288143.P1126420328319303870

namespace A288143

/-- `abs(A214262(n+1))` -/
def P1126420328319303870.Spec : Prop :=
  ∀ n, P1126420328319303870.a n = A288143 (n + 1)

end A288143

/-! ## A288143.P11716573294270924992

`gcd(A000038(n), A214262(n+1))`
-/

namespace A288143.P11716573294270924992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214262 (n + 1))

end

end A288143.P11716573294270924992

namespace A288143

/-- `gcd(A000038(n), A214262(n+1))` -/
def P11716573294270924992.Spec : Prop :=
  ∀ n, (P11716573294270924992.a n : ℤ) = A288143 (n + 1)

end A288143

/-! ## A288143.P15071687629299666541

`lcm(A020985(n), A214262(n+1))`
-/

namespace A288143.P15071687629299666541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A214262 (n + 1))

end

end A288143.P15071687629299666541

namespace A288143

/-- `lcm(A020985(n), A214262(n+1))` -/
def P15071687629299666541.Spec : Prop :=
  ∀ n, (P15071687629299666541.a n : ℤ) = A288143 (n + 1)

end A288143

/-! ## A288143.P10043090288935329073

`abs(∑{d}[n+1, A049347(#-1)*A162395((n+1)/#)])`
-/

namespace A288143.P10043090288935329073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A288143.P10043090288935329073

namespace A288143

/-- `abs(∑{d}[n+1, A049347(#-1)*A162395((n+1)/#)])` -/
def P10043090288935329073.Spec : Prop :=
  ∀ n, P10043090288935329073.a n = A288143 (n + 1)

end A288143

/-! ## A288143.P9526007886247661756

`∑{d}[A214262(n+1), A000010(#)]`
-/

namespace A288143.P9526007886247661756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A288143.P9526007886247661756

namespace A288143

/-- `∑{d}[A214262(n+1), A000010(#)]` -/
def P9526007886247661756.Spec : Prop :=
  ∀ n, P9526007886247661756.a n = A288143 (n + 1)

end A288143

/-!
# A288144: Square roots of the deficiencies of the squares of A289274.

The programs for A288144, there is no canonical definition to state claims against.
-/

/-! ## A288144.P6762698259850993303

`A288145(lt[1, A288145(n+1)]+1)`
-/

namespace A288144.P6762698259850993303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A288144.P6762698259850993303

/-!
# A288145: Square roots of the deficiencies of the squares of A289275.

The programs for A288145, there is no canonical definition to state claims against.
-/

/-! ## A288145.P9756462969846342533

`A056609(∑[5*C(n, 2)]+n+n+2)`
-/

namespace A288145.P9756462969846342533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (∑ j ∈ Finset.range (n + 1), f1 j + n + (n + 2))

end

end A288145.P9756462969846342533

/-! ## A288145.P8655870503811930540

`A319251(A266615(n))`
-/

namespace A288145.P8655870503811930540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319251 (A266615 n).toNat

end

end A288145.P8655870503811930540

/-! ## A288145.P9910913025253951542

`A147649(A014876(n+1))`
-/

namespace A288145.P9910913025253951542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147649 (A014876 (n + 1)).toNat

end

end A288145.P9910913025253951542

/-! ## A288145.P18061498383929237748

`A147649(A045602(n+1))`
-/

namespace A288145.P18061498383929237748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147649 (A045602 (n + 1)).toNat

end

end A288145.P18061498383929237748

/-! ## A288145.P12190995137745151461

`A147457(A087647(n+1))`
-/

namespace A288145.P12190995137745151461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147457 (A087647 (n + 1)).toNat

end

end A288145.P12190995137745151461

/-!
# A288147: Number of Dyck paths of semilength n such that the number of peaks is strongly increasing from lower to higher levels and no positive level is peakless.

The programs for A288147, there is no canonical definition to state claims against.
-/

/-! ## A288147.P11165073421188687494

`A132329(A369344(n))`
-/

namespace A288147.P11165073421188687494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132329 (A369344 n).toNat

end

end A288147.P11165073421188687494

/-! ## A288147.P16085876528234146104

`A318274(round(sqrt(n))*A351028(n))`
-/

namespace A288147.P16085876528234146104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) * A351028 n).toNat

end

end A288147.P16085876528234146104

/-! ## A288147.P7630811968928301064

`A137734(A057356(n)*A306038(n))`
-/

namespace A288147.P7630811968928301064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A057356 n * A306038 n).toNat

end

end A288147.P7630811968928301064

/-!
# A288149: Numbers k such that (68*10^k - 257)/9 is prime.

The programs for A288149, there is no canonical definition to state claims against.
-/

/-! ## A288149.P16697442819632317064

`A161334(n)+A000035(A350276(n))`
-/

namespace A288149.P16697442819632317064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161334 n + A000035 (A350276 n).toNat

end

end A288149.P16697442819632317064

/-! ## A288149.P18418023703204891775

`A114730(A191119(n+1))+A000217(n)`
-/

namespace A288149.P18418023703204891775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114730 (A191119 (n + 1)).toNat + A000217 n

end

end A288149.P18418023703204891775

/-! ## A288149.P8978716842697902325

`A249870(A024916(n+1)-A324923(2*n+1))`
-/

namespace A288149.P8978716842697902325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A024916 (n + 1) - A324923 (2 * n + 1)).toNat

end

end A288149.P8978716842697902325

/-!
# A288153: Plumb pseudoprimes: odd composites that pass Colin Plumb's extended Euler criterion test.

The programs for A288153, there is no canonical definition to state claims against.
-/

/-! ## A288153.P18142323487365190514

`filter[A047713(n+3), A277674(#)]`
-/

namespace A288153.P18142323487365190514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A277674 (f1 j).toNat = 1) n)

end

end A288153.P18142323487365190514

/-! ## A288153.P11483309974186553369

`∪[A028310(A001262(n+1)), A047713(n+3)]`
-/

namespace A288153.P11483309974186553369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288153.P11483309974186553369

/-! ## A288153.P13053186661208461381

`∪[A028310(A001262(n+1)), A006970(n+4)]`
-/

namespace A288153.P13053186661208461381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288153.P13053186661208461381

/-!
# A288155: Numbers k such that k!6 + 12 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A288155, there is no canonical definition to state claims against.
-/

/-! ## A288155.P18175387735553029175

`eq[A007318(A036860(n+1)), ∏{p}[n, 3%#-2]]`
-/

namespace A288155.P18175387735553029175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A036860 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (((3 % p : ℕ) : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288155.P18175387735553029175

/-! ## A288155.P1152930294245977574

`eq[A007318(A036860(n+1)), A100051(n)]`
-/

namespace A288155.P1152930294245977574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A036860 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288155.P1152930294245977574

/-! ## A288155.P7802135369161103040

`eq[A007318(A036860(n+1)), A220129(n)]`
-/

namespace A288155.P7802135369161103040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A036860 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288155.P7802135369161103040

/-! ## A288155.P15363116204303758515

`A219696(n+1)+A008836(A001045(n+4))`
-/

namespace A288155.P15363116204303758515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219696 (n + 1) + A008836 (A001045 (n + 4)).toNat

end

end A288155.P15363116204303758515

/-!
# A288156: Two even followed by three odd integers: the pattern is (0+2k, 0+2k, 1+2k, 1+2k, 1+2k) for k >= 0.

The programs for A288156, the canonical program `A288156.P14430110331718974449` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288156 has offset 0).

The definition of A288156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288156.P14430110331718974449

`floor((2*n+1)/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288156

/-- `floor((2*n+1)/5)` -/
def P14430110331718974449.Spec : Prop :=
  ∀ n, P14430110331718974449.a n = A288156 n

theorem P14430110331718974449.correct : P14430110331718974449.Spec := by
  intro n
  simp only [A288156]

end A288156

/-! ## A288156.P16384337131385483733

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A288156.P16384337131385483733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A288156.P16384337131385483733

namespace A288156

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P16384337131385483733.Spec : Prop :=
  ∀ n, P16384337131385483733.a n = A288156 n

end A288156

/-! ## A288156.P9856889183797000531

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=2, a(7)=3, a(8)=3, a(9)=3`
-/

namespace A288156.P9856889183797000531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 2, 2, 3, 3, 3] fun n a =>
  2 * a (n - 5) - a (n - 10)

end

end A288156.P9856889183797000531

namespace A288156

/-- `2*a(n-5)-a(n-10)` -/
def P9856889183797000531.Spec : Prop :=
  ∀ n, P9856889183797000531.a n = A288156 n

end A288156

/-! ## A288156.P7006117346171599777

`round(record[lcm(2, n)/10])`
-/

namespace A288156.P7006117346171599777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A288156.P7006117346171599777

namespace A288156

/-- `round(record[lcm(2, n)/10])` -/
def P7006117346171599777.Spec : Prop :=
  ∀ n, P7006117346171599777.a n = A288156 n

end A288156

/-! ## A288156.P18355693525290761025

`∑[char[∑[n%2+2]]]`
-/

namespace A288156.P18355693525290761025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288156.P18355693525290761025

namespace A288156

/-- `∑[char[∑[n%2+2]]]` -/
def P18355693525290761025.Spec : Prop :=
  ∀ n, (P18355693525290761025.a n : ℤ) = A288156 n

end A288156

/-! ## A288156.P9081817218230385501

`∑[char[∑[4-gcd(2, n)]]]`
-/

namespace A288156.P9081817218230385501
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288156.P9081817218230385501

namespace A288156

/-- `∑[char[∑[4-gcd(2, n)]]]` -/
def P9081817218230385501.Spec : Prop :=
  ∀ n, (P9081817218230385501.a n : ℤ) = A288156 n

end A288156

/-! ## A288156.P8311962488036171527

`∑[char[∑[and(1, n)+2]]]`
-/

namespace A288156.P8311962488036171527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288156.P8311962488036171527

namespace A288156

/-- `∑[char[∑[and(1, n)+2]]]` -/
def P8311962488036171527.Spec : Prop :=
  ∀ n, (P8311962488036171527.a n : ℤ) = A288156 n

end A288156

/-! ## A288156.P11486642881928713510

`round((2*n-cos(1))/5)`
-/

namespace A288156.P11486642881928713510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cos (1 : ℝ)) / 5)

end

end A288156.P11486642881928713510

namespace A288156

/-- `round((2*n-cos(1))/5)` -/
def P11486642881928713510.Spec : Prop :=
  ∀ n, P11486642881928713510.a n = A288156 n

end A288156

/-! ## A288156.P2586355572128308013

`round((2*n-sin(1))/5)`
-/

namespace A288156.P2586355572128308013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.sin (1 : ℝ)) / 5)

end

end A288156.P2586355572128308013

namespace A288156

/-- `round((2*n-sin(1))/5)` -/
def P2586355572128308013.Spec : Prop :=
  ∀ n, P2586355572128308013.a n = A288156 n

end A288156

/-! ## A288156.P2449058881368590743

`round((cos(3)+2*n)/5)`
-/

namespace A288156.P2449058881368590743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (3 : ℝ) + (2 * n : ℝ)) / 5)

end

end A288156.P2449058881368590743

namespace A288156

/-- `round((cos(3)+2*n)/5)` -/
def P2449058881368590743.Spec : Prop :=
  ∀ n, P2449058881368590743.a n = A288156 n

end A288156

/-! ## A288156.P17640547246034580120

`ceil(cos(4)+2*n/5)`
-/

namespace A288156.P17640547246034580120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (4 : ℝ) + ((2 * n : ℚ) / 5 : ℝ)⌉

end

end A288156.P17640547246034580120

namespace A288156

/-- `ceil(cos(4)+2*n/5)` -/
def P17640547246034580120.Spec : Prop :=
  ∀ n, P17640547246034580120.a n = A288156 n

end A288156

/-! ## A288156.P6656216468848726075

`ceil(sin(4)+2*n/5)`
-/

namespace A288156.P6656216468848726075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (4 : ℝ) + ((2 * n : ℚ) / 5 : ℝ)⌉

end

end A288156.P6656216468848726075

namespace A288156

/-- `ceil(sin(4)+2*n/5)` -/
def P6656216468848726075.Spec : Prop :=
  ∀ n, P6656216468848726075.a n = A288156 n

end A288156

/-! ## A288156.P417805571699445985

`round(tan(3)+2*n/5)`
-/

namespace A288156.P417805571699445985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((2 * n : ℚ) / 5 : ℝ))

end

end A288156.P417805571699445985

namespace A288156

/-- `round(tan(3)+2*n/5)` -/
def P417805571699445985.Spec : Prop :=
  ∀ n, P417805571699445985.a n = A288156 n

end A288156

/-! ## A288156.P17795329607592740559

`round((sin(4)+2*n)/5)`
-/

namespace A288156.P17795329607592740559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (4 : ℝ) + (2 * n : ℝ)) / 5)

end

end A288156.P17795329607592740559

namespace A288156

/-- `round((sin(4)+2*n)/5)` -/
def P17795329607592740559.Spec : Prop :=
  ∀ n, P17795329607592740559.a n = A288156 n

end A288156

/-! ## A288156.P9277045503268443760

`ceil(2*n/5-atan(1))`
-/

namespace A288156.P9277045503268443760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 5 : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A288156.P9277045503268443760

namespace A288156

/-- `ceil(2*n/5-atan(1))` -/
def P9277045503268443760.Spec : Prop :=
  ∀ n, P9277045503268443760.a n = A288156 n

end A288156

/-! ## A288156.P10741986383731351808

`ceil((tan(5)+2*n)/5)`
-/

namespace A288156.P10741986383731351808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (5 : ℝ) + (2 * n : ℝ)) / 5⌉

end

end A288156.P10741986383731351808

namespace A288156

/-- `ceil((tan(5)+2*n)/5)` -/
def P10741986383731351808.Spec : Prop :=
  ∀ n, P10741986383731351808.a n = A288156 n

end A288156

/-! ## A288156.P8732366437794530808

`round((2*n-atan(1))/5)`
-/

namespace A288156.P8732366437794530808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.arctan (1 : ℝ)) / 5)

end

end A288156.P8732366437794530808

namespace A288156

/-- `round((2*n-atan(1))/5)` -/
def P8732366437794530808.Spec : Prop :=
  ∀ n, P8732366437794530808.a n = A288156 n

end A288156

/-! ## A288156.P4256261953103588804

`round((2*n-tan(4))/5)`
-/

namespace A288156.P4256261953103588804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tan (4 : ℝ)) / 5)

end

end A288156.P4256261953103588804

namespace A288156

/-- `round((2*n-tan(4))/5)` -/
def P4256261953103588804.Spec : Prop :=
  ∀ n, P4256261953103588804.a n = A288156 n

end A288156

/-! ## A288156.P18176203368060310285

`ceil(2*n/5-cos(7))`
-/

namespace A288156.P18176203368060310285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 5 : ℝ) - Real.cos (7 : ℝ)⌉

end

end A288156.P18176203368060310285

namespace A288156

/-- `ceil(2*n/5-cos(7))` -/
def P18176203368060310285.Spec : Prop :=
  ∀ n, P18176203368060310285.a n = A288156 n

end A288156

/-! ## A288156.P4403432727479583523

`ceil((2*n-cosh(2))/5)`
-/

namespace A288156.P4403432727479583523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℝ) - Real.cosh (2 : ℝ)) / 5⌉

end

end A288156.P4403432727479583523

namespace A288156

/-- `ceil((2*n-cosh(2))/5)` -/
def P4403432727479583523.Spec : Prop :=
  ∀ n, P4403432727479583523.a n = A288156 n

end A288156

/-!
# A288157: Number of bases b < n where the digits of n are not all different.

The programs for A288157, there is no canonical definition to state claims against.
-/

/-! ## A288157.P6319952579203117380

`n-A270832(n+1)`
-/

namespace A288157.P6319952579203117380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A270832 (n + 1)

end

end A288157.P6319952579203117380

/-! ## A288157.P7845630156660476550

`abs(A270832(n+1)+A001489(n))`
-/

namespace A288157.P7845630156660476550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A270832 (n + 1) + A001489 n|

end

end A288157.P7845630156660476550

/-! ## A288157.P8955814297947950778

`A061601(A270832(n+1)+A061601(n))`
-/

namespace A288157.P8955814297947950778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A270832 (n + 1) + A061601 n).toNat

end

end A288157.P8955814297947950778

/-! ## A288157.P6635706261735575368

`A000196((A270832(n+1)+A001489(n))²)`
-/

namespace A288157.P6635706261735575368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A270832 (n + 1) + A001489 n) ^ 2).toNat

end

end A288157.P6635706261735575368

/-! ## A288157.P9255806152000050067

`A008683(A151800(n))*A270832(n+1)+n`
-/

namespace A288157.P9255806152000050067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat * A270832 (n + 1) + (n : ℤ)

end

end A288157.P9255806152000050067

/-! ## A288157.P16475907491358828243

`(A270832(n+1)+A001489(n))/A008683(A151800(n))`
-/

namespace A288157.P16475907491358828243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270832 (n + 1) + A001489 n : ℚ) / (A008683 (A151800 n).toNat : ℚ)

end

end A288157.P16475907491358828243

/-! ## A288157.P16226429687770452934

`A171960(A270832(n+1)+A171960(n))`
-/

namespace A288157.P16226429687770452934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A270832 (n + 1) + A171960 n).toNat

end

end A288157.P16226429687770452934

/-! ## A288157.P11263661444077951325

`A025581(A270832(n+1)+∑[n])`
-/

namespace A288157.P11263661444077951325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A270832 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A288157.P11263661444077951325

/-!
# A288159: a(n) = smallest k such that k*n*2^n+1 is prime.

The programs for A288159, there is no canonical definition to state claims against.
-/

/-! ## A288159.P2975509988998843466

`A023416(A243581(n+1))-A334566(n+1)`
-/

namespace A288159.P2975509988998843466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A243581 (n + 1)).toNat - A334566 (n + 1)

end

end A288159.P2975509988998843466

/-! ## A288159.P9917213134779443928

`A193524(A331250(n+1))+A103893(n+4)`
-/

namespace A288159.P9917213134779443928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (A331250 (n + 1)).toNat + A103893 (n + 4)

end

end A288159.P9917213134779443928

/-!
# A288161: Denominator of half moments of Rvachëv function.

The programs for A288161, there is no canonical definition to state claims against.
-/

/-! ## A288161.P14741980389461407345

`A225316(A364317(n+2))`
-/

namespace A288161.P14741980389461407345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225316 (A364317 (n + 2)).toNat

end

end A288161.P14741980389461407345

/-!
# A288162: Numbers whose prime factors are 2 and 13.

The programs for A288162, there is no canonical definition to state claims against.
-/

/-! ## A288162.P17301218203250023302

`26*A107326(n+1)`
-/

namespace A288162.P17301218203250023302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A107326 (n + 1)

end

end A288162.P17301218203250023302

/-! ## A288162.P4972977017720484877

`26*∪[2*A107462(n+1), A107462(n+1)]`
-/

namespace A288162.P4972977017720484877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288162.P4972977017720484877

/-! ## A288162.P14601874252318399991

`A252994(A107326(n+1))`
-/

namespace A288162.P14601874252318399991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 (A107326 (n + 1)).toNat

end

end A288162.P14601874252318399991

/-! ## A288162.P9489804262422707536

`∩[A107326(n+1), A114989(n+1)]`
-/

namespace A288162.P9489804262422707536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288162.P9489804262422707536

/-! ## A288162.P18297701479245928022

`∩[A389197(n+1), A252994(n)]`
-/

namespace A288162.P18297701479245928022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288162.P18297701479245928022

/-!
# A288163: Integers related to the half moments of Rvachëv function.

The programs for A288163, there is no canonical definition to state claims against.
-/

/-! ## A288163.P1924741307905385849

`A059708(A127696(n)+1)`
-/

namespace A288163.P1924741307905385849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (A127696 n + 1).toNat

end

end A288163.P1924741307905385849

/-!
# A288165: Expansion of x^4/((1-x^4)*(1-x^3)*(1-x^6)*(1-x^9)).

The programs for A288165, the canonical program `A288165.P5831388046944301528` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288165 has offset 0).

The definition of A288165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288165.P10421968656906634686

`A008681(n)-A029274(n)`
-/

namespace A288165.P10421968656906634686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 n - A029274 n

end

end A288165.P10421968656906634686

namespace A288165

/-- `A008681(n)-A029274(n)` -/
def P10421968656906634686.Spec : Prop :=
  ∀ n, P10421968656906634686.a n = A288165 n

end A288165

/-! ## A288165.P5831388046944301528

`A029139(n)-A029152(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A288165

/-- `A029139(n)-A029152(n)` -/
def P5831388046944301528.Spec : Prop :=
  ∀ n, P5831388046944301528.a n = A288165 n

theorem P5831388046944301528.correct : P5831388046944301528.Spec := by
  intro n
  simp only [A288165]

end A288165

/-! ## A288165.P13007968969849985337

`A029139(n)-A008763(A008611(n)+3)`
-/

namespace A288165.P13007968969849985337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A008763 (A008611 n + 3).toNat

end

end A288165.P13007968969849985337

namespace A288165

/-- `A029139(n)-A008763(A008611(n)+3)` -/
def P13007968969849985337.Spec : Prop :=
  ∀ n, P13007968969849985337.a n = A288165 n

end A288165

/-! ## A288165.P16035932654798670719

`A029139(n)-A008763(A291357(2*n+1)+A002264(n))`
-/

namespace A288165.P16035932654798670719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A008763 (A291357 (2 * n + 1) + A002264 n).toNat

end

end A288165.P16035932654798670719

namespace A288165

/-- `A029139(n)-A008763(A291357(2*n+1)+A002264(n))` -/
def P16035932654798670719.Spec : Prop :=
  ∀ n, P16035932654798670719.a n = A288165 n

end A288165

/-! ## A288165.P8227228932169006329

`A029425(Δ[n²])`
-/

namespace A288165.P8227228932169006329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288165.P8227228932169006329

namespace A288165

/-- `A029425(Δ[n²])` -/
def P8227228932169006329.Spec : Prop :=
  ∀ n, P8227228932169006329.a n = A288165 n

end A288165

/-! ## A288165.P16296178943907000423

`A029139(n)-A029356(2*n)`
-/

namespace A288165.P16296178943907000423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A029356 (2 * n)

end

end A288165.P16296178943907000423

namespace A288165

/-- `A029139(n)-A029356(2*n)` -/
def P16296178943907000423.Spec : Prop :=
  ∀ n, P16296178943907000423.a n = A288165 n

end A288165

/-! ## A288165.P17854760046507714635

`abs(A029356(A005843(n))-A029139(n))`
-/

namespace A288165.P17854760046507714635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029356 (A005843 n).toNat - A029139 n|

end

end A288165.P17854760046507714635

namespace A288165

/-- `abs(A029356(A005843(n))-A029139(n))` -/
def P17854760046507714635.Spec : Prop :=
  ∀ n, P17854760046507714635.a n = A288165 n

end A288165

/-! ## A288165.P17416257292516646103

`A029238(A165754(2*n))+A025814(n)-A029152(n)`
-/

namespace A288165.P17416257292516646103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A165754 (2 * n)).toNat + A025814 n - A029152 n

end

end A288165.P17416257292516646103

namespace A288165

/-- `A029238(A165754(2*n))+A025814(n)-A029152(n)` -/
def P17416257292516646103.Spec : Prop :=
  ∀ n, P17416257292516646103.a n = A288165 n

end A288165

/-! ## A288165.P9877936896846194477

`A029139(n)-A340760(2*(A008611(n)+1))`
-/

namespace A288165.P9877936896846194477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A340760 (2 * (A008611 n + 1)).toNat

end

end A288165.P9877936896846194477

namespace A288165

/-- `A029139(n)-A340760(2*(A008611(n)+1))` -/
def P9877936896846194477.Spec : Prop :=
  ∀ n, P9877936896846194477.a n = A288165 n

end A288165

/-! ## A288165.P2855105213757056478

`A029139(n)-A340760(A008611(n)+A008611(n)+2)`
-/

namespace A288165.P2855105213757056478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A340760 (A008611 n + (A008611 n + 2)).toNat

end

end A288165.P2855105213757056478

namespace A288165

/-- `A029139(n)-A340760(A008611(n)+A008611(n)+2)` -/
def P2855105213757056478.Spec : Prop :=
  ∀ n, P2855105213757056478.a n = A288165 n

end A288165

/-! ## A288165.P16156720344970702110

`A029139(n)-A340760(A133310(n)+3)`
-/

namespace A288165.P16156720344970702110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A340760 (A133310 n + 3).toNat

end

end A288165.P16156720344970702110

namespace A288165

/-- `A029139(n)-A340760(A133310(n)+3)` -/
def P16156720344970702110.Spec : Prop :=
  ∀ n, P16156720344970702110.a n = A288165 n

end A288165

/-!
# A288166: Expansion of x^5/((1-x^5)*(1-x^4)*(1-x^8)*(1-x^12)*(1-x^16)).

The programs for A288166, there is no canonical definition to state claims against.
-/

/-! ## A288166.P9935966675360336453

`A005136(3*A035676(2*n+3))`
-/

namespace A288166.P9935966675360336453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (3 * A035676 (2 * n + 3)).toNat

end

end A288166.P9935966675360336453

/-! ## A288166.P14848409698188632989

`A005089(A007662(n)%A256081(3*n+4))`
-/

namespace A288166.P14848409698188632989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (Int.tmod (A007662 n) (A256081 (3 * n + 4))).toNat

end

end A288166.P14848409698188632989

/-! ## A288166.P17155082793405204339

`A240448(A281449(n+3))%A352382(3*(n+1))`
-/

namespace A288166.P17155082793405204339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240448 (A281449 (n + 3)).toNat) (A352382 (3 * (n + 1)))

end

end A288166.P17155082793405204339

/-!
# A288167: Fixed point of the mapping 00->0010, 1->000, starting with 00.

The programs for A288167, the canonical program `A288167.P9921603873379981045` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288167 has offset 1).

The definition of A288167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288167.P9921603873379981045

`char[A288169(n+1)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288167

/-- `char[A288169(n+1)-1]` -/
def P9921603873379981045.Spec : Prop :=
  ∀ n, (P9921603873379981045.a n : ℤ) = A288167 (n + 1)

theorem P9921603873379981045.correct : P9921603873379981045.Spec := by
  intro n
  simp only [A288167, Nat.add_sub_cancel]

end A288167

/-! ## A288167.P9236185867861955136

`1-char[A288168(n+1)-1]`
-/

namespace A288167.P9236185867861955136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288168 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288167.P9236185867861955136

namespace A288167

/-- `1-char[A288168(n+1)-1]` -/
def P9236185867861955136.Spec : Prop :=
  ∀ n, P9236185867861955136.a n = A288167 (n + 1)

end A288167

/-! ## A288167.P10194682312739986407

`char[A023443(A288169(n+1))]`
-/

namespace A288167.P10194682312739986407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288169 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288167.P10194682312739986407

namespace A288167

/-- `char[A023443(A288169(n+1))]` -/
def P10194682312739986407.Spec : Prop :=
  ∀ n, (P10194682312739986407.a n : ℤ) = A288167 (n + 1)

end A288167

/-! ## A288167.P17763972540438158502

`char[A249034(n+1)-A085423(n+2)-1]`
-/

namespace A288167.P17763972540438158502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - A085423 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288167.P17763972540438158502

namespace A288167

/-- `char[A249034(n+1)-A085423(n+2)-1]` -/
def P17763972540438158502.Spec : Prop :=
  ∀ n, (P17763972540438158502.a n : ℤ) = A288167 (n + 1)

end A288167

/-! ## A288167.P17741411934897128956

`char[A023443(A249034(n+1)-A085423(n+2))]`
-/

namespace A288167.P17741411934897128956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249034 (n + 1) - A085423 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288167.P17741411934897128956

namespace A288167

/-- `char[A023443(A249034(n+1)-A085423(n+2))]` -/
def P17741411934897128956.Spec : Prop :=
  ∀ n, (P17741411934897128956.a n : ℤ) = A288167 (n + 1)

end A288167

/-! ## A288167.P16154222750659863221

`A328981(A212445(n+1))+A014707(n²)`
-/

namespace A288167.P16154222750659863221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A212445 (n + 1)).toNat + A014707 (n ^ 2)

end

end A288167.P16154222750659863221

namespace A288167

/-- `A328981(A212445(n+1))+A014707(n²)` -/
def P16154222750659863221.Spec : Prop :=
  ∀ n, P16154222750659863221.a n = A288167 (n + 1)

end A288167

/-! ## A288167.P12465362065898362255

`A328981(lcm(98, A212445(n+1)))`
-/

namespace A288167.P12465362065898362255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (Int.lcm 98 (A212445 (n + 1)))

end

end A288167.P12465362065898362255

namespace A288167

/-- `A328981(lcm(98, A212445(n+1)))` -/
def P12465362065898362255.Spec : Prop :=
  ∀ n, P12465362065898362255.a n = A288167 (n + 1)

end A288167

/-!
# A288168: Positions of 0 in A288167; complement of A288169.

The programs for A288168, the canonical program `A288168.P15066457782976008848` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288168 has offset 1).

The definition of A288168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288168.P15066457782976008848

`eq[0, A288167(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288168

/-- `eq[0, A288167(n+1)]+1` -/
def P15066457782976008848.Spec : Prop :=
  ∀ n, (P15066457782976008848.a n : ℤ) = A288168 (n + 1)

theorem P15066457782976008848.correct : P15066457782976008848.Spec := by
  intro n
  simp only [A288168, Nat.add_sub_cancel]

end A288168

/-! ## A288168.P12661932839558460711

`lt[char[A288169(n+1)-1], 1]+1`
-/

namespace A288168.P12661932839558460711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288169 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A288168.P12661932839558460711

namespace A288168

/-- `lt[char[A288169(n+1)-1], 1]+1` -/
def P12661932839558460711.Spec : Prop :=
  ∀ n, (P12661932839558460711.a n : ℤ) = A288168 (n + 1)

end A288168

/-! ## A288168.P8296709394930612923

`a(n-1)+A288167(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288168.P8296709394930612923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288167 (a (n - 1) + 1).toNat + 1)

end

end A288168.P8296709394930612923

namespace A288168

/-- `a(n-1)+A288167(a(n-1)+1)+1` -/
def P8296709394930612923.Spec : Prop :=
  ∀ n, P8296709394930612923.a n = A288168 (n + 1)

end A288168

/-! ## A288168.P13954871296553181360

`record[n+1-A288167(n+1)*A288169(n+1)]`
-/

namespace A288168.P13954871296553181360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288167 (n + 1) * A288169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288168.P13954871296553181360

namespace A288168

/-- `record[n+1-A288167(n+1)*A288169(n+1)]` -/
def P13954871296553181360.Spec : Prop :=
  ∀ n, P13954871296553181360.a n = A288168 (n + 1)

end A288168

/-! ## A288168.P8300995173604189002

`lt[n*char[A288169(n+1)], n]`
-/

namespace A288168.P8300995173604189002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288169 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288168.P8300995173604189002

namespace A288168

/-- `lt[n*char[A288169(n+1)], n]` -/
def P8300995173604189002.Spec : Prop :=
  ∀ n, (P8300995173604189002.a n : ℤ) = A288168 (n + 1)

end A288168

/-! ## A288168.P15922316198744949707

`record[A288167(A032742(n+1))+A032742(n+1)]`
-/

namespace A288168.P15922316198744949707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (A032742 (n + 1)).toNat + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288168.P15922316198744949707

namespace A288168

/-- `record[A288167(A032742(n+1))+A032742(n+1)]` -/
def P15922316198744949707.Spec : Prop :=
  ∀ n, P15922316198744949707.a n = A288168 (n + 1)

end A288168

/-! ## A288168.P9970690785094422340

`record[n+1-A288167(n+1)*A288170(n)]`
-/

namespace A288168.P9970690785094422340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288167 (n + 1) * A288170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288168.P9970690785094422340

namespace A288168

/-- `record[n+1-A288167(n+1)*A288170(n)]` -/
def P9970690785094422340.Spec : Prop :=
  ∀ n, P9970690785094422340.a n = A288168 (n + 1)

end A288168

/-!
# A288169: Positions of 1 in A288167; complement of A288168.

The programs for A288169, the canonical program `A288169.P9463209400602246047` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288169 has offset 1).

The definition of A288169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288169.P9463209400602246047

`A249034(n+1)-A085423(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288169

/-- `A249034(n+1)-A085423(n+2)` -/
def P9463209400602246047.Spec : Prop :=
  ∀ n, P9463209400602246047.a n = A288169 (n + 1)

theorem P9463209400602246047.correct : P9463209400602246047.Spec := by
  intro n
  simp only [A288169, Nat.add_sub_cancel]

end A288169

/-! ## A288169.P2930859496038583695

`A131323(n+1)-A059939(A293990(n))`
-/

namespace A288169.P2930859496038583695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) - A059939 (A293990 n).toNat

end

end A288169.P2930859496038583695

namespace A288169

/-- `A131323(n+1)-A059939(A293990(n))` -/
def P2930859496038583695.Spec : Prop :=
  ∀ n, P2930859496038583695.a n = A288169 (n + 1)

end A288169

/-! ## A288169.P5988203856066734389

`filter[n+1, A288167(#)]`
-/

namespace A288169.P5988203856066734389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288167 (f1 j) = 1) n)

end

end A288169.P5988203856066734389

namespace A288169

/-- `filter[n+1, A288167(#)]` -/
def P5988203856066734389.Spec : Prop :=
  ∀ n, (P5988203856066734389.a n : ℤ) = A288169 (n + 1)

end A288169

/-! ## A288169.P3592372532823468429

`eq[1, A288167(n+1)]+1`
-/

namespace A288169.P3592372532823468429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288169.P3592372532823468429

namespace A288169

/-- `eq[1, A288167(n+1)]+1` -/
def P3592372532823468429.Spec : Prop :=
  ∀ n, (P3592372532823468429.a n : ℤ) = A288169 (n + 1)

end A288169

/-! ## A288169.P3674716813148376047

`record[A288134(n+1)*A288167(A288134(n+1))]`
-/

namespace A288169.P3674716813148376047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288134 (n + 1) * A288167 (A288134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288169.P3674716813148376047

namespace A288169

/-- `record[A288134(n+1)*A288167(A288134(n+1))]` -/
def P3674716813148376047.Spec : Prop :=
  ∀ n, P3674716813148376047.a n = A288169 (n + 1)

end A288169

/-! ## A288169.P13081048804300306773

`A249034(n+1)-A238845(A249034(n+2))`
-/

namespace A288169.P13081048804300306773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - A238845 (A249034 (n + 2)).toNat

end

end A288169.P13081048804300306773

namespace A288169

/-- `A249034(n+1)-A238845(A249034(n+2))` -/
def P13081048804300306773.Spec : Prop :=
  ∀ n, P13081048804300306773.a n = A288169 (n + 1)

end A288169

/-! ## A288169.P17567752988521095882

`eq[1, A288167(A233583(n+1))]`
-/

namespace A288169.P17567752988521095882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288169.P17567752988521095882

namespace A288169

/-- `eq[1, A288167(A233583(n+1))]` -/
def P17567752988521095882.Spec : Prop :=
  ∀ n, (P17567752988521095882.a n : ℤ) = A288169 (n + 1)

end A288169

/-!
# A288170: a(n) = 3*a(n-1) - a(n-2) - 4*a(n-3) + 2*a(n-4) for n >= 4, where a(0) = 2, a(1) = 4, a(2) = 8, a(3) = 16, a(4) = 34, a(5) = 70 .

The programs for A288170, the canonical program `A288170.P4851559337114020066` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288170 has offset 0).

The definition of A288170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288170.P4851559337114020066

`(n+1)%2+2*a(n-1)-3+n` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288170

/-- `(n+1)%2+2*a(n-1)-3+n` -/
def P4851559337114020066.Spec : Prop :=
  ∀ n, P4851559337114020066.a n = A288170 n

theorem P4851559337114020066.correct : P4851559337114020066.Spec := by
  intro n
  simp only [A288170]

end A288170

/-! ## A288170.P10927179263334360891

`and(1, n+1)+2*a(n-1)-3+n` with `a(0)=2, a(1)=4`
-/

namespace A288170.P10927179263334360891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (Nat.land 1 (n + 1) : ℤ) + 2 * a (n - 1) - 3 + (n : ℤ)

end

end A288170.P10927179263334360891

namespace A288170

/-- `and(1, n+1)+2*a(n-1)-3+n` -/
def P10927179263334360891.Spec : Prop :=
  ∀ n, P10927179263334360891.a n = A288170 n

theorem P10927179263334360891.correct : P10927179263334360891.Spec := by
  intro n
  simp only [A288170, Nat.add_sub_cancel, A288170.P10927179263334360891.a, A288170.P4851559337114020066.a, SequenceMachineLib.memo_apply]
  try simp

end A288170

/-! ## A288170.P12093761743812345643

`A122958(n)+A026635(n)`
-/

namespace A288170.P12093761743812345643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n + A026635 n

end

end A288170.P12093761743812345643

namespace A288170

/-- `A122958(n)+A026635(n)` -/
def P12093761743812345643.Spec : Prop :=
  ∀ n, P12093761743812345643.a n = A288170 n

end A288170

/-! ## A288170.P6345574293010660280

`A257198(n+1)+A133140(n)`
-/

namespace A288170.P6345574293010660280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 1) + A133140 n

end

end A288170.P6345574293010660280

namespace A288170

/-- `A257198(n+1)+A133140(n)` -/
def P6345574293010660280.Spec : Prop :=
  ∀ n, P6345574293010660280.a n = A288170 n

end A288170

/-! ## A288170.P15356148473975464023

`A052997(n)+A094373(n)-n`
-/

namespace A288170.P15356148473975464023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 n + (A094373 n - (n : ℤ))

end

end A288170.P15356148473975464023

namespace A288170

/-- `A052997(n)+A094373(n)-n` -/
def P15356148473975464023.Spec : Prop :=
  ∀ n, P15356148473975464023.a n = A288170 n

end A288170

/-! ## A288170.P16679968923938308238

`A081253(n+1)+n-A004273(n)`
-/

namespace A288170.P16679968923938308238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081253 (n + 1) + ((n : ℤ) - A004273 n)

end

end A288170.P16679968923938308238

namespace A288170

/-- `A081253(n+1)+n-A004273(n)` -/
def P16679968923938308238.Spec : Prop :=
  ∀ n, P16679968923938308238.a n = A288170 n

end A288170

/-! ## A288170.P13460326031731391146

`2*(A140106(A052928(n)+1)+a(n-1))` with `a(0)=2`
-/

namespace A288170.P13460326031731391146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A140106 (A052928 n + 1).toNat + a (n - 1))

end

end A288170.P13460326031731391146

namespace A288170

/-- `2*(A140106(A052928(n)+1)+a(n-1))` -/
def P13460326031731391146.Spec : Prop :=
  ∀ n, P13460326031731391146.a n = A288170 n

end A288170

/-! ## A288170.P11181310415587582277

`A138587(2*n+1)+A016116(2*n)-n`
-/

namespace A288170.P11181310415587582277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138587 (2 * n + 1) + (A016116 (2 * n) - (n : ℤ))

end

end A288170.P11181310415587582277

namespace A288170

/-- `A138587(2*n+1)+A016116(2*n)-n` -/
def P11181310415587582277.Spec : Prop :=
  ∀ n, P11181310415587582277.a n = A288170 n

end A288170

/-! ## A288170.P6686907631473853994

`A081253(n+1)-A004526(A004275(n))`
-/

namespace A288170.P6686907631473853994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081253 (n + 1) - A004526 (A004275 n).toNat

end

end A288170.P6686907631473853994

namespace A288170

/-- `A081253(n+1)-A004526(A004275(n))` -/
def P6686907631473853994.Spec : Prop :=
  ∀ n, P6686907631473853994.a n = A288170 n

end A288170

/-! ## A288170.P3755427510331141915

`A000051(n)+A026646(n)-A026644(n)`
-/

namespace A288170.P3755427510331141915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A026646 n - A026644 n)

end

end A288170.P3755427510331141915

namespace A288170

/-- `A000051(n)+A026646(n)-A026644(n)` -/
def P3755427510331141915.Spec : Prop :=
  ∀ n, P3755427510331141915.a n = A288170 n

end A288170

/-! ## A288170.P1848737266102566578

`A084172(n+1)+A132045(n)-A084172(n)`
-/

namespace A288170.P1848737266102566578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084172 (n + 1) + (A132045 n - A084172 n)

end

end A288170.P1848737266102566578

namespace A288170

/-- `A084172(n+1)+A132045(n)-A084172(n)` -/
def P1848737266102566578.Spec : Prop :=
  ∀ n, P1848737266102566578.a n = A288170 n

end A288170

/-! ## A288170.P13385169104970445150

`∑[A001045(n+1)]+2^n-A004526(A004275(n))`
-/

namespace A288170.P13385169104970445150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ) - A004526 (A004275 n).toNat

end

end A288170.P13385169104970445150

namespace A288170

/-- `∑[A001045(n+1)]+2^n-A004526(A004275(n))` -/
def P13385169104970445150.Spec : Prop :=
  ∀ n, P13385169104970445150.a n = A288170 n

end A288170

/-! ## A288170.P10393598902125172518

`A000975(n+1)+A000079(n)-A004526(A004275(n))`
-/

namespace A288170.P10393598902125172518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + A000079 n - A004526 (A004275 n).toNat

end

end A288170.P10393598902125172518

namespace A288170

/-- `A000975(n+1)+A000079(n)-A004526(A004275(n))` -/
def P10393598902125172518.Spec : Prop :=
  ∀ n, P10393598902125172518.a n = A288170 n

end A288170

/-! ## A288170.P16792953443469812298

`A131577(n+1)+A000975(n+1)-A004526(A004275(n))`
-/

namespace A288170.P16792953443469812298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A000975 (n + 1) - A004526 (A004275 n).toNat

end

end A288170.P16792953443469812298

namespace A288170

/-- `A131577(n+1)+A000975(n+1)-A004526(A004275(n))` -/
def P16792953443469812298.Spec : Prop :=
  ∀ n, P16792953443469812298.a n = A288170 n

end A288170

/-! ## A288170.P17250840527894883053

`A000051(n)+A000975(n+1)-1-A004526(A004275(n))`
-/

namespace A288170.P17250840527894883053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000975 (n + 1) - 1) - A004526 (A004275 n).toNat

end

end A288170.P17250840527894883053

namespace A288170

/-- `A000051(n)+A000975(n+1)-1-A004526(A004275(n))` -/
def P17250840527894883053.Spec : Prop :=
  ∀ n, P17250840527894883053.a n = A288170 n

end A288170

/-! ## A288170.P1820363666457754018

`A026646(n+1)-(A084640(n)+A026644(n))`
-/

namespace A288170.P1820363666457754018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 (n + 1) - (A084640 n + A026644 n)

end

end A288170.P1820363666457754018

namespace A288170

/-- `A026646(n+1)-(A084640(n)+A026644(n))` -/
def P1820363666457754018.Spec : Prop :=
  ∀ n, P1820363666457754018.a n = A288170 n

end A288170

/-!
# A288171: Lexicographically earliest sequence of distinct positive terms such that, for any n > 0, a(n)*a(n+3) has at least 5 distinct prime factors.

The programs for A288171, there is no canonical definition to state claims against.
-/

/-! ## A288171.P1019744665654288617

`A335049(A001359(n+1)-A329898(n+1))`
-/

namespace A288171.P1019744665654288617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335049 (A001359 (n + 1) - A329898 (n + 1)).toNat

end

end A288171.P1019744665654288617

/-!
# A288173: Fixed point of the mapping 00->0010, 1->001, starting with 00.

The programs for A288173, there is no canonical definition to state claims against.
-/

/-! ## A288173.P7329823123607640149

`char[A288175(n+1)-1]`
-/

namespace A288173.P7329823123607640149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288175 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288173.P7329823123607640149

/-! ## A288173.P13355806437613747251

`char[comp[A288174(n+1)-1]]`
-/

namespace A288173.P13355806437613747251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288174 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288173.P13355806437613747251

/-! ## A288173.P8318019500734691024

`char[A023443(A288175(n+1))]`
-/

namespace A288173.P8318019500734691024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288175 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288173.P8318019500734691024

/-! ## A288173.P3181293380358390508

`char[abs(A288175(A080513(n))-1)]`
-/

namespace A288173.P3181293380358390508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288175 (A080513 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288173.P3181293380358390508

/-! ## A288173.P17121000545076854587

`char[A023443(comp[A288174(n+1)])]`
-/

namespace A288173.P17121000545076854587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288174 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288173.P17121000545076854587

/-! ## A288173.P1843350796261742374

`A156258(Δ[comp[A288175(n+1)+n]]+1)`
-/

namespace A288173.P1843350796261742374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288175 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288173.P1843350796261742374

/-! ## A288173.P12444601128258162986

`A289026(Δ[comp[A288175(n+1)+n]])-1`
-/

namespace A288173.P12444601128258162986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288175 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A288173.P12444601128258162986

/-!
# A288174: Positions of 0 in A288173; complement of A288175.

The programs for A288174, there is no canonical definition to state claims against.
-/

/-! ## A288174.P14641882601861754163

`comp[A288175(n+1)-1]+1`
-/

namespace A288174.P14641882601861754163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288175 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288174.P14641882601861754163

/-! ## A288174.P5377674925960696879

`eq[0, A288173(n+1)]+1`
-/

namespace A288174.P5377674925960696879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288174.P5377674925960696879

/-! ## A288174.P9280204924189720312

`a(n-1)+A288173(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288174.P9280204924189720312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288173 (a (n - 1) + 1).toNat + 1)

end

end A288174.P9280204924189720312

/-! ## A288174.P9151204067980120134

`lt[n*A288173(A028310(n)), n]`
-/

namespace A288174.P9151204067980120134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288173 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288174.P9151204067980120134

/-! ## A288174.P10198348358884292775

`record[n+1-A000005(n+1)*A288173(n+1)]`
-/

namespace A288174.P10198348358884292775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A288173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288174.P10198348358884292775

/-! ## A288174.P17201944073269577985

`record[n+1-A288173(n+1)*A288175(n+1)]`
-/

namespace A288174.P17201944073269577985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288173 (n + 1) * A288175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288174.P17201944073269577985

/-! ## A288174.P4594710797686110715

`record[gcd(n+1, A288173(n+1)*A344970(n+1))]`
-/

namespace A288174.P4594710797686110715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A288173 (n + 1) * A344970 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288174.P4594710797686110715

/-! ## A288174.P11854269900429823359

`lt[A288173(A028310(n)), A057427(n)]`
-/

namespace A288174.P11854269900429823359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288174.P11854269900429823359

/-!
# A288175: Positions of 1 in A288173; complement of A288174.

The programs for A288175, there is no canonical definition to state claims against.
-/

/-! ## A288175.P14331542857554197780

`filter[n+1, A288173(#)]`
-/

namespace A288175.P14331542857554197780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288173 (f1 j) = 1) n)

end

end A288175.P14331542857554197780

/-! ## A288175.P6559607940547736228

`eq[1, A288173(n+1)]+1`
-/

namespace A288175.P6559607940547736228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288175.P6559607940547736228

/-! ## A288175.P11221174201750901748

`lt[0, A288173(A028310(n))]`
-/

namespace A288175.P11221174201750901748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288175.P11221174201750901748

/-! ## A288175.P16278478098367232323

`A020725(eq[1, A288173(n+1)])`
-/

namespace A288175.P16278478098367232323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288175.P16278478098367232323

/-! ## A288175.P1730169373630546536

`eq[1, A288173(A000007(n)+n)]`
-/

namespace A288175.P1730169373630546536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288175.P1730169373630546536

/-! ## A288175.P7952960766554192994

`A344180(eq[1, A288173(A344180(n))])`
-/

namespace A288175.P7952960766554192994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288175.P7952960766554192994

/-! ## A288175.P14646516688599716360

`eq[1, A288173(A233583(n+1))]`
-/

namespace A288175.P14646516688599716360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288175.P14646516688599716360

/-!
# A288176: a(n) = 2*a(n-1) + 2*a(n-2) - 4*a(n-3) + a(n-4), where a(0) = 2, a(1) = 4, a(2) = 8, a(3) = 16.

The programs for A288176, the canonical program `A288176.P12898660067312382952` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288176 has offset 0).

The definition of A288176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` (program `A288176.P12898660067312382952`, by `A288176.P12898660067312382952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288176.P12898660067312382952

`2*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A288176

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)+a(n-4)` -/
def P12898660067312382952.Spec : Prop :=
  ∀ n, P12898660067312382952.a n = A288176 n

theorem P12898660067312382952.correct : P12898660067312382952.Spec := by
  intro n
  simp only [A288176]

end A288176

/-! ## A288176.P9953115853806134676

`2*∑[3*a(n-2)+a(n-1)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A288176.P9953115853806134676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  3 * f1 (n - 2) + (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288176.P9953115853806134676

namespace A288176

/-- `2*∑[3*a(n-2)+a(n-1)-a(n-3)]` -/
def P9953115853806134676.Spec : Prop :=
  ∀ n, P9953115853806134676.a n = A288176 n

end A288176

/-! ## A288176.P2218503776180300954

`∑[2*A307464(n)]`
-/

namespace A288176.P2218503776180300954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288176.P2218503776180300954

namespace A288176

/-- `∑[2*A307464(n)]` -/
def P2218503776180300954.Spec : Prop :=
  ∀ n, P2218503776180300954.a n = A288176 n

end A288176

/-! ## A288176.P5333283452126480848

`∑[A307464(A028310(n))+A307464(n)]`
-/

namespace A288176.P5333283452126480848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (A028310 n).toNat + A307464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288176.P5333283452126480848

namespace A288176

/-- `∑[A307464(A028310(n))+A307464(n)]` -/
def P5333283452126480848.Spec : Prop :=
  ∀ n, P5333283452126480848.a n = A288176 n

end A288176

/-! ## A288176.P13653068837520656675

`∑[A307464(A000007(n)+n)+A307464(n)]`
-/

namespace A288176.P13653068837520656675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (A000007 n + (n : ℤ)).toNat + A307464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288176.P13653068837520656675

namespace A288176

/-- `∑[A307464(A000007(n)+n)+A307464(n)]` -/
def P13653068837520656675.Spec : Prop :=
  ∀ n, P13653068837520656675.a n = A288176 n

end A288176

/-!
# A288178: Sizes of largest chamber in an n X n lattice complex. Diagonal of table given in A288177.

The programs for A288178, there is no canonical definition to state claims against.
-/

/-! ## A288178.P14293259815045565835

`A130249(A111791(n+1)+A111703(n+1))`
-/

namespace A288178.P14293259815045565835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A111791 (n + 1) + A111703 (n + 1)).toNat

end

end A288178.P14293259815045565835

/-! ## A288178.P10003766096829394111

`A178047(A271346(n+1)+A099544(n+1))`
-/

namespace A288178.P10003766096829394111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (A271346 (n + 1) + A099544 (n + 1)).toNat

end

end A288178.P10003766096829394111

/-! ## A288178.P652625068906392382

`A038605(A341357(n+1)+A090291(n+1))+1`
-/

namespace A288178.P652625068906392382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A341357 (n + 1) + A090291 (n + 1)).toNat + 1

end

end A288178.P652625068906392382

/-! ## A288178.P15794114406632815100

`A211675(A001221(3*n+2)+A000040(n+1))`
-/

namespace A288178.P15794114406632815100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211675 (A001221 (3 * n + 2) + A000040 (n + 1)).toNat

end

end A288178.P15794114406632815100

/-! ## A288178.P5485812841515759788

`A211675(A344652(3*n+2)+A000040(n+1))`
-/

namespace A288178.P5485812841515759788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211675 (A344652 (3 * n + 2) + A000040 (n + 1)).toNat

end

end A288178.P5485812841515759788

/-!
# A288179: Maximum number of vertices of any convex polygon formed in the middle square of the boundary by drawing the line segments connecting any two lattice points in an (2k+1) X (2k+1) lattice polygon.

The programs for A288179, there is no canonical definition to state claims against.
-/

/-! ## A288179.P9246176515914380209

`A102730(A049980(n+1)+A030511(n+3))`
-/

namespace A288179.P9246176515914380209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102730 (A049980 (n + 1) + A030511 (n + 3)).toNat

end

end A288179.P9246176515914380209

/-! ## A288179.P6397289142342383876

`A102730(A270831(n+1)+A057063(3*n+2))`
-/

namespace A288179.P6397289142342383876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102730 (A270831 (n + 1) + A057063 (3 * n + 2)).toNat

end

end A288179.P6397289142342383876

/-!
# A288180: Number of intersection points formed by drawing the line segments connecting any two lattice points of an n X m convex lattice polygon written as triangle T(n,m), n >= 1, 1 <= m <= n.

The programs for A288180, there is no canonical definition to state claims against.
-/

/-! ## A288180.P8483042597008885027

`A333278(n+1)+1-A288187(n+1)`
-/

namespace A288180.P8483042597008885027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333278 (n + 1) + (1 - A288187 (n + 1))

end

end A288180.P8483042597008885027

/-! ## A288180.P11525840069542991127

`A141310(A333278(n+1)-A288187(n+1))`
-/

namespace A288180.P11525840069542991127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A333278 (n + 1) - A288187 (n + 1)).toNat

end

end A288180.P11525840069542991127

/-! ## A288180.P10791054634729907277

`A004442(A333278(n+1)-A288187(n+1))`
-/

namespace A288180.P10791054634729907277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A333278 (n + 1) - A288187 (n + 1)).toNat

end

end A288180.P10791054634729907277

/-! ## A288180.P5612852809459345926

`A020725(A333278(n+1)-A288187(n+1))`
-/

namespace A288180.P5612852809459345926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333278 (n + 1) - A288187 (n + 1)).toNat

end

end A288180.P5612852809459345926

/-! ## A288180.P18348211227960204205

`A065475(A333278(n+1)-A288187(n+1))`
-/

namespace A288180.P18348211227960204205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A333278 (n + 1) - A288187 (n + 1)).toNat

end

end A288180.P18348211227960204205

/-!
# A288181: Occurrence counts of chambers with maximum number of vertices in the chamber complex of an n X m lattice polygon as described in A288177, written as triangle T(n,m), n >= 1, 1 <= m <= n.

The programs for A288181, there is no canonical definition to state claims against.
-/

/-! ## A288181.P16701615628375008749

`lcm(2, A049649(abs((-2)^n+1)))`
-/

namespace A288181.P16701615628375008749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A049649 |(-2) ^ n + 1|.toNat)

end

end A288181.P16701615628375008749

/-!
# A288184: Least odd number k such that the continued fraction for sqrt(k) has period n.

The programs for A288184, there is no canonical definition to state claims against.
-/

/-! ## A288184.P15300221074363817037

`A059800(n+1)-A010816((7*n+1)²)`
-/

namespace A288184.P15300221074363817037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059800 (n + 1) - A010816 ((7 * n + 1) ^ 2)

end

end A288184.P15300221074363817037

/-! ## A288184.P16349399806685534655

`A061397(A140814(n))+A059800(n+1)`
-/

namespace A288184.P16349399806685534655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A140814 n).toNat + A059800 (n + 1)

end

end A288184.P16349399806685534655

/-! ## A288184.P16365072878352065674

`A126013(A059788(n+1))+A059800(n+1)`
-/

namespace A288184.P16365072878352065674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (A059788 (n + 1)).toNat + A059800 (n + 1)

end

end A288184.P16365072878352065674

/-! ## A288184.P14202109306593245754

`A139171(A025065(n+2)*A059800(n+1))`
-/

namespace A288184.P14202109306593245754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (A025065 (n + 2) * A059800 (n + 1)).toNat

end

end A288184.P14202109306593245754

/-! ## A288184.P12037217766210456933

`A061397(A140814(n))+A000040(A338785(n+1))`
-/

namespace A288184.P12037217766210456933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A140814 n).toNat + A000040 (A338785 (n + 1)).toNat

end

end A288184.P12037217766210456933

/-!
# A288186: Numbers k such that the continued fractions for sqrt(k) and sqrt(k+1) have the same period.

The programs for A288186, there is no canonical definition to state claims against.
-/

/-! ## A288186.P12514227576359096006

`eq[A003285(n+2), A003285(n+1)]+1`
-/

namespace A288186.P12514227576359096006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288186.P12514227576359096006

/-! ## A288186.P11061442380134155418

`eq[A067280(n+2), A067280(n+1)]+1`
-/

namespace A288186.P11061442380134155418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288186.P11061442380134155418

/-! ## A288186.P6494927880877476296

`eq[A003285(A028310(n)), A097853(n+1)]`
-/

namespace A288186.P6494927880877476296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288186.P6494927880877476296

/-! ## A288186.P5558906632132013968

`eq[A003285(n+1), A003285(A000038(n)+n)]`
-/

namespace A288186.P5558906632132013968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288186.P5558906632132013968

/-! ## A288186.P3354544831546602477

`eq[A003285(A000007(n)+n), A097853(n+1)]`
-/

namespace A288186.P3354544831546602477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288186.P3354544831546602477

/-! ## A288186.P7713353784821475605

`eq[A003285(A123108(2*n)), A097853(n+1)]`
-/

namespace A288186.P7713353784821475605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288186.P7713353784821475605

/-!
# A288187: Triangle read by rows: T(n,m) (n >= m >= 1) = number of chambers (or regions) formed by drawing the line segments connecting any two of the (n+1) X (m+1) lattice points in an n X m lattice polygon.

The programs for A288187, there is no canonical definition to state claims against.
-/

/-! ## A288187.P17234367222146766641

`A333278(n+1)+1-A288180(n+1)`
-/

namespace A288187.P17234367222146766641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333278 (n + 1) + (1 - A288180 (n + 1))

end

end A288187.P17234367222146766641

/-! ## A288187.P10534383126525332897

`A333278(n+1)-A185048(A288180(n+1))`
-/

namespace A288187.P10534383126525332897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333278 (n + 1) - A185048 (A288180 (n + 1)).toNat

end

end A288187.P10534383126525332897

/-! ## A288187.P12357370911333377077

`A092486(A333278(n+1)-A288180(n+1))`
-/

namespace A288187.P12357370911333377077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A333278 (n + 1) - A288180 (n + 1)).toNat

end

end A288187.P12357370911333377077

/-! ## A288187.P1491002856768939093

`A014681(A333278(n+1)-A288180(n+1))`
-/

namespace A288187.P1491002856768939093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A333278 (n + 1) - A288180 (n + 1)).toNat

end

end A288187.P1491002856768939093

/-! ## A288187.P5595649805806077369

`A020725(A333278(n+1)-A288180(n+1))`
-/

namespace A288187.P5595649805806077369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333278 (n + 1) - A288180 (n + 1)).toNat

end

end A288187.P5595649805806077369

/-!
# A288189: a(n) is the smallest composite number whose sum of prime divisors (with multiplicity) is divisible by prime(n).

The programs for A288189, there is no canonical definition to state claims against.
-/

/-! ## A288189.P8600904467164645103

`A001747(n+1)*A007421(A000110(n))`
-/

namespace A288189.P8600904467164645103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) * A007421 (A000110 n).toNat

end

end A288189.P8600904467164645103

/-! ## A288189.P7820435984420403062

`A008578(n+1)*A074803(A074788(n+1))`
-/

namespace A288189.P7820435984420403062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A074803 (A074788 (n + 1)).toNat

end

end A288189.P7820435984420403062

/-! ## A288189.P948619084460384284

`A008578(n+1)*A153727(A006035(n+1))`
-/

namespace A288189.P948619084460384284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A153727 (A006035 (n + 1)).toNat

end

end A288189.P948619084460384284

/-!
# A288190: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A288190, there is no canonical definition to state claims against.
-/

/-! ## A288190.P8500218231877673870

`A287507(xor(1, n-a(2%n)))` with `a(0)=1`
-/

namespace A288190.P8500218231877673870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287507 (Int.xor 1 ((n : ℤ) - a (2 % n))).toNat

end

end A288190.P8500218231877673870

/-! ## A288190.P14475532066813469671

`A287507(xor(1, abs(A024000(n))))`
-/

namespace A288190.P14475532066813469671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 (Int.xor 1 |A024000 n|).toNat

end

end A288190.P14475532066813469671

/-! ## A288190.P13498707303247054969

`A287507(A014681(n)-ceil(n/(n+1)))`
-/

namespace A288190.P13498707303247054969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 (A014681 n - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

end

end A288190.P13498707303247054969

/-! ## A288190.P11071733218812518414

`A287507(A057428(n)+A014681(n))`
-/

namespace A288190.P11071733218812518414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 (A057428 n + A014681 n).toNat

end

end A288190.P11071733218812518414

/-! ## A288190.P14206002086651347630

`A287507(xor(-A014681(n), A057428(n)))`
-/

namespace A288190.P14206002086651347630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 (Int.xor (-A014681 n) (A057428 n)).toNat

end

end A288190.P14206002086651347630

/-! ## A288190.P8272073643204743864

`A287507((1-A014681(n))*A057428(n))`
-/

namespace A288190.P8272073643204743864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 ((1 - A014681 n) * A057428 n).toNat

end

end A288190.P8272073643204743864

/-!
# A288191: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A288191, there is no canonical definition to state claims against.
-/

/-! ## A288191.P15659135250667372568

`A007088(A288193(n))`
-/

namespace A288191.P15659135250667372568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288193 n).toNat

end

end A288191.P15659135250667372568

/-! ## A288191.P2818954741715958066

`A185544(2*A288193(n))`
-/

namespace A288191.P2818954741715958066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288193 n).toNat

end

end A288191.P2818954741715958066

/-! ## A288191.P8390203026000716404

`A185544(A288193(n)+A288193(n))`
-/

namespace A288191.P8390203026000716404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288193 n + A288193 n).toNat

end

end A288191.P8390203026000716404

/-!
# A288192: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A288192, there is no canonical definition to state claims against.
-/

/-! ## A288192.P4094214070531315634

`A287509(xor(1, n-a(2%n)))` with `a(0)=1`
-/

namespace A288192.P4094214070531315634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287509 (Int.xor 1 ((n : ℤ) - a (2 % n))).toNat

end

end A288192.P4094214070531315634

/-! ## A288192.P9277733195885270252

`A287509(xor(1, n-A158388(n)))`
-/

namespace A288192.P9277733195885270252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287509 (Int.xor 1 ((n : ℤ) - A158388 n)).toNat

end

end A288192.P9277733195885270252

/-! ## A288192.P1058651420757143637

`A287509(A014681(n)-ceil(n/(n+1)))`
-/

namespace A288192.P1058651420757143637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287509 (A014681 n - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

end

end A288192.P1058651420757143637

/-! ## A288192.P8236123720332892888

`A287509(A057428(n)+A014681(n))`
-/

namespace A288192.P8236123720332892888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287509 (A057428 n + A014681 n).toNat

end

end A288192.P8236123720332892888

/-! ## A288192.P16693702840998750135

`A287509((1-A014681(n))*A057428(n))`
-/

namespace A288192.P16693702840998750135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287509 ((1 - A014681 n) * A057428 n).toNat

end

end A288192.P16693702840998750135

/-!
# A288193: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A288193, there is no canonical definition to state claims against.
-/

/-! ## A288193.P15092294696216477772

`and(A005408(A285543(n)), A285547(n))`
-/

namespace A288193.P15092294696216477772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A285543 n).toNat) (A285547 n)

end

end A288193.P15092294696216477772

/-! ## A288193.P5565693114049747812

`and(A005408(A285563(n)), A285547(n))`
-/

namespace A288193.P5565693114049747812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A285563 n).toNat) (A285547 n)

end

end A288193.P5565693114049747812

/-!
# A288194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A288194, the canonical program `A288194.P11979238916523902207` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288194 has offset 0).

The definition of A288194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288194.P11979238916523902207

`A286863(n)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288194

/-- `A286863(n)-a(n-1)` -/
def P11979238916523902207.Spec : Prop :=
  ∀ n, P11979238916523902207.a n = A288194 n

theorem P11979238916523902207.correct : P11979238916523902207.Spec := by
  intro n
  simp only [A288194]

end A288194

/-! ## A288194.P5929046501879978815

`and(A286863(n), A288196(5*n))`
-/

namespace A288194.P5929046501879978815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286863 n) (A288196 (5 * n))

end

end A288194.P5929046501879978815

namespace A288194

/-- `and(A286863(n), A288196(5*n))` -/
def P5929046501879978815.Spec : Prop :=
  ∀ n, P5929046501879978815.a n = A288194 n

end A288194

/-! ## A288194.P7631382742272941756

`and(A280173(A008486(n)), A286863(n))`
-/

namespace A288194.P7631382742272941756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280173 (A008486 n).toNat) (A286863 n)

end

end A288194.P7631382742272941756

namespace A288194

/-- `and(A280173(A008486(n)), A286863(n))` -/
def P7631382742272941756.Spec : Prop :=
  ∀ n, P7631382742272941756.a n = A288194 n

end A288194

/-! ## A288194.P14980141852420376473

`gcd(A286863(n)-A011629(n²), n%2)`
-/

namespace A288194.P14980141852420376473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286863 n - A011629 (n ^ 2)) ((n % 2 : ℕ) : ℤ)

end

end A288194.P14980141852420376473

namespace A288194

/-- `gcd(A286863(n)-A011629(n²), n%2)` -/
def P14980141852420376473.Spec : Prop :=
  ∀ n, (P14980141852420376473.a n : ℤ) = A288194 n

end A288194

/-!
# A288195: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A288195, there is no canonical definition to state claims against.
-/

/-! ## A288195.P6965923427323897182

`A007088(A288197(n))`
-/

namespace A288195.P6965923427323897182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288197 n).toNat

end

end A288195.P6965923427323897182

/-! ## A288195.P16485201694614382411

`A007088(and(A280173(n), A286866(n)))`
-/

namespace A288195.P16485201694614382411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A280173 n) (A286866 n)).toNat

end

end A288195.P16485201694614382411

/-! ## A288195.P6257627606683055759

`A007088(and(-A289370(n), A095121(n)))`
-/

namespace A288195.P6257627606683055759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289370 n) (A095121 n)).toNat

end

end A288195.P6257627606683055759

/-! ## A288195.P11496320891618473031

`A007088(and(-A289370(n), A122746(n)))`
-/

namespace A288195.P11496320891618473031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289370 n) (A122746 n)).toNat

end

end A288195.P11496320891618473031

/-! ## A288195.P15375760296765567666

`A007088(and(-A289370(n), A283353(n)))`
-/

namespace A288195.P15375760296765567666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289370 n) (A283353 n)).toNat

end

end A288195.P15375760296765567666

/-!
# A288196: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A288196, the canonical program `A288196.P410680095994228574` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288196 has offset 0).

The definition of A288196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288196.P410680095994228574

`A286865(n)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288196

/-- `A286865(n)-a(n-1)` -/
def P410680095994228574.Spec : Prop :=
  ∀ n, P410680095994228574.a n = A288196 n

theorem P410680095994228574.correct : P410680095994228574.Spec := by
  intro n
  simp only [A288196]

end A288196

/-! ## A288196.P15999140563931902259

`gcd(1-A290862(n), A277929(n))`
-/

namespace A288196.P15999140563931902259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A290862 n) (A277929 n)

end

end A288196.P15999140563931902259

namespace A288196

/-- `gcd(1-A290862(n), A277929(n))` -/
def P15999140563931902259.Spec : Prop :=
  ∀ n, (P15999140563931902259.a n : ℤ) = A288196 n

end A288196

/-! ## A288196.P10057961527015149849

`gcd(A290862(n)-1, A277936(n))`
-/

namespace A288196.P10057961527015149849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290862 n - 1) (A277936 n)

end

end A288196.P10057961527015149849

namespace A288196

/-- `gcd(A290862(n)-1, A277936(n))` -/
def P10057961527015149849.Spec : Prop :=
  ∀ n, (P10057961527015149849.a n : ℤ) = A288196 n

end A288196

/-! ## A288196.P14488917694128149196

`xor(1, A290862(n)%A290863(n))`
-/

namespace A288196.P14488917694128149196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A290862 n) (A290863 n))

end

end A288196.P14488917694128149196

namespace A288196

/-- `xor(1, A290862(n)%A290863(n))` -/
def P14488917694128149196.Spec : Prop :=
  ∀ n, P14488917694128149196.a n = A288196 n

end A288196

/-! ## A288196.P8446985839914826383

`A126646(n)%A289268(A028310(n))`
-/

namespace A288196.P8446985839914826383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289268 (A028310 n).toNat)

end

end A288196.P8446985839914826383

namespace A288196

/-- `A126646(n)%A289268(A028310(n))` -/
def P8446985839914826383.Spec : Prop :=
  ∀ n, P8446985839914826383.a n = A288196 n

end A288196

/-! ## A288196.P11210803338931870943

`A000007(n)+A126646(n)-A289268(n)`
-/

namespace A288196.P11210803338931870943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289268 n)

end

end A288196.P11210803338931870943

namespace A288196

/-- `A000007(n)+A126646(n)-A289268(n)` -/
def P11210803338931870943.Spec : Prop :=
  ∀ n, P11210803338931870943.a n = A288196 n

end A288196

/-! ## A288196.P7441716118543097531

`and(A280173(n), A286865(n))`
-/

namespace A288196.P7441716118543097531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280173 n) (A286865 n)

end

end A288196.P7441716118543097531

namespace A288196

/-- `and(A280173(n), A286865(n))` -/
def P7441716118543097531.Spec : Prop :=
  ∀ n, P7441716118543097531.a n = A288196 n

end A288196

/-!
# A288197: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A288197, there is no canonical definition to state claims against.
-/

/-! ## A288197.P9294353765571719111

`and(-A289370(n), A095121(n))`
-/

namespace A288197.P9294353765571719111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289370 n) (A095121 n)

end

end A288197.P9294353765571719111

/-! ## A288197.P2888193530549171946

`and(-A289370(n), A286866(n))`
-/

namespace A288197.P2888193530549171946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289370 n) (A286866 n)

end

end A288197.P2888193530549171946

/-! ## A288197.P16687285722559359528

`and(or(1, A166920(n)), A286866(n))`
-/

namespace A288197.P16687285722559359528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 1 (A166920 n)) (A286866 n)

end

end A288197.P16687285722559359528

/-! ## A288197.P12888758785143210457

`xor(record[A324821(n+1)], A289370(n))`
-/

namespace A288197.P12888758785143210457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289370 n)

end

end A288197.P12888758785143210457

/-! ## A288197.P8134784016157965788

`A290863(n)-A051049(n)%A126646(n)`
-/

namespace A288197.P8134784016157965788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290863 n - Int.tmod (A051049 n) (A126646 n)

end

end A288197.P8134784016157965788

/-! ## A288197.P438071692497125668

`and(A290863(n)-A000225(n), A290863(n))`
-/

namespace A288197.P438071692497125668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290863 n - A000225 n) (A290863 n)

end

end A288197.P438071692497125668

/-! ## A288197.P17724698532112029371

`and(A280173(n), A286866(n))`
-/

namespace A288197.P17724698532112029371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280173 n) (A286866 n)

end

end A288197.P17724698532112029371

/-! ## A288197.P2166864973073218835

`and(A201630(n)-1, A290863(n))`
-/

namespace A288197.P2166864973073218835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201630 n - 1) (A290863 n)

end

end A288197.P2166864973073218835

/-!
# A288198: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A288198, there is no canonical definition to state claims against.
-/

/-! ## A288198.P1249452944580673567

`A007088(A288201(n))`
-/

namespace A288198.P1249452944580673567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288201 n).toNat

end

end A288198.P1249452944580673567

/-! ## A288198.P17173113306714938768

`A185544(2*A288201(n))`
-/

namespace A288198.P17173113306714938768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288201 n).toNat

end

end A288198.P17173113306714938768

/-! ## A288198.P3059466758614959147

`A000027(A288328(n))`
-/

namespace A288198.P3059466758614959147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A288328 n).toNat

end

end A288198.P3059466758614959147

