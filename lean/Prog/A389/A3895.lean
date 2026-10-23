import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A389500: Powerful numbers whose number of powerful divisors is also a powerful number.

The programs for A389500, there is no canonical definition to state claims against.
-/

/-! ## A389500.P9112392873307915552

`∩[A001597(n+1), A389499(n+1)]`
-/

namespace A389500.P9112392873307915552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389500.P9112392873307915552

/-! ## A389500.P14425706051318757366

`∩[A001694(n+1), A389499(n+1)]`
-/

namespace A389500.P14425706051318757366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389500.P14425706051318757366

/-! ## A389500.P11151564966034859138

`∩[A144548(n+1), A368812(n+1)]`
-/

namespace A389500.P11151564966034859138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389500.P11151564966034859138

/-!
# A389501: Numbers whose coreful divisors have a noninteger arithmetic mean.

The programs for A389501, there is no canonical definition to state claims against.
-/

/-! ## A389501.P3970984520212611325

`A361825(A226453(n+1))`
-/

namespace A389501.P3970984520212611325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361825 (A226453 (n + 1)).toNat

end

end A389501.P3970984520212611325

/-! ## A389501.P14821017352967352984

`filter[A219547(n+1), A100810(#)]`
-/

namespace A389501.P14821017352967352984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100810 (f1 j).toNat = 1) n)

end

end A389501.P14821017352967352984

/-! ## A389501.P3530275413985842908

`filter[A219547(n+1), A105470(#)]`
-/

namespace A389501.P3530275413985842908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A389501.P3530275413985842908

/-! ## A389501.P3901053372063611563

`filter[A219547(n+1), A248392(#)]`
-/

namespace A389501.P3901053372063611563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A389501.P3901053372063611563

/-!
# A389502: Primitive terms in A389501: powerful numbers whose coreful divisors have a noninteger arithmetic mean.

The programs for A389502, there is no canonical definition to state claims against.
-/

/-! ## A389502.P357068435466397495

`∩[A001694(n+1), A389501(n+1)]`
-/

namespace A389502.P357068435466397495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389502.P357068435466397495

/-! ## A389502.P15328542879064835040

`∩[A320966(n+1), A389501(n+1)]`
-/

namespace A389502.P15328542879064835040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389502.P15328542879064835040

/-! ## A389502.P17585756112337142884

`∩[A389501(n+1), A393924(n+1)]`
-/

namespace A389502.P17585756112337142884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389502.P17585756112337142884

/-! ## A389502.P7735186733248286996

`filter[A389501(n+1), A112526(#)]`
-/

namespace A389502.P7735186733248286996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A389502.P7735186733248286996

/-! ## A389502.P3868252441440075294

`∩[A318612(n+1), A389501(n+1)]`
-/

namespace A389502.P3868252441440075294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389502.P3868252441440075294

/-!
# A389503: a(n) = Sum_{i=1..n} (Product_{j=1..n} M(j, ((i+j-2) mod n)+1) - Product_{j=1..n} M(j, ((i-j-1) mod n)+1)) where M is an n X n Toeplitz matrix whose first row consists of successive positive integer numbers 1, ..., n and whose first column consists of 1, n + 1, ..., 2*n - 1.

The programs for A389503, there is no canonical definition to state claims against.
-/

/-! ## A389503.P15026472028795875330

`A105516(A187050(n+1))`
-/

namespace A389503.P15026472028795875330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A187050 (n + 1)).toNat

end

end A389503.P15026472028795875330

/-!
# A389507: Largest even number that is not the sum of two elements coprime to the primorial prime(n)# and each bounded by prime(n)#.

The programs for A389507, there is no canonical definition to state claims against.
-/

/-! ## A389507.P3751432397155269510

`A002110(n+2)-A389506(n+2)`
-/

namespace A389507.P3751432397155269510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 2) - A389506 (n + 2)

end

end A389507.P3751432397155269510

/-!
# A389508: Number of integer compositions of n with no maximal runs of the form (k)^k for any k.

The programs for A389508, there is no canonical definition to state claims against.
-/

/-! ## A389508.P8202645370857536261

`A012265(A164262(n))`
-/

namespace A389508.P8202645370857536261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A164262 n).toNat

end

end A389508.P8202645370857536261

/-! ## A389508.P8598404549152802319

`A057574(n)-A000720(A048793(n+1))`
-/

namespace A389508.P8598404549152802319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n - A000720 (A048793 (n + 1)).toNat

end

end A389508.P8598404549152802319

/-! ## A389508.P13022362443637684197

`A057574(n)-A000523(A177226(n+1))`
-/

namespace A389508.P13022362443637684197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n - A000523 (A177226 (n + 1)).toNat

end

end A389508.P13022362443637684197

/-!
# A389509: Number of integer compositions of n whose maximal runs R all satisfy length(R) >= first(R).

The programs for A389509, there is no canonical definition to state claims against.
-/

/-! ## A389509.P17782227297845241522

`A000196(A363143(n))`
-/

namespace A389509.P17782227297845241522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A363143 n).toNat

end

end A389509.P17782227297845241522

/-! ## A389509.P230321042630333949

`A093697(A000930(n))`
-/

namespace A389509.P230321042630333949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A000930 n).toNat

end

end A389509.P230321042630333949

/-! ## A389509.P11325077840918248164

`A085761(A189583(n+1))`
-/

namespace A389509.P11325077840918248164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A189583 (n + 1)).toNat

end

end A389509.P11325077840918248164

/-! ## A389509.P18363452287718665332

`A293754(A078620(n+1))`
-/

namespace A389509.P18363452287718665332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A078620 (n + 1)).toNat

end

end A389509.P18363452287718665332

/-! ## A389509.P12953067906211856279

`A093697(A352042(n+1))`
-/

namespace A389509.P12953067906211856279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A352042 (n + 1)).toNat

end

end A389509.P12953067906211856279

/-!
# A389510: Number of integer compositions of n in which runs of 1's all have length <= 1, runs of 2's all have length <= 2, runs of 3's all have length <= 3, etc.

The programs for A389510, there is no canonical definition to state claims against.
-/

/-! ## A389510.P3332201249542519535

`A195796(A036615(n))`
-/

namespace A389510.P3332201249542519535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195796 (A036615 n).toNat

end

end A389510.P3332201249542519535

/-! ## A389510.P13061737311368408787

`A083375(A279565(n))`
-/

namespace A389510.P13061737311368408787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A279565 n).toNat

end

end A389510.P13061737311368408787

/-! ## A389510.P406871945268041448

`A083375(A279566(n))`
-/

namespace A389510.P406871945268041448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A279566 n).toNat

end

end A389510.P406871945268041448

/-! ## A389510.P7358242487659032547

`A173153(A239553(n))`
-/

namespace A389510.P7358242487659032547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173153 (A239553 n).toNat

end

end A389510.P7358242487659032547

/-! ## A389510.P17796931936167552141

`A083375(A389411(n))`
-/

namespace A389510.P17796931936167552141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A389411 n).toNat

end

end A389510.P17796931936167552141

/-!
# A389513: Standard composition numbers of compositions whose maximal runs R all satisfy length(R) >= first(R).

