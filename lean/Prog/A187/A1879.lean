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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187900: Complement of A187899.

The programs for A187900, there is no canonical definition to state claims against.
-/

/-! ## A187900.P3742678382914253545

`floor((A187899(n+1)+n+2)*sqrt(2))`
-/

namespace A187900.P3742678382914253545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187899 (n + 1) + (n + 2 : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A187900.P3742678382914253545

/-! ## A187900.P15439772361671818408

`A001951(A187899(n+1)+2+n)`
-/

namespace A187900.P15439772361671818408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A187899 (n + 1) + 2 + (n : ℤ)).toNat

end

end A187900.P15439772361671818408

/-! ## A187900.P4762347093738345384

`eq[char[A187899(n+1)], A000007(n)]`
-/

namespace A187900.P4762347093738345384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187900.P4762347093738345384

/-! ## A187900.P357525125803684995

`eq[char[A187899(n+1)], A000038(n)]`
-/

namespace A187900.P357525125803684995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187900.P357525125803684995

/-! ## A187900.P9824773455753854667

`eq[char[A187899(n+1)], A151933(n)]`
-/

namespace A187900.P9824773455753854667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187900.P9824773455753854667

/-!
# A187901: Rank transform of the sequence floor((3-sqrt(3))n); complement of A187902.

The programs for A187901, there is no canonical definition to state claims against.
-/

/-! ## A187901.P6667892348047830204

`comp[A187902(n+1)-1]+1`
-/

namespace A187901.P6667892348047830204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187902 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187901.P6667892348047830204

/-!
# A187902: Complement of A187901.

The programs for A187902, there is no canonical definition to state claims against.
-/

/-! ## A187902.P10380439798403859722

`A171970(A187901(n+1)+2+n)`
-/

namespace A187902.P10380439798403859722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A187901 (n + 1) + 2 + (n : ℤ)).toNat

end

end A187902.P10380439798403859722

/-! ## A187902.P14955343634221022566

`eq[char[A187901(n+1)], A151933(n)]`
-/

namespace A187902.P14955343634221022566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187901 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187902.P14955343634221022566

/-! ## A187902.P8061856103996588691

`∩[A171519(n+1), comp[A187901(n+1)]]`
-/

namespace A187902.P8061856103996588691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171519 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187901 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A187902.P8061856103996588691

/-! ## A187902.P12913604797929429733

`eq[char[A187901(n+1)], A151622(n)]`
-/

namespace A187902.P12913604797929429733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187901 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187902.P12913604797929429733

/-! ## A187902.P15728840961614720538

`A292660(n+1)+A010054(A041289(n))`
-/

namespace A187902.P15728840961614720538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292660 (n + 1) + A010054 (A041289 n).toNat

end

end A187902.P15728840961614720538

/-!
# A187903: Rank transform of the sequence floor((2-1/sqrt(2))n); complement of A187904.

The programs for A187903, there is no canonical definition to state claims against.
-/

/-! ## A187903.P2638494514053534800

`comp[A187904(n+1)-1]+1`
-/

namespace A187903.P2638494514053534800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187904 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187903.P2638494514053534800

/-! ## A187903.P16674841899762518273

`eq[char[A187904(n+1)], A151933(n)]`
-/

namespace A187903.P16674841899762518273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187904 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187903.P16674841899762518273

/-!
# A187904: Complement of A187903.

The programs for A187904, there is no canonical definition to state claims against.
-/

/-! ## A187904.P4092096461726113832

`eq[char[A187903(n+1)], A151933(n)]`
-/

namespace A187904.P4092096461726113832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187903 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187904.P4092096461726113832

/-! ## A187904.P1877474017407177354

`A189926(n+1)+A010054(record[A104725(n)])`
-/

namespace A187904.P1877474017407177354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189926 (n + 1) + A010054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A187904.P1877474017407177354

/-! ## A187904.P8867747687002679882

`A284654(n+1)+A083035(A011782(n))`
-/

namespace A187904.P8867747687002679882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284654 (n + 1) + A083035 (A011782 n).toNat

end

end A187904.P8867747687002679882

/-! ## A187904.P5990538409558824808

`A234349(A005117(n+1))+A002024(n+1)`
-/

namespace A187904.P5990538409558824808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234349 (A005117 (n + 1)).toNat + A002024 (n + 1)

end

end A187904.P5990538409558824808

/-!
# A187905: Rank transform of the sequence floor((3-sqrt(5))n); complement of A187906.

The programs for A187905, there is no canonical definition to state claims against.
-/

/-! ## A187905.P7337845046772004142

`comp[A187906(n+1)-1]+1`
-/

namespace A187905.P7337845046772004142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187906 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187905.P7337845046772004142

/-! ## A187905.P11253426433498828731

`eq[char[A187906(n+1)], A000038(n)]`
-/

namespace A187905.P11253426433498828731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187906 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187905.P11253426433498828731

/-! ## A187905.P10179583316463851610

`A187329(A187906(n+1)-(n+1))`
-/

namespace A187905.P10179583316463851610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (A187906 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187905.P10179583316463851610

/-! ## A187905.P9609433667785042711

`eq[char[A187906(n+1)], A151933(n)]`
-/

namespace A187905.P9609433667785042711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187906 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187905.P9609433667785042711

/-! ## A187905.P8862416542655366055

`A187228(n+1)-A010815(A016838(n))`
-/

namespace A187905.P8862416542655366055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187228 (n + 1) - A010815 (A016838 n).toNat

end

end A187905.P8862416542655366055

/-!
# A187906: Complement of A187905.

The programs for A187906, there is no canonical definition to state claims against.
-/

/-! ## A187906.P4565268848222696950

`eq[char[A187905(n+1)], A151933(n)]`
-/

namespace A187906.P4565268848222696950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187905 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187906.P4565268848222696950

/-! ## A187906.P6403166554189312917

`A187229(n+1)+A178798(A344557(n))`
-/

namespace A187906.P6403166554189312917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187229 (n + 1) + A178798 (A344557 n).toNat

end

end A187906.P6403166554189312917

/-! ## A187906.P11227976111006707290

`A187229(n+1)-A025469(A098479(n))`
-/

namespace A187906.P11227976111006707290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187229 (n + 1) - A025469 (A098479 n).toNat

end

end A187906.P11227976111006707290

/-! ## A187906.P8311391900757229794

`A187229(n+1)-A024153(A187829(n+1))`
-/

namespace A187906.P8311391900757229794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187229 (n + 1) - A024153 (A187829 (n + 1)).toNat

end

end A187906.P8311391900757229794

/-! ## A187906.P9783367145228596090

`A136690(A019299(n+2))+A091855(n+1)`
-/

namespace A187906.P9783367145228596090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (A019299 (n + 2)).toNat + A091855 (n + 1)

end

end A187906.P9783367145228596090

/-!
# A187907: Rank transform of the sequence floor((4 - sqrt(5))*n); complement of A187908.

The programs for A187907, there is no canonical definition to state claims against.
-/

/-! ## A187907.P11022426164639926469

`eq[char[A187908(n+1)], A000007(n)]`
-/

namespace A187907.P11022426164639926469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187907.P11022426164639926469

/-! ## A187907.P3690750501997646556

`eq[char[A187908(n+1)], A000038(n)]`
-/

namespace A187907.P3690750501997646556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187907.P3690750501997646556

/-! ## A187907.P829847266061664464

`eq[char[A187908(n+1)], A033324(3*(n+1))]`
-/

namespace A187907.P829847266061664464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187907.P829847266061664464

/-! ## A187907.P202716982400974938

`eq[char[A187908(n+1)], A151933(n)]`
-/

namespace A187907.P202716982400974938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187907.P202716982400974938

/-! ## A187907.P17678538357475181220

`A110655(A329996(3*n+2)+A297830(n))`
-/

namespace A187907.P17678538357475181220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A329996 (3 * n + 2) + A297830 n).toNat

end

end A187907.P17678538357475181220

/-!
# A187908: Complement of A187907.

The programs for A187908, there is no canonical definition to state claims against.
-/

/-! ## A187908.P8996785534793454160

`A302041(A146892(n+2))+2*n`
-/

namespace A187908.P8996785534793454160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (A146892 (n + 2)).toNat + (2 * n : ℤ)

end

end A187908.P8996785534793454160

/-! ## A187908.P11087506081028962956

`A043529(A181836(n))+A005408(n)`
-/

namespace A187908.P11087506081028962956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A181836 n).toNat + A005408 n

end

end A187908.P11087506081028962956

/-! ## A187908.P8750166970282770589

`or(A102681(A331529(n+1)), A187350(n+1))`
-/

namespace A187908.P8750166970282770589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102681 (A331529 (n + 1)).toNat) (A187350 (n + 1))

end

end A187908.P8750166970282770589

/-!
# A187909: Rank transform of the sequence floor((-1+sqrt(5))n/2); complement of A187910.

The programs for A187909, there is no canonical definition to state claims against.
-/

/-! ## A187909.P3308285193674978327

`comp[A187910(n+1)-1]+1`
-/

namespace A187909.P3308285193674978327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187910 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187909.P3308285193674978327

/-! ## A187909.P11891224847208196256

`A187911(n+1)-val(A187912(n+1), A187910(n+1))`
-/

namespace A187909.P11891224847208196256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187911 (n + 1) - (SequenceMachineLib.valuation (A187912 (n + 1)).toNat (A187910 (n + 1)).toNat : ℤ)

end

end A187909.P11891224847208196256

/-! ## A187909.P1738061590850757568

`A005206(A187910(n+1)-(n+2))`
-/

namespace A187909.P1738061590850757568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A187910 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187909.P1738061590850757568

/-! ## A187909.P10363357945222154508

`A060143(A187910(n+1)-(n+1))`
-/

namespace A187909.P10363357945222154508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A187910 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187909.P10363357945222154508

/-! ## A187909.P15665797485900632170

`eq[char[A187910(n+1)], A151933(n)]`
-/

namespace A187909.P15665797485900632170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187910 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187909.P15665797485900632170

/-!
# A187910: Complement of A187909.

The programs for A187910, there is no canonical definition to state claims against.
-/

/-! ## A187910.P14417116488547772158

`floor(ϕ*(A187909(n+1)+1))+1+n`
-/

namespace A187910.P14417116488547772158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A187909 (n + 1) + 1 : ℝ)⌋ + 1 + (n : ℤ)

end

end A187910.P14417116488547772158

/-! ## A187910.P16771378563262389271

`A000201(A187909(n+1)+1)+1+n`
-/

namespace A187910.P16771378563262389271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A187909 (n + 1) + 1).toNat + 1 + (n : ℤ)

end

end A187910.P16771378563262389271

/-! ## A187910.P15122041686739137866

`eq[char[A187909(n+1)], A151933(n)]`
-/

namespace A187910.P15122041686739137866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187909 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187910.P15122041686739137866

/-! ## A187910.P14930486149424367668

`∑[A164358(A121336(n)*A145327(n+1))]`
-/

namespace A187910.P14930486149424367668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 (A121336 n * A145327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187910.P14930486149424367668

/-! ## A187910.P18206926295148422736

`A156262(A156244(n+1))+A005707(n+1)`
-/

namespace A187910.P18206926295148422736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A156244 (n + 1)).toNat + A005707 (n + 1)

end

end A187910.P18206926295148422736

/-!
# A187911: Rank transform of the sequence (1+floor(n*r)), where r=(-1+sqrt(5))/2; complement of A187912.

The programs for A187911, there is no canonical definition to state claims against.
-/

/-! ## A187911.P7953085625260476907

`comp[A187912(n+1)-1]+1`
-/

namespace A187911.P7953085625260476907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187911.P7953085625260476907

/-! ## A187911.P9318723770999986017

`A005206(A187912(n+1)-(n+1))`
-/

namespace A187911.P9318723770999986017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A187912 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187911.P9318723770999986017

/-! ## A187911.P3874333374877566047

`A060143(A187912(n+1)-n)`
-/

namespace A187911.P3874333374877566047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A187912 (n + 1) - (n : ℤ)).toNat

end

end A187911.P3874333374877566047

/-! ## A187911.P11805234401655701198

`A005378(A187912(n+1)-(n+1))`
-/

namespace A187911.P11805234401655701198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A187912 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187911.P11805234401655701198

/-! ## A187911.P9137513591420822756

`A019446(A187912(n+1)-(n+1))`
-/

namespace A187911.P9137513591420822756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A187912 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187911.P9137513591420822756

/-! ## A187911.P1106954947844034564

`A123070(A187912(n+1)-(n+1))`
-/

namespace A187911.P1106954947844034564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A187912 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187911.P1106954947844034564

/-!
# A187912: Complement of A187911.

The programs for A187912, there is no canonical definition to state claims against.
-/

/-! ## A187912.P7172370616773971193

`A004956(A187911(n+1))+n`
-/

namespace A187912.P7172370616773971193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A187911 (n + 1)).toNat + (n : ℤ)

end

end A187912.P7172370616773971193

/-! ## A187912.P4762743342668755764

`A026351(A187911(n+1))-A001489(n)`
-/

namespace A187912.P4762743342668755764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A187911 (n + 1)).toNat - A001489 n

end

end A187912.P4762743342668755764

/-! ## A187912.P7301079613819578264

`A026351(A187911(n+1))+gcd(n, A000290(n))`
-/

namespace A187912.P7301079613819578264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A187911 (n + 1)).toNat + (Int.gcd (n : ℤ) (A000290 n) : ℤ)

end

end A187912.P7301079613819578264

/-! ## A187912.P6349056597882026986

`A007318(C(2, n))*A026351(A187911(n+1))+n`
-/

namespace A187912.P6349056597882026986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A026351 (A187911 (n + 1)).toNat + (n : ℤ)

end

end A187912.P6349056597882026986

/-! ## A187912.P17567706588128761734

`A026351(A187911(n+1))+A004525(2*n)`
-/

namespace A187912.P17567706588128761734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A187911 (n + 1)).toNat + A004525 (2 * n)

end

end A187912.P17567706588128761734

/-! ## A187912.P5730658483596427188

`A026351(A187911(n+1))+A004526(2*n)`
-/

namespace A187912.P5730658483596427188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A187911 (n + 1)).toNat + A004526 (2 * n)

end

end A187912.P5730658483596427188

/-! ## A187912.P1174402113667811709

`A057979(2*n+1)+A026351(A187911(n+1))`
-/

namespace A187912.P1174402113667811709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n + 1) + A026351 (A187911 (n + 1)).toNat

end

end A187912.P1174402113667811709

/-! ## A187912.P2180430077280387565

`A026351(A187911(n+1))+A000196(n²)`
-/

namespace A187912.P2180430077280387565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A187911 (n + 1)).toNat + A000196 (n ^ 2)

end

end A187912.P2180430077280387565

/-!
# A187915: a(n) = (1/2)*((n+2)*P(n-1)+(5*n+1)*P(n)) where P() = A000129 are the Pell numbers.

The programs for A187915, the canonical program `A187915.P14294441667215940445` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187915 has offset 1).

The definition of A187915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187915.P14294441667215940445

`ogf((3+x-x^2-x^3)/(1-4x+2x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187915

/-- `ogf((3+x-x^2-x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P14294441667215940445.Spec : Prop :=
  ∀ n, P14294441667215940445.a n = A187915 (n + 1)

theorem P14294441667215940445.correct : P14294441667215940445.Spec := by
  intro n
  simp only [A187915, Nat.add_sub_cancel]

end A187915

/-! ## A187915.P10262871046590375420

`A088211(n+1)+A054459(n)`
-/

namespace A187915.P10262871046590375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + A054459 n

end

end A187915.P10262871046590375420

namespace A187915

/-- `A088211(n+1)+A054459(n)` -/
def P10262871046590375420.Spec : Prop :=
  ∀ n, P10262871046590375420.a n = A187915 (n + 1)

end A187915

/-! ## A187915.P17309599609884182840

`A088211(n+1)+∑[A088210(n)]`
-/

namespace A187915.P17309599609884182840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187915.P17309599609884182840

namespace A187915

/-- `A088211(n+1)+∑[A088210(n)]` -/
def P17309599609884182840.Spec : Prop :=
  ∀ n, P17309599609884182840.a n = A187915 (n + 1)

end A187915

/-! ## A187915.P16043779385536981489

`A000129(n+1)+A088210(n)+A054459(n)`
-/

namespace A187915.P16043779385536981489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A088210 n + A054459 n)

end

end A187915.P16043779385536981489

namespace A187915

/-- `A000129(n+1)+A088210(n)+A054459(n)` -/
def P16043779385536981489.Spec : Prop :=
  ∀ n, P16043779385536981489.a n = A187915 (n + 1)

end A187915

/-! ## A187915.P6153041534672476059

`A364553(n+1)+A088210(n)+A026937(n)`
-/

namespace A187915.P6153041534672476059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364553 (n + 1) + (A088210 n + A026937 n)

end

end A187915.P6153041534672476059

namespace A187915

/-- `A364553(n+1)+A088210(n)+A026937(n)` -/
def P6153041534672476059.Spec : Prop :=
  ∀ n, P6153041534672476059.a n = A187915 (n + 1)

end A187915

/-!
# A187916: a(n) = C(n) if n is odd, else C(n) - C(n/2); C(n) are Catalan numbers.

The programs for A187916, the canonical program `A187916.P6304784313382651331` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187916 has offset 1).

The definition of A187916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187916.P6304784313382651331

`∑[A099363(n)+A000245(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187916

/-- `∑[A099363(n)+A000245(n)]` -/
def P6304784313382651331.Spec : Prop :=
  ∀ n, P6304784313382651331.a n = A187916 (n + 1)

theorem P6304784313382651331.correct : P6304784313382651331.Spec := by
  intro n
  simp only [A187916, Nat.add_sub_cancel]

end A187916

/-! ## A187916.P13410120444951646259

`∑[A099363(n)+Δ[A000108(n)]]`
-/

namespace A187916.P13410120444951646259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187916.P13410120444951646259

namespace A187916

/-- `∑[A099363(n)+Δ[A000108(n)]]` -/
def P13410120444951646259.Spec : Prop :=
  ∀ n, P13410120444951646259.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P10891026831946062370

`∑[A099363(n)+Δ[A120304(n)]]`
-/

namespace A187916.P10891026831946062370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187916.P10891026831946062370

namespace A187916

/-- `∑[A099363(n)+Δ[A120304(n)]]` -/
def P10891026831946062370.Spec : Prop :=
  ∀ n, P10891026831946062370.a n = A187916 (n + 1)

theorem P10891026831946062370.correct : P10891026831946062370.Spec := by
  intro n
  simp only [A187916, Nat.add_sub_cancel, A187916.P10891026831946062370.f2, A187916.P10891026831946062370.f1, A187916.P10891026831946062370.a, A187916.P6304784313382651331.f1, A187916.P6304784313382651331.a, A000245, A000245.P15461013057778681831.a, A099363, A099363.P17729703105909125220.f1, A099363.P17729703105909125220.a, A120304, A120304.P16195813583233364787.a, A000108, A000108.P17551949696095299361.a, A097331, A097331.P4426990625459901142.a, A208355, A208355.P6360215552861429744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187916

/-! ## A187916.P13821829355807778049

`record[A097331(n)]-A126120(n+1)`
-/

namespace A187916.P13821829355807778049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126120 (n + 1)

end

end A187916.P13821829355807778049

namespace A187916

/-- `record[A097331(n)]-A126120(n+1)` -/
def P13821829355807778049.Spec : Prop :=
  ∀ n, P13821829355807778049.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P15452806780735773275

`A000108(n+1)-A126120(n+1)`
-/

namespace A187916.P15452806780735773275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A126120 (n + 1)

end

end A187916.P15452806780735773275

namespace A187916

/-- `A000108(n+1)-A126120(n+1)` -/
def P15452806780735773275.Spec : Prop :=
  ∀ n, P15452806780735773275.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P14928399563131936800

`A210628(n+2)+A000108(n+1)`
-/

namespace A187916.P14928399563131936800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A000108 (n + 1)

end

end A187916.P14928399563131936800

namespace A187916

/-- `A210628(n+2)+A000108(n+1)` -/
def P14928399563131936800.Spec : Prop :=
  ∀ n, P14928399563131936800.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P1704667187194896114

`A000108(n+1)-A097331(n+2)`
-/

namespace A187916.P1704667187194896114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A097331 (n + 2)

end

end A187916.P1704667187194896114

namespace A187916

/-- `A000108(n+1)-A097331(n+2)` -/
def P1704667187194896114.Spec : Prop :=
  ∀ n, P1704667187194896114.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P3702559931168880702

`A026008(2*n)-A126120(n+1)`
-/

namespace A187916.P3702559931168880702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - A126120 (n + 1)

end

end A187916.P3702559931168880702

namespace A187916

/-- `A026008(2*n)-A126120(n+1)` -/
def P3702559931168880702.Spec : Prop :=
  ∀ n, P3702559931168880702.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P16242472873198245579

`A026008(2*n)-A097331(n+2)`
-/

namespace A187916.P16242472873198245579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - A097331 (n + 2)

end

end A187916.P16242472873198245579

namespace A187916

/-- `A026008(2*n)-A097331(n+2)` -/
def P16242472873198245579.Spec : Prop :=
  ∀ n, P16242472873198245579.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P5867054999968026969

`abs(A126120(n+1)-A168491(n+1))`
-/

namespace A187916.P5867054999968026969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126120 (n + 1) - A168491 (n + 1)|

end

end A187916.P5867054999968026969

namespace A187916

/-- `abs(A126120(n+1)-A168491(n+1))` -/
def P5867054999968026969.Spec : Prop :=
  ∀ n, P5867054999968026969.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P17257695194370291096

`A208355(2*n+1)-A126120(n+1)`
-/

namespace A187916.P17257695194370291096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n + 1) - A126120 (n + 1)

end

end A187916.P17257695194370291096

namespace A187916

/-- `A208355(2*n+1)-A126120(n+1)` -/
def P17257695194370291096.Spec : Prop :=
  ∀ n, P17257695194370291096.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P6811640183612809308

`∑{d}[n+1, A092673(#)*A237670((n+1)/#)]`
-/

namespace A187916.P6811640183612809308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A237670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A187916.P6811640183612809308

namespace A187916

/-- `∑{d}[n+1, A092673(#)*A237670((n+1)/#)]` -/
def P6811640183612809308.Spec : Prop :=
  ∀ n, P6811640183612809308.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P12435599185373338315

`∑{d}[n+1, A002996(#)*A059841((n+1)/#-1)]`
-/

namespace A187916.P12435599185373338315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002996 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A187916.P12435599185373338315

namespace A187916

/-- `∑{d}[n+1, A002996(#)*A059841((n+1)/#-1)]` -/
def P12435599185373338315.Spec : Prop :=
  ∀ n, P12435599185373338315.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P18062567090345263507

`A089408(A005408(n+1))-A126120(n+1)`
-/

namespace A187916.P18062567090345263507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A005408 (n + 1)).toNat - A126120 (n + 1)

end

end A187916.P18062567090345263507

namespace A187916

/-- `A089408(A005408(n+1))-A126120(n+1)` -/
def P18062567090345263507.Spec : Prop :=
  ∀ n, P18062567090345263507.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P13534673955977917437

`A126120(A004277(n+1))-A126120(n+1)`
-/

namespace A187916.P13534673955977917437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004277 (n + 1)).toNat - A126120 (n + 1)

end

end A187916.P13534673955977917437

namespace A187916

/-- `A126120(A004277(n+1))-A126120(n+1)` -/
def P13534673955977917437.Spec : Prop :=
  ∀ n, P13534673955977917437.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P15581533031538229053

`A126120(A005843(n+1))-A126120(n+1)`
-/

namespace A187916.P15581533031538229053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A005843 (n + 1)).toNat - A126120 (n + 1)

end

end A187916.P15581533031538229053

namespace A187916

/-- `A126120(A005843(n+1))-A126120(n+1)` -/
def P15581533031538229053.Spec : Prop :=
  ∀ n, P15581533031538229053.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P13674731531200917207

`A141351(n+1)-A141351(A142150(n+1))`
-/

namespace A187916.P13674731531200917207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 (n + 1) - A141351 (A142150 (n + 1)).toNat

end

end A187916.P13674731531200917207

namespace A187916

/-- `A141351(n+1)-A141351(A142150(n+1))` -/
def P13674731531200917207.Spec : Prop :=
  ∀ n, P13674731531200917207.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P11020131835975413908

`A126120(A092486(2*n+1))-A126120(n+1)`
-/

namespace A187916.P11020131835975413908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A092486 (2 * n + 1)).toNat - A126120 (n + 1)

end

end A187916.P11020131835975413908

namespace A187916

/-- `A126120(A092486(2*n+1))-A126120(n+1)` -/
def P11020131835975413908.Spec : Prop :=
  ∀ n, P11020131835975413908.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P238514793837142911

`A058987(n+1)+A001006(n)-A126120(n+1)`
-/

namespace A187916.P238514793837142911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058987 (n + 1) + A001006 n - A126120 (n + 1)

end

end A187916.P238514793837142911

namespace A187916

/-- `A058987(n+1)+A001006(n)-A126120(n+1)` -/
def P238514793837142911.Spec : Prop :=
  ∀ n, P238514793837142911.a n = A187916 (n + 1)

end A187916

/-! ## A187916.P12361499105318059609

`A000108(n+1)+A110199(n)-A110199(n+1)`
-/

namespace A187916.P12361499105318059609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A110199 n - A110199 (n + 1))

end

end A187916.P12361499105318059609

namespace A187916

/-- `A000108(n+1)+A110199(n)-A110199(n+1)` -/
def P12361499105318059609.Spec : Prop :=
  ∀ n, P12361499105318059609.a n = A187916 (n + 1)

end A187916

/-!
# A187917: a(n) = (1/4)*(5*(n-1)*P(n)+n*P(n-1)) where P() are the Pell numbers A000129.

The programs for A187917, the canonical program `A187917.P6236194558533120730` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187917 has offset 1).

The definition of A187917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187917.P6236194558533120730

`ogf((3x+2x^2)/(1-4x+2x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187917

/-- `ogf((3x+2x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P6236194558533120730.Spec : Prop :=
  ∀ n, P6236194558533120730.a n = A187917 (n + 1)

theorem P6236194558533120730.correct : P6236194558533120730.Spec := by
  intro n
  simp only [A187917, Nat.add_sub_cancel]

end A187917

/-! ## A187917.P7491758766845615620

`A054459(n)-A054447(n)`
-/

namespace A187917.P7491758766845615620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - A054447 n

end

end A187917.P7491758766845615620

namespace A187917

/-- `A054459(n)-A054447(n)` -/
def P7491758766845615620.Spec : Prop :=
  ∀ n, P7491758766845615620.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P12375063199508089720

`∑[A088210(n)]-A054447(n)`
-/

namespace A187917.P12375063199508089720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054447 n

end

end A187917.P12375063199508089720

namespace A187917

/-- `∑[A088210(n)]-A054447(n)` -/
def P12375063199508089720.Spec : Prop :=
  ∀ n, P12375063199508089720.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P395470428174192668

`A006645(n+1)+2*A364553(n)`
-/

namespace A187917.P395470428174192668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + 2 * A364553 n

end

end A187917.P395470428174192668

namespace A187917

/-- `A006645(n+1)+2*A364553(n)` -/
def P395470428174192668.Spec : Prop :=
  ∀ n, P395470428174192668.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P887250050795361060

`A006645(n+1)+n*∑[A001333(n)]`
-/

namespace A187917.P887250050795361060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187917.P887250050795361060

namespace A187917

/-- `A006645(n+1)+n*∑[A001333(n)]` -/
def P887250050795361060.Spec : Prop :=
  ∀ n, P887250050795361060.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P17360017760388206512

`A006645(n+1)+n*A000129(n+1)`
-/

namespace A187917.P17360017760388206512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (n : ℤ) * A000129 (n + 1)

end

end A187917.P17360017760388206512

namespace A187917

/-- `A006645(n+1)+n*A000129(n+1)` -/
def P17360017760388206512.Spec : Prop :=
  ∀ n, P17360017760388206512.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P3827786582443813956

`A000129(n+1)+A054459(n)-A292327(n)`
-/

namespace A187917.P3827786582443813956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A054459 n - A292327 n)

end

end A187917.P3827786582443813956

namespace A187917

/-- `A000129(n+1)+A054459(n)-A292327(n)` -/
def P3827786582443813956.Spec : Prop :=
  ∀ n, P3827786582443813956.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P18160633322686752615

`A054459(n)-(A006645(n+1)+A000129(n+1))`
-/

namespace A187917.P18160633322686752615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - (A006645 (n + 1) + A000129 (n + 1))

end

end A187917.P18160633322686752615

namespace A187917

/-- `A054459(n)-(A006645(n+1)+A000129(n+1))` -/
def P18160633322686752615.Spec : Prop :=
  ∀ n, P18160633322686752615.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P7976451435696632254

`A006645(n+1)+A088210(n)-A001333(n+1)`
-/

namespace A187917.P7976451435696632254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A088210 n - A001333 (n + 1))

end

end A187917.P7976451435696632254

namespace A187917

/-- `A006645(n+1)+A088210(n)-A001333(n+1)` -/
def P7976451435696632254.Spec : Prop :=
  ∀ n, P7976451435696632254.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P12446502270368432037

`A006645(n+1)+A054459(n)-A119915(n+1)`
-/

namespace A187917.P12446502270368432037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A054459 n - A119915 (n + 1))

end

end A187917.P12446502270368432037

namespace A187917

/-- `A006645(n+1)+A054459(n)-A119915(n+1)` -/
def P12446502270368432037.Spec : Prop :=
  ∀ n, P12446502270368432037.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P11570223168203227770

`A006645(n+1)+A093967(n+1)-A000129(n+1)`
-/

namespace A187917.P11570223168203227770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A093967 (n + 1) - A000129 (n + 1))

end

end A187917.P11570223168203227770

namespace A187917

