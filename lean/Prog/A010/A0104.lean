import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B008.C000
import Seq.B010.C000
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
# A010400: Squares mod 39.

The programs for A010400, there is no canonical definition to state claims against.
-/

/-! ## A010400.P4494077390410904809

`∪[n², A243681(n)]`
-/

namespace A010400.P4494077390410904809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A010400.P4494077390410904809

/-! ## A010400.P14431216630982024093

`A010439(n+1)%(66-n)`
-/

namespace A010400.P14431216630982024093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010439 (n + 1)) (66 - (n : ℤ))

end

end A010400.P14431216630982024093

/-! ## A010400.P1012975861195769067

`A010439(A005496(n))`
-/

namespace A010400.P1012975861195769067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (A005496 n).toNat

end

end A010400.P1012975861195769067

/-! ## A010400.P14029299345468680325

`A010439(A005555(n))`
-/

namespace A010400.P14029299345468680325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (A005555 n).toNat

end

end A010400.P14029299345468680325

/-! ## A010400.P8817671625336220738

`A010439(A291769(n))`
-/

namespace A010400.P8817671625336220738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (A291769 n).toNat

end

end A010400.P8817671625336220738

/-!
# A010401: Squares mod 40.

The programs for A010401, there is no canonical definition to state claims against.
-/

/-! ## A010401.P8569470584832742210

`record[and(n*(18*n+6)+1, floor(n*log2(3)))]`
-/

namespace A010401.P8569470584832742210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (18 * n + 6) + 1 : ℤ) ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010401.P8569470584832742210

/-! ## A010401.P17806504132623947525

`comp[A028753(n+1)]`
-/

namespace A010401.P17806504132623947525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010401.P17806504132623947525

/-! ## A010401.P15432208535764241469

`eq[1, A084606(n)%15]`
-/

namespace A010401.P15432208535764241469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084606 n) 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010401.P15432208535764241469

/-! ## A010401.P13343825627309614455

`A010421(n+1)-char[5]`
-/

namespace A010401.P13343825627309614455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010421 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010401.P13343825627309614455

/-!
# A010402: Squares mod 41.

The programs for A010402, there is no canonical definition to state claims against.
-/

/-! ## A010402.P17101615870025314719

`record[n*A011590(n)]`
-/

namespace A010402.P17101615870025314719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010402.P17101615870025314719

/-! ## A010402.P12263726409355158103

`A010443(n+1)%41`
-/

namespace A010402.P12263726409355158103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010443 (n + 1)) 41

end

end A010402.P12263726409355158103

/-! ## A010402.P8552074517309949150

`A010443(A348553(n))`
-/

namespace A010402.P8552074517309949150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (A348553 n).toNat

end

end A010402.P8552074517309949150

/-! ## A010402.P13376688356653406041

`A010443(A387051(n))`
-/

namespace A010402.P13376688356653406041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (A387051 n).toNat

end

end A010402.P13376688356653406041

/-! ## A010402.P2388639968172795910

`A010443(A387108(n))`
-/

namespace A010402.P2388639968172795910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (A387108 n).toNat

end

end A010402.P2388639968172795910

/-!
# A010403: Squares mod 42.

The programs for A010403, there is no canonical definition to state claims against.
-/

/-! ## A010403.P8756267250134503272

`comp[A028755(n+1)]`
-/

namespace A010403.P8756267250134503272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010403.P8756267250134503272

/-! ## A010403.P2813480375859508098

`eq[log2(3^val(n+1, 3)), A227834(n)]`
-/

namespace A010403.P2813480375859508098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A010403.P2813480375859508098

/-! ## A010403.P10243173724806525586

`eq[n, A070585(A071669(n))]`
-/

