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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A262100: Primes p such that 2^p + 29 is also prime.

The programs for A262100, there is no canonical definition to state claims against.
-/

/-! ## A262100.P16696912370034676837

`p?[A156982(n+1)]`
-/

namespace A262100.P16696912370034676837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262100.P16696912370034676837

/-! ## A262100.P18400995738165335894

`p?[record[A156982(A020986(n))]]`
-/

namespace A262100.P18400995738165335894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156982 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262100.P18400995738165335894

/-! ## A262100.P9674808343332871184

`p?[record[A156982(A022446(n))]]`
-/

namespace A262100.P9674808343332871184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156982 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262100.P9674808343332871184

/-! ## A262100.P5797646413451565950

`p?[record[A156982(A065648(n))]]`
-/

namespace A262100.P5797646413451565950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156982 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262100.P5797646413451565950

/-! ## A262100.P9651359992576537436

`record[A020639(A156982(n+2))]`
-/

namespace A262100.P9651359992576537436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156982 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262100.P9651359992576537436

/-!
# A262101: Pseudoprimes to base 4, written in base 4.

The programs for A262101, there is no canonical definition to state claims against.
-/

/-! ## A262101.P7297971200277485184

`A007090(A020136(n+1))`
-/

namespace A262101.P7297971200277485184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A020136 (n + 1)).toNat

end

end A262101.P7297971200277485184

/-! ## A262101.P13984345360853993675

`A007090(∩[A020144(n+1), A020192(n+1)])`
-/

namespace A262101.P13984345360853993675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262101.P13984345360853993675

/-! ## A262101.P3359068340292382869

`A007090(∩[A020144(n+1), A122781(n+1)])`
-/

namespace A262101.P3359068340292382869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262101.P3359068340292382869

/-! ## A262101.P12281838741632489159

`A007090(∩[A020192(n+1), A122781(n+1)])`
-/

namespace A262101.P12281838741632489159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262101.P12281838741632489159

/-! ## A262101.P15269156180296128553

`A007090(∩[A024556(n+1), A122781(n+1)])`
-/

namespace A262101.P15269156180296128553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262101.P15269156180296128553

/-!
# A262102: Pseudoprimes to base 5, written in base 5.

The programs for A262102, there is no canonical definition to state claims against.
-/

/-! ## A262102.P9991781030986568304

`A007091(A005936(n+1))`
-/

namespace A262102.P9991781030986568304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A005936 (n + 1)).toNat

end

end A262102.P9991781030986568304

/-! ## A262102.P5282544258191501663

`A007091(∩[A020153(n+1), A122782(n+1)])`
-/

namespace A262102.P5282544258191501663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262102.P5282544258191501663

/-! ## A262102.P11637095963369159328

`A007091(∩[A020153(n+1), A123091(n+1)])`
-/

namespace A262102.P11637095963369159328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262102.P11637095963369159328

/-!
# A262103: Pseudoprimes to base 6, written in base 6.

The programs for A262103, there is no canonical definition to state claims against.
-/

/-! ## A262103.P6748926903271531007

`A007092(A005937(n+1))`
-/

namespace A262103.P6748926903271531007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A005937 (n + 1)).toNat

end

end A262103.P6748926903271531007

/-! ## A262103.P6903176032020263489

`A007092(∩[A020164(n+1), A122783(n+1)])`
-/

namespace A262103.P6903176032020263489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262103.P6903176032020263489

/-! ## A262103.P6534584080891479626

`A007092(∩[A038509(n+1), A122783(n+1)])`
-/

namespace A262103.P6534584080891479626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262103.P6534584080891479626

/-!
# A262104: Pseudoprimes to base 7, written in base 7.

The programs for A262104, there is no canonical definition to state claims against.
-/

/-! ## A262104.P10284206813995958493

`A007093(A005938(n+1))`
-/

namespace A262104.P10284206813995958493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A005938 (n + 1)).toNat

end

end A262104.P10284206813995958493

/-!
# A262105: Pseudoprimes to base 8, written in base 8.

The programs for A262105, there is no canonical definition to state claims against.
-/

/-! ## A262105.P12142927599059897705

`A007094(A020137(n+1))`
-/

namespace A262105.P12142927599059897705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A020137 (n + 1)).toNat

end

end A262105.P12142927599059897705

/-! ## A262105.P3170151000561011227

`A007094(∩[A122785(n+1), A020742(n)])`
-/

namespace A262105.P3170151000561011227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262105.P3170151000561011227

/-! ## A262105.P12943136390183703152

`A007094(∩[A122785(n+1), A130773(n)])`
-/

namespace A262105.P12943136390183703152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262105.P12943136390183703152

/-! ## A262105.P6245619347832481321

`A007094(∩[A020192(n+1), A122785(n+1)])`
-/

namespace A262105.P6245619347832481321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262105.P6245619347832481321

/-! ## A262105.P12124546427422538072

`A007094(∩[A071904(n+1), A122785(n+1)])`
-/

namespace A262105.P12124546427422538072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262105.P12124546427422538072

/-!
# A262106: Number of (n+1)X(1+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262106, there is no canonical definition to state claims against.
-/

/-! ## A262106.P15631903970962560091

`A262109(∑[1+n])`
-/

namespace A262106.P15631903970962560091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262106.P15631903970962560091

/-! ## A262106.P8127827477373035877

`record[A103452(n)*A262109(n+1)]`
-/

namespace A262106.P8127827477373035877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A262109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262106.P8127827477373035877

/-! ## A262106.P6485105853132033663

`record[A114284(n)*A262109(n+1)]`
-/

namespace A262106.P6485105853132033663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n * A262109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262106.P6485105853132033663

/-!
# A262107: Number of (n+1)X(2+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262107, there is no canonical definition to state claims against.
-/

/-! ## A262107.P13704606035752701066

`A262109(∑[2+n])`
-/

namespace A262107.P13704606035752701066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262107.P13704606035752701066

/-! ## A262107.P12902217522314276027

`A262109(A075543(n))+A052720(n)`
-/

namespace A262107.P12902217522314276027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (A075543 n).toNat + A052720 n

end

end A262107.P12902217522314276027

/-!
# A262108: Number of (n+1)X(3+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262108, there is no canonical definition to state claims against.
-/

/-! ## A262108.P11061543567152871284

`A262109(∑[n+3]+1)`
-/

namespace A262108.P11061543567152871284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262108.P11061543567152871284

/-!
# A262110: Number of (1+1)X(n+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262110, there is no canonical definition to state claims against.
-/

/-! ## A262110.P9008454220662611160

`A262109(∑[n]+1)`
-/

namespace A262110.P9008454220662611160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262110.P9008454220662611160

/-! ## A262110.P8817840929544586766

`record[A262109(∑[A057979(n)])]`
-/

namespace A262110.P8817840929544586766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262110.P8817840929544586766

/-! ## A262110.P16634892068595022261

`record[A262109(record[A114220(n)])]`
-/

namespace A262110.P16634892068595022261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262110.P16634892068595022261

/-! ## A262110.P15658809378513735637

`record[A262109(record[A238349(n)])]`
-/

namespace A262110.P15658809378513735637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262110.P15658809378513735637

/-!
# A262111: Number of (2+1)X(n+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262111, there is no canonical definition to state claims against.
-/

/-! ## A262111.P4605216989980133716

`A262109(∑[n+1]+2)`
-/

namespace A262111.P4605216989980133716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262111.P4605216989980133716

/-! ## A262111.P5806658066960933520

`record[A262109(A135223(n+1)+2)]`
-/

namespace A262111.P5806658066960933520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262111.P5806658066960933520

/-!
# A262112: Number of (3+1)X(n+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262112, there is no canonical definition to state claims against.
-/

/-! ## A262112.P7370787711283771565

`A262109(∑[n+2]+4)`
-/

namespace A262112.P7370787711283771565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262112.P7370787711283771565

/-!
# A262113: Number of (4+1)X(n+1) 0..2 arrays with each row nonprime and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262113, there is no canonical definition to state claims against.
-/

/-! ## A262113.P1543642656390142954

`A262109(A020752(n+1))`
-/

namespace A262113.P1543642656390142954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262109 (A020752 (n + 1)).toNat

end

end A262113.P1543642656390142954

/-!
# A262114: Irregular triangle read by rows: row b (b >= 2) gives periodic part of digits of the base-b expansion of 1/5.

The programs for A262114, there is no canonical definition to state claims against.
-/

/-! ## A262114.P5250107460255221664

`A083894(A186984(n))`
-/

namespace A262114.P5250107460255221664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (A186984 (n + 17)).toNat

end

end A262114.P5250107460255221664

/-! ## A262114.P7355961626514598713

`A083894(∑[A186979(n)])`
-/

namespace A262114.P7355961626514598713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186979 (n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262114.P7355961626514598713

/-! ## A262114.P16015550352255818626

`A001899(lcm(15, A269717(n)))`
-/

namespace A262114.P16015550352255818626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (Int.lcm 15 (A269717 n))

end

end A262114.P16015550352255818626

/-! ## A262114.P6013041190356771392

`A102677(A078183(n)-floor(n^(1/3)))`
-/

namespace A262114.P6013041190356771392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A078183 n - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋).toNat

end

end A262114.P6013041190356771392

/-! ## A262114.P15139863892223519568

`A180160(A048578(n)+A008621(n))`
-/

namespace A262114.P15139863892223519568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A048578 n + A008621 n).toNat

end

end A262114.P15139863892223519568

/-!
# A262115: Irregular triangle read by rows: row b (b >= 2) gives periodic part of digits of the base-b expansion of 1/7.

The programs for A262115, there is no canonical definition to state claims against.
-/

/-! ## A262115.P438696828732334125

`A079483(n+2)+A039655(A029971(n+1))`
-/

namespace A262115.P438696828732334125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (n + 2) + A039655 (A029971 (n + 1)).toNat

end

end A262115.P438696828732334125

/-! ## A262115.P11304825021102502751

`A079483(n+2)+A000122(A264666(n+1))`
-/

namespace A262115.P11304825021102502751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (n + 2) + A000122 (A264666 (n + 1)).toNat

end

end A262115.P11304825021102502751

/-! ## A262115.P15881117977602789234

`A348264(A244050(n+1))+A079483(n+2)`
-/

namespace A262115.P15881117977602789234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (A244050 (n + 1)).toNat + A079483 (n + 2)

end

end A262115.P15881117977602789234

/-! ## A262115.P12334464031618020488

`A079483(n+2)+A010054(A079505(n+2))`
-/

namespace A262115.P12334464031618020488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (n + 2) + A010054 (A079505 (n + 2)).toNat

end

end A262115.P12334464031618020488

/-! ## A262115.P12820955976743252078

`A079483(n+2)^A156645(A124550(n))`
-/

namespace A262115.P12820955976743252078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079483 (n + 2) : ℚ) ^ (A156645 (A124550 n).toNat : ℤ)

end

end A262115.P12820955976743252078

/-!
# A262116: Number of (n+1)X(n+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262116, there is no canonical definition to state claims against.
-/

/-! ## A262116.P3578434313399367422

`A262122(∑[4*n]+1)`
-/

namespace A262116.P3578434313399367422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262116.P3578434313399367422

/-!
# A262117: Number of (n+1)X(1+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262117, there is no canonical definition to state claims against.
-/

/-! ## A262117.P17374089879300343618

`A262122(∑[n]+1)`
-/

namespace A262117.P17374089879300343618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262117.P17374089879300343618

/-! ## A262117.P2213223376490623593

`A262122(A000124(n))+char[10]`
-/

namespace A262117.P2213223376490623593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262117.P2213223376490623593

/-! ## A262117.P2666695777982876929

`A262122(A000124(n))%A034661(n)`
-/

namespace A262117.P2666695777982876929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262122 (A000124 n).toNat) (A034661 n)

end

end A262117.P2666695777982876929

/-! ## A262117.P1905524062564691393

`A007318(∑[n])*A262122(A000124(n))`
-/

namespace A262117.P1905524062564691393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A262122 (A000124 n).toNat

end

end A262117.P1905524062564691393

/-! ## A262117.P8355005689950334220

`A280799(n+1)+A262122(A000124(n))`
-/

namespace A262117.P8355005689950334220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280799 (n + 1) + A262122 (A000124 n).toNat

end

end A262117.P8355005689950334220

/-!
# A262118: Number of (n+1)X(2+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262118, there is no canonical definition to state claims against.
-/

/-! ## A262118.P3168866739866734998

`A262122(∑[n+1]+2)`
-/

namespace A262118.P3168866739866734998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262118.P3168866739866734998

/-! ## A262118.P11256212918909008954

`record[A262122(A133263(∑{e}[n, #]))]`
-/

namespace A262118.P11256212918909008954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262118.P11256212918909008954

/-! ## A262118.P6694341860881437484

`record[root(A262122(n+1), A091977(n))]`
-/

namespace A262118.P6694341860881437484
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262122 (n + 1) : ℝ) ^ (1 / (A091977 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262118.P6694341860881437484

/-! ## A262118.P4355573283363966302

`record[gcd(A143844(n), A262122(n+2))]`
-/

namespace A262118.P4355573283363966302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A262122 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262118.P4355573283363966302

/-! ## A262118.P8236379938036831206

`record[root(A262122(n+3), A165674(n+1))]`
-/

namespace A262118.P8236379938036831206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262122 (n + 3) : ℝ) ^ (1 / (A165674 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262118.P8236379938036831206

/-!
# A262119: Number of (n+1)X(3+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262119, there is no canonical definition to state claims against.
-/

/-! ## A262119.P3693227699084092211

`A262122(∑[n+2]+4)`
-/

namespace A262119.P3693227699084092211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262119.P3693227699084092211

/-! ## A262119.P8405813098780980859

`lcm((n+1)/∏{p}[n+1, #], A262122(A167614(n+1)))`
-/

namespace A262119.P8405813098780980859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A262122 (A167614 (n + 1)).toNat)

end

end A262119.P8405813098780980859

/-! ## A262119.P17807099348870009875

`A262122(A167614(n+1))+A011723(n)`
-/

namespace A262119.P17807099348870009875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (A167614 (n + 1)).toNat + A011723 n

end

end A262119.P17807099348870009875

/-! ## A262119.P5152675526853163242

`A262122(A167614(n+1))+A137579(n)`
-/

namespace A262119.P5152675526853163242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (A167614 (n + 1)).toNat + A137579 n

end

end A262119.P5152675526853163242

/-!
# A262120: Number of (n+1)X(4+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262120, there is no canonical definition to state claims against.
-/

/-! ## A262120.P4275024963795564781

`A262122(∑[n+4]+3)`
-/

namespace A262120.P4275024963795564781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A262120.P4275024963795564781

/-!
# A262121: Number of (n+1)X(5+1) 0..2 arrays with each row and column prime, read as a base 3 number with top and left being the most significant digits.

The programs for A262121, there is no canonical definition to state claims against.
-/

/-! ## A262121.P1439364169304674287

`A262122(C(n+5, 2)+1+n)`
-/

namespace A262121.P1439364169304674287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (Nat.choose (n + 5) 2 + 1 + n)

end

end A262121.P1439364169304674287

/-!
# A262123: a(1) + a(2) + ... + a(n) is the representation as a sum of n squares of the smallest integer needing n squares (using the greedy algorithm).

The programs for A262123, there is no canonical definition to state claims against.
-/

/-! ## A262123.P12152333362223185253

`floor(sqrt(A006892(n+1)))²`
-/

namespace A262123.P12152333362223185253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006892 (n + 1)) ^ 2

end

end A262123.P12152333362223185253

/-! ## A262123.P10149120067811810364

`A000007(n)+Δ[A006892(A028310(n))]`
-/

namespace A262123.P10149120067811810364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006892 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A262123.P10149120067811810364

/-! ## A262123.P249933710562614849

`Δ[A006892(A028310(n))+A000040(n+1)%2]`
-/

namespace A262123.P249933710562614849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006892 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262123.P249933710562614849

/-!
# A262124: Number A(n,k) of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A262124, there is no canonical definition to state claims against.
-/

/-! ## A262124.P10868574821481343623

`A324965(A276890(n)^A007706(n))`
-/

namespace A262124.P10868574821481343623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (SequenceMachineLib.roundAway ((A276890 n : ℚ) ^ (A007706 n : ℤ))).toNat

end

end A262124.P10868574821481343623

/-! ## A262124.P1372353371770667125

`A340811(n)%A010039(A264909(n))`
-/

namespace A262124.P1372353371770667125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340811 n) (A010039 (A264909 n).toNat)

end

end A262124.P1372353371770667125

/-! ## A262124.P6847885480143574525

`A264909(n)/A124768(A208879(n))`
-/

namespace A262124.P6847885480143574525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264909 n : ℚ) / (A124768 (A208879 n).toNat : ℚ)