/-- `A006645(n+1)+A093967(n+1)-A000129(n+1)` -/
def P11570223168203227770.Spec : Prop :=
  ∀ n, P11570223168203227770.a n = A187917 (n + 1)

end A187917

/-! ## A187917.P18284075761748001019

`A054459(n)-record[A054448(n)]`
-/

namespace A187917.P18284075761748001019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187917.P18284075761748001019

namespace A187917

/-- `A054459(n)-record[A054448(n)]` -/
def P18284075761748001019.Spec : Prop :=
  ∀ n, P18284075761748001019.a n = A187917 (n + 1)

end A187917

/-!
# A187918: Largest semiprime < n^2.

The programs for A187918, the canonical program `A187918.P11303942051296453907` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187918 has offset 3).

The definition of A187918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187918.P11303942051296453907

`A001358(A038108(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A187918

/-- `A001358(A038108(n+3))` -/
def P11303942051296453907.Spec : Prop :=
  ∀ n, P11303942051296453907.a n = A187918 (n + 3)

theorem P11303942051296453907.correct : P11303942051296453907.Spec := by
  intro n
  simp only [A187918, Nat.add_sub_cancel]

end A187918

/-! ## A187918.P11549252822423591726

`A006881(∑[A140114(n+2)])`
-/

namespace A187918.P11549252822423591726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187918.P11549252822423591726

namespace A187918

/-- `A006881(∑[A140114(n+2)])` -/
def P11549252822423591726.Spec : Prop :=
  ∀ n, P11549252822423591726.a n = A187918 (n + 3)

end A187918

/-! ## A187918.P11447512773586682919

`A001358(A072000((n+3)²-1))`
-/

namespace A187918.P11447512773586682919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A072000 ((n + 3) ^ 2 - 1)).toNat

end

end A187918.P11447512773586682919

namespace A187918

/-- `A001358(A072000((n+3)²-1))` -/
def P11447512773586682919.Spec : Prop :=
  ∀ n, P11447512773586682919.a n = A187918 (n + 3)

end A187918

/-! ## A187918.P16177523242828784181

`A006881(A072613((n+3)²))`
-/

namespace A187918.P16177523242828784181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A072613 ((n + 3) ^ 2)).toNat

end

end A187918.P16177523242828784181

namespace A187918

/-- `A006881(A072613((n+3)²))` -/
def P16177523242828784181.Spec : Prop :=
  ∀ n, P16177523242828784181.a n = A187918 (n + 3)

end A187918

/-!
# A187919: a(n) = (19/28)*(3^n-1)*P(n-1)+(3/7)*(4*3^n-5)*P(n) where P() are the Pell numbers A000129.

The programs for A187919, the canonical program `A187919.P2806540364921078026` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187919 has offset 1).

The definition of A187919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187919.P2806540364921078026

`ogf((3+8x+6x^2)/(1-8x+2x^2+24x^3+9x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187919

/-- `ogf((3+8x+6x^2)/(1-8x+2x^2+24x^3+9x^4))` -/
def P2806540364921078026.Spec : Prop :=
  ∀ n, P2806540364921078026.a n = A187919 (n + 1)

theorem P2806540364921078026.correct : P2806540364921078026.Spec := by
  intro n
  simp only [A187919, Nat.add_sub_cancel]

end A187919

/-!
# A187920: Triangle T(n,k) for A(x)^k=sum(n>=k T(n,k)*x^n), where o.g.f. A(x) satisfies A(x)=(1+x*A(x)^3)/(1-x*A(x)^3).

The programs for A187920, there is no canonical definition to state claims against.
-/

/-! ## A187920.P2571335169589042275

`A378238(A380649(n+1))`
-/

namespace A187920.P2571335169589042275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (A380649 (n + 1)).toNat

end

end A187920.P2571335169589042275

/-! ## A187920.P8727779264233289059

`A348717(∑[ceil(3^(n-1))]^A002262(n+1))`
-/

namespace A187920.P8727779264233289059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A002262 (n + 1) : ℤ))).toNat

end

end A187920.P8727779264233289059

/-! ## A187920.P15289243115408562379

`A113389(n)-A287272(A225117(n))`
-/

namespace A187920.P15289243115408562379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 n - A287272 (A225117 n).toNat

end

end A187920.P15289243115408562379

/-!
# A187921: Positions k of addition steps in Recamán's sequence where A005132(k-1)<=k.

The programs for A187921, there is no canonical definition to state claims against.
-/

/-! ## A187921.P4542238378229034638

`lt[A005132(n), n+2]+1`
-/

namespace A187921.P4542238378229034638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187921.P4542238378229034638

/-! ## A187921.P6697700607154374490

`lt[n*A334951(n), n]`
-/

namespace A187921.P6697700607154374490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334951 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187921.P6697700607154374490

/-! ## A187921.P15249202706086878219

`lt[A334951(n+1), 1]+1`
-/

namespace A187921.P15249202706086878219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187921.P15249202706086878219

/-! ## A187921.P3093567665964474663

`lt[A063733(n+1), n+3]+1`
-/

namespace A187921.P3093567665964474663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187921.P3093567665964474663

/-! ## A187921.P16910719064055743426

`lt[A334951(n), A001221(A106737(n))]`
-/

namespace A187921.P16910719064055743426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106737 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187921.P16910719064055743426

/-! ## A187921.P7578815883898906914

`lt[A334951(n)+A000007(n), 1]`
-/

namespace A187921.P7578815883898906914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n + A000007 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187921.P7578815883898906914

/-! ## A187921.P745575167119183477

`lt[A000007(n), A160357(n)-A334951(n)]`
-/

namespace A187921.P745575167119183477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n - A334951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187921.P745575167119183477

/-!
# A187922: Positions k of addition steps in Recamán's sequence where A005132(k-1)-k = A005132(m) for some 0 < m < k.

The programs for A187922, there is no canonical definition to state claims against.
-/

/-! ## A187922.P7018174560503834985

`∩[comp[A187921(n+1)], A333552(n+1)]`
-/

namespace A187922.P7018174560503834985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187921 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A187922.P7018174560503834985

/-! ## A187922.P5705055705068144424

`∩[lt[0, A334951(n)], A333552(n+1)]`
-/

namespace A187922.P5705055705068144424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A187922.P5705055705068144424

/-! ## A187922.P18026579461042189761

`∩[comp[A333548(n+1)], A333552(n+1)]`
-/

namespace A187922.P18026579461042189761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333548 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A187922.P18026579461042189761

/-! ## A187922.P17736124342245852589

`lt[A004277(n), A005132(n)*A160357(n)]`
-/

namespace A187922.P17736124342245852589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n * A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187922.P17736124342245852589

/-! ## A187922.P8750285897188825644

`lt[A000007(n), A160357(n)*A334951(n)]`
-/

namespace A187922.P8750285897188825644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n * A334951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187922.P8750285897188825644

/-! ## A187922.P10997915418658747337

`lt[A334951(n)², A005132(n)*A334951(n)]`
-/

namespace A187922.P10997915418658747337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n * A334951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187922.P10997915418658747337

/-! ## A187922.P10588745655940907325

`lt[A004277(n), A209386(n)/2*A160357(n)]`
-/

namespace A187922.P10588745655940907325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 n : ℚ) / 2 * (A160357 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A187922.P10588745655940907325

/-!
# A187925: Coefficient of x^n in (1+x+x^2+x^3+x^4)^n.

The programs for A187925, there is no canonical definition to state claims against.
-/

/-! ## A187925.P1917154011013400225

`A305161(A052905(n+2))`
-/

namespace A187925.P1917154011013400225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A052905 (n + 2)).toNat

end

end A187925.P1917154011013400225

/-! ## A187925.P15482440345255336611

`A305161(A000124(n+5)-6)`
-/

namespace A187925.P15482440345255336611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A000124 (n + 5) - 6).toNat

end

end A187925.P15482440345255336611

/-! ## A187925.P14166460426089947932

`A305161(Δ[Δ[A022815(n+1)]])`
-/

namespace A187925.P14166460426089947932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (f1 (n + 1) - f1 n).toNat

end

end A187925.P14166460426089947932

/-! ## A187925.P9344622522504290929

`A213743(∑[n]+n)`
-/

namespace A187925.P9344622522504290929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213743 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A187925.P9344622522504290929

/-! ## A187925.P3803190951434277136

`A305161(eq[4, A025581(n)])`
-/

namespace A187925.P3803190951434277136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187925.P3803190951434277136

/-! ## A187925.P15105121575850440719

`A035343(2*n²)`
-/

namespace A187925.P15105121575850440719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (2 * n ^ 2)

end

end A187925.P15105121575850440719

/-!
# A187926: Riordan matrix (1/(1-4x),(1-sqrt(1-4x))/2).

The programs for A187926, the canonical program `A187926.P123076117038563951` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187926 has offset 0).

The definition of A187926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187926.P123076117038563951

`A008949(A128116(n+1)+A061579(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187926

/-- `A008949(A128116(n+1)+A061579(n))` -/
def P123076117038563951.Spec : Prop :=
  ∀ n, P123076117038563951.a n = A187926 n

theorem P123076117038563951.correct : P123076117038563951.Spec := by
  intro n
  simp only [A187926]

end A187926

/-! ## A187926.P5928795485296245021

`A309776(A130330(n)*A140513(n))`
-/

namespace A187926.P5928795485296245021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A130330 n * A140513 n).toNat

end

end A187926.P5928795485296245021

namespace A187926

/-- `A309776(A130330(n)*A140513(n))` -/
def P5928795485296245021.Spec : Prop :=
  ∀ n, P5928795485296245021.a n = A187926 n

end A187926

/-! ## A187926.P6496769100958694780

`A309776(lcm(A130328(n), A140513(n)))`
-/

namespace A187926.P6496769100958694780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (Int.lcm (A130328 n) (A140513 n))

end

end A187926.P6496769100958694780

namespace A187926

/-- `A309776(lcm(A130328(n), A140513(n)))` -/
def P6496769100958694780.Spec : Prop :=
  ∀ n, P6496769100958694780.a n = A187926 n

end A187926

/-! ## A187926.P8968691726241721232

`A285281(n+4)^A001221(n+1)^n-char[7]`
-/

namespace A187926.P8968691726241721232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285281 (n + 4) : ℚ) ^ (A001221 (n + 1) ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A187926.P8968691726241721232

namespace A187926

/-- `A285281(n+4)^A001221(n+1)^n-char[7]` -/
def P8968691726241721232.Spec : Prop :=
  ∀ n, P8968691726241721232.a n = (A187926 n : ℚ)

end A187926

/-! ## A187926.P4757017755351750785

`A285267(n+4)-A077655(A296533(n))`
-/

namespace A187926.P4757017755351750785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285267 (n + 4) - A077655 (A296533 n).toNat

end

end A187926.P4757017755351750785

namespace A187926

/-- `A285267(n+4)-A077655(A296533(n))` -/
def P4757017755351750785.Spec : Prop :=
  ∀ n, P4757017755351750785.a n = A187926 n

end A187926

/-!
# A187928: Number of embeddings on the sphere of planar graphs with n edges having connectivity exactly 2 and minimum vertex degree at least 3.

The programs for A187928, there is no canonical definition to state claims against.
-/

/-! ## A187928.P1192840799039933925

`A277025(A212422(n))`
-/

namespace A187928.P1192840799039933925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A212422 n).toNat

end

end A187928.P1192840799039933925

/-! ## A187928.P528413802969694395

`∑[A138759(A005470(n))]`
-/

namespace A187928.P528413802969694395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138759 (A005470 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187928.P528413802969694395

/-!
# A187929: Odd numbers k such that 1^((k-1)/2) + 2^((k-1)/2) + .... + (k-1)^((k-1)/2) == 0 (mod k).

The programs for A187929, there is no canonical definition to state claims against.
-/

/-! ## A187929.P15627194411217609925

`record[A215457(n+1)%A115010(n+1)]`
-/

namespace A187929.P15627194411217609925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215457 (n + 1)) (A115010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187929.P15627194411217609925

/-! ## A187929.P17444181948721682422

`record[A215457(A118168(n))]`
-/

namespace A187929.P17444181948721682422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215457 (A118168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187929.P17444181948721682422

/-! ## A187929.P16478491402965249702

`record[A215457(n+1)%A095275(n)]`
-/

namespace A187929.P16478491402965249702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215457 (n + 1)) (A095275 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187929.P16478491402965249702

/-! ## A187929.P862537130004832556

`lt[A048272(n+1), A177444(A211110(n))]`
-/

namespace A187929.P862537130004832556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177444 (A211110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187929.P862537130004832556

/-!
# A187930: Least number r such that r == k-1 (mod prime(k)) for k = 1..n.

The programs for A187930, there is no canonical definition to state claims against.
-/

/-! ## A187930.P4303041289412574108

`A053664(n+1)-1`
-/

namespace A187930.P4303041289412574108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053664 (n + 1) - 1

end

end A187930.P4303041289412574108

/-! ## A187930.P10036014348399674770

`A002110(n+1)-A069561(n+1)`
-/

namespace A187930.P10036014348399674770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A069561 (n + 1)

end

end A187930.P10036014348399674770

/-! ## A187930.P8115280717458983636

`A075307(n+1)-(A000038(n)+1)`
-/

namespace A187930.P8115280717458983636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075307 (n + 1) - (A000038 n + 1)

end

end A187930.P8115280717458983636

/-! ## A187930.P15114974915127310685

`xor(∏[A087960(n)]², A053664(n+1))`
-/

namespace A187930.P15114974915127310685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A053664 (n + 1))

end

end A187930.P15114974915127310685

/-! ## A187930.P16082948251937954633

`∏[Δ[A007504(n)]]-A069561(n+1)`
-/

namespace A187930.P16082948251937954633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A069561 (n + 1)

end

end A187930.P16082948251937954633

/-! ## A187930.P12403262758800848694

`∏[p?[A259153(n)]]-A069561(n+1)`
-/

namespace A187930.P12403262758800848694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A069561 (n + 1)

end

end A187930.P12403262758800848694

/-! ## A187930.P16083500201636328840

`∏[A008578(n+2)]-A069561(n+1)`
-/

namespace A187930.P16083500201636328840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A069561 (n + 1)

end

end A187930.P16083500201636328840

/-! ## A187930.P8734364202302447478

`∏[p?[A207790(n+1)]]-A069561(n+1)`
-/

namespace A187930.P8734364202302447478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A069561 (n + 1)

end

end A187930.P8734364202302447478

/-! ## A187930.P11528782958165285000

`A087960(∏[A087960(n)]²)+A053664(n+1)`
-/

namespace A187930.P11528782958165285000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat + A053664 (n + 1)

end

end A187930.P11528782958165285000

/-!
# A187931: Number of (n+2)X(n+2) binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187931, there is no canonical definition to state claims against.
-/

/-! ## A187931.P9256164975681231132

`A187940(∑[4*n]+1)`
-/

namespace A187931.P9256164975681231132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187931.P9256164975681231132

/-!
# A187932: Number of (n+2)X3 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187932, there is no canonical definition to state claims against.
-/

/-! ## A187932.P3450168999830406543

`A187940(∑[n]+1)`
-/

namespace A187932.P3450168999830406543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187932.P3450168999830406543

/-! ## A187932.P719382078500905696

`lcm(2, A187940(A000124(n)))`
-/

namespace A187932.P719382078500905696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187940 (A000124 n).toNat)

end

end A187932.P719382078500905696

/-! ## A187932.P6693264995283764592

`A187940(A000124(n))+A025469(n)`
-/

namespace A187932.P6693264995283764592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A000124 n).toNat + A025469 n

end

end A187932.P6693264995283764592

/-! ## A187932.P7732596133769569156

`A187940(A000124(n))+A107846(n)`
-/

namespace A187932.P7732596133769569156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A000124 n).toNat + A107846 n

end

end A187932.P7732596133769569156

/-! ## A187932.P8559304722680707998

`A187940(A000124(n))+A118135(n)`
-/

namespace A187932.P8559304722680707998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A000124 n).toNat + A118135 n

end

end A187932.P8559304722680707998

/-!
# A187933: Number of (n+2)X4 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187933, there is no canonical definition to state claims against.
-/

/-! ## A187933.P2929120641783554561

`A187940(∑[n+1]+2)`
-/

namespace A187933.P2929120641783554561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187933.P2929120641783554561

/-! ## A187933.P14684613032327928903

`lcm(2, A187940(C(n+2, 2)+2))`
-/

namespace A187933.P14684613032327928903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187940 (Nat.choose (n + 2) 2 + 2))

end

end A187933.P14684613032327928903

/-! ## A187933.P3087499076548146457

`lcm(4, A187940(A133263(n+1)))`
-/

namespace A187933.P3087499076548146457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A187940 (A133263 (n + 1)).toNat)

end

end A187933.P3087499076548146457

/-! ## A187933.P77130400551185637

`lcm(2, A187940(A152948(n+3)))`
-/

namespace A187933.P77130400551185637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187940 (A152948 (n + 3)).toNat)

end

end A187933.P77130400551185637

/-! ## A187933.P377375830376002168

`record[gcd(A187940(n+2), A213191(n))]`
-/

namespace A187933.P377375830376002168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187940 (n + 2)) (A213191 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187933.P377375830376002168

/-!
# A187934: Number of (n+2)X5 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187934, there is no canonical definition to state claims against.
-/

/-! ## A187934.P16430132551918823538

`A187940(∑[n+2]+4)`
-/

namespace A187934.P16430132551918823538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187934.P16430132551918823538

/-! ## A187934.P368175130647098221

`lcm(2, A187940(A167614(n+1)))`
-/

namespace A187934.P368175130647098221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187940 (A167614 (n + 1)).toNat)

end

end A187934.P368175130647098221

/-! ## A187934.P6041430510702759533

`record[A187940(n+4)/A187926(n)]`
-/

namespace A187934.P6041430510702759533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187940 (n + 4) : ℚ) / (A187926 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187934.P6041430510702759533

/-! ## A187934.P15060519604653970124

`record[A187940(n+4)/A225468(n)]`
-/

namespace A187934.P15060519604653970124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187940 (n + 4) : ℚ) / (A225468 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187934.P15060519604653970124

/-! ## A187934.P10782150508792241841

`record[gcd(A025581(n), A187940(n+4))]`
-/

namespace A187934.P10782150508792241841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A187940 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187934.P10782150508792241841

/-!
# A187935: Number of (n+2)X6 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187935, there is no canonical definition to state claims against.
-/

/-! ## A187935.P13806604963222129747

`A187940(A374004(n+1))`
-/

namespace A187935.P13806604963222129747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A374004 (n + 1)).toNat

end

end A187935.P13806604963222129747

/-! ## A187935.P7004753540714397967

`A187940(A141214(n)+7)`
-/

namespace A187935.P7004753540714397967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A141214 n + 7).toNat

end

end A187935.P7004753540714397967

/-! ## A187935.P11062893565158036799

`A187940(A052905(n)+9)`
-/

namespace A187935.P11062893565158036799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A052905 n + 9).toNat

end

end A187935.P11062893565158036799

/-! ## A187935.P16421176405549607325

`A187940(A055999(n)+10)`
-/

namespace A187935.P16421176405549607325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A055999 n + 10).toNat

end

end A187935.P16421176405549607325

/-!
# A187936: Number of (n+2)X7 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187936, there is no canonical definition to state claims against.
-/

/-! ## A187936.P11500116502573304042

`A187940(∑[n+4]+11)`
-/

namespace A187936.P11500116502573304042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A187936.P11500116502573304042

/-! ## A187936.P2748950370686441741

`A043562(n)*A187940(A046691(n+3))`
-/

namespace A187936.P2748950370686441741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A187940 (A046691 (n + 3)).toNat

end

end A187936.P2748950370686441741

/-!
# A187937: Number of (n+2)X8 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187937, there is no canonical definition to state claims against.
-/

/-! ## A187937.P7211505386738934391

`A187940(A374007(n+1))`
-/

namespace A187937.P7211505386738934391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A374007 (n + 1)).toNat

end

end A187937.P7211505386738934391

/-!
# A187938: Number of (n+2)X9 binary arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187938, there is no canonical definition to state claims against.
-/

/-! ## A187938.P5106808990070244142

`A187940(A055999(n+4))`
-/

namespace A187938.P5106808990070244142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187940 (A055999 (n + 4)).toNat

end

end A187938.P5106808990070244142

/-!
# A187941: Least number with exactly n even divisors.

The programs for A187941, there is no canonical definition to state claims against.
-/

/-! ## A187941.P16877031779118402234

`A305183(n)/2`
-/

namespace A187941.P16877031779118402234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305183 n : ℚ) / 2

end

end A187941.P16877031779118402234

/-! ## A187941.P3603921524547425434

`2*A005179(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A187941.P3603921524547425434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A005179 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A187941.P3603921524547425434

/-! ## A187941.P14191382513689940694

`2^A008683(A107147(n+1))*A305183(n)`
-/

namespace A187941.P14191382513689940694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A107147 (n + 1)).toNat : ℤ) * (A305183 n : ℚ)

end

end A187941.P14191382513689940694

/-! ## A187941.P7300608391308190698

`A020639(A000010(n+2))*A005179(A028310(n))`
-/

namespace A187941.P7300608391308190698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A005179 (A028310 n).toNat

end

end A187941.P7300608391308190698

/-!
# A187942: Numbers n of the form (product of divisors of k)/(sum of divisors of k) for some k.

The programs for A187942, there is no canonical definition to state claims against.
-/

/-! ## A187942.P3947563725645986535

`A244670(A324989(n+1))`
-/

namespace A187942.P3947563725645986535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244670 (A324989 (n + 1)).toNat

end

end A187942.P3947563725645986535

/-! ## A187942.P13481034825390730693

`A244670(A327325(n+1))`
-/

namespace A187942.P13481034825390730693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244670 (A327325 (n + 1)).toNat

end

end A187942.P13481034825390730693

/-! ## A187942.P2936484943926349019

`A244670(A114299(n)+n)`
-/

namespace A187942.P2936484943926349019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244670 (A114299 n + (n : ℤ)).toNat

end

end A187942.P2936484943926349019

/-!
# A187943: A057167(A005132(A187922(n) - 1) - A187922(n)).

The programs for A187943, there is no canonical definition to state claims against.
-/

/-! ## A187943.P11308473644983859649

`A057167(A005132(A187922(n+1)-1)-A187922(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187943.P11308473644983859649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A005132 (A187922 (n + 1) - 1).toNat - A187922 (n + 1)).toNat

end

end A187943.P11308473644983859649

/-!
# A187944: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=3, [ ]=floor.

The programs for A187944, the canonical program `A187944.P14993375886949776411` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187944 has offset 1).

The definition of A187944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187944.P3674990430884015924

`1-char[3*comp[floor(ϕ*n)]-(n+2)]`
-/

namespace A187944.P3674990430884015924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187944.P3674990430884015924

namespace A187944

/-- `1-char[3*comp[floor(ϕ*n)]-(n+2)]` -/
def P3674990430884015924.Spec : Prop :=
  ∀ n, P3674990430884015924.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P5786743498172689381

`A005713(A060143(n))`
-/

namespace A187944.P5786743498172689381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A060143 n).toNat

end

end A187944.P5786743498172689381

namespace A187944

/-- `A005713(A060143(n))` -/
def P5786743498172689381.Spec : Prop :=
  ∀ n, P5786743498172689381.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P10296182398718677842

`A005713(A066096(n)-n)`
-/

namespace A187944.P10296182398718677842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A066096 n - (n : ℤ)).toNat

end

end A187944.P10296182398718677842

namespace A187944

/-- `A005713(A066096(n)-n)` -/
def P10296182398718677842.Spec : Prop :=
  ∀ n, P10296182398718677842.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P12401137022636791071

`A005614(A005713(n)+1+n)`
-/

namespace A187944.P12401137022636791071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A005713 n + 1 + (n : ℤ)).toNat

end

end A187944.P12401137022636791071

namespace A187944

/-- `A005614(A005713(n)+1+n)` -/
def P12401137022636791071.Spec : Prop :=
  ∀ n, P12401137022636791071.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P1739581274703407261

`A096270(A005713(n+1)+n)`
-/

namespace A187944.P1739581274703407261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A005713 (n + 1) + (n : ℤ)).toNat

end

end A187944.P1739581274703407261

namespace A187944

/-- `A096270(A005713(n+1)+n)` -/
def P1739581274703407261.Spec : Prop :=
  ∀ n, P1739581274703407261.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P11734218746511272802

`A187950(A187950(n+1)+n)`
-/

namespace A187944.P11734218746511272802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A187950 (n + 1) + (n : ℤ)).toNat

end

end A187944.P11734218746511272802

namespace A187944

/-- `A187950(A187950(n+1)+n)` -/
def P11734218746511272802.Spec : Prop :=
  ∀ n, P11734218746511272802.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P14993375886949776411

`A005614(A123740(n+2)+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187944

/-- `A005614(A123740(n+2)+n)` -/
def P14993375886949776411.Spec : Prop :=
  ∀ n, P14993375886949776411.a n = A187944 (n + 1)

theorem P14993375886949776411.correct : P14993375886949776411.Spec := by
  intro n
  simp only [A187944, Nat.add_sub_cancel]

end A187944

/-! ## A187944.P14758253011841810863

`A005614((n+2)*A003849(n))`
-/

namespace A187944.P14758253011841810863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ((n + 2 : ℤ) * A003849 n).toNat

end

end A187944.P14758253011841810863

namespace A187944

/-- `A005614((n+2)*A003849(n))` -/
def P14758253011841810863.Spec : Prop :=
  ∀ n, P14758253011841810863.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P15902004700382151032

`A005614((n+2)*A096270(n))`
-/

namespace A187944.P15902004700382151032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ((n + 2 : ℤ) * A096270 n).toNat

end

end A187944.P15902004700382151032

namespace A187944

/-- `A005614((n+2)*A096270(n))` -/
def P15902004700382151032.Spec : Prop :=
  ∀ n, P15902004700382151032.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P751926949548206018

`A005614((n+2)*A114986(n))`
-/

namespace A187944.P751926949548206018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ((n + 2 : ℤ) * A114986 n).toNat

end

end A187944.P751926949548206018

namespace A187944

/-- `A005614((n+2)*A114986(n))` -/
def P751926949548206018.Spec : Prop :=
  ∀ n, P751926949548206018.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P9038786068251980378

`A005713(comp[A001950(n+1)]-n)`
-/

namespace A187944.P9038786068251980378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A187944.P9038786068251980378

namespace A187944

/-- `A005713(comp[A001950(n+1)]-n)` -/
def P9038786068251980378.Spec : Prop :=
  ∀ n, P9038786068251980378.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P322069660797796421

`A003849(n+2-A383999(n+1))`
-/

namespace A187944.P322069660797796421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((n + 2 : ℤ) - A383999 (n + 1)).toNat

end

end A187944.P322069660797796421

namespace A187944

/-- `A003849(n+2-A383999(n+1))` -/
def P322069660797796421.Spec : Prop :=
  ∀ n, P322069660797796421.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P2203203051761640267

`A005614(A003849(A005206(n))+n)`
-/

namespace A187944.P2203203051761640267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A003849 (A005206 n).toNat + (n : ℤ)).toNat

end

end A187944.P2203203051761640267

namespace A187944

/-- `A005614(A003849(A005206(n))+n)` -/
def P2203203051761640267.Spec : Prop :=
  ∀ n, P2203203051761640267.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P13375195843999155914

`A005713(∑[A096270(n)]-A096270(n))`
-/

namespace A187944.P13375195843999155914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (∑ j ∈ Finset.range (n + 1), f1 j - A096270 n).toNat

end

end A187944.P13375195843999155914

namespace A187944

/-- `A005713(∑[A096270(n)]-A096270(n))` -/
def P13375195843999155914.Spec : Prop :=
  ∀ n, P13375195843999155914.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P4467539405396749551

`A005614(A060143(n+1)+A005614(n+1))`
-/

namespace A187944.P4467539405396749551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A060143 (n + 1) + A005614 (n + 1)).toNat

end

end A187944.P4467539405396749551

namespace A187944

/-- `A005614(A060143(n+1)+A005614(n+1))` -/
def P4467539405396749551.Spec : Prop :=
  ∀ n, P4467539405396749551.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P18353186411400365622

`A191404(n+1)%2`
-/

namespace A187944.P18353186411400365622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191404 (n + 1)) 2

end

end A187944.P18353186411400365622

namespace A187944

/-- `A191404(n+1)%2` -/
def P18353186411400365622.Spec : Prop :=
  ∀ n, P18353186411400365622.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P17293282510617382856

`log2(Δ[A287774(n+1)])`
-/

namespace A187944.P17293282510617382856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287774 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A187944.P17293282510617382856

namespace A187944

/-- `log2(Δ[A287774(n+1)])` -/
def P17293282510617382856.Spec : Prop :=
  ∀ n, P17293282510617382856.a n = (A187944 (n + 1) : ℝ)

end A187944

/-! ## A187944.P7199124982861580964

`A096270(A058065(n+2)-2)`
-/

namespace A187944.P7199124982861580964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A058065 (n + 2) - 2).toNat

end

end A187944.P7199124982861580964

namespace A187944

/-- `A096270(A058065(n+2)-2)` -/
def P7199124982861580964.Spec : Prop :=
  ∀ n, P7199124982861580964.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P2252560415381144633

`A005713(A005713(n)+2+n)`
-/

namespace A187944.P2252560415381144633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A005713 n + 2 + (n : ℤ)).toNat

end

end A187944.P2252560415381144633

namespace A187944

/-- `A005713(A005713(n)+2+n)` -/
def P2252560415381144633.Spec : Prop :=
  ∀ n, P2252560415381144633.a n = A187944 (n + 1)

end A187944

/-! ## A187944.P13234135504789068894

`A003849(A014677(n+2)+n)`
-/

namespace A187944.P13234135504789068894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A014677 (n + 2) + (n : ℤ)).toNat

end

end A187944.P13234135504789068894

namespace A187944

/-- `A003849(A014677(n+2)+n)` -/
def P13234135504789068894.Spec : Prop :=
  ∀ n, P13234135504789068894.a n = A187944 (n + 1)