namespace A010403.P10243173724806525586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070585 (A071669 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010403.P10243173724806525586

/-! ## A010403.P3941221623575689434

`eq[n, A070585(A071670(n))]`
-/

namespace A010403.P3941221623575689434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070585 (A071670 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010403.P3941221623575689434

/-! ## A010403.P18016583740096265396

`eq[n, A070585(A097449(n))]`
-/

namespace A010403.P18016583740096265396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070585 (A097449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010403.P18016583740096265396

/-!
# A010404: Squares mod 43.

The programs for A010404, there is no canonical definition to state claims against.
-/

/-! ## A010404.P17428456457574311622

`record[n*A011591(n)]`
-/

namespace A010404.P17428456457574311622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010404.P17428456457574311622

/-! ## A010404.P14792805042358545836

`A010447(n+1)+char[24]`
-/

namespace A010404.P14792805042358545836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010404.P14792805042358545836

/-! ## A010404.P5848855802664911016

`A010447(A348553(n))`
-/

namespace A010404.P5848855802664911016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (A348553 n).toNat

end

end A010404.P5848855802664911016

/-! ## A010404.P17477678901146676528

`A010447(A387051(n))`
-/

namespace A010404.P17477678901146676528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (A387051 n).toNat

end

end A010404.P17477678901146676528

/-! ## A010404.P12108837798079249278

`A010447(A387108(n))`
-/

namespace A010404.P12108837798079249278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (A387108 n).toNat

end

end A010404.P12108837798079249278

/-!
# A010405: Squares mod 44.

The programs for A010405, there is no canonical definition to state claims against.
-/

/-! ## A010405.P12046405579298721875

`record[and(n, 5-∑[a(n-1)-6])]` with `a(0)=1`
-/

namespace A010405.P12046405579298721875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (5 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010405.P12046405579298721875

/-! ## A010405.P14999588203979706169

`comp[A028757(n+1)]`
-/

namespace A010405.P14999588203979706169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010405.P14999588203979706169

/-! ## A010405.P14252761658721018292

`eq[0, n-A070684(n)]`
-/

namespace A010405.P14252761658721018292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010405.P14252761658721018292

/-! ## A010405.P10022158371572576901

`record[and(n, A155923(3*n+5))]`
-/

namespace A010405.P10022158371572576901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A155923 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010405.P10022158371572576901

/-! ## A010405.P6282809820804286691

`A194154(A162002(n+1))`
-/

namespace A010405.P6282809820804286691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194154 (A162002 (n + 1)).toNat

end

end A010405.P6282809820804286691

/-!
# A010406: Squares mod 45.

The programs for A010406, there is no canonical definition to state claims against.
-/

/-! ## A010406.P11703083388058442710

`comp[and(comp[(n²-n)%(-90)+n], -1)]%45`
-/

namespace A010406.P11703083388058442710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (-90) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 45

end

end A010406.P11703083388058442710

/-! ## A010406.P17376161767785722973

`A010451(n+1)%45`
-/

namespace A010406.P17376161767785722973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010451 (n + 1)) 45

end

end A010406.P17376161767785722973

/-! ## A010406.P18088969539918276493

`A010442(A320928(n+1))`
-/

namespace A010406.P18088969539918276493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010442 (A320928 (n + 1)).toNat

end

end A010406.P18088969539918276493

/-! ## A010406.P5480608804849358415

`eq[A028967(n), A317642(n)]`
-/

namespace A010406.P5480608804849358415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010406.P5480608804849358415

/-!
# A010407: Squares mod 46.

The programs for A010407, there is no canonical definition to state claims against.
-/

/-! ## A010407.P10023819179601079108

`comp[A278579(n+1)]`
-/

namespace A010407.P10023819179601079108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010407.P10023819179601079108

/-! ## A010407.P16144475132944783844

`lt[n-1, A011586(n)+n]`
-/

namespace A010407.P16144475132944783844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010407.P16144475132944783844

/-! ## A010407.P9196323843006685299

`lt[gcd(A011586(3*n)+1, ∑[n]), 4]`
-/

namespace A010407.P9196323843006685299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011586 (3 * n) + 1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A010407.P9196323843006685299

/-! ## A010407.P11982101600818502056

`comp[lt[A011586(n), A010060(n)]]`
-/

namespace A010407.P11982101600818502056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010407.P11982101600818502056

/-! ## A010407.P3493823042168750286

`comp[lt[A011586(n), A185012(n)]]`
-/

namespace A010407.P3493823042168750286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010407.P3493823042168750286

/-!
# A010408: Squares mod 47.

The programs for A010408, there is no canonical definition to state claims against.
-/

/-! ## A010408.P18361305884612723893

`record[n*A011592(n)]`
-/

namespace A010408.P18361305884612723893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010408.P18361305884612723893

/-! ## A010408.P8380352637713818253

`comp[or(n+1, -A035143(n+1))]`
-/

namespace A010408.P8380352637713818253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A035143 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010408.P8380352637713818253

/-! ## A010408.P9179292404122083690

`A010455(A348553(n))`
-/

namespace A010408.P9179292404122083690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010455 (A348553 n).toNat

end

end A010408.P9179292404122083690

/-! ## A010408.P4380378852707478931

`A010455(A387051(n))`
-/

namespace A010408.P4380378852707478931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010455 (A387051 n).toNat

end

end A010408.P4380378852707478931

/-! ## A010408.P17035301457397353555

`A010455(A387108(n))`
-/

namespace A010408.P17035301457397353555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010455 (A387108 n).toNat

end

end A010408.P17035301457397353555

/-!
# A010410: Squares mod 49.

The programs for A010410, the canonical program `A010410.P3687262324807305988` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010410 has offset 1).

The definition of A010410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010410.P3687262324807305988

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010410

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3687262324807305988.Spec : Prop :=
  ∀ n, P3687262324807305988.a n = A010410 (n + 1)

theorem P3687262324807305988.correct : P3687262324807305988.Spec := by
  intro n
  simp only [A010410, Nat.add_sub_cancel]

end A010410

/-! ## A010410.P2162545257150886348

`comp[∑[abs(3-n%5)]]`
-/

namespace A010410.P2162545257150886348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((n % 5 : ℕ) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010410.P2162545257150886348

namespace A010410

/-- `comp[∑[abs(3-n%5)]]` -/
def P2162545257150886348.Spec : Prop :=
  ∀ n, (P2162545257150886348.a n : ℤ) = A010410 (n + 1)

end A010410

/-! ## A010410.P7661922046480008110

`∑[round(2^((n-2)%3))]`
-/

namespace A010410.P7661922046480008110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010410.P7661922046480008110

namespace A010410

/-- `∑[round(2^((n-2)%3))]` -/
def P7661922046480008110.Spec : Prop :=
  ∀ n, P7661922046480008110.a n = A010410 (n + 1)

end A010410

/-! ## A010410.P6488577493533780162

`comp[∑[4-(n+1)%7]]`
-/

namespace A010410.P6488577493533780162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (((n + 1) % 7 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010410.P6488577493533780162

namespace A010410

/-- `comp[∑[4-(n+1)%7]]` -/
def P6488577493533780162.Spec : Prop :=
  ∀ n, (P6488577493533780162.a n : ℤ) = A010410 (n + 1)

end A010410

/-! ## A010410.P1246791627902640937

`eq[n, n*(n^3)%7]`
-/

namespace A010410.P1246791627902640937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 3 % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010410.P1246791627902640937

namespace A010410

/-- `eq[n, n*(n^3)%7]` -/
def P1246791627902640937.Spec : Prop :=
  ∀ n, (P1246791627902640937.a n : ℤ) = A010410 (n + 1)

end A010410

/-!
# A010411: Squares mod 50.

The programs for A010411, there is no canonical definition to state claims against.
-/

/-! ## A010411.P17589544047823957476

`∪[comp[round(5*n/3)], n²]`
-/

namespace A010411.P17589544047823957476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A010411.P17589544047823957476

/-! ## A010411.P15885882235263689039

`lt[-char[n²], (n²+1)%5-1]`
-/

namespace A010411.P15885882235263689039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 5 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A010411.P15885882235263689039

/-! ## A010411.P4658626484290030857

`lt[n, xor(n, A113259(n))]`
-/

namespace A010411.P4658626484290030857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A113259 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010411.P4658626484290030857

/-! ## A010411.P5049880406875341865

`lt[-char[n²], A080891(n)]`
-/

namespace A010411.P5049880406875341865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A010411.P5049880406875341865

/-! ## A010411.P1144417927675584244

`comp[A028763(n+1)]`
-/

namespace A010411.P1144417927675584244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010411.P1144417927675584244

/-!
# A010412: Squares mod 51.

The programs for A010412, there is no canonical definition to state claims against.
-/

/-! ## A010412.P4450982309576707127

`comp[A028764(n+1)]`
-/

namespace A010412.P4450982309576707127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010412.P4450982309576707127

/-! ## A010412.P5612637375285501441

`comp[comp[A114327(26*n)+n]+1]`
-/

namespace A010412.P5612637375285501441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (26 * n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010412.P5612637375285501441

/-! ## A010412.P17349361843366681657

`comp[lt[(n²²²+1)%17-1, log(A078688(2*(n+6)))]]`
-/

namespace A010412.P17349361843366681657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A078688 (2 * (n + 6)) : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010412.P17349361843366681657

/-! ## A010412.P5994503483156224086

`comp[record[A028764(A134478(n))]]`
-/

namespace A010412.P5994503483156224086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028764 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010412.P5994503483156224086

/-! ## A010412.P442308514239586921

`comp[record[A028764(A154958(n))]]`
-/

namespace A010412.P442308514239586921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028764 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010412.P442308514239586921

/-!
# A010413: Squares mod 52.

The programs for A010413, there is no canonical definition to state claims against.
-/

/-! ## A010413.P18199435047449075153

`comp[A028765(n+1)]`
-/

namespace A010413.P18199435047449075153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010413.P18199435047449075153

/-! ## A010413.P9831559148503814089

`comp[comp[A068527(52*n+1)]+1]`
-/

namespace A010413.P9831559148503814089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (52 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010413.P9831559148503814089

/-! ## A010413.P9724696566887248824

`comp[record[A028765(A065648(n))]]`
-/

namespace A010413.P9724696566887248824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028765 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010413.P9724696566887248824

/-! ## A010413.P16806813815142041858

`eq[char[A028765(n+1)], A160145(n)]`
-/

namespace A010413.P16806813815142041858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010413.P16806813815142041858

/-! ## A010413.P13070589614850891071

`eq[char[A028765(n+1)], A321538(n)]`
-/

namespace A010413.P13070589614850891071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010413.P13070589614850891071

/-!
# A010414: Squares mod 53.

The programs for A010414, there is no canonical definition to state claims against.
-/

/-! ## A010414.P13268401704875905366

`record[n*A011593(n)]`
-/

namespace A010414.P13268401704875905366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010414.P13268401704875905366

/-! ## A010414.P9329846631487860924

`lt[n*A011593(2*n), 1]`
-/

namespace A010414.P9329846631487860924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010414.P9329846631487860924

/-! ## A010414.P8308128338981946688

`comp[(A011593(n+1)+2)*(n+1)]`
-/

namespace A010414.P8308128338981946688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011593 (n + 1) + 2) * (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010414.P8308128338981946688

/-! ## A010414.P1197330209055062782

`eq[A011593(n), A276398(n)]`
-/

namespace A010414.P1197330209055062782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276398 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010414.P1197330209055062782

/-! ## A010414.P5853145549061739053

`eq[A011593(n), A294619(n)]`
-/

namespace A010414.P5853145549061739053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010414.P5853145549061739053

/-!
# A010415: Squares mod 54.

The programs for A010415, there is no canonical definition to state claims against.
-/

/-! ## A010415.P3256383852938679656

`comp[A028767(n+1)]`
-/

namespace A010415.P3256383852938679656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010415.P3256383852938679656

/-! ## A010415.P12693208377549138762

`lt[A028967(n)², n+2]`
-/

namespace A010415.P12693208377549138762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010415.P12693208377549138762

/-! ## A010415.P839371994853266478

`record[n+1-n%3-A279329(n)]`
-/

namespace A010415.P839371994853266478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n % 3 : ℕ) : ℤ) - A279329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010415.P839371994853266478

/-! ## A010415.P9627635266217522816

`lt[1, A134028(n+3)+a(n-3)]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A010415.P9627635266217522816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  A134028 (n + 3) + f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010415.P9627635266217522816

/-! ## A010415.P13158496595270950880

`A242660(A265999(n+1))`
-/

namespace A010415.P13158496595270950880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (A265999 (n + 1)).toNat

end

end A010415.P13158496595270950880

/-!
# A010416: Squares mod 55.

The programs for A010416, there is no canonical definition to state claims against.
-/

/-! ## A010416.P17589773564468518961

`comp[A028768(n+1)]`
-/

namespace A010416.P17589773564468518961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010416.P17589773564468518961

/-! ## A010416.P9249183914998523931

`eq[char[A028768(n+1)], A005926(n)]`
-/

namespace A010416.P9249183914998523931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010416.P9249183914998523931

/-! ## A010416.P4937050532710572902

`eq[char[A028768(n+1)], A025439(n)]`
-/

namespace A010416.P4937050532710572902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010416.P4937050532710572902

/-! ## A010416.P2125613438973141981

`comp[∪[A047221(n+1), A267541(n)]]`
-/

namespace A010416.P2125613438973141981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010416.P2125613438973141981

/-! ## A010416.P12184077865655599568

`comp[∪[A233998(n+1), A267541(n)]]`
-/

namespace A010416.P12184077865655599568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010416.P12184077865655599568

/-!
# A010417: Squares mod 56.

The programs for A010417, there is no canonical definition to state claims against.
-/

/-! ## A010417.P11704372909937410375

`comp[A028769(n+1)]`
-/

namespace A010417.P11704372909937410375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010417.P11704372909937410375

/-! ## A010417.P12108277390894169481

`∪[comp[A268715(2*n+1)], n²]`
-/

namespace A010417.P12108277390894169481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A010417.P12108277390894169481

/-! ## A010417.P15534816158680115062

`∪[2*A032623(n+1)+2, n²]`
-/

namespace A010417.P15534816158680115062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032623 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010417.P15534816158680115062

/-! ## A010417.P1374523558430963628

`∩[A020670(n+1), comp[or(n, n+3)]]`
-/

namespace A010417.P1374523558430963628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A010417.P1374523558430963628

/-! ## A010417.P3050890525200121040

`eq[Δ[A048728(n)], A227834(n)]`
-/

namespace A010417.P3050890525200121040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A010417.P3050890525200121040

/-!
# A010418: Squares mod 57.

The programs for A010418, there is no canonical definition to state claims against.
-/

/-! ## A010418.P4097378111640175434

`comp[A028770(n+1)]`
-/

namespace A010418.P4097378111640175434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010418.P4097378111640175434

/-! ## A010418.P784392527351344480

`comp[record[A028770(A133310(n))]]`
-/

namespace A010418.P784392527351344480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010418.P784392527351344480

/-! ## A010418.P13585240773058148952

`eq[char[A028770(n+1)], A160145(n)]`
-/

namespace A010418.P13585240773058148952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010418.P13585240773058148952

/-! ## A010418.P9238307041970715976

`eq[char[A028770(n+1)], A028718(3*(n+1))]`
-/

namespace A010418.P9238307041970715976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028718 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010418.P9238307041970715976

/-!
# A010419: Squares mod 58.

The programs for A010419, there is no canonical definition to state claims against.
-/

/-! ## A010419.P12326138105491781105

`comp[lt[A011587(n)+n, n]]`
-/

namespace A010419.P12326138105491781105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010419.P12326138105491781105

/-! ## A010419.P4821996362534267259

`comp[lt[n, n*A186305(n)]]`
-/

namespace A010419.P4821996362534267259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010419.P4821996362534267259

/-! ## A010419.P14299022239186401793

`comp[comp[n-(n²+n)%29]%A004814(n+1)]`
-/

namespace A010419.P14299022239186401793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 29 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A004814 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010419.P14299022239186401793

/-! ## A010419.P16648184370952425566

`lt[-A010059(n), A011587(n)]`
-/

namespace A010419.P16648184370952425566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010419.P16648184370952425566

/-! ## A010419.P15682586138308207826

`comp[A028771(n+1)]`
-/

namespace A010419.P15682586138308207826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010419.P15682586138308207826

/-!
# A010420: Squares mod 59.

The programs for A010420, there is no canonical definition to state claims against.
-/

/-! ## A010420.P1047538375576721570

`comp[A028772(n+1)]`
-/

namespace A010420.P1047538375576721570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010420.P1047538375576721570

/-! ## A010420.P12270369620121340170

`record[n*A011594(n)]`
-/

namespace A010420.P12270369620121340170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010420.P12270369620121340170

/-! ## A010420.P12935332197414544689

`lt[n*A011594(2*n), 1]`
-/

namespace A010420.P12935332197414544689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011594 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010420.P12935332197414544689

/-! ## A010420.P9563899103900965526

`A166715(n+51)%(2*(n+1))`
-/

namespace A010420.P9563899103900965526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166715 (n + 51)) (2 * (n + 1) : ℤ)

end

end A010420.P9563899103900965526

/-! ## A010420.P3919973836430406272

`eq[A011594(n), A294619(n)]`
-/

namespace A010420.P3919973836430406272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010420.P3919973836430406272

/-!
# A010421: Squares mod 60.

The programs for A010421, there is no canonical definition to state claims against.
-/

/-! ## A010421.P11402622218869160340

`∩[∑[gcd(3, n+1)]-1, and(3*n, -3)]`
-/

namespace A010421.P11402622218869160340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A010421.P11402622218869160340

/-! ## A010421.P18325983909190765227

`comp[A028773(n+1)]`
-/

namespace A010421.P18325983909190765227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010421.P18325983909190765227

/-! ## A010421.P122917362066619346

`eq[n, A159852(n*(4*n-3))]`
-/

namespace A010421.P122917362066619346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159852 ((n : ℤ) * ((4 * n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010421.P122917362066619346

/-! ## A010421.P9701043672345659721

`∩[A008854(n+1), A112652(n)]`
-/

namespace A010421.P9701043672345659721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010421.P9701043672345659721

/-! ## A010421.P14036273929658285070

`∪[A320894(n+1), A350632(n)]`
-/

namespace A010421.P14036273929658285070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A010421.P14036273929658285070

/-!
# A010422: Squares mod 61.

The programs for A010422, there is no canonical definition to state claims against.
-/

/-! ## A010422.P16817777447065522649

`record[n*A011595(n)]`
-/

namespace A010422.P16817777447065522649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010422.P16817777447065522649

/-! ## A010422.P11559430334778489631

`eq[A011595(n), A294619(n)]`
-/

namespace A010422.P11559430334778489631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010422.P11559430334778489631

/-! ## A010422.P15203166905265478782

`eq[A011595(n²), A011595(n)]`
-/

namespace A010422.P15203166905265478782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010422.P15203166905265478782

/-! ## A010422.P11249114937820235166

`eq[A011595(n), A323022(n+1)]`
-/

namespace A010422.P11249114937820235166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010422.P11249114937820235166

/-! ## A010422.P1577358827631353591

`comp[A028774(n+1)]`
-/

namespace A010422.P1577358827631353591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010422.P1577358827631353591

/-!
# A010423: Squares mod 62.

The programs for A010423, there is no canonical definition to state claims against.
-/

/-! ## A010423.P1594451181290629154

`comp[A028775(n+1)]`
-/

namespace A010423.P1594451181290629154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010423.P1594451181290629154

/-! ## A010423.P5005735697361354199

`comp[lt[A011588(n)+n, n]]`
-/

namespace A010423.P5005735697361354199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010423.P5005735697361354199

/-! ## A010423.P6674914855459169912

`comp[eq[A011588(n), A260196(n)]]`
-/

namespace A010423.P6674914855459169912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010423.P6674914855459169912

/-! ## A010423.P1956074983978782482

`lt[A185706(n+1), A011588(n)+1]`
-/

namespace A010423.P1956074983978782482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010423.P1956074983978782482

/-! ## A010423.P7496375778836906470

`lt[A286052(n+1), A011588(n)+1]`
-/

namespace A010423.P7496375778836906470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010423.P7496375778836906470

/-!
# A010424: Squares mod 63.

The programs for A010424, there is no canonical definition to state claims against.
-/

/-! ## A010424.P5734632116428453692

`comp[A028776(n+1)]`
-/

namespace A010424.P5734632116428453692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010424.P5734632116428453692

/-! ## A010424.P1782120212272035507

`lt[0, A170770(2*n)]`
-/

namespace A010424.P1782120212272035507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010424.P1782120212272035507

/-! ## A010424.P14175352223209427444

`comp[record[A028776(A133310(n))]]`
-/

namespace A010424.P14175352223209427444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010424.P14175352223209427444

/-! ## A010424.P4268371285333547918

`comp[record[A028776(A134478(n))]]`
-/

namespace A010424.P4268371285333547918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010424.P4268371285333547918

/-! ## A010424.P17337383283629803101

`comp[record[A028776(A366877(n))]]`
-/

namespace A010424.P17337383283629803101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (A366877 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010424.P17337383283629803101

/-!
# A010425: Squares mod 64.

The programs for A010425, there is no canonical definition to state claims against.
-/

/-! ## A010425.P16707896501758755811

`∪[8*n+1, n²]`
-/

namespace A010425.P16707896501758755811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A010425.P16707896501758755811

/-! ## A010425.P10438402413016062778

`record[and(n+2, ((2*n+1)²-(n-1))²)]`
-/

namespace A010425.P10438402413016062778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((((2 * n + 1) ^ 2 : ℤ) - ((n : ℤ) - 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010425.P10438402413016062778

/-! ## A010425.P11702928763336805748

`lt[A028963(n), 2]`
-/

namespace A010425.P11702928763336805748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010425.P11702928763336805748

/-! ## A010425.P982112124133941993

`lt[A029681(n), 2]`
-/

namespace A010425.P982112124133941993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010425.P982112124133941993

/-! ## A010425.P5894875974350381646

`comp[A028777(n+1)]`
-/

namespace A010425.P5894875974350381646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010425.P5894875974350381646

/-!
# A010426: Squares mod 65.

The programs for A010426, there is no canonical definition to state claims against.
-/

/-! ## A010426.P5721481761629920780

`comp[A028778(n+1)]`
-/

namespace A010426.P5721481761629920780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010426.P5721481761629920780

/-! ## A010426.P17919979980207224282

`comp[record[A028778(A065648(n))]]`
-/

namespace A010426.P17919979980207224282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010426.P17919979980207224282

/-! ## A010426.P1013360933418017194

`comp[record[A028778(A133310(n))]]`
-/

namespace A010426.P1013360933418017194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010426.P1013360933418017194

/-! ## A010426.P6106542846521745082

`comp[record[A028778(A134478(n))]]`
-/

namespace A010426.P6106542846521745082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010426.P6106542846521745082

/-! ## A010426.P17138504167340068240

`comp[record[A028778(A152271(n))]]`
-/

namespace A010426.P17138504167340068240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010426.P17138504167340068240

/-!
# A010427: Squares mod 66.

The programs for A010427, there is no canonical definition to state claims against.
-/

/-! ## A010427.P3015866566742948372

`comp[comp[n-(n^6)%33]-33]`
-/

namespace A010427.P3015866566742948372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 6 % 33 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 33

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010427.P3015866566742948372

/-! ## A010427.P11171010111589102378

`comp[A028779(n+1)]`
-/

namespace A010427.P11171010111589102378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010427.P11171010111589102378

/-! ## A010427.P11876514979535234244

`comp[comp[n-A070656(n)]-33]`
-/

namespace A010427.P11876514979535234244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070656 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 33

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010427.P11876514979535234244

/-! ## A010427.P13798487619895855814

`comp[record[A028779(A304740(n))]]`
-/

namespace A010427.P13798487619895855814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A304740 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010427.P13798487619895855814

/-! ## A010427.P10204815010532116517

`comp[∪[A016789(n), A267541(n)]]`
-/

namespace A010427.P10204815010532116517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010427.P10204815010532116517

/-!
# A010428: Squares mod 67.

The programs for A010428, there is no canonical definition to state claims against.
-/

/-! ## A010428.P2474155467508568720

`comp[A028780(n+1)]`
-/

namespace A010428.P2474155467508568720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010428.P2474155467508568720

/-! ## A010428.P4728099157760360836

`record[n*A011596(n)]`
-/

namespace A010428.P4728099157760360836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010428.P4728099157760360836

/-! ## A010428.P8082203519802735794

`eq[A011596(n), A294619(n)]`
-/

namespace A010428.P8082203519802735794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010428.P8082203519802735794

/-! ## A010428.P4153839887895475176

`lt[-A010054(n), A011596(n)]`
-/

namespace A010428.P4153839887895475176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010428.P4153839887895475176

/-! ## A010428.P2411527533353814723

`eq[A011596(n²), A011596(n)]`
-/

namespace A010428.P2411527533353814723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010428.P2411527533353814723

/-!
# A010429: Squares mod 68.

The programs for A010429, there is no canonical definition to state claims against.
-/

/-! ## A010429.P12252515723945937683

`comp[lt[1-and(2, n), and(n, (n²²²+1)%17-1)]]`
-/

namespace A010429.P12252515723945937683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010429.P12252515723945937683

/-! ## A010429.P3819087672134688004

`comp[A028781(n+1)]`
-/

namespace A010429.P3819087672134688004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010429.P3819087672134688004

/-! ## A010429.P2769583148643260130

`comp[record[A028781(A133310(n))]]`
-/

namespace A010429.P2769583148643260130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028781 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010429.P2769583148643260130

/-! ## A010429.P5219388112778791925

`comp[record[A028781(A152271(n))]]`
-/

namespace A010429.P5219388112778791925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028781 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010429.P5219388112778791925

/-! ## A010429.P10551233308502813192

`comp[A028781(A133310(n))]%A052905(n)`
-/

namespace A010429.P10551233308502813192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028781 (A133310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A052905 n)

end

end A010429.P10551233308502813192

/-!
# A010430: Squares mod 69.

The programs for A010430, there is no canonical definition to state claims against.
-/

/-! ## A010430.P3227581522283911129

`comp[A028782(n+1)]`
-/

namespace A010430.P3227581522283911129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010430.P3227581522283911129

/-! ## A010430.P129645592314003461

`comp[∪[3*n+2, A278579(n+1)]]`
-/

namespace A010430.P129645592314003461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010430.P129645592314003461

/-! ## A010430.P2067465653472513878

`comp[record[A028782(A133310(n))]]`
-/

namespace A010430.P2067465653472513878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010430.P2067465653472513878

/-! ## A010430.P13974810545048250066

`comp[record[A028782(A152271(n))]]`
-/

namespace A010430.P13974810545048250066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010430.P13974810545048250066

/-! ## A010430.P2862976454153040240

`comp[record[A028782(A158416(n))]]`
-/

namespace A010430.P2862976454153040240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010430.P2862976454153040240

/-!
# A010431: Squares mod 70.

The programs for A010431, there is no canonical definition to state claims against.
-/

/-! ## A010431.P4209698764034800872

`comp[A028783(n+1)]`
-/

namespace A010431.P4209698764034800872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010431.P4209698764034800872

/-! ## A010431.P2943542872545117433

`∩[A008854(n+1), A047351(n+1)]`
-/

namespace A010431.P2943542872545117433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010431.P2943542872545117433

/-!
# A010432: Squares mod 71.

The programs for A010432, there is no canonical definition to state claims against.
-/

/-! ## A010432.P227683668629373147

`comp[A028784(n+1)]`
-/

namespace A010432.P227683668629373147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010432.P227683668629373147

/-! ## A010432.P5555206958833234353

`record[n*A011597(n)]`
-/

namespace A010432.P5555206958833234353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010432.P5555206958833234353

/-! ## A010432.P11445962720483509206

`lt[n^-A011597(2*n), 2]`
-/

namespace A010432.P11445962720483509206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (-A011597 (2 * n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A010432.P11445962720483509206

/-! ## A010432.P14522299969517156932

`comp[record[A028784(A323889(n))]]`
-/

namespace A010432.P14522299969517156932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028784 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010432.P14522299969517156932

/-! ## A010432.P4867171847415068441

`lt[-A004530(n), A011597(n)]`
-/

namespace A010432.P4867171847415068441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010432.P4867171847415068441

/-!
# A010433: Squares mod 72.

The programs for A010433, there is no canonical definition to state claims against.
-/

/-! ## A010433.P4916031424529899631

`∪[4*(3*n+1), n²]`
-/

namespace A010433.P4916031424529899631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A010433.P4916031424529899631

/-! ## A010433.P13648390504696060246

`comp[A028785(n+1)]`
-/

namespace A010433.P13648390504696060246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010433.P13648390504696060246

/-! ## A010433.P6323443263337111881

`filter[A230240(n+1), A266843(#)]`
-/

namespace A010433.P6323443263337111881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266843 (f1 j).toNat = 1) n)

end

end A010433.P6323443263337111881

/-! ## A010433.P5505711493708106738

`filter[A230240(n+1), A354034(#)]`
-/

namespace A010433.P5505711493708106738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A010433.P5505711493708106738

/-! ## A010433.P10318488402067661871

`filter[A257058(n+1), A374036(#)]`
-/

namespace A010433.P10318488402067661871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A010433.P10318488402067661871

/-!
# A010434: Squares mod 73.

The programs for A010434, there is no canonical definition to state claims against.
-/

/-! ## A010434.P1067696611735778244

`record[n*A011598(n)]`
-/

namespace A010434.P1067696611735778244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010434.P1067696611735778244

/-! ## A010434.P2036354751120947097

`comp[lt[n, n-A011598(2*n)]]`
-/

namespace A010434.P2036354751120947097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011598 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010434.P2036354751120947097

/-! ## A010434.P9910870856166787144

`comp[eq[A011598(5*n)+n, n+1]]`
-/

namespace A010434.P9910870856166787144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 (5 * n) + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010434.P9910870856166787144

/-! ## A010434.P18282951697541474266

`lt[-A010052(n), A011598(n)]`
-/

namespace A010434.P18282951697541474266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010434.P18282951697541474266

/-! ## A010434.P5705354741912695898

`eq[A011598(n), A132126(n+1)]`
-/

namespace A010434.P5705354741912695898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010434.P5705354741912695898

/-!
# A010435: Squares mod 74.

The programs for A010435, there is no canonical definition to state claims against.
-/

/-! ## A010435.P17991029957768228620

`comp[lt[A011589(n)+n, n]]`
-/

namespace A010435.P17991029957768228620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010435.P17991029957768228620

/-! ## A010435.P8240291134324104598

`lt[n*A011589(2*n), 1]`
-/

namespace A010435.P8240291134324104598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011589 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010435.P8240291134324104598

/-! ## A010435.P766177866723438816

`comp[eq[A011589(n), A260196(n)]]`
-/

namespace A010435.P766177866723438816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010435.P766177866723438816

/-! ## A010435.P1576923131781989988

`comp[A028787(n+1)]`
-/

namespace A010435.P1576923131781989988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010435.P1576923131781989988

/-! ## A010435.P15145479891823729593

`comp[comp[A053186(37*n)]-37]`
-/

namespace A010435.P15145479891823729593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (37 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 37

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010435.P15145479891823729593

/-!
# A010436: Squares mod 75.

The programs for A010436, there is no canonical definition to state claims against.
-/

/-! ## A010436.P14931381664413394421

`comp[A028788(n+1)]`
-/

namespace A010436.P14931381664413394421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010436.P14931381664413394421

/-! ## A010436.P10578160426207974910

`∪[A047201(and(3*n+1, -3)), n²]`
-/

namespace A010436.P10578160426207974910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (Int.land (3 * n + 1 : ℤ) (-3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010436.P10578160426207974910

/-! ## A010436.P11023971495332895961

`comp[record[A028788(A065648(n))]]`
-/

namespace A010436.P11023971495332895961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010436.P11023971495332895961

/-! ## A010436.P16801021106922256505

`comp[record[A028788(A133310(n))]]`
-/

namespace A010436.P16801021106922256505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010436.P16801021106922256505

/-! ## A010436.P7086375805332651100

`comp[record[A028788(A158416(n))]]`
-/

namespace A010436.P7086375805332651100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010436.P7086375805332651100

/-!
# A010437: Squares mod 76.

The programs for A010437, there is no canonical definition to state claims against.
-/

/-! ## A010437.P12095048897532012709

`comp[A028789(n+1)]`
-/

namespace A010437.P12095048897532012709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010437.P12095048897532012709

/-! ## A010437.P11104053045169609394

`filter[A010399(n+1), A133872(#)]`
-/

namespace A010437.P11104053045169609394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A010437.P11104053045169609394

/-!
# A010438: Squares mod 77.

The programs for A010438, there is no canonical definition to state claims against.
-/

/-! ## A010438.P3073643623874967185

`comp[A028790(n+1)]`
-/

namespace A010438.P3073643623874967185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010438.P3073643623874967185

/-! ## A010438.P7469728209723869656

`comp[record[A028790(A117910(n))]]`
-/

namespace A010438.P7469728209723869656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010438.P7469728209723869656

/-! ## A010438.P10068494546524202372

`comp[record[A028790(A133310(n))]]`
-/

namespace A010438.P10068494546524202372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010438.P10068494546524202372

/-! ## A010438.P17512708754666479245

`comp[record[A028790(A134478(n))]]`
-/

namespace A010438.P17512708754666479245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010438.P17512708754666479245

/-! ## A010438.P16458833695160776896

`eq[char[A028790(n+1)], A160145(n)]`
-/

namespace A010438.P16458833695160776896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010438.P16458833695160776896

/-!
# A010439: Squares mod 78.

The programs for A010439, there is no canonical definition to state claims against.
-/

/-! ## A010439.P15300955188846488066

`comp[A028791(n+1)]`
-/

namespace A010439.P15300955188846488066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010439.P15300955188846488066

/-! ## A010439.P13106603524411585037

`lt[char[A028791(n+1)], A157686(3*n+5)]`
-/

namespace A010439.P13106603524411585037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A010439.P13106603524411585037

/-! ## A010439.P11483036936513048327

`A010400(n+1)`
-/

namespace A010439.P11483036936513048327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010400 (n + 1)

end

end A010439.P11483036936513048327

/-! ## A010439.P306465564579547828

`eq[n, A070720(A101684(n))]`
-/

namespace A010439.P306465564579547828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070720 (A101684 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010439.P306465564579547828

/-! ## A010439.P6530182737086936017

`eq[n, A070720(A286577(n))]`
-/

namespace A010439.P6530182737086936017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070720 (A286577 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010439.P6530182737086936017

/-!
# A010440: Squares mod 79.

The programs for A010440, there is no canonical definition to state claims against.
-/

/-! ## A010440.P16578987748719538725

`comp[A028792(n+1)]`
-/

namespace A010440.P16578987748719538725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010440.P16578987748719538725

/-! ## A010440.P1353484299861232590

`record[n*A011599(n)]`
-/

namespace A010440.P1353484299861232590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010440.P1353484299861232590

/-! ## A010440.P6756328070596250019

`comp[lt[A011599(2*n)+n, n]]`
-/

namespace A010440.P6756328070596250019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 (2 * n) + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010440.P6756328070596250019

/-! ## A010440.P14731696692572682450

`eq[A011599(n²), A011599(n)]`
-/

namespace A010440.P14731696692572682450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010440.P14731696692572682450

/-! ## A010440.P11912798163472642407

`lt[-A011599(n), A025446(n)]`
-/

namespace A010440.P11912798163472642407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010440.P11912798163472642407

/-!
# A010441: Squares mod 80.

The programs for A010441, there is no canonical definition to state claims against.
-/

/-! ## A010441.P11685383971014203421

`comp[A028793(n+1)]`
-/

namespace A010441.P11685383971014203421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010441.P11685383971014203421

/-! ## A010441.P9667562312049470235

`∪[∑[A278582(n+1)], n²]`
-/

namespace A010441.P9667562312049470235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A010441.P9667562312049470235

/-! ## A010441.P12210418692728669456

`∪[∑[A241141(n+5)], n²]`
-/

namespace A010441.P12210418692728669456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241141 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A010441.P12210418692728669456

/-! ## A010441.P3159719438214640161

`∪[A271576(3*(n+1)), n²]`
-/

namespace A010441.P3159719438214640161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010441.P3159719438214640161

/-! ## A010441.P4370564249171758585

`∪[∑[A018231(n+5)+12], n²]`
-/

namespace A010441.P4370564249171758585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (n + 5) + 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A010441.P4370564249171758585

/-!
# A010442: Squares mod 81.

The programs for A010442, there is no canonical definition to state claims against.
-/

/-! ## A010442.P8387230048292317922

`lt[A028967(n), 2]`
-/

namespace A010442.P8387230048292317922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010442.P8387230048292317922

/-! ## A010442.P8766217361125993849

`comp[A028794(n+1)]`
-/

namespace A010442.P8766217361125993849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010442.P8766217361125993849

/-! ## A010442.P12065688714832429091

`comp[A028966(n+1)]`
-/

namespace A010442.P12065688714832429091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010442.P12065688714832429091

/-! ## A010442.P9567685440402354251

`lt[A224822(2*n), 2]`
-/

namespace A010442.P9567685440402354251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010442.P9567685440402354251

/-! ## A010442.P13213025135519794296

`lt[A246928(2*n), 2]`
-/

namespace A010442.P13213025135519794296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010442.P13213025135519794296

/-!
# A010443: Squares mod 82.

The programs for A010443, there is no canonical definition to state claims against.
-/

/-! ## A010443.P9343340872079940262

`comp[comp[n-(n²+n)%41]-41]`
-/

namespace A010443.P9343340872079940262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 41 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 41

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010443.P9343340872079940262

/-! ## A010443.P11868547946944589506

`comp[eq[A011590(n), A260196(n)]]`
-/

namespace A010443.P11868547946944589506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010443.P11868547946944589506

/-! ## A010443.P5160088011801542648

`comp[lt[A011590(n), A188967(n+1)]]`
-/

namespace A010443.P5160088011801542648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010443.P5160088011801542648

/-! ## A010443.P16598063352917106387

`lt[A161175(n+1), A011590(n)+2]`
-/

namespace A010443.P16598063352917106387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010443.P16598063352917106387

/-! ## A010443.P5578216729203771118

`comp[A028795(n+1)]`
-/

namespace A010443.P5578216729203771118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010443.P5578216729203771118

/-!
# A010444: Squares mod 83.

The programs for A010444, there is no canonical definition to state claims against.
-/

/-! ## A010444.P8053603891338561045

`comp[A028796(n+1)]`
-/

namespace A010444.P8053603891338561045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010444.P8053603891338561045

/-! ## A010444.P4580633888623066193

`record[n*A011600(n)]`
-/

namespace A010444.P4580633888623066193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010444.P4580633888623066193

/-! ## A010444.P16877843743460543889

`lt[n*A011600(2*n), 1]`
-/

namespace A010444.P16877843743460543889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011600 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010444.P16877843743460543889

/-! ## A010444.P9264488992968291057

`comp[eq[1, gcd(2, A036178(n+1))]+1]`
-/

namespace A010444.P9264488992968291057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A036178 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010444.P9264488992968291057

/-! ## A010444.P14013845443739275854

`eq[A011600(n), A294619(n)]`
-/

namespace A010444.P14013845443739275854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010444.P14013845443739275854

/-!
# A010445: Squares mod 84.

The programs for A010445, there is no canonical definition to state claims against.
-/

/-! ## A010445.P1831047726558457139

`comp[A028797(n+1)]`
-/

namespace A010445.P1831047726558457139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010445.P1831047726558457139

/-! ## A010445.P6735242946716635228

`∩[A047351(n+1), A112652(n)]`
-/

namespace A010445.P6735242946716635228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010445.P6735242946716635228

/-! ## A010445.P8721341665651535682

`eq[A070585(n), A374157(n)]`
-/

namespace A010445.P8721341665651535682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010445.P8721341665651535682

/-! ## A010445.P12856750286811006703

`filter[A010403(n+1), A133872(#)]`
-/

namespace A010445.P12856750286811006703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A010445.P12856750286811006703

/-! ## A010445.P12394217942501109139

`eq[A036710(n), A284055(n+1)]`
-/

namespace A010445.P12394217942501109139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010445.P12394217942501109139

/-!
# A010446: Squares mod 85.

The programs for A010446, there is no canonical definition to state claims against.
-/

/-! ## A010446.P9460134908858606934

`comp[A028798(n+1)]`
-/

namespace A010446.P9460134908858606934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010446.P9460134908858606934

/-!
# A010447: Squares mod 86.

The programs for A010447, there is no canonical definition to state claims against.
-/

/-! ## A010447.P964762966103561974

`comp[A028799(n+1)]`
-/

namespace A010447.P964762966103561974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010447.P964762966103561974

/-! ## A010447.P16778368982988649533

`lt[ceil(A011591(2*n)/A047130(n)), 1]`
-/

namespace A010447.P16778368982988649533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011591 (2 * n) : ℚ) / (A047130 n : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010447.P16778368982988649533

/-! ## A010447.P3506801443516711253

`lt[ceil(A011591(2*n)/A319193(n)), 1]`
-/

namespace A010447.P3506801443516711253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011591 (2 * n) : ℚ) / (A319193 n : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010447.P3506801443516711253

/-! ## A010447.P4121464780967305774

`comp[lt[A011591(n), A213728(2*n+1)]]`
-/

namespace A010447.P4121464780967305774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010447.P4121464780967305774

/-! ## A010447.P3241186813130272041

`lt[ceil(A011591(2*n)/A135597(n+1)), 1]`
-/

namespace A010447.P3241186813130272041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011591 (2 * n) : ℚ) / (A135597 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010447.P3241186813130272041

/-!
# A010448: Squares mod 87.

The programs for A010448, there is no canonical definition to state claims against.
-/

/-! ## A010448.P9310591446526419730

`comp[A028800(n+1)]`
-/

namespace A010448.P9310591446526419730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010448.P9310591446526419730

/-! ## A010448.P8067813420434265610

`lt[A116373(n+1), acot(A011587(n))]`
-/

namespace A010448.P8067813420434265610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116373 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A011587 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A010448.P8067813420434265610

/-! ## A010448.P2666278494030049580

`lt[A116376(n+1), acot(A011587(n))]`
-/

namespace A010448.P2666278494030049580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116376 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A011587 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A010448.P2666278494030049580

/-! ## A010448.P6566968824858633050

`eq[char[A028800(n+1)], A063667(n+1)]`
-/

namespace A010448.P6566968824858633050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010448.P6566968824858633050

/-! ## A010448.P8760875436389224490

`lt[A011646(n+1), A011587(n)]`
-/

namespace A010448.P8760875436389224490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010448.P8760875436389224490

/-!
# A010449: Squares mod 88.

The programs for A010449, there is no canonical definition to state claims against.
-/

/-! ## A010449.P13924441663238126356

`comp[A028801(n+1)]`
-/

namespace A010449.P13924441663238126356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010449.P13924441663238126356

/-! ## A010449.P5348153486697145070

`comp[∪[A047586(n+1), A267541(n)]]`
-/

namespace A010449.P5348153486697145070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047586 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010449.P5348153486697145070

/-! ## A010449.P14782710797251514585

`eq[A357137(A034807(n)), A357187(n)]`
-/

namespace A010449.P14782710797251514585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A034807 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010449.P14782710797251514585

/-! ## A010449.P13240423215165605581

`eq[n, A070684(A103164(n))]`
-/

namespace A010449.P13240423215165605581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070684 (A103164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010449.P13240423215165605581

/-! ## A010449.P1874841484566646338

`eq[n, A070684(A130891(n))]`
-/

namespace A010449.P1874841484566646338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070684 (A130891 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010449.P1874841484566646338

/-!
# A010450: Squares mod 89.

The programs for A010450, there is no canonical definition to state claims against.
-/

/-! ## A010450.P15407429960022425707

`record[n*A011601(n)]`
-/

namespace A010450.P15407429960022425707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010450.P15407429960022425707

/-! ## A010450.P12432693479438828936

`comp[lt[A011601(2*n), sin(n)]]`
-/

namespace A010450.P12432693479438828936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 (2 * n)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010450.P12432693479438828936

/-! ## A010450.P6250318699826510122

`eq[A011601(n), A356352(n)]`
-/

namespace A010450.P6250318699826510122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010450.P6250318699826510122

/-! ## A010450.P12137259897617557853

`eq[A011601(n), A323022(n+1)]`
-/

namespace A010450.P12137259897617557853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010450.P12137259897617557853

/-! ## A010450.P3452924741957100184

`comp[A028802(n+1)]`
-/

namespace A010450.P3452924741957100184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010450.P3452924741957100184

/-!
# A010451: Squares mod 90.

The programs for A010451, there is no canonical definition to state claims against.
-/

/-! ## A010451.P6553576908837043115

`comp[and(comp[(n²-n)%(-90)+n], -1)]`
-/

namespace A010451.P6553576908837043115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (-90) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010451.P6553576908837043115

/-! ## A010451.P16285644833154169772

`comp[A028803(n+1)]`
-/

namespace A010451.P16285644833154169772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010451.P16285644833154169772

/-! ## A010451.P6262345919416810545

`∩[A008854(n+1), A242660(n+1)]`
-/

namespace A010451.P6262345919416810545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010451.P6262345919416810545

/-! ## A010451.P15242020626595037664

`∩[A242660(n+1), comp[A329783(n+1)]]`
-/

namespace A010451.P15242020626595037664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329783 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A010451.P15242020626595037664

/-! ## A010451.P1875421124410390666

`∩[comp[A268226(n+2)], A008854(n+1)]`
-/

namespace A010451.P1875421124410390666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A010451.P1875421124410390666

/-!
# A010452: Squares mod 91.

The programs for A010452, there is no canonical definition to state claims against.
-/

/-! ## A010452.P4640079846214851611

`comp[A028804(n+1)]`
-/

namespace A010452.P4640079846214851611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010452.P4640079846214851611

/-!
# A010453: Squares mod 92.

The programs for A010453, there is no canonical definition to state claims against.
-/

/-! ## A010453.P5687004463085857166

`comp[A028805(n+1)]`
-/

namespace A010453.P5687004463085857166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010453.P5687004463085857166

/-! ## A010453.P5055753662164827262

`eq[char[A028805(n+1)], A294889(n+1)]`
-/

namespace A010453.P5055753662164827262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010453.P5055753662164827262

/-! ## A010453.P4661930851769518163

`eq[char[A028805(n+1)], A169765(n+4)]`
-/

namespace A010453.P4661930851769518163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010453.P4661930851769518163

/-! ## A010453.P15859286356373732078

`eq[char[A028805(n+1)], A169767(n+4)]`
-/

namespace A010453.P15859286356373732078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169767 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010453.P15859286356373732078

/-! ## A010453.P13413577085971039643

`comp[∪[A042964(n+1), A278579(n+1)]]`
-/

namespace A010453.P13413577085971039643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010453.P13413577085971039643

/-!
# A010454: Squares mod 93.

The programs for A010454, there is no canonical definition to state claims against.
-/

/-! ## A010454.P17833833279424276496

`comp[A028806(n+1)]`
-/

namespace A010454.P17833833279424276496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010454.P17833833279424276496

/-! ## A010454.P1065589592766484888

`lt[A077896(A047400(n+1)), A011588(n)+1]`
-/

namespace A010454.P1065589592766484888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (A047400 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010454.P1065589592766484888

/-! ## A010454.P16029386976066706102

`lt[A259825(A042968(n+1)), A011588(n)+1]`
-/

namespace A010454.P16029386976066706102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A042968 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010454.P16029386976066706102

/-! ## A010454.P12021319155599599481

`∩[A010423(n+1), A032766(n)]`
-/

namespace A010454.P12021319155599599481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010454.P12021319155599599481

/-! ## A010454.P8191673148705312613

`eq[char[A010423(n+1)], A038500(n+1)]`
-/

namespace A010454.P8191673148705312613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A010454.P8191673148705312613

/-!
# A010455: Squares mod 94.

The programs for A010455, there is no canonical definition to state claims against.
-/

/-! ## A010455.P11885833549579174805

`comp[A028807(n+1)]`
-/

namespace A010455.P11885833549579174805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010455.P11885833549579174805

/-! ## A010455.P11691363176763748609

`comp[lt[A011592(n)+n, n]]`
-/

namespace A010455.P11691363176763748609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010455.P11691363176763748609

/-! ## A010455.P14510389243790185183

`comp[eq[A011592(n), A260196(n)]]`
-/

namespace A010455.P14510389243790185183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010455.P14510389243790185183

/-! ## A010455.P10323079975522949315

`lt[A010051(n+1), A011592(n)+1]`
-/

namespace A010455.P10323079975522949315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010455.P10323079975522949315

/-! ## A010455.P15727037382117819965

`comp[eq[A011592(n)+2, A323022(n+1)]]`
-/

namespace A010455.P15727037382117819965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010455.P15727037382117819965

/-!
# A010456: Squares mod 95.

The programs for A010456, there is no canonical definition to state claims against.
-/

/-! ## A010456.P1442679560623131718

`comp[A028808(n+1)]`
-/

namespace A010456.P1442679560623131718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010456.P1442679560623131718

/-! ## A010456.P9001220284180941537

`∩[A008854(n+1), A010399(n+1)]`
-/

namespace A010456.P9001220284180941537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010456.P9001220284180941537

/-! ## A010456.P11920491891706107361

`A010399(A294622(n)+n)`
-/

namespace A010456.P11920491891706107361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010399 (A294622 n + (n : ℤ)).toNat

end

end A010456.P11920491891706107361

/-! ## A010456.P11063665177364294294

`eq[0, A241382(A047813(2*(n+1)))]`
-/

namespace A010456.P11063665177364294294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 (A047813 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010456.P11063665177364294294

/-! ## A010456.P7441495706993156614

`lt[A133437(A047813(2*n+2)), 2]`
-/

namespace A010456.P7441495706993156614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133437 (A047813 (2 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010456.P7441495706993156614

/-!
# A010457: Squares mod 96.

The programs for A010457, there is no canonical definition to state claims against.
-/

/-! ## A010457.P16557585267459946942

`comp[A028809(n+1)]`
-/

namespace A010457.P16557585267459946942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010457.P16557585267459946942

/-!
# A010458: Squares mod 97.

The programs for A010458, there is no canonical definition to state claims against.
-/

/-! ## A010458.P4309773821680165279

`record[n*A011602(n)]`
-/

namespace A010458.P4309773821680165279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010458.P4309773821680165279

/-! ## A010458.P14260988095193894365

`eq[n, n*A011602(3*n)]`
-/

namespace A010458.P14260988095193894365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011602 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010458.P14260988095193894365

/-! ## A010458.P11748284589236328071

`eq[A011602(n²), A011602(n)]`
-/

namespace A010458.P11748284589236328071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010458.P11748284589236328071

/-! ## A010458.P17357321338777886258

`lt[n, or(A011602(n), A250120(n))]`
-/

namespace A010458.P17357321338777886258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011602 n) (A250120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010458.P17357321338777886258

/-! ## A010458.P17997952615099347581

`comp[A028810(n+1)]`
-/

namespace A010458.P17997952615099347581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010458.P17997952615099347581

/-!
# A010459: Squares mod 98.

The programs for A010459, there is no canonical definition to state claims against.
-/

/-! ## A010459.P8516886915790197818

`∪[∑[gcd(4, n%3)]-3, n²]`
-/

namespace A010459.P8516886915790197818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A010459.P8516886915790197818

/-! ## A010459.P3284752259439896867

`comp[A028811(n+1)]`
-/

namespace A010459.P3284752259439896867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010459.P3284752259439896867

/-! ## A010459.P12912962902653810182

`∪[A047350(n+1), n²]`
-/

namespace A010459.P12912962902653810182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010459.P12912962902653810182

/-! ## A010459.P15498020368793547711

`∪[A233999(n+1), n²]`
-/

namespace A010459.P15498020368793547711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233999 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010459.P15498020368793547711

/-! ## A010459.P7530064315302197276

`∪[A047370(n+1)-1, n²]`
-/

namespace A010459.P7530064315302197276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010459.P7530064315302197276

/-!
# A010460: Squares mod 99.

The programs for A010460, there is no canonical definition to state claims against.
-/

/-! ## A010460.P255425861791282346

`comp[A028812(n+1)]`
-/

namespace A010460.P255425861791282346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010460.P255425861791282346

/-! ## A010460.P5441142000176210318

`record[A004159(A139250(n))%A335628(n)]`
-/

namespace A010460.P5441142000176210318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004159 (A139250 n).toNat) (A335628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010460.P5441142000176210318

/-! ## A010460.P4125296299914679243

`A102342(eq[A005171(n+1), A059995(n)])`
-/

namespace A010460.P4125296299914679243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A010460.P4125296299914679243

/-! ## A010460.P15964425884208837667

`lt[A112605(A093871(n+1)), A112605(n)]`
-/

namespace A010460.P15964425884208837667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A093871 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A010460.P15964425884208837667

/-! ## A010460.P9473462525812825140

`eq[A001227(n+1), A326787(A302494(n+1))]`
-/

namespace A010460.P9473462525812825140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A302494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010460.P9473462525812825140

/-!
# A010461: Squares mod 100.

The programs for A010461, there is no canonical definition to state claims against.
-/

/-! ## A010461.P10039300229276917575

`comp[A028813(n+1)]`
-/

namespace A010461.P10039300229276917575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010461.P10039300229276917575

/-! ## A010461.P17170438912160240910

`∪[A238712(n+6), n²]`
-/

namespace A010461.P17170438912160240910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A010461.P17170438912160240910

/-! ## A010461.P4137303229541468185

`filter[A238712(n+1), A263243(#)]`
-/

namespace A010461.P4137303229541468185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A010461.P4137303229541468185

/-! ## A010461.P8673057608166777052

`filter[A238712(n+1), A267520(#)]`
-/

namespace A010461.P8673057608166777052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267520 (f1 j).toNat = 1) n)

end

end A010461.P8673057608166777052

/-! ## A010461.P17458350524738396112

`A238712(comp[A000584(n)+3]+1)`
-/

namespace A010461.P17458350524738396112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A010461.P17458350524738396112

/-!
# A010462: Squares mod 30.

The programs for A010462, there is no canonical definition to state claims against.
-/

/-! ## A010462.P5763199698161995652

`comp[A028743(n+1)]`
-/

namespace A010462.P5763199698161995652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010462.P5763199698161995652

/-! ## A010462.P6914842447435063683

`comp[A353314(n)-7]`
-/

namespace A010462.P6914842447435063683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353314 n - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010462.P6914842447435063683

/-! ## A010462.P11134949624017637774

`eq[1, dr(A308036(n))]`
-/

namespace A010462.P11134949624017637774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A308036 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010462.P11134949624017637774

/-! ## A010462.P3493421943411111501

`eq[5, A053670(n+2)]`
-/

namespace A010462.P3493421943411111501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010462.P3493421943411111501

/-!
# A010463: Weight distribution of [32,21,6] BCH code.

The programs for A010463, there is no canonical definition to state claims against.
-/

/-! ## A010463.P16428735515678484697

`A109476(n)*A359512(A001906(n))`
-/

namespace A010463.P16428735515678484697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109476 n * A359512 (A001906 n).toNat

end

end A010463.P16428735515678484697

/-! ## A010463.P15448640501575045324

`A000120(A055381(n+1))*A109476(n)`
-/

namespace A010463.P15448640501575045324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055381 (n + 1)).toNat * A109476 n

end

end A010463.P15448640501575045324

/-!
# A010464: Decimal expansion of square root of 6.

The programs for A010464, there is no canonical definition to state claims against.
-/

/-! ## A010464.P782026270841120454

`A086180(n)-A000007(n)`
-/

namespace A010464.P782026270841120454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A000007 n

end

end A010464.P782026270841120454

/-! ## A010464.P14878070744533692163

`A086180(n)-A000035(A001316(n))`
-/

namespace A010464.P14878070744533692163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A000035 (A001316 n).toNat

end

end A010464.P14878070744533692163

/-! ## A010464.P5940875176265852202

`A086180(n)-A008683(A008574(n))`
-/

namespace A010464.P5940875176265852202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 (A008574 n).toNat

end

end A010464.P5940875176265852202

/-! ## A010464.P3333693338220679001

`A086180(n)-A008683(A022144(n))`
-/

namespace A010464.P3333693338220679001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 (A022144 n).toNat

end

end A010464.P3333693338220679001

/-! ## A010464.P314697808005470351

`A086180(n)-A008683(A046109(n))`
-/

namespace A010464.P314697808005470351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 (A046109 n).toNat

end

end A010464.P314697808005470351

/-! ## A010464.P7729222269779069161

`xor(A000007(A000120(n)), A086180(n))`
-/

namespace A010464.P7729222269779069161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000120 n).toNat) (A086180 (n + 1))

end

end A010464.P7729222269779069161

/-! ## A010464.P4571846726229011490

`xor(A000007(A000196(n)), A086180(n))`
-/

namespace A010464.P4571846726229011490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000196 n).toNat) (A086180 (n + 1))

end

end A010464.P4571846726229011490

/-! ## A010464.P10281220624592479732

`xor(A000007(A222250(n)), A086180(n))`
-/

namespace A010464.P10281220624592479732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A222250 n).toNat) (A086180 (n + 1))

end

end A010464.P10281220624592479732

/-! ## A010464.P16100900218787608589

`A086180(n)-A008683(A298036(n))`
-/

namespace A010464.P16100900218787608589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 (A298036 n).toNat

end

end A010464.P16100900218787608589

/-! ## A010464.P2873196399072704918

`xor(A000007(A002251(n)), A086180(n))`
-/

namespace A010464.P2873196399072704918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A002251 n).toNat) (A086180 (n + 1))

end

end A010464.P2873196399072704918

/-! ## A010464.P10644212771036036329

`xor(A000007(A004273(n)), A086180(n))`
-/

namespace A010464.P10644212771036036329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A004273 n).toNat) (A086180 (n + 1))

end

end A010464.P10644212771036036329

/-! ## A010464.P9540650150495811508

`xor(A000007(A004275(n)), A086180(n))`
-/

namespace A010464.P9540650150495811508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A004275 n).toNat) (A086180 (n + 1))

end

end A010464.P9540650150495811508

/-! ## A010464.P13480320305949346020

`xor(A000007(A005843(n)), A086180(n))`
-/

namespace A010464.P13480320305949346020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A005843 n).toNat) (A086180 (n + 1))