end

end A262124.P6847885480143574525

/-! ## A262124.P15832354902315940984

`A124550(A342557(n+1)+A280880(n))`
-/

namespace A262124.P15832354902315940984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A342557 (n + 1) + A280880 n).toNat

end

end A262124.P15832354902315940984

/-! ## A262124.P7053054110543585712

`gcd(A001222(A008300(n)), A215401(n+1))`
-/

namespace A262124.P7053054110543585712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A008300 n).toNat) (A215401 (n + 1))

end

end A262124.P7053054110543585712

/-!
# A262125: Number T(n,k) of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A262125, there is no canonical definition to state claims against.
-/

/-! ## A262125.P10844850090887808086

`A229892(A016389(A201637(n))+n)`
-/

namespace A262125.P10844850090887808086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A016389 (A201637 n).toNat + (n : ℤ)).toNat

end

end A262125.P10844850090887808086

/-! ## A262125.P12455133320674732590

`A229892(A210709(A173018(n))+n)`
-/

namespace A262125.P12455133320674732590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A210709 (A173018 n).toNat + (n : ℤ)).toNat

end

end A262125.P12455133320674732590

/-! ## A262125.P16219041818424968779

`A229892(n)-A016389(A201637(n))`
-/

namespace A262125.P16219041818424968779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n - A016389 (A201637 n).toNat

end

end A262125.P16219041818424968779

/-! ## A262125.P13895101221659243788

`A229892(n)-A210709(A173018(n))`
-/

namespace A262125.P13895101221659243788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n - A210709 (A173018 n).toNat

end

end A262125.P13895101221659243788

/-! ## A262125.P15168809026856920228

`A229892(n)%A110775(A029618(n))`
-/

namespace A262125.P15168809026856920228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229892 n) (A110775 (A029618 n).toNat)

end

end A262125.P15168809026856920228

/-!
# A262126: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 2.

The programs for A262126, there is no canonical definition to state claims against.
-/

/-! ## A262126.P527923346169150405

`A262124(∑[n+3])`
-/

namespace A262126.P527923346169150405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262126.P527923346169150405

/-! ## A262126.P12408979085056971755

`or(A000007(n), A262124(A055998(n+1)))`
-/

namespace A262126.P12408979085056971755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262124 (A055998 (n + 1)).toNat)

end

end A262126.P12408979085056971755

/-! ## A262126.P3986670439355592457

`abs(A262124(A055998(n+1))-A000038(n))`
-/

namespace A262126.P3986670439355592457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262124 (A055998 (n + 1)).toNat - A000038 n|

end

end A262126.P3986670439355592457

/-! ## A262126.P5371461500727974468

`A262124(A055998(n+1))+A000007(A001316(n))`
-/

namespace A262126.P5371461500727974468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055998 (n + 1)).toNat + A000007 (A001316 n).toNat

end

end A262126.P5371461500727974468

/-! ## A262126.P2753037351393830736

`A262124(A055998(n+1))+A000007(A017221(n))`
-/

namespace A262126.P2753037351393830736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055998 (n + 1)).toNat + A000007 (A017221 n).toNat

end

end A262126.P2753037351393830736

/-! ## A262126.P15242801937852714454

`A262124(A055998(n+1))+A000007(A109494(n))`
-/

namespace A262126.P15242801937852714454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055998 (n + 1)).toNat + A000007 (A109494 n).toNat

end

end A262126.P15242801937852714454

/-! ## A262126.P12749911819499727339

`A262124(A055998(n+1))+A000038(A130321(n))`
-/

namespace A262126.P12749911819499727339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055998 (n + 1)).toNat + A000038 (A130321 n).toNat

end

end A262126.P12749911819499727339

/-! ## A262126.P760747738095582921

`A262124(A055998(n+1))*A262124(A000217(n))`
-/

namespace A262126.P760747738095582921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055998 (n + 1)).toNat * A262124 (A000217 n).toNat

end

end A262126.P760747738095582921

/-!
# A262127: Number of permutations p of [2n] such that the up-down signature of p has nonnegative partial sums with a maximal value of n.

The programs for A262127, there is no canonical definition to state claims against.
-/

/-! ## A262127.P8278924472221874191

`A262125(∑[4*n])`
-/

namespace A262127.P8278924472221874191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262127.P8278924472221874191

/-! ## A262127.P13377235190713197899

`or(A000007(n), A262125(A046092(n)))`
-/

namespace A262127.P13377235190713197899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262125 (A046092 n).toNat)

end

end A262127.P13377235190713197899

/-! ## A262127.P15292384581433199663

`or(A036987(n), A262125(A046092(n)))`
-/

namespace A262127.P15292384581433199663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A262125 (A046092 n).toNat)

end

end A262127.P15292384581433199663

/-! ## A262127.P701073636161479012

`char[A002262(n)]*A262125(A046092(n))`
-/

namespace A262127.P701073636161479012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262125 (A046092 n).toNat

end

end A262127.P701073636161479012

/-! ## A262127.P6743576185704446266

`A262125(A046092(n))+(n+2)%A020639(n+2)`
-/

namespace A262127.P6743576185704446266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A046092 n).toNat + Int.tmod (n + 2 : ℤ) (A020639 (n + 2))

end

end A262127.P6743576185704446266

/-!
# A262128: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 3.

The programs for A262128, there is no canonical definition to state claims against.
-/

/-! ## A262128.P15269389957616967247

`A262124(∑[n+3]+n+3)`
-/

namespace A262128.P15269389957616967247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A262128.P15269389957616967247

/-! ## A262128.P13897113142844671241

`abs(A033999(n)*A262124(A046691(n+2)))`
-/

namespace A262128.P13897113142844671241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A262124 (A046691 (n + 2)).toNat|

end

end A262128.P13897113142844671241

/-! ## A262128.P8692834100285261373

`A308923(A070939(n))+A262124(A046691(n+2))`
-/

namespace A262128.P8692834100285261373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308923 (A070939 n).toNat + A262124 (A046691 (n + 2)).toNat

end

end A262128.P8692834100285261373

/-! ## A262128.P17908690951887544460

`A051731(A000124(n))*A262124(A046691(n+2))`
-/

namespace A262128.P17908690951887544460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A000124 n).toNat * A262124 (A046691 (n + 2)).toNat

end

end A262128.P17908690951887544460

/-! ## A262128.P7255816838464002807

`A262124(A046691(n+2))/A165471(A310926(n))²`
-/

namespace A262128.P7255816838464002807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262124 (A046691 (n + 2)).toNat : ℚ) / (A165471 (A310926 n).toNat ^ 2 : ℚ)

end

end A262128.P7255816838464002807

/-!
# A262129: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 4.

The programs for A262129, there is no canonical definition to state claims against.
-/

/-! ## A262129.P4160781095589085434

`A262124(A052905(n+2))`
-/

namespace A262129.P4160781095589085434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A052905 (n + 2)).toNat

end

end A262129.P4160781095589085434

/-! ## A262129.P17169309381480523045

`A262124(eq[3, A129713(n)])`
-/

namespace A262129.P17169309381480523045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262129.P17169309381480523045

/-! ## A262129.P16900836425317434958

`A262124(eq[4, A025581(n)])`
-/

namespace A262129.P16900836425317434958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262129.P16900836425317434958

/-! ## A262129.P17310408589736169899

`A262124(eq[9, A099375(n)])`
-/

namespace A262129.P17310408589736169899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262129.P17310408589736169899

/-! ## A262129.P6814433431406158223

`A262124(Δ[A055831(n+4)])`
-/

namespace A262129.P6814433431406158223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (f1 (n + 1) - f1 n).toNat

end

end A262129.P6814433431406158223

/-! ## A262129.P1755041684309180484

`A262124(eq[5, A004736(n+1)])`
-/

namespace A262129.P1755041684309180484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262129.P1755041684309180484

/-! ## A262129.P17330664230549836693

`A262124(A167487(n)+A016825(n))`
-/

namespace A262129.P17330664230549836693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A167487 n + A016825 n).toNat

end

end A262129.P17330664230549836693

/-! ## A262129.P1852381113861351753

`A262124(A167499(n+1)+A016789(n))`
-/

namespace A262129.P1852381113861351753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A167499 (n + 1) + A016789 n).toNat

end

end A262129.P1852381113861351753

/-!
# A262130: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 5.

The programs for A262130, there is no canonical definition to state claims against.
-/

/-! ## A262130.P11757213167368591663

`A262124(A055999(n+3))`
-/

namespace A262130.P11757213167368591663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A055999 (n + 3)).toNat

end

end A262130.P11757213167368591663

/-! ## A262130.P3422793405199982259

`A262124(eq[5, A025581(n)])`
-/

namespace A262130.P3422793405199982259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P3422793405199982259

/-! ## A262130.P2006203487565321914

`A262124(eq[5, A129713(n)])`
-/

namespace A262130.P2006203487565321914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P2006203487565321914

/-! ## A262130.P11081895779618456677

`A262124(eq[6, A193739(n)])`
-/

namespace A262130.P11081895779618456677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P11081895779618456677

/-! ## A262130.P14712627001291070905

`A262124(eq[11, A099375(n)])`
-/

namespace A262130.P14712627001291070905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P14712627001291070905

/-! ## A262130.P11376825603726328801

`A262124(eq[32, A130321(n)])`
-/

namespace A262130.P11376825603726328801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P11376825603726328801

/-! ## A262130.P3277301998179286310

`A262124(Δ[A026054(n+3)])`
-/

namespace A262130.P3277301998179286310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (f1 (n + 1) - f1 n).toNat

end

end A262130.P3277301998179286310

/-! ## A262130.P1446893974206546913

`A262124(A000096(n+5)-5)`
-/

namespace A262130.P1446893974206546913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000096 (n + 5) - 5).toNat

end

end A262130.P1446893974206546913

/-! ## A262130.P18444765389112015588

`A262124(eq[6, A004736(n+1)])`
-/

namespace A262130.P18444765389112015588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262130.P18444765389112015588

/-! ## A262130.P791620848642309724

`A262124(Δ[A055831(n+5)]-1)`
-/

namespace A262130.P791620848642309724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (f1 (n + 1) - f1 n - 1).toNat

end

end A262130.P791620848642309724

/-!
# A262131: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 6.

The programs for A262131, there is no canonical definition to state claims against.
-/

/-! ## A262131.P8316309064769086792

`A262124(eq[6, A025581(n)])`
-/

namespace A262131.P8316309064769086792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P8316309064769086792

/-! ## A262131.P9341850691657740662

`A262124(eq[7, A193739(n)])`
-/

namespace A262131.P9341850691657740662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P9341850691657740662

/-! ## A262131.P5001153350657277572

`A262124(eq[7, A195663(n)])`
-/

namespace A262131.P5001153350657277572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P5001153350657277572

/-! ## A262131.P4005827823821693399

`A262124(eq[8, A129713(n)])`
-/

namespace A262131.P4005827823821693399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P4005827823821693399

/-! ## A262131.P550713258339984334

`A262124(eq[13, A099375(n)])`
-/

namespace A262131.P550713258339984334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P550713258339984334

/-! ## A262131.P8527863346808471633

`A262124(eq[64, A130321(n)])`
-/

namespace A262131.P8527863346808471633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P8527863346808471633

/-! ## A262131.P726275067843287616

`A262124(eq[7, A004736(n+1)])`
-/

namespace A262131.P726275067843287616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262131.P726275067843287616

/-! ## A262131.P7561842965778759401

`A262124(Δ[Δ[A055832(n+5)]])`
-/

namespace A262131.P7561842965778759401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (f1 (n + 1) - f1 n).toNat

end

end A262131.P7561842965778759401

/-! ## A262131.P7859069022247140032

`A262124(Δ[A026054(n+4)]-1)`
-/

namespace A262131.P7859069022247140032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (f1 (n + 1) - f1 n - 1).toNat

end

end A262131.P7859069022247140032

/-! ## A262131.P15717383306652698916

`A262124(A000096(n+5)+n+1)`
-/

namespace A262131.P15717383306652698916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A262131.P15717383306652698916

/-!
# A262132: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 7.

The programs for A262132, there is no canonical definition to state claims against.
-/

/-! ## A262132.P4429253333602415518

`A262124(A155212(n+4))`
-/

namespace A262132.P4429253333602415518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A155212 (n + 4)).toNat

end

end A262132.P4429253333602415518

/-! ## A262132.P14166074501905275187

`A262124(A056126(n)+28)`
-/

namespace A262132.P14166074501905275187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A056126 n + 28).toNat

end

end A262132.P14166074501905275187

/-! ## A262132.P3461966545957892809

`A262124(eq[7, A025581(n)])`
-/

namespace A262132.P3461966545957892809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P3461966545957892809

/-! ## A262132.P11811016080674061204

`A262124(eq[8, A193739(n)])`
-/

namespace A262132.P11811016080674061204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P11811016080674061204

/-! ## A262132.P2320945470571593233

`A262124(eq[8, A195663(n)])`
-/

namespace A262132.P2320945470571593233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P2320945470571593233

/-! ## A262132.P7549314760421268486

`A262124(eq[13, A129713(n)])`
-/

namespace A262132.P7549314760421268486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P7549314760421268486

/-! ## A262132.P18218118958435523636

`A262124(eq[15, A099375(n)])`
-/

namespace A262132.P18218118958435523636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P18218118958435523636

/-! ## A262132.P18225253300430047893

`A262124(eq[8, A004736(n+1)])`
-/

namespace A262132.P18225253300430047893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262132.P18225253300430047893

/-! ## A262132.P12766314369182410887

`A262124(A167499(n+4)+A016789(n+2))`
-/

namespace A262132.P12766314369182410887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A167499 (n + 4) + A016789 (n + 2)).toNat

end

end A262132.P12766314369182410887

/-!
# A262133: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 8.

The programs for A262133, there is no canonical definition to state claims against.
-/

/-! ## A262133.P7929845095167625333

`A262124(A051936(n+9))`
-/

namespace A262133.P7929845095167625333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A051936 (n + 9)).toNat

end

end A262133.P7929845095167625333

/-! ## A262133.P5916418051911375377

`A262124(A052905(n+6)-4)`
-/

namespace A262133.P5916418051911375377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A052905 (n + 6) - 4).toNat

end

end A262133.P5916418051911375377

/-! ## A262133.P2900110656369801683

`A262124(A000096(n+8)-8)`
-/

namespace A262133.P2900110656369801683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000096 (n + 8) - 8).toNat

end

end A262133.P2900110656369801683

/-! ## A262133.P5378080738878841226

`A262124(A000217(n+9)-9)`
-/

namespace A262133.P5378080738878841226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000217 (n + 9) - 9).toNat

end

end A262133.P5378080738878841226

/-! ## A262133.P17136461809235734154

`A262124(A000124(n+8)+n-1)`
-/

namespace A262133.P17136461809235734154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A262133.P17136461809235734154

/-!
# A262134: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 9.

The programs for A262134, there is no canonical definition to state claims against.
-/

/-! ## A262134.P5448309839497797143

`A262124(eq[9, A025581(n)])`
-/

namespace A262134.P5448309839497797143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262134.P5448309839497797143

/-! ## A262134.P11509720383000289802

`A262124(eq[10, A193739(n)])`
-/

namespace A262134.P11509720383000289802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262134.P11509720383000289802

/-! ## A262134.P12155355745012553501

`A262124(eq[10, A195663(n)])`
-/

namespace A262134.P12155355745012553501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262134.P12155355745012553501

/-! ## A262134.P1134703615717153733

`A262124(eq[10, A004736(n+1)])`
-/

namespace A262134.P1134703615717153733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262134.P1134703615717153733

/-! ## A262134.P10632641049097304387

`A262124(eq[10, A134231(n+1)])`
-/

namespace A262134.P10632641049097304387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262134.P10632641049097304387

/-!
# A262135: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value <= 10.

The programs for A262135, there is no canonical definition to state claims against.
-/

/-! ## A262135.P3888629641956202710

`A262124(eq[10, A025581(n)])`
-/

namespace A262135.P3888629641956202710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262135.P3888629641956202710

/-! ## A262135.P3997826109270020870

`A262124(eq[11, A004736(n+1)])`
-/

namespace A262135.P3997826109270020870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262135.P3997826109270020870

/-! ## A262135.P7649783340541606894

`A262124(A000217(n+10)+n)`
-/

namespace A262135.P7649783340541606894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262124 (A000217 (n + 10) + (n : ℤ)).toNat

end

end A262135.P7649783340541606894

/-! ## A262135.P3011541321388772047

`xor(∏[(1-n)%2+n], A181838(A326616(n)))`
-/

namespace A262135.P3011541321388772047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ j ∈ Finset.range (n + 1), f1 j) (A181838 (A326616 n).toNat)

end