end A187944

/-!
# A187945: Positions of 1 in A187944; complement of A101864.

The programs for A187945, the canonical program `A187945.P5960428020690763838` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187945 has offset 1).

The definition of A187945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187945.P5960428020690763838

`∪[2*floor(ϕ*(n+1))+n, floor(ϕ*(n+1))]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187945

/-- `∪[2*floor(ϕ*(n+1))+n, floor(ϕ*(n+1))]` -/
def P5960428020690763838.Spec : Prop :=
  ∀ n, (P5960428020690763838.a n : ℤ) = A187945 (n + 1)

theorem P5960428020690763838.correct : P5960428020690763838.Spec := by
  intro n
  simp only [A187945, Nat.add_sub_cancel]

end A187945

/-! ## A187945.P258936321740929647

`comp[(2*comp[ceil(ϕ*n)]-n)%(2*floor(ϕ*(n+1))+n)]`
-/

namespace A187945.P258936321740929647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P258936321740929647

namespace A187945

/-- `comp[(2*comp[ceil(ϕ*n)]-n)%(2*floor(ϕ*(n+1))+n)]` -/
def P258936321740929647.Spec : Prop :=
  ∀ n, (P258936321740929647.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P17744510948617174558

`comp[A035337(n)+1]+1`
-/

namespace A187945.P17744510948617174558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187945.P17744510948617174558

namespace A187945

/-- `comp[A035337(n)+1]+1` -/
def P17744510948617174558.Spec : Prop :=
  ∀ n, (P17744510948617174558.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P11105169117689761222

`comp[A134860(n+1)]+1`
-/

namespace A187945.P11105169117689761222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187945.P11105169117689761222

namespace A187945

/-- `comp[A134860(n+1)]+1` -/
def P11105169117689761222.Spec : Prop :=
  ∀ n, (P11105169117689761222.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P6547145058378018598

`comp[A188012(n+1)-3]`
-/

namespace A187945.P6547145058378018598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P6547145058378018598

namespace A187945

/-- `comp[A188012(n+1)-3]` -/
def P6547145058378018598.Spec : Prop :=
  ∀ n, (P6547145058378018598.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P16385291267639813722

`A287777(n+1)-(n+1)`
-/

namespace A187945.P16385291267639813722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287777 (n + 1) - (n + 1 : ℤ)

end

end A187945.P16385291267639813722

namespace A187945

/-- `A287777(n+1)-(n+1)` -/
def P16385291267639813722.Spec : Prop :=
  ∀ n, P16385291267639813722.a n = A187945 (n + 1)

theorem P16385291267639813722.correct : P16385291267639813722.Spec := by
  intro n
  simp only [A187945, Nat.add_sub_cancel, A187945.P16385291267639813722.a, A187945.P5960428020690763838.f1, A187945.P5960428020690763838.f2, A187945.P5960428020690763838.a, A287777, A287777.P3751153092046747703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187945

/-! ## A187945.P3960597954710563470

`comp[A101864(n+1)-1]+1`
-/

namespace A187945.P3960597954710563470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101864 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187945.P3960597954710563470

namespace A187945

/-- `comp[A101864(n+1)-1]+1` -/
def P3960597954710563470.Spec : Prop :=
  ∀ n, (P3960597954710563470.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P7543156585913601411

`comp[comp[floor(ϕ*n)]*A003849(n)]`
-/

namespace A187945.P7543156585913601411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A003849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P7543156585913601411

namespace A187945

/-- `comp[comp[floor(ϕ*n)]*A003849(n)]` -/
def P7543156585913601411.Spec : Prop :=
  ∀ n, (P7543156585913601411.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P7408552937951353532

`comp[A001950(A026352(n))-2]`
-/

namespace A187945.P7408552937951353532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026352 n).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P7408552937951353532

namespace A187945

/-- `comp[A001950(A026352(n))-2]` -/
def P7408552937951353532.Spec : Prop :=
  ∀ n, (P7408552937951353532.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P3277699944191693051

`A188013(n+3)-3`
-/

namespace A187945.P3277699944191693051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 3) - 3

end

end A187945.P3277699944191693051

namespace A187945

/-- `A188013(n+3)-3` -/
def P3277699944191693051.Spec : Prop :=
  ∀ n, P3277699944191693051.a n = A187945 (n + 1)

end A187945

/-! ## A187945.P4062807100760598739

`comp[Δ[ceil((n+1)/ϕ)]*A188016(2*(n+1))]`
-/

namespace A187945.P4062807100760598739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A188016 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P4062807100760598739

namespace A187945

/-- `comp[Δ[ceil((n+1)/ϕ)]*A188016(2*(n+1))]` -/
def P4062807100760598739.Spec : Prop :=
  ∀ n, (P4062807100760598739.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P1269224686518796390

`eq[A005713(n), A096270(n)]`
-/

namespace A187945.P1269224686518796390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187945.P1269224686518796390

namespace A187945

/-- `eq[A005713(n), A096270(n)]` -/
def P1269224686518796390.Spec : Prop :=
  ∀ n, (P1269224686518796390.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P9211261515032117525

`comp[A002251(A002251(n)+n)]`
-/

namespace A187945.P9211261515032117525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A002251 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187945.P9211261515032117525

namespace A187945

/-- `comp[A002251(A002251(n)+n)]` -/
def P9211261515032117525.Spec : Prop :=
  ∀ n, (P9211261515032117525.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P10350248765413672632

`A060143(A187951(n+1))`
-/

namespace A187945.P10350248765413672632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A187951 (n + 1)).toNat

end

end A187945.P10350248765413672632

namespace A187945

/-- `A060143(A187951(n+1))` -/
def P10350248765413672632.Spec : Prop :=
  ∀ n, P10350248765413672632.a n = A187945 (n + 1)

end A187945

/-! ## A187945.P7965586391326410450

`A080782(A287792(n+1))-(n+1)`
-/

namespace A187945.P7965586391326410450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A287792 (n + 1)).toNat - (n + 1 : ℤ)

end

end A187945.P7965586391326410450

namespace A187945

/-- `A080782(A287792(n+1))-(n+1)` -/
def P7965586391326410450.Spec : Prop :=
  ∀ n, P7965586391326410450.a n = A187945 (n + 1)

end A187945

/-! ## A187945.P8100268867111550287

`filter[A038459(n+1), A187944(#)]`
-/

namespace A187945.P8100268867111550287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187944 (f1 j).toNat = 1) n)

end

end A187945.P8100268867111550287

namespace A187945

/-- `filter[A038459(n+1), A187944(#)]` -/
def P8100268867111550287.Spec : Prop :=
  ∀ n, P8100268867111550287.a n = A187945 (n + 1)

end A187945

/-! ## A187945.P17488148349569133811

`lt[A003849(n+1), A083368(2*n+1)]`
-/

namespace A187945.P17488148349569133811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187945.P17488148349569133811

namespace A187945

/-- `lt[A003849(n+1), A083368(2*n+1)]` -/
def P17488148349569133811.Spec : Prop :=
  ∀ n, (P17488148349569133811.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P6313880768681482156

`lt[A014677(n), A270788(n+1)]`
-/

namespace A187945.P6313880768681482156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187945.P6313880768681482156

namespace A187945

/-- `lt[A014677(n), A270788(n+1)]` -/
def P6313880768681482156.Spec : Prop :=
  ∀ n, (P6313880768681482156.a n : ℤ) = A187945 (n + 1)

end A187945

/-! ## A187945.P9254388871058486993

`lt[1, A270788(n+1)+A096270(n)]`
-/

namespace A187945.P9254388871058486993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1) + A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187945.P9254388871058486993

namespace A187945

/-- `lt[1, A270788(n+1)+A096270(n)]` -/
def P9254388871058486993.Spec : Prop :=
  ∀ n, (P9254388871058486993.a n : ℤ) = A187945 (n + 1)

end A187945

/-!
# A187946: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=5, [ ]=floor.

The programs for A187946, the canonical program `A187946.P6796394097676353133` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187946 has offset 1).

The definition of A187946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187946.P14047980598530479511

`char[∑[xor(9, Δ[floor(ϕ*n)]²)]-1]`
-/

namespace A187946.P14047980598530479511
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f3 (n + 1) - f3 n) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187946.P14047980598530479511

namespace A187946

/-- `char[∑[xor(9, Δ[floor(ϕ*n)]²)]-1]` -/
def P14047980598530479511.Spec : Prop :=
  ∀ n, (P14047980598530479511.a n : ℤ) = A187946 (n + 1)

end A187946

/-! ## A187946.P2807671228183298910

`char[A134863(n+1)]`
-/

namespace A187946.P2807671228183298910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187946.P2807671228183298910

namespace A187946

/-- `char[A134863(n+1)]` -/
def P2807671228183298910.Spec : Prop :=
  ∀ n, (P2807671228183298910.a n : ℤ) = A187946 (n + 1)

end A187946

/-! ## A187946.P13108859506339853712

`char[A035338(n)+2]`
-/

namespace A187946.P13108859506339853712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187946.P13108859506339853712

namespace A187946

/-- `char[A035338(n)+2]` -/
def P13108859506339853712.Spec : Prop :=
  ∀ n, (P13108859506339853712.a n : ℤ) = A187946 (n + 1)

end A187946

/-! ## A187946.P15847848993384150514

`char[A188293(2*(n+1))-1]`
-/

namespace A187946.P15847848993384150514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187946.P15847848993384150514

namespace A187946

/-- `char[A188293(2*(n+1))-1]` -/
def P15847848993384150514.Spec : Prop :=
  ∀ n, (P15847848993384150514.a n : ℤ) = A187946 (n + 1)

end A187946

/-! ## A187946.P6593107399316195890

`A187950(A014675(n)+n)`
-/

namespace A187946.P6593107399316195890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A014675 n + (n : ℤ)).toNat

end

end A187946.P6593107399316195890

namespace A187946

/-- `A187950(A014675(n)+n)` -/
def P6593107399316195890.Spec : Prop :=
  ∀ n, P6593107399316195890.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P9191366620803874363

`A188291(A334413(n)+n)`
-/

namespace A187946.P9191366620803874363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (A334413 n + (n : ℤ)).toNat

end

end A187946.P9191366620803874363

namespace A187946

/-- `A188291(A334413(n)+n)` -/
def P9191366620803874363.Spec : Prop :=
  ∀ n, P9191366620803874363.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P6796394097676353133

`A123740(A014675(n)²+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187946

/-- `A123740(A014675(n)²+n)` -/
def P6796394097676353133.Spec : Prop :=
  ∀ n, P6796394097676353133.a n = A187946 (n + 1)

theorem P6796394097676353133.correct : P6796394097676353133.Spec := by
  intro n
  simp only [A187946, Nat.add_sub_cancel]

end A187946

/-! ## A187946.P3317360152270971955

`1-A187944(A005206(n+1))`
-/

namespace A187946.P3317360152270971955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A187944 (A005206 (n + 1)).toNat

end

end A187946.P3317360152270971955

namespace A187946

/-- `1-A187944(A005206(n+1))` -/
def P3317360152270971955.Spec : Prop :=
  ∀ n, P3317360152270971955.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P6534937729279393941

`A187950(A005614(n)+1+n)`
-/

namespace A187946.P6534937729279393941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A005614 n + 1 + (n : ℤ)).toNat

end

end A187946.P6534937729279393941

namespace A187946

/-- `A187950(A005614(n)+1+n)` -/
def P6534937729279393941.Spec : Prop :=
  ∀ n, P6534937729279393941.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P4387071035919460156

`A123740(A014675(n)+2+n)`
-/

namespace A187946.P4387071035919460156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A014675 n + 2 + (n : ℤ)).toNat

end

end A187946.P4387071035919460156

namespace A187946

/-- `A123740(A014675(n)+2+n)` -/
def P4387071035919460156.Spec : Prop :=
  ∀ n, P4387071035919460156.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P16217620406433506331

`A123740(A159917(n)+2+n)`
-/

namespace A187946.P16217620406433506331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A159917 n + 2 + (n : ℤ)).toNat

end

end A187946.P16217620406433506331

namespace A187946

/-- `A123740(A159917(n)+2+n)` -/
def P16217620406433506331.Spec : Prop :=
  ∀ n, P16217620406433506331.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P2140291385970029713

`A187950(A287659(n+1)-n)`
-/

namespace A187946.P2140291385970029713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A287659 (n + 1) - (n : ℤ)).toNat

end

end A187946.P2140291385970029713

namespace A187946

/-- `A187950(A287659(n+1)-n)` -/
def P2140291385970029713.Spec : Prop :=
  ∀ n, P2140291385970029713.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P5626518094653014330

`A187950(2-A003849(n)+n)`
-/

namespace A187946.P5626518094653014330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (2 - A003849 n + (n : ℤ)).toNat

end

end A187946.P5626518094653014330

namespace A187946

/-- `A187950(2-A003849(n)+n)` -/
def P5626518094653014330.Spec : Prop :=
  ∀ n, P5626518094653014330.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P9057625986504204093

`A014677(n)*A188291(n+1)`
-/

namespace A187946.P9057625986504204093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n * A188291 (n + 1)

end

end A187946.P9057625986504204093

namespace A187946

/-- `A014677(n)*A188291(n+1)` -/
def P9057625986504204093.Spec : Prop :=
  ∀ n, P9057625986504204093.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P17657124262231983212

`A188291(n+1)*A296135(n)`
-/

namespace A187946.P17657124262231983212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (n + 1) * A296135 n

end

end A187946.P17657124262231983212

namespace A187946

/-- `A188291(n+1)*A296135(n)` -/
def P17657124262231983212.Spec : Prop :=
  ∀ n, P17657124262231983212.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P8417987051405092614

`and(A001468(n), A188291(n+1))`
-/

namespace A187946.P8417987051405092614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001468 n) (A188291 (n + 1))

end

end A187946.P8417987051405092614

namespace A187946

/-- `and(A001468(n), A188291(n+1))` -/
def P8417987051405092614.Spec : Prop :=
  ∀ n, P8417987051405092614.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P10099896373526504479

`and(A001965(n), A188291(n+1))`
-/

namespace A187946.P10099896373526504479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001965 n) (A188291 (n + 1))

end

end A187946.P10099896373526504479

namespace A187946

/-- `and(A001965(n), A188291(n+1))` -/
def P10099896373526504479.Spec : Prop :=
  ∀ n, P10099896373526504479.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P5811393881619081352

`and(A001966(n), A188291(n+1))`
-/

namespace A187946.P5811393881619081352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001966 n) (A188291 (n + 1))

end

end A187946.P5811393881619081352

namespace A187946

/-- `and(A001966(n), A188291(n+1))` -/
def P5811393881619081352.Spec : Prop :=
  ∀ n, P5811393881619081352.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P10759661887720274534

`and(A001967(n), A188291(n+1))`
-/

namespace A187946.P10759661887720274534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001967 n) (A188291 (n + 1))

end

end A187946.P10759661887720274534

namespace A187946

/-- `and(A001967(n), A188291(n+1))` -/
def P10759661887720274534.Spec : Prop :=
  ∀ n, P10759661887720274534.a n = A187946 (n + 1)

end A187946

/-! ## A187946.P1703546583194455501

`A187950(A187950(n+1)+n+1)`
-/

namespace A187946.P1703546583194455501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A187950 (n + 1) + (n + 1 : ℤ)).toNat

end

end A187946.P1703546583194455501

namespace A187946

/-- `A187950(A187950(n+1)+n+1)` -/
def P1703546583194455501.Spec : Prop :=
  ∀ n, P1703546583194455501.a n = A187946 (n + 1)

end A187946

/-!
# A187947: Positions of 0 in A187946; complement of A134862.

The programs for A187947, the canonical program `A187947.P11780904534146498966` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187947 has offset 1).

The definition of A187947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187947.P17507287837298290327

`∪[A188292(n+1), A026351(n)]`
-/

namespace A187947.P17507287837298290327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P17507287837298290327

namespace A187947

/-- `∪[A188292(n+1), A026351(n)]` -/
def P17507287837298290327.Spec : Prop :=
  ∀ n, (P17507287837298290327.a n : ℤ) = A187947 (n + 1)

end A187947

/-! ## A187947.P11780904534146498966

`∪[A187485(n+1), A035337(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187947

/-- `∪[A187485(n+1), A035337(n)]` -/
def P11780904534146498966.Spec : Prop :=
  ∀ n, (P11780904534146498966.a n : ℤ) = A187947 (n + 1)

theorem P11780904534146498966.correct : P11780904534146498966.Spec := by
  intro n
  simp only [A187947, Nat.add_sub_cancel]

end A187947

/-! ## A187947.P15612969002487679984

`∪[A188013(n+1), A035337(n)]`
-/

namespace A187947.P15612969002487679984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P15612969002487679984

namespace A187947

/-- `∪[A188013(n+1), A035337(n)]` -/
def P15612969002487679984.Spec : Prop :=
  ∀ n, (P15612969002487679984.a n : ℤ) = A187947 (n + 1)

end A187947

/-! ## A187947.P1262842228069684745

`∪[A188033(n+1), A035337(n)]`
-/

namespace A187947.P1262842228069684745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P1262842228069684745

namespace A187947

/-- `∪[A188033(n+1), A035337(n)]` -/
def P1262842228069684745.Spec : Prop :=
  ∀ n, (P1262842228069684745.a n : ℤ) = A187947 (n + 1)

end A187947

/-! ## A187947.P3985919758801618326

`∪[A188437(n+1), A035337(n)]`
-/

namespace A187947.P3985919758801618326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P3985919758801618326

namespace A187947

/-- `∪[A188437(n+1), A035337(n)]` -/
def P3985919758801618326.Spec : Prop :=
  ∀ n, (P3985919758801618326.a n : ℤ) = A187947 (n + 1)

end A187947

/-! ## A187947.P78718990197899165

`comp[A035336(A001950(n+1))]+1`
-/

namespace A187947.P78718990197899165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A001950 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187947.P78718990197899165

namespace A187947

/-- `comp[A035336(A001950(n+1))]+1` -/
def P78718990197899165.Spec : Prop :=
  ∀ n, (P78718990197899165.a n : ℤ) = A187947 (n + 1)

end A187947

/-! ## A187947.P6297980538377877898

`eq[A187950(n+1), A188432(n+1)]`
-/

namespace A187947.P6297980538377877898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187947.P6297980538377877898

namespace A187947

/-- `eq[A187950(n+1), A188432(n+1)]` -/
def P6297980538377877898.Spec : Prop :=
  ∀ n, (P6297980538377877898.a n : ℤ) = A187947 (n + 1)

end A187947

/-!
# A187948: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

The programs for A187948, the canonical program `A187948.P2785729738803555643` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187948 has offset 1).

The definition of A187948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187948.P2785729738803555643

`char[A187953(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187948

/-- `char[A187953(n+1)-1]` -/
def P2785729738803555643.Spec : Prop :=
  ∀ n, (P2785729738803555643.a n : ℤ) = A187948 (n + 1)

theorem P2785729738803555643.correct : P2785729738803555643.Spec := by
  intro n
  simp only [A187948, Nat.add_sub_cancel]

end A187948

/-! ## A187948.P15747208392487579516

`A187950(n+3)+A123740(n+1)`
-/

namespace A187948.P15747208392487579516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (n + 3) + A123740 (n + 1)

end

end A187948.P15747208392487579516

namespace A187948

/-- `A187950(n+3)+A123740(n+1)` -/
def P15747208392487579516.Spec : Prop :=
  ∀ n, P15747208392487579516.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P9936718100821093305

`A188009(n+3)+A187950(n+3)`
-/

namespace A187948.P9936718100821093305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (n + 3) + A187950 (n + 3)

end

end A187948.P9936718100821093305

namespace A187948

/-- `A188009(n+3)+A187950(n+3)` -/
def P9936718100821093305.Spec : Prop :=
  ∀ n, P9936718100821093305.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P12319816991684606028

`A188017(n+7)`
-/

namespace A187948.P12319816991684606028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (n + 7)

end

end A187948.P12319816991684606028

namespace A187948

/-- `A188017(n+7)` -/
def P12319816991684606028.Spec : Prop :=
  ∀ n, P12319816991684606028.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P3483872036128601182

`A096270(A022417(n+1)+2)`
-/

namespace A187948.P3483872036128601182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A022417 (n + 1) + 2).toNat

end

end A187948.P3483872036128601182

namespace A187948

/-- `A096270(A022417(n+1)+2)` -/
def P3483872036128601182.Spec : Prop :=
  ∀ n, P3483872036128601182.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P17919510908987794768

`A339052(A022418(n+1)-1)`
-/

namespace A187948.P17919510908987794768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A022418 (n + 1) - 1).toNat

end

end A187948.P17919510908987794768

namespace A187948

/-- `A339052(A022418(n+1)-1)` -/
def P17919510908987794768.Spec : Prop :=
  ∀ n, P17919510908987794768.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P13772354634582365646

`A188027(A022419(n+1)-n)`
-/

namespace A187948.P13772354634582365646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A022419 (n + 1) - (n : ℤ)).toNat

end

end A187948.P13772354634582365646

namespace A187948

/-- `A188027(A022419(n+1)-n)` -/
def P13772354634582365646.Spec : Prop :=
  ∀ n, P13772354634582365646.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P3180237808707999539

`A005614(A005614(2*n)*A026272(n+2))`
-/

namespace A187948.P3180237808707999539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A005614 (2 * n) * A026272 (n + 2)).toNat

end

end A187948.P3180237808707999539

namespace A187948

/-- `A005614(A005614(2*n)*A026272(n+2))` -/
def P3180237808707999539.Spec : Prop :=
  ∀ n, P3180237808707999539.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P6075044800130657353

`A003849(A022417(n+1)+2)`
-/

namespace A187948.P6075044800130657353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A022417 (n + 1) + 2).toNat

end

end A187948.P6075044800130657353

namespace A187948

/-- `A003849(A022417(n+1)+2)` -/
def P6075044800130657353.Spec : Prop :=
  ∀ n, P6075044800130657353.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P14021642127705072907

`A187944(A022417(n+1))`
-/

namespace A187948.P14021642127705072907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187944 (A022417 (n + 1)).toNat

end

end A187948.P14021642127705072907

namespace A187948

/-- `A187944(A022417(n+1))` -/
def P14021642127705072907.Spec : Prop :=
  ∀ n, P14021642127705072907.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P14142989786154550791

`A014677(A022418(n+1))`
-/

namespace A187948.P14142989786154550791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (A022418 (n + 1)).toNat

end

end A187948.P14142989786154550791

namespace A187948

/-- `A014677(A022418(n+1))` -/
def P14142989786154550791.Spec : Prop :=
  ∀ n, P14142989786154550791.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P265321585923023726

`A188433(A022419(n+1))`
-/

namespace A187948.P265321585923023726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A022419 (n + 1)).toNat

end

end A187948.P265321585923023726

namespace A187948

/-- `A188433(A022419(n+1))` -/
def P265321585923023726.Spec : Prop :=
  ∀ n, P265321585923023726.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P1328477074822757675

`A089809(A022419(n+1)-2)`
-/

namespace A187948.P1328477074822757675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (A022419 (n + 1) - 2).toNat

end

end A187948.P1328477074822757675

namespace A187948

/-- `A089809(A022419(n+1)-2)` -/
def P1328477074822757675.Spec : Prop :=
  ∀ n, P1328477074822757675.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P17866547293772678688

`A188034(A096270(n)+A022419(n))`
-/

namespace A187948.P17866547293772678688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A096270 n + A022419 n).toNat

end

end A187948.P17866547293772678688

namespace A187948

/-- `A188034(A096270(n)+A022419(n))` -/
def P17866547293772678688.Spec : Prop :=
  ∀ n, P17866547293772678688.a n = A187948 (n + 1)

end A187948

/-! ## A187948.P7750678402897706665

`A383671(A022413(A022423(A022414(n+1))))`
-/

namespace A187948.P7750678402897706665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (A022413 (A022423 (A022414 (n + 1)).toNat).toNat).toNat

end

end A187948.P7750678402897706665

namespace A187948

/-- `A383671(A022413(A022423(A022414(n+1))))` -/
def P7750678402897706665.Spec : Prop :=
  ∀ n, P7750678402897706665.a n = A187948 (n + 1)

end A187948

/-!
# A187949: Positions of 0 in A187948; complement of A187953.

The programs for A187949, the canonical program `A187949.P1867237293283503002` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187949 has offset 1).

The definition of A187949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187949.P12580888532031987573

`ceil(ϕ*∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3])`
-/

namespace A187949.P12580888532031987573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)⌉

end

end A187949.P12580888532031987573

namespace A187949

/-- `ceil(ϕ*∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3])` -/
def P12580888532031987573.Spec : Prop :=
  ∀ n, P12580888532031987573.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P16573759475071734310

`round(ϕ*∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3])`
-/

namespace A187949.P16573759475071734310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ))

end

end A187949.P16573759475071734310

namespace A187949

/-- `round(ϕ*∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3])` -/
def P16573759475071734310.Spec : Prop :=
  ∀ n, P16573759475071734310.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P4347107035220117851

`round(ϕ*A187952(n+1))`
-/

namespace A187949.P4347107035220117851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A187952 (n + 1) : ℝ))

end

end A187949.P4347107035220117851

namespace A187949

/-- `round(ϕ*A187952(n+1))` -/
def P4347107035220117851.Spec : Prop :=
  ∀ n, P4347107035220117851.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P1867237293283503002

`A003622(A187485(n+1))+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187949

/-- `A003622(A187485(n+1))+1` -/
def P1867237293283503002.Spec : Prop :=
  ∀ n, P1867237293283503002.a n = A187949 (n + 1)

theorem P1867237293283503002.correct : P1867237293283503002.Spec := by
  intro n
  simp only [A187949, Nat.add_sub_cancel]

end A187949

/-! ## A187949.P7002364400450221809

`A003622(A219636(n+1)+1)+1`
-/

namespace A187949.P7002364400450221809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A219636 (n + 1) + 1).toNat + 1

end

end A187949.P7002364400450221809

namespace A187949

/-- `A003622(A219636(n+1)+1)+1` -/
def P7002364400450221809.Spec : Prop :=
  ∀ n, P7002364400450221809.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P16033885662937118751

`A187952(n+1)+A187485(n+1)`
-/

namespace A187949.P16033885662937118751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) + A187485 (n + 1)

end

end A187949.P16033885662937118751

namespace A187949

/-- `A187952(n+1)+A187485(n+1)` -/
def P16033885662937118751.Spec : Prop :=
  ∀ n, P16033885662937118751.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P14104412997591322033

`∪[A101868(n+1), A134861(n+1)]`
-/

namespace A187949.P14104412997591322033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P14104412997591322033

namespace A187949