end

end A010464.P13480320305949346020

/-! ## A010464.P13148777537388099620

`xor(A000007(A042948(n)), A086180(n))`
-/

namespace A010464.P13148777537388099620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A042948 n).toNat) (A086180 (n + 1))

end

end A010464.P13148777537388099620

/-! ## A010464.P4384390467348989150

`A086180(n)-A008683(A000118(n))`
-/

namespace A010464.P4384390467348989150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 (A000118 n).toNat

end

end A010464.P4384390467348989150

/-! ## A010464.P2639316307045747474

`xor(A000007(A001281(n)), A086180(n))`
-/

namespace A010464.P2639316307045747474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A001281 n).toNat) (A086180 (n + 1))

end

end A010464.P2639316307045747474

/-! ## A010464.P6570650223449572395

`xor(A000007(A008585(n)), A086180(n))`
-/

namespace A010464.P6570650223449572395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A008585 n).toNat) (A086180 (n + 1))

end

end A010464.P6570650223449572395

/-! ## A010464.P6739771601887176772

`xor(A000007(A019428(n)), A086180(n))`
-/

namespace A010464.P6739771601887176772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A019428 n).toNat) (A086180 (n + 1))

end

end A010464.P6739771601887176772

/-! ## A010464.P2167808840773311018

`xor(A000007(A000788(n)), A086180(n))`
-/