end A262135.P3011541321388772047

/-! ## A262135.P10618784284832769942

`A010815(A017102(n))+A000246(n)`
-/

namespace A262135.P10618784284832769942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A017102 n).toNat + A000246 n

end

end A262135.P10618784284832769942

/-!
# A262136: Number of distinct fractional parts of the numbers Sum_{i=j..k} (-1)^i/i with 1 <= j <= k <= n, where the fractional part of x is given by x - floor(x).

The programs for A262136, there is no canonical definition to state claims against.
-/

/-! ## A262136.P15774841150724819575

`∑[A003313(A001370(A182522(n)))]`
-/

namespace A262136.P15774841150724819575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A001370 (A182522 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262136.P15774841150724819575

/-! ## A262136.P4252650244675666185

`∑[A001511(A011782(n))-A060862(n+1)]`
-/

namespace A262136.P4252650244675666185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A011782 n).toNat - A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262136.P4252650244675666185

/-! ## A262136.P6841828728247844221

`A000124(n)-∑[A083893(A226468(n+1))]`
-/

namespace A262136.P6841828728247844221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A226468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262136.P6841828728247844221

/-! ## A262136.P7031800540527977080

`∑[A028310(n)-A083893(A226468(n+1))]`
-/

namespace A262136.P7031800540527977080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A083893 (A226468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262136.P7031800540527977080

/-! ## A262136.P7675675266942358444

`A033999(A068065(n+1))+∑[n]`
-/

namespace A262136.P7675675266942358444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A068065 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A262136.P7675675266942358444

/-!
# A262138: Interleaved first and second differences of the prime numbers.

The programs for A262138, the canonical program `A262138.P2006343145286097734` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262138 has offset 1).

The definition of A262138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262138.P2006343145286097734

`A109763(n+1)-A062234(A080513(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262138

/-- `A109763(n+1)-A062234(A080513(n))` -/
def P2006343145286097734.Spec : Prop :=
  ∀ n, P2006343145286097734.a n = A262138 (n + 1)

theorem P2006343145286097734.correct : P2006343145286097734.Spec := by
  intro n
  simp only [A262138, Nat.add_sub_cancel]

end A262138

/-! ## A262138.P14068688200727859491

`A219606(n+1)-Δ[A166448(A008619(n))]`
-/

namespace A262138.P14068688200727859491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (n + 1) - (f1 (n + 1) - f1 n)

end

end A262138.P14068688200727859491

namespace A262138

/-- `A219606(n+1)-Δ[A166448(A008619(n))]` -/
def P14068688200727859491.Spec : Prop :=
  ∀ n, P14068688200727859491.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P17064248017261544321

`A134735(n+3)-A134735(n+1)`
-/

namespace A262138.P17064248017261544321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 3) - A134735 (n + 1)

end

end A262138.P17064248017261544321

namespace A262138

/-- `A134735(n+3)-A134735(n+1)` -/
def P17064248017261544321.Spec : Prop :=
  ∀ n, P17064248017261544321.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P14666319003821292053

`Δ[A134735(n+2)+A134735(n+1)]`
-/

namespace A262138.P14666319003821292053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 2) + A134735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262138.P14666319003821292053

namespace A262138

/-- `Δ[A134735(n+2)+A134735(n+1)]` -/
def P14666319003821292053.Spec : Prop :=
  ∀ n, P14666319003821292053.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P16246568823556598890

`A109763(n+1)-(A109763(n+2)-(A109763(n+4)-A109763(n+2)))`
-/

namespace A262138.P16246568823556598890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 1) - (A109763 (n + 2) - (A109763 (n + 4) - A109763 (n + 2)))

end

end A262138.P16246568823556598890

namespace A262138

/-- `A109763(n+1)-(A109763(n+2)-(A109763(n+4)-A109763(n+2)))` -/
def P16246568823556598890.Spec : Prop :=
  ∀ n, P16246568823556598890.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P12348125786508331509

`p?[A008619(n)]-A062234(A080513(n))`
-/

namespace A262138.P12348125786508331509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A062234 (A080513 n).toNat

end

end A262138.P12348125786508331509

namespace A262138

/-- `p?[A008619(n)]-A062234(A080513(n))` -/
def P12348125786508331509.Spec : Prop :=
  ∀ n, P12348125786508331509.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P14020870349404020117

`p?[A065033(n)]-A062234(A080513(n))`
-/

namespace A262138.P14020870349404020117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A062234 (A080513 n).toNat

end

end A262138.P14020870349404020117

namespace A262138

/-- `p?[A065033(n)]-A062234(A080513(n))` -/
def P14020870349404020117.Spec : Prop :=
  ∀ n, P14020870349404020117.a n = A262138 (n + 1)

end A262138

/-! ## A262138.P10477371900701422891

`p?[A008619(n)]-A062234(A008619(n+1))`
-/

namespace A262138.P10477371900701422891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A062234 (A008619 (n + 1)).toNat

end

end A262138.P10477371900701422891

namespace A262138

/-- `p?[A008619(n)]-A062234(A008619(n+1))` -/
def P10477371900701422891.Spec : Prop :=
  ∀ n, P10477371900701422891.a n = A262138 (n + 1)

end A262138

/-!
# A262139: The first of eight consecutive positive integers the sum of the squares of which is equal to the sum of the squares of nine consecutive positive integers.

The programs for A262139, the canonical program `A262139.P13186684268783419896` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262139 has offset 1).

The definition of A262139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262139.P13186684268783419896

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=22, a(1)=145, a(2)=862`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262139

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P13186684268783419896.Spec : Prop :=
  ∀ n, P13186684268783419896.a n = A262139 (n + 1)

theorem P13186684268783419896.correct : P13186684268783419896.Spec := by
  intro n
  simp only [A262139, Nat.add_sub_cancel]

end A262139

/-! ## A262139.P4680629299363145362

`A072221(n+2)-3`
-/

namespace A262139.P4680629299363145362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 (n + 2) - 3

end

end A262139.P4680629299363145362

namespace A262139

/-- `A072221(n+2)-3` -/
def P4680629299363145362.Spec : Prop :=
  ∀ n, P4680629299363145362.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P9386211413263788116

`A125651(n+3)-2`
-/

namespace A262139.P9386211413263788116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125651 (n + 3) - 2

end

end A262139.P9386211413263788116

namespace A262139

/-- `A125651(n+3)-2` -/
def P9386211413263788116.Spec : Prop :=
  ∀ n, P9386211413263788116.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P4488245771905908520

`A270889(n+2)-5`
-/

namespace A262139.P4488245771905908520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 (n + 2) - 5

end

end A262139.P4488245771905908520

namespace A262139

/-- `A270889(n+2)-5` -/
def P4488245771905908520.Spec : Prop :=
  ∀ n, P4488245771905908520.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P2387719987394600956

`A033539(2*n+5)-3`
-/

namespace A262139.P2387719987394600956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (2 * n + 5) - 3

end

end A262139.P2387719987394600956

namespace A262139

/-- `A033539(2*n+5)-3` -/
def P2387719987394600956.Spec : Prop :=
  ∀ n, P2387719987394600956.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P8836743168515990682

`3*A328990(2*(n+1))+1`
-/

namespace A262139.P8836743168515990682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A328990 (2 * (n + 1)) + 1

end

end A262139.P8836743168515990682

namespace A262139

/-- `3*A328990(2*(n+1))+1` -/
def P8836743168515990682.Spec : Prop :=
  ∀ n, P8836743168515990682.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P17895855438884663802

`3*A048739(2*(n+1))-2`
-/

namespace A262139.P17895855438884663802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048739 (2 * (n + 1)) - 2

end

end A262139.P17895855438884663802

namespace A262139

/-- `3*A048739(2*(n+1))-2` -/
def P17895855438884663802.Spec : Prop :=
  ∀ n, P17895855438884663802.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P8612093071457832880

`3*A111352(2*n+5)+1`
-/

namespace A262139.P8612093071457832880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111352 (2 * n + 5) + 1

end

end A262139.P8612093071457832880

namespace A262139

/-- `3*A111352(2*n+5)+1` -/
def P8612093071457832880.Spec : Prop :=
  ∀ n, P8612093071457832880.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P4535273464892241661

`∑[3*A002315(n+1)+1]-n`
-/

namespace A262139.P4535273464892241661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002315 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A262139.P4535273464892241661

namespace A262139

/-- `∑[3*A002315(n+1)+1]-n` -/
def P4535273464892241661.Spec : Prop :=
  ∀ n, P4535273464892241661.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P2330967669090191891

`A182193(n+2)+A001652(n+1)`
-/

namespace A262139.P2330967669090191891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182193 (n + 2) + A001652 (n + 1)

end

end A262139.P2330967669090191891

namespace A262139

/-- `A182193(n+2)+A001652(n+1)` -/
def P2330967669090191891.Spec : Prop :=
  ∀ n, P2330967669090191891.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P14918030390240825823

`A009759(n+2)+A001653(n+2)`
-/

namespace A262139.P14918030390240825823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009759 (n + 2) + A001653 (n + 2)

end

end A262139.P14918030390240825823

namespace A262139

/-- `A009759(n+2)+A001653(n+2)` -/
def P14918030390240825823.Spec : Prop :=
  ∀ n, P14918030390240825823.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P15612358697753021656

`A001653(n+2)+∑[A001541(n+2)]`
-/

namespace A262139.P15612358697753021656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262139.P15612358697753021656

namespace A262139

/-- `A001653(n+2)+∑[A001541(n+2)]` -/
def P15612358697753021656.Spec : Prop :=
  ∀ n, P15612358697753021656.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P9385827818193382164

`A075841(n+2)+A241976(n+2)-2`
-/

namespace A262139.P9385827818193382164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075841 (n + 2) + (A241976 (n + 2) - 2)

end

end A262139.P9385827818193382164

namespace A262139

/-- `A075841(n+2)+A241976(n+2)-2` -/
def P9385827818193382164.Spec : Prop :=
  ∀ n, P9385827818193382164.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P12756274313607536390

`A117474(2*n+1)+A060569(2*(n+1))`
-/

namespace A262139.P12756274313607536390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117474 (2 * n + 1) + A060569 (2 * (n + 1))

end

end A262139.P12756274313607536390

namespace A262139

/-- `A117474(2*n+1)+A060569(2*(n+1))` -/
def P12756274313607536390.Spec : Prop :=
  ∀ n, P12756274313607536390.a n = A262139 (n + 1)

end A262139

/-! ## A262139.P8949416425932012855

`A000129(2*n+3)+∑[A078057(2*n+3)]`
-/

namespace A262139.P8949416425932012855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262139.P8949416425932012855

namespace A262139

/-- `A000129(2*n+3)+∑[A078057(2*n+3)]` -/
def P8949416425932012855.Spec : Prop :=
  ∀ n, P8949416425932012855.a n = A262139 (n + 1)

end A262139

/-!
# A262140: The first of nine consecutive positive integers the sum of the squares of which is equal to the sum of the squares of eight consecutive positive integers.

The programs for A262140, the canonical program `A262140.P4804315863680332064` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262140 has offset 1).

The definition of A262140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262140.P4804315863680332064

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=20, a(1)=136, a(2)=812`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262140

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P4804315863680332064.Spec : Prop :=
  ∀ n, P4804315863680332064.a n = A262140 (n + 1)

theorem P4804315863680332064.correct : P4804315863680332064.Spec := by
  intro n
  simp only [A262140, Nat.add_sub_cancel]

end A262140

/-! ## A262140.P17732321181092821723

`4*A076708(n+2)`
-/

namespace A262140.P17732321181092821723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A076708 (n + 2)

end

end A262140.P17732321181092821723

namespace A262140

/-- `4*A076708(n+2)` -/
def P17732321181092821723.Spec : Prop :=
  ∀ n, P17732321181092821723.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P3980737013719537771

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=20`
-/

namespace A262140.P3980737013719537771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P3980737013719537771

namespace A262140

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P3980737013719537771.Spec : Prop :=
  ∀ n, P3980737013719537771.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P404514610324677868

`∑[A077445(n+2)]`
-/

namespace A262140.P404514610324677868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P404514610324677868

namespace A262140

/-- `∑[A077445(n+2)]` -/
def P404514610324677868.Spec : Prop :=
  ∀ n, P404514610324677868.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P5392678534699232691

`A396927(2*(n+1))`
-/

namespace A262140.P5392678534699232691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396927 (2 * (n + 1))

end

end A262140.P5392678534699232691

namespace A262140

/-- `A396927(2*(n+1))` -/
def P5392678534699232691.Spec : Prop :=
  ∀ n, P5392678534699232691.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P3349834865457319778

`A005319(n+2)-4`
-/

namespace A262140.P3349834865457319778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 (n + 2) - 4

end

end A262140.P3349834865457319778

namespace A262140

/-- `A005319(n+2)-4` -/
def P3349834865457319778.Spec : Prop :=
  ∀ n, P3349834865457319778.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P9228981479029314781

`∑[2*A075870(n+2)]`
-/

namespace A262140.P9228981479029314781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P9228981479029314781

namespace A262140

/-- `∑[2*A075870(n+2)]` -/
def P9228981479029314781.Spec : Prop :=
  ∀ n, P9228981479029314781.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P8186677893220654276

`Δ[A182190(n+1)]-4`
-/

namespace A262140.P8186677893220654276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A262140.P8186677893220654276

namespace A262140

/-- `Δ[A182190(n+1)]-4` -/
def P8186677893220654276.Spec : Prop :=
  ∀ n, P8186677893220654276.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P9031621317729140213

`∑[4*A001653(n+2)]`
-/

namespace A262140.P9031621317729140213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P9031621317729140213

namespace A262140

/-- `∑[4*A001653(n+2)]` -/
def P9031621317729140213.Spec : Prop :=
  ∀ n, P9031621317729140213.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P11429003037441041515

`4*(A001109(n+2)-1)`
-/

namespace A262140.P11429003037441041515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001109 (n + 2) - 1)

end

end A262140.P11429003037441041515

namespace A262140

/-- `4*(A001109(n+2)-1)` -/
def P11429003037441041515.Spec : Prop :=
  ∀ n, P11429003037441041515.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P617989945896130033

`A133654(2*(n+2))-3`
-/

namespace A262140.P617989945896130033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (2 * (n + 2)) - 3

end

end A262140.P617989945896130033

namespace A262140

/-- `A133654(2*(n+2))-3` -/
def P617989945896130033.Spec : Prop :=
  ∀ n, P617989945896130033.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P14349065202009486491

`∑[2*Δ[A001542(n+1)]]`
-/

namespace A262140.P14349065202009486491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P14349065202009486491

namespace A262140

/-- `∑[2*Δ[A001542(n+1)]]` -/
def P14349065202009486491.Spec : Prop :=
  ∀ n, P14349065202009486491.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P250775207348936443

`∑[2*Δ[A182189(n+1)]]`
-/

namespace A262140.P250775207348936443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P250775207348936443

namespace A262140

/-- `∑[2*Δ[A182189(n+1)]]` -/
def P250775207348936443.Spec : Prop :=
  ∀ n, P250775207348936443.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P15715748971620456759

`∑[Δ[A081554(n+1)]/2]`
-/

namespace A262140.P15715748971620456759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P15715748971620456759

namespace A262140

/-- `∑[Δ[A081554(n+1)]/2]` -/
def P15715748971620456759.Spec : Prop :=
  ∀ n, P15715748971620456759.a n = (A262140 (n + 1) : ℚ)

end A262140

/-! ## A262140.P1459785029201883974

`Δ[A129589(2*(n+1))]-2`
-/

namespace A262140.P1459785029201883974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129589 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A262140.P1459785029201883974

namespace A262140

/-- `Δ[A129589(2*(n+1))]-2` -/
def P1459785029201883974.Spec : Prop :=
  ∀ n, P1459785029201883974.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P6654251578304993578

`∑[2*A052542(2*n+3)]`
-/

namespace A262140.P6654251578304993578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052542 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P6654251578304993578

namespace A262140

/-- `∑[2*A052542(2*n+3)]` -/
def P6654251578304993578.Spec : Prop :=
  ∀ n, P6654251578304993578.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P11262118579056404946

`∑[4*A077985(2*(n+1))]`
-/

namespace A262140.P11262118579056404946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077985 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P11262118579056404946

namespace A262140

/-- `∑[4*A077985(2*(n+1))]` -/
def P11262118579056404946.Spec : Prop :=
  ∀ n, P11262118579056404946.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P10663283771050971038

`∑[4*A000129(2*n+3)]`
-/

namespace A262140.P10663283771050971038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P10663283771050971038

namespace A262140

/-- `∑[4*A000129(2*n+3)]` -/
def P10663283771050971038.Spec : Prop :=
  ∀ n, P10663283771050971038.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P15600231811875527647