/-- `∪[A101868(n+1), A134861(n+1)]` -/
def P14104412997591322033.Spec : Prop :=
  ∀ n, (P14104412997591322033.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P16711205071677067833

`∪[A134861(n+1), A188030(n+1)]`
-/

namespace A187949.P16711205071677067833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P16711205071677067833

namespace A187949

/-- `∪[A134861(n+1), A188030(n+1)]` -/
def P16711205071677067833.Spec : Prop :=
  ∀ n, (P16711205071677067833.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P8970771142484494419

`∪[A134861(n+1), A188434(n+1)]`
-/

namespace A187949.P8970771142484494419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P8970771142484494419

namespace A187949

/-- `∪[A134861(n+1), A188434(n+1)]` -/
def P8970771142484494419.Spec : Prop :=
  ∀ n, (P8970771142484494419.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P12725142660593589255

`∪[A134861(n+1), A190249(n+1)]`
-/

namespace A187949.P12725142660593589255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P12725142660593589255

namespace A187949

/-- `∪[A134861(n+1), A190249(n+1)]` -/
def P12725142660593589255.Spec : Prop :=
  ∀ n, (P12725142660593589255.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P3686339501134279105

`∪[A134861(n+1), A190428(n+1)]`
-/

namespace A187949.P3686339501134279105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P3686339501134279105

namespace A187949

/-- `∪[A134861(n+1), A190428(n+1)]` -/
def P3686339501134279105.Spec : Prop :=
  ∀ n, (P3686339501134279105.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P14055524164710207384

`∪[A134861(n+1), A190437(n+1)]`
-/

namespace A187949.P14055524164710207384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P14055524164710207384

namespace A187949

/-- `∪[A134861(n+1), A190437(n+1)]` -/
def P14055524164710207384.Spec : Prop :=
  ∀ n, (P14055524164710207384.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P18206887019321660778

`A187952(n+1)+A219636(n+1)+1`
-/

namespace A187949.P18206887019321660778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) + (A219636 (n + 1) + 1)

end

end A187949.P18206887019321660778

namespace A187949

/-- `A187952(n+1)+A219636(n+1)+1` -/
def P18206887019321660778.Spec : Prop :=
  ∀ n, P18206887019321660778.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P11587616731787222766

`∪[A134861(n+1), A134863(n+1)-A134861(n+1)]`
-/

namespace A187949.P11587616731787222766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1) - A134861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187949.P11587616731787222766

namespace A187949

/-- `∪[A134861(n+1), A134863(n+1)-A134861(n+1)]` -/
def P11587616731787222766.Spec : Prop :=
  ∀ n, (P11587616731787222766.a n : ℤ) = A187949 (n + 1)

end A187949

/-! ## A187949.P10201240467178226182

`A188473(n+2)-6`
-/

namespace A187949.P10201240467178226182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 2) - 6

end

end A187949.P10201240467178226182

namespace A187949

/-- `A188473(n+2)-6` -/
def P10201240467178226182.Spec : Prop :=
  ∀ n, P10201240467178226182.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P7446965781041855922

`A188018(n+3)-6`
-/

namespace A187949.P7446965781041855922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 3) - 6

end

end A187949.P7446965781041855922

namespace A187949

/-- `A188018(n+3)-6` -/
def P7446965781041855922.Spec : Prop :=
  ∀ n, P7446965781041855922.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P85933129961519903

`∑[abs(Δ[A188018(n+2)])]`
-/

namespace A187949.P85933129961519903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187949.P85933129961519903

namespace A187949

/-- `∑[abs(Δ[A188018(n+2)])]` -/
def P85933129961519903.Spec : Prop :=
  ∀ n, P85933129961519903.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P10457809912110634494

`A001950(floor(∑[∏[ϕ-n%2]]))`
-/

namespace A187949.P10457809912110634494
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - ((n % 2 : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A187949.P10457809912110634494

namespace A187949

/-- `A001950(floor(∑[∏[ϕ-n%2]]))` -/
def P10457809912110634494.Spec : Prop :=
  ∀ n, P10457809912110634494.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P3067836923182719439

`A001950(A187485(n+1))`
-/

namespace A187949.P3067836923182719439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A187485 (n + 1)).toNat

end

end A187949.P3067836923182719439

namespace A187949

/-- `A001950(A187485(n+1))` -/
def P3067836923182719439.Spec : Prop :=
  ∀ n, P3067836923182719439.a n = A187949 (n + 1)

end A187949

/-! ## A187949.P14685942115125549974

`A001950(A307295(n)-1)`
-/

namespace A187949.P14685942115125549974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A307295 n - 1).toNat

end

end A187949.P14685942115125549974

namespace A187949

/-- `A001950(A307295(n)-1)` -/
def P14685942115125549974.Spec : Prop :=
  ∀ n, P14685942115125549974.a n = A187949 (n + 1)

end A187949

/-!
# A187950: [nr+kr] - [nr] - [kr], where r = (1+sqrt(5))/2, k = 4, [.]=floor.

The programs for A187950, the canonical program `A187950.P3606201805614441045` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187950 has offset 1).

The definition of A187950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276757, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A187950.P3606201805614441045

`a(A276757(n+1)-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187950

/-- `a(A276757(n+1)-1)` -/
def P3606201805614441045.Spec : Prop :=
  ∀ n, (P3606201805614441045.a n : ℤ) = A187950 (n + 1)

theorem P3606201805614441045.correct : P3606201805614441045.Spec := by
  intro n
  simp only [A187950, Nat.add_sub_cancel]

end A187950

/-! ## A187950.P5503815056375710131

`char[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-1]`
-/

namespace A187950.P5503815056375710131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187950.P5503815056375710131

namespace A187950

/-- `char[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-1]` -/
def P5503815056375710131.Spec : Prop :=
  ∀ n, (P5503815056375710131.a n : ℤ) = A187950 (n + 1)

end A187950

/-! ## A187950.P8437535621512836829

`char[A187952(n+1)-1]`
-/

namespace A187950.P8437535621512836829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187950.P8437535621512836829

namespace A187950

/-- `char[A187952(n+1)-1]` -/
def P8437535621512836829.Spec : Prop :=
  ∀ n, (P8437535621512836829.a n : ℤ) = A187950 (n + 1)

end A187950

/-! ## A187950.P16512628287785237981

`char[∑[A284620(n+1)]+n]`
-/

namespace A187950.P16512628287785237981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187950.P16512628287785237981

namespace A187950

/-- `char[∑[A284620(n+1)]+n]` -/
def P16512628287785237981.Spec : Prop :=
  ∀ n, (P16512628287785237981.a n : ℤ) = A187950 (n + 1)

end A187950

/-! ## A187950.P15956467656923818799

`A005614(A187944(n+1)+n+2)`
-/

namespace A187950.P15956467656923818799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A187944 (n + 1) + (n + 2 : ℤ)).toNat

end

end A187950.P15956467656923818799

namespace A187950

/-- `A005614(A187944(n+1)+n+2)` -/
def P15956467656923818799.Spec : Prop :=
  ∀ n, P15956467656923818799.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P12809339566399734249

`A123740(n+1)+A123740(n+3)`
-/

namespace A187950.P12809339566399734249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (n + 1) + A123740 (n + 3)

end

end A187950.P12809339566399734249

namespace A187950

/-- `A123740(n+1)+A123740(n+3)` -/
def P12809339566399734249.Spec : Prop :=
  ∀ n, P12809339566399734249.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P12005676686464538033

`A003849(A319433(n)+A003849(n+1))`
-/

namespace A187950.P12005676686464538033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A319433 n + A003849 (n + 1)).toNat

end

end A187950.P12005676686464538033

namespace A187950

/-- `A003849(A319433(n)+A003849(n+1))` -/
def P12005676686464538033.Spec : Prop :=
  ∀ n, P12005676686464538033.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P12637734770968021078

`A003849(A005614(A019446(n+1))+n+1)`
-/

namespace A187950.P12637734770968021078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A005614 (A019446 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A187950.P12637734770968021078

namespace A187950

/-- `A003849(A005614(A019446(n+1))+n+1)` -/
def P12637734770968021078.Spec : Prop :=
  ∀ n, P12637734770968021078.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P14599224934284521321

`A003849(A005206(n+1)-A005614(n+1))`
-/

namespace A187950.P14599224934284521321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A005206 (n + 1) - A005614 (n + 1)).toNat

end

end A187950.P14599224934284521321

namespace A187950

/-- `A003849(A005206(n+1)-A005614(n+1))` -/
def P14599224934284521321.Spec : Prop :=
  ∀ n, P14599224934284521321.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P5905042820507359601

`A005614(n)*A187944(n+2)`
-/

namespace A187950.P5905042820507359601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A187944 (n + 2)

end

end A187950.P5905042820507359601

namespace A187950

/-- `A005614(n)*A187944(n+2)` -/
def P5905042820507359601.Spec : Prop :=
  ∀ n, P5905042820507359601.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P4800134382404042923

`A078588((n+1)*A187944(n+2))`
-/

namespace A187950.P4800134382404042923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 ((n + 1 : ℤ) * A187944 (n + 2)).toNat

end

end A187950.P4800134382404042923

namespace A187950

/-- `A078588((n+1)*A187944(n+2))` -/
def P4800134382404042923.Spec : Prop :=
  ∀ n, P4800134382404042923.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P18055603571466867861

`A078588(n+2-A187944(n+2))`
-/

namespace A187950.P18055603571466867861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 ((n + 2 : ℤ) - A187944 (n + 2)).toNat

end

end A187950.P18055603571466867861

namespace A187950

/-- `A078588(n+2-A187944(n+2))` -/
def P18055603571466867861.Spec : Prop :=
  ∀ n, P18055603571466867861.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P9016937228729922460

`A096270(n+1)*A187944(n+2)`
-/

namespace A187950.P9016937228729922460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1) * A187944 (n + 2)

end

end A187950.P9016937228729922460

namespace A187950

/-- `A096270(n+1)*A187944(n+2)` -/
def P9016937228729922460.Spec : Prop :=
  ∀ n, P9016937228729922460.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P15657632189346656810

`A114986(A014675(n)²+n)`
-/

namespace A187950.P15657632189346656810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A014675 n ^ 2 + (n : ℤ)).toNat

end

end A187950.P15657632189346656810

namespace A187950

/-- `A114986(A014675(n)²+n)` -/
def P15657632189346656810.Spec : Prop :=
  ∀ n, P15657632189346656810.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P5864244659632184808

`A296135((n+2)*A005614(n))`
-/

namespace A187950.P5864244659632184808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 ((n + 2 : ℤ) * A005614 n).toNat

end

end A187950.P5864244659632184808

namespace A187950

/-- `A296135((n+2)*A005614(n))` -/
def P5864244659632184808.Spec : Prop :=
  ∀ n, P5864244659632184808.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P6007110766329946638

`A114986(n+1)*A296135(n+2)`
-/

namespace A187950.P6007110766329946638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (n + 1) * A296135 (n + 2)

end

end A187950.P6007110766329946638

namespace A187950

/-- `A114986(n+1)*A296135(n+2)` -/
def P6007110766329946638.Spec : Prop :=
  ∀ n, P6007110766329946638.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P7469787216666607717

`A188014(n+5)`
-/

namespace A187950.P7469787216666607717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 5)

end

end A187950.P7469787216666607717

namespace A187950

/-- `A188014(n+5)` -/
def P7469787216666607717.Spec : Prop :=
  ∀ n, P7469787216666607717.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P10567961820377337790

`A003849(A022414(n+1)-(n+1))`
-/

namespace A187950.P10567961820377337790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A022414 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187950.P10567961820377337790

namespace A187950

/-- `A003849(A022414(n+1)-(n+1))` -/
def P10567961820377337790.Spec : Prop :=
  ∀ n, P10567961820377337790.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P5877639209242776560

`A188034(A022419(n+1)-n)`
-/

namespace A187950.P5877639209242776560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A022419 (n + 1) - (n : ℤ)).toNat

end

end A187950.P5877639209242776560

namespace A187950

/-- `A188034(A022419(n+1)-n)` -/
def P5877639209242776560.Spec : Prop :=
  ∀ n, P5877639209242776560.a n = A187950 (n + 1)

end A187950

/-! ## A187950.P10243442229048837637

`A003849(A050141(2*n+1)+n+1)`
-/

namespace A187950.P10243442229048837637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A050141 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A187950.P10243442229048837637

namespace A187950

/-- `A003849(A050141(2*n+1)+n+1)` -/
def P10243442229048837637.Spec : Prop :=
  ∀ n, P10243442229048837637.a n = A187950 (n + 1)

end A187950

/-!
# A187951: Positions of 0 in A187950; complement of A187952.

The programs for A187951, the canonical program `A187951.P5704434848721015730` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187951 has offset 1).

The definition of A187951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187951.P5704434848721015730

`comp[A188468(n+1)-4]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187951

/-- `comp[A188468(n+1)-4]` -/
def P5704434848721015730.Spec : Prop :=
  ∀ n, (P5704434848721015730.a n : ℤ) = A187951 (n + 1)

theorem P5704434848721015730.correct : P5704434848721015730.Spec := by
  intro n
  simp only [A187951, Nat.add_sub_cancel]

end A187951

/-! ## A187951.P18354781627142537421

`ceil(ϕ*A187945(n+1))`
-/

namespace A187951.P18354781627142537421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A187945 (n + 1) : ℝ)⌉

end

end A187951.P18354781627142537421

namespace A187951

/-- `ceil(ϕ*A187945(n+1))` -/
def P18354781627142537421.Spec : Prop :=
  ∀ n, P18354781627142537421.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P13763439282610725934

`ceil(ϕ*(comp[A134860(n+1)]+1))`
-/

namespace A187951.P13763439282610725934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℝ)⌉

end

end A187951.P13763439282610725934

namespace A187951

/-- `ceil(ϕ*(comp[A134860(n+1)]+1))` -/
def P13763439282610725934.Spec : Prop :=
  ∀ n, P13763439282610725934.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P17291917967330471726

`∪[A001950(n+1), A134860(n+1)]`
-/

namespace A187951.P17291917967330471726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P17291917967330471726

namespace A187951

/-- `∪[A001950(n+1), A134860(n+1)]` -/
def P17291917967330471726.Spec : Prop :=
  ∀ n, (P17291917967330471726.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P942423447471957410

`∪[A005653(n+1), A134860(n+1)]`
-/

namespace A187951.P942423447471957410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P942423447471957410

namespace A187951

/-- `∪[A005653(n+1), A134860(n+1)]` -/
def P942423447471957410.Spec : Prop :=
  ∀ n, (P942423447471957410.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P17728240942646609185

`∪[A005653(n+1), A188290(n+1)]`
-/

namespace A187951.P17728240942646609185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P17728240942646609185

namespace A187951

/-- `∪[A005653(n+1), A188290(n+1)]` -/
def P17728240942646609185.Spec : Prop :=
  ∀ n, (P17728240942646609185.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P16463551663269520983

`∪[A134860(n+1), A188016(n+1)]`
-/

namespace A187951.P16463551663269520983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P16463551663269520983

namespace A187951

/-- `∪[A134860(n+1), A188016(n+1)]` -/
def P16463551663269520983.Spec : Prop :=
  ∀ n, (P16463551663269520983.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P4830893847309630436

`∪[A134860(n+1), A188036(n+1)]`
-/

namespace A187951.P4830893847309630436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P4830893847309630436

namespace A187951

/-- `∪[A134860(n+1), A188036(n+1)]` -/
def P4830893847309630436.Spec : Prop :=
  ∀ n, (P4830893847309630436.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P17300497652019340346

`∪[A134860(n+1), A188468(n+1)]`
-/

namespace A187951.P17300497652019340346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P17300497652019340346

namespace A187951

/-- `∪[A134860(n+1), A188468(n+1)]` -/
def P17300497652019340346.Spec : Prop :=
  ∀ n, (P17300497652019340346.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P1244454392351057935

`∪[A187949(n+1)+2, A187949(n+1)]`
-/

namespace A187951.P1244454392351057935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P1244454392351057935

namespace A187951

/-- `∪[A187949(n+1)+2, A187949(n+1)]` -/
def P1244454392351057935.Spec : Prop :=
  ∀ n, (P1244454392351057935.a n : ℤ) = A187951 (n + 1)

end A187951

/-! ## A187951.P13071546974405441346

`ceil(ϕ*comp[(A022342(n+1)+2+n)*A003849(n)])`
-/

namespace A187951.P13071546974405441346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022342 (n + 1) + 2 + (n : ℤ)) * A003849 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉

end

end A187951.P13071546974405441346

namespace A187951

/-- `ceil(ϕ*comp[(A022342(n+1)+2+n)*A003849(n)])` -/
def P13071546974405441346.Spec : Prop :=
  ∀ n, P13071546974405441346.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P5166453232046130684

`A188469(n+3)-4`
-/

namespace A187951.P5166453232046130684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 3) - 4

end

end A187951.P5166453232046130684

namespace A187951

/-- `A188469(n+3)-4` -/
def P5166453232046130684.Spec : Prop :=
  ∀ n, P5166453232046130684.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P16288778215673860440

`A188015(n+4)-4`
-/

namespace A187951.P16288778215673860440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 4) - 4

end

end A187951.P16288778215673860440

namespace A187951

/-- `A188015(n+4)-4` -/
def P16288778215673860440.Spec : Prop :=
  ∀ n, P16288778215673860440.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P6399849546770598184

`A004956(A187945(n+1))`
-/

namespace A187951.P6399849546770598184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A187945 (n + 1)).toNat

end

end A187951.P6399849546770598184

namespace A187951

/-- `A004956(A187945(n+1))` -/
def P6399849546770598184.Spec : Prop :=
  ∀ n, P6399849546770598184.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P9046243224266113541

`A026351(A188437(n+4)-3)`
-/

namespace A187951.P9046243224266113541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A188437 (n + 4) - 3).toNat

end

end A187951.P9046243224266113541

namespace A187951

/-- `A026351(A188437(n+4)-3)` -/
def P9046243224266113541.Spec : Prop :=
  ∀ n, P9046243224266113541.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P7868495373023053366

`A000201(∪[A000201(n+1), A026273(n+1)])+1`
-/

namespace A187951.P7868495373023053366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A187951.P7868495373023053366

namespace A187951

/-- `A000201(∪[A000201(n+1), A026273(n+1)])+1` -/
def P7868495373023053366.Spec : Prop :=
  ∀ n, P7868495373023053366.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P9959986405765786257

`A000201(∪[A000201(n+1), A035336(n+1)])+1`
-/

namespace A187951.P9959986405765786257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A187951.P9959986405765786257

namespace A187951

/-- `A000201(∪[A000201(n+1), A035336(n+1)])+1` -/
def P9959986405765786257.Spec : Prop :=
  ∀ n, P9959986405765786257.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P13282717206847606084

`A000201(∪[A000201(n+1), A188262(n+1)])+1`
-/

namespace A187951.P13282717206847606084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A187951.P13282717206847606084

namespace A187951

/-- `A000201(∪[A000201(n+1), A188262(n+1)])+1` -/
def P13282717206847606084.Spec : Prop :=
  ∀ n, P13282717206847606084.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P11351541547345352825

`A058065(A187945(n+1)+1)-1`
-/

namespace A187951.P11351541547345352825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (A187945 (n + 1) + 1).toNat - 1

end

end A187951.P11351541547345352825

namespace A187951

/-- `A058065(A187945(n+1)+1)-1` -/
def P11351541547345352825.Spec : Prop :=
  ∀ n, P11351541547345352825.a n = A187951 (n + 1)

end A187951

/-! ## A187951.P6790013242139381955

`∩[A187485(n+1)-2, A187485(n+1)]`
-/

namespace A187951.P6790013242139381955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187951.P6790013242139381955

namespace A187951

/-- `∩[A187485(n+1)-2, A187485(n+1)]` -/
def P6790013242139381955.Spec : Prop :=
  ∀ n, (P6790013242139381955.a n : ℤ) = A187951 (n + 1)

end A187951

/-!
# A187952: Positions of 1 in A187950; complement of A187951.

The programs for A187952, the canonical program `A187952.P10173740546153633473` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187952 has offset 1).

The definition of A187952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187952.P10678936473974666745

`∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]`
-/

namespace A187952.P10678936473974666745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P10678936473974666745

namespace A187952

/-- `∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]` -/
def P10678936473974666745.Spec : Prop :=
  ∀ n, (P10678936473974666745.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P10906028542919013769

`∑[A284620(n+1)+1]`
-/

namespace A187952.P10906028542919013769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187952.P10906028542919013769

namespace A187952

/-- `∑[A284620(n+1)+1]` -/
def P10906028542919013769.Spec : Prop :=
  ∀ n, P10906028542919013769.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P4507689908054792491

`floor(ϕ*A187485(n+1))`
-/

namespace A187952.P4507689908054792491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A187485 (n + 1) : ℝ)⌋

end

end A187952.P4507689908054792491

namespace A187952

/-- `floor(ϕ*A187485(n+1))` -/
def P4507689908054792491.Spec : Prop :=
  ∀ n, P4507689908054792491.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P6056766993653045176

`A137708(n+1)+ceil(n/2)`
-/

namespace A187952.P6056766993653045176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (n + 1) + ⌈(n : ℚ) / 2⌉

end

end A187952.P6056766993653045176

namespace A187952

/-- `A137708(n+1)+ceil(n/2)` -/
def P6056766993653045176.Spec : Prop :=
  ∀ n, P6056766993653045176.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P14737342636407113380

`A307294(n)+A219636(n+1)`
-/

namespace A187952.P14737342636407113380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 n + A219636 (n + 1)

end

end A187952.P14737342636407113380

namespace A187952

/-- `A307294(n)+A219636(n+1)` -/
def P14737342636407113380.Spec : Prop :=
  ∀ n, P14737342636407113380.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P5500008600845423211

`A187581(n+1)-A080513(n)`
-/

namespace A187952.P5500008600845423211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 1) - A080513 n

end

end A187952.P5500008600845423211

namespace A187952

/-- `A187581(n+1)-A080513(n)` -/
def P5500008600845423211.Spec : Prop :=
  ∀ n, P5500008600845423211.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P13624823916654058820

`∪[A095098(n+1), A026352(n)]`
-/

namespace A187952.P13624823916654058820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P13624823916654058820

namespace A187952

/-- `∪[A095098(n+1), A026352(n)]` -/
def P13624823916654058820.Spec : Prop :=
  ∀ n, (P13624823916654058820.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P15230423309919778811

`∪[A134859(n+1), A026352(n)]`
-/

namespace A187952.P15230423309919778811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P15230423309919778811

namespace A187952

/-- `∪[A134859(n+1), A026352(n)]` -/
def P15230423309919778811.Spec : Prop :=
  ∀ n, (P15230423309919778811.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P12369122668833890487

`∪[A151915(n+1), A026352(n)]`
-/

namespace A187952.P12369122668833890487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P12369122668833890487

namespace A187952

/-- `∪[A151915(n+1), A026352(n)]` -/
def P12369122668833890487.Spec : Prop :=
  ∀ n, (P12369122668833890487.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P10173740546153633473

`A060145(A008619(n))+Δ[n²]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187952

/-- `A060145(A008619(n))+Δ[n²]` -/
def P10173740546153633473.Spec : Prop :=
  ∀ n, P10173740546153633473.a n = A187952 (n + 1)

theorem P10173740546153633473.correct : P10173740546153633473.Spec := by
  intro n
  simp only [A187952, Nat.add_sub_cancel]

end A187952

/-! ## A187952.P15782959151330164314

`A187949(n+1)-A187485(n+1)`
-/

namespace A187952.P15782959151330164314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1) - A187485 (n + 1)

end

end A187952.P15782959151330164314

namespace A187952

/-- `A187949(n+1)-A187485(n+1)` -/
def P15782959151330164314.Spec : Prop :=
  ∀ n, P15782959151330164314.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P13587113465600776091

`2*A187485(n+1)-A008619(n)`
-/

namespace A187952.P13587113465600776091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187485 (n + 1) - A008619 n

end

end A187952.P13587113465600776091

namespace A187952

/-- `2*A187485(n+1)-A008619(n)` -/
def P13587113465600776091.Spec : Prop :=
  ∀ n, P13587113465600776091.a n = A187952 (n + 1)

end A187952

/-! ## A187952.P513692100957938209

`∪[A003234(n+1), A134859(n+1)]`
-/

namespace A187952.P513692100957938209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P513692100957938209

namespace A187952

/-- `∪[A003234(n+1), A134859(n+1)]` -/
def P513692100957938209.Spec : Prop :=
  ∀ n, (P513692100957938209.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P10058785833676145199

`∪[A003623(n+1), A134859(n+1)]`
-/

namespace A187952.P10058785833676145199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P10058785833676145199

namespace A187952

/-- `∪[A003623(n+1), A134859(n+1)]` -/
def P10058785833676145199.Spec : Prop :=
  ∀ n, (P10058785833676145199.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P13706685920203196693

`∪[A134859(n+1), A140400(n+1)]`
-/

namespace A187952.P13706685920203196693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P13706685920203196693

namespace A187952

/-- `∪[A134859(n+1), A140400(n+1)]` -/
def P13706685920203196693.Spec : Prop :=
  ∀ n, (P13706685920203196693.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P14631202980297240664

`∪[A095098(n+1), A188028(n+1)]`
-/

namespace A187952.P14631202980297240664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P14631202980297240664

namespace A187952

/-- `∪[A095098(n+1), A188028(n+1)]` -/
def P14631202980297240664.Spec : Prop :=
  ∀ n, (P14631202980297240664.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P17220536209001765521

`∪[A140400(n+1), A151915(n+1)]`
-/

namespace A187952.P17220536209001765521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P17220536209001765521

namespace A187952

/-- `∪[A140400(n+1), A151915(n+1)]` -/
def P17220536209001765521.Spec : Prop :=
  ∀ n, (P17220536209001765521.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P16376612913408764030

`∪[A134859(n+1), A188018(n+1)]`
-/

namespace A187952.P16376612913408764030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P16376612913408764030

namespace A187952

/-- `∪[A134859(n+1), A188018(n+1)]` -/
def P16376612913408764030.Spec : Prop :=
  ∀ n, (P16376612913408764030.a n : ℤ) = A187952 (n + 1)

end A187952

/-! ## A187952.P6704205215607940529

`∪[A134859(n+1), A188028(n+1)]`
-/

namespace A187952.P6704205215607940529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187952.P6704205215607940529

namespace A187952

/-- `∪[A134859(n+1), A188028(n+1)]` -/
def P6704205215607940529.Spec : Prop :=
  ∀ n, (P6704205215607940529.a n : ℤ) = A187952 (n + 1)

end A187952

/-!
# A187953: Positions of 1 in A187948; complement of A187949.

The programs for A187953, the canonical program `A187953.P13392832314913242653` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187953 has offset 1).

The definition of A187953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187953.P18083956366401730599

`comp[A188473(n+1)-7]+1`
-/

namespace A187953.P18083956366401730599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187953.P18083956366401730599

namespace A187953

/-- `comp[A188473(n+1)-7]+1` -/
def P18083956366401730599.Spec : Prop :=
  ∀ n, (P18083956366401730599.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P13392832314913242653

`A163801(A004396(n))+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187953

/-- `A163801(A004396(n))+1+n` -/
def P13392832314913242653.Spec : Prop :=
  ∀ n, P13392832314913242653.a n = A187953 (n + 1)

theorem P13392832314913242653.correct : P13392832314913242653.Spec := by
  intro n
  simp only [A187953, Nat.add_sub_cancel]

end A187953

/-! ## A187953.P8255567009536716940

`∪[A000201(n+1), A134863(n+1)]`
-/

namespace A187953.P8255567009536716940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187953.P8255567009536716940

namespace A187953

/-- `∪[A000201(n+1), A134863(n+1)]` -/
def P8255567009536716940.Spec : Prop :=
  ∀ n, (P8255567009536716940.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P12460722708372662521

`∪[A134863(n+1), A188024(n+1)]`
-/

namespace A187953.P12460722708372662521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187953.P12460722708372662521

namespace A187953

/-- `∪[A134863(n+1), A188024(n+1)]` -/
def P12460722708372662521.Spec : Prop :=
  ∀ n, (P12460722708372662521.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P7591803885169800581

`∪[A187952(n+2)-2, A187952(n+2)]`
-/

namespace A187953.P7591803885169800581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187953.P7591803885169800581

namespace A187953

/-- `∪[A187952(n+2)-2, A187952(n+2)]` -/
def P7591803885169800581.Spec : Prop :=
  ∀ n, (P7591803885169800581.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P10822323969969033773

`∪[A058065(n+1)+n, A066096(n+1)]`
-/

namespace A187953.P10822323969969033773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187953.P10822323969969033773

namespace A187953

/-- `∪[A058065(n+1)+n, A066096(n+1)]` -/
def P10822323969969033773.Spec : Prop :=
  ∀ n, (P10822323969969033773.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P8762954264522255712

`comp[A001950(n+1)*A005713(n)]`
-/

namespace A187953.P8762954264522255712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) * A005713 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187953.P8762954264522255712

namespace A187953

/-- `comp[A001950(n+1)*A005713(n)]` -/
def P8762954264522255712.Spec : Prop :=
  ∀ n, (P8762954264522255712.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P9741899288504992650

`record[(n+1)*A187948(n+1)]`
-/

namespace A187953.P9741899288504992650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187953.P9741899288504992650

namespace A187953

/-- `record[(n+1)*A187948(n+1)]` -/
def P9741899288504992650.Spec : Prop :=
  ∀ n, P9741899288504992650.a n = A187953 (n + 1)

end A187953

/-! ## A187953.P14480886353477971843

`filter[A187945(n+1), A187948(#)]`
-/

namespace A187953.P14480886353477971843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187948 (f1 j).toNat = 1) n)

end

end A187953.P14480886353477971843

namespace A187953

/-- `filter[A187945(n+1), A187948(#)]` -/
def P14480886353477971843.Spec : Prop :=
  ∀ n, P14480886353477971843.a n = A187953 (n + 1)

end A187953

/-! ## A187953.P3515854338732478197

`filter[A188010(n+1), A187948(#)]`
-/

namespace A187953.P3515854338732478197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187948 (f1 j).toNat = 1) n)

end

end A187953.P3515854338732478197

namespace A187953

/-- `filter[A188010(n+1), A187948(#)]` -/
def P3515854338732478197.Spec : Prop :=
  ∀ n, P3515854338732478197.a n = A187953 (n + 1)

end A187953

/-! ## A187953.P247920071528908768

`filter[A188435(n+1), A187948(#)]`
-/

namespace A187953.P247920071528908768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187948 (f1 j).toNat = 1) n)

end

end A187953.P247920071528908768

namespace A187953

/-- `filter[A188435(n+1), A187948(#)]` -/
def P247920071528908768.Spec : Prop :=
  ∀ n, P247920071528908768.a n = A187953 (n + 1)

end A187953

/-! ## A187953.P18435198969860562956

`lt[A329130(n)+1, A016777(A189663(n+1))]`
-/

namespace A187953.P18435198969860562956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A189663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187953.P18435198969860562956

namespace A187953

/-- `lt[A329130(n)+1, A016777(A189663(n+1))]` -/
def P18435198969860562956.Spec : Prop :=
  ∀ n, (P18435198969860562956.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P2103658699270026627

`comp[A002251(n+1)*A188014(n+5)]`
-/

namespace A187953.P2103658699270026627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) * A188014 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187953.P2103658699270026627

namespace A187953

/-- `comp[A002251(n+1)*A188014(n+5)]` -/
def P2103658699270026627.Spec : Prop :=
  ∀ n, (P2103658699270026627.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P2605728828534160337

`filter[A038459(n+1), A187948(#)]`
-/

namespace A187953.P2605728828534160337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187948 (f1 j).toNat = 1) n)

end

end A187953.P2605728828534160337

namespace A187953

/-- `filter[A038459(n+1), A187948(#)]` -/
def P2605728828534160337.Spec : Prop :=
  ∀ n, P2605728828534160337.a n = A187953 (n + 1)

end A187953

/-! ## A187953.P15277963814041091049

`eq[A019426(n), A187948(A065033(n))]/2`
-/

namespace A187953.P15277963814041091049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187948 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A187953.P15277963814041091049

namespace A187953

/-- `eq[A019426(n), A187948(A065033(n))]/2` -/
def P15277963814041091049.Spec : Prop :=
  ∀ n, P15277963814041091049.a n = (A187953 (n + 1) : ℚ)

end A187953

/-! ## A187953.P12303902448860267534

`eq[A019426(2*n), A187948(A065033(2*n))]`
-/

namespace A187953.P12303902448860267534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187948 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187953.P12303902448860267534

namespace A187953