namespace A010464.P2167808840773311018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A000788 n).toNat) (A086180 (n + 1))

end

end A010464.P2167808840773311018

/-! ## A010464.P13209144238738396366

`A086180(n)-A008683((n+1)²)`
-/

namespace A010464.P13209144238738396366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086180 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A010464.P13209144238738396366

/-!
# A010465: Decimal expansion of square root of 7.

The programs for A010465, the canonical program `A010465.P1651121411382965073` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010465 has offset 1).

The definition of A010465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010465.P1651121411382965073

`floor(sqrt(7)*10^n)%10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010465

/-- `floor(sqrt(7)*10^n)%10` -/
def P1651121411382965073.Spec : Prop :=
  ∀ n, P1651121411382965073.a n = A010465 (n + 1)

theorem P1651121411382965073.correct : P1651121411382965073.Spec := by
  intro n
  simp only [A010465, Nat.add_sub_cancel]

end A010465

/-!
# A010466: Decimal expansion of square root of 8.

The programs for A010466, there is no canonical definition to state claims against.
-/

/-! ## A010466.P13416702380434252590

`A090488(C(2, or(1, n))+n)`
-/

namespace A010466.P13416702380434252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (Nat.choose 2 (Nat.lor 1 n) + n + 1)

end

end A010466.P13416702380434252590

/-! ## A010466.P10664447925641433886

`A090488(or(n, C(2, or(1, n))))`
-/

namespace A010466.P10664447925641433886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (Nat.lor n (Nat.choose 2 (Nat.lor 1 n)) + 1)

end

end A010466.P10664447925641433886

/-! ## A010466.P3001661117648911273

`A090488(n)-C(2, (n+1)²)`
-/

namespace A010466.P3001661117648911273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A010466.P3001661117648911273

/-! ## A010466.P15487885941598988581

`A090488(A000038(n)+n)`
-/

namespace A010466.P15487885941598988581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A010466.P15487885941598988581

/-! ## A010466.P10841547277949334803

`A090488(n)-A000038(n)`
-/

namespace A010466.P10841547277949334803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - A000038 n

end

end A010466.P10841547277949334803

/-! ## A010466.P16436099369958959361

`A090488(or(n, A000038(n)))`
-/

namespace A010466.P16436099369958959361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A010466.P16436099369958959361

/-! ## A010466.P7391584541056835311

`A090488(n^A043531(and(1, a(n-1))+1))` with `a(0)=2`
-/

namespace A010466.P7391584541056835311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A090488 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A043531 (Int.land 1 (a (n - 1)) + 1).toNat : ℤ))).toNat + 1)

end

end A010466.P7391584541056835311

/-! ## A010466.P10948677629671000737

`A090488(n)+A090488(n)-A365823(n)`
-/

namespace A010466.P10948677629671000737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (A090488 (n + 1) - A365823 (n + 1))

end

end A010466.P10948677629671000737

/-! ## A010466.P2854268877147933896

`A156035(A126690(A020639(n+1))+n+1)`
-/

namespace A010466.P2854268877147933896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((A126690 (A020639 (n + 1)).toNat + (n + 1 : ℤ)).toNat + 1)

end

end A010466.P2854268877147933896

/-! ## A010466.P14086906990776624588

`A086178(n)-A210067(2*n)`
-/

namespace A010466.P14086906990776624588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086178 (n + 1) - A210067 (2 * n)

end

end A010466.P14086906990776624588

/-! ## A010466.P18360807256366096785

`A090488(n)/A014963(2*A000040(n+1))`
-/

namespace A010466.P18360807256366096785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090488 (n + 1) : ℚ) / (A014963 (2 * A000040 (n + 1)).toNat : ℚ)

end

end A010466.P18360807256366096785

/-! ## A010466.P13354341890198975314

`A090488(A028310(n)+A004530(n²+1))`
-/

namespace A010466.P13354341890198975314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 ((A028310 n + A004530 (n ^ 2 + 1)).toNat + 1)

end

end A010466.P13354341890198975314

/-!
# A010467: Decimal expansion of square root of 10.

The programs for A010467, there is no canonical definition to state claims against.
-/

/-! ## A010467.P11218314965594108728

`9-A054042(n)`
-/

namespace A010467.P11218314965594108728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A054042 n

end

end A010467.P11218314965594108728

/-! ## A010467.P8500485372601805880

`A176398(n)/A054977(n)`
-/

namespace A010467.P8500485372601805880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A010467.P8500485372601805880

/-! ## A010467.P9015480889398514307

`A176398(n)/A000038(n)!`
-/

namespace A010467.P9015480889398514307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A010467.P9015480889398514307

/-! ## A010467.P14891802515222005524

`dr(A040020(n)*A176398(n))`
-/

namespace A010467.P14891802515222005524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040020 n * A176398 (n + 1))

end

end A010467.P14891802515222005524

/-! ## A010467.P16176758464504012214

`A176398(n)/A040001(A271114(n))`
-/

namespace A010467.P16176758464504012214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A040001 (A271114 n).toNat : ℚ)

end

end A010467.P16176758464504012214

/-! ## A010467.P12072110234968694069

`A176398(n)/A000034(A008458(n))`
-/

namespace A010467.P12072110234968694069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A010467.P12072110234968694069

/-! ## A010467.P9207826108524857511

`A176398(n)/A014963(A017089(n))`
-/

namespace A010467.P9207826108524857511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A014963 (A017089 n).toNat : ℚ)

end

end A010467.P9207826108524857511

/-! ## A010467.P14155319287169303816

`A176398(n)/A014963(A017113(n))`
-/

namespace A010467.P14155319287169303816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A014963 (A017113 n).toNat : ℚ)

end

end A010467.P14155319287169303816

/-! ## A010467.P12398921041931199907

`A176398(n)/A014963(A001749(n+1))`
-/

namespace A010467.P12398921041931199907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A014963 (A001749 (n + 1)).toNat : ℚ)

end

end A010467.P12398921041931199907

/-! ## A010467.P4400138944585096711

`A176398(n)/A014963(A014574(n+1))`
-/

namespace A010467.P4400138944585096711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176398 (n + 1) : ℚ) / (A014963 (A014574 (n + 1)).toNat : ℚ)

end

end A010467.P4400138944585096711

/-! ## A010467.P2844180517961035965

`A049416(Δ[n²])%10`
-/

namespace A010467.P2844180517961035965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049416 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A010467.P2844180517961035965

/-! ## A010467.P6281362798435663892

`A017934(A005408(n))%10`
-/

namespace A010467.P6281362798435663892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017934 (A005408 n).toNat) 10

end

end A010467.P6281362798435663892

/-!
# A010468: Decimal expansion of square root of 11.

The programs for A010468, there is no canonical definition to state claims against.
-/

/-! ## A010468.P12694503600452372556

`A176395(A000007(n)+n)`
-/

namespace A010468.P12694503600452372556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176395 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A010468.P12694503600452372556

/-! ## A010468.P473799567623134053

`A176395(n)/A054977(n)`
-/

namespace A010468.P473799567623134053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176395 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A010468.P473799567623134053

/-! ## A010468.P9666061550760251169

`A176395(gcd(n, A008458(n)))`
-/

namespace A010468.P9666061550760251169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176395 (Int.gcd (n : ℤ) (A008458 n) + 1)

end

end A010468.P9666061550760251169

/-! ## A010468.P11505587067254429293

`A176395(or(n, A000007(n)))`
-/

namespace A010468.P11505587067254429293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176395 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A010468.P11505587067254429293

/-! ## A010468.P14036286240870774849

`A176395(xor(n, A000007(n)))`
-/

namespace A010468.P14036286240870774849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176395 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A010468.P14036286240870774849

/-! ## A010468.P11221116468602741929

`A176395(A065033(2*n))`
-/

namespace A010468.P11221116468602741929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176395 ((A065033 (2 * n)).toNat + 1)

end

end A010468.P11221116468602741929

/-!
# A010469: Decimal expansion of square root of 12.

The programs for A010469, there is no canonical definition to state claims against.
-/

/-! ## A010469.P6545015300659261893

`A343199(n)%A040030(n)`
-/

namespace A010469.P6545015300659261893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343199 (n + 1)) (A040030 n)

end

end A010469.P6545015300659261893

/-! ## A010469.P14051032387599307219

`gcd(A176394(n), A343199(n))`
-/

namespace A010469.P14051032387599307219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176394 (n + 1)) (A343199 (n + 1))

end

end A010469.P14051032387599307219

/-! ## A010469.P6757828438551724251

`A176394(n)/A000038(n)!`
-/

namespace A010469.P6757828438551724251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176394 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A010469.P6757828438551724251

/-! ## A010469.P2824044784898764959

`A176394(n)/(A000007(n)+1)`
-/

namespace A010469.P2824044784898764959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176394 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A010469.P2824044784898764959

/-! ## A010469.P5643389561904593698

`A040030(n)/12*A176394(n)`
-/

namespace A010469.P5643389561904593698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040030 n : ℚ) / 12 * (A176394 (n + 1) : ℚ)

end

end A010469.P5643389561904593698

/-! ## A010469.P17385033473570428340

`A176394(n)-A000007(n)*A040008(n)`
-/

namespace A010469.P17385033473570428340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176394 (n + 1) - A000007 n * A040008 n

end

end A010469.P17385033473570428340

/-! ## A010469.P18176928783137045116

`A176394(n)-A000007(n)*A047270(n+1)`
-/

namespace A010469.P18176928783137045116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176394 (n + 1) - A000007 n * A047270 (n + 1)

end

end A010469.P18176928783137045116

/-!
# A010472: Decimal expansion of square root of 15.

The programs for A010472, there is no canonical definition to state claims against.
-/

/-! ## A010472.P4328777533340800407

`A092294(n)/A054977(n)`
-/

namespace A010472.P4328777533340800407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A010472.P4328777533340800407

/-! ## A010472.P15066344200709780226

`A092294(n)/A000034(A001223(n+1))`
-/

namespace A010472.P15066344200709780226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A000034 (A001223 (n + 1)).toNat : ℚ)

end

end A010472.P15066344200709780226

/-! ## A010472.P3047711526114716162

`A092294(n)/A014963(A337645(n+1))`
-/

namespace A010472.P3047711526114716162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A014963 (A337645 (n + 1)).toNat : ℚ)

end

end A010472.P3047711526114716162

/-! ## A010472.P3685001650625222046

`A092294(n)/A322357(A020484(n))`
-/

namespace A010472.P3685001650625222046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A322357 (A020484 n).toNat : ℚ)

end

end A010472.P3685001650625222046

/-! ## A010472.P10176807555452336991

`A092294(n)/A000034(A004277(n))`
-/

namespace A010472.P10176807555452336991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A000034 (A004277 n).toNat : ℚ)

end

end A010472.P10176807555452336991

/-! ## A010472.P10920595013816664502

`A092294(n)/A014963(A016825(n))`
-/

namespace A010472.P10920595013816664502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A010472.P10920595013816664502

/-! ## A010472.P12174839057518429852

`A092294(n)/A000034(A008458(n))`
-/

namespace A010472.P12174839057518429852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A010472.P12174839057518429852

/-! ## A010472.P4738353336147082159

`A092294(n)/A014963(A017089(n))`
-/

namespace A010472.P4738353336147082159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A014963 (A017089 n).toNat : ℚ)

end

end A010472.P4738353336147082159

/-! ## A010472.P13310233889631916631

`A092294(6*A151878(n)+n)`
-/

namespace A010472.P13310233889631916631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092294 ((6 * A151878 n + (n : ℤ)).toNat + 1)

end

end A010472.P13310233889631916631

/-! ## A010472.P15499206320708968989

`A092294(n)/A000034(A151878(n))`
-/

namespace A010472.P15499206320708968989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092294 (n + 1) : ℚ) / (A000034 (A151878 n).toNat : ℚ)

end

end A010472.P15499206320708968989

/-!
# A010473: Decimal expansion of square root of 17.

The programs for A010473, there is no canonical definition to state claims against.
-/

/-! ## A010473.P4795537061722194023

`A176458(n)/A054977(n)`
-/

namespace A010473.P4795537061722194023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A010473.P4795537061722194023

/-! ## A010473.P5319316509481963230

`A176458(n)-A000038(n)²`
-/

namespace A010473.P5319316509481963230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176458 (n + 1) - A000038 n ^ 2

end

end A010473.P5319316509481963230

/-! ## A010473.P16475870407758852441

`A176458(n)/(A000007(n)+1)`
-/

namespace A010473.P16475870407758852441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A010473.P16475870407758852441

/-! ## A010473.P16605983459025439306

`A040012(n)+A176458(n)-8`
-/

namespace A010473.P16605983459025439306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n + (A176458 (n + 1) - 8)

end

end A010473.P16605983459025439306

/-! ## A010473.P9541994441393695472

`A040030(n)/12*A176458(n)`
-/

namespace A010473.P9541994441393695472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040030 n : ℚ) / 12 * (A176458 (n + 1) : ℚ)

end

end A010473.P9541994441393695472

/-! ## A010473.P16692280248232508921

`A176458(n)/A000034(A008458(n))`
-/

namespace A010473.P16692280248232508921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A010473.P16692280248232508921

/-! ## A010473.P5320004064220000999

`A176458(n)/A014963(A017089(n))`
-/

namespace A010473.P5320004064220000999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A014963 (A017089 n).toNat : ℚ)

end

end A010473.P5320004064220000999

/-! ## A010473.P7198517311282306869

`A176458(n)/A014963(A017113(n))`
-/

namespace A010473.P7198517311282306869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A014963 (A017113 n).toNat : ℚ)

end

end A010473.P7198517311282306869

/-! ## A010473.P18682513250440157

`A176458(n)/A014963(A090288(n))`
-/

namespace A010473.P18682513250440157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176458 (n + 1) : ℚ) / (A014963 (A090288 n).toNat : ℚ)

end

end A010473.P18682513250440157

/-!
# A010474: Decimal expansion of square root of 18.

The programs for A010474, there is no canonical definition to state claims against.
-/

/-! ## A010474.P12997810276841744541

`A157121(abs(1-n)+2)`
-/

namespace A010474.P12997810276841744541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157121 ((|1 - (n : ℤ)| + 2).toNat + 2)

end

end A010474.P12997810276841744541

/-! ## A010474.P10977118543884198787

`A003114(A251550(a(n-1)+1))*A157121(n+1)` with `a(0)=4`
-/

namespace A010474.P10977118543884198787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A003114 (A251550 (a (n - 1) + 1).toNat).toNat * A157121 (n + 1 + 2)

end

end A010474.P10977118543884198787

/-! ## A010474.P10879310008805395717

`A157121(n+1)/A003114(A251550(round(a(n-1))+1))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A010474.P10879310008805395717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (A157121 (n + 1 + 2) : ℚ) / (A003114 (A251550 (SequenceMachineLib.roundAway (a (n - 1)) + 1).toNat).toNat : ℚ)