`∑[abs(Δ[A163271(2*n+3)])]`
-/

namespace A262140.P15600231811875527647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262140.P15600231811875527647

namespace A262140

/-- `∑[abs(Δ[A163271(2*n+3)])]` -/
def P15600231811875527647.Spec : Prop :=
  ∀ n, P15600231811875527647.a n = A262140 (n + 1)

end A262140

/-! ## A262140.P18177241866698128107

`2*(A069306(2*n+3)-2)`
-/

namespace A262140.P18177241866698128107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069306 (2 * n + 3) - 2)

end

end A262140.P18177241866698128107

namespace A262140

/-- `2*(A069306(2*n+3)-2)` -/
def P18177241866698128107.Spec : Prop :=
  ∀ n, P18177241866698128107.a n = A262140 (n + 1)

end A262140

/-!
# A262141: The first of nine consecutive positive integers the sum of the squares of which is equal to the sum of the squares of ten consecutive positive integers.

The programs for A262141, there is no canonical definition to state claims against.
-/

/-! ## A262141.P4605658128660604939

`A155195(2*n+3)-4`
-/

namespace A262141.P4605658128660604939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155195 (2 * n + 3) - 4

end

end A262141.P4605658128660604939

/-! ## A262141.P8232411178974128737

`A228472(4*(n+1))-4`
-/

namespace A262141.P8232411178974128737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228472 (4 * (n + 1)) - 4

end

end A262141.P8232411178974128737

/-! ## A262141.P398592436531318076

`5*A097315(n+1)-4`
-/

namespace A262141.P398592436531318076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097315 (n + 1) - 4

end

end A262141.P398592436531318076

/-! ## A262141.P6779629562550430003

`A116559(A008458(2*n+3))-4`
-/

namespace A262141.P6779629562550430003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008458 (2 * n + 3)).toNat - 4

end

end A262141.P6779629562550430003

/-!
# A262142: The first of ten consecutive positive integers the sum of the squares of which is equal to the sum of the squares of nine consecutive positive integers.

The programs for A262142, there is no canonical definition to state claims against.
-/

/-! ## A262142.P14669692787742227774

`∑[9*A078986(n+1)]`
-/

namespace A262142.P14669692787742227774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A078986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262142.P14669692787742227774

/-! ## A262142.P9645100312205939522

`∑[3*Δ[A280111(n+1)]]`
-/

namespace A262142.P9645100312205939522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262142.P9645100312205939522

/-! ## A262142.P17215814244984241357

`∑[9*A041066(2*n+1)]`
-/

namespace A262142.P17215814244984241357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A041066 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262142.P17215814244984241357

/-! ## A262142.P14765045796709028604

`∑[9*A041160(2*n+1)]`
-/

namespace A262142.P14765045796709028604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A041160 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262142.P14765045796709028604

/-! ## A262142.P8164856500416711900

`∑[9*A041682(2*n+1)]`
-/

namespace A262142.P8164856500416711900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A041682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262142.P8164856500416711900

/-!
# A262143: Square array read by antidiagonals upwards: the n-th row o.g.f. is exp( Sum_{i >= 1} c(n,i)*x^i/i ) for n >= 1, where c(n,k) is Shanks' array of generalized Euler and class numbers.

The programs for A262143, there is no canonical definition to state claims against.
-/

/-! ## A262143.P8301217467476458583

`A331295(A086613(n))`
-/

namespace A262143.P8301217467476458583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A086613 n).toNat

end

end A262143.P8301217467476458583

/-! ## A262143.P5406644135428940410

`A088226(A328429(n))+1`
-/

namespace A262143.P5406644135428940410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A328429 n).toNat + 1

end

end A262143.P5406644135428940410

/-! ## A262143.P8427114666124163782

`A293330(A158497(n))+1`
-/

namespace A262143.P8427114666124163782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293330 (A158497 n).toNat + 1

end

end A262143.P8427114666124163782

/-! ## A262143.P17858678640765108762

`and(43, A196329(A244884(n)))`
-/

namespace A262143.P17858678640765108762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 43 (A196329 (A244884 n).toNat)

end

end A262143.P17858678640765108762

/-! ## A262143.P11557145102532790963

`A321469(A228614(n)+A072243(n))`
-/

namespace A262143.P11557145102532790963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321469 (A228614 n + A072243 n).toNat

end

end A262143.P11557145102532790963

/-!
# A262145: Expansion of o.g.f. exp( Sum_{n >= 1} A000182(n+1)*x^n/n ), where A000182 is the sequence of tangent numbers.

The programs for A262145, there is no canonical definition to state claims against.
-/

/-! ## A262145.P2559548068130506750

`A262144(∑[n+1])`
-/

namespace A262145.P2559548068130506750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262145.P2559548068130506750

/-! ## A262145.P3105377763326343752

`record[ratio[1/A262144(n+1)]]`
-/

namespace A262145.P3105377763326343752
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A262144 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262145.P3105377763326343752

/-! ## A262145.P1031080570507854129

`record[A262144(∑[A057979(n)])]`
-/

namespace A262145.P1031080570507854129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262144 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262145.P1031080570507854129

/-!
# A262146: Expansion of f(-x, -x^5) * f(x, x^7) / f(-x, -x^2)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A262146, there is no canonical definition to state claims against.
-/

/-! ## A262146.P13290142811362695884

`A132217(2*n+1)`
-/

namespace A262146.P13290142811362695884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132217 (2 * n + 1)

end

end A262146.P13290142811362695884

/-! ## A262146.P4061592068791853997

`-A262160(2*n+1)`
-/

namespace A262146.P4061592068791853997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262160 (2 * n + 1)

end

end A262146.P4061592068791853997

/-! ## A262146.P11084724079401925546

`record[-A262160(n+1)]`
-/

namespace A262146.P11084724079401925546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262146.P11084724079401925546

/-! ## A262146.P15079821448210471782

`gcd(A000038(n), A262160(2*n+1))`
-/

namespace A262146.P15079821448210471782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262160 (2 * n + 1))

end

end A262146.P15079821448210471782

/-! ## A262146.P10335057780835740245

`lcm(A020985(n), A262160(2*n+1))`
-/

namespace A262146.P10335057780835740245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A262160 (2 * n + 1))

end

end A262146.P10335057780835740245

/-! ## A262146.P4885299675466962641

`A000007(n+1)-A262160(2*n+1)`
-/

namespace A262146.P4885299675466962641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A262160 (2 * n + 1)

end

end A262146.P4885299675466962641

/-! ## A262146.P8174757624153260944

`A000038(n+1)-A262160(2*n+1)`
-/

namespace A262146.P8174757624153260944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A262160 (2 * n + 1)

end

end A262146.P8174757624153260944

/-! ## A262146.P14629233826524219325

`1-(A262160(2*n+1)+A033999(2*n))`
-/

namespace A262146.P14629233826524219325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A262160 (2 * n + 1) + A033999 (2 * n))

end

end A262146.P14629233826524219325

/-! ## A262146.P194363263962493703

`A121262(2*n+1)-A262160(2*n+1)`
-/

namespace A262146.P194363263962493703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * n + 1) - A262160 (2 * n + 1)

end

end A262146.P194363263962493703

/-! ## A262146.P9520262221514191888

`A033999(2*n+1)*A262160(2*n+1)`
-/

namespace A262146.P9520262221514191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A262160 (2 * n + 1)

end

end A262146.P9520262221514191888

/-! ## A262146.P7088944655393289392

`A020985(2*n)-(A262160(2*n+1)+A020985(4*n))`
-/

namespace A262146.P7088944655393289392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n) - (A262160 (2 * n + 1) + A020985 (4 * n))

end

end A262146.P7088944655393289392

/-!
# A262148: Denominators of domain values whose images via the flowsnake Q-function follow a spiral trajectory.

The programs for A262148, the canonical program `A262148.P9387430930512129184` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262148 has offset 1).

The definition of A262148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262148.P9387430930512129184

`49*a(n-6)` with `a(0)=56, a(1)=56, a(2)=392, a(3)=392, a(4)=56, a(5)=392`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262148

/-- `49*a(n-6)` -/
def P9387430930512129184.Spec : Prop :=
  ∀ n, (P9387430930512129184.a n : ℤ) = A262148 (n + 1)

theorem P9387430930512129184.correct : P9387430930512129184.Spec := by
  intro n
  simp only [A262148, Nat.add_sub_cancel]

end A262148

/-! ## A262148.P5847305716630308792

`A161341(or(A006218(n), A161373(n+1)))`
-/

namespace A262148.P5847305716630308792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (Int.lor (A006218 n) (A161373 (n + 1))).toNat

end

end A262148.P5847305716630308792

namespace A262148

/-- `A161341(or(A006218(n), A161373(n+1)))` -/
def P5847305716630308792.Spec : Prop :=
  ∀ n, P5847305716630308792.a n = A262148 (n + 1)

end A262148

/-! ## A262148.P9696082553255389148

`A161341(A293194(n+2))`
-/

namespace A262148.P9696082553255389148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (A293194 (n + 2)).toNat

end

end A262148.P9696082553255389148

namespace A262148

/-- `A161341(A293194(n+2))` -/
def P9696082553255389148.Spec : Prop :=
  ∀ n, P9696082553255389148.a n = A262148 (n + 1)

end A262148

/-! ## A262148.P6419444457276936126

`A161341(A152820(n+1))`
-/

namespace A262148.P6419444457276936126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (A152820 (n + 1)).toNat

end

end A262148.P6419444457276936126

namespace A262148

/-- `A161341(A152820(n+1))` -/
def P6419444457276936126.Spec : Prop :=
  ∀ n, P6419444457276936126.a n = A262148 (n + 1)

end A262148

/-! ## A262148.P14493764858995771987

`A161341(A095365(n+2))`
-/

namespace A262148.P14493764858995771987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (A095365 (n + 2)).toNat

end

end A262148.P14493764858995771987

namespace A262148

/-- `A161341(A095365(n+2))` -/
def P14493764858995771987.Spec : Prop :=
  ∀ n, P14493764858995771987.a n = A262148 (n + 1)

end A262148

/-!
# A262149: Rocket sequence 50: a(0)=50, a(n)=A073846(a(n-1)).

The programs for A262149, the canonical program `A262149.P10407631004289077614` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262149 has offset 0).

The definition of A262149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262149.P10407631004289077614

`A073846(a(n-1))` with `a(0)=50`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262149

/-- `A073846(a(n-1))` -/
def P10407631004289077614.Spec : Prop :=
  ∀ n, P10407631004289077614.a n = A262149 n

theorem P10407631004289077614.correct : P10407631004289077614.Spec := by
  intro n
  simp only [A262149]

end A262149

/-! ## A262149.P8976363130591846986

`A067747(A233583(a(n-1)))` with `a(0)=50`
-/

namespace A262149.P8976363130591846986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [50] fun n a =>
  A067747 (A233583 (a (n - 1)).toNat).toNat

end

end A262149.P8976363130591846986

namespace A262149

/-- `A067747(A233583(a(n-1)))` -/
def P8976363130591846986.Spec : Prop :=
  ∀ n, P8976363130591846986.a n = A262149 n

end A262149

/-!
# A262150: Expansion of f(-x^3)^3 / (f(-x^2) * f(-x^4)^2) in powers of x where f() is a Ramanujan theta function.

The programs for A262150, there is no canonical definition to state claims against.
-/

/-! ## A262150.P3957622979796142824

`A143066(3*n)`
-/

namespace A262150.P3957622979796142824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (3 * n)

end

end A262150.P3957622979796142824

/-! ## A262150.P2114055427371505445

`A143066(A008486(n))+A000038(n)`
-/

namespace A262150.P2114055427371505445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (A008486 n).toNat + A000038 n

end

end A262150.P2114055427371505445

/-! ## A262150.P3066107854665293770

`and(A143066(A008486(n)), A260196(n))`
-/

namespace A262150.P3066107854665293770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143066 (A008486 n).toNat) (A260196 n)

end

end A262150.P3066107854665293770

/-! ## A262150.P7919235348596087660

`A143066(A008486(n))^A001222(A008578(n+1))`
-/

namespace A262150.P7919235348596087660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143066 (A008486 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A262150.P7919235348596087660

/-! ## A262150.P5814519398640389680

`A262162(4*n)`
-/

namespace A262150.P5814519398640389680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262162 (4 * n)

end

end A262150.P5814519398640389680

/-! ## A262150.P8178419274214004749

`A262929(12*n)`
-/

namespace A262150.P8178419274214004749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (12 * n)

end

end A262150.P8178419274214004749

/-! ## A262150.P9230903307087310686

`A262162(A004767(n)-3)%A020695(n)`
-/

namespace A262150.P9230903307087310686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262162 (A004767 n - 3).toNat) (A020695 n)

end

end A262150.P9230903307087310686

/-!
# A262151: Expansion of f(-x^3)^3 / (f(x)^2 * f(-x^2)) in powers of x where f() is a Ramanujan theta function.

The programs for A262151, there is no canonical definition to state claims against.
-/

/-! ## A262151.P15521775073160400918

`A262160(3*n)`
-/

namespace A262151.P15521775073160400918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (3 * n)

end

end A262151.P15521775073160400918

/-! ## A262151.P16515373366790297709

`A009001(2*n)*A132217(3*n)`
-/

namespace A262151.P16515373366790297709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A132217 (3 * n)

end

end A262151.P16515373366790297709

/-! ## A262151.P9561052062936740570

`A262160(A008486(n))+A000038(n)`
-/

namespace A262151.P9561052062936740570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A008486 n).toNat + A000038 n

end

end A262151.P9561052062936740570

/-! ## A262151.P11660738214187575367

`A033999(n)*A132217(A008585(n))`
-/

namespace A262151.P11660738214187575367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132217 (A008585 n).toNat

end

end A262151.P11660738214187575367

/-! ## A262151.P4160460267358463651

`A056594(A005843(n))*A132217(3*n)`
-/

namespace A262151.P4160460267358463651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 n).toNat * A132217 (3 * n)

end

end A262151.P4160460267358463651

/-! ## A262151.P5064359912747548712

`A262160(A008486(n))+A077957(A028870(n+1))`
-/

namespace A262151.P5064359912747548712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A008486 n).toNat + A077957 (A028870 (n + 1)).toNat

end

end A262151.P5064359912747548712

/-!
# A262152: Expansion of f(-x^6)^3 / (f(-x^4)^2 * psi(x)) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A262152, there is no canonical definition to state claims against.
-/

/-! ## A262152.P5536599265927308107

`-A143066(3*n+1)`
-/

namespace A262152.P5536599265927308107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143066 (3 * n + 1)

end

end A262152.P5536599265927308107

/-! ## A262152.P7141975987813841614

`A059841(2*n+1)-A143066(3*n+1)`
-/

namespace A262152.P7141975987813841614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) - A143066 (3 * n + 1)

end

end A262152.P7141975987813841614

/-! ## A262152.P15647063495400116957

`A000038(n)-A143066(A008486(n)+1)`
-/

namespace A262152.P15647063495400116957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A143066 (A008486 n + 1).toNat

end

end A262152.P15647063495400116957

/-! ## A262152.P17516923389602246799

`A293064(A007610(2*(n+1)))-A143066(3*n+1)`
-/

namespace A262152.P17516923389602246799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (A007610 (2 * (n + 1))).toNat - A143066 (3 * n + 1)

end

end A262152.P17516923389602246799

/-! ## A262152.P3327541644775367080

`A077957((n+2)^and(1, n))-A143066(3*n+1)`
-/

namespace A262152.P3327541644775367080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 ((n + 2) ^ Nat.land 1 n) - A143066 (3 * n + 1)

end

end A262152.P3327541644775367080

/-! ## A262152.P5484108646074249361

`A077957(A065330(n+4))-A143066(3*n+1)`
-/

namespace A262152.P5484108646074249361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A065330 (n + 4)).toNat - A143066 (3 * n + 1)

end

end A262152.P5484108646074249361

/-! ## A262152.P8734840931706439359

`A077957(2*n+1)-A143066(3*n+1)`
-/

namespace A262152.P8734840931706439359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n + 1) - A143066 (3 * n + 1)

end

end A262152.P8734840931706439359

/-!
# A262154: Pseudoprimes to base 9, written in base 9.

The programs for A262154, there is no canonical definition to state claims against.
-/

/-! ## A262154.P16774576008610536940

`A007095(A020138(n+1))`
-/

namespace A262154.P16774576008610536940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A020138 (n + 1)).toNat

end

end A262154.P16774576008610536940

/-! ## A262154.P18172071004680118627

`A007095(∩[A020209(n+1), A122786(n+1)])`
-/

namespace A262154.P18172071004680118627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262154.P18172071004680118627

/-! ## A262154.P10818160669171522015