/-- `eq[A019426(2*n), A187948(A065033(2*n))]` -/
def P12303902448860267534.Spec : Prop :=
  ∀ n, (P12303902448860267534.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P6667327017336395961

`lt[A022420(n+1), A022419(A022418(n))]`
-/

namespace A187953.P6667327017336395961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022419 (A022418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187953.P6667327017336395961

namespace A187953

/-- `lt[A022420(n+1), A022419(A022418(n))]` -/
def P6667327017336395961.Spec : Prop :=
  ∀ n, (P6667327017336395961.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P15253018708085531308

`lt[2*A022419(n), A022419(A022418(n))]`
-/

namespace A187953.P15253018708085531308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022419 (A022418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187953.P15253018708085531308

namespace A187953

/-- `lt[2*A022419(n), A022419(A022418(n))]` -/
def P15253018708085531308.Spec : Prop :=
  ∀ n, (P15253018708085531308.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P18197395078438928217

`lt[2, A022419(A022418(n))/A022420(n)]`
-/

namespace A187953.P18197395078438928217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022419 (A022418 n).toNat : ℚ) / (A022420 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A187953.P18197395078438928217

namespace A187953

/-- `lt[2, A022419(A022418(n))/A022420(n)]` -/
def P18197395078438928217.Spec : Prop :=
  ∀ n, (P18197395078438928217.a n : ℤ) = A187953 (n + 1)

end A187953

/-! ## A187953.P16007748630095892007

`lt[A329130(n), A189663(A016777(n))]`
-/

namespace A187953.P16007748630095892007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187953.P16007748630095892007

namespace A187953

/-- `lt[A329130(n), A189663(A016777(n))]` -/
def P16007748630095892007.Spec : Prop :=
  ∀ n, (P16007748630095892007.a n : ℤ) = A187953 (n + 1)

end A187953

/-!
# A187954: Triangle by rows, divisors of odd integers.

The programs for A187954, the canonical program `A187954.P4208797145457920853` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187954 has offset 0).

The definition of A187954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187954.P4208797145457920853

`A127093(A185868(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187954

/-- `A127093(A185868(n+1))` -/
def P4208797145457920853.Spec : Prop :=
  ∀ n, P4208797145457920853.a n = A187954 n

theorem P4208797145457920853.correct : P4208797145457920853.Spec := by
  intro n
  simp only [A187954]

end A187954

/-! ## A187954.P4774996273400856630

`A114000(n)*A158405(n+1)`
-/

namespace A187954.P4774996273400856630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114000 n * A158405 (n + 1)

end

end A187954.P4774996273400856630

namespace A187954

/-- `A114000(n)*A158405(n+1)` -/
def P4774996273400856630.Spec : Prop :=
  ∀ n, P4774996273400856630.a n = A187954 n

end A187954

/-! ## A187954.P15677321273963683517

`C(A158405(n+1), A064801(A338876(n)))`
-/

namespace A187954.P15677321273963683517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (n + 1)).toNat (A064801 (A338876 n).toNat).toNat

end

end A187954.P15677321273963683517

namespace A187954

/-- `C(A158405(n+1), A064801(A338876(n)))` -/
def P15677321273963683517.Spec : Prop :=
  ∀ n, (P15677321273963683517.a n : ℤ) = A187954 n

end A187954

/-!
# A187955: Half the number of (n+2)X(n+2) binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187955, there is no canonical definition to state claims against.
-/

/-! ## A187955.P13706550200137217044

`A187964(∑[4*n]+1)`
-/

namespace A187955.P13706550200137217044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187955.P13706550200137217044

/-!
# A187956: Half the number of (n+2) X 3 binary arrays with no 3 X 3 subblock having a sum equal to any horizontal or vertical neighbor 3 X 3 subblock sum.

The programs for A187956, there is no canonical definition to state claims against.
-/

/-! ## A187956.P17309130600362656954

`A187964(∑[n]+1)`
-/

namespace A187956.P17309130600362656954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187956.P17309130600362656954

/-! ## A187956.P7306949697779839538

`lcm(2, A187964(A000124(n)))`
-/

namespace A187956.P7306949697779839538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187964 (A000124 n).toNat)

end

end A187956.P7306949697779839538

/-! ## A187956.P5749400525553819314

`record[A187964(A056536(n+1))]`
-/

namespace A187956.P5749400525553819314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187956.P5749400525553819314

/-! ## A187956.P1464219586028033078

`record[A187964(A246276(n+1))]`
-/

namespace A187956.P1464219586028033078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187956.P1464219586028033078

/-! ## A187956.P7344443677575776316

`record[A187964(A286244(n+1))]`
-/

namespace A187956.P7344443677575776316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187956.P7344443677575776316

/-!
# A187957: Half the number of (n+2)X4 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187957, there is no canonical definition to state claims against.
-/

/-! ## A187957.P17837628752933955787

`A187964(∑[n+1]+2)`
-/

namespace A187957.P17837628752933955787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187957.P17837628752933955787

/-! ## A187957.P3819865971716858522

`lcm(2, A187964(A133263(n+1)))`
-/

namespace A187957.P3819865971716858522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187964 (A133263 (n + 1)).toNat)

end

end A187957.P3819865971716858522

/-! ## A187957.P5988378805986545308

`record[A187964(A056536(n+1)+1)]`
-/

namespace A187957.P5988378805986545308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187957.P5988378805986545308

/-! ## A187957.P8838208176510577664

`record[A187964(A038722(n+1)+2)]`
-/

namespace A187957.P8838208176510577664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A038722 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187957.P8838208176510577664

/-! ## A187957.P7971819524314346769

`record[gcd(A122204(n), A187964(n+3))]`
-/

namespace A187957.P7971819524314346769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122204 n) (A187964 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187957.P7971819524314346769

/-!
# A187958: Half the number of (n+2)X5 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187958, there is no canonical definition to state claims against.
-/

/-! ## A187958.P14161060934201339017

`A187964(∑[n+2]+4)`
-/

namespace A187958.P14161060934201339017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187958.P14161060934201339017

/-! ## A187958.P8069481816012272071

`lcm(2, A187964(A167614(n+1)))`
-/

namespace A187958.P8069481816012272071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187964 (A167614 (n + 1)).toNat)

end

end A187958.P8069481816012272071

/-! ## A187958.P7046487070453670894

`record[root(A187964(n+4), A187926(n))]`
-/

namespace A187958.P7046487070453670894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187964 (n + 4) : ℝ) ^ (1 / (A187926 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187958.P7046487070453670894

/-! ## A187958.P11129389000388097081

`A187964(A167614(n+1))+A011738(n)`
-/

namespace A187958.P11129389000388097081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A167614 (n + 1)).toNat + A011738 n

end

end A187958.P11129389000388097081

/-! ## A187958.P10047153513908704882

`A187964(A167614(n+1))+A026816(n)`
-/

namespace A187958.P10047153513908704882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A167614 (n + 1)).toNat + A026816 n

end

end A187958.P10047153513908704882

/-!
# A187959: Half the number of (n+2)X6 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187959, there is no canonical definition to state claims against.
-/

/-! ## A187959.P16810938462869742993

`A187964(∑[n+3]+7)`
-/

namespace A187959.P16810938462869742993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187959.P16810938462869742993

/-! ## A187959.P3048639529452213013

`A039754(n)*A187964(A055998(n+2))`
-/

namespace A187959.P3048639529452213013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 n * A187964 (A055998 (n + 2)).toNat

end

end A187959.P3048639529452213013

/-! ## A187959.P210817013198511424

`lcm(A087960(n), A187964(A055998(n+2)))`
-/

namespace A187959.P210817013198511424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A187964 (A055998 (n + 2)).toNat)

end

end A187959.P210817013198511424

/-!
# A187960: Half the number of (n+2)X7 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187960, there is no canonical definition to state claims against.
-/

/-! ## A187960.P4346514579896978844

`A187964(A374005(n+1))`
-/

namespace A187960.P4346514579896978844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A374005 (n + 1)).toNat

end

end A187960.P4346514579896978844

/-! ## A187960.P16627334741900305410

`A187964(A155212(n)+13)`
-/

namespace A187960.P16627334741900305410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A155212 n + 13).toNat

end

end A187960.P16627334741900305410

/-! ## A187960.P18383300660931993811

`A187964(A056000(n)+15)`
-/

namespace A187960.P18383300660931993811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A056000 n + 15).toNat

end

end A187960.P18383300660931993811

/-!
# A187961: Half the number of (n+2)X8 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187961, there is no canonical definition to state claims against.
-/

/-! ## A187961.P4100200711615447856

`A187964(A374007(n+1))`
-/

namespace A187961.P4100200711615447856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A374007 (n + 1)).toNat

end

end A187961.P4100200711615447856

/-!
# A187962: Half the number of (n+2)X9 binary arrays with no 3X3 subblock having a sum equal to any horizontal or vertical neighbor 3X3 subblock sum.

The programs for A187962, there is no canonical definition to state claims against.
-/

/-! ## A187962.P858058215391478461

`A187964(A055999(n+4))`
-/

namespace A187962.P858058215391478461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187964 (A055999 (n + 4)).toNat

end

end A187962.P858058215391478461

/-!
# A187965: Numbers k such that 2^k - 1 and 2^k + 1 are not squarefree.

The programs for A187965, there is no canonical definition to state claims against.
-/

/-! ## A187965.P2556697179732290336

`∩[A049094(n+1), A049096(n+1)]`
-/

namespace A187965.P2556697179732290336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187965.P2556697179732290336

/-! ## A187965.P9036445296342082358

`A179282(n+2)-1`
-/

namespace A187965.P9036445296342082358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 2) - 1

end

end A187965.P9036445296342082358

/-! ## A187965.P5605131011086317162

`∑[abs(Δ[A179282(n+1)])]`
-/

namespace A187965.P5605131011086317162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187965.P5605131011086317162

/-! ## A187965.P12356256920443013016

`A023443(A179282(n+2))`
-/

namespace A187965.P12356256920443013016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A179282 (n + 2)).toNat

end

end A187965.P12356256920443013016

/-! ## A187965.P6342341652830477169

`∑[A000027(Δ[A179282(n+1)])]`
-/

namespace A187965.P6342341652830477169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187965.P6342341652830477169

/-! ## A187965.P740419637876228889

`∑[A028310(Δ[A179282(n+1)])]`
-/

namespace A187965.P740419637876228889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187965.P740419637876228889

/-! ## A187965.P12643999508217292143

`∑[Δ[A179282(n+1)]%A016959(n)]`
-/

namespace A187965.P12643999508217292143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A016959 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187965.P12643999508217292143

/-! ## A187965.P17092276027789601771

`∑[Δ[A179282(n+1)]+A008683(8*n+4)]`
-/

namespace A187965.P17092276027789601771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187965.P17092276027789601771

/-!
# A187967: a(n) = floor((n+k)*r) - floor(n*r) - floor(k*r), where r=sqrt(2), k=2.

The programs for A187967, the canonical program `A187967.P10014398144128110312` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187967 has offset 1).

The definition of A187967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187967.P10014398144128110312

`abs(Δ[A159684(n)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187967

/-- `abs(Δ[A159684(n)])` -/
def P10014398144128110312.Spec : Prop :=
  ∀ n, P10014398144128110312.a n = A187967 (n + 1)

theorem P10014398144128110312.correct : P10014398144128110312.Spec := by
  intro n
  simp only [A187967, Nat.add_sub_cancel]

end A187967

/-! ## A187967.P14360381591857720632

`1-char[A140868(n+1)]`
-/

namespace A187967.P14360381591857720632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187967.P14360381591857720632

namespace A187967

/-- `1-char[A140868(n+1)]` -/
def P14360381591857720632.Spec : Prop :=
  ∀ n, P14360381591857720632.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P12138671828050938115

`char[A187968(n+1)-1]`
-/

namespace A187967.P12138671828050938115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187967.P12138671828050938115

namespace A187967

/-- `char[A187968(n+1)-1]` -/
def P12138671828050938115.Spec : Prop :=
  ∀ n, (P12138671828050938115.a n : ℤ) = A187967 (n + 1)

end A187967

/-! ## A187967.P3588825928743733479

`char[comp[A276879(n+1)-2]]`
-/

namespace A187967.P3588825928743733479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276879 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A187967.P3588825928743733479

namespace A187967

/-- `char[comp[A276879(n+1)-2]]` -/
def P3588825928743733479.Spec : Prop :=
  ∀ n, (P3588825928743733479.a n : ℤ) = A187967 (n + 1)

end A187967

/-! ## A187967.P11836185609136629390

`A187972(n-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A187967.P11836185609136629390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187972 ((n : ℤ) - a (n - 2)).toNat

end

end A187967.P11836185609136629390

namespace A187967

/-- `A187972(n-a(n-2))` -/
def P11836185609136629390.Spec : Prop :=
  ∀ n, P11836185609136629390.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P6765501046792023347

`1-char[A098021(n+1)-1]`
-/

namespace A187967.P6765501046792023347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187967.P6765501046792023347

namespace A187967

/-- `1-char[A098021(n+1)-1]` -/
def P6765501046792023347.Spec : Prop :=
  ∀ n, P6765501046792023347.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P12882651026186082021

`1-char[2*A003151(n+1)+n]`
-/

namespace A187967.P12882651026186082021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003151 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187967.P12882651026186082021

namespace A187967

/-- `1-char[2*A003151(n+1)+n]` -/
def P12882651026186082021.Spec : Prop :=
  ∀ n, P12882651026186082021.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P12476138863706082019

`A000045(Δ[A159684(n)]²)`
-/

namespace A187967.P12476138863706082019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A187967.P12476138863706082019

namespace A187967

/-- `A000045(Δ[A159684(n)]²)` -/
def P12476138863706082019.Spec : Prop :=
  ∀ n, P12476138863706082019.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P16864353934050148661

`A159684(Δ[A159684(n)]+2)`
-/

namespace A187967.P16864353934050148661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (f1 (n + 1) - f1 n + 2).toNat

end

end A187967.P16864353934050148661

namespace A187967

/-- `A159684(Δ[A159684(n)]+2)` -/
def P16864353934050148661.Spec : Prop :=
  ∀ n, P16864353934050148661.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P10414102329034673807

`A159684(2-Δ[A159684(n)])`
-/

namespace A187967.P10414102329034673807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A187967.P10414102329034673807

namespace A187967

/-- `A159684(2-Δ[A159684(n)])` -/
def P10414102329034673807.Spec : Prop :=
  ∀ n, P10414102329034673807.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P10200491066617309554

`A159684(A144611(n+1)+n)`
-/

namespace A187967.P10200491066617309554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A144611 (n + 1) + (n : ℤ)).toNat

end

end A187967.P10200491066617309554

namespace A187967

/-- `A159684(A144611(n+1)+n)` -/
def P10200491066617309554.Spec : Prop :=
  ∀ n, P10200491066617309554.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P15874744446714126404

`A159684(A159684(n+1)+n)`
-/

namespace A187967.P15874744446714126404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A159684 (n + 1) + (n : ℤ)).toNat

end

end A187967.P15874744446714126404

namespace A187967

/-- `A159684(A159684(n+1)+n)` -/
def P15874744446714126404.Spec : Prop :=
  ∀ n, P15874744446714126404.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P12351432784411233385

`1-char[A003151(A003151(n+1))]`
-/

namespace A187967.P12351432784411233385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187967.P12351432784411233385

namespace A187967

/-- `1-char[A003151(A003151(n+1))]` -/
def P12351432784411233385.Spec : Prop :=
  ∀ n, P12351432784411233385.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P6323105194820096396

`A082844(n+1)-A080763(n+1)`
-/

namespace A187967.P6323105194820096396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082844 (n + 1) - A080763 (n + 1)

end

end A187967.P6323105194820096396

namespace A187967

/-- `A082844(n+1)-A080763(n+1)` -/
def P6323105194820096396.Spec : Prop :=
  ∀ n, P6323105194820096396.a n = A187967 (n + 1)

end A187967

/-! ## A187967.P3800717010768275836

`A006337(n+1)-A286665(n+1)`
-/

namespace A187967.P3800717010768275836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1) - A286665 (n + 1)

end

end A187967.P3800717010768275836

namespace A187967

/-- `A006337(n+1)-A286665(n+1)` -/
def P3800717010768275836.Spec : Prop :=
  ∀ n, P3800717010768275836.a n = A187967 (n + 1)

end A187967

/-!
# A187968: Positions of 1 in A187967; complement (conjectured) of A098021.

The programs for A187968, the canonical program `A187968.P16318789548881380579` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187968 has offset 1).

The definition of A187968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187968.P14974954581627337203

`floor(∑[sqrt(gcd(2, n))])`
-/

namespace A187968.P14974954581627337203
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P14974954581627337203

namespace A187968

/-- `floor(∑[sqrt(gcd(2, n))])` -/
def P14974954581627337203.Spec : Prop :=
  ∀ n, P14974954581627337203.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P17453314901012537562

`floor(∑[sqrt(2-n%2)])`
-/

namespace A187968.P17453314901012537562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 - ((n % 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P17453314901012537562

namespace A187968

/-- `floor(∑[sqrt(2-n%2)])` -/
def P17453314901012537562.Spec : Prop :=
  ∀ n, P17453314901012537562.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P12272423231853749567

`floor(∑[sqrt(2-and(1, n))])`
-/

namespace A187968.P12272423231853749567
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 - (Nat.land 1 n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P12272423231853749567

namespace A187968

/-- `floor(∑[sqrt(2-and(1, n))])` -/
def P12272423231853749567.Spec : Prop :=
  ∀ n, P12272423231853749567.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P5377434951856135487

`floor(∑[root(gcd(4, n²), 4)])`
-/

namespace A187968.P5377434951856135487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 2) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P5377434951856135487

namespace A187968

/-- `floor(∑[root(gcd(4, n²), 4)])` -/
def P5377434951856135487.Spec : Prop :=
  ∀ n, P5377434951856135487.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P13012498742985174232

`floor(∑[sqrt(-or(n, -2))])`
-/

namespace A187968.P13012498742985174232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (-Int.lor (n : ℤ) (-2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P13012498742985174232

namespace A187968

/-- `floor(∑[sqrt(-or(n, -2))])` -/
def P13012498742985174232.Spec : Prop :=
  ∀ n, P13012498742985174232.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P8099098640082487904

`floor(∑[sqrt((n+1)%2+1)])`
-/

namespace A187968.P8099098640082487904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) % 2 + 1 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P8099098640082487904

namespace A187968

/-- `floor(∑[sqrt((n+1)%2+1)])` -/
def P8099098640082487904.Spec : Prop :=
  ∀ n, P8099098640082487904.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P524257824019337938

`floor(∑[2^∑[(-1)^n/2]])`
-/

namespace A187968.P524257824019337938
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f2 j : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187968.P524257824019337938

namespace A187968

/-- `floor(∑[2^∑[(-1)^n/2]])` -/
def P524257824019337938.Spec : Prop :=
  ∀ n, P524257824019337938.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P9568258239164331023

`comp[A140868(n+1)]+1`
-/

namespace A187968.P9568258239164331023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187968.P9568258239164331023

namespace A187968

/-- `comp[A140868(n+1)]+1` -/
def P9568258239164331023.Spec : Prop :=
  ∀ n, (P9568258239164331023.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P7007273669672142597

`comp[A276879(n+1)-1]`
-/

namespace A187968.P7007273669672142597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276879 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187968.P7007273669672142597

namespace A187968

/-- `comp[A276879(n+1)-1]` -/
def P7007273669672142597.Spec : Prop :=
  ∀ n, (P7007273669672142597.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P15623204064750580977

`comp[A188039(n+1)-2]`
-/

namespace A187968.P15623204064750580977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187968.P15623204064750580977

namespace A187968

/-- `comp[A188039(n+1)-2]` -/
def P15623204064750580977.Spec : Prop :=
  ∀ n, (P15623204064750580977.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P10817200092183759066

`comp[A098021(n+1)-1]+1`
-/

namespace A187968.P10817200092183759066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187968.P10817200092183759066

namespace A187968

/-- `comp[A098021(n+1)-1]+1` -/
def P10817200092183759066.Spec : Prop :=
  ∀ n, (P10817200092183759066.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P13254148717556156339

`comp[A188045(2*n+1)-2]`
-/

namespace A187968.P13254148717556156339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187968.P13254148717556156339

namespace A187968

/-- `comp[A188045(2*n+1)-2]` -/
def P13254148717556156339.Spec : Prop :=
  ∀ n, (P13254148717556156339.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P3941278816089230815

`∑[char[A188376(2*(n+1))]+1]`
-/

namespace A187968.P3941278816089230815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187968.P3941278816089230815

namespace A187968

/-- `∑[char[A188376(2*(n+1))]+1]` -/
def P3941278816089230815.Spec : Prop :=
  ∀ n, (P3941278816089230815.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P16318789548881380579

`A097508(A008619(n))+1+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187968

/-- `A097508(A008619(n))+1+n` -/
def P16318789548881380579.Spec : Prop :=
  ∀ n, P16318789548881380579.a n = A187968 (n + 1)

theorem P16318789548881380579.correct : P16318789548881380579.Spec := by
  intro n
  simp only [A187968, Nat.add_sub_cancel]

end A187968

/-! ## A187968.P16939134125266445129

`A188375(n+1)-A008619(n)`
-/

namespace A187968.P16939134125266445129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) - A008619 n

end

end A187968.P16939134125266445129

namespace A187968

/-- `A188375(n+1)-A008619(n)` -/
def P16939134125266445129.Spec : Prop :=
  ∀ n, P16939134125266445129.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P6884811003203083198

`∪[A286666(n+1), A083088(n)]`
-/

namespace A187968.P6884811003203083198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187968.P6884811003203083198

namespace A187968

/-- `∪[A286666(n+1), A083088(n)]` -/
def P6884811003203083198.Spec : Prop :=
  ∀ n, (P6884811003203083198.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P11510580884565747975

`comp[A003151(A003151(n+1))]+1`
-/

namespace A187968.P11510580884565747975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187968.P11510580884565747975

namespace A187968

/-- `comp[A003151(A003151(n+1))]+1` -/
def P11510580884565747975.Spec : Prop :=
  ∀ n, (P11510580884565747975.a n : ℤ) = A187968 (n + 1)

end A187968

/-! ## A187968.P14587570392562020742

`A187973(n+1)-A188375(n+1)`
-/

namespace A187968.P14587570392562020742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1) - A188375 (n + 1)

end

end A187968.P14587570392562020742

namespace A187968

/-- `A187973(n+1)-A188375(n+1)` -/
def P14587570392562020742.Spec : Prop :=
  ∀ n, P14587570392562020742.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P324096746399147236

`A286904(n+1)-2*A008619(n)`
-/

namespace A187968.P324096746399147236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1) - 2 * A008619 n

end

end A187968.P324096746399147236

namespace A187968

/-- `A286904(n+1)-2*A008619(n)` -/
def P324096746399147236.Spec : Prop :=
  ∀ n, P324096746399147236.a n = A187968 (n + 1)

end A187968

/-! ## A187968.P11525834867383642701

`∪[A003151(n+1), A286666(n+1)]`
-/

namespace A187968.P11525834867383642701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187968.P11525834867383642701

namespace A187968

/-- `∪[A003151(n+1), A286666(n+1)]` -/
def P11525834867383642701.Spec : Prop :=
  ∀ n, (P11525834867383642701.a n : ℤ) = A187968 (n + 1)

end A187968

/-!
# A187969: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=3, [ ]=floor.

The programs for A187969, the canonical program `A187969.P12336969182246334688` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187969 has offset 1).

The definition of A187969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187969.P17780941806540798538

`ceil(Δ[A327222(n)/2])`
-/

namespace A187969.P17780941806540798538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327222 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A187969.P17780941806540798538

namespace A187969

/-- `ceil(Δ[A327222(n)/2])` -/
def P17780941806540798538.Spec : Prop :=
  ∀ n, P17780941806540798538.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P14770013917810820947

`char[A188043(n+1)-4]`
-/

namespace A187969.P14770013917810820947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187969.P14770013917810820947

namespace A187969

/-- `char[A188043(n+1)-4]` -/
def P14770013917810820947.Spec : Prop :=
  ∀ n, (P14770013917810820947.a n : ℤ) = A187969 (n + 1)

end A187969

/-! ## A187969.P11592619829872596823

`1-char[A187970(n+1)-1]`
-/

namespace A187969.P11592619829872596823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187969.P11592619829872596823

namespace A187969

/-- `1-char[A187970(n+1)-1]` -/
def P11592619829872596823.Spec : Prop :=
  ∀ n, P11592619829872596823.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P8973789129872122006

`A327222(Δ[A327222(n)]+1)`
-/

namespace A187969.P8973789129872122006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (f1 (n + 1) - f1 n + 1).toNat

end

end A187969.P8973789129872122006

namespace A187969

/-- `A327222(Δ[A327222(n)]+1)` -/
def P8973789129872122006.Spec : Prop :=
  ∀ n, P8973789129872122006.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P12336969182246334688

`A159684(2*A144611(n)+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187969

/-- `A159684(2*A144611(n)+n)` -/
def P12336969182246334688.Spec : Prop :=
  ∀ n, P12336969182246334688.a n = A187969 (n + 1)

theorem P12336969182246334688.correct : P12336969182246334688.Spec := by
  intro n
  simp only [A187969, Nat.add_sub_cancel]

end A187969

/-! ## A187969.P13818760210190227457

`A159684(2*A159684(n)+n)`
-/

namespace A187969.P13818760210190227457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * A159684 n + (n : ℤ)).toNat

end

end A187969.P13818760210190227457

namespace A187969

/-- `A159684(2*A159684(n)+n)` -/
def P13818760210190227457.Spec : Prop :=
  ∀ n, P13818760210190227457.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P16969973420094409299

`char[A003151(A003152(n+1))-1]`
-/

namespace A187969.P16969973420094409299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003152 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187969.P16969973420094409299

namespace A187969

/-- `char[A003151(A003152(n+1))-1]` -/
def P16969973420094409299.Spec : Prop :=
  ∀ n, (P16969973420094409299.a n : ℤ) = A187969 (n + 1)

end A187969

/-! ## A187969.P1573356147575704995

`A187967(n+2)-A144611(n+1)`
-/

namespace A187969.P1573356147575704995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 2) - A144611 (n + 1)

end

end A187969.P1573356147575704995

namespace A187969

/-- `A187967(n+2)-A144611(n+1)` -/
def P1573356147575704995.Spec : Prop :=
  ∀ n, P1573356147575704995.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P8203791697344635249

`A159684(A159684(n)+A159684(n)+n)`
-/

namespace A187969.P8203791697344635249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A159684 n + (A159684 n + (n : ℤ))).toNat

end

end A187969.P8203791697344635249

namespace A187969

/-- `A159684(A159684(n)+A159684(n)+n)` -/
def P8203791697344635249.Spec : Prop :=
  ∀ n, P8203791697344635249.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P10433152107428881208

`A327222(n+1)-A327222(A327222(n)+n)`
-/

namespace A187969.P10433152107428881208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (n + 1) - A327222 (A327222 n + (n : ℤ)).toNat

end

end A187969.P10433152107428881208

namespace A187969

/-- `A327222(n+1)-A327222(A327222(n)+n)` -/
def P10433152107428881208.Spec : Prop :=
  ∀ n, P10433152107428881208.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P13054999182233594224

`A191407(n+1)%2`
-/

namespace A187969.P13054999182233594224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191407 (n + 1)) 2

end

end A187969.P13054999182233594224

namespace A187969

/-- `A191407(n+1)%2` -/
def P13054999182233594224.Spec : Prop :=
  ∀ n, P13054999182233594224.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P6882269643399485665

`2-Δ[A286992(n+1)]`
-/

namespace A187969.P6882269643399485665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A187969.P6882269643399485665

namespace A187969

/-- `2-Δ[A286992(n+1)]` -/
def P6882269643399485665.Spec : Prop :=
  ∀ n, P6882269643399485665.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P16521064317570425370

`A286990(Δ[A286992(n+1)])`
-/

namespace A187969.P16521064317570425370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (f1 (n + 1) - f1 n).toNat

end

end A187969.P16521064317570425370

namespace A187969

/-- `A286990(Δ[A286992(n+1)])` -/
def P16521064317570425370.Spec : Prop :=
  ∀ n, P16521064317570425370.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P8104326646404885256

`and(A159684(n+2), A159684(n))`
-/

namespace A187969.P8104326646404885256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159684 (n + 2)) (A159684 n)

end

end A187969.P8104326646404885256

namespace A187969

/-- `and(A159684(n+2), A159684(n))` -/
def P8104326646404885256.Spec : Prop :=
  ∀ n, P8104326646404885256.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P17695040028332509500

`A159684(Δ[∑[n]-A159684(n)])`
-/

namespace A187969.P17695040028332509500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (f1 (n + 1) - f1 n).toNat

end

end A187969.P17695040028332509500

namespace A187969

/-- `A159684(Δ[∑[n]-A159684(n)])` -/
def P17695040028332509500.Spec : Prop :=
  ∀ n, P17695040028332509500.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P14129027452734618648

`val(A000040(Δ[A286992(n+1)]), 2)`
-/

namespace A187969.P14129027452734618648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A187969.P14129027452734618648

namespace A187969

/-- `val(A000040(Δ[A286992(n+1)]), 2)` -/
def P14129027452734618648.Spec : Prop :=
  ∀ n, (P14129027452734618648.a n : ℤ) = A187969 (n + 1)

end A187969

/-! ## A187969.P14761798503858191625

`A188037(A187967(n+2)+n+1)`
-/

namespace A187969.P14761798503858191625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A187967 (n + 2) + (n + 1 : ℤ)).toNat

end

end A187969.P14761798503858191625

namespace A187969

/-- `A188037(A187967(n+2)+n+1)` -/
def P14761798503858191625.Spec : Prop :=
  ∀ n, P14761798503858191625.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P3894026622062637792

`A080764(A286992(n+2)-A286992(n+1))`
-/

namespace A187969.P3894026622062637792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A286992 (n + 2) - A286992 (n + 1)).toNat

end

end A187969.P3894026622062637792

namespace A187969

/-- `A080764(A286992(n+2)-A286992(n+1))` -/
def P3894026622062637792.Spec : Prop :=
  ∀ n, P3894026622062637792.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P6274858256229671856

`(A082844(n+2)-A097509(n))*A188037(n+2)`
-/

namespace A187969.P6274858256229671856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082844 (n + 2) - A097509 n) * A188037 (n + 2)

end

end A187969.P6274858256229671856

namespace A187969

/-- `(A082844(n+2)-A097509(n))*A188037(n+2)` -/
def P6274858256229671856.Spec : Prop :=
  ∀ n, P6274858256229671856.a n = A187969 (n + 1)

end A187969

/-! ## A187969.P16203232877038184347

`(A082844(n+2)-A006337(n+1))*A188037(n+2)`
-/

namespace A187969.P16203232877038184347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082844 (n + 2) - A006337 (n + 1)) * A188037 (n + 2)

end

end A187969.P16203232877038184347

namespace A187969

/-- `(A082844(n+2)-A006337(n+1))*A188037(n+2)` -/
def P16203232877038184347.Spec : Prop :=
  ∀ n, P16203232877038184347.a n = A187969 (n + 1)

end A187969

/-!
# A187970: Positions of 0 in A187969; complement of A187971.

The programs for A187970, the canonical program `A187970.P445449769979314014` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187970 has offset 1).

The definition of A187970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187970.P17091659851774143600

`A286991(n+1)-(n+1)`
-/

namespace A187970.P17091659851774143600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286991 (n + 1) - (n + 1 : ℤ)

end

end A187970.P17091659851774143600

namespace A187970

/-- `A286991(n+1)-(n+1)` -/
def P17091659851774143600.Spec : Prop :=
  ∀ n, P17091659851774143600.a n = A187970 (n + 1)

theorem P17091659851774143600.correct : P17091659851774143600.Spec := by
  intro n
  simp only [A187970, Nat.add_sub_cancel, A187970.P17091659851774143600.a, A187970.P445449769979314014.f1, A187970.P445449769979314014.a, A187971, A187971.P5819129724540132840.a, A286991, A286991.P960293502275245523.a, A003152, A003152.P8355508272175907392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A187970

/-! ## A187970.P445449769979314014

`comp[A187971(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187970

/-- `comp[A187971(n+1)-1]+1` -/
def P445449769979314014.Spec : Prop :=
  ∀ n, (P445449769979314014.a n : ℤ) = A187970 (n + 1)

theorem P445449769979314014.correct : P445449769979314014.Spec := by
  intro n
  simp only [A187970, Nat.add_sub_cancel]

end A187970

/-! ## A187970.P7698935651875261056

`∪[A003152(n+1), A140868(n+1)]`
-/

namespace A187970.P7698935651875261056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187970.P7698935651875261056

namespace A187970

/-- `∪[A003152(n+1), A140868(n+1)]` -/
def P7698935651875261056.Spec : Prop :=
  ∀ n, (P7698935651875261056.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P12142393057815917465

`∪[A140868(n+1), A188046(n+1)]`
-/

namespace A187970.P12142393057815917465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187970.P12142393057815917465

namespace A187970

/-- `∪[A140868(n+1), A188046(n+1)]` -/
def P12142393057815917465.Spec : Prop :=
  ∀ n, (P12142393057815917465.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P12587956606484260727

`∪[A003152(n+2)-2, A003152(n+2)]`
-/

namespace A187970.P12587956606484260727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187970.P12587956606484260727

namespace A187970

/-- `∪[A003152(n+2)-2, A003152(n+2)]` -/
def P12587956606484260727.Spec : Prop :=
  ∀ n, (P12587956606484260727.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P15857084812871401087

`A286908(n+1)+∑[A286922(n+1)-1]`
-/

namespace A187970.P15857084812871401087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187970.P15857084812871401087

namespace A187970

/-- `A286908(n+1)+∑[A286922(n+1)-1]` -/
def P15857084812871401087.Spec : Prop :=
  ∀ n, P15857084812871401087.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P11515203054002743841

`A188042(n+4)-3`
-/

namespace A187970.P11515203054002743841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 4) - 3

end

end A187970.P11515203054002743841

namespace A187970

/-- `A188042(n+4)-3` -/
def P11515203054002743841.Spec : Prop :=
  ∀ n, P11515203054002743841.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P9620639453794542595

`eq[1, A187969(n+1)+1]+1`
-/

namespace A187970.P9620639453794542595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187970.P9620639453794542595

namespace A187970

/-- `eq[1, A187969(n+1)+1]+1` -/
def P9620639453794542595.Spec : Prop :=
  ∀ n, (P9620639453794542595.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P4760710877280507431

`a(n-1)+A187969(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A187970.P4760710877280507431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A187969 (a (n - 1) + 1).toNat + 1)

end

end A187970.P4760710877280507431

namespace A187970

/-- `a(n-1)+A187969(a(n-1)+1)+1` -/
def P4760710877280507431.Spec : Prop :=
  ∀ n, P4760710877280507431.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P8225692594648613194

`eq[A144611(n), A187967(n+1)]`
-/

namespace A187970.P8225692594648613194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187970.P8225692594648613194

namespace A187970

/-- `eq[A144611(n), A187967(n+1)]` -/
def P8225692594648613194.Spec : Prop :=
  ∀ n, (P8225692594648613194.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P2275669895479158415

`lt[1, Δ[A286992(n+1)]]+1`
-/

namespace A187970.P2275669895479158415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187970.P2275669895479158415

namespace A187970

/-- `lt[1, Δ[A286992(n+1)]]+1` -/
def P2275669895479158415.Spec : Prop :=
  ∀ n, (P2275669895479158415.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P6599713529293300951

`lt[A285073(n+2)+A159684(n+1), 2]`
-/

namespace A187970.P6599713529293300951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 2) + A159684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187970.P6599713529293300951

namespace A187970

/-- `lt[A285073(n+2)+A159684(n+1), 2]` -/
def P6599713529293300951.Spec : Prop :=
  ∀ n, (P6599713529293300951.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P10851939218046196606

`lt[Δ[Δ[A285073(n+2)]], 2]`
-/

namespace A187970.P10851939218046196606
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A187970.P10851939218046196606

namespace A187970

/-- `lt[Δ[Δ[A285073(n+2)]], 2]` -/
def P10851939218046196606.Spec : Prop :=
  ∀ n, (P10851939218046196606.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P8061218070055963683

`comp[round((sqrt(2)+2)*(n+1)/2)*A188374(n+1)]`
-/

namespace A187970.P8061218070055963683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (n + 1 : ℝ) / 2) * A188374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187970.P8061218070055963683

namespace A187970

/-- `comp[round((sqrt(2)+2)*(n+1)/2)*A188374(n+1)]` -/
def P8061218070055963683.Spec : Prop :=
  ∀ n, (P8061218070055963683.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P10346479917773325522

`A026249(A188265(n+1))`
-/

namespace A187970.P10346479917773325522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A188265 (n + 1)).toNat

end

end A187970.P10346479917773325522

namespace A187970

/-- `A026249(A188265(n+1))` -/
def P10346479917773325522.Spec : Prop :=
  ∀ n, P10346479917773325522.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P3265384985501421701

`record[A049472(n+2)*A188398(n+1)]`
-/

namespace A187970.P3265384985501421701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 2) * A188398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187970.P3265384985501421701

namespace A187970

/-- `record[A049472(n+2)*A188398(n+1)]` -/
def P3265384985501421701.Spec : Prop :=
  ∀ n, P3265384985501421701.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P13077368473934881617

`record[A188374(n+4)+A049472(n)]`
-/

namespace A187970.P13077368473934881617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 4) + A049472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187970.P13077368473934881617

namespace A187970

/-- `record[A188374(n+4)+A049472(n)]` -/
def P13077368473934881617.Spec : Prop :=
  ∀ n, P13077368473934881617.a n = A187970 (n + 1)

end A187970

/-! ## A187970.P16763010720113791117

`lt[A285073(n+2), A288997(2*(n+1))+1]`
-/

namespace A187970.P16763010720113791117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (2 * (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187970.P16763010720113791117

namespace A187970

/-- `lt[A285073(n+2), A288997(2*(n+1))+1]` -/
def P16763010720113791117.Spec : Prop :=
  ∀ n, (P16763010720113791117.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P5852022528449356612

`lt[A159684(n+1), A289036(2*(n+1))-A289036(2*n+1)]`
-/

namespace A187970.P5852022528449356612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (2 * (n + 1)) - A289036 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187970.P5852022528449356612

namespace A187970

/-- `lt[A159684(n+1), A289036(2*(n+1))-A289036(2*n+1)]` -/
def P5852022528449356612.Spec : Prop :=
  ∀ n, (P5852022528449356612.a n : ℤ) = A187970 (n + 1)

end A187970

/-! ## A187970.P5292620555988178784

`lt[A285076(A288998(n+1)+n), 1]`
-/

namespace A187970.P5292620555988178784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (A288998 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187970.P5292620555988178784

namespace A187970

/-- `lt[A285076(A288998(n+1)+n), 1]` -/
def P5292620555988178784.Spec : Prop :=
  ∀ n, (P5292620555988178784.a n : ℤ) = A187970 (n + 1)

end A187970

/-!
# A187971: Positions of 1 in A187969; complement of A187970.

The programs for A187971, the canonical program `A187971.P5819129724540132840` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187971 has offset 1).

The definition of A187971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187971.P13174110824591156421

`A188043(n+1)-3`
-/

namespace A187971.P13174110824591156421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1) - 3

end

end A187971.P13174110824591156421

namespace A187971

/-- `A188043(n+1)-3` -/
def P13174110824591156421.Spec : Prop :=
  ∀ n, P13174110824591156421.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P5819129724540132840

`3*A003152(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187971

/-- `3*A003152(n+1)-(n+1)` -/
def P5819129724540132840.Spec : Prop :=
  ∀ n, P5819129724540132840.a n = A187971 (n + 1)

theorem P5819129724540132840.correct : P5819129724540132840.Spec := by
  intro n
  simp only [A187971, Nat.add_sub_cancel]

end A187971

/-! ## A187971.P7030103532016941543

`∑[(A188295(n+1)+1)²+1]`
-/

namespace A187971.P7030103532016941543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188295 (n + 1) + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187971.P7030103532016941543

namespace A187971

/-- `∑[(A188295(n+1)+1)²+1]` -/
def P7030103532016941543.Spec : Prop :=
  ∀ n, P7030103532016941543.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P16961584120667981355

`∑[xor(2, A036694(n+1)%2+1)+2]`
-/

namespace A187971.P16961584120667981355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.tmod (A036694 (n + 1)) 2 + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187971.P16961584120667981355

namespace A187971

/-- `∑[xor(2, A036694(n+1)%2+1)+2]` -/
def P16961584120667981355.Spec : Prop :=
  ∀ n, P16961584120667981355.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P13326748688021475554

`abs(3*A080755(n+1)-(n+1))-3`
-/

namespace A187971.P13326748688021475554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A080755 (n + 1) - (n + 1 : ℤ)| - 3

end

end A187971.P13326748688021475554

namespace A187971

/-- `abs(3*A080755(n+1)-(n+1))-3` -/
def P13326748688021475554.Spec : Prop :=
  ∀ n, P13326748688021475554.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P17326710864226543883

`∑[A000108(Δ[A049472(n)]+2)]`
-/

namespace A187971.P17326710864226543883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187971.P17326710864226543883

namespace A187971

/-- `∑[A000108(Δ[A049472(n)]+2)]` -/
def P17326710864226543883.Spec : Prop :=
  ∀ n, P17326710864226543883.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P1825154182261833828

`A188376(n+1)+A003152(n+1)`
-/

namespace A187971.P1825154182261833828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + A003152 (n + 1)

end

end A187971.P1825154182261833828

namespace A187971

/-- `A188376(n+1)+A003152(n+1)` -/
def P1825154182261833828.Spec : Prop :=
  ∀ n, P1825154182261833828.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P2829405896016028280

`A188396(n+1)-A003152(n+1)`
-/

namespace A187971.P2829405896016028280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1) - A003152 (n + 1)

end

end A187971.P2829405896016028280

namespace A187971

/-- `A188396(n+1)-A003152(n+1)` -/
def P2829405896016028280.Spec : Prop :=
  ∀ n, P2829405896016028280.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P13352600385786311049

`A189458(n+1)-A083035(n+1)`
-/

namespace A187971.P13352600385786311049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189458 (n + 1) - A083035 (n + 1)

end

end A187971.P13352600385786311049

namespace A187971

/-- `A189458(n+1)-A083035(n+1)` -/
def P13352600385786311049.Spec : Prop :=
  ∀ n, P13352600385786311049.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P14931290750277421560

`A003152(n+1)+A188299(n+1)-2`
-/

namespace A187971.P14931290750277421560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (A188299 (n + 1) - 2)

end

end A187971.P14931290750277421560

namespace A187971

/-- `A003152(n+1)+A188299(n+1)-2` -/
def P14931290750277421560.Spec : Prop :=
  ∀ n, P14931290750277421560.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P1572330656936220011

`A049472(n+1)+2*A003152(n+1)`
-/

namespace A187971.P1572330656936220011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + 2 * A003152 (n + 1)

end

end A187971.P1572330656936220011

namespace A187971

/-- `A049472(n+1)+2*A003152(n+1)` -/
def P1572330656936220011.Spec : Prop :=
  ∀ n, P1572330656936220011.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P17567303500185886036

`A188376(n+1)+A188376(n+1)-A049472(n+1)`
-/

namespace A187971.P17567303500185886036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + (A188376 (n + 1) - A049472 (n + 1))

end

end A187971.P17567303500185886036

namespace A187971

/-- `A188376(n+1)+A188376(n+1)-A049472(n+1)` -/
def P17567303500185886036.Spec : Prop :=
  ∀ n, P17567303500185886036.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P229108635075415502

`∑[Δ[A285077(n+1)]²+1]`
-/

namespace A187971.P229108635075415502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187971.P229108635075415502

namespace A187971

/-- `∑[Δ[A285077(n+1)]²+1]` -/
def P229108635075415502.Spec : Prop :=
  ∀ n, P229108635075415502.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P14411978215589384492

`A016777(comp[floor(n*sqrt(2))+n])-(n+2)`
-/

namespace A187971.P14411978215589384492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n + 2 : ℤ)

end

end A187971.P14411978215589384492

namespace A187971

/-- `A016777(comp[floor(n*sqrt(2))+n])-(n+2)` -/
def P14411978215589384492.Spec : Prop :=
  ∀ n, P14411978215589384492.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P8293747590429005051

`A003151(A003152(n+1))`
-/

namespace A187971.P8293747590429005051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003152 (n + 1)).toNat

end

end A187971.P8293747590429005051

namespace A187971

/-- `A003151(A003152(n+1))` -/
def P8293747590429005051.Spec : Prop :=
  ∀ n, P8293747590429005051.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P7721600997381461655

`A003151(eq[1, A144611(n)])`
-/

namespace A187971.P7721600997381461655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187971.P7721600997381461655

namespace A187971

/-- `A003151(eq[1, A144611(n)])` -/
def P7721600997381461655.Spec : Prop :=
  ∀ n, P7721600997381461655.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P4704328089554463739

`A003151(comp[A001951(n)+n])`
-/

namespace A187971.P4704328089554463739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187971.P4704328089554463739

namespace A187971

/-- `A003151(comp[A001951(n)+n])` -/
def P4704328089554463739.Spec : Prop :=
  ∀ n, P4704328089554463739.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P15542423147358194862

`A003151(A080755(n+1)-1)`
-/

namespace A187971.P15542423147358194862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A080755 (n + 1) - 1).toNat

end

end A187971.P15542423147358194862

namespace A187971

/-- `A003151(A080755(n+1)-1)` -/
def P15542423147358194862.Spec : Prop :=
  ∀ n, P15542423147358194862.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P6525627772309458775

`A003151(A083088(n+1)-1)`
-/

namespace A187971.P6525627772309458775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A083088 (n + 1) - 1).toNat

end

end A187971.P6525627772309458775

namespace A187971

/-- `A003151(A083088(n+1)-1)` -/
def P6525627772309458775.Spec : Prop :=
  ∀ n, P6525627772309458775.a n = A187971 (n + 1)

end A187971

/-! ## A187971.P6499924489278471631

`A080652(A080755(n+1)-1)`
-/

namespace A187971.P6499924489278471631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (A080755 (n + 1) - 1).toNat

end

end A187971.P6499924489278471631

namespace A187971

/-- `A080652(A080755(n+1)-1)` -/
def P6499924489278471631.Spec : Prop :=
  ∀ n, P6499924489278471631.a n = A187971 (n + 1)

end A187971

/-!
# A187972: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=4, [ ]=floor.

The programs for A187972, the canonical program `A187972.P4602217336362801147` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187972 has offset 1).

The definition of A187972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187972.P16908558144133646187

`char[A187974(n+1)-1]`
-/

namespace A187972.P16908558144133646187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187972.P16908558144133646187

namespace A187972

/-- `char[A187974(n+1)-1]` -/
def P16908558144133646187.Spec : Prop :=
  ∀ n, (P16908558144133646187.a n : ℤ) = A187972 (n + 1)

end A187972

/-! ## A187972.P4602217336362801147

`A187967(n+1)*A187967(n+3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187972

/-- `A187967(n+1)*A187967(n+3)` -/
def P4602217336362801147.Spec : Prop :=
  ∀ n, P4602217336362801147.a n = A187972 (n + 1)

theorem P4602217336362801147.correct : P4602217336362801147.Spec := by
  intro n
  simp only [A187972, Nat.add_sub_cancel]

end A187972

/-! ## A187972.P17942710546166536215

`A187976(A187969(n+2)+n+1)`
-/

namespace A187972.P17942710546166536215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A187969 (n + 2) + (n + 1 : ℤ)).toNat

end

end A187972.P17942710546166536215

namespace A187972

/-- `A187976(A187969(n+2)+n+1)` -/
def P17942710546166536215.Spec : Prop :=
  ∀ n, P17942710546166536215.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P8602577580868502309

`A197879(A187969(n+2)+n+1)`
-/

namespace A187972.P8602577580868502309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A187969 (n + 2) + (n + 1 : ℤ)).toNat

end

end A187972.P8602577580868502309

namespace A187972

/-- `A197879(A187969(n+2)+n+1)` -/
def P8602577580868502309.Spec : Prop :=
  ∀ n, P8602577580868502309.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P2784734989411750840

`A188295(A195119(n)+A006337(n+2))`
-/

namespace A187972.P2784734989411750840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A195119 n + A006337 (n + 2)).toNat

end

end A187972.P2784734989411750840

namespace A187972

/-- `A188295(A195119(n)+A006337(n+2))` -/
def P2784734989411750840.Spec : Prop :=
  ∀ n, P2784734989411750840.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P7433658431243441671

`A327205(n*A327205(n)+4)`
-/

namespace A187972.P7433658431243441671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 ((n : ℤ) * A327205 n + 4).toNat

end

end A187972.P7433658431243441671

namespace A187972

/-- `A327205(n*A327205(n)+4)` -/
def P7433658431243441671.Spec : Prop :=
  ∀ n, P7433658431243441671.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P464195547082874188

`A080763(A080763(n+1)²+n+1)-1`
-/

namespace A187972.P464195547082874188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A080763 (n + 1) ^ 2 + (n : ℤ) + 1).toNat - 1

end

end A187972.P464195547082874188

namespace A187972

/-- `A080763(A080763(n+1)²+n+1)-1` -/
def P464195547082874188.Spec : Prop :=
  ∀ n, P464195547082874188.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P2850958417286530557

`A188044(n+5)`
-/

namespace A187972.P2850958417286530557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 5)

end

end A187972.P2850958417286530557

namespace A187972

/-- `A188044(n+5)` -/
def P2850958417286530557.Spec : Prop :=
  ∀ n, P2850958417286530557.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P15134367899693522644

`A006337(n+5)²%A276864(n+1)`
-/

namespace A187972.P15134367899693522644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006337 (n + 5) ^ 2) (A276864 (n + 1))

end

end A187972.P15134367899693522644

namespace A187972

/-- `A006337(n+5)²%A276864(n+1)` -/
def P15134367899693522644.Spec : Prop :=
  ∀ n, P15134367899693522644.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P13232116909074769597

`floor(A276864(n+5)/A276864(n+1))`
-/

namespace A187972.P13232116909074769597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276864 (n + 5) : ℚ) / (A276864 (n + 1) : ℚ)⌋

end

end A187972.P13232116909074769597

namespace A187972

/-- `floor(A276864(n+5)/A276864(n+1))` -/
def P13232116909074769597.Spec : Prop :=
  ∀ n, P13232116909074769597.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P5638151230411399087

`∑[A276864(n+5)]-A001952(n+1)`
-/

namespace A187972.P5638151230411399087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001952 (n + 1)

end

end A187972.P5638151230411399087

namespace A187972

/-- `∑[A276864(n+5)]-A001952(n+1)` -/
def P5638151230411399087.Spec : Prop :=
  ∀ n, P5638151230411399087.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P442770230467995360

`A008683(A080754(n+5)-A080754(n+1))`
-/

namespace A187972.P442770230467995360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080754 (n + 5) - A080754 (n + 1)).toNat

end

end A187972.P442770230467995360

namespace A187972

/-- `A008683(A080754(n+5)-A080754(n+1))` -/
def P442770230467995360.Spec : Prop :=
  ∀ n, P442770230467995360.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P17983912897704247729

`A119346(A286923(n+5)-A286923(n+1))`
-/

namespace A187972.P17983912897704247729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119346 (A286923 (n + 5) - A286923 (n + 1)).toNat

end

end A187972.P17983912897704247729

namespace A187972

/-- `A119346(A286923(n+5)-A286923(n+1))` -/
def P17983912897704247729.Spec : Prop :=
  ∀ n, P17983912897704247729.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P17083737826207519162

`A080764(A187967(n+3)+A087057(n+1))`
-/

namespace A187972.P17083737826207519162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A187967 (n + 3) + A087057 (n + 1)).toNat

end

end A187972.P17083737826207519162

namespace A187972

/-- `A080764(A187967(n+3)+A087057(n+1))` -/
def P17083737826207519162.Spec : Prop :=
  ∀ n, P17083737826207519162.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P5950325801355227426

`1-A288997(A087057(n+1)+2)`
-/

namespace A187972.P5950325801355227426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288997 (A087057 (n + 1) + 2).toNat

end

end A187972.P5950325801355227426

namespace A187972

/-- `1-A288997(A087057(n+1)+2)` -/
def P5950325801355227426.Spec : Prop :=
  ∀ n, P5950325801355227426.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P1253449388931420277

`A080764(A289037(n+2)-2*n)`
-/

namespace A187972.P1253449388931420277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A289037 (n + 2) - (2 * n : ℤ)).toNat

end

end A187972.P1253449388931420277

namespace A187972

/-- `A080764(A289037(n+2)-2*n)` -/
def P1253449388931420277.Spec : Prop :=
  ∀ n, P1253449388931420277.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P17474582121889673552

`A188295(A001951(n+1)+7)`
-/

namespace A187972.P17474582121889673552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A001951 (n + 1) + 7).toNat

end

end A187972.P17474582121889673552

namespace A187972

/-- `A188295(A001951(n+1)+7)` -/
def P17474582121889673552.Spec : Prop :=
  ∀ n, P17474582121889673552.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P11901322363357210085

`A188295(A188383(n+2)-A286927(n+1))`
-/

namespace A187972.P11901322363357210085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A188383 (n + 2) - A286927 (n + 1)).toNat

end

end A187972.P11901322363357210085

namespace A187972

/-- `A188295(A188383(n+2)-A286927(n+1))` -/
def P11901322363357210085.Spec : Prop :=
  ∀ n, P11901322363357210085.a n = A187972 (n + 1)

end A187972

/-! ## A187972.P6242326796766750971

`char[n-4*char[A003151(n+1)]]`
-/

namespace A187972.P6242326796766750971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187972.P6242326796766750971

namespace A187972

/-- `char[n-4*char[A003151(n+1)]]` -/
def P6242326796766750971.Spec : Prop :=
  ∀ n, (P6242326796766750971.a n : ℤ) = A187972 (n + 1)

end A187972

/-! ## A187972.P18308406823669243876

`char[n-A275361(Δ[A001951(n)])]`
-/

namespace A187972.P18308406823669243876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275361 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187972.P18308406823669243876

namespace A187972

/-- `char[n-A275361(Δ[A001951(n)])]` -/
def P18308406823669243876.Spec : Prop :=
  ∀ n, (P18308406823669243876.a n : ℤ) = A187972 (n + 1)

end A187972

/-!
# A187973: Positions of 0 in A187972; complement of A187974.

The programs for A187973, the canonical program `A187973.P3184457284106312056` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187973 has offset 1).

The definition of A187973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187973.P12204322292549561255

`A188375(n+1)+A187968(n+1)`
-/

namespace A187973.P12204322292549561255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) + A187968 (n + 1)

end

end A187973.P12204322292549561255

namespace A187973

/-- `A188375(n+1)+A187968(n+1)` -/
def P12204322292549561255.Spec : Prop :=
  ∀ n, P12204322292549561255.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P3184457284106312056

`A008619(n)+2*A187968(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187973

/-- `A008619(n)+2*A187968(n+1)` -/
def P3184457284106312056.Spec : Prop :=
  ∀ n, P3184457284106312056.a n = A187973 (n + 1)

theorem P3184457284106312056.correct : P3184457284106312056.Spec := by
  intro n
  simp only [A187973, Nat.add_sub_cancel]

end A187973

/-! ## A187973.P4813829836797103228

`2*A188375(n+1)-A008619(n)`
-/

namespace A187973.P4813829836797103228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188375 (n + 1) - A008619 n

end

end A187973.P4813829836797103228

namespace A187973

/-- `2*A188375(n+1)-A008619(n)` -/
def P4813829836797103228.Spec : Prop :=
  ∀ n, P4813829836797103228.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P9666762356271132086

`∪[A098021(n+1)-2, A098021(n+1)]`
-/

namespace A187973.P9666762356271132086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187973.P9666762356271132086

namespace A187973

/-- `∪[A098021(n+1)-2, A098021(n+1)]` -/
def P9666762356271132086.Spec : Prop :=
  ∀ n, (P9666762356271132086.a n : ℤ) = A187973 (n + 1)

end A187973

/-! ## A187973.P4223387800925514829

`∪[A189457(2*(n+1)), A189457(2*(n+1))-2]`
-/

namespace A187973.P4223387800925514829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187973.P4223387800925514829

namespace A187973

/-- `∪[A189457(2*(n+1)), A189457(2*(n+1))-2]` -/
def P4223387800925514829.Spec : Prop :=
  ∀ n, (P4223387800925514829.a n : ℤ) = A187973 (n + 1)

end A187973

/-! ## A187973.P2986657572983605717

`A188045(n+3)-4`
-/

namespace A187973.P2986657572983605717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 3) - 4

end

end A187973.P2986657572983605717

namespace A187973

/-- `A188045(n+3)-4` -/
def P2986657572983605717.Spec : Prop :=
  ∀ n, P2986657572983605717.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P16682170667680462775

`A080754(A187968(n+1))`
-/

namespace A187973.P16682170667680462775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A187968 (n + 1)).toNat

end

end A187973.P16682170667680462775

namespace A187973

/-- `A080754(A187968(n+1))` -/
def P16682170667680462775.Spec : Prop :=
  ∀ n, P16682170667680462775.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P11459656593358864610

`A003151(∪[A003151(n+1), A286666(n+1)])+1`
-/

namespace A187973.P11459656593358864610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A187973.P11459656593358864610

namespace A187973

/-- `A003151(∪[A003151(n+1), A286666(n+1)])+1` -/
def P11459656593358864610.Spec : Prop :=
  ∀ n, P11459656593358864610.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P1120572463848840634

`A286666(∪[A080755(n+1), A286666(n+1)])+2`
-/

namespace A187973.P1120572463848840634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A187973.P1120572463848840634

namespace A187973

/-- `A286666(∪[A080755(n+1), A286666(n+1)])+2` -/
def P1120572463848840634.Spec : Prop :=
  ∀ n, P1120572463848840634.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P451391347741643094

`A286666(∪[A187974(n+1), A286666(n+1)])+2`
-/

namespace A187973.P451391347741643094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A187973.P451391347741643094

namespace A187973

/-- `A286666(∪[A187974(n+1), A286666(n+1)])+2` -/
def P451391347741643094.Spec : Prop :=
  ∀ n, P451391347741643094.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P10464507407231162376

`A286666(∪[A187978(n+1), A286666(n+1)])+2`
-/

namespace A187973.P10464507407231162376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A187973.P10464507407231162376

namespace A187973

/-- `A286666(∪[A187978(n+1), A286666(n+1)])+2` -/
def P10464507407231162376.Spec : Prop :=
  ∀ n, P10464507407231162376.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P8641002296053043364

`A286666(∪[A188042(n+1), A286666(n+1)])+2`
-/

namespace A187973.P8641002296053043364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A187973.P8641002296053043364

namespace A187973

/-- `A286666(∪[A188042(n+1), A286666(n+1)])+2` -/
def P8641002296053043364.Spec : Prop :=
  ∀ n, P8641002296053043364.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P11554589760256942163

`A187977(A001651(n+1))+2`
-/

namespace A187973.P11554589760256942163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (A001651 (n + 1)).toNat + 2

end

end A187973.P11554589760256942163

namespace A187973

/-- `A187977(A001651(n+1))+2` -/
def P11554589760256942163.Spec : Prop :=
  ∀ n, P11554589760256942163.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P17617988351217576227

`A187977(A007494(n+1))`
-/

namespace A187973.P17617988351217576227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (A007494 (n + 1)).toNat

end

end A187973.P17617988351217576227

namespace A187973

/-- `A187977(A007494(n+1))` -/
def P17617988351217576227.Spec : Prop :=
  ∀ n, P17617988351217576227.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P18027550480713083771

`A187977(A294732(n+3))`
-/

namespace A187973.P18027550480713083771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (A294732 (n + 3)).toNat

end

end A187973.P18027550480713083771

namespace A187973

/-- `A187977(A294732(n+3))` -/
def P18027550480713083771.Spec : Prop :=
  ∀ n, P18027550480713083771.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P15338943592688619381

`∩[A187977(n+1)+2, A187977(n+1)]`
-/

namespace A187973.P15338943592688619381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187973.P15338943592688619381

namespace A187973

/-- `∩[A187977(n+1)+2, A187977(n+1)]` -/
def P15338943592688619381.Spec : Prop :=
  ∀ n, (P15338943592688619381.a n : ℤ) = A187973 (n + 1)

end A187973

/-! ## A187973.P12637875562096523229

`A003152(A188375(n+1))`
-/

namespace A187973.P12637875562096523229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188375 (n + 1)).toNat

end

end A187973.P12637875562096523229

namespace A187973

/-- `A003152(A188375(n+1))` -/
def P12637875562096523229.Spec : Prop :=
  ∀ n, P12637875562096523229.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P10664648515217117733

`A003152(A001951(∑[(n+1)%2])+n+1)`
-/

namespace A187973.P10664648515217117733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A001951 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A187973.P10664648515217117733

namespace A187973

/-- `A003152(A001951(∑[(n+1)%2])+n+1)` -/
def P10664648515217117733.Spec : Prop :=
  ∀ n, P10664648515217117733.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P3383991065823777002

`A285074(comp[n*A188297(n+2)])`
-/

namespace A187973.P3383991065823777002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188297 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187973.P3383991065823777002

namespace A187973

/-- `A285074(comp[n*A188297(n+2)])` -/
def P3383991065823777002.Spec : Prop :=
  ∀ n, P3383991065823777002.a n = A187973 (n + 1)

end A187973

/-! ## A187973.P4752153293458028540

`A285077(comp[n*A188297(n+2)])`
-/

namespace A187973.P4752153293458028540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188297 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187973.P4752153293458028540

namespace A187973

/-- `A285077(comp[n*A188297(n+2)])` -/
def P4752153293458028540.Spec : Prop :=
  ∀ n, P4752153293458028540.a n = A187973 (n + 1)

end A187973

/-!
# A187974: Positions of 1 in A187972; complement of A187973.

The programs for A187974, the canonical program `A187974.P12540977451401628100` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187974 has offset 1).