end

end A010474.P10879310008805395717

/-! ## A010474.P7527361946737686899

`A157121(n+1)-A000035(A004760(n+2)-n)`
-/

namespace A010474.P7527361946737686899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157121 (n + 1 + 2) - A000035 (A004760 (n + 2) - (n : ℤ)).toNat

end

end A010474.P7527361946737686899

/-! ## A010474.P1714065598673210787

`A157121(n+1)-A000035(A139251(n+1))`
-/

namespace A010474.P1714065598673210787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157121 (n + 1 + 2) - A000035 (A139251 (n + 1)).toNat

end

end A010474.P1714065598673210787

/-!
# A010476: Decimal expansion of square root of 20.

The programs for A010476, there is no canonical definition to state claims against.
-/

/-! ## A010476.P6433854155113575578

`9-A322159(n)`
-/

namespace A010476.P6433854155113575578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A322159 n

end

end A010476.P6433854155113575578

/-! ## A010476.P6385292408550983739

`A134974(A000007(n)+n)`
-/

namespace A010476.P6385292408550983739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134974 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A010476.P6385292408550983739

/-! ## A010476.P16104032598839336847

`A134974(n)+A000038(n)`
-/

namespace A010476.P16104032598839336847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134974 (n + 1) + A000038 n

end

end A010476.P16104032598839336847