The programs for A389513, there is no canonical definition to state claims against.
-/

/-! ## A389513.P4084317577328544521

`eq[A056977(n+1), A389600(n)]`
-/

namespace A389513.P4084317577328544521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389513.P4084317577328544521

/-! ## A389513.P7575302287774888995

`eq[A139352(A023416(n)), A389600(n)]`
-/

namespace A389513.P7575302287774888995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A023416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389513.P7575302287774888995

/-! ## A389513.P12887824333831964070

`eq[A285097(A003602(n+1)), A389600(n)]`
-/

namespace A389513.P12887824333831964070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389513.P12887824333831964070

/-! ## A389513.P15269042815811885109

`eq[Δ[A374992(n)], A374997(2*n+1)]`
-/

namespace A389513.P15269042815811885109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374997 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A389513.P15269042815811885109

/-! ## A389513.P16758511753229298500

`eq[A114611(2*(n+1)), A316477(A000120(3*(n+1)))]`
-/

namespace A389513.P16758511753229298500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316477 (A000120 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389513.P16758511753229298500

/-!
# A389515: Standard composition numbers of compositions whose maximal runs R all satisfy length(R) > first(R).

The programs for A389515, there is no canonical definition to state claims against.
-/

/-! ## A389515.P13243881481108234385

`eq[A046897(n+1), A075017(n+1)]`
-/

namespace A389515.P13243881481108234385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389515.P13243881481108234385

/-! ## A389515.P17207863247627364221

`eq[A073181(n+1), A075017(n+1)]`
-/

namespace A389515.P17207863247627364221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389515.P17207863247627364221

/-! ## A389515.P3094977254410361800

`eq[A075017(n+1), A183100(n+1)]`
-/

namespace A389515.P3094977254410361800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389515.P3094977254410361800

/-!
# A389516: Standard composition numbers of compositions whose maximal runs R all satisfy length(R) < first(R).

The programs for A389516, there is no canonical definition to state claims against.
-/

/-! ## A389516.P8578993763316165390

`∩[A389514(n+1), A389531(n+1)]`
-/

namespace A389516.P8578993763316165390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389516.P8578993763316165390

/-! ## A389516.P6490260235898005897

`eq[A352515(n), A358758(n)]`
-/

namespace A389516.P6490260235898005897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389516.P6490260235898005897

/-! ## A389516.P11173656292999768594

`lt[A335474(n), A000196(A124771(3*n+1))]`
-/

namespace A389516.P11173656292999768594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A124771 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389516.P11173656292999768594

/-! ## A389516.P2005073704518220909

`lt[A034691(A335458(n)), A124771(3*n+1)]`
-/

namespace A389516.P2005073704518220909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034691 (A335458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389516.P2005073704518220909

/-! ## A389516.P9533159850961972850

`lt[A000384(A255445(n)), A255445(3*n+1)]`
-/

namespace A389516.P9533159850961972850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A255445 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255445 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389516.P9533159850961972850

/-!
# A389517: Number of ways to write 2*n as an unordered sum of four primes with square indices.

The programs for A389517, there is no canonical definition to state claims against.
-/

/-! ## A389517.P4010845774474926312

`and(A044934(n+1), A118936(n+1))`
-/

namespace A389517.P4010845774474926312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044934 (n + 1)) (A118936 (n + 1))

end

end A389517.P4010845774474926312

/-! ## A389517.P17329885872966796776

`A001222(3*n+4)%A006928(A135894(n))`
-/

namespace A389517.P17329885872966796776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (3 * n + 4)) (A006928 (A135894 n).toNat)

end

end A389517.P17329885872966796776

/-! ## A389517.P4863620906134545157

`A374117(A291102(n+2))`
-/

namespace A389517.P4863620906134545157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 (A291102 (n + 2)).toNat

end

end A389517.P4863620906134545157

/-! ## A389517.P443647410534550833

`val(A139566(A127126(n)), 8)`
-/

namespace A389517.P443647410534550833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139566 (A127126 n).toNat).toNat 8

end

end A389517.P443647410534550833

/-! ## A389517.P15567037414822954363

`and(A044934(n+1), A215663(n+1))`
-/

namespace A389517.P15567037414822954363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044934 (n + 1)) (A215663 (n + 1))

end

end A389517.P15567037414822954363

/-!
# A389522: Continued fraction expansion of 3*Sum_{k>=0} 6^(-2^k).

The programs for A389522, there is no canonical definition to state claims against.
-/

/-! ## A389522.P1629287317200247186

`A388655(n)%3`
-/

namespace A389522.P1629287317200247186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A388655 n) 3

end

end A389522.P1629287317200247186

/-!
# A389523: Number of ways to write n as 2*x^2 + 2*y^2 + z^2 + w^2 with x <= y and z <= w, where x,y,z,w are elements of the set {m >= 0: 2*m is zero or practical}.

The programs for A389523, there is no canonical definition to state claims against.
-/

/-! ## A389523.P14128579282426583734

`A211100(A000265(n+1)^A329312(n+1))`
-/

namespace A389523.P14128579282426583734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A329312 (n + 1) : ℤ))).toNat

end

end A389523.P14128579282426583734

/-! ## A389523.P1515367322915861620

`A211100(A072963(n+1)^A329312(n+1))`
-/

namespace A389523.P1515367322915861620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway ((A072963 (n + 1) : ℚ) ^ (A329312 (n + 1) : ℤ))).toNat

end

end A389523.P1515367322915861620

/-! ## A389523.P6989173573087551333

`A393611(A135493(n))`
-/

namespace A389523.P6989173573087551333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393611 (A135493 n).toNat

end

end A389523.P6989173573087551333

/-! ## A389523.P12229099827332868406

`A354582(A301758(n+1))`
-/

namespace A389523.P12229099827332868406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A301758 (n + 1)).toNat

end

end A389523.P12229099827332868406

/-! ## A389523.P6474618253539271276

`A124767(A008585(n)+A006401(n))`
-/

namespace A389523.P6474618253539271276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A008585 n + A006401 n).toNat

end

end A389523.P6474618253539271276

/-!
# A389524: Triangle read by rows. T(1, 1) = 1, T(n, k) = [n >= k](1 + Sum_{i=1..k-1} T(n - i, k - 1) - Sum_{i=1..n-1} T(n - i, k)).

The programs for A389524, there is no canonical definition to state claims against.
-/

/-! ## A389524.P3598802877350557214

`A128132(n+1)%A022785(A014551(n))`
-/

namespace A389524.P3598802877350557214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128132 (n + 1)) (A022785 (A014551 n).toNat)

end

end A389524.P3598802877350557214

/-!
# A389525: Number of ways to write 2*n + 1 as prime(i^2) + prime(j^2) + prime(k^2) + 2*prime(m^2) with i >= j >= k >= m >= 1.

The programs for A389525, there is no canonical definition to state claims against.
-/

/-! ## A389525.P12263338241566140727

`and(A111747(n+1), A144605(n))`
-/

namespace A389525.P12263338241566140727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111747 (n + 1)) (A144605 n)

end

end A389525.P12263338241566140727

/-! ## A389525.P1224137839179648909