The definition of A187974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187974.P12540977451401628100

`comp[A188045(n+1)-4]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187974

/-- `comp[A188045(n+1)-4]` -/
def P12540977451401628100.Spec : Prop :=
  ∀ n, (P12540977451401628100.a n : ℤ) = A187974 (n + 1)

theorem P12540977451401628100.correct : P12540977451401628100.Spec := by
  intro n
  simp only [A187974, Nat.add_sub_cancel]

end A187974

/-! ## A187974.P1088093444738680080

`∪[A003151(n+1), A082845(n+1)-1]`
-/

namespace A187974.P1088093444738680080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187974.P1088093444738680080

namespace A187974

/-- `∪[A003151(n+1), A082845(n+1)-1]` -/
def P1088093444738680080.Spec : Prop :=
  ∀ n, (P1088093444738680080.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P2830647918338156702

`A188046(n+3)-4`
-/

namespace A187974.P2830647918338156702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 3) - 4

end

end A187974.P2830647918338156702

namespace A187974

/-- `A188046(n+3)-4` -/
def P2830647918338156702.Spec : Prop :=
  ∀ n, P2830647918338156702.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P5639614920454046923

`∩[A187968(n+1)-2, A187968(n+1)]`
-/

namespace A187974.P5639614920454046923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187974.P5639614920454046923

namespace A187974

/-- `∩[A187968(n+1)-2, A187968(n+1)]` -/
def P5639614920454046923.Spec : Prop :=
  ∀ n, (P5639614920454046923.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P14686441025557331409

`eq[1, A187972(n+1)]+1`
-/

namespace A187974.P14686441025557331409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187974.P14686441025557331409

namespace A187974

/-- `eq[1, A187972(n+1)]+1` -/
def P14686441025557331409.Spec : Prop :=
  ∀ n, (P14686441025557331409.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P9099951056157104271

`filter[A187968(n+1), A187972(#)]`
-/

namespace A187974.P9099951056157104271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P9099951056157104271

namespace A187974

/-- `filter[A187968(n+1), A187972(#)]` -/
def P9099951056157104271.Spec : Prop :=
  ∀ n, P9099951056157104271.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P10510522261032790125

`filter[A188042(n+1), A187972(#)]`
-/

namespace A187974.P10510522261032790125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P10510522261032790125

namespace A187974

/-- `filter[A188042(n+1), A187972(#)]` -/
def P10510522261032790125.Spec : Prop :=
  ∀ n, P10510522261032790125.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P2273301135643325840

`filter[A188301(n+1), A187972(#)]`
-/

namespace A187974.P2273301135643325840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P2273301135643325840

namespace A187974

/-- `filter[A188301(n+1), A187972(#)]` -/
def P2273301135643325840.Spec : Prop :=
  ∀ n, P2273301135643325840.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P17697078289427156528

`filter[A188397(n+1), A187972(#)]`
-/

namespace A187974.P17697078289427156528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P17697078289427156528

namespace A187974

/-- `filter[A188397(n+1), A187972(#)]` -/
def P17697078289427156528.Spec : Prop :=
  ∀ n, P17697078289427156528.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P14552525404977909472

`lt[A285076(n+1), Δ[A352417(n)]]`
-/

namespace A187974.P14552525404977909472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187974.P14552525404977909472

namespace A187974

/-- `lt[A285076(n+1), Δ[A352417(n)]]` -/
def P14552525404977909472.Spec : Prop :=
  ∀ n, (P14552525404977909472.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P8822871962362957323

`lt[Δ[A195119(n)], A006337(n+3)]`
-/

namespace A187974.P8822871962362957323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A187974.P8822871962362957323

namespace A187974

/-- `lt[Δ[A195119(n)], A006337(n+3)]` -/
def P8822871962362957323.Spec : Prop :=
  ∀ n, (P8822871962362957323.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P3034372014395083080

`eq[A187967(n+2), A188038(n+2)]`
-/

namespace A187974.P3034372014395083080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187974.P3034372014395083080

namespace A187974

/-- `eq[A187967(n+2), A188038(n+2)]` -/
def P3034372014395083080.Spec : Prop :=
  ∀ n, (P3034372014395083080.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P11093563795503936771

`lt[A285076(n+1), Δ[A288998(n+1)]]`
-/

namespace A187974.P11093563795503936771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187974.P11093563795503936771

namespace A187974

/-- `lt[A285076(n+1), Δ[A288998(n+1)]]` -/
def P11093563795503936771.Spec : Prop :=
  ∀ n, (P11093563795503936771.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P7742961562809870534

`A049472(A188399(n+1))`
-/

namespace A187974.P7742961562809870534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A188399 (n + 1)).toNat

end

end A187974.P7742961562809870534

namespace A187974

/-- `A049472(A188399(n+1))` -/
def P7742961562809870534.Spec : Prop :=
  ∀ n, P7742961562809870534.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P5222482758287741763

`eq[2, A261865(A001951(n)+6)]`
-/

namespace A187974.P5222482758287741763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261865 (A001951 n + 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187974.P5222482758287741763

namespace A187974

/-- `eq[2, A261865(A001951(n)+6)]` -/
def P5222482758287741763.Spec : Prop :=
  ∀ n, (P5222482758287741763.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P16796029957891311964

`A006337(A002265(a(n-1)+n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A187974.P16796029957891311964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006337 (A002265 (a (n - 1) + (n : ℤ)).toNat + 1).toNat + a (n - 1)

end

end A187974.P16796029957891311964

namespace A187974

/-- `A006337(A002265(a(n-1)+n)+1)+a(n-1)` -/
def P16796029957891311964.Spec : Prop :=
  ∀ n, P16796029957891311964.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P9160565817930177459

`filter[A038459(n+1), A187972(#)]`
-/

namespace A187974.P9160565817930177459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P9160565817930177459

namespace A187974

/-- `filter[A038459(n+1), A187972(#)]` -/
def P9160565817930177459.Spec : Prop :=
  ∀ n, P9160565817930177459.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P318828533599379300

`filter[A026253(n+1), A187972(#)]`
-/

namespace A187974.P318828533599379300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187972 (f1 j).toNat = 1) n)

end

end A187974.P318828533599379300

namespace A187974

/-- `filter[A026253(n+1), A187972(#)]` -/
def P318828533599379300.Spec : Prop :=
  ∀ n, P318828533599379300.a n = A187974 (n + 1)

end A187974

/-! ## A187974.P12945289467604225384

`lt[A285076(n+1), A294180(A001951(n+3))]`
-/

namespace A187974.P12945289467604225384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (A001951 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187974.P12945289467604225384

namespace A187974

/-- `lt[A285076(n+1), A294180(A001951(n+3))]` -/
def P12945289467604225384.Spec : Prop :=
  ∀ n, (P12945289467604225384.a n : ℤ) = A187974 (n + 1)

end A187974

/-! ## A187974.P3771835412389916793

`lt[A285076(n+1), A294180(A004277(n+4))]`
-/

namespace A187974.P3771835412389916793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (A004277 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187974.P3771835412389916793

namespace A187974

/-- `lt[A285076(n+1), A294180(A004277(n+4))]` -/
def P3771835412389916793.Spec : Prop :=
  ∀ n, (P3771835412389916793.a n : ℤ) = A187974 (n + 1)

end A187974

/-!
# A187975: Positions of 1 in the zero-one sequence given by s(n)=[nr+5r]-[nr]-[5r], where r=sqrt(2), n>=1, [ ]=floor.

The programs for A187975, the canonical program `A187975.P2328125019044732713` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187975 has offset 1).

The definition of A187975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187975.P2328125019044732713

`A188383(n+1)+A098021(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187975

/-- `A188383(n+1)+A098021(n+1)` -/
def P2328125019044732713.Spec : Prop :=
  ∀ n, P2328125019044732713.a n = A187975 (n + 1)

theorem P2328125019044732713.correct : P2328125019044732713.Spec := by
  intro n
  simp only [A187975, Nat.add_sub_cancel]

end A187975

/-! ## A187975.P17510208236934123634

`A140868(n+1)+A188383(n+1)+1`
-/

namespace A187975.P17510208236934123634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) + (A188383 (n + 1) + 1)

end

end A187975.P17510208236934123634

namespace A187975

/-- `A140868(n+1)+A188383(n+1)+1` -/
def P17510208236934123634.Spec : Prop :=
  ∀ n, P17510208236934123634.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P13788517019564302100

`2*A188383(n+1)-A003151(n+1)`
-/

namespace A187975.P13788517019564302100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188383 (n + 1) - A003151 (n + 1)

end

end A187975.P13788517019564302100

namespace A187975

/-- `2*A188383(n+1)-A003151(n+1)` -/
def P13788517019564302100.Spec : Prop :=
  ∀ n, P13788517019564302100.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P13058889400938896874

`A188383(n+1)+A286690(n+1)-n`
-/

namespace A187975.P13058889400938896874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + (A286690 (n + 1) - (n : ℤ))

end

end A187975.P13058889400938896874

namespace A187975

/-- `A188383(n+1)+A286690(n+1)-n` -/
def P13058889400938896874.Spec : Prop :=
  ∀ n, P13058889400938896874.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P8919092408955581209

`∑[A082845(Δ[A188039(n+1)])]`
-/

namespace A187975.P8919092408955581209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187975.P8919092408955581209

namespace A187975

/-- `∑[A082845(Δ[A188039(n+1)])]` -/
def P8919092408955581209.Spec : Prop :=
  ∀ n, P8919092408955581209.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P699935752886066763

`A188396(2*(n+1))+A003151(n+1)`
-/

namespace A187975.P699935752886066763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (2 * (n + 1)) + A003151 (n + 1)

end

end A187975.P699935752886066763

namespace A187975

/-- `A188396(2*(n+1))+A003151(n+1)` -/
def P699935752886066763.Spec : Prop :=
  ∀ n, P699935752886066763.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P9414946575239214068

`A187973(2*(n+1))+A187971(2*(n+1))`
-/

namespace A187975.P9414946575239214068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (2 * (n + 1)) + A187971 (2 * (n + 1))

end

end A187975.P9414946575239214068

namespace A187975

/-- `A187973(2*(n+1))+A187971(2*(n+1))` -/
def P9414946575239214068.Spec : Prop :=
  ∀ n, P9414946575239214068.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P18046155767220132149

`A190330(2*(n+1))+2*A188376(2*(n+1))`
-/

namespace A187975.P18046155767220132149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (2 * (n + 1)) + 2 * A188376 (2 * (n + 1))

end

end A187975.P18046155767220132149

namespace A187975

/-- `A190330(2*(n+1))+2*A188376(2*(n+1))` -/
def P18046155767220132149.Spec : Prop :=
  ∀ n, P18046155767220132149.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P16994148930495425426

`A188039(A080754(n+1))`
-/

namespace A187975.P16994148930495425426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A080754 (n + 1)).toNat

end

end A187975.P16994148930495425426

namespace A187975

/-- `A188039(A080754(n+1))` -/
def P16994148930495425426.Spec : Prop :=
  ∀ n, P16994148930495425426.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P18336282006508272471

`A188039(A003151(n+1)+1)`
-/

namespace A187975.P18336282006508272471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A003151 (n + 1) + 1).toNat

end

end A187975.P18336282006508272471

namespace A187975

/-- `A188039(A003151(n+1)+1)` -/
def P18336282006508272471.Spec : Prop :=
  ∀ n, P18336282006508272471.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P10468073165839943833

`A188039(A188040(2*(n+1)))`
-/

namespace A187975.P10468073165839943833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A188040 (2 * (n + 1))).toNat

end

end A187975.P10468073165839943833

namespace A187975

/-- `A188039(A188040(2*(n+1)))` -/
def P10468073165839943833.Spec : Prop :=
  ∀ n, P10468073165839943833.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P2380117771843982674

`A188039(A336109(2*n+3))`
-/

namespace A187975.P2380117771843982674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A336109 (2 * n + 3)).toNat

end

end A187975.P2380117771843982674

namespace A187975

/-- `A188039(A336109(2*n+3))` -/
def P2380117771843982674.Spec : Prop :=
  ∀ n, P2380117771843982674.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P7391832470935944635

`A188039(A001952(n+1)-n)`
-/

namespace A187975.P7391832470935944635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A001952 (n + 1) - (n : ℤ)).toNat

end

end A187975.P7391832470935944635

namespace A187975

/-- `A188039(A001952(n+1)-n)` -/
def P7391832470935944635.Spec : Prop :=
  ∀ n, P7391832470935944635.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P12613715055379944566

`A190337(A286666(n+1)+1)+1`
-/

namespace A187975.P12613715055379944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (A286666 (n + 1) + 1).toNat + 1

end

end A187975.P12613715055379944566

namespace A187975

/-- `A190337(A286666(n+1)+1)+1` -/
def P12613715055379944566.Spec : Prop :=
  ∀ n, P12613715055379944566.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P1166185860370612525

`A098021(A187968(2*(n+1)))+2`
-/

namespace A187975.P1166185860370612525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (A187968 (2 * (n + 1))).toNat + 2

end

end A187975.P1166185860370612525

namespace A187975

/-- `A098021(A187968(2*(n+1)))+2` -/
def P1166185860370612525.Spec : Prop :=
  ∀ n, P1166185860370612525.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P16280196611381472294

`A188039(A087057(n+1)+1+n)`
-/

namespace A187975.P16280196611381472294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A087057 (n + 1) + 1 + (n : ℤ)).toNat

end

end A187975.P16280196611381472294

namespace A187975

/-- `A188039(A087057(n+1)+1+n)` -/
def P16280196611381472294.Spec : Prop :=
  ∀ n, P16280196611381472294.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P5062655578134217178

`A098021(A087057(n+1)+n)+2`
-/

namespace A187975.P5062655578134217178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (A087057 (n + 1) + (n : ℤ)).toNat + 2

end

end A187975.P5062655578134217178

namespace A187975

/-- `A098021(A087057(n+1)+n)+2` -/
def P5062655578134217178.Spec : Prop :=
  ∀ n, P5062655578134217178.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P13045459627146569673

`A188039(A001951(n+1)+n+2)`
-/

namespace A187975.P13045459627146569673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (A001951 (n + 1) + (n + 2 : ℤ)).toNat

end

end A187975.P13045459627146569673

namespace A187975

/-- `A188039(A001951(n+1)+n+2)` -/
def P13045459627146569673.Spec : Prop :=
  ∀ n, P13045459627146569673.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P15937870468140997061

`A189380(comp[floor(n*sqrt(2))])+n+1`
-/

namespace A187975.P15937870468140997061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189380 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n + 1 : ℤ)

end

end A187975.P15937870468140997061

namespace A187975

/-- `A189380(comp[floor(n*sqrt(2))])+n+1` -/
def P15937870468140997061.Spec : Prop :=
  ∀ n, P15937870468140997061.a n = A187975 (n + 1)

end A187975

/-! ## A187975.P17524980977191758896

`A187338(comp[floor(n*sqrt(2))])-(n+1)`
-/

namespace A187975.P17524980977191758896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n + 1 : ℤ)

end

end A187975.P17524980977191758896

namespace A187975

/-- `A187338(comp[floor(n*sqrt(2))])-(n+1)` -/
def P17524980977191758896.Spec : Prop :=
  ∀ n, P17524980977191758896.a n = A187975 (n + 1)

end A187975

/-!
# A187976: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=6, [ ]=floor.

The programs for A187976, the canonical program `A187976.P9167118269187722493` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187976 has offset 1).

The definition of A187976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187976.P9167118269187722493

`char[A187978(n+1)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187976

/-- `char[A187978(n+1)-1]` -/
def P9167118269187722493.Spec : Prop :=
  ∀ n, (P9167118269187722493.a n : ℤ) = A187976 (n + 1)

theorem P9167118269187722493.correct : P9167118269187722493.Spec := by
  intro n
  simp only [A187976, Nat.add_sub_cancel]

end A187976

/-! ## A187976.P4587556248849223857

`1-char[A187977(n+1)-1]`
-/

namespace A187976.P4587556248849223857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187976.P4587556248849223857

namespace A187976

/-- `1-char[A187977(n+1)-1]` -/
def P4587556248849223857.Spec : Prop :=
  ∀ n, P4587556248849223857.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P18060556996220818037

`char[A003152(A188397(n+1))]`
-/

namespace A187976.P18060556996220818037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188397 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187976.P18060556996220818037

namespace A187976

/-- `char[A003152(A188397(n+1))]` -/
def P18060556996220818037.Spec : Prop :=
  ∀ n, (P18060556996220818037.a n : ℤ) = A187976 (n + 1)

end A187976

/-! ## A187976.P16769162702423933718

`A187972(n+1)*A187972(n+3)`
-/

namespace A187976.P16769162702423933718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187972 (n + 1) * A187972 (n + 3)

end

end A187976.P16769162702423933718

namespace A187976

/-- `A187972(n+1)*A187972(n+3)` -/
def P16769162702423933718.Spec : Prop :=
  ∀ n, P16769162702423933718.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P8659797666311453104

`A187969(n+4)+A187969(n+1)`
-/

namespace A187976.P8659797666311453104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (n + 4) + A187969 (n + 1)

end

end A187976.P8659797666311453104

namespace A187976

/-- `A187969(n+4)+A187969(n+1)` -/
def P8659797666311453104.Spec : Prop :=
  ∀ n, P8659797666311453104.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P12204830399331277369

`A144611(7*A144611(n)+n)`
-/

namespace A187976.P12204830399331277369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (7 * A144611 n + (n : ℤ)).toNat

end

end A187976.P12204830399331277369

namespace A187976

/-- `A144611(7*A144611(n)+n)` -/
def P12204830399331277369.Spec : Prop :=
  ∀ n, P12204830399331277369.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P18166793766244611656

`and(A144611(n+7), A144611(n))`
-/

namespace A187976.P18166793766244611656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144611 (n + 7)) (A144611 n)

end

end A187976.P18166793766244611656

namespace A187976

/-- `and(A144611(n+7), A144611(n))` -/
def P18166793766244611656.Spec : Prop :=
  ∀ n, P18166793766244611656.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P4151901842927754199

`A097508(A097508(n+7)-A097508(n+1))`
-/

namespace A187976.P4151901842927754199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A097508 (n + 7) - A097508 (n + 1)).toNat

end

end A187976.P4151901842927754199

namespace A187976

/-- `A097508(A097508(n+7)-A097508(n+1))` -/
def P4151901842927754199.Spec : Prop :=
  ∀ n, P4151901842927754199.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P14963985208719953652

`A286804(A286806(n+1)+12)`
-/

namespace A187976.P14963985208719953652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A286806 (n + 1) + 12).toNat

end

end A187976.P14963985208719953652

namespace A187976

/-- `A286804(A286806(n+1)+12)` -/
def P14963985208719953652.Spec : Prop :=
  ∀ n, P14963985208719953652.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P13165920367389671443

`A286937(A286806(n+1)+14)`
-/

namespace A187976.P13165920367389671443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286937 (A286806 (n + 1) + 14).toNat

end

end A187976.P13165920367389671443

namespace A187976

/-- `A286937(A286806(n+1)+14)` -/
def P13165920367389671443.Spec : Prop :=
  ∀ n, P13165920367389671443.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P13453094690131884075

`A159684(A285074(2*n+3)+17)`
-/

namespace A187976.P13453094690131884075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A285074 (2 * n + 3) + 17).toNat

end

end A187976.P13453094690131884075

namespace A187976

/-- `A159684(A285074(2*n+3)+17)` -/
def P13453094690131884075.Spec : Prop :=
  ∀ n, P13453094690131884075.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P11823682231555376822

`A285073(comp[floor(n*sqrt(2))]+22)`
-/

namespace A187976.P11823682231555376822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 22)

end

end A187976.P11823682231555376822

namespace A187976

/-- `A285073(comp[floor(n*sqrt(2))]+22)` -/
def P11823682231555376822.Spec : Prop :=
  ∀ n, P11823682231555376822.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P6921687274010638075

`A285076(comp[floor(n*sqrt(2))]+22)`
-/

namespace A187976.P6921687274010638075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 22)

end

end A187976.P6921687274010638075

namespace A187976

/-- `A285076(comp[floor(n*sqrt(2))]+22)` -/
def P6921687274010638075.Spec : Prop :=
  ∀ n, P6921687274010638075.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P3084873005184753152

`A289035(A001952(n+1)+24)`
-/

namespace A187976.P3084873005184753152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A001952 (n + 1) + 24).toNat

end

end A187976.P3084873005184753152

namespace A187976

/-- `A289035(A001952(n+1)+24)` -/
def P3084873005184753152.Spec : Prop :=
  ∀ n, P3084873005184753152.a n = A187976 (n + 1)

end A187976

/-! ## A187976.P4612260892109657241

`2-A245933(A003151(n+1))`
-/

namespace A187976.P4612260892109657241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A245933 (A003151 (n + 1)).toNat

end

end A187976.P4612260892109657241

namespace A187976

/-- `2-A245933(A003151(n+1))` -/
def P4612260892109657241.Spec : Prop :=
  ∀ n, P4612260892109657241.a n = A187976 (n + 1)

end A187976

/-!
# A187977: Positions of 0 in A187976; complement of A187978.

The programs for A187977, the canonical program `A187977.P12461082133786506641` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187977 has offset 1).

The definition of A187977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187977.P12461082133786506641

`∪[A187973(n+1)-2, A187973(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187977

/-- `∪[A187973(n+1)-2, A187973(n+1)]` -/
def P12461082133786506641.Spec : Prop :=
  ∀ n, (P12461082133786506641.a n : ℤ) = A187977 (n + 1)

theorem P12461082133786506641.correct : P12461082133786506641.Spec := by
  intro n
  simp only [A187977, Nat.add_sub_cancel]

end A187977

/-! ## A187977.P5727945522170361024

`∪[A080754(n+1), A288998(n+1)+n]`
-/

namespace A187977.P5727945522170361024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187977.P5727945522170361024

namespace A187977

/-- `∪[A080754(n+1), A288998(n+1)+n]` -/
def P5727945522170361024.Spec : Prop :=
  ∀ n, (P5727945522170361024.a n : ℤ) = A187977 (n + 1)

end A187977

/-! ## A187977.P14675753716391285044

`A003152(A286997(n+1))`
-/

namespace A187977.P14675753716391285044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A286997 (n + 1)).toNat

end

end A187977.P14675753716391285044

namespace A187977

/-- `A003152(A286997(n+1))` -/
def P14675753716391285044.Spec : Prop :=
  ∀ n, P14675753716391285044.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P13484648506660013598

`lt[A187976(n+1), 1]+1`
-/

namespace A187977.P13484648506660013598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187977.P13484648506660013598

namespace A187977

/-- `lt[A187976(n+1), 1]+1` -/
def P13484648506660013598.Spec : Prop :=
  ∀ n, (P13484648506660013598.a n : ℤ) = A187977 (n + 1)

end A187977

/-! ## A187977.P8498510029899364382

`record[n+1-A001951(n)*A187976(n+1)]`
-/

namespace A187977.P8498510029899364382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001951 n * A187976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187977.P8498510029899364382

namespace A187977

/-- `record[n+1-A001951(n)*A187976(n+1)]` -/
def P8498510029899364382.Spec : Prop :=
  ∀ n, P8498510029899364382.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P16960273983546390199

`record[n+1-A001952(n+1)*A187976(n+1)]`
-/

namespace A187977.P16960273983546390199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001952 (n + 1) * A187976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187977.P16960273983546390199

namespace A187977

/-- `record[n+1-A001952(n+1)*A187976(n+1)]` -/
def P16960273983546390199.Spec : Prop :=
  ∀ n, P16960273983546390199.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P2570259376893797437

`record[n+1-A003151(n+1)*A187976(n+1)]`
-/

namespace A187977.P2570259376893797437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003151 (n + 1) * A187976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187977.P2570259376893797437

namespace A187977

/-- `record[n+1-A003151(n+1)*A187976(n+1)]` -/
def P2570259376893797437.Spec : Prop :=
  ∀ n, P2570259376893797437.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P6565992865890887623

`record[n+1-A003152(n+1)*A187976(n+1)]`
-/

namespace A187977.P6565992865890887623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003152 (n + 1) * A187976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187977.P6565992865890887623

namespace A187977

/-- `record[n+1-A003152(n+1)*A187976(n+1)]` -/
def P6565992865890887623.Spec : Prop :=
  ∀ n, P6565992865890887623.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P11540943365543666529

`record[n+1-A006337(n+1)*A187976(n+1)]`
-/

namespace A187977.P11540943365543666529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006337 (n + 1) * A187976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187977.P11540943365543666529

namespace A187977

/-- `record[n+1-A006337(n+1)*A187976(n+1)]` -/
def P11540943365543666529.Spec : Prop :=
  ∀ n, P11540943365543666529.a n = A187977 (n + 1)

end A187977

/-! ## A187977.P5599034724226736820

`eq[A082844(A097509(n)+2+n), A097509(n)]`
-/

namespace A187977.P5599034724226736820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082844 (A097509 n + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187977.P5599034724226736820

namespace A187977

/-- `eq[A082844(A097509(n)+2+n), A097509(n)]` -/
def P5599034724226736820.Spec : Prop :=
  ∀ n, (P5599034724226736820.a n : ℤ) = A187977 (n + 1)

end A187977

/-!
# A187978: Positions of 1 in A187976; complement of A187977.

The programs for A187978, the canonical program `A187978.P14878399714927445587` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187978 has offset 1).

The definition of A187978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187978.P15135372287998889523

`A080755(A188397(n+1))`
-/

namespace A187978.P15135372287998889523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A188397 (n + 1)).toNat

end

end A187978.P15135372287998889523

namespace A187978

/-- `A080755(A188397(n+1))` -/
def P15135372287998889523.Spec : Prop :=
  ∀ n, P15135372287998889523.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P14878399714927445587

`record[A080755(n+1)*A188395(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187978

/-- `record[A080755(n+1)*A188395(n+1)]` -/
def P14878399714927445587.Spec : Prop :=
  ∀ n, P14878399714927445587.a n = A187978 (n + 1)

theorem P14878399714927445587.correct : P14878399714927445587.Spec := by
  intro n
  simp only [A187978, Nat.add_sub_cancel]

end A187978

/-! ## A187978.P4991583107856238715

`A286688(n+1)+A286667(A188397(n+1))`
-/

namespace A187978.P4991583107856238715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (n + 1) + A286667 (A188397 (n + 1)).toNat

end

end A187978.P4991583107856238715

namespace A187978

/-- `A286688(n+1)+A286667(A188397(n+1))` -/
def P4991583107856238715.Spec : Prop :=
  ∀ n, P4991583107856238715.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P2576621139783397682

`A080755(∪[A080755(n+1), A288998(n+1)])`
-/

namespace A187978.P2576621139783397682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A187978.P2576621139783397682

namespace A187978

/-- `A080755(∪[A080755(n+1), A288998(n+1)])` -/
def P2576621139783397682.Spec : Prop :=
  ∀ n, P2576621139783397682.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P3627327204787282015

`A003152(A188397(n+1))+A000005(((-1)^n)²)`
-/

namespace A187978.P3627327204787282015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188397 (n + 1)).toNat + A000005 (((-1) ^ n) ^ 2).toNat

end

end A187978.P3627327204787282015

namespace A187978

/-- `A003152(A188397(n+1))+A000005(((-1)^n)²)` -/
def P3627327204787282015.Spec : Prop :=
  ∀ n, P3627327204787282015.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P9905795605340999307

`∩[A187974(n+1)-2, A187974(n+1)]`
-/

namespace A187978.P9905795605340999307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187978.P9905795605340999307

namespace A187978

/-- `∩[A187974(n+1)-2, A187974(n+1)]` -/
def P9905795605340999307.Spec : Prop :=
  ∀ n, (P9905795605340999307.a n : ℤ) = A187978 (n + 1)

end A187978

/-! ## A187978.P18438489210141687042

`eq[1, A187976(n+1)]+1`
-/

namespace A187978.P18438489210141687042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187978.P18438489210141687042

namespace A187978

/-- `eq[1, A187976(n+1)]+1` -/
def P18438489210141687042.Spec : Prop :=
  ∀ n, (P18438489210141687042.a n : ℤ) = A187978 (n + 1)

end A187978

/-! ## A187978.P5585097703489650

`record[(n+2)*A187976(n+2)]`
-/

namespace A187978.P5585097703489650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A187976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187978.P5585097703489650

namespace A187978

/-- `record[(n+2)*A187976(n+2)]` -/
def P5585097703489650.Spec : Prop :=
  ∀ n, P5585097703489650.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P14792570098117023187

`filter[A083088(n), A187976(#)]`
-/

namespace A187978.P14792570098117023187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P14792570098117023187

namespace A187978

/-- `filter[A083088(n), A187976(#)]` -/
def P14792570098117023187.Spec : Prop :=
  ∀ n, P14792570098117023187.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P4088668883005920698

`filter[A344180(n), A187976(#)]`
-/

namespace A187978.P4088668883005920698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P4088668883005920698

namespace A187978

/-- `filter[A344180(n), A187976(#)]` -/
def P4088668883005920698.Spec : Prop :=
  ∀ n, P4088668883005920698.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P7205828158394332642

`filter[A080755(n+1), A187976(#)]`
-/

namespace A187978.P7205828158394332642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P7205828158394332642

namespace A187978

/-- `filter[A080755(n+1), A187976(#)]` -/
def P7205828158394332642.Spec : Prop :=
  ∀ n, P7205828158394332642.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P18106432006117333531

`filter[A049474(n+1), A187976(#)]`
-/

namespace A187978.P18106432006117333531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P18106432006117333531

namespace A187978

/-- `filter[A049474(n+1), A187976(#)]` -/
def P18106432006117333531.Spec : Prop :=
  ∀ n, P18106432006117333531.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P4027162122612194962

`filter[A061288(n+1), A187976(#)]`
-/

namespace A187978.P4027162122612194962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P4027162122612194962

namespace A187978

/-- `filter[A061288(n+1), A187976(#)]` -/
def P4027162122612194962.Spec : Prop :=
  ∀ n, P4027162122612194962.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P16715753167785334296

`filter[A092942(n+1), A187976(#)]`
-/

namespace A187978.P16715753167785334296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P16715753167785334296

namespace A187978

/-- `filter[A092942(n+1), A187976(#)]` -/
def P16715753167785334296.Spec : Prop :=
  ∀ n, P16715753167785334296.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P17404834498257976989

`filter[A282738(n), A187976(#)]`
-/

namespace A187978.P17404834498257976989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P17404834498257976989

namespace A187978

/-- `filter[A282738(n), A187976(#)]` -/
def P17404834498257976989.Spec : Prop :=
  ∀ n, P17404834498257976989.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P10014728921987876931

`filter[A152271(n), A187976(#)]`
-/

namespace A187978.P10014728921987876931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P10014728921987876931

namespace A187978

/-- `filter[A152271(n), A187976(#)]` -/
def P10014728921987876931.Spec : Prop :=
  ∀ n, P10014728921987876931.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P1479558115950843810

`filter[A158416(n), A187976(#)]`
-/

namespace A187978.P1479558115950843810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P1479558115950843810

namespace A187978

/-- `filter[A158416(n), A187976(#)]` -/
def P1479558115950843810.Spec : Prop :=
  ∀ n, P1479558115950843810.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P2303627075656057366

`filter[A038459(n+1), A187976(#)]`
-/

namespace A187978.P2303627075656057366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P2303627075656057366

namespace A187978

/-- `filter[A038459(n+1), A187976(#)]` -/
def P2303627075656057366.Spec : Prop :=
  ∀ n, P2303627075656057366.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P8984953722781046547

`filter[A120749(n+1), A187976(#)]`
-/

namespace A187978.P8984953722781046547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P8984953722781046547

namespace A187978

/-- `filter[A120749(n+1), A187976(#)]` -/
def P8984953722781046547.Spec : Prop :=
  ∀ n, P8984953722781046547.a n = A187978 (n + 1)

end A187978

/-! ## A187978.P9330907474533440434

`filter[A120750(n+1), A187976(#)]`
-/

namespace A187978.P9330907474533440434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A187978.P9330907474533440434

namespace A187978

/-- `filter[A120750(n+1), A187976(#)]` -/
def P9330907474533440434.Spec : Prop :=
  ∀ n, P9330907474533440434.a n = A187978 (n + 1)

end A187978

/-!
# A187979: Number of nondecreasing arrangements of n numbers x(i) in -(2n-2)..(2n-2) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187979, there is no canonical definition to state claims against.
-/

/-! ## A187979.P3875822856441685335

`A187988(∑[4*n]+1)`
-/

namespace A187979.P3875822856441685335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187979.P3875822856441685335

/-! ## A187979.P13357466203395039693

`ceil(acot(n))*A187988(A001844(n))`
-/

namespace A187979.P13357466203395039693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A187988 (A001844 n).toNat

end

end A187979.P13357466203395039693

/-! ## A187979.P8007141731643022478

`record[A003982(n)*A187988(n+1)]`
-/

namespace A187979.P8007141731643022478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A187988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187979.P8007141731643022478

/-! ## A187979.P14359461343021474681

`A187988(A001844(n))+A025439(n)`
-/

namespace A187979.P14359461343021474681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A001844 n).toNat + A025439 n

end

end A187979.P14359461343021474681

/-! ## A187979.P11163574252580859799

`A326596(n)+A187988(A001844(n))`
-/

namespace A187979.P11163574252580859799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n + A187988 (A001844 n).toNat

end

end A187979.P11163574252580859799

/-!
# A187980: Number of nondecreasing arrangements of n numbers x(i) in -(n-1)..(n-1) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187980, there is no canonical definition to state claims against.
-/

/-! ## A187980.P13102759984996817310

`A187988(∑[n+1])`
-/

namespace A187980.P13102759984996817310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187980.P13102759984996817310

/-! ## A187980.P4356235873750121284

`record[Δ[-A187988(n+1)]]`
-/

namespace A187980.P4356235873750121284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A187988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187980.P4356235873750121284

/-! ## A187980.P7584193695014506418

`record[A187988(A001972(n))]`
-/

namespace A187980.P7584193695014506418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187980.P7584193695014506418

/-! ## A187980.P7734382955064811810

`record[A187988(A133825(n))]`
-/

namespace A187980.P7734382955064811810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187980.P7734382955064811810

/-! ## A187980.P11955957899713074099

`record[A187988(∑[A008621(n)])]`
-/

namespace A187980.P11955957899713074099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187980.P11955957899713074099

/-!
# A187981: Number of nondecreasing arrangements of n numbers x(i) in -n..n with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187981, there is no canonical definition to state claims against.
-/

/-! ## A187981.P16073230494345279713

`A187988(∑[n+2])`
-/

namespace A187981.P16073230494345279713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187981.P16073230494345279713

/-! ## A187981.P15802618846718049523

`record[A187988(A198455(n+1))]`
-/

namespace A187981.P15802618846718049523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187981.P15802618846718049523

/-! ## A187981.P6765332402882869416

`record[A187988(A256699(n+1))]`
-/

namespace A187981.P6765332402882869416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A256699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187981.P6765332402882869416

/-! ## A187981.P3671672424670900017

`record[A023531(n+1)*A187988(n+1)]`
-/

namespace A187981.P3671672424670900017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A187988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187981.P3671672424670900017

/-! ## A187981.P2059174852443151620

`record[A187988(n+1)*A283683(n+1)]`
-/

namespace A187981.P2059174852443151620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (n + 1) * A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187981.P2059174852443151620

/-!
# A187982: Number of nondecreasing arrangements of n numbers x(i) in -(n+1)..(n+1) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187982, there is no canonical definition to state claims against.
-/

/-! ## A187982.P3911145756782219607

`A187988(∑[n+3]+1)`
-/

namespace A187982.P3911145756782219607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187982.P3911145756782219607

/-! ## A187982.P7426103908186184154

`record[A187988(A198455(n+1)-1)]`
-/

namespace A187982.P7426103908186184154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187982.P7426103908186184154

/-! ## A187982.P10019946587328544265

`record[A010054(n+3)*A187988(n+1)]`
-/

namespace A187982.P10019946587328544265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A187988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187982.P10019946587328544265

/-! ## A187982.P13859782208006842595

`A057427(n)*A187988(A034856(n+2))`
-/

namespace A187982.P13859782208006842595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A187988 (A034856 (n + 2)).toNat

end

end A187982.P13859782208006842595

/-! ## A187982.P12372894886186917611

`A187988(A034856(n+2))%A021474(n)`
-/

namespace A187982.P12372894886186917611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187988 (A034856 (n + 2)).toNat) (A021474 n)