`A037479(∩[A020209(n+1), A122786(n+1)])`
-/

namespace A262154.P10818160669171522015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262154.P10818160669171522015

/-! ## A262154.P16815539923886088495

`A037479(∩[A122786(n+1), A133223(n+1)])`
-/

namespace A262154.P16815539923886088495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262154.P16815539923886088495

/-!
# A262156: Expansion of f(-x^6)^3 / (f(x)^2 * psi(x)) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A262156, there is no canonical definition to state claims against.
-/

/-! ## A262156.P11622480105585524823

`-A262160(3*n+1)`
-/

namespace A262156.P11622480105585524823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262160 (3 * n + 1)

end

end A262156.P11622480105585524823

/-! ## A262156.P4233599494826695836

`A000007(n+1)-A262160(3*n+1)`
-/

namespace A262156.P4233599494826695836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A262160 (3 * n + 1)

end

end A262156.P4233599494826695836

/-! ## A262156.P9671107368522581654

`A000038(n)-A262160(A008486(n)+1)`
-/

namespace A262156.P9671107368522581654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A262160 (A008486 n + 1).toNat

end

end A262156.P9671107368522581654

/-! ## A262156.P13397009548979397762

`A033999(n)*A132217(A008585(n)+1)`
-/

namespace A262156.P13397009548979397762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132217 (A008585 n + 1).toNat

end

end A262156.P13397009548979397762

/-! ## A262156.P1679264570785212246

`A228708(∑{p}[n+1, A001222(#)])-A262160(3*n+1)`
-/

namespace A262156.P1679264570785212246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat - A262160 (3 * n + 1)

end

end A262156.P1679264570785212246

/-! ## A262156.P13881553249518112926

`A262929(A017617(n)-1)/2`
-/

namespace A262156.P13881553249518112926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262929 (A017617 n - 1).toNat : ℚ) / 2

end

end A262156.P13881553249518112926

/-! ## A262156.P1212419947062069859

`A000122(A167487(n))-A262160(3*n+1)`
-/

namespace A262156.P1212419947062069859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A167487 n).toNat - A262160 (3 * n + 1)

end

end A262156.P1212419947062069859

/-!
# A262157: Expansion of psi(x^3)^3 / (psi(x)^2 * psi(x^2)) in powers of x where psi() is a Ramanujan theta function.

The programs for A262157, there is no canonical definition to state claims against.
-/

/-! ## A262157.P1357299607691082144

`A143066(3*n+2)`
-/

namespace A262157.P1357299607691082144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (3 * n + 2)

end

end A262157.P1357299607691082144

/-! ## A262157.P8476880380586489841

`A143066(A016789(n))/(1-4/2)²`
-/

namespace A262157.P8476880380586489841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143066 (A016789 n).toNat : ℚ) / (1 - (4 : ℚ) / 2) ^ 2

end

end A262157.P8476880380586489841

/-! ## A262157.P5435179091046624147

`A143066(A016789(n))+A000007(n+1)`
-/

namespace A262157.P5435179091046624147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (A016789 n).toNat + A000007 (n + 1)

end

end A262157.P5435179091046624147

/-! ## A262157.P17498132913246925177

`A262929(12*n+8)`
-/

namespace A262157.P17498132913246925177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (12 * n + 8)

end

end A262157.P17498132913246925177

/-! ## A262157.P1245805492581275922

`A143066(A016789(n))%A005126(n)`
-/

namespace A262157.P1245805492581275922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143066 (A016789 n).toNat) (A005126 n)

end

end A262157.P1245805492581275922

/-! ## A262157.P13767585599941720776

`A007318(A000217(n))*A143066(A016789(n))`
-/

namespace A262157.P13767585599941720776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A143066 (A016789 n).toNat

end

end A262157.P13767585599941720776

/-! ## A262157.P3608682081208721803

`A143066(A016789(n))+A008683(A229295(n+1))`
-/

namespace A262157.P3608682081208721803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143066 (A016789 n).toNat + A008683 (A229295 (n + 1)).toNat

end

end A262157.P3608682081208721803

/-! ## A262157.P13567555832776899947

`A003963(A130321(n))*A143066(A016789(n))`
-/

namespace A262157.P13567555832776899947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A130321 n).toNat * A143066 (A016789 n).toNat

end

end A262157.P13567555832776899947

/-!
# A262158: Expansion of psi(x^3)^3 * psi(x^2) / psi(x)^4 in powers of x where psi() is a Ramanujan theta function.

The programs for A262158, there is no canonical definition to state claims against.
-/

/-! ## A262158.P15491002769054401887

`A262160(3*n+2)`
-/

namespace A262158.P15491002769054401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (3 * n + 2)

end

end A262158.P15491002769054401887

/-! ## A262158.P3460628100452161820

`A033999(n)*A132217(A008585(n)+2)`
-/

namespace A262158.P3460628100452161820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132217 (A008585 n + 2).toNat

end

end A262158.P3460628100452161820

/-! ## A262158.P10014750524068929010

`A262160(A016789(n))+A121262(or(1, n))`
-/

namespace A262158.P10014750524068929010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A016789 n).toNat + A121262 (Nat.lor 1 n)

end

end A262158.P10014750524068929010

/-! ## A262158.P18115408804326011375

`A262160(A016789(n))+A121262(A000040(n+1))`
-/

namespace A262158.P18115408804326011375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A016789 n).toNat + A121262 (A000040 (n + 1)).toNat

end

end A262158.P18115408804326011375

/-! ## A262158.P6220783788731894263

`A262160(A016789(n))+A121262(A003625(n+1))`
-/

namespace A262158.P6220783788731894263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A016789 n).toNat + A121262 (A003625 (n + 1)).toNat

end

end A262158.P6220783788731894263

/-! ## A262158.P14030069326204865681

`A262160(A016789(n))+A121262(A300395(n+1))`
-/

namespace A262158.P14030069326204865681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A016789 n).toNat + A121262 (A300395 (n + 1)).toNat

end

end A262158.P14030069326204865681

/-! ## A262158.P9859286425322083705

`A262160(A016789(n))%A199484(n)`
-/

namespace A262158.P9859286425322083705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262160 (A016789 n).toNat) (A199484 n)

end

end A262158.P9859286425322083705

/-! ## A262158.P8327522073576040334

`A010815(A000326(n))*A132217(3*n+2)`
-/

namespace A262158.P8327522073576040334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A132217 (3 * n + 2)

end

end A262158.P8327522073576040334

/-! ## A262158.P8868524410589862969

`A262160(A016789(n))+A121262(A145236(n+1))`
-/

namespace A262158.P8868524410589862969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (A016789 n).toNat + A121262 (A145236 (n + 1)).toNat

end

end A262158.P8868524410589862969

/-!
# A262159: a(1) = 1, for n > 1 the least composite number k > a(n-1) such that a(n-1) + k is also a composite number.

The programs for A262159, there is no canonical definition to state claims against.
-/

/-! ## A262159.P9013297983819580315

`lt[A046092(n), A051119(A278243(n+2))²]+1`
-/

namespace A262159.P9013297983819580315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A278243 (n + 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A262159.P9013297983819580315

/-! ## A262159.P4868388800663416551

`lt[Δ[A118134(A118141(n+4))], 0]`
-/

namespace A262159.P4868388800663416551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (A118141 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A262159.P4868388800663416551

/-! ## A262159.P652327357559018721

`lt[Δ[A118141(n+4)], A118135(3*n+4)]`
-/

namespace A262159.P652327357559018721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118141 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A262159.P652327357559018721

/-! ## A262159.P11449722576582432779

`(A174392(n+3)-1)%A359068(2*(n+2))`
-/

namespace A262159.P11449722576582432779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174392 (n + 3) - 1) (A359068 (2 * (n + 2)))

end

end A262159.P11449722576582432779

/-! ## A262159.P2647885521073716585

`A390445(n+3)%A156274(A114226(n))`
-/

namespace A262159.P2647885521073716585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390445 (n + 3)) (A156274 (A114226 n).toNat)

end

end A262159.P2647885521073716585

/-!
# A262160: Expansion of psi(x^6) / psi(x) in powers of x where psi() is a Ramanujan theta function.

The programs for A262160, there is no canonical definition to state claims against.
-/

/-! ## A262160.P9445316425353860203

`(-1)^n*A132217(n)`
-/

namespace A262160.P9445316425353860203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132217 n

end

end A262160.P9445316425353860203

/-! ## A262160.P15731842508119404405

`A132217(n)/(-1)^n`
-/

namespace A262160.P15731842508119404405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132217 n : ℚ) / ((-1) ^ n : ℚ)

end

end A262160.P15731842508119404405

/-! ## A262160.P11658913268975197634

`A374204(A298222(n+1))+A370153(2*n+4)`
-/

namespace A262160.P11658913268975197634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A298222 (n + 1)).toNat + A370153 (2 * n + 4)

end

end A262160.P11658913268975197634

/-!
# A262161: a(n) is the largest term in the continued fraction for a(n-1) + n^2/a(n-1), where a(1)=1.

The programs for A262161, the canonical program `A262161.P9022534900346036061` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262161 has offset 1).

The definition of A262161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262161.P9022534900346036061

`floor(a(n-1)+(n+1)²/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262161

/-- `floor(a(n-1)+(n+1)²/a(n-1))` -/
def P9022534900346036061.Spec : Prop :=
  ∀ n, P9022534900346036061.a n = A262161 (n + 1)

theorem P9022534900346036061.correct : P9022534900346036061.Spec := by
  intro n
  simp only [A262161, Nat.add_sub_cancel]

end A262161

/-! ## A262161.P9686798823324590809

`a(n-1)+floor(∑[2*n+1]/a(n-1))` with `a(0)=1`
-/

namespace A262161.P9686798823324590809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A262161.P9686798823324590809

namespace A262161

/-- `a(n-1)+floor(∑[2*n+1]/a(n-1))` -/
def P9686798823324590809.Spec : Prop :=
  ∀ n, P9686798823324590809.a n = A262161 (n + 1)

end A262161

/-! ## A262161.P4163070540635699569

`floor(a(n-1)+(n+1)²*a(n-1)^(-1))` with `a(0)=1`
-/

namespace A262161.P4163070540635699569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n + 1) ^ 2 : ℚ) * (a (n - 1) : ℚ) ^ (-1 : ℤ)⌋

end

end A262161.P4163070540635699569

namespace A262161

/-- `floor(a(n-1)+(n+1)²*a(n-1)^(-1))` -/
def P4163070540635699569.Spec : Prop :=
  ∀ n, P4163070540635699569.a n = A262161 (n + 1)

theorem P4163070540635699569.correct : P4163070540635699569.Spec := by
  intro n
  simp only [A262161, Nat.add_sub_cancel, A262161.P4163070540635699569.a, A262161.P9022534900346036061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A262161

/-! ## A262161.P4480050942207254300

`floor(a(n-1)+(n+1)*(n+1)/a(n-1))` with `a(0)=1`
-/

namespace A262161.P4480050942207254300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 1 : ℚ) * ((n + 1 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A262161.P4480050942207254300

namespace A262161

/-- `floor(a(n-1)+(n+1)*(n+1)/a(n-1))` -/
def P4480050942207254300.Spec : Prop :=
  ∀ n, P4480050942207254300.a n = A262161 (n + 1)

theorem P4480050942207254300.correct : P4480050942207254300.Spec := by
  intro n
  simp only [A262161, Nat.add_sub_cancel, A262161.P4480050942207254300.a, A262161.P9022534900346036061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A262161

/-! ## A262161.P582767433173490535

`lt[A131632(n+1), A023443(A240058(n+4))]`
-/

namespace A262161.P582767433173490535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A240058 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262161.P582767433173490535

namespace A262161

/-- `lt[A131632(n+1), A023443(A240058(n+4))]` -/
def P582767433173490535.Spec : Prop :=
  ∀ n, (P582767433173490535.a n : ℤ) = A262161 (n + 1)

end A262161

/-!
# A262162: Expansion of f(-x^2)^5 * f(-x^12)^3 / (f(x)^2 * f(-x^8)^6) in powers of x where f() is a Ramanujan theta function.

The programs for A262162, there is no canonical definition to state claims against.
-/

/-! ## A262162.P5080951465482986437

`A262929(3*n)`
-/

namespace A262162.P5080951465482986437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (3 * n)

end

end A262162.P5080951465482986437

/-! ## A262162.P924259573485412602

`A262929(A008486(n))+A000007(n)`
-/

namespace A262162.P924259573485412602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008486 n).toNat + A000007 n

end

end A262162.P924259573485412602

/-! ## A262162.P4476653353078397119

`or(A000007(n), A262929(A008585(n)))`
-/

namespace A262162.P4476653353078397119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262929 (A008585 n).toNat)

end

end A262162.P4476653353078397119

/-! ## A262162.P7786141900210315132

`A262929(A008585(n))+A000007(n+1)`
-/

namespace A262162.P7786141900210315132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008585 n).toNat + A000007 (n + 1)

end

end A262162.P7786141900210315132

/-! ## A262162.P13399236338083711693

`A262929(A008574(n)-n)+A000007(n)`
-/

namespace A262162.P13399236338083711693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008574 n - (n : ℤ)).toNat + A000007 n

end

end A262162.P13399236338083711693

/-! ## A262162.P4398648046907889297

`A262929(A008486(n))+A010873(A145154(n))`
-/

namespace A262162.P4398648046907889297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008486 n).toNat + A010873 (A145154 n).toNat

end

end A262162.P4398648046907889297

/-! ## A262162.P13985232761887658568

`A262929(A008486(n))^A001221(A053585(n+1))`
-/

namespace A262162.P13985232761887658568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262929 (A008486 n).toNat : ℚ) ^ (A001221 (A053585 (n + 1)).toNat : ℤ)

end

end A262162.P13985232761887658568

/-! ## A262162.P13410730968682647396

`A262929(A008486(n))+A045840(A008864(n+1))`
-/

namespace A262162.P13410730968682647396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008486 n).toNat + A045840 (A008864 (n + 1)).toNat

end

end A262162.P13410730968682647396

/-!
# A262163: Number A(n,k) of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A262163, there is no canonical definition to state claims against.
-/

/-! ## A262163.P4580557845801417790

`A068063(A247504(n))`
-/

namespace A262163.P4580557845801417790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A247504 n).toNat

end

end A262163.P4580557845801417790

/-! ## A262163.P6429646099516526848

`∑{e}[A026383(A215086(n)), #]`
-/

namespace A262163.P6429646099516526848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (A215086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A262163.P6429646099516526848

/-! ## A262163.P10681360429875368532

`∑{e}[A287838(A287847(n)), #]`
-/

namespace A262163.P10681360429875368532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287838 (A287847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A262163.P10681360429875368532

/-! ## A262163.P9477402348887015088

`A136107(6^A255636(n+1))`
-/

namespace A262163.P9477402348887015088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A255636 (n + 1) : ℤ))).toNat

end

end A262163.P9477402348887015088

/-! ## A262163.P17997191110442604536

`A110654(A215086(n)%A352227(3*n+4))`
-/

namespace A262163.P17997191110442604536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A215086 n) (A352227 (3 * n + 4))).toNat

end

end A262163.P17997191110442604536

/-!
# A262164: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 2.

The programs for A262164, there is no canonical definition to state claims against.
-/

/-! ## A262164.P10507025280917095696

`A262163(∑[n+3])`
-/

namespace A262164.P10507025280917095696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262164.P10507025280917095696

/-! ## A262164.P7131402464410224999

`abs(1-A262163(A055998(n+1)))+1`
-/

namespace A262164.P7131402464410224999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A262163 (A055998 (n + 1)).toNat| + 1

end

end A262164.P7131402464410224999

/-! ## A262164.P605987682984510734

`gcd(A000038(n), A262163(A055998(n+1)))`
-/

namespace A262164.P605987682984510734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262163 (A055998 (n + 1)).toNat)

end

end A262164.P605987682984510734

/-! ## A262164.P712624964459560038

`char[A002262(n)]*A262163(A055998(n+1))`
-/

namespace A262164.P712624964459560038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262163 (A055998 (n + 1)).toNat

end

end A262164.P712624964459560038

/-! ## A262164.P3951845230248654669

`char[A292371(n)]*A262163(A055998(n+1))`
-/

namespace A262164.P3951845230248654669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262163 (A055998 (n + 1)).toNat

end

end A262164.P3951845230248654669

/-! ## A262164.P8361762491210128107

`A064770(A303824(n))*A262163(A055998(n+1))`
-/

namespace A262164.P8361762491210128107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A303824 n).toNat * A262163 (A055998 (n + 1)).toNat

end

end A262164.P8361762491210128107

/-! ## A262164.P1146586807009521673

`A258829(A133263(n))+A000111(n)`
-/

namespace A262164.P1146586807009521673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A133263 n).toNat + A000111 n