`A373183(A358631(A373183(A358612(2*n))))`
-/

namespace A389525.P1224137839179648909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373183 (A358631 (A373183 (A358612 (2 * n)).toNat).toNat).toNat

end

end A389525.P1224137839179648909

/-! ## A389525.P2786704134783707494

`and(A144605(n), A294703(n))`
-/

namespace A389525.P2786704134783707494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144605 n) (A294703 n)

end

end A389525.P2786704134783707494

/-! ## A389525.P7832413293527574382

`and(A144605(n), A340776(n))`
-/

namespace A389525.P7832413293527574382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144605 n) (A340776 n)

end

end A389525.P7832413293527574382

/-! ## A389525.P17897230823341792175

`A289035(A359750(n+1))`
-/

namespace A389525.P17897230823341792175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A359750 (n + 1)).toNat

end

end A389525.P17897230823341792175

/-!
# A389528: Numbers in A024619 that exceed the square of their squarefree kernel.

The programs for A389528, there is no canonical definition to state claims against.
-/

/-! ## A389528.P1406548642757106803

`∪[A366250(n+1), A372404(n+1)]`
-/

namespace A389528.P1406548642757106803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P1406548642757106803

/-! ## A389528.P3737253969515140479

`∪[A372404(n+1), A389752(n+1)]`
-/

namespace A389528.P3737253969515140479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P3737253969515140479

/-! ## A389528.P16574445750518465181

`∪[A372404(n+1), A389753(n+1)]`
-/

namespace A389528.P16574445750518465181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P16574445750518465181

/-! ## A389528.P255870703655878687

`∪[A372695(n+1), A389752(n+1)]`
-/

namespace A389528.P255870703655878687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P255870703655878687

/-! ## A389528.P9757894180754770017

`∪[A376936(n+1), A389752(n+1)]`
-/

namespace A389528.P9757894180754770017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P9757894180754770017

/-! ## A389528.P3242773017434878040

`∩[A059172(n+1), A370266(n+1)]`
-/

namespace A389528.P3242773017434878040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P3242773017434878040

/-! ## A389528.P7222571170254787317

`∩[A059172(n+1), A361098(n+1)]`
-/

namespace A389528.P7222571170254787317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P7222571170254787317

/-! ## A389528.P11967965157794226500

`filter[A059172(n+1), A355447(#)]`
-/

namespace A389528.P11967965157794226500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A389528.P11967965157794226500

/-! ## A389528.P5059473266655090551

`filter[A370266(n+1), A380439(#)]`
-/

namespace A389528.P5059473266655090551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389528.P5059473266655090551

/-! ## A389528.P11279006903954018960

`filter[A361098(n+1), A380439(#)]`
-/

namespace A389528.P11279006903954018960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389528.P11279006903954018960

/-! ## A389528.P12571557593461697537

`filter[A360768(n+1), A380439(#)]`
-/

namespace A389528.P12571557593461697537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389528.P12571557593461697537

/-! ## A389528.P12383703942009690887

`∩[A059172(n+1), A360768(n+1)]`
-/

namespace A389528.P12383703942009690887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P12383703942009690887

/-! ## A389528.P16969386231288610957

`filter[A378767(n+1), A380439(#)]`
-/

namespace A389528.P16969386231288610957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389528.P16969386231288610957

/-! ## A389528.P17564447533798292731

`filter[A378767(n+1), A380440(#)]`
-/

namespace A389528.P17564447533798292731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A389528.P17564447533798292731

/-! ## A389528.P8492038504603416756

`∩[A059172(n+1), A378767(n+1)]`
-/

namespace A389528.P8492038504603416756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P8492038504603416756

/-! ## A389528.P10364656834031848685

`∩[A341645(n+1), A378767(n+1)]`
-/

namespace A389528.P10364656834031848685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P10364656834031848685

/-! ## A389528.P3323787622584273156

`∩[A370266(n+1), A378767(n+1)]`
-/

namespace A389528.P3323787622584273156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P3323787622584273156

/-! ## A389528.P3956036556848085465

`∩[A046099(n+1), A370266(n+1)]`
-/

namespace A389528.P3956036556848085465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P3956036556848085465

/-! ## A389528.P11038883842042792081

`filter[A378878(n+1), A380439(#)]`
-/

namespace A389528.P11038883842042792081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389528.P11038883842042792081

/-! ## A389528.P8450299563006565257

`∩[A059172(n+1), A378878(n+1)]`
-/

namespace A389528.P8450299563006565257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389528.P8450299563006565257

/-!
# A389530: Standard composition numbers of compositions whose maximal runs all belong to {(1), (2,2), (3,3,3), ...}.

The programs for A389530, there is no canonical definition to state claims against.
-/

/-! ## A389530.P2852696614827044136

`A353402(lt[A023172(n+1), A008439(n+1)])`
-/

namespace A389530.P2852696614827044136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389530.P2852696614827044136

/-! ## A389530.P14692898713075854370

`A353402(lt[A019568(n), A369762(3*n+4)])`
-/

namespace A389530.P14692898713075854370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369762 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389530.P14692898713075854370

/-!
# A389532: Standard composition numbers of integer compositions with maximum = length.

The programs for A389532, there is no canonical definition to state claims against.
-/

/-! ## A389532.P10753604552045848373

`eq[1-(val(n, 2)-a(n-1)), A087117(n)]` with `a(0)=2, a(1)=0`
-/

namespace A389532.P10753604552045848373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P10753604552045848373

/-! ## A389532.P15314748874480238162

`eq[A087117(n)+1, A000120(n)]`
-/

namespace A389532.P15314748874480238162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P15314748874480238162

/-! ## A389532.P7673378574512474768

`eq[A087117(n)+1, val(A102377(n), 2)]`
-/

namespace A389532.P7673378574512474768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A389532.P7673378574512474768

/-! ## A389532.P6247636988102732999

`eq[val(A246037(n), 2)-1, A087117(n)]`
-/

namespace A389532.P6247636988102732999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A246037 n).toNat 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P6247636988102732999

/-! ## A389532.P18395253109343068885

`eq[A087117(n)+1, A070939(n)-A023416(n)]`
-/

namespace A389532.P18395253109343068885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P18395253109343068885

/-! ## A389532.P43253052878415860

`eq[(A087117(n)+1)%(n+1), A005361(A048883(n))]`
-/

namespace A389532.P43253052878415860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 n + 1) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A048883 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P43253052878415860

/-!
# A389533: a(n) is the largest number m in base n such that the digits of the pair (m, 2*m) use every digit in base n exactly once; a(n) = 0 if no such number exists.

The programs for A389533, there is no canonical definition to state claims against.
-/

/-! ## A389533.P1144965678644513425

`A238525(A000079(2*n+3)-A383751(3*n))`
-/

namespace A389533.P1144965678644513425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (A000079 (2 * n + 3) - A383751 (3 * n)).toNat

end

end A389533.P1144965678644513425

/-!
# A389534: Length of shortest loop (in Chebyshev distance) that touches all cells in an n X n grid.

The programs for A389534, there is no canonical definition to state claims against.
-/

/-! ## A389534.P13995234223162476081