end

end A187982.P12372894886186917611

/-!
# A187983: Number of nondecreasing arrangements of n numbers x(i) in -(n+2)..(n+2) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187983, there is no canonical definition to state claims against.
-/

/-! ## A187983.P1903996209626569738

`A187988(∑[n+4]+3)`
-/

namespace A187983.P1903996209626569738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187983.P1903996209626569738

/-! ## A187983.P11445468680558610762

`A187988(A141214(n+1))%A003952(n)`
-/

namespace A187983.P11445468680558610762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187988 (A141214 (n + 1)).toNat) (A003952 n)

end

end A187983.P11445468680558610762

/-!
# A187984: Number of nondecreasing arrangements of n numbers x(i) in -(n+3)..(n+3) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187984, there is no canonical definition to state claims against.
-/

/-! ## A187984.P13619960013418802408

`A187988(∑[n+5]+6)`
-/

namespace A187984.P13619960013418802408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A187984.P13619960013418802408

/-! ## A187984.P5473095086131659464

`A187988(Δ[A023545(n+1)])%(16^n)`
-/

namespace A187984.P5473095086131659464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187988 (f1 (n + 1) - f1 n).toNat) (16 ^ n : ℤ)

end

end A187984.P5473095086131659464

/-! ## A187984.P4486965590674869057