end

end A262164.P1146586807009521673

/-!
# A262165: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 3.

The programs for A262165, there is no canonical definition to state claims against.
-/

/-! ## A262165.P3696396497683267823

`A262163(C(n+5, 2)-4)`
-/

namespace A262165.P3696396497683267823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (Nat.choose (n + 5) 2 - 4)

end

end A262165.P3696396497683267823

/-! ## A262165.P10596086434210138398

`A262163(∑[n+3]+n+3)`
-/

namespace A262165.P10596086434210138398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A262165.P10596086434210138398

/-! ## A262165.P12621538667698124750

`abs(A262163(A046691(n+2))-1)+1`
-/

namespace A262165.P12621538667698124750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262163 (A046691 (n + 2)).toNat - 1| + 1

end

end A262165.P12621538667698124750

/-! ## A262165.P4487637872269028125

`A262163(A046691(n+2))%A320736(2*n+3)`
-/

namespace A262165.P4487637872269028125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262163 (A046691 (n + 2)).toNat) (A320736 (2 * n + 3))

end

end A262165.P4487637872269028125

/-! ## A262165.P14604309726181963202

`and(1, A002586(n+1))*A262163(A046691(n+2))`
-/

namespace A262165.P14604309726181963202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002586 (n + 1)) * A262163 (A046691 (n + 2)).toNat

end

end A262165.P14604309726181963202

/-! ## A262165.P2892325096890697644

`A262163(A046691(n+2))+(A000141(n)%A008451(n))%4`
-/

namespace A262165.P2892325096890697644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A046691 (n + 2)).toNat + Int.tmod (Int.tmod (A000141 n) (A008451 n)) 4

end

end A262165.P2892325096890697644

/-!
# A262166: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 4.

The programs for A262166, there is no canonical definition to state claims against.
-/

/-! ## A262166.P1355950455486195056

`A262163(C(n+5, 2)+n)`
-/

namespace A262166.P1355950455486195056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (Nat.choose (n + 5) 2 + n)

end

end A262166.P1355950455486195056

/-! ## A262166.P5475811463225468487

`A262163(A052905(n+2))`
-/

namespace A262166.P5475811463225468487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A052905 (n + 2)).toNat

end

end A262166.P5475811463225468487

/-! ## A262166.P10949777546777862925

`A262163(eq[4, A025581(n)])`
-/

namespace A262166.P10949777546777862925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262166.P10949777546777862925

/-! ## A262166.P8599899871785960795

`A262163(eq[5, A193739(n)])`
-/

namespace A262166.P8599899871785960795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262166.P8599899871785960795

/-! ## A262166.P17209552607273609987

`A262163(eq[9, A099375(n)])`
-/

namespace A262166.P17209552607273609987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262166.P17209552607273609987

/-! ## A262166.P13859039867885846263

`A262163(eq[5, A004736(n+1)])`
-/

namespace A262166.P13859039867885846263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262166.P13859039867885846263

/-!
# A262167: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 5.

The programs for A262167, there is no canonical definition to state claims against.
-/

/-! ## A262167.P5406056128476748209

`A262163(A055999(n+3))`
-/

namespace A262167.P5406056128476748209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A055999 (n + 3)).toNat

end

end A262167.P5406056128476748209

/-! ## A262167.P5874988963192207956

`A262163(A056119(n)+15)`
-/

namespace A262167.P5874988963192207956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A056119 n + 15).toNat

end

end A262167.P5874988963192207956

/-! ## A262167.P16026390089989878412

`A262163(eq[5, A025581(n)])`
-/

namespace A262167.P16026390089989878412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262167.P16026390089989878412

/-! ## A262167.P4049736994863647792

`A262163(eq[6, A193739(n)])`
-/

namespace A262167.P4049736994863647792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262167.P4049736994863647792

/-! ## A262167.P11462651183691935895

`A262163(eq[11, A099375(n)])`
-/

namespace A262167.P11462651183691935895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262167.P11462651183691935895

/-! ## A262167.P6582544493683422537

`A262163(Δ[A026054(n+3)])`
-/

namespace A262167.P6582544493683422537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (f1 (n + 1) - f1 n).toNat

end

end A262167.P6582544493683422537

/-! ## A262167.P8715898247001119358

`A262163(eq[6, A004736(n+1)])`
-/

namespace A262167.P8715898247001119358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262167.P8715898247001119358

/-!
# A262168: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 6.

The programs for A262168, there is no canonical definition to state claims against.
-/

/-! ## A262168.P15965752539133405853

`A262163(eq[6, A025581(n)])`
-/

namespace A262168.P15965752539133405853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262168.P15965752539133405853

/-! ## A262168.P637528928101167905

`A262163(eq[7, A193739(n)])`
-/

namespace A262168.P637528928101167905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262168.P637528928101167905

/-! ## A262168.P7517896035209269503

`A262163(eq[13, A099375(n)])`
-/

namespace A262168.P7517896035209269503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262168.P7517896035209269503

/-! ## A262168.P11365301169365042796

`A262163(A000217(n+7)-7)`
-/

namespace A262168.P11365301169365042796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A000217 (n + 7) - 7).toNat

end

end A262168.P11365301169365042796

/-! ## A262168.P5114984166189244094

`A262163(eq[7, A004736(n+1)])`
-/

namespace A262168.P5114984166189244094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262168.P5114984166189244094

/-! ## A262168.P4865947489146606847

`A262163(Δ[Δ[A055832(n+5)]])`
-/

namespace A262168.P4865947489146606847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (f1 (n + 1) - f1 n).toNat

end

end A262168.P4865947489146606847

/-! ## A262168.P7030536818972716870

`A262163(Δ[A026054(n+4)]-1)`
-/

namespace A262168.P7030536818972716870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (f1 (n + 1) - f1 n - 1).toNat

end

end A262168.P7030536818972716870

/-!
# A262169: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 7.

The programs for A262169, there is no canonical definition to state claims against.
-/

/-! ## A262169.P500676812682200006

`A262163(A155212(n+4))`
-/

namespace A262169.P500676812682200006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A155212 (n + 4)).toNat

end

end A262169.P500676812682200006

/-! ## A262169.P13157376437709083043

`A262163(eq[7, A025581(n)])`
-/

namespace A262169.P13157376437709083043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262169.P13157376437709083043

/-! ## A262169.P5841120100190880096

`A262163(eq[8, A193739(n)])`
-/

namespace A262169.P5841120100190880096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262169.P5841120100190880096

/-! ## A262169.P11351366148023389692

`A262163(eq[15, A099375(n)])`
-/

namespace A262169.P11351366148023389692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262169.P11351366148023389692

/-! ## A262169.P3935573828129982658

`A262163(eq[8, A004736(n+1)])`
-/

namespace A262169.P3935573828129982658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262169.P3935573828129982658

/-!
# A262170: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 8.

The programs for A262170, there is no canonical definition to state claims against.
-/

/-! ## A262170.P15209763523876102915

`A262163(A056000(n+5)+1)`
-/

namespace A262170.P15209763523876102915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A056000 (n + 5) + 1).toNat

end

end A262170.P15209763523876102915

/-! ## A262170.P4798499332996509385

`A262163(A000217(n+9)-9)`
-/

namespace A262170.P4798499332996509385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A000217 (n + 9) - 9).toNat

end

end A262170.P4798499332996509385

/-! ## A262170.P11176711513489681711

`A262163(A055998(n+6)+n+3)`
-/

namespace A262170.P11176711513489681711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A262170.P11176711513489681711

/-! ## A262170.P15820426047582557835

`A262163(A000124(n+8)+n-1)`
-/

namespace A262170.P15820426047582557835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A262170.P15820426047582557835

/-! ## A262170.P16262528116412983703

`A262163(2*n+A167499(n+6)+3)`
-/

namespace A262170.P16262528116412983703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 ((2 * n : ℤ) + (A167499 (n + 6) + 3)).toNat

end

end A262170.P16262528116412983703

/-!
# A262171: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 9.

The programs for A262171, there is no canonical definition to state claims against.
-/

/-! ## A262171.P10606771815190843058

`A262163(A056000(n+6))`
-/

namespace A262171.P10606771815190843058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (A056000 (n + 6)).toNat

end

end A262171.P10606771815190843058

/-! ## A262171.P7901152911071914912

`A262163(eq[8, A116598(n)])`
-/

namespace A262171.P7901152911071914912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P7901152911071914912

/-! ## A262171.P8015784528191556240

`A262163(eq[9, A025581(n)])`
-/

namespace A262171.P8015784528191556240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P8015784528191556240

/-! ## A262171.P16027432649570902730

`A262163(eq[10, A193739(n)])`
-/

namespace A262171.P16027432649570902730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P16027432649570902730

/-! ## A262171.P6854168059123491716

`A262163(eq[10, A195663(n)])`
-/

namespace A262171.P6854168059123491716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P6854168059123491716

/-! ## A262171.P14302150575059130677

`A262163(eq[10, A004736(n+1)])`
-/

namespace A262171.P14302150575059130677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P14302150575059130677

/-! ## A262171.P946976362176766457

`A262163(eq[90, A095832(n+1)])`
-/

namespace A262171.P946976362176766457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262171.P946976362176766457

/-!
# A262172: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value <= 10.

The programs for A262172, there is no canonical definition to state claims against.
-/

/-! ## A262172.P6507483625874168600

`A262163(eq[10, A025581(n)])`
-/

namespace A262172.P6507483625874168600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262172.P6507483625874168600

/-! ## A262172.P16473578428281011106

`A262163(eq[11, A193739(n)])`
-/

namespace A262172.P16473578428281011106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262172.P16473578428281011106

/-! ## A262172.P11743625724730683274

`A262163(eq[11, A195663(n)])`
-/

namespace A262172.P11743625724730683274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262172.P11743625724730683274

/-! ## A262172.P557431620012542568

`A262163(eq[12, A116598(n)])`
-/

namespace A262172.P557431620012542568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262172.P557431620012542568

/-! ## A262172.P1551474164331995678

`A262163(eq[11, A004736(n+1)])`
-/

namespace A262172.P1551474164331995678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262172.P1551474164331995678

/-!
# A262175: Expansion of chi(x) * psi(x^6) * phi(-x^30) / (f(-x^4) * psi(x^5)) in powers of x where phi(), psi(), chi(), f() are Ramanujan theta functions.

The programs for A262175, there is no canonical definition to state claims against.
-/

/-! ## A262175.P2441399949567567237

`A139632(3*n)`
-/

namespace A262175.P2441399949567567237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139632 (3 * n)

end

end A262175.P2441399949567567237

/-! ## A262175.P10783199516809493567

`abs(A145704(3*n))`
-/

namespace A262175.P10783199516809493567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145704 (3 * n)|

end

end A262175.P10783199516809493567

/-! ## A262175.P3011791788037688892

`abs(A145705(3*n))`
-/

namespace A262175.P3011791788037688892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145705 (3 * n)|

end

end A262175.P3011791788037688892

/-! ## A262175.P11617070437454702909

`lcm((-1)^n, A145704(A008486(n)))`
-/

namespace A262175.P11617070437454702909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A145704 (A008486 n).toNat)

end

end A262175.P11617070437454702909

/-! ## A262175.P1846866295119497811

`gcd(A145704(3*n), A145705(3*n))`
-/

namespace A262175.P1846866295119497811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145704 (3 * n)) (A145705 (3 * n))

end

end A262175.P1846866295119497811

/-! ## A262175.P16214188296137833180

`sqrt(A145704(3*n)^A020639(2*(n+1)))`
-/

namespace A262175.P16214188296137833180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A145704 (3 * n) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A262175.P16214188296137833180

/-! ## A262175.P17057620476419327379

`lcm(A145704(3*n), A155040(n))`
-/

namespace A262175.P17057620476419327379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145704 (3 * n)) (A155040 n)

end

end A262175.P17057620476419327379

/-!
# A262179: Signed denominators of the reduced form of the coefficients of degree 2n terms of the Maclaurin series of (t/sinh(t))^x in t.

The programs for A262179, there is no canonical definition to state claims against.
-/

/-! ## A262179.P15242090052076278626

`A057077(A158742(n))*A202367(n+1)`
-/

namespace A262179.P15242090052076278626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A158742 n).toNat * A202367 (n + 1)

end

end A262179.P15242090052076278626

/-! ## A262179.P6386326866420007858

`A202367(n+1)/A344617(Δ[3^n])`
-/

namespace A262179.P6386326866420007858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202367 (n + 1) : ℚ) / (A344617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A262179.P6386326866420007858

/-! ## A262179.P12624047704707871712

`A057077(A000244(n))*A202367(n+1)`
-/

namespace A262179.P12624047704707871712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A000244 n).toNat * A202367 (n + 1)

end

end A262179.P12624047704707871712

/-! ## A262179.P4875060361789295353

`A202367(A032555(n+1))/A033999(n)`
-/

namespace A262179.P4875060361789295353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202367 (A032555 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A262179.P4875060361789295353

/-! ## A262179.P17309740182867440826

`A130151(A006882(n+2))*A202367(n+1)`
-/

namespace A262179.P17309740182867440826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (A006882 (n + 2)).toNat * A202367 (n + 1)

end

end A262179.P17309740182867440826

/-!
# A262182: Prime numbers of the form (n*(n+1)/2)^2 + 1.

The programs for A262182, there is no canonical definition to state claims against.
-/

/-! ## A262182.P8880670512411764927

`A154323(A217755(n+1))`
-/

namespace A262182.P8880670512411764927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 (A217755 (n + 1)).toNat

end

end A262182.P8880670512411764927

/-! ## A262182.P6728194290551818127

`∩[A054755(n+1), A154323(n)]`
-/

namespace A262182.P6728194290551818127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262182.P6728194290551818127

/-! ## A262182.P9144975095977417181

`∩[A002496(n+1), A154323(n)]`
-/

namespace A262182.P9144975095977417181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262182.P9144975095977417181

/-! ## A262182.P2643113475823195621

`∩[A163588(n+1), A154323(n)]`
-/

namespace A262182.P2643113475823195621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262182.P2643113475823195621

/-! ## A262182.P7388915648193830030

`∩[A227829(n+1), A154323(n)]`
-/

namespace A262182.P7388915648193830030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262182.P7388915648193830030

/-! ## A262182.P3296460373699873995

`∩[A249410(n+1), A154323(n)]`
-/

namespace A262182.P3296460373699873995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262182.P3296460373699873995

/-!
# A262183: a(0) = 0, a(n) = 10*a(n-1) + n*(n+1)*(n+2)/6.

The programs for A262183, the canonical program `A262183.P4056851720154406013` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262183 has offset 0).

The definition of A262183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262183.P4056851720154406013

`10*a(n-1)+n*(n+1)*(n+2)/6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262183

/-- `10*a(n-1)+n*(n+1)*(n+2)/6` -/
def P4056851720154406013.Spec : Prop :=
  ∀ n, P4056851720154406013.a n = (A262183 n : ℚ)

end A262183

/-! ## A262183.P13952975805980461362

`∑[∑[∑[floor(10^n/9)]]]`
-/

namespace A262183.P13952975805980461362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262183.P13952975805980461362

namespace A262183

/-- `∑[∑[∑[floor(10^n/9)]]]` -/
def P13952975805980461362.Spec : Prop :=
  ∀ n, P13952975805980461362.a n = A262183 n

end A262183

/-! ## A262183.P12149560428024462345

`∑[∑[n]]+10*a(n-1)` with `a(0)=0`
-/

namespace A262183.P12149560428024462345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A262183.P12149560428024462345

namespace A262183

/-- `∑[∑[n]]+10*a(n-1)` -/
def P12149560428024462345.Spec : Prop :=
  ∀ n, (P12149560428024462345.a n : ℤ) = A262183 n

end A262183

/-! ## A262183.P15985320008529054565

`or(∑[A052262(n)], char[1])`
-/

namespace A262183.P15985320008529054565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052262 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262183.P15985320008529054565

namespace A262183

/-- `or(∑[A052262(n)], char[1])` -/
def P15985320008529054565.Spec : Prop :=
  ∀ n, P15985320008529054565.a n = A262183 n

end A262183

/-! ## A262183.P1039437791342703191

`A032343(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A262183.P1039437791342703191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A032343 n + a (n - 2)

end

end A262183.P1039437791342703191

namespace A262183

/-- `A032343(n)+a(n-2)` -/
def P1039437791342703191.Spec : Prop :=
  ∀ n, P1039437791342703191.a n = A262183 n

end A262183

/-! ## A262183.P13336273839378548153

`∑[A052262(n+1)]-A052262(n+1)`
-/

namespace A262183.P13336273839378548153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052262 (n + 1)

end

end A262183.P13336273839378548153

namespace A262183

/-- `∑[A052262(n+1)]-A052262(n+1)` -/
def P13336273839378548153.Spec : Prop :=
  ∀ n, P13336273839378548153.a n = A262183 n

end A262183

/-!
# A262184: a(n) = Fibonacci(n)^2 - Fibonacci(n) + 1.

The programs for A262184, the canonical program `A262184.P505657882986553229` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262184 has offset 0).