`A225668(A333497(n+1))`
-/

namespace A389534.P13995234223162476081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225668 (A333497 (n + 1)).toNat

end

end A389534.P13995234223162476081

/-! ## A389534.P7295155798462982739

`A173711(A184750(n+2))`
-/

namespace A389534.P7295155798462982739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A184750 (n + 2)).toNat

end

end A389534.P7295155798462982739

/-! ## A389534.P17033630995773403805

`∑[∑[A275895(A227345(3*(n+1)))]]`
-/

namespace A389534.P17033630995773403805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A227345 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389534.P17033630995773403805

/-! ## A389534.P5213784560692846214

`A004137(n+1)-A133620(A000040(n+1))`
-/

namespace A389534.P5213784560692846214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (n + 1) - A133620 (A000040 (n + 1)).toNat

end

end A389534.P5213784560692846214

/-!
# A389538: G.f. A(x) satisfies A( x*A(x) - A(x)^2 ) + A(x)^3 = 0.

The programs for A389538, there is no canonical definition to state claims against.
-/

/-! ## A389538.P13465146561926728144

`A000027(A063021(n+1))`
-/

namespace A389538.P13465146561926728144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A063021 (n + 1)).toNat

end

end A389538.P13465146561926728144

/-! ## A389538.P15739942783024987773

`A063021(A043318(n+1))`
-/

namespace A389538.P15739942783024987773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063021 (A043318 (n + 1)).toNat

end

end A389538.P15739942783024987773

/-! ## A389538.P16506296461607512284

`A063021(A044915(n+1))`
-/

namespace A389538.P16506296461607512284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063021 (A044915 (n + 1)).toNat

end

end A389538.P16506296461607512284

/-! ## A389538.P17183903314881128800

`A063021(A161951(n+1))`
-/

namespace A389538.P17183903314881128800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063021 (A161951 (n + 1)).toNat

end

end A389538.P17183903314881128800

/-! ## A389538.P4799002474862924013

`A000027(A392209(n+1))`
-/

namespace A389538.P4799002474862924013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A392209 (n + 1)).toNat

end

end A389538.P4799002474862924013

/-!
# A389539: Maximum number of edges blocked from infinity by n vertices of a hexagonal grid.

The programs for A389539, there is no canonical definition to state claims against.
-/

/-! ## A389539.P4064767722592625125

`∑[floor(a(a(n-3)))]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A389539.P4064767722592625125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n f1 =>
  f1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A389539.P4064767722592625125

/-! ## A389539.P15692221388130357148

`A047932(A001399(n))`
-/

namespace A389539.P15692221388130357148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047932 (A001399 n).toNat

end

end A389539.P15692221388130357148

/-! ## A389539.P1684596525543372524

`A047932(A008756(n))`
-/

namespace A389539.P1684596525543372524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047932 (A008756 n).toNat

end

end A389539.P1684596525543372524

/-! ## A389539.P12905991261239956617

`A047932(A008757(n))`
-/

namespace A389539.P12905991261239956617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047932 (A008757 n).toNat

end

end A389539.P12905991261239956617

/-! ## A389539.P14047167242286883654

`A047932(A008758(n))`
-/

namespace A389539.P14047167242286883654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047932 (A008758 n).toNat

end

end A389539.P14047167242286883654

/-!
# A389542: G.f. A(x) satisfies A( A(x)^2 - x^2 ) = 4*A(x)^3.

The programs for A389542, there is no canonical definition to state claims against.
-/

/-! ## A389542.P18376896793569192466

`A228803(A055882(n))`
-/

namespace A389542.P18376896793569192466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228803 (A055882 n).toNat

end

end A389542.P18376896793569192466

/-!
# A389544: a(n) is the smallest integer greater than a(n-1) such that all consecutive products in a(1)..a(n) are distinct, with a(1) = 2.

The programs for A389544, there is no canonical definition to state claims against.
-/

/-! ## A389544.P13968824391208808625

`eq[char[A390848(n+1)], A000007(n)]`
-/

namespace A389544.P13968824391208808625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390848 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A389544.P13968824391208808625

/-! ## A389544.P12309844864563958390

`record[A333559(n+1)]`
-/

namespace A389544.P12309844864563958390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389544.P12309844864563958390

/-! ## A389544.P6512153943381314528

`lt[A026250(A027642(n)), A000384(n)]`
-/

namespace A389544.P6512153943381314528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A027642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389544.P6512153943381314528

/-!
# A389545: a(n) = Sum_{k=0..4} 2^k * binomial(n,k).

The programs for A389545, the canonical program `A389545.P16064439688389422553` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389545 has offset 0).

The definition of A389545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389545.P13436120662533157296

`(2*n^4-8*n^3+16*n²-4*n+3)/3`
-/

namespace A389545.P13436120662533157296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 4 : ℤ) - (8 * n ^ 3 : ℤ) + (16 * n ^ 2 : ℤ) - (4 * n : ℤ) + 3 : ℚ) / 3

end

end A389545.P13436120662533157296

namespace A389545

/-- `(2*n^4-8*n^3+16*n²-4*n+3)/3` -/
def P13436120662533157296.Spec : Prop :=
  ∀ n, P13436120662533157296.a n = (A389545 n : ℚ)

theorem P13436120662533157296.correct : P13436120662533157296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A389545, Nat.add_sub_cancel, A389545.P13436120662533157296.a, A389545.P16064439688389422553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A389545, Nat.add_sub_cancel, A389545.P13436120662533157296.a, A389545.P16064439688389422553.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A389545

/-! ## A389545.P16064439688389422553

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389545

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16064439688389422553.Spec : Prop :=
  ∀ n, P16064439688389422553.a n = A389545 n

theorem P16064439688389422553.correct : P16064439688389422553.Spec := by
  intro n
  simp only [A389545]

end A389545

/-! ## A389545.P11917815615608539648

`a(n-1)+2*A161712(n-1)` with `a(0)=1`
-/

namespace A389545.P11917815615608539648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A161712 (n - 1)

end

end A389545.P11917815615608539648

namespace A389545

/-- `a(n-1)+2*A161712(n-1)` -/
def P11917815615608539648.Spec : Prop :=
  ∀ n, P11917815615608539648.a n = A389545 n

end A389545

/-! ## A389545.P16269181969258043640

`A055426(n)-2*n`
-/

namespace A389545.P16269181969258043640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055426 n - (2 * n : ℤ)

end

end A389545.P16269181969258043640

namespace A389545

/-- `A055426(n)-2*n` -/
def P16269181969258043640.Spec : Prop :=
  ∀ n, P16269181969258043640.a n = A389545 n

end A389545

/-!
# A389547: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 / (1 + x / (1 - x)^3) ).

The programs for A389547, there is no canonical definition to state claims against.
-/

/-! ## A389547.P966496872846451304

`filter[A394162(n), A022924(#)]`
-/

namespace A389547.P966496872846451304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A389547.P966496872846451304

/-!
# A389548: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 / (1 + x^2 / (1 - x)^3) ).

The programs for A389548, there is no canonical definition to state claims against.
-/

/-! ## A389548.P17789474199800940829

`A389437(n)+A300584(A000085(n))`
-/

namespace A389548.P17789474199800940829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389437 n + A300584 (A000085 n).toNat

end

end A389548.P17789474199800940829

/-!
# A389549: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 / (1 + x^3 / (1 - x)^2) ).

The programs for A389549, there is no canonical definition to state claims against.
-/

/-! ## A389549.P2314077906527905557

`A369214(n)-A295883(A369198(n))`
-/

namespace A389549.P2314077906527905557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369214 n - A295883 (A369198 n).toNat

end

end A389549.P2314077906527905557

/-! ## A389549.P1155888134740493624

`A327938(A369214(n)-A010060(3*(n+1)))`
-/

namespace A389549.P1155888134740493624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A369214 n - A010060 (3 * (n + 1))).toNat

end

end A389549.P1155888134740493624

/-!
# A389550: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 / (1 + x^3 / (1 - x)^3) ).

The programs for A389550, there is no canonical definition to state claims against.
-/

/-! ## A389550.P1447602258539696617

`A028310(A389630(n)-A122189(n))`
-/

namespace A389550.P1447602258539696617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A389630 n - A122189 n).toNat