`A187988(Δ[A023545(n+1)])+A077896(2*n+1)`
-/

namespace A187984.P4486965590674869057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (f1 (n + 1) - f1 n).toNat + A077896 (2 * n + 1)

end

end A187984.P4486965590674869057

/-!
# A187985: Number of nondecreasing arrangements of n numbers x(i) in -(n+4)..(n+4) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187985, there is no canonical definition to state claims against.
-/

/-! ## A187985.P9173143959168375735

`A187988(∑[n+6]+10)`
-/

namespace A187985.P9173143959168375735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A187985.P9173143959168375735

/-!
# A187986: Number of nondecreasing arrangements of n numbers x(i) in -(n+5)..(n+5) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187986, there is no canonical definition to state claims against.
-/

/-! ## A187986.P9317877963262752187

`A187988(A055999(n+4))`
-/

namespace A187986.P9317877963262752187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A055999 (n + 4)).toNat

end

end A187986.P9317877963262752187

/-! ## A187986.P12174138115502122717

`A187988(A134227(n+5))`
-/

namespace A187986.P12174138115502122717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A134227 (n + 5)).toNat

end

end A187986.P12174138115502122717

/-! ## A187986.P13744486777111564016

`A187988(eq[4, A219347(n)])`
-/

namespace A187986.P13744486777111564016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187986.P13744486777111564016

/-! ## A187986.P10471932053092387935

`A187988(eq[6, A193592(n)])`
-/

namespace A187986.P10471932053092387935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187986.P10471932053092387935

/-! ## A187986.P16539549845797028605

`A187988(eq[7, A152157(n)])`
-/

namespace A187986.P16539549845797028605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187986.P16539549845797028605

/-!
# A187987: Number of nondecreasing arrangements of n numbers x(i) in -(n+6)..(n+6) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187987, there is no canonical definition to state claims against.
-/

/-! ## A187987.P15773518566934127335

`A187988(eq[5, A219347(n)])`
-/

namespace A187987.P15773518566934127335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187987.P15773518566934127335

/-! ## A187987.P15317720160057698263

`A187988(eq[7, A193592(n)])`
-/

namespace A187987.P15317720160057698263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187987.P15317720160057698263

/-! ## A187987.P5474769847400332956

`A187988(A000124(n+8)-8)`
-/

namespace A187987.P5474769847400332956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A000124 (n + 8) - 8).toNat

end

end A187987.P5474769847400332956

/-! ## A187987.P4312599857707158876

`A187988(eq[7, A025581(n)]+1)`
-/

namespace A187987.P4312599857707158876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187987.P4312599857707158876

/-! ## A187987.P16255207545748759276

`A187988(eq[8, A193739(n)]+1)`
-/

namespace A187987.P16255207545748759276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187987.P16255207545748759276

/-!
# A187988: T(n,k) = number of nondecreasing arrangements of n numbers x(i) in -(n+k-2)..(n+k-2) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187988, there is no canonical definition to state claims against.
-/

/-! ## A187988.P8400861544256081280

`A000193(A283432(n))`
-/

namespace A187988.P8400861544256081280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A283432 n).toNat

end

end A187988.P8400861544256081280

/-! ## A187988.P6681419917932013546

`A339896(A092477(n+1))`
-/

namespace A187988.P6681419917932013546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A092477 (n + 1)).toNat

end

end A187988.P6681419917932013546

/-! ## A187988.P7522642728742062272

`A233777(A187115(n+2))-1`
-/

namespace A187988.P7522642728742062272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (A187115 (n + 2)).toNat - 1

end

end A187988.P7522642728742062272

/-! ## A187988.P10629288175093576226

`A348192(5*A331762(n+1))`
-/

namespace A187988.P10629288175093576226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348192 (5 * A331762 (n + 1)).toNat

end

end A187988.P10629288175093576226

/-! ## A187988.P8841711017802390685

`A000602(A278063(2*n+1))%A206551(A063804(n+3))`
-/

namespace A187988.P8841711017802390685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 (A278063 (2 * n + 1)).toNat) (A206551 (A063804 (n + 3)).toNat)

end

end A187988.P8841711017802390685

/-!
# A187989: Number of nondecreasing arrangements of 5 numbers x(i) in -(n+3)..(n+3) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187989, the canonical program `A187989.P5269524187475352130` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187989 has offset 1).

The definition of A187989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187989.P5269524187475352130

`C(2*(n+5), 2)-9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187989

/-- `C(2*(n+5), 2)-9` -/
def P5269524187475352130.Spec : Prop :=
  ∀ n, P5269524187475352130.a n = A187989 (n + 1)

theorem P5269524187475352130.correct : P5269524187475352130.Spec := by
  intro n
  simp only [A187989, Nat.add_sub_cancel]

end A187989

/-! ## A187989.P1995232307866724961

`∑[a(n-1)+4]` with `a(0)=36, a(1)=21`
-/

namespace A187989.P1995232307866724961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36, 21] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187989.P1995232307866724961

namespace A187989

/-- `∑[a(n-1)+4]` -/
def P1995232307866724961.Spec : Prop :=
  ∀ n, (P1995232307866724961.a n : ℤ) = A187989 (n + 1)

end A187989

/-! ## A187989.P2807062571861857316

`n*(2*n+19)+36`
-/

namespace A187989.P2807062571861857316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 19) + 36

end

end A187989.P2807062571861857316

namespace A187989

/-- `n*(2*n+19)+36` -/
def P2807062571861857316.Spec : Prop :=
  ∀ n, (P2807062571861857316.a n : ℤ) = A187989 (n + 1)

theorem P2807062571861857316.correct : P2807062571861857316.Spec := by
  intro n
  simp only [A187989, Nat.add_sub_cancel, A187989.P2807062571861857316.a, A187989.P5269524187475352130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187989

/-! ## A187989.P7178638675166538967

`floor(n-∑[a(n-1)-4])` with `a(0)=-36, a(1)=-20`

`floor` is left out, it is the identity on integers.
-/

namespace A187989.P7178638675166538967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-36, -20] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187989.P7178638675166538967

namespace A187989

/-- `floor(n-∑[a(n-1)-4])` -/
def P7178638675166538967.Spec : Prop :=
  ∀ n, P7178638675166538967.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P6291676947021883899

`∑[2*a(n-1)-a(n-2)]` with `a(0)=36, a(1)=21, a(2)=25`
-/

namespace A187989.P6291676947021883899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36, 21, 25] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187989.P6291676947021883899

namespace A187989

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P6291676947021883899.Spec : Prop :=
  ∀ n, P6291676947021883899.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P11014518403857424818

`Δ[Δ[n*A111396(n)]]`
-/

namespace A187989.P11014518403857424818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A111396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187989.P11014518403857424818

namespace A187989

/-- `Δ[Δ[n*A111396(n)]]` -/
def P11014518403857424818.Spec : Prop :=
  ∀ n, P11014518403857424818.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P15413118547386439073

`A051936(2*n+9)`
-/

namespace A187989.P15413118547386439073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (2 * n + 9)

end

end A187989.P15413118547386439073

namespace A187989

/-- `A051936(2*n+9)` -/
def P15413118547386439073.Spec : Prop :=
  ∀ n, P15413118547386439073.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P12105819503387620897

`A060533(2*(n+4))`
-/

namespace A187989.P12105819503387620897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060533 (2 * (n + 4))

end

end A187989.P12105819503387620897

namespace A187989

/-- `A060533(2*(n+4))` -/
def P12105819503387620897.Spec : Prop :=
  ∀ n, P12105819503387620897.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P16489293415508349454

`A392899(4*(n+3))`
-/

namespace A187989.P16489293415508349454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392899 (4 * (n + 3))

end

end A187989.P16489293415508349454

namespace A187989

/-- `A392899(4*(n+3))` -/
def P16489293415508349454.Spec : Prop :=
  ∀ n, P16489293415508349454.a n = A187989 (n + 1)

end A187989

/-! ## A187989.P13625125882965131579

`(A059224(n+4)+A000079(n+1))/A000079(n+1)`
-/

namespace A187989.P13625125882965131579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059224 (n + 4) + A000079 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A187989.P13625125882965131579

namespace A187989

/-- `(A059224(n+4)+A000079(n+1))/A000079(n+1)` -/
def P13625125882965131579.Spec : Prop :=
  ∀ n, P13625125882965131579.a n = (A187989 (n + 1) : ℚ)

theorem P13625125882965131579.correct : P13625125882965131579.Spec := by
  intro n
  simp only [A187989, Nat.add_sub_cancel, A187989.P13625125882965131579.a, A187989.P5269524187475352130.a, A000079, A000079.P10855139691139572931.a, A059224, A059224.P17600888059109192855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187989

/-!
# A187990: Number of nondecreasing arrangements of 6 numbers x(i) in -(n+4)..(n+4) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187990, the canonical program `A187990.P4618801249823615659` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187990 has offset 0).

The definition of A187990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187990.P4618801249823615659

`(n^3+39*n²+260*n+402)/6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187990

/-- `(n^3+39*n²+260*n+402)/6` -/
def P4618801249823615659.Spec : Prop :=
  ∀ n, P4618801249823615659.a n = (A187990 n : ℚ)

end A187990

/-! ## A187990.P16518244479215567048

`A002939(n+4)+∑[A000124(n+4)]`
-/

namespace A187990.P16518244479215567048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187990.P16518244479215567048

namespace A187990

/-- `A002939(n+4)+∑[A000124(n+4)]` -/
def P16518244479215567048.Spec : Prop :=
  ∀ n, P16518244479215567048.a n = A187990 n

end A187990

/-! ## A187990.P12778378808185429060

`A055999(2*n+3)+A264443(n+3)+A055998(n)`
-/

namespace A187990.P12778378808185429060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (2 * n + 3) + (A264443 (n + 3) + A055998 n)

end

end A187990.P12778378808185429060

namespace A187990

/-- `A055999(2*n+3)+A264443(n+3)+A055998(n)` -/
def P12778378808185429060.Spec : Prop :=
  ∀ n, P12778378808185429060.a n = A187990 n

end A187990

/-! ## A187990.P18183944101384125033

`Δ[A060488(2*n+5)+A005287(n+4)]`
-/

namespace A187990.P18183944101384125033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (2 * n + 5) + A005287 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187990.P18183944101384125033

namespace A187990

/-- `Δ[A060488(2*n+5)+A005287(n+4)]` -/
def P18183944101384125033.Spec : Prop :=
  ∀ n, P18183944101384125033.a n = A187990 n

end A187990

/-!
# A187991: Number of nondecreasing arrangements of 7 numbers x(i) in -(n+5)..(n+5) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187991, there is no canonical definition to state claims against.
-/

/-! ## A187991.P1788425754470850403

`A187988(A167487(n+5))`
-/

namespace A187991.P1788425754470850403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A167487 (n + 5)).toNat

end

end A187991.P1788425754470850403

/-! ## A187991.P16846731474072973000

`A187988(A056119(n)+28)`
-/

namespace A187991.P16846731474072973000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A056119 n + 28).toNat

end

end A187991.P16846731474072973000

/-! ## A187991.P5526048763367898382

`A187988(eq[11, A066657(n)])`
-/

namespace A187991.P5526048763367898382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187991.P5526048763367898382

/-! ## A187991.P3892473766965504628

`A187988(A166136(n+5)+1)`
-/

namespace A187991.P3892473766965504628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A166136 (n + 5) + 1).toNat

end

end A187991.P3892473766965504628

/-! ## A187991.P12850516956869940958

`A187988(A167499(n+5)+2)`
-/

namespace A187991.P12850516956869940958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A167499 (n + 5) + 2).toNat

end

end A187991.P12850516956869940958

/-!
# A187992: Number of nondecreasing arrangements of 8 numbers x(i) in -(n+6)..(n+6) with the sum of sign(x(i))*2^|x(i)| zero.

The programs for A187992, there is no canonical definition to state claims against.
-/

/-! ## A187992.P4514728795840078504

`A187988(eq[13, A066657(n)])`
-/

namespace A187992.P4514728795840078504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187992.P4514728795840078504

/-! ## A187992.P17114644350361256267

`A187988(A167487(n+6)+1)`
-/

namespace A187992.P17114644350361256267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A167487 (n + 6) + 1).toNat

end

end A187992.P17114644350361256267

/-! ## A187992.P13293187789005673331

`A187988(A000124(n+7)+7)`
-/

namespace A187992.P13293187789005673331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A000124 (n + 7) + 7).toNat

end

end A187992.P13293187789005673331

/-! ## A187992.P10476378585490054369

`A187988(eq[7, A002262(n)]+1)`
-/

namespace A187992.P10476378585490054369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187992.P10476378585490054369

/-! ## A187992.P17492430146316992691

`A187988(eq[9, A131818(n+1)])`
-/

namespace A187992.P17492430146316992691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187992.P17492430146316992691

/-!
# A187993: Number of nondecreasing arrangements of n numbers x(i) in -(2n-2)..(2n-2) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187993, there is no canonical definition to state claims against.
-/

/-! ## A187993.P595935653324137899

`A188002(∑[4*n]+1)`
-/

namespace A187993.P595935653324137899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187993.P595935653324137899

/-! ## A187993.P2351969462777153795

`lcm((-1)^n, A188002(A001844(n)))`
-/

namespace A187993.P2351969462777153795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A188002 (A001844 n).toNat)

end

end A187993.P2351969462777153795

/-! ## A187993.P18134372396972823519

`record[A003982(n)*A188002(n+1)]`
-/

namespace A187993.P18134372396972823519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187993.P18134372396972823519

/-! ## A187993.P16661019454904069451

`record[gcd(A003987(n), A188002(n+1))]`
-/

namespace A187993.P16661019454904069451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A188002 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187993.P16661019454904069451

/-! ## A187993.P14167458391029379658

`A243199(n+2)+A188002(A001844(n))`
-/

namespace A187993.P14167458391029379658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243199 (n + 2) + A188002 (A001844 n).toNat

end

end A187993.P14167458391029379658

/-!
# A187994: Number of nondecreasing arrangements of n numbers x(i) in -(n-1)..(n-1) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187994, there is no canonical definition to state claims against.
-/

/-! ## A187994.P4009871882310759913

`A188002(∑[n+1])`
-/

namespace A187994.P4009871882310759913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187994.P4009871882310759913

/-! ## A187994.P3354249218912283498

`record[A188002(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A187994.P3354249218912283498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187994.P3354249218912283498

/-! ## A187994.P53157341679172619

`record[A188002(A133825(n))]`
-/

namespace A187994.P53157341679172619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187994.P53157341679172619

/-! ## A187994.P391233716367216443

`record[A188002(∑[A057979(n)])]`
-/

namespace A187994.P391233716367216443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187994.P391233716367216443

/-! ## A187994.P17194014417523516514

`record[A188002(A038722(n+1))]`
-/

namespace A187994.P17194014417523516514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187994.P17194014417523516514

/-!
# A187995: Number of nondecreasing arrangements of n numbers x(i) in -n..n with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187995, there is no canonical definition to state claims against.
-/

/-! ## A187995.P8030760407692954236

`A188002(∑[n+2])`
-/

namespace A187995.P8030760407692954236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187995.P8030760407692954236

/-! ## A187995.P4744851665537208885

`record[A188002(A193974(n))]`
-/

namespace A187995.P4744851665537208885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187995.P4744851665537208885

/-! ## A187995.P1547678308539278860

`record[A188002(A061579(n+1))]`
-/

namespace A187995.P1547678308539278860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187995.P1547678308539278860

/-! ## A187995.P3458919910970830460

`A188002(A055998(n)+2)+char[27]`
-/

namespace A187995.P3458919910970830460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A055998 n + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187995.P3458919910970830460

/-! ## A187995.P12698793427551802123

`record[A129186(n)*A188002(n+1)]`
-/

namespace A187995.P12698793427551802123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A188002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187995.P12698793427551802123

/-!
# A187996: Number of nondecreasing arrangements of n numbers x(i) in -(n+1)..(n+1) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187996, there is no canonical definition to state claims against.
-/

/-! ## A187996.P13034862470979468688

`A188002(∑[n+3]+1)`
-/

namespace A187996.P13034862470979468688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187996.P13034862470979468688

/-! ## A187996.P14712902864986129925

`record[A188002(gcd(n, A008290(n)))]`
-/

namespace A187996.P14712902864986129925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (Int.gcd (n : ℤ) (A008290 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187996.P14712902864986129925

/-! ## A187996.P7376466358754829272

`record[A188002(n+1)/A188002(n+4)]`
-/

namespace A187996.P7376466358754829272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188002 (n + 1) : ℚ) / (A188002 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187996.P7376466358754829272

/-! ## A187996.P3028854037343318923

`abs((-1)^n*A188002(Δ[A008778(n)]))`
-/

namespace A187996.P3028854037343318923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A188002 (f1 (n + 1) - f1 n).toNat|

end

end A187996.P3028854037343318923

/-! ## A187996.P2576825101561557519

`record[gcd(A055300(n+2), A188002(n+1))]`
-/

namespace A187996.P2576825101561557519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A188002 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187996.P2576825101561557519

/-!
# A187997: Number of nondecreasing arrangements of n numbers x(i) in -(n+2)..(n+2) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187997, there is no canonical definition to state claims against.
-/

/-! ## A187997.P9587515290398198343

`A188002(∑[n+4]+3)`
-/

namespace A187997.P9587515290398198343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187997.P9587515290398198343

/-! ## A187997.P7293316049426170036

`A007318(A000217(n))*A188002(A055998(n+2))`
-/

namespace A187997.P7293316049426170036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A188002 (A055998 (n + 2)).toNat

end

end A187997.P7293316049426170036

/-! ## A187997.P16996980319015502189

`A188002(eq[2, A152157(n)])%A187999(n+3)`
-/

namespace A187997.P16996980319015502189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A187999 (n + 3))

end

end A187997.P16996980319015502189

/-! ## A187997.P620883443922659834

`A188002(eq[3, A193592(n)])%A187999(n+3)`
-/

namespace A187997.P620883443922659834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A187999 (n + 3))

end

end A187997.P620883443922659834

/-!
# A187998: Number of nondecreasing arrangements of n numbers x(i) in -(n+3)..(n+3) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187998, there is no canonical definition to state claims against.
-/

/-! ## A187998.P16059019721651534565

`A188002(∑[n+5]+6)`
-/

namespace A187998.P16059019721651534565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A187998.P16059019721651534565

/-! ## A187998.P3886151326236181882

`gcd(A117569(2*n), A188002(A046691(n+3)))`
-/

namespace A187998.P3886151326236181882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117569 (2 * n)) (A188002 (A046691 (n + 3)).toNat)

end

end A187998.P3886151326236181882

/-! ## A187998.P237869474776772238

`A188002(eq[3, A152157(n)])%A187999(n+3)`
-/

namespace A187998.P237869474776772238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A187999 (n + 3))

end

end A187998.P237869474776772238

/-! ## A187998.P2334752361485862710

`A188002(eq[4, A193592(n)])%A187999(n+3)`
-/

namespace A187998.P2334752361485862710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A187999 (n + 3))

end

end A187998.P2334752361485862710

/-!
# A187999: Number of nondecreasing arrangements of n numbers x(i) in -(n+4)..(n+4) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A187999, there is no canonical definition to state claims against.
-/

/-! ## A187999.P18297853152261818096

`A188002(A052905(n+3))`
-/

namespace A187999.P18297853152261818096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A052905 (n + 3)).toNat

end

end A187999.P18297853152261818096

/-! ## A187999.P965324305470066509

`A188002(A056119(n)+16)`
-/

namespace A187999.P965324305470066509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A056119 n + 16).toNat

end

end A187999.P965324305470066509

/-! ## A187999.P15268741774475952082

`A188002(eq[3, A219347(n)])`
-/

namespace A187999.P15268741774475952082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187999.P15268741774475952082

/-! ## A187999.P5514719267394118039

`A188002(eq[5, A152157(n)])`
-/

namespace A187999.P5514719267394118039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187999.P5514719267394118039

/-! ## A187999.P4893657851605243872

`A188002(eq[5, A193592(n)])`
-/

namespace A187999.P4893657851605243872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187999.P4893657851605243872