/-! ## A010476.P9759001768602816528

`A134974(xor(n, A000007(n)))`
-/

namespace A010476.P9759001768602816528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134974 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A010476.P9759001768602816528

/-! ## A010476.P8724385362733385683

`4+A134974(n)-A040002(n)`
-/

namespace A010476.P8724385362733385683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A134974 (n + 1) - A040002 n)

end

end A010476.P8724385362733385683

/-! ## A010476.P16781461624312896054

`A344212(n+1)`
-/

namespace A010476.P16781461624312896054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344212 (n + 1 + 1)

end

end A010476.P16781461624312896054

/-! ## A010476.P837822394381051974

`A040015(n)+A176453(n)-A010698(n+1)`
-/

namespace A010476.P837822394381051974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 n + (A176453 (n + 1) - A010698 (n + 1))

end

end A010476.P837822394381051974

/-! ## A010476.P8528876909331017522

`A000034(A310624(n))*A134974(n)`
-/

namespace A010476.P8528876909331017522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A310624 n).toNat * A134974 (n + 1)

end

end A010476.P8528876909331017522

/-!
# A010480: Decimal expansion of square root of 24.

The programs for A010480, there is no canonical definition to state claims against.
-/

/-! ## A010480.P7073435175831425550

`A090654(n)/A054977(n)`
-/