end

end A389550.P1447602258539696617

/-! ## A389550.P11211883666178063834

`A389630(n)-A079978(A389549(n))`
-/

namespace A389550.P11211883666178063834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389630 n - A079978 (A389549 n).toNat

end

end A389550.P11211883666178063834

/-!
# A389551: Cubefull numbers that are not powers of squarefree numbers.

The programs for A389551, there is no canonical definition to state claims against.
-/

/-! ## A389551.P14892793919075761199

`∪[A387257(n+1), A388293(n+1)]`
-/

namespace A389551.P14892793919075761199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389551.P14892793919075761199

/-! ## A389551.P4449118345123581135

`∩[A036966(n+1), A359280(n+1)]`
-/

namespace A389551.P4449118345123581135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389551.P4449118345123581135

/-! ## A389551.P9673181058561581157

`∩[A359280(n+1), A372695(n+1)]`
-/

namespace A389551.P9673181058561581157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389551.P9673181058561581157

/-! ## A389551.P9363854691910579649

`∩[A036966(n+1), A389752(n+1)]`
-/

namespace A389551.P9363854691910579649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389551.P9363854691910579649

/-! ## A389551.P5075627085408334092

`∩[A372695(n+1), A389752(n+1)]`
-/

namespace A389551.P5075627085408334092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389551.P5075627085408334092

/-!
# A389552: Vandermonde determinant of the divisors of n.

The programs for A389552, there is no canonical definition to state claims against.
-/

/-! ## A389552.P11726511852216818955

`A307651(A037278(n+1))`
-/

namespace A389552.P11726511852216818955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 (A037278 (n + 1)).toNat

end

end A389552.P11726511852216818955

/-! ## A389552.P2481734346724763800

`A307651(A390599(n+1))`
-/

namespace A389552.P2481734346724763800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 (A390599 (n + 1)).toNat

end

end A389552.P2481734346724763800

/-!
# A389553: Irregular triangle read by rows: row n lists all the triples (a,b,c) such that a!*b!*c! is a perfect square, with 1 <= a < b < c = A388851(n). Within a row, triples are sorted by increasing a, then by increasing b.

The programs for A389553, there is no canonical definition to state claims against.
-/

/-! ## A389553.P8131587393410125681

`A226798(A043317(n+1))`
-/

namespace A389553.P8131587393410125681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (A043317 (n + 1)).toNat

end

end A389553.P8131587393410125681

/-! ## A389553.P4982091252613286847

`A226798(A044914(n+1))`
-/

namespace A389553.P4982091252613286847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (A044914 (n + 1)).toNat

end

end A389553.P4982091252613286847

/-! ## A389553.P6267936729340091682

`A226798(A055648(n+1))`
-/

namespace A389553.P6267936729340091682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (A055648 (n + 1)).toNat

end

end A389553.P6267936729340091682

/-! ## A389553.P15547431822908530859

`A226798(A132378(n+1))`
-/

namespace A389553.P15547431822908530859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (A132378 (n + 1)).toNat

end

end A389553.P15547431822908530859

/-! ## A389553.P12686495199465869232

`A226798(A004874(n+2))`
-/

namespace A389553.P12686495199465869232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (A004874 (n + 2)).toNat

end

end A389553.P12686495199465869232

/-!
# A389554: a(n) = number of triples (a,b,c) such that a!*b!*c! is a perfect square, with 1 <= a < b < c = A388851(n).

The programs for A389554, there is no canonical definition to state claims against.
-/

/-! ## A389554.P15224584845581664148

`A325520(A306315(n))`
-/

namespace A389554.P15224584845581664148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325520 (A306315 n).toNat

end

end A389554.P15224584845581664148

/-! ## A389554.P12618843661545362337

`A392447(record[A337561(2*n+3)])`
-/

namespace A389554.P12618843661545362337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A389554.P12618843661545362337

/-! ## A389554.P15807898800425602692

`gcd(A345924(3*n+5)+15, A302243(3*(n+1)))`
-/

namespace A389554.P15807898800425602692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345924 (3 * n + 5) + 15) (A302243 (3 * (n + 1)))

end

end A389554.P15807898800425602692

/-! ## A389554.P18051157348480051277

`A124010(A192957(n)+A055401(n+2))`
-/

namespace A389554.P18051157348480051277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A192957 n + A055401 (n + 2)).toNat

end

end A389554.P18051157348480051277

/-! ## A389554.P17365590331426254586

`gcd(A003325(A047713(n+1)), A233217(n+1))`
-/

namespace A389554.P17365590331426254586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003325 (A047713 (n + 1)).toNat) (A233217 (n + 1))

end

end A389554.P17365590331426254586

/-!
# A389556: The number of primitive Pythagorean triples (PPTs) that lie within the first n rows of an irregular triangular array of PPTs defined in comments and whose even leg of the integer right triangle formed from the PPT is greater than its odd leg.

The programs for A389556, the canonical program `A389556.P5725981755648961475` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389556 has offset 1).

The definition of A389556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389556.P5725981755648961475