The definition of A262184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262184.P505657882986553229

`A000045(n)²-A000045(n)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262184

/-- `A000045(n)²-A000045(n)+1` -/
def P505657882986553229.Spec : Prop :=
  ∀ n, P505657882986553229.a n = A262184 n

theorem P505657882986553229.correct : P505657882986553229.Spec := by
  intro n
  simp only [A262184]

end A262184

/-! ## A262184.P9649341754563366233

`2*A191797(n)+1`
-/

namespace A262184.P9649341754563366233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191797 n + 1

end

end A262184.P9649341754563366233

namespace A262184

/-- `2*A191797(n)+1` -/
def P9649341754563366233.Spec : Prop :=
  ∀ n, P9649341754563366233.a n = A262184 n

end A262184

/-! ## A262184.P11793515216773364995

`A382843(n)/2+1`
-/

namespace A262184.P11793515216773364995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382843 n : ℚ) / 2 + 1

end

end A262184.P11793515216773364995

namespace A262184

/-- `A382843(n)/2+1` -/
def P11793515216773364995.Spec : Prop :=
  ∀ n, P11793515216773364995.a n = (A262184 n : ℚ)

end A262184

/-! ## A262184.P371618721571179613

`2*C(A103609(2*n), 2)+1`
-/

namespace A262184.P371618721571179613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A103609 (2 * n)).toNat 2 + 1

end

end A262184.P371618721571179613

namespace A262184

/-- `2*C(A103609(2*n), 2)+1` -/
def P371618721571179613.Spec : Prop :=
  ∀ n, (P371618721571179613.a n : ℤ) = A262184 n

end A262184

/-! ## A262184.P4372284488685252586

`2*C(Δ[A000071(n+1)], 2)+1`
-/

namespace A262184.P4372284488685252586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A262184.P4372284488685252586

namespace A262184

/-- `2*C(Δ[A000071(n+1)], 2)+1` -/
def P4372284488685252586.Spec : Prop :=
  ∀ n, (P4372284488685252586.a n : ℤ) = A262184 n

end A262184

/-! ## A262184.P2143971387651868081

`A245306(n)-A000045(n)`
-/

namespace A262184.P2143971387651868081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - A000045 n

end

end A262184.P2143971387651868081

namespace A262184

/-- `A245306(n)-A000045(n)` -/
def P2143971387651868081.Spec : Prop :=
  ∀ n, P2143971387651868081.a n = A262184 n

end A262184

/-! ## A262184.P1906155815694892389

`A001611(n)²-A022086(n)`
-/

namespace A262184.P1906155815694892389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n ^ 2 - A022086 n

end

end A262184.P1906155815694892389

namespace A262184

/-- `A001611(n)²-A022086(n)` -/
def P1906155815694892389.Spec : Prop :=
  ∀ n, P1906155815694892389.a n = A262184 n

end A262184

/-! ## A262184.P2055140809968260340

`A007598(n)+∑[A152163(n)]`
-/

namespace A262184.P2055140809968260340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262184.P2055140809968260340

namespace A262184

/-- `A007598(n)+∑[A152163(n)]` -/
def P2055140809968260340.Spec : Prop :=
  ∀ n, P2055140809968260340.a n = A262184 n

end A262184

/-! ## A262184.P3274831317213934056

`A007598(n)+1-A000045(n)`
-/

namespace A262184.P3274831317213934056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (1 - A000045 n)

end

end A262184.P3274831317213934056

namespace A262184

/-- `A007598(n)+1-A000045(n)` -/
def P3274831317213934056.Spec : Prop :=
  ∀ n, P3274831317213934056.a n = A262184 n

end A262184

/-! ## A262184.P11520228137845850611

`A392415(n+1)-A059727(n)`
-/

namespace A262184.P11520228137845850611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - A059727 n

end

end A262184.P11520228137845850611

namespace A262184

/-- `A392415(n+1)-A059727(n)` -/
def P11520228137845850611.Spec : Prop :=
  ∀ n, P11520228137845850611.a n = A262184 n

end A262184

/-! ## A262184.P15306426158852812794

`A245306(n)-A212804(n+1)`
-/

namespace A262184.P15306426158852812794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - A212804 (n + 1)

end

end A262184.P15306426158852812794

namespace A262184

/-- `A245306(n)-A212804(n+1)` -/
def P15306426158852812794.Spec : Prop :=
  ∀ n, P15306426158852812794.a n = A262184 n

end A262184

/-! ## A262184.P4316538891327920397

`A059727(n)+2-A001588(n)`
-/

namespace A262184.P4316538891327920397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n + (2 - A001588 n)

end

end A262184.P4316538891327920397

namespace A262184

/-- `A059727(n)+2-A001588(n)` -/
def P4316538891327920397.Spec : Prop :=
  ∀ n, P4316538891327920397.a n = A262184 n

end A262184

/-! ## A262184.P6404122092389939196

`A245306(n)-A053602(2*n)`
-/

namespace A262184.P6404122092389939196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - A053602 (2 * n)

end

end A262184.P6404122092389939196

namespace A262184

/-- `A245306(n)-A053602(2*n)` -/
def P6404122092389939196.Spec : Prop :=
  ∀ n, P6404122092389939196.a n = A262184 n

end A262184

/-! ## A262184.P3664648726045871872

`A000045(n)+∑[A152163(n)]²`
-/

namespace A262184.P3664648726045871872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A262184.P3664648726045871872

namespace A262184

/-- `A000045(n)+∑[A152163(n)]²` -/
def P3664648726045871872.Spec : Prop :=
  ∀ n, P3664648726045871872.a n = A262184 n

end A262184

/-! ## A262184.P12719039195067211300

`1-(A000045(n)²-A095122(n))`
-/

namespace A262184.P12719039195067211300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000045 n ^ 2 - A095122 n)

end

end A262184.P12719039195067211300

namespace A262184

/-- `1-(A000045(n)²-A095122(n))` -/
def P12719039195067211300.Spec : Prop :=
  ∀ n, P12719039195067211300.a n = A262184 n

end A262184

/-! ## A262184.P6990944978156294309

`1-(A000045(n)-A236191(n)²)`
-/

namespace A262184.P6990944978156294309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000045 n - A236191 n ^ 2)

end

end A262184.P6990944978156294309

namespace A262184

/-- `1-(A000045(n)-A236191(n)²)` -/
def P6990944978156294309.Spec : Prop :=
  ∀ n, P6990944978156294309.a n = A262184 n

end A262184

/-! ## A262184.P11962388664600872830

`2-(A001611(n)-A000045(n)²)`
-/

namespace A262184.P11962388664600872830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001611 n - A000045 n ^ 2)

end

end A262184.P11962388664600872830

namespace A262184

/-- `2-(A001611(n)-A000045(n)²)` -/
def P11962388664600872830.Spec : Prop :=
  ∀ n, P11962388664600872830.a n = A262184 n

end A262184

/-! ## A262184.P17824602923676434774

`2*(A033192(n)-A000045(n))+1`
-/

namespace A262184.P17824602923676434774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033192 n - A000045 n) + 1

end

end A262184.P17824602923676434774

namespace A262184

/-- `2*(A033192(n)-A000045(n))+1` -/
def P17824602923676434774.Spec : Prop :=
  ∀ n, P17824602923676434774.a n = A262184 n

end A262184

/-! ## A262184.P16782071626159138765

`A191797(n)+C(A000045(n), 2)+1`
-/

namespace A262184.P16782071626159138765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + (Nat.choose (A000045 n).toNat 2 + 1 : ℤ)

end

end A262184.P16782071626159138765

namespace A262184

/-- `A191797(n)+C(A000045(n), 2)+1` -/
def P16782071626159138765.Spec : Prop :=
  ∀ n, P16782071626159138765.a n = A262184 n

end A262184

/-!
# A262186: a(n) = prime(n)^3 - n^3.

The programs for A262186, the canonical program `A262186.P7927414774880988309` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262186 has offset 1).

The definition of A262186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262186.P7927414774880988309

`A030078(n+1)-A000578(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262186

/-- `A030078(n+1)-A000578(n+1)` -/
def P7927414774880988309.Spec : Prop :=
  ∀ n, P7927414774880988309.a n = A262186 (n + 1)

theorem P7927414774880988309.correct : P7927414774880988309.Spec := by
  intro n
  simp only [A262186, Nat.add_sub_cancel]

end A262186

/-! ## A262186.P12099734911770622448

`A000040(n+1)^3-(n+1)^3`
-/

namespace A262186.P12099734911770622448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 - ((n + 1) ^ 3 : ℤ)

end

end A262186.P12099734911770622448

namespace A262186

/-- `A000040(n+1)^3-(n+1)^3` -/
def P12099734911770622448.Spec : Prop :=
  ∀ n, P12099734911770622448.a n = A262186 (n + 1)

theorem P12099734911770622448.correct : P12099734911770622448.Spec := by
  intro n
  simp only [A262186, Nat.add_sub_cancel, A262186.P12099734911770622448.a, A262186.P7927414774880988309.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000578, A000578.P12162961755414704816.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262186

/-! ## A262186.P1215988071289616561

`A135178(n+1)-(A001248(n+1)+A000578(n+1))`
-/

namespace A262186.P1215988071289616561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - (A001248 (n + 1) + A000578 (n + 1))

end

end A262186.P1215988071289616561

namespace A262186

/-- `A135178(n+1)-(A001248(n+1)+A000578(n+1))` -/
def P1215988071289616561.Spec : Prop :=
  ∀ n, P1215988071289616561.a n = A262186 (n + 1)

theorem P1215988071289616561.correct : P1215988071289616561.Spec := by
  intro n
  simp only [A262186, Nat.add_sub_cancel, A262186.P1215988071289616561.a, A262186.P7927414774880988309.a, A000578, A000578.P12162961755414704816.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A135178, A135178.P2117100385622879640.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262186

/-! ## A262186.P11949800831848776337

`record[A020639(n+2)^3]-(n+1)^3`
-/

namespace A262186.P11949800831848776337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n + 1) ^ 3 : ℤ)

end

end A262186.P11949800831848776337

namespace A262186

/-- `record[A020639(n+2)^3]-(n+1)^3` -/
def P11949800831848776337.Spec : Prop :=
  ∀ n, P11949800831848776337.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P13839460210254084454

`A033477(3*n)-∑[A003215(n)]`
-/

namespace A262186.P13839460210254084454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 (3 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262186.P13839460210254084454

namespace A262186

/-- `A033477(3*n)-∑[A003215(n)]` -/
def P13839460210254084454.Spec : Prop :=
  ∀ n, P13839460210254084454.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P9764382463352652263

`record[A014963(n+2)^3]-(n+1)^3`
-/

namespace A262186.P9764382463352652263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n + 1) ^ 3 : ℤ)

end

end A262186.P9764382463352652263

namespace A262186

/-- `record[A014963(n+2)^3]-(n+1)^3` -/
def P9764382463352652263.Spec : Prop :=
  ∀ n, P9764382463352652263.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P1567382192300758712

`A000578(A000040(n+1))-A000578(n+1)`
-/

namespace A262186.P1567382192300758712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000040 (n + 1)).toNat - A000578 (n + 1)

end

end A262186.P1567382192300758712

namespace A262186

/-- `A000578(A000040(n+1))-A000578(n+1)` -/
def P1567382192300758712.Spec : Prop :=
  ∀ n, P1567382192300758712.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P5614818435178407563

`A068601(A000040(n+1))-A068601(n+1)`
-/

namespace A262186.P5614818435178407563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (A000040 (n + 1)).toNat - A068601 (n + 1)

end

end A262186.P5614818435178407563

namespace A262186

/-- `A068601(A000040(n+1))-A068601(n+1)` -/
def P5614818435178407563.Spec : Prop :=
  ∀ n, P5614818435178407563.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P16908512959186195778

`A084380(A000040(n+1))-A084380(n+1)`
-/

namespace A262186.P16908512959186195778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (A000040 (n + 1)).toNat - A084380 (n + 1)

end

end A262186.P16908512959186195778

namespace A262186

/-- `A084380(A000040(n+1))-A084380(n+1)` -/
def P16908512959186195778.Spec : Prop :=
  ∀ n, P16908512959186195778.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P11797675792022843184

`A000578(A008578(n+2))-A000578(n+1)`
-/

namespace A262186.P11797675792022843184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A008578 (n + 2)).toNat - A000578 (n + 1)

end

end A262186.P11797675792022843184

namespace A262186

/-- `A000578(A008578(n+2))-A000578(n+1)` -/
def P11797675792022843184.Spec : Prop :=
  ∀ n, P11797675792022843184.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P6447517922332427034

`A000578(record[A006530(n+2)])-A000578(n+1)`
-/

namespace A262186.P6447517922332427034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000578 (n + 1)

end

end A262186.P6447517922332427034

namespace A262186

/-- `A000578(record[A006530(n+2)])-A000578(n+1)` -/
def P6447517922332427034.Spec : Prop :=
  ∀ n, P6447517922332427034.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P7097013659486979329

`A000578(record[A014963(n+2)])-A000578(n+1)`
-/

namespace A262186.P7097013659486979329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000578 (n + 1)

end

end A262186.P7097013659486979329

namespace A262186

/-- `A000578(record[A014963(n+2)])-A000578(n+1)` -/
def P7097013659486979329.Spec : Prop :=
  ∀ n, P7097013659486979329.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P10498230761226318053

`A000578(record[A020639(n+2)])-A000578(n+1)`
-/

namespace A262186.P10498230761226318053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000578 (n + 1)

end

end A262186.P10498230761226318053

namespace A262186

/-- `A000578(record[A020639(n+2)])-A000578(n+1)` -/
def P10498230761226318053.Spec : Prop :=
  ∀ n, P10498230761226318053.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P750980997724877410

`A084377(record[A014963(n+2)])-A084377(n+1)`
-/

namespace A262186.P750980997724877410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A084377 (n + 1)

end

end A262186.P750980997724877410

namespace A262186

/-- `A084377(record[A014963(n+2)])-A084377(n+1)` -/
def P750980997724877410.Spec : Prop :=
  ∀ n, P750980997724877410.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P11824154165613359565

`A084378(record[A014963(n+2)])-A084378(n+1)`
-/

namespace A262186.P11824154165613359565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A084378 (n + 1)

end

end A262186.P11824154165613359565

namespace A262186

/-- `A084378(record[A014963(n+2)])-A084378(n+1)` -/
def P11824154165613359565.Spec : Prop :=
  ∀ n, P11824154165613359565.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P14268660129040622345

`A084381(record[A014963(n+2)])-A084381(n+1)`
-/

namespace A262186.P14268660129040622345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A084381 (n + 1)

end

end A262186.P14268660129040622345

namespace A262186

/-- `A084381(record[A014963(n+2)])-A084381(n+1)` -/
def P14268660129040622345.Spec : Prop :=
  ∀ n, P14268660129040622345.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P13893348767021158404

`A274077(record[A014963(n+2)])-A274077(n+1)`
-/

namespace A262186.P13893348767021158404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A274077 (n + 1)

end

end A262186.P13893348767021158404

namespace A262186

/-- `A274077(record[A014963(n+2)])-A274077(n+1)` -/
def P13893348767021158404.Spec : Prop :=
  ∀ n, P13893348767021158404.a n = A262186 (n + 1)

end A262186

/-! ## A262186.P15010087581410975390

`A068601(A008864(n+1)-1)-A068601(n+1)`
-/

namespace A262186.P15010087581410975390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (A008864 (n + 1) - 1).toNat - A068601 (n + 1)

end

end A262186.P15010087581410975390

namespace A262186

/-- `A068601(A008864(n+1)-1)-A068601(n+1)` -/
def P15010087581410975390.Spec : Prop :=
  ∀ n, P15010087581410975390.a n = A262186 (n + 1)

end A262186

/-!
# A262188: Table read by rows: row n contains all distinct palindromes contained as substrings in decimal representation of n.

The programs for A262188, there is no canonical definition to state claims against.
-/

/-! ## A262188.P14352207043803796893

`filter[A218978(n), A136522(#)]`
-/

namespace A262188.P14352207043803796893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A262188.P14352207043803796893

/-!
# A262189: a(n) = Fibonacci(n+1)! / Fibonacci(n).

The programs for A262189, the canonical program `A262189.P8058755779545758609` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262189 has offset 1).

The definition of A262189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262189.P8058755779545758609