namespace A010480.P7073435175831425550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090654 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A010480.P7073435175831425550

/-! ## A010480.P17733544287715476911

`A090654(n)-A000038(n)²`
-/

namespace A010480.P17733544287715476911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090654 (n + 1) - A000038 n ^ 2

end

end A010480.P17733544287715476911

/-! ## A010480.P7177252011451360622

`A090654(n)/A010121(A004273(n))`
-/

namespace A010480.P7177252011451360622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090654 (n + 1) : ℚ) / (A010121 (A004273 n).toNat : ℚ)

end

end A010480.P7177252011451360622

/-! ## A010480.P8637967353512315199

`A090654(n)/A010121(A255166(n))`
-/

namespace A010480.P8637967353512315199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090654 (n + 1) : ℚ) / (A010121 (A255166 n).toNat : ℚ)

end

end A010480.P8637967353512315199

/-! ## A010480.P2475614298576737905

`A090654(n)/A134972(A151878(n))`
-/

namespace A010480.P2475614298576737905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090654 (n + 1) : ℚ) / (A134972 ((A151878 n).toNat + 1) : ℚ)

end

end A010480.P2475614298576737905

/-! ## A010480.P18208535802370390113

`A090654(n)/A006519(A116570(n))`
-/

namespace A010480.P18208535802370390113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090654 (n + 1) : ℚ) / (A006519 (A116570 n).toNat : ℚ)