`∑[A070099(2*n+3)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A389556

/-- `∑[A070099(2*n+3)]` -/
def P5725981755648961475.Spec : Prop :=
  ∀ n, P5725981755648961475.a n = A389556 (n + 1)

theorem P5725981755648961475.correct : P5725981755648961475.Spec := by
  intro n
  simp only [A389556, Nat.add_sub_cancel]

end A389556

/-!
# A389558: Powerful numbers that are neither cubefull nor powers of squarefree numbers.

The programs for A389558, there is no canonical definition to state claims against.
-/

/-! ## A389558.P2829345520599598467

`∪[A389947(n+1), A390539(n+1)]`
-/

namespace A389558.P2829345520599598467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P2829345520599598467

/-! ## A389558.P3857246279188443081

`∩[A320966(n+1), A387256(n+1)]`
-/

namespace A389558.P3857246279188443081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P3857246279188443081

/-! ## A389558.P9231672337387714174

`∩[A359280(n+1), A387256(n+1)]`
-/

namespace A389558.P9231672337387714174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P9231672337387714174

/-! ## A389558.P5459664838223619189

`∩[A372404(n+1), A387256(n+1)]`
-/

namespace A389558.P5459664838223619189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P5459664838223619189

/-! ## A389558.P16587030985577508808

`∩[A320966(n+1), A325240(n+1)]`
-/

namespace A389558.P16587030985577508808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P16587030985577508808

/-! ## A389558.P7843455981697127825

`∩[A325240(n+1), A359280(n+1)]`
-/

namespace A389558.P7843455981697127825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P7843455981697127825

/-! ## A389558.P10813926194532051747

`∩[A325240(n+1), A372404(n+1)]`
-/

namespace A389558.P10813926194532051747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P10813926194532051747

/-! ## A389558.P11701005324001563270

`∩[A325240(n+1), A389752(n+1)]`
-/

namespace A389558.P11701005324001563270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P11701005324001563270

/-! ## A389558.P9934072286271229616

`∩[A387256(n+1), A389752(n+1)]`
-/

namespace A389558.P9934072286271229616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P9934072286271229616

/-! ## A389558.P5391755338730813158

`∩[A325240(n+1), A389528(n+1)]`
-/

namespace A389558.P5391755338730813158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P5391755338730813158

/-! ## A389558.P2967579345228509350

`∩[A387256(n+1), A389528(n+1)]`
-/

namespace A389558.P2967579345228509350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P2967579345228509350

/-! ## A389558.P1065412999696634304

`∩[A059172(n+1), A325240(n+1)]`
-/

namespace A389558.P1065412999696634304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P1065412999696634304

/-! ## A389558.P15916757748477386024

`∩[A059172(n+1), A387256(n+1)]`
-/

namespace A389558.P15916757748477386024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P15916757748477386024

/-! ## A389558.P4152568677962694681

`filter[A325240(n+1), A380439(#)]`
-/

namespace A389558.P4152568677962694681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389558.P4152568677962694681

/-! ## A389558.P8974918463871837806

`filter[A387256(n+1), A380439(#)]`
-/

namespace A389558.P8974918463871837806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389558.P8974918463871837806

/-! ## A389558.P7638468759617180138

`∩[A001694(n+1), A362148(n+1)]`
-/

namespace A389558.P7638468759617180138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P7638468759617180138

/-! ## A389558.P6512457112617168970

`∩[A286708(n+1), A362148(n+1)]`
-/

namespace A389558.P6512457112617168970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P6512457112617168970

/-! ## A389558.P15888181497096163634

`∩[A320966(n+1), A362148(n+1)]`
-/

namespace A389558.P15888181497096163634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P15888181497096163634

/-! ## A389558.P14038936172154849560

`∩[A325240(n+1), A362148(n+1)]`
-/

namespace A389558.P14038936172154849560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P14038936172154849560

/-! ## A389558.P9587762024313277121

`∩[A359280(n+1), A362148(n+1)]`
-/

namespace A389558.P9587762024313277121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389558.P9587762024313277121

/-!
# A389561: Number of oriented polyominoes with n heptagonal cells of the hyperbolic regular tiling with Schläfli symbol {7,oo}.

The programs for A389561, there is no canonical definition to state claims against.
-/

/-! ## A389561.P18046013124659267035

`A295224(eq[4, A004736(n+1)])`
-/

namespace A389561.P18046013124659267035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A389561.P18046013124659267035

/-! ## A389561.P1200940441586010728

`A295224(eq[A053120(n), A244126(n+4)])`
-/

namespace A389561.P1200940441586010728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A389561.P1200940441586010728

/-! ## A389561.P6485136203494684893

`A295224(eq[3, A089840(n)])`
-/

namespace A389561.P6485136203494684893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A389561.P6485136203494684893

/-! ## A389561.P10941201199737645655

`A295224(lt[A193727(n+3), A002620(n)])`
-/

namespace A389561.P10941201199737645655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389561.P10941201199737645655

/-!
# A389562: Number of chiral pairs of polyominoes with n heptagonal cells of the hyperbolic regular tiling with Schläfli symbol {7,oo}.

The programs for A389562, there is no canonical definition to state claims against.
-/

/-! ## A389562.P908472400978217590

`A005419(n+4)-A389563(n+4)`
-/

namespace A389562.P908472400978217590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005419 (n + 4) - A389563 (n + 4)

end

end A389562.P908472400978217590

/-! ## A389562.P9084719118804964540

`A389561(n+4)-A005419(n+4)`
-/

namespace A389562.P9084719118804964540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 4) - A005419 (n + 4)

end

end A389562.P9084719118804964540

/-! ## A389562.P13477748501901707517

`(A389561(n+4)-A389563(n+4))/2`
-/

namespace A389562.P13477748501901707517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389561 (n + 4) - A389563 (n + 4) : ℚ) / 2

end

end A389562.P13477748501901707517

/-!
# A389563: Number of achiral polyominoes with n heptagonal cells of the hyperbolic regular tiling with Schläfli symbol {7,oo}.

The programs for A389563, there is no canonical definition to state claims against.
-/

/-! ## A389563.P10823788744275301065

`A370062(∑[3%comp[∑[n]]+n+1]+4)`
-/

namespace A389563.P10823788744275301065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A389563.P10823788744275301065

/-! ## A389563.P11347196484965074544

`A386379(A038126(n))`
-/

namespace A389563.P11347196484965074544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A038126 n).toNat

end

end A389563.P11347196484965074544

/-! ## A389563.P14842702733447860163

`A386379(A047215(n))`
-/

namespace A389563.P14842702733447860163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A047215 n).toNat

end

end A389563.P14842702733447860163

/-! ## A389563.P18253134591418356182

`A386379(A256680(n))`
-/

namespace A389563.P18253134591418356182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A256680 n).toNat

end

end A389563.P18253134591418356182

/-! ## A389563.P231212484127610919

`A370062(A000217(n+4)-A168428(2*n+1))`
-/

namespace A389563.P231212484127610919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (A000217 (n + 4) - A168428 (2 * n + 1)).toNat

end

end A389563.P231212484127610919

/-!
# A389565: Total number of firings in a certain chip-firing game that starts with 2^n chips and is described in the comments.

The programs for A389565, there is no canonical definition to state claims against.
-/

/-! ## A389565.P12100435891164644855

`A138328(A291265(n+1))`
-/

namespace A389565.P12100435891164644855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138328 (A291265 (n + 1)).toNat

end

end A389565.P12100435891164644855

/-! ## A389565.P17443548305004224504

`A018046(n)-A299702(A023147(n+1))`
-/

namespace A389565.P17443548305004224504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018046 n - A299702 (A023147 (n + 1)).toNat

end

end A389565.P17443548305004224504

/-!
# A389566: Expansion of g^2/(1 + x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A389566, there is no canonical definition to state claims against.
-/

/-! ## A389566.P8817962845669879943

`A353968(A056820(n))`
-/

namespace A389566.P8817962845669879943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353968 (A056820 n).toNat

end

end A389566.P8817962845669879943

/-!
# A389568: Record values in A034058.