`A060001(n+2)/A000045(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262189

/-- `A060001(n+2)/A000045(n+1)` -/
def P8058755779545758609.Spec : Prop :=
  ∀ n, P8058755779545758609.a n = (A262189 (n + 1) : ℚ)

end A262189

/-! ## A262189.P17099833118441823028

`A000045(n+2)!/A000045(n+1)`
-/

namespace A262189.P17099833118441823028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (n + 2)).toNat : ℚ) / (A000045 (n + 1) : ℚ)

end

end A262189.P17099833118441823028

namespace A262189

/-- `A000045(n+2)!/A000045(n+1)` -/
def P17099833118441823028.Spec : Prop :=
  ∀ n, P17099833118441823028.a n = (A262189 (n + 1) : ℚ)

end A262189

/-!
# A262190: Number of distinct palindromes contained as substrings in the decimal representation of n.

The programs for A262190, the canonical program `A262190.P7057828386404779220` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262190 has offset 0).

The definition of A262190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262190.P3788746363000541119

`A055640(∑{digits}[n, floor(γ^#)]+10*n)`
-/

namespace A262190.P3788746363000541119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum + (10 * n : ℤ)).toNat

end

end A262190.P3788746363000541119

namespace A262190

/-- `A055640(∑{digits}[n, floor(γ^#)]+10*n)` -/
def P3788746363000541119.Spec : Prop :=
  ∀ n, P3788746363000541119.a n = A262190 n

end A262190

/-! ## A262190.P7057828386404779220

`A055640(∑{digits}[n, 4^#]%4+10*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262190

/-- `A055640(∑{digits}[n, 4^#]%4+10*n)` -/
def P7057828386404779220.Spec : Prop :=
  ∀ n, P7057828386404779220.a n = A262190 n

theorem P7057828386404779220.correct : P7057828386404779220.Spec := by
  intro n
  simp only [A262190]

end A262190

/-! ## A262190.P6979411512384386343

`A055640((6*∑{digits}[n, #!*C(10, #)])%5+10*n)`
-/

namespace A262190.P6979411512384386343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (6 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x * Nat.choose 10 x).sum % 5 + 10 * n)

end

end A262190.P6979411512384386343

namespace A262190

/-- `A055640((6*∑{digits}[n, #!*C(10, #)])%5+10*n)` -/
def P6979411512384386343.Spec : Prop :=
  ∀ n, P6979411512384386343.a n = A262190 n

end A262190

/-! ## A262190.P1530821517870228980

`A055640(∑{digits}[n, A000038(#)]/2+10*n)`
-/

namespace A262190.P1530821517870228980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000038 x).sum : ℤ) : ℚ) / 2 + (10 * n : ℚ))).toNat

end

end A262190.P1530821517870228980

namespace A262190

/-- `A055640(∑{digits}[n, A000038(#)]/2+10*n)` -/
def P1530821517870228980.Spec : Prop :=
  ∀ n, P1530821517870228980.a n = A262190 n

end A262190

/-! ## A262190.P16487102302863318610

`A055642(abs(A040001(∑[n])-(n+1)))`
-/

namespace A262190.P16487102302863318610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 |A040001 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)|.toNat

end

end A262190.P16487102302863318610

namespace A262190

/-- `A055642(abs(A040001(∑[n])-(n+1)))` -/
def P16487102302863318610.Spec : Prop :=
  ∀ n, P16487102302863318610.a n = A262190 n

end A262190

/-! ## A262190.P6813799713326561681

`A055642(A226222(2*n+1)%A181595(n+1))`
-/

namespace A262190.P6813799713326561681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A226222 (2 * n + 1)) (A181595 (n + 1))).toNat

end

end A262190.P6813799713326561681

namespace A262190

/-- `A055642(A226222(2*n+1)%A181595(n+1))` -/
def P6813799713326561681.Spec : Prop :=
  ∀ n, P6813799713326561681.a n = A262190 n

end A262190

/-! ## A262190.P12542933135446843564

`A055642(A016419(n)+n)`
-/

namespace A262190.P12542933135446843564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A016419 n + (n : ℤ)).toNat

end

end A262190.P12542933135446843564

namespace A262190

/-- `A055642(A016419(n)+n)` -/
def P12542933135446843564.Spec : Prop :=
  ∀ n, P12542933135446843564.a n = A262190 n

end A262190

/-! ## A262190.P7860546118182699293

`A055642(A228722(n)%A050478(n))`
-/

namespace A262190.P7860546118182699293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A228722 n) (A050478 n)).toNat

end

end A262190.P7860546118182699293

namespace A262190

/-- `A055642(A228722(n)%A050478(n))` -/
def P7860546118182699293.Spec : Prop :=
  ∀ n, P7860546118182699293.a n = A262190 n

end A262190

/-! ## A262190.P12177636015538758878

`A000196(∑[A329562(n)%A064122(n+1)])`
-/

namespace A262190.P12177636015538758878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329562 n) (A064122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262190.P12177636015538758878

namespace A262190

/-- `A000196(∑[A329562(n)%A064122(n+1)])` -/
def P12177636015538758878.Spec : Prop :=
  ∀ n, P12177636015538758878.a n = A262190 n

end A262190

/-! ## A262190.P14749256312029019931

`A055642(A228722(and(n, A140529(n))))`
-/

namespace A262190.P14749256312029019931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A228722 (Int.land (n : ℤ) (A140529 n)).toNat).toNat

end

end A262190.P14749256312029019931

namespace A262190

/-- `A055642(A228722(and(n, A140529(n))))` -/
def P14749256312029019931.Spec : Prop :=
  ∀ n, P14749256312029019931.a n = A262190 n

end A262190

/-! ## A262190.P4135549908964184752

`A055642(n+1-A090822((n+1)*∏{p}[n+1, #]))`
-/

namespace A262190.P4135549908964184752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n + 1 : ℤ) - A090822 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat

end

end A262190.P4135549908964184752

namespace A262190

/-- `A055642(n+1-A090822((n+1)*∏{p}[n+1, #]))` -/
def P4135549908964184752.Spec : Prop :=
  ∀ n, P4135549908964184752.a n = A262190 n

end A262190

/-! ## A262190.P16102286883002331478

`A123119(A348674(n²))`
-/

namespace A262190.P16102286883002331478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123119 (A348674 (n ^ 2)).toNat

end

end A262190.P16102286883002331478

namespace A262190

/-- `A123119(A348674(n²))` -/
def P16102286883002331478.Spec : Prop :=
  ∀ n, P16102286883002331478.a n = A262190 n

end A262190

/-! ## A262190.P12238430746740672889

`∑{digits}[A057077(A028263(n)+n)+n, A111633(#)]`
-/

namespace A262190.P12238430746740672889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A028263 n + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A111633 x).sum

end

end A262190.P12238430746740672889

namespace A262190

/-- `∑{digits}[A057077(A028263(n)+n)+n, A111633(#)]` -/
def P12238430746740672889.Spec : Prop :=
  ∀ n, P12238430746740672889.a n = A262190 n

end A262190

/-! ## A262190.P1688906013113734570

`round(sqrt(A055642(n²)))`
-/

namespace A262190.P1688906013113734570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A055642 (n ^ 2) : ℝ))

end

end A262190.P1688906013113734570

namespace A262190

/-- `round(sqrt(A055642(n²)))` -/
def P1688906013113734570.Spec : Prop :=
  ∀ n, P1688906013113734570.a n = A262190 n

end A262190

/-! ## A262190.P10441859281256578927

`gcd(2, A011557(A070565(n)))`
-/

namespace A262190.P10441859281256578927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A011557 (A070565 n).toNat)

end

end A262190.P10441859281256578927

namespace A262190

/-- `gcd(2, A011557(A070565(n)))` -/
def P10441859281256578927.Spec : Prop :=
  ∀ n, (P10441859281256578927.a n : ℤ) = A262190 n

end A262190

/-! ## A262190.P6075678420041118137

`A033665(A139337(n)+17)`
-/

namespace A262190.P6075678420041118137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A139337 n + 17).toNat

end

end A262190.P6075678420041118137

namespace A262190

/-- `A033665(A139337(n)+17)` -/
def P6075678420041118137.Spec : Prop :=
  ∀ n, P6075678420041118137.a n = A262190 n

end A262190

/-!
# A262191: Number T(n,k) of compositions of n such that k is the maximal distance between two identical parts; triangle T(n,k), n>=2, 1<=k<=n-1, read by rows.

The programs for A262191, there is no canonical definition to state claims against.
-/

/-! ## A262191.P11129286532515087881

`A061295(A008611(n)^A122201(n))`
-/

namespace A262191.P11129286532515087881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 (SequenceMachineLib.roundAway ((A008611 n : ℚ) ^ (A122201 n : ℤ))).toNat

end

end A262191.P11129286532515087881

/-! ## A262191.P10703528372955528453

`A141412(n)%A040019(A001787(n))`
-/

namespace A262191.P10703528372955528453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141412 n) (A040019 (A001787 n).toNat)

end

end A262191.P10703528372955528453

/-! ## A262191.P710499940154763862

`and(A141412(n), A244369(A008619(n)))`
-/

namespace A262191.P710499940154763862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141412 n) (A244369 (A008619 n).toNat)

end

end A262191.P710499940154763862

/-! ## A262191.P1154278883701609886

`A206487(A183897(n+3))-A010051(n+1)`
-/

namespace A262191.P1154278883701609886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A183897 (n + 3)).toNat - A010051 (n + 1)

end

end A262191.P1154278883701609886

/-!
# A262192: Number of compositions of n such that the maximal distance between two identical parts equals one.

The programs for A262192, there is no canonical definition to state claims against.
-/

/-! ## A262192.P7133769540506053944

`A259899(A001333(n))-A294617(n)`
-/

namespace A262192.P7133769540506053944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A001333 n).toNat - A294617 n

end

end A262192.P7133769540506053944

/-! ## A262192.P17874961709350106175

`A180447(A261331(n+1))-A261962(n)`
-/

namespace A262192.P17874961709350106175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A261331 (n + 1)).toNat - A261962 n

end

end A262192.P17874961709350106175

/-!
# A262194: Number of compositions of n such that the maximal distance between two identical parts equals two.

The programs for A262194, there is no canonical definition to state claims against.
-/

/-! ## A262194.P4856300071200804855

`A262191(A141214(n)+1-A008706(n))`
-/

namespace A262194.P4856300071200804855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262191 (A141214 n + (1 - A008706 n)).toNat

end

end A262194.P4856300071200804855

/-! ## A262194.P14582719279289531746

`A262191(A152950(n+1)-A004273(n))`
-/

namespace A262194.P14582719279289531746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262191 (A152950 (n + 1) - A004273 n).toNat

end

end A262194.P14582719279289531746

/-! ## A262194.P5290342317612452386

`A262191(1-(A008706(n)-A141214(n)))`
-/

namespace A262194.P5290342317612452386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262191 (1 - (A008706 n - A141214 n)).toNat

end

end A262194.P5290342317612452386

/-! ## A262194.P17619472957526597339

`A248333(A127968(n))`
-/

namespace A262194.P17619472957526597339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A127968 n).toNat

end

end A262194.P17619472957526597339

/-! ## A262194.P882777907154344663

`A000196(A026581(n))-A000041(n)`
-/

namespace A262194.P882777907154344663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A026581 n).toNat - A000041 n

end

end A262194.P882777907154344663

/-!
# A262196: Number of compositions of n such that the maximal distance between two identical parts equals three.

The programs for A262196, there is no canonical definition to state claims against.
-/

/-! ## A262196.P8710369841265635687

`A262191(A141214(n)-A004275(n))`
-/

namespace A262196.P8710369841265635687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262191 (A141214 n - A004275 n).toNat

end

end A262196.P8710369841265635687

/-!
# A262197: Number of compositions of n such that the maximal distance between two identical parts equals four.

The programs for A262197, there is no canonical definition to state claims against.
-/

/-! ## A262197.P2656671665957283653

`A262200(n+5)-A126257(A062431(n+1))`
-/

namespace A262197.P2656671665957283653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262200 (n + 5) - A126257 (A062431 (n + 1)).toNat

end

end A262197.P2656671665957283653

/-! ## A262197.P15320672607194885314

`Δ[A126257(A062431(n+1))]`
-/

namespace A262197.P15320672607194885314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A062431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262197.P15320672607194885314

/-! ## A262197.P15120866788255999208

`∑[A118759(A262196(n+3))]`
-/

namespace A262197.P15120866788255999208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A262196 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262197.P15120866788255999208

/-! ## A262197.P1702487636127399154

`A261104(∑[n]*A341029(n))`
-/

namespace A262197.P1702487636127399154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A341029 n).toNat

end

end A262197.P1702487636127399154

/-!
# A262198: Numbers such that the number of distinct palindromes contained as substring in their decimal representation differs from the length thereof.

The programs for A262198, the canonical program `A262198.P508349440457690952` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262198 has offset 1).

The definition of A262198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262198.P508349440457690952

`lt[A262190(n), A055642(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262198

/-- `lt[A262190(n), A055642(n)]` -/
def P508349440457690952.Spec : Prop :=
  ∀ n, (P508349440457690952.a n : ℤ) = A262198 (n + 1)

theorem P508349440457690952.correct : P508349440457690952.Spec := by
  intro n
  simp only [A262198, Nat.add_sub_cancel]

end A262198

/-! ## A262198.P9394538603450226199

`record[∑[comp[12*n]+99-A056143(n)]]`
-/

namespace A262198.P9394538603450226199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 99 : ℤ) - A056143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262198.P9394538603450226199

namespace A262198

/-- `record[∑[comp[12*n]+99-A056143(n)]]` -/
def P9394538603450226199.Spec : Prop :=
  ∀ n, P9394538603450226199.a n = A262198 (n + 1)

end A262198

/-! ## A262198.P17740273540072321394

`A057169(A057169(n+1)%A122229(n+4))`
-/

namespace A262198.P17740273540072321394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057169 (Int.tmod (A057169 (n + 1)) (A122229 (n + 4))).toNat

end

end A262198.P17740273540072321394

namespace A262198

/-- `A057169(A057169(n+1)%A122229(n+4))` -/
def P17740273540072321394.Spec : Prop :=
  ∀ n, P17740273540072321394.a n = A262198 (n + 1)

end A262198

/-! ## A262198.P5571726464999769685

`A001222(A014210(n))*A057169(A057169(n+1))`
-/

namespace A262198.P5571726464999769685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014210 n).toNat * A057169 (A057169 (n + 1)).toNat

end

end A262198.P5571726464999769685

namespace A262198

/-- `A001222(A014210(n))*A057169(A057169(n+1))` -/
def P5571726464999769685.Spec : Prop :=
  ∀ n, P5571726464999769685.a n = A262198 (n + 1)

end A262198

/-!
# A262199: a(n) = prime(n)^3 - prime(n^3).

The programs for A262199, there is no canonical definition to state claims against.
-/

/-! ## A262199.P6066070054141033378

`A291542(n+1)+A291541(n+1)`
-/

namespace A262199.P6066070054141033378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291542 (n + 1) + A291541 (n + 1)

end

end A262199.P6066070054141033378

/-! ## A262199.P9360569151993796782

`A030078(n+1)-A055875(n+1)`
-/

namespace A262199.P9360569151993796782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A055875 (n + 1)

end

end A262199.P9360569151993796782

/-! ## A262199.P14160714565305425042

`2*A143680(n+1)`
-/

namespace A262199.P14160714565305425042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143680 (n + 1)

end

end A262199.P14160714565305425042

/-! ## A262199.P15731751456922761623

`A127917(n+1)-A214612(n+1)`
-/

namespace A262199.P15731751456922761623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) - A214612 (n + 1)

end

end A262199.P15731751456922761623

/-! ## A262199.P15047928642992760459

`A143680(A000027(n+1))+A143680(n+1)`
-/

namespace A262199.P15047928642992760459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143680 (A000027 (n + 1)).toNat + A143680 (n + 1)

end

end A262199.P15047928642992760459

/-! ## A262199.P4457924083030459582

`A000578(A000040(n+1))-A055875(n+1)`
-/

namespace A262199.P4457924083030459582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000040 (n + 1)).toNat - A055875 (n + 1)

end

end A262199.P4457924083030459582

/-! ## A262199.P2366480873599100237

`A000040(n+1)*A001248(n+1)-A055875(n+1)`
-/

namespace A262199.P2366480873599100237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001248 (n + 1) - A055875 (n + 1)

end

end A262199.P2366480873599100237

/-! ## A262199.P18366498640663934500

`A143680(n+1)+A143680(n+1)%A030514(n+1)`
-/

namespace A262199.P18366498640663934500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143680 (n + 1) + Int.tmod (A143680 (n + 1)) (A030514 (n + 1))

end

end A262199.P18366498640663934500