end

end A010480.P18208535802370390113

/-!
# A010482: Decimal expansion of square root of 27.

The programs for A010482, there is no canonical definition to state claims against.
-/

/-! ## A010482.P11948254855070991620

`A178809(n+1)+A000038(n)²`
-/

namespace A010482.P11948254855070991620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178809 (n + 1 + 2) + A000038 n ^ 2

end

end A010482.P11948254855070991620

/-! ## A010482.P11625772886504995746

`A010721(n+1)+A176532(n+1)-A040021(n)`
-/

namespace A010482.P11625772886504995746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010721 (n + 1) + (A176532 (n + 1 + 2) - A040021 n)

end

end A010482.P11625772886504995746

/-! ## A010482.P15655897980807908247

`A104956(n+1)+A176532(n+1)-A176325(n+1)`
-/

namespace A010482.P15655897980807908247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104956 (n + 1 + 1) + (A176532 (n + 1 + 2) - A176325 (n + 1 + 1))

end

end A010482.P15655897980807908247

/-!
# A010485: Decimal expansion of square root of 30.

The programs for A010485, there is no canonical definition to state claims against.
-/

/-! ## A010485.P9788789283032503624

`A010700(n+1)+A176529(n+1)-A040024(n)`
-/

namespace A010485.P9788789283032503624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 (n + 1) + (A176529 (n + 1 + 2) - A040024 n)

end

end A010485.P9788789283032503624

/-!
# A010494: Decimal expansion of square root of 40.

The programs for A010494, the canonical program `A010494.P1170931180953803905` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010494 has offset 1).

The definition of A010494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010494.P1170931180953803905

`(A035071(2*n+1)-1)%10`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010494

/-- `(A035071(2*n+1)-1)%10` -/
def P1170931180953803905.Spec : Prop :=
  ∀ n, P1170931180953803905.a n = A010494 (n + 1)

theorem P1170931180953803905.correct : P1170931180953803905.Spec := by
  intro n
  simp only [A010494, Nat.add_sub_cancel]

end A010494

/-!
# A010499: Decimal expansion of square root of 45.

The programs for A010499, there is no canonical definition to state claims against.
-/

/-! ## A010499.P3729375454181851890

`A135537(n+1)+A176015(n+1)-A021408(n+1)`
-/

namespace A010499.P3729375454181851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135537 (n + 1) + (A176015 (n + 1 + 1) - A021408 (n + 1))

end

end A010499.P3729375454181851890