The programs for A389568, there is no canonical definition to state claims against.
-/

/-! ## A389568.P15282723968930647033

`A034058(A389569(n+1))`
-/

namespace A389568.P15282723968930647033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034058 (A389569 (n + 1)).toNat

end

end A389568.P15282723968930647033

/-! ## A389568.P18148537473347924604

`record[A034058(n)]`
-/

namespace A389568.P18148537473347924604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389568.P18148537473347924604

/-!
# A389571: Number of rooted binary perfect phylogenies with sample size n and 4 leaves.

The programs for A389571, the canonical program `A389571.P14881936152397108172` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389571 has offset 4).

The definition of A389571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389571.P14881936152397108172

`∑[∑[floor(∑[1/a(n-1)]-a(n-1))]]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389571

/-- `∑[∑[floor(∑[1/a(n-1)]-a(n-1))]]` -/
def P14881936152397108172.Spec : Prop :=
  ∀ n, P14881936152397108172.a n = A389571 (n + 4)

theorem P14881936152397108172.correct : P14881936152397108172.Spec := by
  intro n
  simp only [A389571, Nat.add_sub_cancel]

end A389571

/-! ## A389571.P4228289380057888594

`A005232(n)+A002623(n)`
-/

namespace A389571.P4228289380057888594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n + A002623 n

end

end A389571.P4228289380057888594

namespace A389571

/-- `A005232(n)+A002623(n)` -/
def P4228289380057888594.Spec : Prop :=
  ∀ n, P4228289380057888594.a n = A389571 (n + 4)

end A389571

/-! ## A389571.P95111765535904063

`A144678(2*n)+A005232(n)`
-/

namespace A389571.P95111765535904063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (2 * n) + A005232 n

end

end A389571.P95111765535904063

namespace A389571

/-- `A144678(2*n)+A005232(n)` -/
def P95111765535904063.Spec : Prop :=
  ∀ n, P95111765535904063.a n = A389571 (n + 4)

end A389571

/-! ## A389571.P12773175231990856968

`A301739(n+4)-A124766(A241469(n+1))`
-/

namespace A389571.P12773175231990856968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301739 (n + 4) - A124766 (A241469 (n + 1)).toNat

end

end A389571.P12773175231990856968

namespace A389571

/-- `A301739(n+4)-A124766(A241469(n+1))` -/
def P12773175231990856968.Spec : Prop :=
  ∀ n, P12773175231990856968.a n = A389571 (n + 4)

end A389571

/-!
# A389573: a(n) = Sum_{k=1..floor((n+1)/2)} A389524(n, n - 2*k + 2).

The programs for A389573, there is no canonical definition to state claims against.
-/

/-! ## A389573.P2280931831838268139

`A000005(n+1)-A387793(n+1)`
-/

namespace A389573.P2280931831838268139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A387793 (n + 1)

end

end A389573.P2280931831838268139

/-!
# A389582: Lower (1/2,1/3) midsequence of (n^2) and (n^3); see Comments.

The programs for A389582, the canonical program `A389582.P17584436343250649778` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389582 has offset 0).

The definition of A389582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389582.P17584436343250649778

`floor(∑[n²]-n/6)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389582

/-- `floor(∑[n²]-n/6)` -/
def P17584436343250649778.Spec : Prop :=
  ∀ n, P17584436343250649778.a n = A389582 n

theorem P17584436343250649778.correct : P17584436343250649778.Spec := by
  intro n
  simp only [A389582]

end A389582

/-! ## A389582.P1852192340948089750

`A236773(n)-n`
-/

namespace A389582.P1852192340948089750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236773 n - (n : ℤ)

end

end A389582.P1852192340948089750

namespace A389582

/-- `A236773(n)-n` -/
def P1852192340948089750.Spec : Prop :=
  ∀ n, P1852192340948089750.a n = A389582 n

end A389582

/-! ## A389582.P6135181291667547050

`A389583(n)-A097325(n)`
-/

namespace A389582.P6135181291667547050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389583 n - A097325 n

end

end A389582.P6135181291667547050

namespace A389582

/-- `A389583(n)-A097325(n)` -/
def P6135181291667547050.Spec : Prop :=
  ∀ n, P6135181291667547050.a n = A389582 n

end A389582

/-! ## A389582.P3746158479379686092

`A272915(n)+A145067(n+1)`
-/

namespace A389582.P3746158479379686092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 n + A145067 (n + 1)

end

end A389582.P3746158479379686092

namespace A389582

/-- `A272915(n)+A145067(n+1)` -/
def P3746158479379686092.Spec : Prop :=
  ∀ n, P3746158479379686092.a n = A389582 n

end A389582

/-! ## A389582.P2636073998844090899

`A000330(n)-A004526(A008620(n+2))`
-/

namespace A389582.P2636073998844090899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A004526 (A008620 (n + 2)).toNat

end

end A389582.P2636073998844090899

namespace A389582

/-- `A000330(n)-A004526(A008620(n+2))` -/
def P2636073998844090899.Spec : Prop :=
  ∀ n, P2636073998844090899.a n = A389582 n

end A389582

/-!
# A389583: Upper (1/2,1/3) midsequence of (n^2) and (n^3); see Comments.

The programs for A389583, the canonical program `A389583.P2456528887545005619` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389583 has offset 0).

The definition of A389583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389583.P2456528887545005619

`∑[n²]-floor(n/6)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A389583

/-- `∑[n²]-floor(n/6)` -/
def P2456528887545005619.Spec : Prop :=
  ∀ n, P2456528887545005619.a n = A389583 n

theorem P2456528887545005619.correct : P2456528887545005619.Spec := by
  intro n
  simp only [A389583]

end A389583

/-! ## A389583.P7745368777478939872

`abs(A000330(n)-A152467(n))`
-/

namespace A389583.P7745368777478939872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000330 n - A152467 n|

end

end A389583.P7745368777478939872

namespace A389583

/-- `abs(A000330(n)-A152467(n))` -/
def P7745368777478939872.Spec : Prop :=
  ∀ n, P7745368777478939872.a n = A389583 n

end A389583

/-! ## A389583.P6717847713989433321

`∑[n²-A083913(A309951(n)+1)]`
-/

namespace A389583.P6717847713989433321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A083913 (A309951 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389583.P6717847713989433321

namespace A389583

/-- `∑[n²-A083913(A309951(n)+1)]` -/
def P6717847713989433321.Spec : Prop :=
  ∀ n, P6717847713989433321.a n = A389583 n

end A389583

/-!
# A389591: Sum of the divisors r of n such that r is not greater than twice the adjacent previous divisor of n.

The programs for A389591, there is no canonical definition to state claims against.
-/

/-! ## A389591.P15823865266372479203

`A383147(n+1)+A146076(n+1)`
-/

namespace A389591.P15823865266372479203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383147 (n + 1) + A146076 (n + 1)

end

end A389591.P15823865266372479203

/-! ## A389591.P16908816286118490829

`A000203(n+1)-A379379(n+1)`
-/

namespace A389591.P16908816286118490829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A379379 (n + 1)

end

end A389591.P16908816286118490829

/-!
# A389592: Irregular triangle read by rows: T(n,k) is the sum of the numbers that are not the smallest number in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A389592, there is no canonical definition to state claims against.
-/

/-! ## A389592.P17760953135235860189

`A384149(n+1)-A379288(n+1)`
-/

namespace A389592.P17760953135235860189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A379288 (n + 1)

end

end A389592.P17760953135235860189

/-! ## A389592.P16686956824445024659

`A384226(n+1)+A390443(n+1)-A379288(n+1)`
-/

namespace A389592.P16686956824445024659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384226 (n + 1) + (A390443 (n + 1) - A379288 (n + 1))

end

end A389592.P16686956824445024659

/-! ## A389592.P9977757390516107871

`A390609(n+1)+A390610(n+1)-A379288(n+1)`
-/

namespace A389592.P9977757390516107871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390609 (n + 1) + (A390610 (n + 1) - A379288 (n + 1))

end

end A389592.P9977757390516107871

/-!
# A389593: Numbers k such that sigma(k)^2 = psi(k)^2 + phi(k)^2.

The programs for A389593, there is no canonical definition to state claims against.
-/

/-! ## A389593.P14995280527611690145

`9*A065823(n+1)`
-/

namespace A389593.P14995280527611690145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A065823 (n + 1)

end

end A389593.P14995280527611690145

/-! ## A389593.P14432097609474981347

`lcm(A065823(n+1), A099646(n+1))`
-/

namespace A389593.P14432097609474981347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065823 (n + 1)) (A099646 (n + 1))

end

end A389593.P14432097609474981347

/-!
# A389594: a(1) = 1; a(n+1) = a(n)-th positive integer that is not a power of 2.

The programs for A389594, the canonical program `A389594.P16283464142215270582` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389594 has offset 1).

The definition of A389594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389594.P16283464142215270582

`A057716(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389594

/-- `A057716(a(n-1))` -/
def P16283464142215270582.Spec : Prop :=
  ∀ n, P16283464142215270582.a n = A389594 (n + 1)

theorem P16283464142215270582.correct : P16283464142215270582.Spec := by
  intro n
  simp only [A389594, Nat.add_sub_cancel]

end A389594

/-! ## A389594.P601254450222852330

`A177712(a(n-1))/2` with `a(0)=1`
-/

namespace A389594.P601254450222852330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A177712 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A389594.P601254450222852330

namespace A389594

/-- `A177712(a(n-1))/2` -/
def P601254450222852330.Spec : Prop :=
  ∀ n, P601254450222852330.a n = (A389594 (n + 1) : ℚ)

end A389594

/-! ## A389594.P10828359225839911010

`A062289(a(n-1))+1` with `a(0)=1`
-/

namespace A389594.P10828359225839911010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062289 (a (n - 1)).toNat + 1

end

end A389594.P10828359225839911010

namespace A389594

/-- `A062289(a(n-1))+1` -/
def P10828359225839911010.Spec : Prop :=
  ∀ n, P10828359225839911010.a n = A389594 (n + 1)

end A389594

/-! ## A389594.P10199146479857529196

`A138591(a(n-1)+1)` with `a(0)=1`
-/

namespace A389594.P10199146479857529196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138591 (a (n - 1) + 1).toNat

end

end A389594.P10199146479857529196

namespace A389594

/-- `A138591(a(n-1)+1)` -/
def P10199146479857529196.Spec : Prop :=
  ∀ n, P10199146479857529196.a n = A389594 (n + 1)

end A389594

/-! ## A389594.P2855329092683222747

`A136724(a(n-1))/4` with `a(0)=1`
-/

namespace A389594.P2855329092683222747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A136724 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 4

end

end A389594.P2855329092683222747

namespace A389594

/-- `A136724(a(n-1))/4` -/
def P2855329092683222747.Spec : Prop :=
  ∀ n, P2855329092683222747.a n = (A389594 (n + 1) : ℚ)

end A389594

/-!
# A389595: a(n) is the permanent of the Vandermonde matrix of the distinct prime factors of n.

The programs for A389595, there is no canonical definition to state claims against.
-/

/-! ## A389595.P18280622163825283387

`A134889(A166142(n+1))`
-/

namespace A389595.P18280622163825283387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134889 (A166142 (n + 1)).toNat

end

end A389595.P18280622163825283387

/-! ## A389595.P12817920395415194067

`A028236(A290479(n+1))`
-/

namespace A389595.P12817920395415194067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (A290479 (n + 1)).toNat

end

end A389595.P12817920395415194067

/-! ## A389595.P8197177959540822382

`gcd(A028235(n+1), A096001(n))`
-/

namespace A389595.P8197177959540822382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028235 (n + 1)) (A096001 n)

end

end A389595.P8197177959540822382

/-! ## A389595.P1583335438753276550

`gcd(A097504(n+1), A340678(n+1))`
-/

namespace A389595.P1583335438753276550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097504 (n + 1)) (A340678 (n + 1))

end

end A389595.P1583335438753276550

/-! ## A389595.P15438706773799644255

`A000005(∑{p}[n+1, gcd(n, #)]^A318305(n+1))`
-/

namespace A389595.P15438706773799644255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A318305 (n + 1) : ℤ))).toNat

end

end A389595.P15438706773799644255

/-!
# A389597: Standard composition numbers of integer compositions with all distinct first differences.

The programs for A389597, there is no canonical definition to state claims against.
-/

/-! ## A389597.P13803763432622217996

`comp[A389598(n+1)]`
-/

namespace A389597.P13803763432622217996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389597.P13803763432622217996

/-! ## A389597.P13633212647094763926

`comp[record[A389598(A324344(n))]]`
-/

namespace A389597.P13633212647094763926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389598 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389597.P13633212647094763926

/-! ## A389597.P4138988511473239032

`lt[A335474(2*n), A304903(n+4)]`
-/

namespace A389597.P4138988511473239032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304903 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389597.P4138988511473239032

/-! ## A389597.P15931493214931777803

`lt[A000720(A335458(2*n)), A335465(n)]`
-/

namespace A389597.P15931493214931777803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335458 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389597.P15931493214931777803

/-! ## A389597.P10505453056710155553

`lt[A124762(n), A348044(A319564(n))]`
-/

namespace A389597.P10505453056710155553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348044 (A319564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389597.P10505453056710155553

/-!
# A389598: Standard composition numbers of compositions without distinct first differences.

The programs for A389598, there is no canonical definition to state claims against.
-/

/-! ## A389598.P10607232062998546406

`comp[A389597(n+1)]%A023144(n+4)`
-/

namespace A389598.P10607232062998546406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A023144 (n + 4))

end

end A389598.P10607232062998546406

/-! ## A389598.P13441392454288419530

`lt[A124767(A296188(n+1)), A124763(n)]`
-/

namespace A389598.P13441392454288419530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A296188 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389598.P13441392454288419530

/-!
# A389599: Heinz numbers of integer partitions whose first differences are not all distinct.

The programs for A389599, there is no canonical definition to state claims against.
-/

/-! ## A389599.P13063574542555319365

`∪[A048108(n+1), A325992(n+1)]`
-/

namespace A389599.P13063574542555319365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389599.P13063574542555319365

