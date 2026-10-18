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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A166401: Positive integers n where (the largest divisor of n that is <= sqrt(n)) divides (the smallest divisor of n that is >= sqrt(n)).

The programs for A166401, there is no canonical definition to state claims against.
-/

/-! ## A166401.P4461972596441895470

`∪[A000961(n+1), A166402(n+1)]`
-/

namespace A166401.P4461972596441895470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P4461972596441895470

/-! ## A166401.P2427765248368855830

`∪[A000961(n+1), A166403(n+1)]`
-/

namespace A166401.P2427765248368855830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P2427765248368855830

/-! ## A166401.P5957141777606912357

`∪[A008578(n+1), A166402(n+1)]`
-/

namespace A166401.P5957141777606912357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P5957141777606912357

/-! ## A166401.P1509980741339147214

`∪[A033946(n+1), A166402(n+1)]`
-/

namespace A166401.P1509980741339147214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P1509980741339147214

/-! ## A166401.P12498043709055576842

`∪[A046022(n+1), A166402(n+1)]`
-/

namespace A166401.P12498043709055576842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P12498043709055576842

/-! ## A166401.P15281247883084316423

`∪[A067126(n+1), A166402(n+1)]`
-/

namespace A166401.P15281247883084316423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P15281247883084316423

/-! ## A166401.P5816274747955183437

`∪[A074583(n+1), A166402(n+1)]`
-/

namespace A166401.P5816274747955183437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P5816274747955183437

/-! ## A166401.P14672644215067521606

`∪[A084400(n+1), A166402(n+1)]`
-/

namespace A166401.P14672644215067521606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P14672644215067521606

/-! ## A166401.P5337545790310326127

`∪[A115975(n+1), A166402(n+1)]`
-/

namespace A166401.P5337545790310326127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P5337545790310326127

/-! ## A166401.P4221174308587826991

`∪[A164336(n+1), A166402(n+1)]`
-/

namespace A166401.P4221174308587826991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P4221174308587826991

/-! ## A166401.P5705192285045753564

`∪[A166402(n+1), A166684(n+1)]`
-/

namespace A166401.P5705192285045753564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P5705192285045753564

/-! ## A166401.P6002979370352918661

`∪[A174090(n+1), A166402(n+1)]`
-/

namespace A166401.P6002979370352918661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P6002979370352918661

/-! ## A166401.P17460762192801906780

`∪[A166402(n+1), A235868(n+1)]`
-/

namespace A166401.P17460762192801906780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P17460762192801906780

/-! ## A166401.P12288012907688211755

`∪[A166402(n+1), A284696(n+1)]`
-/

namespace A166401.P12288012907688211755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166401.P12288012907688211755

/-! ## A166401.P6094057013194583461

`lt[A101257(n+1), 1]+1`
-/

namespace A166401.P6094057013194583461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166401.P6094057013194583461

/-! ## A166401.P2491689772895671311

`record[gcd(n+1, A139717(n+1))]`
-/

namespace A166401.P2491689772895671311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A139717 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166401.P2491689772895671311

/-! ## A166401.P17352511989217256378

`record[A000188(n+1)*A033677(n+1)]`
-/

namespace A166401.P17352511989217256378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166401.P17352511989217256378

/-! ## A166401.P6549037182493854625

`eq[A033676(n+1)², A008833(n+1)]+1`
-/

namespace A166401.P6549037182493854625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166401.P6549037182493854625

/-! ## A166401.P13740737813543948783

`record[A033677(n+1)+n+1-A019554(n+1)]`
-/

namespace A166401.P13740737813543948783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) + ((n + 1 : ℤ) - A019554 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166401.P13740737813543948783

/-!
# A166402: Composite terms of sequence A166401.

The programs for A166402, there is no canonical definition to state claims against.
-/

/-! ## A166402.P18265142116628073330

`∩[A057109(n+1), A166401(n+1)]`
-/

namespace A166402.P18265142116628073330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P18265142116628073330

/-! ## A166402.P9560171251878571332

`∩[A069189(n+1), A166401(n+1)]`
-/

namespace A166402.P9560171251878571332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P9560171251878571332

/-! ## A166402.P11621690074482020471

`∩[A070003(n+1), A166401(n+1)]`
-/

namespace A166402.P11621690074482020471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P11621690074482020471

/-! ## A166402.P9852816901301479085

`∩[A122145(n+1), A166401(n+1)]`
-/

namespace A166402.P9852816901301479085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P9852816901301479085

/-! ## A166402.P7216434448596390466

`∩[A166401(n+1), A328014(n+1)]`
-/

namespace A166402.P7216434448596390466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P7216434448596390466

/-! ## A166402.P14862801626739879426

`∩[A166401(n+1), A376715(n+1)]`
-/

namespace A166402.P14862801626739879426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P14862801626739879426

/-! ## A166402.P17665895901159594171

`∩[A166401(n+1), A388654(n+1)]`
-/

namespace A166402.P17665895901159594171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P17665895901159594171

/-! ## A166402.P14030404163969776453

`∩[A140269(n+1), A166401(n+1)]`
-/

namespace A166402.P14030404163969776453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P14030404163969776453

/-! ## A166402.P885761482219597301

`filter[A166401(n+1), A066247(#)]`
-/

namespace A166402.P885761482219597301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A166402.P885761482219597301

/-! ## A166402.P308682002300944736

`filter[A166401(n+1), A319988(#)]`
-/

namespace A166402.P308682002300944736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A166402.P308682002300944736

/-! ## A166402.P7223057813930132411

`filter[A166401(n+1), A345951(#)]`
-/

namespace A166402.P7223057813930132411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A166402.P7223057813930132411

/-! ## A166402.P11725247751932544302

`filter[A166401(n+1), A345952(#)]`
-/

namespace A166402.P11725247751932544302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A166402.P11725247751932544302

/-! ## A166402.P17958432792942485806

`filter[A166401(n+2), A005171(#)]`
-/

namespace A166402.P17958432792942485806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A166402.P17958432792942485806

/-! ## A166402.P10459405468453621049

`filter[A166401(n+2), A087049(#)]`
-/

namespace A166402.P10459405468453621049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A166402.P10459405468453621049

/-! ## A166402.P1138394001026081212

`∩[A166401(n+1), A269131(n+1)]`
-/

namespace A166402.P1138394001026081212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P1138394001026081212

/-! ## A166402.P12350560920183415212

`∩[A013929(n+1), A166401(n+1)]`
-/

namespace A166402.P12350560920183415212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P12350560920183415212

/-! ## A166402.P16383661806162868407

`∩[A166401(n+1), A389462(n+1)]`
-/

namespace A166402.P16383661806162868407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P16383661806162868407

/-! ## A166402.P9079378515392962382

`∩[A060679(n+1), A166401(n+1)]`
-/

namespace A166402.P9079378515392962382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P9079378515392962382

/-! ## A166402.P15492831932432065740

`∩[A166401(n+1), A179891(n+1)]`
-/

namespace A166402.P15492831932432065740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166402.P15492831932432065740

/-!
# A166403: Terms of sequence A166401 that are not powers of primes.

The programs for A166403, there is no canonical definition to state claims against.
-/

/-! ## A166403.P15928401494772917877

`filter[A166402(n+1), A355447(#)]`
-/

namespace A166403.P15928401494772917877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A166403.P15928401494772917877

/-! ## A166403.P1420664573717589236

`∩[A166401(n+1), A375397(n+1)]`
-/

namespace A166403.P1420664573717589236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P1420664573717589236

/-! ## A166403.P4078787071378944748

`∩[A166402(n+1), A375397(n+1)]`
-/

namespace A166403.P4078787071378944748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P4078787071378944748

/-! ## A166403.P18053045708540875607

`∩[A166401(n+1), A360768(n+1)]`
-/

namespace A166403.P18053045708540875607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P18053045708540875607

/-! ## A166403.P17409909498897009107

`∩[A166402(n+1), A360768(n+1)]`
-/

namespace A166403.P17409909498897009107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P17409909498897009107

/-! ## A166403.P11182287763691895802

`∩[A166401(n+1), A284342(n+1)]`
-/

namespace A166403.P11182287763691895802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P11182287763691895802

/-! ## A166403.P13116417820662547288

`∩[A166402(n+1), A284342(n+1)]`
-/

namespace A166403.P13116417820662547288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P13116417820662547288

/-! ## A166403.P8318688343818829186

`∩[A166401(n+1), A393201(n+1)]`
-/

namespace A166403.P8318688343818829186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P8318688343818829186

/-! ## A166403.P7827806286425675618

`∩[A166402(n+1), A393201(n+1)]`
-/

namespace A166403.P7827806286425675618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P7827806286425675618

/-! ## A166403.P7145684638023548006

`∩[A126706(n+1), A166401(n+1)]`
-/

namespace A166403.P7145684638023548006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P7145684638023548006

/-! ## A166403.P9331392761693241757

`∩[A126706(n+1), A166402(n+1)]`
-/

namespace A166403.P9331392761693241757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P9331392761693241757

/-! ## A166403.P16397302415457666961

`∩[A166401(n+1), A376384(n+1)]`
-/

namespace A166403.P16397302415457666961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P16397302415457666961

/-! ## A166403.P8582919513273442547

`∩[A166402(n+1), A376384(n+1)]`
-/

namespace A166403.P8582919513273442547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P8582919513273442547

/-! ## A166403.P10980324302106394147

`∩[A024619(n+1), A166401(n+1)]`
-/

namespace A166403.P10980324302106394147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P10980324302106394147

/-! ## A166403.P10615894411396866176

`∩[A024619(n+1), A166402(n+1)]`
-/

namespace A166403.P10615894411396866176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P10615894411396866176

/-! ## A166403.P827860191888700716

`∩[A166402(n+1), A361102(n+1)]`
-/

namespace A166403.P827860191888700716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166403.P827860191888700716

/-!
# A166404: Self-inverse permutation of natural numbers obtained by exchanging the run lengths of adjacent runs of ones and zeros in the binary expansion of n, starting from the most significant run of 1's. (See the example lines).

The programs for A166404, there is no canonical definition to state claims against.
-/

/-! ## A166404.P15826400438125909326

`A336963(A322464(n)%A054573(n+1))`
-/

namespace A166404.P15826400438125909326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336963 (Int.tmod (A322464 n) (A054573 (n + 1))).toNat

end

end A166404.P15826400438125909326

/-!
# A166405: Sum of those positive i <= 2n+1, for which J(i,2n+1)=-1. Here J(i,k) is the Jacobi symbol.

The programs for A166405, there is no canonical definition to state claims against.
-/

/-! ## A166405.P12924864586535400569

`A166406(n)+A166100(n)`
-/

namespace A166405.P12924864586535400569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 n + A166100 n

end

end A166405.P12924864586535400569

/-! ## A166405.P3766075281327404601

`A166100(n)+A166407(n)/3*Δ[n²]`
-/

namespace A166405.P3766075281327404601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 n : ℚ) + (A166407 n : ℚ) / 3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A166405.P3766075281327404601

/-! ## A166405.P3436853564644064030

`A023896(Δ[n²])-A166100(n)`
-/

namespace A166405.P3436853564644064030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A166100 n

end

end A166405.P3436853564644064030

/-! ## A166405.P4812604019497677857

`abs(A023896(2*n+1)-A166100(n))`
-/

namespace A166405.P4812604019497677857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023896 (2 * n + 1) - A166100 n|

end

end A166405.P4812604019497677857

/-!
# A166406: a(n) = A166405(n)-A166100(n).

The programs for A166406, there is no canonical definition to state claims against.
-/

/-! ## A166406.P3076950646480976467

`A166405(n)-A166100(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166406.P3076950646480976467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 n - A166100 n

end

end A166406.P3076950646480976467

/-! ## A166406.P2538473475465626606

`A166407(n)/3*Δ[n²]`
-/

namespace A166406.P2538473475465626606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166407 n : ℚ) / 3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A166406.P2538473475465626606

/-! ## A166406.P7792808048098095475

`A005408(n)/3*A166407(n)`
-/

namespace A166406.P7792808048098095475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / 3 * (A166407 n : ℚ)

end

end A166406.P7792808048098095475

/-! ## A166406.P16095221037200571810

`-A228131(A014681(A103517(n)))`
-/

namespace A166406.P16095221037200571810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A228131 (A014681 (A103517 n).toNat).toNat

end

end A166406.P16095221037200571810

/-! ## A166406.P5921511769641740826

`A023896(2*n+1)-A166100(n)-A166100(n)`
-/

namespace A166406.P5921511769641740826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (2 * n + 1) - A166100 n - A166100 n

end

end A166406.P5921511769641740826

/-! ## A166406.P13536456279802566315

`A166405(n)-(A023896(2*n+1)-A166405(n))`
-/

namespace A166406.P13536456279802566315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 n - (A023896 (2 * n + 1) - A166405 n)

end

end A166406.P13536456279802566315

/-! ## A166406.P9276984315270258427

`-A228131(record[A165974(n+11)])`
-/

namespace A166406.P9276984315270258427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165974 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A228131 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166406.P9276984315270258427

/-!
# A166407: a(n) = floor(3*(A166406(n)/A005408(n))).

The programs for A166407, there is no canonical definition to state claims against.
-/

/-! ## A166407.P4615300786816923372

`3*A166406(n)/A005408(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166407.P4615300786816923372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A166406 n : ℚ) / (A005408 n : ℚ))

end

end A166407.P4615300786816923372

/-! ## A166407.P12416747694664699527

`floor(3*A166406(n)/A005408(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166407.P12416747694664699527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A166406 n : ℚ) / (A005408 n : ℚ))⌋

end

end A166407.P12416747694664699527

/-! ## A166407.P10692316153566551398

`6/A016825(n)*A166406(n)`
-/

namespace A166407.P10692316153566551398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A016825 n : ℚ) * (A166406 n : ℚ)

end

end A166407.P10692316153566551398

/-! ## A166407.P8209273197820623675

`(A166405(n)-A166100(n))*3/Δ[n²]`
-/

namespace A166407.P8209273197820623675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 n - A166100 n : ℚ) * (3 / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A166407.P8209273197820623675

/-!
# A166408: a(n) = floor(A166407(n)/3).

The programs for A166408, there is no canonical definition to state claims against.
-/

/-! ## A166408.P10474619592998741303

`floor(A166407(n)/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166408.P10474619592998741303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166407 n : ℚ) / 3⌋

end

end A166408.P10474619592998741303

/-! ## A166408.P13946497348076964284

`floor(A166406(n)/Δ[n²])`
-/

namespace A166408.P13946497348076964284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166406 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A166408.P13946497348076964284

/-! ## A166408.P14666770624449959

`floor((A166405(n)-A166100(n))/Δ[n²])`
-/

namespace A166408.P14666770624449959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166405 n - A166100 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A166408.P14666770624449959

/-! ## A166408.P16977138843362898714

`round(A134451(A006656(2*n+3))/3*A166407(n))`
-/

namespace A166408.P16977138843362898714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134451 (A006656 (2 * n + 3)).toNat : ℚ) / 3 * (A166407 n : ℚ))

end

end A166408.P16977138843362898714

/-! ## A166408.P12885563186762078629

`A098558(val(A137762(n+1), 2))-A071178(3*n+4)`
-/

namespace A166408.P12885563186762078629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098558 (SequenceMachineLib.valuation (A137762 (n + 1)).toNat 2) - A071178 (3 * n + 4)

end

end A166408.P12885563186762078629

/-!
# A166409: Odd numbers corresponding to the positions of zeros in A166406.

The programs for A166409, there is no canonical definition to state claims against.
-/

/-! ## A166409.P9087812930454177272

`2*eq[0, A166406(n)]+1`
-/

namespace A166409.P9087812930454177272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166409.P9087812930454177272

/-! ## A166409.P3669664105547182758

`2*eq[0, A166407(n)]+1`
-/

namespace A166409.P3669664105547182758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166409.P3669664105547182758

/-! ## A166409.P15026242121845908197

`eq[0, A166406(gcd(1-n, floor(n/2)))]`
-/

namespace A166409.P15026242121845908197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166409.P15026242121845908197

/-! ## A166409.P13347821691436217767

`eq[0, A166407(((n-1)/2)^and(1, n))]`
-/

namespace A166409.P13347821691436217767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 (SequenceMachineLib.roundAway ((((n : ℤ) - 1 : ℚ) / 2) ^ Nat.land 1 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166409.P13347821691436217767

/-! ## A166409.P1246701266145479615

`A005408(eq[0, A166406(n)])`
-/

namespace A166409.P1246701266145479615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166409.P1246701266145479615

/-! ## A166409.P2491658311901282394

`A005408(eq[0, A166407(n)])`
-/

namespace A166409.P2491658311901282394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166409.P2491658311901282394

/-! ## A166409.P16533810249657485762

`eq[0, A166406(A057979(n))]`
-/

namespace A166409.P16533810249657485762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166409.P16533810249657485762

/-! ## A166409.P4843756736633141978

`A144396(eq[0, A166406(n)])`
-/

namespace A166409.P4843756736633141978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166409.P4843756736633141978

/-! ## A166409.P14357888603947783950

`eq[A027656(n), A372876(n)]`
-/

namespace A166409.P14357888603947783950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166409.P14357888603947783950

/-! ## A166409.P5026698194021413064

`eq[A046769(n), A372876(n)]`
-/

namespace A166409.P5026698194021413064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166409.P5026698194021413064

/-!
# A166415: Number of reduced words of length n in Coxeter group on 21 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166415, there is no canonical definition to state claims against.
-/

/-! ## A166415.P3295183066933608546

`record[20*a(floor((n-1)/3))]` with `a(0)=1, a(1)=1, a(2)=21`
-/

namespace A166415.P3295183066933608546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 21] fun n f1 =>
  20 * f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166415.P3295183066933608546

/-! ## A166415.P16108073801078935969

`20*a(n%A114648(n)-1)` with `a(0)=1, a(1)=21`
-/

namespace A166415.P16108073801078935969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * a (Int.tmod (n : ℤ) (A114648 n) - 1).toNat

end

end A166415.P16108073801078935969

/-! ## A166415.P2772527827020204426

`A167074(A062399(n))`
-/

namespace A166415.P2772527827020204426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167074 (A062399 n).toNat

end

end A166415.P2772527827020204426

/-! ## A166415.P13958895893347711316

`A167074(A351870(n))`
-/

namespace A166415.P13958895893347711316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167074 (A351870 n).toNat

end

end A166415.P13958895893347711316

/-!
# A166419: Number of reduced words of length n in Coxeter group on 25 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166419, there is no canonical definition to state claims against.
-/

/-! ## A166419.P18250630296909574167

`record[24*a(floor((n-1)/3))]` with `a(0)=1, a(1)=0, a(2)=25`
-/

namespace A166419.P18250630296909574167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 25] fun n f1 =>
  24 * f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166419.P18250630296909574167

/-! ## A166419.P12759552496467587667

`A166612(A062399(n))`
-/

namespace A166419.P12759552496467587667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166612 (A062399 n).toNat

end

end A166419.P12759552496467587667

/-! ## A166419.P14096485304973109142

`A166612(A120126(n))`
-/

namespace A166419.P14096485304973109142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166612 (A120126 n).toNat

end

end A166419.P14096485304973109142

/-! ## A166419.P18178352391096523841

`A185246(A000045(n))+A166612(n)`
-/

namespace A166419.P18178352391096523841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A000045 n).toNat + A166612 n

end

end A166419.P18178352391096523841

/-!
# A166421: Number of reduced words of length n in Coxeter group on 27 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166421, there is no canonical definition to state claims against.
-/

/-! ## A166421.P7103807942847157299

`A166614(A062399(n))`
-/

namespace A166421.P7103807942847157299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166614 (A062399 n).toNat

end

end A166421.P7103807942847157299

/-! ## A166421.P6514469903385880897

`A166614(n^A208183(n))`
-/

namespace A166421.P6514469903385880897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166614 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A208183 n : ℤ))).toNat

end

end A166421.P6514469903385880897

/-! ## A166421.P9122069836818328722

`record[A166614(A001222(or(1, n)))]`
-/

namespace A166421.P9122069836818328722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166614 (A001222 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166421.P9122069836818328722

/-! ## A166421.P4218717275475510399

`record[A166614(A001222(2*n+1))]`
-/

namespace A166421.P4218717275475510399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166614 (A001222 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166421.P4218717275475510399

/-!
# A166423: Number of reduced words of length n in Coxeter group on 29 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166423, there is no canonical definition to state claims against.
-/

/-! ## A166423.P2448382233617421889

`A166616(A062399(n))`
-/

namespace A166423.P2448382233617421889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166616 (A062399 n).toNat

end

end A166423.P2448382233617421889

/-! ## A166423.P5800535346264353963

`A166616(A120126(n))`
-/

namespace A166423.P5800535346264353963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166616 (A120126 n).toNat

end

end A166423.P5800535346264353963

/-! ## A166423.P11987329419068582047

`record[A166616(A001222(2*n+1))]`
-/

namespace A166423.P11987329419068582047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166616 (A001222 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166423.P11987329419068582047

/-! ## A166423.P4646620214457396004

`A166616(n)+A000038(A000085(n))`
-/

namespace A166423.P4646620214457396004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166616 n + A000038 (A000085 n).toNat

end

end A166423.P4646620214457396004

/-! ## A166423.P1653865938018923575

`A166616(n)+A010051(A169065(n))`
-/

namespace A166423.P1653865938018923575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166616 n + A010051 (A169065 n).toNat

end

end A166423.P1653865938018923575

/-!
# A166429: Number of reduced words of length n in Coxeter group on 35 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166429, there is no canonical definition to state claims against.
-/

/-! ## A166429.P13690142522612552278

`record[34*a(A324345(n)-2)]` with `a(0)=1, a(1)=35`
-/

namespace A166429.P13690142522612552278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n f1 =>
  34 * f1 (A324345 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166429.P13690142522612552278

/-! ## A166429.P10232423171368895180

`34*a(n%A203518(n+1)-1)` with `a(0)=1, a(1)=35`
-/

namespace A166429.P10232423171368895180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (Int.tmod (n : ℤ) (A203518 (n + 1)) - 1).toNat

end

end A166429.P10232423171368895180

/-!
# A166444: a(0) = 0, a(1) = 1 and for n > 1, a(n) = sum of all previous terms.

The programs for A166444, the canonical program `A166444.P4594645585699924578` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166444 has offset 0).

The definition of A166444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166444.P4594645585699924578

`round(2^(n-2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166444

/-- `round(2^(n-2))` -/
def P4594645585699924578.Spec : Prop :=
  ∀ n, P4594645585699924578.a n = A166444 n

theorem P4594645585699924578.correct : P4594645585699924578.Spec := by
  intro n
  simp only [A166444]

end A166444

/-! ## A166444.P10200958386094800521

`ceil(atan(n))^abs(2-n)`
-/

namespace A166444.P10200958386094800521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.arctan (n : ℝ)⌉ : ℚ) ^ (|2 - (n : ℤ)| : ℤ)

end

end A166444.P10200958386094800521

namespace A166444

/-- `ceil(atan(n))^abs(2-n)` -/
def P10200958386094800521.Spec : Prop :=
  ∀ n, P10200958386094800521.a n = (A166444 n : ℚ)

end A166444

/-! ## A166444.P2965284107733632338

`2*a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A166444.P2965284107733632338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 1)

end

end A166444.P2965284107733632338

namespace A166444

/-- `2*a(n-1)` -/
def P2965284107733632338.Spec : Prop :=
  ∀ n, (P2965284107733632338.a n : ℤ) = A166444 n

end A166444

/-! ## A166444.P12415829206487330254

`floor(cos(1)+2^(n-2))`
-/

namespace A166444.P12415829206487330254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A166444.P12415829206487330254

namespace A166444

/-- `floor(cos(1)+2^(n-2))` -/
def P12415829206487330254.Spec : Prop :=
  ∀ n, P12415829206487330254.a n = A166444 n

end A166444

/-! ## A166444.P730484361007978538

`ceil(cos(2)+2^(n-2))`
-/

namespace A166444.P730484361007978538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉

end

end A166444.P730484361007978538

namespace A166444

/-- `ceil(cos(2)+2^(n-2))` -/
def P730484361007978538.Spec : Prop :=
  ∀ n, P730484361007978538.a n = A166444 n

end A166444

/-! ## A166444.P13116589534801467870

`floor(2^(n-2)-cos(4))`
-/

namespace A166444.P13116589534801467870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - Real.cos (4 : ℝ)⌋

end

end A166444.P13116589534801467870

namespace A166444

/-- `floor(2^(n-2)-cos(4))` -/
def P13116589534801467870.Spec : Prop :=
  ∀ n, P13116589534801467870.a n = A166444 n

end A166444

/-! ## A166444.P12031140230749632983

`ceil(2^(n-2)-cos(5))`
-/

namespace A166444.P12031140230749632983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - Real.cos (5 : ℝ)⌉

end

end A166444.P12031140230749632983

namespace A166444

/-- `ceil(2^(n-2)-cos(5))` -/
def P12031140230749632983.Spec : Prop :=
  ∀ n, P12031140230749632983.a n = A166444 n

end A166444

/-! ## A166444.P480621993951200811

`ceil(sin(6)+2^(n-2))`
-/

namespace A166444.P480621993951200811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (6 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉

end

end A166444.P480621993951200811

namespace A166444

/-- `ceil(sin(6)+2^(n-2))` -/
def P480621993951200811.Spec : Prop :=
  ∀ n, P480621993951200811.a n = A166444 n

end A166444

/-! ## A166444.P6981077701849472561

`floor(sin(7)+2^(n-2))`
-/

namespace A166444.P6981077701849472561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (7 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A166444.P6981077701849472561

namespace A166444

/-- `floor(sin(7)+2^(n-2))` -/
def P6981077701849472561.Spec : Prop :=
  ∀ n, P6981077701849472561.a n = A166444 n

end A166444

/-! ## A166444.P10118950150950866639

`ceil(tan(6)+2^(n-2))`
-/

namespace A166444.P10118950150950866639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (6 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉

end

end A166444.P10118950150950866639

namespace A166444

/-- `ceil(tan(6)+2^(n-2))` -/
def P10118950150950866639.Spec : Prop :=
  ∀ n, P10118950150950866639.a n = A166444 n

end A166444

/-! ## A166444.P10239808896317032332

`floor(cot(1)+2^(n-2))`
-/

namespace A166444.P10239808896317032332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A166444.P10239808896317032332

namespace A166444

/-- `floor(cot(1)+2^(n-2))` -/
def P10239808896317032332.Spec : Prop :=
  ∀ n, P10239808896317032332.a n = A166444 n

end A166444

/-! ## A166444.P8776854191936669516

`ceil(2^(n-2)-sin(9))`
-/

namespace A166444.P8776854191936669516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - Real.sin (9 : ℝ)⌉

end

end A166444.P8776854191936669516

namespace A166444

/-- `ceil(2^(n-2)-sin(9))` -/
def P8776854191936669516.Spec : Prop :=
  ∀ n, P8776854191936669516.a n = A166444 n

end A166444

/-! ## A166444.P14623263434680803958

`floor(2^(n-2)-sin(10))`
-/

namespace A166444.P14623263434680803958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - Real.sin (10 : ℝ)⌋

end

end A166444.P14623263434680803958

namespace A166444

/-- `floor(2^(n-2)-sin(10))` -/
def P14623263434680803958.Spec : Prop :=
  ∀ n, P14623263434680803958.a n = A166444 n

end A166444

/-! ## A166444.P4304599492721922489

`ceil(cot(2)+2^(n-2))`
-/

namespace A166444.P4304599492721922489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉

end

end A166444.P4304599492721922489

namespace A166444

/-- `ceil(cot(2)+2^(n-2))` -/
def P4304599492721922489.Spec : Prop :=
  ∀ n, P4304599492721922489.a n = A166444 n

end A166444

/-! ## A166444.P12641918914531269522

`floor(tan(10)+2^(n-2))`
-/

namespace A166444.P12641918914531269522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (10 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A166444.P12641918914531269522

namespace A166444

/-- `floor(tan(10)+2^(n-2))` -/
def P12641918914531269522.Spec : Prop :=
  ∀ n, P12641918914531269522.a n = A166444 n

end A166444

/-! ## A166444.P8101973940651649744

`ceil(2^(n-2)-acot(2))`
-/

namespace A166444.P8101973940651649744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - SequenceMachineLib.acot (2 : ℝ)⌉

end

end A166444.P8101973940651649744

namespace A166444

/-- `ceil(2^(n-2)-acot(2))` -/
def P8101973940651649744.Spec : Prop :=
  ∀ n, P8101973940651649744.a n = A166444 n

end A166444

/-! ## A166444.P16369589763804773031

`floor(acot(ϕ)+2^(n-2))`
-/

namespace A166444.P16369589763804773031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot Real.goldenRatio + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌋

end

end A166444.P16369589763804773031

namespace A166444

/-- `floor(acot(ϕ)+2^(n-2))` -/
def P16369589763804773031.Spec : Prop :=
  ∀ n, P16369589763804773031.a n = A166444 n

end A166444

/-! ## A166444.P4992406382545847805

`floor(2^(C(n, n²)+n-2))`
-/

namespace A166444.P4992406382545847805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 2) : ℤ)⌋

end

end A166444.P4992406382545847805

namespace A166444

/-- `floor(2^(C(n, n²)+n-2))` -/
def P4992406382545847805.Spec : Prop :=
  ∀ n, P4992406382545847805.a n = A166444 n

end A166444

/-! ## A166444.P1468140140146775639

`lcm(2^(n-2), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A166444.P1468140140146775639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A166444.P1468140140146775639

namespace A166444

/-- `lcm(2^(n-2), a(n-1))` -/
def P1468140140146775639.Spec : Prop :=
  ∀ n, (P1468140140146775639.a n : ℤ) = A166444 n

end A166444

/-!
# A166445: Hankel transform of A025276.

The programs for A166445, the canonical program `A166445.P17166464745776662847` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166445 has offset 0).

The definition of A166445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166445.P4328438316614912351

`∑[(-1)^∑[n]-a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A166445.P4328438316614912351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n f1 =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166445.P4328438316614912351

namespace A166445

/-- `∑[(-1)^∑[n]-a(n-2)]` -/
def P4328438316614912351.Spec : Prop :=
  ∀ n, P4328438316614912351.a n = A166445 n

end A166445

/-! ## A166445.P17166464745776662847

`2-(a(n-2)+gcd(4, n)%4)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166445

/-- `2-(a(n-2)+gcd(4, n)%4)` -/
def P17166464745776662847.Spec : Prop :=
  ∀ n, P17166464745776662847.a n = A166445 n

theorem P17166464745776662847.correct : P17166464745776662847.Spec := by
  intro n
  simp only [A166445]

end A166445

/-! ## A166445.P10101117800599865750

`-xor(xor(n, -n)/2, -a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A166445.P10101117800599865750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -Int.xor (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2)) (-a (n - 2))

end

end A166445.P10101117800599865750

namespace A166445

/-- `-xor(xor(n, -n)/2, -a(n-2))` -/
def P10101117800599865750.Spec : Prop :=
  ∀ n, P10101117800599865750.a n = A166445 n

end A166445

/-! ## A166445.P5517454429647343396

`and(3, 2*a(n-2)-n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A166445.P5517454429647343396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.land 3 (2 * a (n - 2) - (n : ℤ)) - a (n - 2)

end

end A166445.P5517454429647343396

namespace A166445

/-- `and(3, 2*a(n-2)-n)-a(n-2)` -/
def P5517454429647343396.Spec : Prop :=
  ∀ n, P5517454429647343396.a n = A166445 n

end A166445

/-! ## A166445.P17159788573397757042

`gcd(2*a(n-1), n%2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A166445.P17159788573397757042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Int.gcd (2 * a (n - 1)) ((n % 2 : ℕ) : ℤ) : ℤ) - a (n - 2)

end

end A166445.P17159788573397757042

namespace A166445

/-- `gcd(2*a(n-1), n%2)-a(n-2)` -/
def P17159788573397757042.Spec : Prop :=
  ∀ n, P17159788573397757042.a n = A166445 n

end A166445

/-! ## A166445.P4837755035332535134

`∑[a(a(n-2)²)-a(n-2)]-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A166445.P4837755035332535134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (f1 (n - 2) ^ 2).toNat - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A166445.P4837755035332535134

namespace A166445

/-- `∑[a(a(n-2)²)-a(n-2)]-a(n-2)` -/
def P4837755035332535134.Spec : Prop :=
  ∀ n, P4837755035332535134.a n = A166445 n

end A166445

/-! ## A166445.P4804274024895151524

`∑[A274922(ceil(n/2))]`
-/

namespace A166445.P4804274024895151524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166445.P4804274024895151524

namespace A166445

/-- `∑[A274922(ceil(n/2))]` -/
def P4804274024895151524.Spec : Prop :=
  ∀ n, P4804274024895151524.a n = A166445 n

end A166445

/-! ## A166445.P201345744432277577

`ceil(A009001(n+1)/2)`
-/

namespace A166445.P201345744432277577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009001 (n + 1) : ℚ) / 2⌉

end

end A166445.P201345744432277577

namespace A166445

/-- `ceil(A009001(n+1)/2)` -/
def P201345744432277577.Spec : Prop :=
  ∀ n, P201345744432277577.a n = A166445 n

end A166445

/-! ## A166445.P2656502258217748966

`round((1-A009531(n))/2)`
-/

namespace A166445.P2656502258217748966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - A009531 n : ℚ) / 2)

end

end A166445.P2656502258217748966

namespace A166445

/-- `round((1-A009531(n))/2)` -/
def P2656502258217748966.Spec : Prop :=
  ∀ n, P2656502258217748966.a n = A166445 n

end A166445

/-! ## A166445.P16225049668423458765

`A098178(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A166445.P16225049668423458765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A098178 n - a (n - 2)

end

end A166445.P16225049668423458765

namespace A166445

/-- `A098178(n)-a(n-2)` -/
def P16225049668423458765.Spec : Prop :=
  ∀ n, P16225049668423458765.a n = A166445 n

end A166445

/-! ## A166445.P10453931676695936253

`2-(A130195(n)+a(n-1))` with `a(0)=1`
-/

namespace A166445.P10453931676695936253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (A130195 n + a (n - 1))

end

end A166445.P10453931676695936253

namespace A166445

/-- `2-(A130195(n)+a(n-1))` -/
def P10453931676695936253.Spec : Prop :=
  ∀ n, P10453931676695936253.a n = A166445 n

end A166445

/-! ## A166445.P17625006416070014529

`A130472(A003815(n))+1`
-/

namespace A166445.P17625006416070014529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A003815 n).toNat + 1

end

end A166445.P17625006416070014529

namespace A166445

/-- `A130472(A003815(n))+1` -/
def P17625006416070014529.Spec : Prop :=
  ∀ n, P17625006416070014529.a n = A166445 n

end A166445

/-! ## A166445.P7344436190161923940

`A001057(xor(1, A003815(n)))`
-/

namespace A166445.P7344436190161923940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.xor 1 (A003815 n)).toNat

end

end A166445.P7344436190161923940

namespace A166445

/-- `A001057(xor(1, A003815(n)))` -/
def P7344436190161923940.Spec : Prop :=
  ∀ n, P7344436190161923940.a n = A166445 n

end A166445

/-! ## A166445.P6636728469850954289

`∑[A038608(∑[A000035(n)])]+1`
-/

namespace A166445.P6636728469850954289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166445.P6636728469850954289

namespace A166445

/-- `∑[A038608(∑[A000035(n)])]+1` -/
def P6636728469850954289.Spec : Prop :=
  ∀ n, P6636728469850954289.a n = A166445 n

end A166445

/-! ## A166445.P5179232959184163151

`(A009001(n+1)+1)/A020639(2*(n+1))`
-/

namespace A166445.P5179232959184163151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A166445.P5179232959184163151

namespace A166445

/-- `(A009001(n+1)+1)/A020639(2*(n+1))` -/
def P5179232959184163151.Spec : Prop :=
  ∀ n, P5179232959184163151.a n = (A166445 n : ℚ)

end A166445

/-! ## A166445.P466420558293896013

`A374139(n+1)`
-/

namespace A166445.P466420558293896013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 (n + 1)

end

end A166445.P466420558293896013

namespace A166445

/-- `A374139(n+1)` -/
def P466420558293896013.Spec : Prop :=
  ∀ n, P466420558293896013.a n = A166445 n

end A166445

/-! ## A166445.P15209751267057839805

`∑[A127365(n+1)]+1`
-/

namespace A166445.P15209751267057839805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166445.P15209751267057839805

namespace A166445

/-- `∑[A127365(n+1)]+1` -/
def P15209751267057839805.Spec : Prop :=
  ∀ n, P15209751267057839805.a n = A166445 n

end A166445

/-!
# A166446: Period 12: repeat [1,1,1,1,0,0,-1,-1,-1,-1,0,0].

The programs for A166446, the canonical program `A166446.P16360541201941274025` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166446 has offset 0).

The definition of A166446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166446.P16360541201941274025

`a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166446

/-- `a(n-2)-a(n-4)` -/
def P16360541201941274025.Spec : Prop :=
  ∀ n, P16360541201941274025.a n = A166446 n

theorem P16360541201941274025.correct : P16360541201941274025.Spec := by
  intro n
  simp only [A166446]

end A166446

/-!
# A166447: a(n) = n*round(sqrt(n)).

The programs for A166447, the canonical program `A166447.P13371605189343968352` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166447 has offset 0).

The definition of A166447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*round(sqrt(n))` (program `A166447.P13371605189343968352`, by `A166447.P13371605189343968352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166447.P13371605189343968352

`n*round(sqrt(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166447

/-- `n*round(sqrt(n))` -/
def P13371605189343968352.Spec : Prop :=
  ∀ n, P13371605189343968352.a n = A166447 n

theorem P13371605189343968352.correct : P13371605189343968352.Spec := by
  intro n
  simp only [A166447]

end A166447

/-! ## A166447.P5181619348802861675

`sqrt(n²*A053187(n))`
-/

namespace A166447.P5181619348802861675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A053187 n : ℝ)

end

end A166447.P5181619348802861675

namespace A166447

/-- `sqrt(n²*A053187(n))` -/
def P5181619348802861675.Spec : Prop :=
  ∀ n, P5181619348802861675.a n = (A166447 n : ℝ)

end A166447

/-! ## A166447.P5735300392323115585

`abs(n*(n-A056847(n)))`
-/

namespace A166447.P5735300392323115585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - A056847 n)|

end

end A166447.P5735300392323115585

namespace A166447

/-- `abs(n*(n-A056847(n)))` -/
def P5735300392323115585.Spec : Prop :=
  ∀ n, P5735300392323115585.a n = A166447 n

end A166447

/-! ## A166447.P15395490411296908921

`A000194(n)*A005843(n)/2`
-/

namespace A166447.P15395490411296908921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000194 n * A005843 n : ℚ) / 2

end

end A166447.P15395490411296908921

namespace A166447

/-- `A000194(n)*A005843(n)/2` -/
def P15395490411296908921.Spec : Prop :=
  ∀ n, P15395490411296908921.a n = (A166447 n : ℚ)

end A166447

/-! ## A166447.P11927975115914573632

`n²+A001489(n)*A056847(n)`
-/

namespace A166447.P11927975115914573632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A001489 n * A056847 n

end

end A166447.P11927975115914573632

namespace A166447

/-- `n²+A001489(n)*A056847(n)` -/
def P11927975115914573632.Spec : Prop :=
  ∀ n, P11927975115914573632.a n = A166447 n

end A166447

/-! ## A166447.P11588927734415077322

`lcm(n, n*A000196(A000196(n)+n))`
-/

namespace A166447.P11588927734415077322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A000196 (A000196 n + (n : ℤ)).toNat)

end

end A166447.P11588927734415077322

namespace A166447

/-- `lcm(n, n*A000196(A000196(n)+n))` -/
def P11588927734415077322.Spec : Prop :=
  ∀ n, (P11588927734415077322.a n : ℤ) = A166447 n

end A166447

/-! ## A166447.P777681610719095269

`record[n*A173517(n)]-n²`
-/

namespace A166447.P777681610719095269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 : ℤ)

end

end A166447.P777681610719095269

namespace A166447

/-- `record[n*A173517(n)]-n²` -/
def P777681610719095269.Spec : Prop :=
  ∀ n, P777681610719095269.a n = A166447 n

end A166447

/-! ## A166447.P9271056403927978609

`n*A003059(A003059(n+1)+n)-n`
-/

namespace A166447.P9271056403927978609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003059 (A003059 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A166447.P9271056403927978609

namespace A166447

/-- `n*A003059(A003059(n+1)+n)-n` -/
def P9271056403927978609.Spec : Prop :=
  ∀ n, P9271056403927978609.a n = A166447 n

end A166447

/-! ## A166447.P2719183650236099007

`record[(n+1-A173517(n+1))*A173517(n+1)]`
-/

namespace A166447.P2719183650236099007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A173517 (n + 1)) * A173517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166447.P2719183650236099007

namespace A166447

/-- `record[(n+1-A173517(n+1))*A173517(n+1)]` -/
def P2719183650236099007.Spec : Prop :=
  ∀ n, P2719183650236099007.a n = A166447 n

end A166447

/-! ## A166447.P16776823045996717095

`A127367(A127366(n*A000194(n)))`
-/

namespace A166447.P16776823045996717095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127367 (A127366 ((n : ℤ) * A000194 n).toNat).toNat

end

end A166447.P16776823045996717095

namespace A166447

/-- `A127367(A127366(n*A000194(n)))` -/
def P16776823045996717095.Spec : Prop :=
  ∀ n, P16776823045996717095.a n = A166447 n

end A166447

/-! ## A166447.P14352465201209361502

`A049473(A001953(n*A000194(n)))`
-/

namespace A166447.P14352465201209361502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A001953 ((n : ℤ) * A000194 n).toNat).toNat

end

end A166447.P14352465201209361502

namespace A166447

/-- `A049473(A001953(n*A000194(n)))` -/
def P14352465201209361502.Spec : Prop :=
  ∀ n, P14352465201209361502.a n = A166447 n

end A166447

/-! ## A166447.P9628783494098652705

`A004526(2*n*A000194(n))`
-/

namespace A166447.P9628783494098652705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * ((n : ℤ) * A000194 n)).toNat

end

end A166447.P9628783494098652705

namespace A166447

/-- `A004526(2*n*A000194(n))` -/
def P9628783494098652705.Spec : Prop :=
  ∀ n, P9628783494098652705.a n = A166447 n

end A166447

/-! ## A166447.P10991968971247818430

`A078898(2*n*A000194(n))`
-/

namespace A166447.P10991968971247818430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * ((n : ℤ) * A000194 n)).toNat

end

end A166447.P10991968971247818430

namespace A166447

/-- `A078898(2*n*A000194(n))` -/
def P10991968971247818430.Spec : Prop :=
  ∀ n, P10991968971247818430.a n = A166447 n

end A166447

/-! ## A166447.P9782271621694650185

`A110654(2*n*A000194(n))`
-/

namespace A166447.P9782271621694650185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * ((n : ℤ) * A000194 n)).toNat

end

end A166447.P9782271621694650185

namespace A166447

/-- `A110654(2*n*A000194(n))` -/
def P9782271621694650185.Spec : Prop :=
  ∀ n, P9782271621694650185.a n = A166447 n

end A166447

/-! ## A166447.P2044229789863537484

`A338478(A338478(n*A000194(n)))`
-/

namespace A166447.P2044229789863537484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338478 (A338478 ((n : ℤ) * A000194 n).toNat).toNat

end

end A166447.P2044229789863537484

namespace A166447

/-- `A338478(A338478(n*A000194(n)))` -/
def P2044229789863537484.Spec : Prop :=
  ∀ n, P2044229789863537484.a n = A166447 n

end A166447

/-! ## A166447.P15566389731486527080

`n*A259361(A259361(n²))+n`
-/

namespace A166447.P15566389731486527080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259361 (A259361 (n ^ 2)).toNat + (n : ℤ)

end

end A166447.P15566389731486527080

namespace A166447

/-- `n*A259361(A259361(n²))+n` -/
def P15566389731486527080.Spec : Prop :=
  ∀ n, P15566389731486527080.a n = A166447 n

end A166447

/-! ## A166447.P1934357167346651945

`A028391(A002378(n))-n*A056847(n)`
-/

namespace A166447.P1934357167346651945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A002378 n).toNat - (n : ℤ) * A056847 n

end

end A166447.P1934357167346651945

namespace A166447

/-- `A028391(A002378(n))-n*A056847(n)` -/
def P1934357167346651945.Spec : Prop :=
  ∀ n, P1934357167346651945.a n = A166447 n

end A166447

/-!
# A166448: Sum of first n primes minus next prime.

The programs for A166448, the canonical program `A166448.P8765378340024348909` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166448 has offset 1).

The definition of A166448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166448.P8765378340024348909

`∑[A062234(n+1)]-2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166448

/-- `∑[A062234(n+1)]-2` -/
def P8765378340024348909.Spec : Prop :=
  ∀ n, P8765378340024348909.a n = A166448 (n + 1)

theorem P8765378340024348909.correct : P8765378340024348909.Spec := by
  intro n
  simp only [A166448, Nat.add_sub_cancel]

end A166448

/-! ## A166448.P17895741672140881851

`A007504(n)-A001223(n+1)`
-/

namespace A166448.P17895741672140881851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A001223 (n + 1)

end

end A166448.P17895741672140881851

namespace A166448

/-- `A007504(n)-A001223(n+1)` -/
def P17895741672140881851.Spec : Prop :=
  ∀ n, P17895741672140881851.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P17449704184067836616

`A007504(n)-(A046933(n+1)+1)`
-/

namespace A166448.P17449704184067836616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (A046933 (n + 1) + 1)

end

end A166448.P17449704184067836616

namespace A166448

/-- `A007504(n)-(A046933(n+1)+1)` -/
def P17449704184067836616.Spec : Prop :=
  ∀ n, P17449704184067836616.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P7054191253093936387

`A007504(n+1)-A065091(n+1)`
-/

namespace A166448.P7054191253093936387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A065091 (n + 1)

end

end A166448.P7054191253093936387

namespace A166448

/-- `A007504(n+1)-A065091(n+1)` -/
def P7054191253093936387.Spec : Prop :=
  ∀ n, P7054191253093936387.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P2429722300526622312

`A060939(n+1)-A014690(n+1)`
-/

namespace A166448.P2429722300526622312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1) - A014690 (n + 1)

end

end A166448.P2429722300526622312

namespace A166448

/-- `A060939(n+1)-A014690(n+1)` -/
def P2429722300526622312.Spec : Prop :=
  ∀ n, P2429722300526622312.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P7637925608600945182

`A110895(n+1)-A123128(n+1)`
-/

namespace A166448.P7637925608600945182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) - A123128 (n + 1)

end

end A166448.P7637925608600945182

namespace A166448

/-- `A110895(n+1)-A123128(n+1)` -/
def P7637925608600945182.Spec : Prop :=
  ∀ n, P7637925608600945182.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P3980400324586281452

`A362419(n+1)-A007504(n+2)`
-/

namespace A166448.P3980400324586281452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362419 (n + 1) - A007504 (n + 2)

end

end A166448.P3980400324586281452

namespace A166448

/-- `A362419(n+1)-A007504(n+2)` -/
def P3980400324586281452.Spec : Prop :=
  ∀ n, P3980400324586281452.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P15135403631229488395

`∑[A000040(n+1)]-A065091(n+1)`
-/

namespace A166448.P15135403631229488395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065091 (n + 1)

end

end A166448.P15135403631229488395

namespace A166448

/-- `∑[A000040(n+1)]-A065091(n+1)` -/
def P15135403631229488395.Spec : Prop :=
  ∀ n, P15135403631229488395.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P15871775615533870989

`A007504(n)-Δ[A001748(n+1)/3]`
-/

namespace A166448.P15871775615533870989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A166448.P15871775615533870989

namespace A166448

/-- `A007504(n)-Δ[A001748(n+1)/3]` -/
def P15871775615533870989.Spec : Prop :=
  ∀ n, P15871775615533870989.a n = (A166448 (n + 1) : ℚ)

end A166448

/-! ## A166448.P10262190555158723791

`∑[A001748(n+1)%A001043(n+1)]-2`
-/

namespace A166448.P10262190555158723791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001748 (n + 1)) (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A166448.P10262190555158723791

namespace A166448

/-- `∑[A001748(n+1)%A001043(n+1)]-2` -/
def P10262190555158723791.Spec : Prop :=
  ∀ n, P10262190555158723791.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P4288364897766029108

`A007504(n+1)+A141042(n+1)-A033287(n)`
-/

namespace A166448.P4288364897766029108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A141042 (n + 1) - A033287 n)

end

end A166448.P4288364897766029108

namespace A166448

/-- `A007504(n+1)+A141042(n+1)-A033287(n)` -/
def P4288364897766029108.Spec : Prop :=
  ∀ n, P4288364897766029108.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P14084348474057312549

`A001248(n+1)+A007504(n+1)-A352851(n+1)`
-/

namespace A166448.P14084348474057312549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A007504 (n + 1) - A352851 (n + 1))

end

end A166448.P14084348474057312549

namespace A166448

/-- `A001248(n+1)+A007504(n+1)-A352851(n+1)` -/
def P14084348474057312549.Spec : Prop :=
  ∀ n, P14084348474057312549.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P14151784911801885470

`A007504(n)-A075526(n+1)`
-/

namespace A166448.P14151784911801885470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A075526 (n + 1)

end

end A166448.P14151784911801885470

namespace A166448

/-- `A007504(n)-A075526(n+1)` -/
def P14151784911801885470.Spec : Prop :=
  ∀ n, P14151784911801885470.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P5022975600361517063

`A007504(n)-A054541(n+2)`
-/

namespace A166448.P5022975600361517063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A054541 (n + 2)

end

end A166448.P5022975600361517063

namespace A166448

/-- `A007504(n)-A054541(n+2)` -/
def P5022975600361517063.Spec : Prop :=
  ∀ n, P5022975600361517063.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P15444834485034964840

`A007504(n)-Δ[A000040(n+1)]`
-/

namespace A166448.P15444834485034964840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P15444834485034964840

namespace A166448

/-- `A007504(n)-Δ[A000040(n+1)]` -/
def P15444834485034964840.Spec : Prop :=
  ∀ n, P15444834485034964840.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P14471924974935350913

`A007504(n)-Δ[A006093(n+1)]`
-/

namespace A166448.P14471924974935350913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P14471924974935350913

namespace A166448

/-- `A007504(n)-Δ[A006093(n+1)]` -/
def P14471924974935350913.Spec : Prop :=
  ∀ n, P14471924974935350913.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P10745631014254026477

`A007504(n)-Δ[A008864(n+1)]`
-/

namespace A166448.P10745631014254026477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P10745631014254026477

namespace A166448

/-- `A007504(n)-Δ[A008864(n+1)]` -/
def P10745631014254026477.Spec : Prop :=
  ∀ n, P10745631014254026477.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P4744126151924599373

`A007504(n)-Δ[A040976(n+1)]`
-/

namespace A166448.P4744126151924599373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P4744126151924599373

namespace A166448

/-- `A007504(n)-Δ[A040976(n+1)]` -/
def P4744126151924599373.Spec : Prop :=
  ∀ n, P4744126151924599373.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P9650031932689916983

`A007504(n)-Δ[A052147(n+1)]`
-/

namespace A166448.P9650031932689916983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P9650031932689916983

namespace A166448

/-- `A007504(n)-Δ[A052147(n+1)]` -/
def P9650031932689916983.Spec : Prop :=
  ∀ n, P9650031932689916983.a n = A166448 (n + 1)

end A166448

/-! ## A166448.P13942301899022688211

`A007504(n)-Δ[A086801(n+1)]`
-/

namespace A166448.P13942301899022688211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (f1 (n + 1) - f1 n)

end

end A166448.P13942301899022688211

namespace A166448

/-- `A007504(n)-Δ[A086801(n+1)]` -/
def P13942301899022688211.Spec : Prop :=
  ∀ n, P13942301899022688211.a n = A166448 (n + 1)

end A166448

/-!
# A166449: Primes in A166448.

The programs for A166449, there is no canonical definition to state claims against.
-/

/-! ## A166449.P3178233729883564408

`p?[A166448(n+1)]`
-/

namespace A166449.P3178233729883564408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166449.P3178233729883564408

/-! ## A166449.P13499242465059706512

`p?[∑[A062234(n+3)]]`
-/

namespace A166449.P13499242465059706512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166449.P13499242465059706512

/-! ## A166449.P5535709417051298549

`p?[abs(A166448(xor(1, 2*n)))]`
-/

namespace A166449.P5535709417051298549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166448 (Nat.xor 1 (2 * n))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166449.P5535709417051298549

/-! ## A166449.P2943470983873640945

`p?[A007504(n)-A000040(n+1)]`
-/

namespace A166449.P2943470983873640945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166449.P2943470983873640945

/-! ## A166449.P16499792604490095058

`p?[∑[A000040(n+1)]-A000040(n+2)]`
-/

namespace A166449.P16499792604490095058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166449.P16499792604490095058

/-!
# A166450: a(n) = 3*a(n-2) for n > 2; a(1) = 1, a(2) = 6.

The programs for A166450, the canonical program `A166450.P16603571981240370708` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166450 has offset 1).

The definition of A166450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A166450.P16603571981240370708`, by `A166450.P16603571981240370708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166450.P16603571981240370708

`3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166450

/-- `3*a(n-2)` -/
def P16603571981240370708.Spec : Prop :=
  ∀ n, (P16603571981240370708.a n : ℤ) = A166450 (n + 1)

theorem P16603571981240370708.correct : P16603571981240370708.Spec := by
  intro n
  simp only [A166450, Nat.add_sub_cancel]

end A166450

/-! ## A166450.P4636350317086925288

`∏[3/a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A166450.P4636350317086925288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166450.P4636350317086925288

namespace A166450

/-- `∏[3/a(n-1)]` -/
def P4636350317086925288.Spec : Prop :=
  ∀ n, P4636350317086925288.a n = (A166450 (n + 1) : ℚ)

end A166450

/-! ## A166450.P5619470550440189916

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=6`
-/

namespace A166450.P5619470550440189916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A166450.P5619470550440189916

namespace A166450

/-- `a(n-2)/(1-2/3)` -/
def P5619470550440189916.Spec : Prop :=
  ∀ n, P5619470550440189916.a n = (A166450 (n + 1) : ℚ)

end A166450

/-! ## A166450.P9563279017371972623

`3^∑[n%2]*gcd(2, n+1)`
-/

namespace A166450.P9563279017371972623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.gcd 2 (n + 1)

end

end A166450.P9563279017371972623

namespace A166450

/-- `3^∑[n%2]*gcd(2, n+1)` -/
def P9563279017371972623.Spec : Prop :=
  ∀ n, (P9563279017371972623.a n : ℤ) = A166450 (n + 1)

end A166450

/-! ## A166450.P13901916057815871538

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A166450.P13901916057815871538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A166450.P13901916057815871538

namespace A166450

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P13901916057815871538.Spec : Prop :=
  ∀ n, (P13901916057815871538.a n : ℤ) = A166450 (n + 1)

theorem P13901916057815871538.correct : P13901916057815871538.Spec := by
  intro n
  simp only [A166450, Nat.add_sub_cancel, A166450.P13901916057815871538.a, A166450.P16603571981240370708.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166450

/-! ## A166450.P7682684851859100858

`A038754(xor(1, n+1))`
-/

namespace A166450.P7682684851859100858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Nat.xor 1 (n + 1))

end

end A166450.P7682684851859100858

namespace A166450

/-- `A038754(xor(1, n+1))` -/
def P7682684851859100858.Spec : Prop :=
  ∀ n, P7682684851859100858.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P3264680011836548176

`A225367(n+2)/gcd(2, n)`
-/

namespace A166450.P3264680011836548176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225367 (n + 2) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A166450.P3264680011836548176

namespace A166450

/-- `A225367(n+2)/gcd(2, n)` -/
def P3264680011836548176.Spec : Prop :=
  ∀ n, P3264680011836548176.a n = (A166450 (n + 1) : ℚ)

end A166450

/-! ## A166450.P4627391431444754666

`A038754(A004442(n+1))`
-/

namespace A166450.P4627391431444754666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A004442 (n + 1)).toNat

end

end A166450.P4627391431444754666

namespace A166450

/-- `A038754(A004442(n+1))` -/
def P4627391431444754666.Spec : Prop :=
  ∀ n, P4627391431444754666.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P14465644063988371900

`A182751(A065190(n+1))`
-/

namespace A166450.P14465644063988371900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (A065190 (n + 1)).toNat

end

end A166450.P14465644063988371900

namespace A166450

/-- `A182751(A065190(n+1))` -/
def P14465644063988371900.Spec : Prop :=
  ∀ n, P14465644063988371900.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P16434086967069655558

`A122164(A047204(n+2))`
-/

namespace A166450.P16434086967069655558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A047204 (n + 2)).toNat

end

end A166450.P16434086967069655558

namespace A166450

/-- `A122164(A047204(n+2))` -/
def P16434086967069655558.Spec : Prop :=
  ∀ n, P16434086967069655558.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P13643309156146312996

`A182522(A103889(n+2))`
-/

namespace A166450.P13643309156146312996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A103889 (n + 2)).toNat

end

end A166450.P13643309156146312996

namespace A166450

/-- `A182522(A103889(n+2))` -/
def P13643309156146312996.Spec : Prop :=
  ∀ n, P13643309156146312996.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P16875536772016236512

`A010684(n)*A038754(n)`
-/

namespace A166450.P16875536772016236512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A038754 n

end

end A166450.P16875536772016236512

namespace A166450

/-- `A010684(n)*A038754(n)` -/
def P16875536772016236512.Spec : Prop :=
  ∀ n, P16875536772016236512.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P2490885156445419188

`A000034(n)*A056449(n)`
-/

namespace A166450.P2490885156445419188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A056449 n

end

end A166450.P2490885156445419188

namespace A166450

/-- `A000034(n)*A056449(n)` -/
def P2490885156445419188.Spec : Prop :=
  ∀ n, P2490885156445419188.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P11462245646192842632

`A010687(n)*A108411(n)`
-/

namespace A166450.P11462245646192842632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n * A108411 n

end

end A166450.P11462245646192842632

namespace A166450

/-- `A010687(n)*A108411(n)` -/
def P11462245646192842632.Spec : Prop :=
  ∀ n, P11462245646192842632.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P12869156132204120595

`lcm(A038754(n), A056449(n))`
-/

namespace A166450.P12869156132204120595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038754 n) (A056449 n)

end

end A166450.P12869156132204120595

namespace A166450

/-- `lcm(A038754(n), A056449(n))` -/
def P12869156132204120595.Spec : Prop :=
  ∀ n, (P12869156132204120595.a n : ℤ) = A166450 (n + 1)

end A166450

/-! ## A166450.P12095256562614339378

`lcm(A010687(n), A128019(n))`
-/

namespace A166450.P12095256562614339378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010687 n) (A128019 n)

end

end A166450.P12095256562614339378

namespace A166450

/-- `lcm(A010687(n), A128019(n))` -/
def P12095256562614339378.Spec : Prop :=
  ∀ n, (P12095256562614339378.a n : ℤ) = A166450 (n + 1)

end A166450

/-! ## A166450.P12355650320249726931

`A038754(A010684(n)-1+n)`
-/

namespace A166450.P12355650320249726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A010684 n - 1 + (n : ℤ)).toNat

end

end A166450.P12355650320249726931

namespace A166450

/-- `A038754(A010684(n)-1+n)` -/
def P12355650320249726931.Spec : Prop :=
  ∀ n, P12355650320249726931.a n = A166450 (n + 1)

end A166450

/-! ## A166450.P18425579640135850770

`A038754(1-A033999(n)+n)`
-/

namespace A166450.P18425579640135850770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (1 - A033999 n + (n : ℤ)).toNat

end

end A166450.P18425579640135850770

namespace A166450

/-- `A038754(1-A033999(n)+n)` -/
def P18425579640135850770.Spec : Prop :=
  ∀ n, P18425579640135850770.a n = A166450 (n + 1)

end A166450

/-!
# A166451: Many interesting things occur with this set of five numbers and its relationship to the sets: {34,35,45,46,56} and {34,35,45,46,56,57,35,45,46,56,57}.

The programs for A166451, there is no canonical definition to state claims against.
-/

/-! ## A166451.P12051832587486880575

`Δ[n!]+A251727(n+1)+1`
-/

namespace A166451.P12051832587486880575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A251727 (n + 1) + 1)

end

end A166451.P12051832587486880575

/-!
# A166452: Binomial transform of A166242.

The programs for A166452, there is no canonical definition to state claims against.
-/

/-! ## A166452.P7382234540549996224

`A020639(ceil(3*5^(n-1)))*A249512(n)`
-/

namespace A166452.P7382234540549996224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A249512 n

end

end A166452.P7382234540549996224

/-! ## A166452.P15751832295962576596

`A115716(A122229(n))*A249512(n)`
-/

namespace A166452.P15751832295962576596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A122229 n).toNat * A249512 n

end

end A166452.P15751832295962576596

/-! ## A166452.P5754509435616787587

`∑[A275727(A060206(n))]`
-/

namespace A166452.P5754509435616787587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A060206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166452.P5754509435616787587

/-!
# A166453: Triangle read by rows, square of Sierpinski's gasket, (A047999)^2.

The programs for A166453, the canonical program `A166453.P9942445130292987402` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166453 has offset 0).

The definition of A166453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166453.P9942445130292987402

`A001316(A025581(n))*A047999(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166453

/-- `A001316(A025581(n))*A047999(n)` -/
def P9942445130292987402.Spec : Prop :=
  ∀ n, P9942445130292987402.a n = A166453 n

theorem P9942445130292987402.correct : P9942445130292987402.Spec := by
  intro n
  simp only [A166453]

end A166453

/-! ## A166453.P947843192742929966

`A001316(A051933(n))*A047999(n)`
-/

namespace A166453.P947843192742929966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A051933 n).toNat * A047999 n

end

end A166453.P947843192742929966

namespace A166453

/-- `A001316(A051933(n))*A047999(n)` -/
def P947843192742929966.Spec : Prop :=
  ∀ n, P947843192742929966.a n = A166453 n

end A166453

/-! ## A166453.P15406650810841214453

`(1-A219463(n))*A001316(A025581(n))`
-/

namespace A166453.P15406650810841214453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A219463 n) * A001316 (A025581 n).toNat

end

end A166453.P15406650810841214453

namespace A166453

/-- `(1-A219463(n))*A001316(A025581(n))` -/
def P15406650810841214453.Spec : Prop :=
  ∀ n, P15406650810841214453.a n = A166453 n

end A166453

/-! ## A166453.P2943678665465291998

`A008459(n)%2*A001316(A025581(n))`
-/

namespace A166453.P2943678665465291998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008459 n) 2 * A001316 (A025581 n).toNat

end

end A166453.P2943678665465291998

namespace A166453

/-- `A008459(n)%2*A001316(A025581(n))` -/
def P2943678665465291998.Spec : Prop :=
  ∀ n, P2943678665465291998.a n = A166453 n

end A166453

/-! ## A166453.P8642655586644932558

`A007318(n)%2*A001316(A051933(n))`
-/

namespace A166453.P8642655586644932558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2 * A001316 (A051933 n).toNat

end

end A166453.P8642655586644932558

namespace A166453

/-- `A007318(n)%2*A001316(A051933(n))` -/
def P8642655586644932558.Spec : Prop :=
  ∀ n, P8642655586644932558.a n = A166453 n

end A166453

/-! ## A166453.P1516618478208778917

`A134059(n)%2*A060632(A099375(n))`
-/

namespace A166453.P1516618478208778917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2 * A060632 (A099375 n).toNat

end

end A166453.P1516618478208778917

namespace A166453

/-- `A134059(n)%2*A060632(A099375(n))` -/
def P1516618478208778917.Spec : Prop :=
  ∀ n, P1516618478208778917.a n = A166453 n

end A166453

/-! ## A166453.P12618488828194916681

`and(1, A007318(n))*A001316(A025581(n))`
-/

namespace A166453.P12618488828194916681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n) * A001316 (A025581 n).toNat

end

end A166453.P12618488828194916681

namespace A166453

/-- `and(1, A007318(n))*A001316(A025581(n))` -/
def P12618488828194916681.Spec : Prop :=
  ∀ n, P12618488828194916681.a n = A166453 n

end A166453

/-! ## A166453.P1087578826245117513

`A000045(1-(-1)^A007318(n))*A001316(A051933(n))`
-/

namespace A166453.P1087578826245117513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (1 - (-1 : ℚ) ^ (A007318 n : ℤ))).toNat * A001316 (A051933 n).toNat

end

end A166453.P1087578826245117513

namespace A166453

/-- `A000045(1-(-1)^A007318(n))*A001316(A051933(n))` -/
def P1087578826245117513.Spec : Prop :=
  ∀ n, P1087578826245117513.a n = A166453 n

end A166453

/-! ## A166453.P12470391840727779491

`A001222(2-(-1)^A007318(n))*A001316(A025581(n))`
-/

namespace A166453.P12470391840727779491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 - (-1 : ℚ) ^ (A007318 n : ℤ))).toNat * A001316 (A025581 n).toNat

end

end A166453.P12470391840727779491

namespace A166453

/-- `A001222(2-(-1)^A007318(n))*A001316(A025581(n))` -/
def P12470391840727779491.Spec : Prop :=
  ∀ n, P12470391840727779491.a n = A166453 n

end A166453

/-!
# A166454: Triangle read by rows: T(n, k) = (1/2)*(A007318(n,k) - A047999(n,k)).

The programs for A166454, the canonical program `A166454.P7038531745255804387` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166454 has offset 2).

The definition of A166454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166454.P4002823553797413163

`ceil(A014430(n)/2)`
-/

namespace A166454.P4002823553797413163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014430 n : ℚ) / 2⌉

end

end A166454.P4002823553797413163

namespace A166454

/-- `ceil(A014430(n)/2)` -/
def P4002823553797413163.Spec : Prop :=
  ∀ n, P4002823553797413163.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P40176371093654007

`round(sqrt(A065420(n))/2)`
-/

namespace A166454.P40176371093654007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A065420 n : ℝ) / 2)

end

end A166454.P40176371093654007

namespace A166454

/-- `round(sqrt(A065420(n))/2)` -/
def P40176371093654007.Spec : Prop :=
  ∀ n, P40176371093654007.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P7750481307662694517

`floor(A014410(n+2)/2)`
-/

namespace A166454.P7750481307662694517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014410 (n + 2) : ℚ) / 2⌋

end

end A166454.P7750481307662694517

namespace A166454

/-- `floor(A014410(n+2)/2)` -/
def P7750481307662694517.Spec : Prop :=
  ∀ n, P7750481307662694517.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P4238105673340833122

`floor(sqrt(A014719(n+2))/2)`
-/

namespace A166454.P4238105673340833122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A014719 (n + 2) : ℝ) / 2⌋

end

end A166454.P4238105673340833122

namespace A166454

/-- `floor(sqrt(A014719(n+2))/2)` -/
def P4238105673340833122.Spec : Prop :=
  ∀ n, P4238105673340833122.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P10682414499519834928

`floor(A007318(n)+A051601(n)/2)`
-/

namespace A166454.P10682414499519834928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 n : ℚ) + (A051601 n : ℚ) / 2⌋

end

end A166454.P10682414499519834928

namespace A166454

/-- `floor(A007318(n)+A051601(n)/2)` -/
def P10682414499519834928.Spec : Prop :=
  ∀ n, P10682414499519834928.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P5015922474566134220

`floor((A051597(n)+A007318(n))/2)`
-/

namespace A166454.P5015922474566134220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051597 n + A007318 n : ℚ) / 2⌋

end

end A166454.P5015922474566134220

namespace A166454

/-- `floor((A051597(n)+A007318(n))/2)` -/
def P5015922474566134220.Spec : Prop :=
  ∀ n, P5015922474566134220.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P7038531745255804387

`floor((A135278(n)+A074909(n))/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166454

/-- `floor((A135278(n)+A074909(n))/2)` -/
def P7038531745255804387.Spec : Prop :=
  ∀ n, P7038531745255804387.a n = A166454 (n + 2)

theorem P7038531745255804387.correct : P7038531745255804387.Spec := by
  intro n
  simp only [A166454, Nat.add_sub_cancel]

end A166454

/-! ## A166454.P17437853623894508510

`floor((A028263(n)-A007318(n))/2)`
-/

namespace A166454.P17437853623894508510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028263 n - A007318 n : ℚ) / 2⌋

end

end A166454.P17437853623894508510

namespace A166454

/-- `floor((A028263(n)-A007318(n))/2)` -/
def P17437853623894508510.Spec : Prop :=
  ∀ n, P17437853623894508510.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P6047544194951528637

`A028263(n)-round(A028276(n)/2)`
-/

namespace A166454.P6047544194951528637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - SequenceMachineLib.roundAway ((A028276 n : ℚ) / 2)

end

end A166454.P6047544194951528637

namespace A166454

/-- `A028263(n)-round(A028276(n)/2)` -/
def P6047544194951528637.Spec : Prop :=
  ∀ n, P6047544194951528637.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P2865491631074897648

`floor(A074909(lt[A127648(n), 1]+1)/2)`
-/

namespace A166454.P2865491631074897648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2⌋

end

end A166454.P2865491631074897648

namespace A166454

/-- `floor(A074909(lt[A127648(n), 1]+1)/2)` -/
def P2865491631074897648.Spec : Prop :=
  ∀ n, P2865491631074897648.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P3970740555018214983

`floor((A074909(n+1)+A074909(n))/2)`
-/

namespace A166454.P3970740555018214983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 (n + 1) + A074909 n : ℚ) / 2⌋

end

end A166454.P3970740555018214983

namespace A166454

/-- `floor((A074909(n+1)+A074909(n))/2)` -/
def P3970740555018214983.Spec : Prop :=
  ∀ n, P3970740555018214983.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P5272077840237296562

`floor(A007318(lt[1, A007318(n)])/2)`
-/

namespace A166454.P5272077840237296562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A166454.P5272077840237296562

namespace A166454

/-- `floor(A007318(lt[1, A007318(n)])/2)` -/
def P5272077840237296562.Spec : Prop :=
  ∀ n, P5272077840237296562.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P13125186865882721226

`A035317(n)+A004526(A035317(n+1))`
-/

namespace A166454.P13125186865882721226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 n + A004526 (A035317 (n + 1)).toNat

end

end A166454.P13125186865882721226

namespace A166454

/-- `A035317(n)+A004526(A035317(n+1))` -/
def P13125186865882721226.Spec : Prop :=
  ∀ n, P13125186865882721226.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P3607888762945613967

`A065033(A014430(n))`
-/

namespace A166454.P3607888762945613967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A014430 n).toNat

end

end A166454.P3607888762945613967

namespace A166454

/-- `A065033(A014430(n))` -/
def P3607888762945613967.Spec : Prop :=
  ∀ n, P3607888762945613967.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P14885279838104627667

`A004526(A014430(n)+1)`
-/

namespace A166454.P14885279838104627667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014430 n + 1).toNat

end

end A166454.P14885279838104627667

namespace A166454

/-- `A004526(A014430(n)+1)` -/
def P14885279838104627667.Spec : Prop :=
  ∀ n, P14885279838104627667.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P7355857320866337749

`A004526(A014410(n+2))`
-/

namespace A166454.P7355857320866337749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014410 (n + 2)).toNat

end

end A166454.P7355857320866337749

namespace A166454

/-- `A004526(A014410(n+2))` -/
def P7355857320866337749.Spec : Prop :=
  ∀ n, P7355857320866337749.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P10553292454904485715

`A008619(A014430(n)-1)`
-/

namespace A166454.P10553292454904485715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A014430 n - 1).toNat

end

end A166454.P10553292454904485715

namespace A166454

/-- `A008619(A014430(n)-1)` -/
def P10553292454904485715.Spec : Prop :=
  ∀ n, P10553292454904485715.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P18282565561495537310

`A065033(A014410(n+2)-1)`
-/

namespace A166454.P18282565561495537310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A014410 (n + 2) - 1).toNat

end

end A166454.P18282565561495537310

namespace A166454

/-- `A065033(A014410(n+2)-1)` -/
def P18282565561495537310.Spec : Prop :=
  ∀ n, P18282565561495537310.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P2395939546489956656

`A008619(A014410(n+2)-2)`
-/

namespace A166454.P2395939546489956656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A014410 (n + 2) - 2).toNat

end

end A166454.P2395939546489956656

namespace A166454

/-- `A008619(A014410(n+2)-2)` -/
def P2395939546489956656.Spec : Prop :=
  ∀ n, P2395939546489956656.a n = A166454 (n + 2)

end A166454

/-! ## A166454.P14327607109919896069

`A004526(A074909(n+1)+A074909(n))`
-/

namespace A166454.P14327607109919896069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074909 (n + 1) + A074909 n).toNat

end

end A166454.P14327607109919896069

namespace A166454

/-- `A004526(A074909(n+1)+A074909(n))` -/
def P14327607109919896069.Spec : Prop :=
  ∀ n, P14327607109919896069.a n = A166454 (n + 2)

end A166454

/-!
# A166455: Triangle read by rows, twice Pascal's triangle minus Sierpinski's gasket: 2*A007318 - A047999.

The programs for A166455, the canonical program `A166455.P6643648984415993271` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166455 has offset 0).

The definition of A166455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166455.P6643648984415993271

`A219463(n)+A109128(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166455

/-- `A219463(n)+A109128(n)` -/
def P6643648984415993271.Spec : Prop :=
  ∀ n, P6643648984415993271.a n = A166455 n

theorem P6643648984415993271.correct : P6643648984415993271.Spec := by
  intro n
  simp only [A166455]

end A166455

/-! ## A166455.P13430147887887464887

`A028326(n)-A047999(n)`
-/

namespace A166455.P13430147887887464887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A047999 n

end

end A166455.P13430147887887464887

namespace A166455

/-- `A028326(n)-A047999(n)` -/
def P13430147887887464887.Spec : Prop :=
  ∀ n, P13430147887887464887.a n = A166455 n

end A166455

/-! ## A166455.P4370710760680440191

`A028326(n)-A143200(n)²`
-/

namespace A166455.P4370710760680440191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A143200 n ^ 2

end

end A166455.P4370710760680440191

namespace A166455

/-- `A028326(n)-A143200(n)²` -/
def P4370710760680440191.Spec : Prop :=
  ∀ n, P4370710760680440191.a n = A166455 n

end A166455

/-! ## A166455.P9460008831635551355

`2*A007318(n)-A047999(n)`
-/

namespace A166455.P9460008831635551355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A047999 n

end

end A166455.P9460008831635551355

namespace A166455

/-- `2*A007318(n)-A047999(n)` -/
def P9460008831635551355.Spec : Prop :=
  ∀ n, P9460008831635551355.a n = A166455 n

end A166455

/-! ## A166455.P7795474262292300398

`A028326(n)-and(1, A027465(n))`
-/

namespace A166455.P7795474262292300398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - Int.land 1 (A027465 n)

end

end A166455.P7795474262292300398

namespace A166455

/-- `A028326(n)-and(1, A027465(n))` -/
def P7795474262292300398.Spec : Prop :=
  ∀ n, P7795474262292300398.a n = A166455 n

end A166455

/-! ## A166455.P3044811875463086860

`A028326(n)-and(1, A034931(n))`
-/

namespace A166455.P3044811875463086860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - Int.land 1 (A034931 n)

end

end A166455.P3044811875463086860

namespace A166455

/-- `A028326(n)-and(1, A034931(n))` -/
def P3044811875463086860.Spec : Prop :=
  ∀ n, P3044811875463086860.a n = A166455 n

end A166455

/-! ## A166455.P17202546660870556799

`A174035(n)+A174035(n)-A008292(n+1)`
-/

namespace A166455.P17202546660870556799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174035 n + (A174035 n - A008292 (n + 1))

end

end A166455.P17202546660870556799

namespace A166455

/-- `A174035(n)+A174035(n)-A008292(n+1)` -/
def P17202546660870556799.Spec : Prop :=
  ∀ n, P17202546660870556799.a n = A166455 n

end A166455

/-! ## A166455.P14516515732299933701

`A042948(A007318(n))`
-/

namespace A166455.P14516515732299933701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A007318 n).toNat

end

end A166455.P14516515732299933701

namespace A166455

/-- `A042948(A007318(n))` -/
def P14516515732299933701.Spec : Prop :=
  ∀ n, P14516515732299933701.a n = A166455 n

end A166455

/-! ## A166455.P9444320566840875113

`A042948(A014473(n)+1)`
-/

namespace A166455.P9444320566840875113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A014473 n + 1).toNat

end

end A166455.P9444320566840875113

namespace A166455

/-- `A042948(A014473(n)+1)` -/
def P9444320566840875113.Spec : Prop :=
  ∀ n, P9444320566840875113.a n = A166455 n

end A166455

/-! ## A166455.P5570005897819687394

`A042948(A028326(n)/2)`
-/

namespace A166455.P5570005897819687394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A166455.P5570005897819687394

namespace A166455

/-- `A042948(A028326(n)/2)` -/
def P5570005897819687394.Spec : Prop :=
  ∀ n, P5570005897819687394.a n = A166455 n

end A166455

/-! ## A166455.P14939590489850518704

`A042948(A131830(n)/A131821(n+1))`
-/

namespace A166455.P14939590489850518704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.roundAway ((A131830 n : ℚ) / (A131821 (n + 1) : ℚ))).toNat

end

end A166455.P14939590489850518704

namespace A166455

/-- `A042948(A131830(n)/A131821(n+1))` -/
def P14939590489850518704.Spec : Prop :=
  ∀ n, P14939590489850518704.a n = A166455 n

end A166455

/-! ## A166455.P14118018316235511230

`A080412(A028326(n))`
-/

namespace A166455.P14118018316235511230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A028326 n).toNat

end

end A166455.P14118018316235511230

namespace A166455

/-- `A080412(A028326(n))` -/
def P14118018316235511230.Spec : Prop :=
  ∀ n, P14118018316235511230.a n = A166455 n

end A166455

/-! ## A166455.P2187233480306886600

`A003816(A109128(n))`
-/

namespace A166455.P2187233480306886600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A109128 n).toNat

end

end A166455.P2187233480306886600

namespace A166455

/-- `A003816(A109128(n))` -/
def P2187233480306886600.Spec : Prop :=
  ∀ n, P2187233480306886600.a n = A166455 n

end A166455

/-! ## A166455.P4581044563925731583

`A392590(A124927(n))`
-/

namespace A166455.P4581044563925731583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392590 (A124927 n).toNat

end

end A166455.P4581044563925731583

namespace A166455

/-- `A392590(A124927(n))` -/
def P4581044563925731583.Spec : Prop :=
  ∀ n, P4581044563925731583.a n = A166455 n

end A166455

/-! ## A166455.P9471258401695756638

`A392590(A129994(n))`
-/

namespace A166455.P9471258401695756638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392590 (A129994 n).toNat

end

end A166455.P9471258401695756638

namespace A166455

/-- `A392590(A129994(n))` -/
def P9471258401695756638.Spec : Prop :=
  ∀ n, P9471258401695756638.a n = A166455 n

end A166455

/-! ## A166455.P18348150201009597918

`A392590(A132046(n))`
-/

namespace A166455.P18348150201009597918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392590 (A132046 n).toNat

end

end A166455.P18348150201009597918

namespace A166455

/-- `A392590(A132046(n))` -/
def P18348150201009597918.Spec : Prop :=
  ∀ n, P18348150201009597918.a n = A166455 n

end A166455

/-! ## A166455.P190774543126707916

`A392590(A134058(n))`
-/

namespace A166455.P190774543126707916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392590 (A134058 n).toNat

end

end A166455.P190774543126707916

namespace A166455

/-- `A392590(A134058(n))` -/
def P190774543126707916.Spec : Prop :=
  ∀ n, P190774543126707916.a n = A166455 n

end A166455

/-! ## A166455.P15726270377871525864

`A099479(A131060(n))`
-/

namespace A166455.P15726270377871525864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A131060 n).toNat

end

end A166455.P15726270377871525864

namespace A166455

/-- `A099479(A131060(n))` -/
def P15726270377871525864.Spec : Prop :=
  ∀ n, P15726270377871525864.a n = A166455 n

end A166455

/-! ## A166455.P10279739032914549430

`A034586(A131112(n))`
-/

namespace A166455.P10279739032914549430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (A131112 n).toNat

end

end A166455.P10279739032914549430

namespace A166455

/-- `A034586(A131112(n))` -/
def P10279739032914549430.Spec : Prop :=
  ∀ n, P10279739032914549430.a n = A166455 n

end A166455

/-! ## A166455.P2033411640771048302

`A034586(A132200(n))`
-/

namespace A166455.P2033411640771048302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (A132200 n).toNat

end

end A166455.P2033411640771048302

namespace A166455

/-- `A034586(A132200(n))` -/
def P2033411640771048302.Spec : Prop :=
  ∀ n, P2033411640771048302.a n = A166455 n

end A166455

/-!
# A166456: Row sums of triangle A166455.

The programs for A166456, the canonical program `A166456.P6034457580141109105` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166456 has offset 0).

The definition of A166456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166456.P6034457580141109105

`2^(n+1)-A001316(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166456

/-- `2^(n+1)-A001316(n)` -/
def P6034457580141109105.Spec : Prop :=
  ∀ n, P6034457580141109105.a n = A166456 n

theorem P6034457580141109105.correct : P6034457580141109105.Spec := by
  intro n
  simp only [A166456]

end A166456

/-! ## A166456.P18150774292979138106

`∑[2^n]-A038573(n)`
-/

namespace A166456.P18150774292979138106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A038573 n

end

end A166456.P18150774292979138106

namespace A166456

/-- `∑[2^n]-A038573(n)` -/
def P18150774292979138106.Spec : Prop :=
  ∀ n, P18150774292979138106.a n = A166456 n

end A166456

/-! ## A166456.P16649130616171863326

`2*(2^n-2^(A000120(n)-1))`
-/

namespace A166456.P16649130616171863326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℚ) - (2 : ℚ) ^ (A000120 n - 1 : ℤ))

end

end A166456.P16649130616171863326

namespace A166456

/-- `2*(2^n-2^(A000120(n)-1))` -/
def P16649130616171863326.Spec : Prop :=
  ∀ n, P16649130616171863326.a n = (A166456 n : ℚ)

end A166456

/-! ## A166456.P15150341230940915890

`A183155(n)+A071042(n)`
-/

namespace A166456.P15150341230940915890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183155 n + A071042 n

end

end A166456.P15150341230940915890

namespace A166456

/-- `A183155(n)+A071042(n)` -/
def P15150341230940915890.Spec : Prop :=
  ∀ n, P15150341230940915890.a n = A166456 n

end A166456

/-! ## A166456.P7687679058562682497

`xor(A038573(n), A126646(n))`
-/

namespace A166456.P7687679058562682497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038573 n) (A126646 n)

end

end A166456.P7687679058562682497

namespace A166456

/-- `xor(A038573(n), A126646(n))` -/
def P7687679058562682497.Spec : Prop :=
  ∀ n, P7687679058562682497.a n = A166456 n

end A166456

/-! ## A166456.P17505912423713916281

`A000225(n+1)+1-A001316(n)`
-/

namespace A166456.P17505912423713916281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A001316 n)

end

end A166456.P17505912423713916281

namespace A166456

/-- `A000225(n+1)+1-A001316(n)` -/
def P17505912423713916281.Spec : Prop :=
  ∀ n, P17505912423713916281.a n = A166456 n

end A166456

/-! ## A166456.P2234498633861079420

`A083318(n+1)-(A001316(n)+1)`
-/

namespace A166456.P2234498633861079420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (n + 1) - (A001316 n + 1)

end

end A166456.P2234498633861079420

namespace A166456

/-- `A083318(n+1)-(A001316(n)+1)` -/
def P2234498633861079420.Spec : Prop :=
  ∀ n, P2234498633861079420.a n = A166456 n

end A166456

/-! ## A166456.P9161459155795830752

`A000079(n+1)-A048896(2*n)`
-/

namespace A166456.P9161459155795830752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A048896 (2 * n)

end

end A166456.P9161459155795830752

namespace A166456

/-- `A000079(n+1)-A048896(2*n)` -/
def P9161459155795830752.Spec : Prop :=
  ∀ n, P9161459155795830752.a n = A166456 n

end A166456

/-! ## A166456.P3443444142875928812

`A000079(n+1)-A060632(2*n)`
-/

namespace A166456.P3443444142875928812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A060632 (2 * n)

end

end A166456.P3443444142875928812

namespace A166456

/-- `A000079(n+1)-A060632(2*n)` -/
def P3443444142875928812.Spec : Prop :=
  ∀ n, P3443444142875928812.a n = A166456 n

end A166456

/-! ## A166456.P13060330305072933617

`A000079(n+1)-A071044(2*n)`
-/

namespace A166456.P13060330305072933617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A071044 (2 * n)

end

end A166456.P13060330305072933617

namespace A166456

/-- `A000079(n+1)-A071044(2*n)` -/
def P13060330305072933617.Spec : Prop :=
  ∀ n, P13060330305072933617.a n = A166456 n

end A166456

/-! ## A166456.P9396158956435660409

`A000079(n+1)-A151930(2*n)`
-/

namespace A166456.P9396158956435660409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A151930 (2 * n)

end

end A166456.P9396158956435660409

namespace A166456

/-- `A000079(n+1)-A151930(2*n)` -/
def P9396158956435660409.Spec : Prop :=
  ∀ n, P9396158956435660409.a n = A166456 n

end A166456

/-! ## A166456.P10852765582891781597

`A011782(n+2)-A048896(2*n)`
-/

namespace A166456.P10852765582891781597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A048896 (2 * n)

end

end A166456.P10852765582891781597

namespace A166456

/-- `A011782(n+2)-A048896(2*n)` -/
def P10852765582891781597.Spec : Prop :=
  ∀ n, P10852765582891781597.a n = A166456 n

end A166456

/-! ## A166456.P1537353096150785477

`A011782(n+2)-A060632(2*n)`
-/

namespace A166456.P1537353096150785477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A060632 (2 * n)

end

end A166456.P1537353096150785477

namespace A166456

/-- `A011782(n+2)-A060632(2*n)` -/
def P1537353096150785477.Spec : Prop :=
  ∀ n, P1537353096150785477.a n = A166456 n

end A166456

/-! ## A166456.P571644466633988482

`A011782(n+2)-A071044(2*n)`
-/

namespace A166456.P571644466633988482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A071044 (2 * n)

end

end A166456.P571644466633988482

namespace A166456

/-- `A011782(n+2)-A071044(2*n)` -/
def P571644466633988482.Spec : Prop :=
  ∀ n, P571644466633988482.a n = A166456 n

end A166456

/-! ## A166456.P7174529610653554677

`2^(n+1)-A000079(A000120(n))`
-/

namespace A166456.P7174529610653554677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A000079 (A000120 n).toNat

end

end A166456.P7174529610653554677

namespace A166456

/-- `2^(n+1)-A000079(A000120(n))` -/
def P7174529610653554677.Spec : Prop :=
  ∀ n, P7174529610653554677.a n = A166456 n

end A166456

/-! ## A166456.P8584197897065348174

`A000225(n+1)+1-A048896(2*n)`
-/

namespace A166456.P8584197897065348174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A048896 (2 * n))

end

end A166456.P8584197897065348174

namespace A166456

/-- `A000225(n+1)+1-A048896(2*n)` -/
def P8584197897065348174.Spec : Prop :=
  ∀ n, P8584197897065348174.a n = A166456 n

end A166456

/-! ## A166456.P11629101162775574254

`A000225(n+1)+1-A060632(2*n)`
-/

namespace A166456.P11629101162775574254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A060632 (2 * n))

end

end A166456.P11629101162775574254

namespace A166456

/-- `A000225(n+1)+1-A060632(2*n)` -/
def P11629101162775574254.Spec : Prop :=
  ∀ n, P11629101162775574254.a n = A166456 n

end A166456

/-! ## A166456.P6416479382541405437

`A000225(n+1)+1-A071044(2*n)`
-/

namespace A166456.P6416479382541405437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A071044 (2 * n))

end

end A166456.P6416479382541405437

namespace A166456

/-- `A000225(n+1)+1-A071044(2*n)` -/
def P6416479382541405437.Spec : Prop :=
  ∀ n, P6416479382541405437.a n = A166456 n

end A166456

/-! ## A166456.P9088531251390702089

`A000079(n+1)-A131136(n+1)/2`
-/

namespace A166456.P9088531251390702089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A131136 (n + 1) : ℚ) / 2

end

end A166456.P9088531251390702089

namespace A166456

/-- `A000079(n+1)-A131136(n+1)/2` -/
def P9088531251390702089.Spec : Prop :=
  ∀ n, P9088531251390702089.a n = (A166456 n : ℚ)

end A166456

/-! ## A166456.P1679784568579325347

`A016116(2*(n+1))-A060632(2*n)`
-/

namespace A166456.P1679784568579325347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 1)) - A060632 (2 * n)

end

end A166456.P1679784568579325347

namespace A166456

/-- `A016116(2*(n+1))-A060632(2*n)` -/
def P1679784568579325347.Spec : Prop :=
  ∀ n, P1679784568579325347.a n = A166456 n

end A166456

/-!
# A166457: Numbers n such that n*100+1 is prime.

The programs for A166457, the canonical program `A166457.P7545271108684484344` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166457 has offset 1).

The definition of A166457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166457.P7545271108684484344

`A102546(n+1)/10`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166457

/-- `A102546(n+1)/10` -/
def P7545271108684484344.Spec : Prop :=
  ∀ n, P7545271108684484344.a n = (A166457 (n + 1) : ℚ)

end A166457

/-! ## A166457.P1564516974296272769

`floor(A062800(n+1)/10)/10`
-/

namespace A166457.P1564516974296272769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A062800 (n + 1) : ℚ) / 10⌋ : ℚ) / 10

end

end A166457.P1564516974296272769

namespace A166457

/-- `floor(A062800(n+1)/10)/10` -/
def P1564516974296272769.Spec : Prop :=
  ∀ n, P1564516974296272769.a n = (A166457 (n + 1) : ℚ)

end A166457

/-! ## A166457.P1617136155565680316

`floor(p?[10*10*n+1]/10)/10`
-/

namespace A166457.P1617136155565680316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10⌋ : ℚ) / 10

end

end A166457.P1617136155565680316

namespace A166457

/-- `floor(p?[10*10*n+1]/10)/10` -/
def P1617136155565680316.Spec : Prop :=
  ∀ n, P1617136155565680316.a n = (A166457 (n + 1) : ℚ)

end A166457

/-! ## A166457.P14040473742756052609

`eq[1, A091088(10*n)]`
-/

namespace A166457.P14040473742756052609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166457.P14040473742756052609

namespace A166457

/-- `eq[1, A091088(10*n)]` -/
def P14040473742756052609.Spec : Prop :=
  ∀ n, (P14040473742756052609.a n : ℤ) = A166457 (n + 1)

end A166457

/-! ## A166457.P4459875493779878574

`eq[1, A001222(10*10*n+1)]`
-/

namespace A166457.P4459875493779878574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166457.P4459875493779878574

namespace A166457

/-- `eq[1, A001222(10*10*n+1)]` -/
def P4459875493779878574.Spec : Prop :=
  ∀ n, (P4459875493779878574.a n : ℤ) = A166457 (n + 1)

end A166457

/-! ## A166457.P1596881763270612255

`eq[1, A010051(10*10*n+1)]`
-/

namespace A166457.P1596881763270612255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (10 * (10 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166457.P1596881763270612255

namespace A166457

/-- `eq[1, A010051(10*10*n+1)]` -/
def P1596881763270612255.Spec : Prop :=
  ∀ n, (P1596881763270612255.a n : ℤ) = A166457 (n + 1)

end A166457

/-! ## A166457.P12810785582088969605

`eq[2, A000005(10*10*n+1)]`
-/

namespace A166457.P12810785582088969605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166457.P12810785582088969605

namespace A166457

/-- `eq[2, A000005(10*10*n+1)]` -/
def P12810785582088969605.Spec : Prop :=
  ∀ n, (P12810785582088969605.a n : ℤ) = A166457 (n + 1)

end A166457

/-! ## A166457.P16887035991354114772

`A059995(A102546(n+1))`
-/

namespace A166457.P16887035991354114772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A102546 (n + 1)).toNat

end

end A166457.P16887035991354114772

namespace A166457

/-- `A059995(A102546(n+1))` -/
def P16887035991354114772.Spec : Prop :=
  ∀ n, P16887035991354114772.a n = A166457 (n + 1)

end A166457

/-! ## A166457.P14584064604546707137

`lt[A091088(A008592(n)), 2]`
-/

namespace A166457.P14584064604546707137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A008592 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166457.P14584064604546707137

namespace A166457

/-- `lt[A091088(A008592(n)), 2]` -/
def P14584064604546707137.Spec : Prop :=
  ∀ n, (P14584064604546707137.a n : ℤ) = A166457 (n + 1)

end A166457

/-! ## A166457.P17617402241968150523

`eq[2, A000005(A158128(n+1))]+1`
-/

namespace A166457.P17617402241968150523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166457.P17617402241968150523

namespace A166457

/-- `eq[2, A000005(A158128(n+1))]+1` -/
def P17617402241968150523.Spec : Prop :=
  ∀ n, (P17617402241968150523.a n : ℤ) = A166457 (n + 1)

end A166457

/-!
# A166458: Numbers k such that 10*k - (-1)^k is prime.

The programs for A166458, the canonical program `A166458.P12701024512450342606` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166458 has offset 1).

The definition of A166458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166458.P12701024512450342606

`round(A122869(n+1)/10)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166458

/-- `round(A122869(n+1)/10)` -/
def P12701024512450342606.Spec : Prop :=
  ∀ n, P12701024512450342606.a n = A166458 (n + 1)

theorem P12701024512450342606.correct : P12701024512450342606.Spec := by
  intro n
  simp only [A166458, Nat.add_sub_cancel]

end A166458

/-! ## A166458.P1792461151119043529

`A110654(floor(A122869(n+1)/5))`
-/

namespace A166458.P1792461151119043529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊(A122869 (n + 1) : ℚ) / 5⌋.toNat

end

end A166458.P1792461151119043529

namespace A166458

/-- `A110654(floor(A122869(n+1)/5))` -/
def P1792461151119043529.Spec : Prop :=
  ∀ n, P1792461151119043529.a n = A166458 (n + 1)

end A166458

/-! ## A166458.P13186399738157147075

`A004524(ceil(A122869(n+1)/5))`
-/

namespace A166458.P13186399738157147075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ⌈(A122869 (n + 1) : ℚ) / 5⌉.toNat

end

end A166458.P13186399738157147075

namespace A166458

/-- `A004524(ceil(A122869(n+1)/5))` -/
def P13186399738157147075.Spec : Prop :=
  ∀ n, P13186399738157147075.a n = A166458 (n + 1)

end A166458

/-! ## A166458.P3856349353034156015

`A004526(ceil(A122869(n+1)/5))`
-/

namespace A166458.P3856349353034156015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(A122869 (n + 1) : ℚ) / 5⌉.toNat

end

end A166458.P3856349353034156015

namespace A166458

/-- `A004526(ceil(A122869(n+1)/5))` -/
def P3856349353034156015.Spec : Prop :=
  ∀ n, P3856349353034156015.a n = A166458 (n + 1)

end A166458

/-! ## A166458.P5402097512886722052

`eq[1, A276417(A146951(n))]`
-/

namespace A166458.P5402097512886722052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (A146951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166458.P5402097512886722052

namespace A166458

/-- `eq[1, A276417(A146951(n))]` -/
def P5402097512886722052.Spec : Prop :=
  ∀ n, (P5402097512886722052.a n : ℤ) = A166458 (n + 1)

end A166458

/-! ## A166458.P3593612866367252411

`eq[4, A000005(A296910(A008706(n)))]`
-/

namespace A166458.P3593612866367252411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A296910 (A008706 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166458.P3593612866367252411

namespace A166458

/-- `eq[4, A000005(A296910(A008706(n)))]` -/
def P3593612866367252411.Spec : Prop :=
  ∀ n, (P3593612866367252411.a n : ℤ) = A166458 (n + 1)

end A166458

/-! ## A166458.P1915953674569727442

`A008616(A122869(n+1))`
-/

namespace A166458.P1915953674569727442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A122869 (n + 1)).toNat

end

end A166458.P1915953674569727442

namespace A166458

/-- `A008616(A122869(n+1))` -/
def P1915953674569727442.Spec : Prop :=
  ∀ n, P1915953674569727442.a n = A166458 (n + 1)

end A166458

/-! ## A166458.P17741317722467890238

`eq[A000035(n), A007920(A053438(5*n))]`
-/

namespace A166458.P17741317722467890238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A053438 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166458.P17741317722467890238

namespace A166458

/-- `eq[A000035(n), A007920(A053438(5*n))]` -/
def P17741317722467890238.Spec : Prop :=
  ∀ n, (P17741317722467890238.a n : ℤ) = A166458 (n + 1)

end A166458

/-! ## A166458.P409357128813584996

`A033182(3*A122869(n+1))`
-/

namespace A166458.P409357128813584996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (3 * A122869 (n + 1)).toNat

end

end A166458.P409357128813584996

namespace A166458

/-- `A033182(3*A122869(n+1))` -/
def P409357128813584996.Spec : Prop :=
  ∀ n, P409357128813584996.a n = A166458 (n + 1)

end A166458

/-!
# A166459: Numbers whose sum of digits is 19.

The programs for A166459, there is no canonical definition to state claims against.
-/

/-! ## A166459.P12399569288192731252

`∪[A106759(n+1), A229906(n+1)]`
-/

namespace A166459.P12399569288192731252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166459.P12399569288192731252

/-! ## A166459.P5243260102812596590

`eq[19, A007953(n)]`
-/

namespace A166459.P5243260102812596590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166459.P5243260102812596590

/-! ## A166459.P16045558171449368211

`eq[19, sqrt(A118881(n))]`
-/

namespace A166459.P16045558171449368211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A166459.P16045558171449368211

/-! ## A166459.P318020522373811022

`eq[19, log2(A329562(n))]`
-/

namespace A166459.P318020522373811022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A166459.P318020522373811022

/-! ## A166459.P9271921387980666050

`eq[5, A000120(A122481(n))]`
-/

namespace A166459.P9271921387980666050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A122481 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166459.P9271921387980666050

/-! ## A166459.P14664704016810044277

`eq[5, A288310(A169805(n))]`
-/

namespace A166459.P14664704016810044277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288310 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166459.P14664704016810044277

/-! ## A166459.P11184018238585248338

`eq[19, A004092(A008706(n))]`
-/

namespace A166459.P11184018238585248338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166459.P11184018238585248338

/-!
# A166460: Numbers k such that k + (-1)^k is not prime.

The programs for A166460, the canonical program `A166460.P3722313716413946598` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166460 has offset 1).

The definition of A166460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166460.P7463480734629233536

`comp[A039915(n+1)]`
-/

namespace A166460.P7463480734629233536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P7463480734629233536

namespace A166460

/-- `comp[A039915(n+1)]` -/
def P7463480734629233536.Spec : Prop :=
  ∀ n, (P7463480734629233536.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P3527783720176239452

`comp[A068499(n+2)]`
-/

namespace A166460.P3527783720176239452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P3527783720176239452

namespace A166460

/-- `comp[A068499(n+2)]` -/
def P3527783720176239452.Spec : Prop :=
  ∀ n, (P3527783720176239452.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P6048743316587574795

`comp[xor(1, A088732(n))]`
-/

namespace A166460.P6048743316587574795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A088732 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P6048743316587574795

namespace A166460

/-- `comp[xor(1, A088732(n))]` -/
def P6048743316587574795.Spec : Prop :=
  ∀ n, (P6048743316587574795.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P16340169836803906795

`comp[xor(1, A134204(n))]`
-/

namespace A166460.P16340169836803906795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A134204 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P16340169836803906795

namespace A166460

/-- `comp[xor(1, A134204(n))]` -/
def P16340169836803906795.Spec : Prop :=
  ∀ n, (P16340169836803906795.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P1797817548836265131

`comp[xor(1, A151800(n))]`
-/

namespace A166460.P1797817548836265131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A151800 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P1797817548836265131

namespace A166460

/-- `comp[xor(1, A151800(n))]` -/
def P1797817548836265131.Spec : Prop :=
  ∀ n, (P1797817548836265131.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P18339692826737021570

`comp[xor(1, Δ[A007504(n)])]`
-/

namespace A166460.P18339692826737021570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P18339692826737021570

namespace A166460

/-- `comp[xor(1, Δ[A007504(n)])]` -/
def P18339692826737021570.Spec : Prop :=
  ∀ n, (P18339692826737021570.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P7377723708640997549

`comp[A175787(n+2)-1]`
-/

namespace A166460.P7377723708640997549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P7377723708640997549

namespace A166460

/-- `comp[A175787(n+2)-1]` -/
def P7377723708640997549.Spec : Prop :=
  ∀ n, (P7377723708640997549.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P15295511412734068743

`comp[xor(1, A000040(n+1))]`
-/

namespace A166460.P15295511412734068743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P15295511412734068743

namespace A166460

/-- `comp[xor(1, A000040(n+1))]` -/
def P15295511412734068743.Spec : Prop :=
  ∀ n, (P15295511412734068743.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P14758669723862322283

`comp[xor(1, A060308(n+1))]`
-/

namespace A166460.P14758669723862322283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A060308 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P14758669723862322283

namespace A166460

/-- `comp[xor(1, A060308(n+1))]` -/
def P14758669723862322283.Spec : Prop :=
  ∀ n, (P14758669723862322283.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P11551591959715403353

`comp[xor(1, A068863(n+1))]`
-/

namespace A166460.P11551591959715403353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A068863 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P11551591959715403353

namespace A166460

/-- `comp[xor(1, A068863(n+1))]` -/
def P11551591959715403353.Spec : Prop :=
  ∀ n, (P11551591959715403353.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P3779950442391203584

`comp[xor(1, A006530(n+2))]`
-/

namespace A166460.P3779950442391203584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006530 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P3779950442391203584

namespace A166460

/-- `comp[xor(1, A006530(n+2))]` -/
def P3779950442391203584.Spec : Prop :=
  ∀ n, (P3779950442391203584.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P12317397742401857285

`comp[xor(1, A008578(n+2))]`
-/

namespace A166460.P12317397742401857285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008578 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P12317397742401857285

namespace A166460

/-- `comp[xor(1, A008578(n+2))]` -/
def P12317397742401857285.Spec : Prop :=
  ∀ n, (P12317397742401857285.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P9417334082611708362

`comp[xor(1, A020639(n+2))]`
-/

namespace A166460.P9417334082611708362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020639 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P9417334082611708362

namespace A166460

/-- `comp[xor(1, A020639(n+2))]` -/
def P9417334082611708362.Spec : Prop :=
  ∀ n, (P9417334082611708362.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P17912544510711121820

`comp[xor(1, A182986(n+2))]`
-/

namespace A166460.P17912544510711121820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A182986 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P17912544510711121820

namespace A166460

/-- `comp[xor(1, A182986(n+2))]` -/
def P17912544510711121820.Spec : Prop :=
  ∀ n, (P17912544510711121820.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P11387825693117065817

`comp[xor(1, A302445(n+2))]`
-/

namespace A166460.P11387825693117065817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A302445 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P11387825693117065817

namespace A166460

/-- `comp[xor(1, A302445(n+2))]` -/
def P11387825693117065817.Spec : Prop :=
  ∀ n, (P11387825693117065817.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P8658470993018782781

`comp[eq[1, A241534(n+1)]]`
-/

namespace A166460.P8658470993018782781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241534 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A166460.P8658470993018782781

namespace A166460

/-- `comp[eq[1, A241534(n+1)]]` -/
def P8658470993018782781.Spec : Prop :=
  ∀ n, (P8658470993018782781.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P15488273647146512952

`comp[xor(1, comp[A141468(n+1)])]`
-/

namespace A166460.P15488273647146512952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A166460.P15488273647146512952

namespace A166460

/-- `comp[xor(1, comp[A141468(n+1)])]` -/
def P15488273647146512952.Spec : Prop :=
  ∀ n, (P15488273647146512952.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P3479057329760457201

`comp[xor(1, A040976(n+1)+2)]`
-/

namespace A166460.P3479057329760457201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A040976 (n + 1) + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P3479057329760457201

namespace A166460

/-- `comp[xor(1, A040976(n+1)+2)]` -/
def P3479057329760457201.Spec : Prop :=
  ∀ n, (P3479057329760457201.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P3468709830891971064

`comp[xor(1, A207790(2*(n+1)))]`
-/

namespace A166460.P3468709830891971064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A207790 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166460.P3468709830891971064

namespace A166460

/-- `comp[xor(1, A207790(2*(n+1)))]` -/
def P3468709830891971064.Spec : Prop :=
  ∀ n, (P3468709830891971064.a n : ℤ) = A166460 (n + 1)

end A166460

/-! ## A166460.P3722313716413946598

`lt[n, xor(n, A006530(n+1))²]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166460

/-- `lt[n, xor(n, A006530(n+1))²]` -/
def P3722313716413946598.Spec : Prop :=
  ∀ n, (P3722313716413946598.a n : ℤ) = A166460 (n + 1)

theorem P3722313716413946598.correct : P3722313716413946598.Spec := by
  intro n
  simp only [A166460, Nat.add_sub_cancel]

end A166460

/-!
# A166461: a(n) is the smallest integer > a(n-1) such that a(n) shares no digit with a(n-1) and c=a(n-1)+a(n), and also a(n-1) shares no digit with c.

The programs for A166461, there is no canonical definition to state claims against.
-/

/-! ## A166461.P2782940595454545339

`record[A275772(n+1)-A242521(n+1)]`
-/

namespace A166461.P2782940595454545339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (n + 1) - A242521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166461.P2782940595454545339

/-! ## A166461.P2429826933295558352

`A180019(A322283(n))+A044821(n+1)`
-/

namespace A166461.P2429826933295558352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 (A322283 n).toNat + A044821 (n + 1)

end

end A166461.P2429826933295558352

/-! ## A166461.P16828734118884252646

`A275772(n+1)+A180019(A322283(n))`
-/

namespace A166461.P16828734118884252646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (n + 1) + A180019 (A322283 n).toNat

end

end A166461.P16828734118884252646

/-! ## A166461.P17816737736613295482

`A180019(A322283(n))+A002113(n+2)`
-/

namespace A166461.P17816737736613295482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 (A322283 n).toNat + A002113 (n + 2)

end

end A166461.P17816737736613295482

/-! ## A166461.P5835402844552669574

`eq[A056620(n), A256756(A002837(n+1))]`
-/

namespace A166461.P5835402844552669574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A002837 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166461.P5835402844552669574

/-!
# A166464: a(n) = (3 + 2*n + 6*n^2 + 4*n^3)/3.

The programs for A166464, the canonical program `A166464.P5573303640485334479` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166464 has offset 0).

The definition of A166464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166464.P6171357209603445686

`(3+2*n+6*n²+4*n^3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166464.P6171357209603445686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 2 * n + 6 * n ^ 2 + 4 * n ^ 3 : ℚ) / 3

end

end A166464.P6171357209603445686

namespace A166464

/-- `(3+2*n+6*n²+4*n^3)/3` -/
def P6171357209603445686.Spec : Prop :=
  ∀ n, P6171357209603445686.a n = (A166464 n : ℚ)

end A166464

/-! ## A166464.P5573303640485334479

`A002492(n)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166464

/-- `A002492(n)+1` -/
def P5573303640485334479.Spec : Prop :=
  ∀ n, P5573303640485334479.a n = A166464 n

theorem P5573303640485334479.correct : P5573303640485334479.Spec := by
  intro n
  simp only [A166464]

end A166464

/-! ## A166464.P11085997762564773414

`or(1, ∑[(2*n)²])`
-/

namespace A166464.P11085997762564773414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166464.P11085997762564773414

namespace A166464

/-- `or(1, ∑[(2*n)²])` -/
def P11085997762564773414.Spec : Prop :=
  ∀ n, (P11085997762564773414.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P13586019979436997924

`xor(1, ∑[(2*n)²])`
-/

namespace A166464.P13586019979436997924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166464.P13586019979436997924

namespace A166464

/-- `xor(1, ∑[(2*n)²])` -/
def P13586019979436997924.Spec : Prop :=
  ∀ n, (P13586019979436997924.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P4251984228674390396

`∑[floor(2/acot(n))²]`
-/

namespace A166464.P4251984228674390396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P4251984228674390396

namespace A166464

/-- `∑[floor(2/acot(n))²]` -/
def P4251984228674390396.Spec : Prop :=
  ∀ n, P4251984228674390396.a n = A166464 n

end A166464

/-! ## A166464.P12723339741187876778

`∑[comp[record[xor(1, n+1)]]²]`
-/

namespace A166464.P12723339741187876778
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P12723339741187876778

namespace A166464

/-- `∑[comp[record[xor(1, n+1)]]²]` -/
def P12723339741187876778.Spec : Prop :=
  ∀ n, (P12723339741187876778.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P13989564800097575485

`a(n-1)+(2*n)²` with `a(0)=1`
-/

namespace A166464.P13989564800097575485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ 2

end

end A166464.P13989564800097575485

namespace A166464

/-- `a(n-1)+(2*n)²` -/
def P13989564800097575485.Spec : Prop :=
  ∀ n, (P13989564800097575485.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P14335877710930902727

`∑[(2*n)^(2%(n+2))]`
-/

namespace A166464.P14335877710930902727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (2 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P14335877710930902727

namespace A166464

/-- `∑[(2*n)^(2%(n+2))]` -/
def P14335877710930902727.Spec : Prop :=
  ∀ n, (P14335877710930902727.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P17362206939064543941

`∑[(comp[lcm(2, n+1)]+1)²]`
-/

namespace A166464.P17362206939064543941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P17362206939064543941

namespace A166464

/-- `∑[(comp[lcm(2, n+1)]+1)²]` -/
def P17362206939064543941.Spec : Prop :=
  ∀ n, (P17362206939064543941.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P2380118462383342922

`∑[record[(1-xor(1, n+1))²]]`
-/

namespace A166464.P2380118462383342922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 1 (n + 1) : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P2380118462383342922

namespace A166464

/-- `∑[record[(1-xor(1, n+1))²]]` -/
def P2380118462383342922.Spec : Prop :=
  ∀ n, P2380118462383342922.a n = A166464 n

end A166464

/-! ## A166464.P1237466744868829238

`∑[xor(1, record[xor(1, n+1)])²]`
-/

namespace A166464.P1237466744868829238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P1237466744868829238

namespace A166464

/-- `∑[xor(1, record[xor(1, n+1)])²]` -/
def P1237466744868829238.Spec : Prop :=
  ∀ n, (P1237466744868829238.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P13006745801584430795

`∑[gcd(2*n, C(2, n²))²]`
-/

namespace A166464.P13006745801584430795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.choose 2 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P13006745801584430795

namespace A166464

/-- `∑[gcd(2*n, C(2, n²))²]` -/
def P13006745801584430795.Spec : Prop :=
  ∀ n, (P13006745801584430795.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P17399859790275884396

`∑[record[((n+1)^(n%2))²]]`
-/

namespace A166464.P17399859790275884396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n % 2)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P17399859790275884396

namespace A166464

/-- `∑[record[((n+1)^(n%2))²]]` -/
def P17399859790275884396.Spec : Prop :=
  ∀ n, (P17399859790275884396.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P5284516861274751703

`∑[record[((n+1)^and(1, n))²]]`
-/

namespace A166464.P5284516861274751703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P5284516861274751703

namespace A166464

/-- `∑[record[((n+1)^and(1, n))²]]` -/
def P5284516861274751703.Spec : Prop :=
  ∀ n, (P5284516861274751703.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P8715381359634311896

`∑[(2*n)^ceil(atan(2*n))]`
-/

namespace A166464.P8715381359634311896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌈Real.arctan (2 * n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P8715381359634311896

namespace A166464

/-- `∑[(2*n)^ceil(atan(2*n))]` -/
def P8715381359634311896.Spec : Prop :=
  ∀ n, P8715381359634311896.a n = (A166464 n : ℚ)

end A166464

/-! ## A166464.P2440419667981661704

`∑[record[a(n-1)+2]²]` with `a(0)=1, a(1)=0`
-/

namespace A166464.P2440419667981661704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P2440419667981661704

namespace A166464

/-- `∑[record[a(n-1)+2]²]` -/
def P2440419667981661704.Spec : Prop :=
  ∀ n, (P2440419667981661704.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P12663057331097946453

`∑[comp[a(n-1)+2]²]` with `a(0)=0, a(1)=3`
-/

namespace A166464.P12663057331097946453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P12663057331097946453

namespace A166464

/-- `∑[comp[a(n-1)+2]²]` -/
def P12663057331097946453.Spec : Prop :=
  ∀ n, (P12663057331097946453.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P738813778391950322

`∑[(2*n-C(2, n+2))²]`
-/

namespace A166464.P738813778391950322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P738813778391950322

namespace A166464

/-- `∑[(2*n-C(2, n+2))²]` -/
def P738813778391950322.Spec : Prop :=
  ∀ n, P738813778391950322.a n = A166464 n

end A166464

/-! ## A166464.P4178037003961356076

`∑[record[(n+1)^gcd(2, n+1)]]`
-/

namespace A166464.P4178037003961356076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P4178037003961356076

namespace A166464

/-- `∑[record[(n+1)^gcd(2, n+1)]]` -/
def P4178037003961356076.Spec : Prop :=
  ∀ n, (P4178037003961356076.a n : ℤ) = A166464 n

end A166464

/-! ## A166464.P9841960307660619280

`∑[(C(2, n+2)+n+n)²]`
-/

namespace A166464.P9841960307660619280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166464.P9841960307660619280

namespace A166464

/-- `∑[(C(2, n+2)+n+n)²]` -/
def P9841960307660619280.Spec : Prop :=
  ∀ n, (P9841960307660619280.a n : ℤ) = A166464 n

end A166464

/-!
# A166465: a(n) = 3*a(n-2) for n > 2; a(1) = 1, a(2) = 5.

The programs for A166465, the canonical program `A166465.P475752122730873760` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166465 has offset 1).

The definition of A166465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A166465.P475752122730873760`, by `A166465.P475752122730873760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166465.P475752122730873760

`3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166465

/-- `3*a(n-2)` -/
def P475752122730873760.Spec : Prop :=
  ∀ n, (P475752122730873760.a n : ℤ) = A166465 (n + 1)

theorem P475752122730873760.correct : P475752122730873760.Spec := by
  intro n
  simp only [A166465, Nat.add_sub_cancel]

end A166465

/-! ## A166465.P10853487980868360689

`∏[3/a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A166465.P10853487980868360689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166465.P10853487980868360689

namespace A166465

/-- `∏[3/a(n-1)]` -/
def P10853487980868360689.Spec : Prop :=
  ∀ n, P10853487980868360689.a n = (A166465 (n + 1) : ℚ)

end A166465

/-! ## A166465.P13653339846956775784

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=5`
-/

namespace A166465.P13653339846956775784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A166465.P13653339846956775784

namespace A166465

/-- `a(n-2)/(1-2/3)` -/
def P13653339846956775784.Spec : Prop :=
  ∀ n, P13653339846956775784.a n = (A166465 (n + 1) : ℚ)

end A166465

/-! ## A166465.P15933732874172587518

`a(n-2)+lcm(2, a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A166465.P15933732874172587518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A166465.P15933732874172587518

namespace A166465

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P15933732874172587518.Spec : Prop :=
  ∀ n, (P15933732874172587518.a n : ℤ) = A166465 (n + 1)

end A166465

/-! ## A166465.P1816455146405598024

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A166465.P1816455146405598024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A166465.P1816455146405598024

namespace A166465

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P1816455146405598024.Spec : Prop :=
  ∀ n, (P1816455146405598024.a n : ℤ) = A166465 (n + 1)

theorem P1816455146405598024.correct : P1816455146405598024.Spec := by
  intro n
  simp only [A166465, Nat.add_sub_cancel, A166465.P1816455146405598024.a, A166465.P475752122730873760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166465

/-! ## A166465.P6770240898175943657

`A083658(xor(1, n+1))`
-/

namespace A166465.P6770240898175943657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (Nat.xor 1 (n + 1))

end

end A166465.P6770240898175943657

namespace A166465

/-- `A083658(xor(1, n+1))` -/
def P6770240898175943657.Spec : Prop :=
  ∀ n, P6770240898175943657.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P2254680877544982610

`A083658(A004442(n+1))`
-/

namespace A166465.P2254680877544982610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004442 (n + 1)).toNat

end

end A166465.P2254680877544982610

namespace A166465

/-- `A083658(A004442(n+1))` -/
def P2254680877544982610.Spec : Prop :=
  ∀ n, P2254680877544982610.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P6026560751520238165

`A083658(A065190(n+1))`
-/

namespace A166465.P6026560751520238165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A065190 (n + 1)).toNat

end

end A166465.P6026560751520238165

namespace A166465

/-- `A083658(A065190(n+1))` -/
def P6026560751520238165.Spec : Prop :=
  ∀ n, P6026560751520238165.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P4601675497459339724

`A091916(A166517(n+1))`
-/

namespace A166465.P4601675497459339724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A166517 (n + 1)).toNat

end

end A166465.P4601675497459339724

namespace A166465

/-- `A091916(A166517(n+1))` -/
def P4601675497459339724.Spec : Prop :=
  ∀ n, P4601675497459339724.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P14352075350461533955

`A010686(n)*A108411(n)`
-/

namespace A166465.P14352075350461533955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n * A108411 n

end

end A166465.P14352075350461533955

namespace A166465

/-- `A010686(n)*A108411(n)` -/
def P14352075350461533955.Spec : Prop :=
  ∀ n, P14352075350461533955.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P17450460791495361237

`A056449(n)+Δ[A108411(n)]`
-/

namespace A166465.P17450460791495361237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n + (f1 (n + 1) - f1 n)

end

end A166465.P17450460791495361237

namespace A166465

/-- `A056449(n)+Δ[A108411(n)]` -/
def P17450460791495361237.Spec : Prop :=
  ∀ n, P17450460791495361237.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P16975559073997161838

`A254006(n+1)+A038754(n)`
-/

namespace A166465.P16975559073997161838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + A038754 n

end

end A166465.P16975559073997161838

namespace A166465

/-- `A254006(n+1)+A038754(n)` -/
def P16975559073997161838.Spec : Prop :=
  ∀ n, P16975559073997161838.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P11382328479018006524

`A108411(n+1)+Δ[A108411(n)]`
-/

namespace A166465.P11382328479018006524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166465.P11382328479018006524

namespace A166465

/-- `A108411(n+1)+Δ[A108411(n)]` -/
def P11382328479018006524.Spec : Prop :=
  ∀ n, P11382328479018006524.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P17708163862304826816

`A083658(A004442(2*n)-A004442(n))`
-/

namespace A166465.P17708163862304826816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004442 (2 * n) - A004442 n).toNat

end

end A166465.P17708163862304826816

namespace A166465

/-- `A083658(A004442(2*n)-A004442(n))` -/
def P17708163862304826816.Spec : Prop :=
  ∀ n, P17708163862304826816.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P3530110616405797155

`A052993(n+1)+A038754(n)-A052993(n)`
-/

namespace A166465.P3530110616405797155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (n + 1) + (A038754 n - A052993 n)

end

end A166465.P3530110616405797155

namespace A166465

/-- `A052993(n+1)+A038754(n)-A052993(n)` -/
def P3530110616405797155.Spec : Prop :=
  ∀ n, P3530110616405797155.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P3614727936216593796

`A074872(A056449(n)/A108411(n))*A108411(n)`
-/

namespace A166465.P3614727936216593796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (SequenceMachineLib.roundAway ((A056449 n : ℚ) / (A108411 n : ℚ))).toNat * A108411 n

end

end A166465.P3614727936216593796

namespace A166465

/-- `A074872(A056449(n)/A108411(n))*A108411(n)` -/
def P3614727936216593796.Spec : Prop :=
  ∀ n, P3614727936216593796.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P14404283650664515222

`Δ[A211221(n+2)]`
-/

namespace A166465.P14404283650664515222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166465.P14404283650664515222

namespace A166465

/-- `Δ[A211221(n+2)]` -/
def P14404283650664515222.Spec : Prop :=
  ∀ n, P14404283650664515222.a n = A166465 (n + 1)

end A166465

/-! ## A166465.P11798549983969828110

`A162813(n+2)/3`
-/

namespace A166465.P11798549983969828110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162813 (n + 2) : ℚ) / 3

end

end A166465.P11798549983969828110

namespace A166465

/-- `A162813(n+2)/3` -/
def P11798549983969828110.Spec : Prop :=
  ∀ n, P11798549983969828110.a n = (A166465 (n + 1) : ℚ)

end A166465

/-! ## A166465.P17331982379636706229

`A166481(n+1)-Δ[3^floor(n/2)]`
-/

namespace A166465.P17331982379636706229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166481 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A166465.P17331982379636706229

namespace A166465

/-- `A166481(n+1)-Δ[3^floor(n/2)]` -/
def P17331982379636706229.Spec : Prop :=
  ∀ n, P17331982379636706229.a n = (A166465 (n + 1) : ℚ)

end A166465

/-!
# A166466: Trisection a(n) = A000265(3n).

The programs for A166466, the canonical program `A166466.P1331195119568561656` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166466 has offset 1).

The definition of A166466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166466.P1331195119568561656

`3*(n+1)/2^val(n+1, 2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166466

/-- `3*(n+1)/2^val(n+1, 2)` -/
def P1331195119568561656.Spec : Prop :=
  ∀ n, P1331195119568561656.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P1863523510709829161

`A000265(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166466.P1863523510709829161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * (n + 1))

end

end A166466.P1863523510709829161

namespace A166466

/-- `A000265(3*(n+1))` -/
def P1863523510709829161.Spec : Prop :=
  ∀ n, P1863523510709829161.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P5569104867168367070

`3/(1-and(n, n+1)/(n+1))`
-/

namespace A166466.P5569104867168367070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (1 - (Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A166466.P5569104867168367070

namespace A166466

/-- `3/(1-and(n, n+1)/(n+1))` -/
def P5569104867168367070.Spec : Prop :=
  ∀ n, P5569104867168367070.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P14473772520790659593

`6*(n+1)/(xor(n, n+1)+1)`
-/

namespace A166466.P14473772520790659593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

end

end A166466.P14473772520790659593

namespace A166466

/-- `6*(n+1)/(xor(n, n+1)+1)` -/
def P14473772520790659593.Spec : Prop :=
  ∀ n, P14473772520790659593.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P17065274326281504720

`3*(n+1)/(or(n, n+1)-n)`
-/

namespace A166466.P17065274326281504720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))

end

end A166466.P17065274326281504720

namespace A166466

/-- `3*(n+1)/(or(n, n+1)-n)` -/
def P17065274326281504720.Spec : Prop :=
  ∀ n, P17065274326281504720.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P9243309516993738223

`3*(n+1)*2^-val(n+1, 2)`
-/

namespace A166466.P9243309516993738223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))

end

end A166466.P9243309516993738223

namespace A166466

/-- `3*(n+1)*2^-val(n+1, 2)` -/
def P9243309516993738223.Spec : Prop :=
  ∀ n, P9243309516993738223.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P13428355363326352028

`3*(n+1)/and(n+1, -(n+1))`
-/

namespace A166466.P13428355363326352028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

end

end A166466.P13428355363326352028

namespace A166466

/-- `3*(n+1)/and(n+1, -(n+1))` -/
def P13428355363326352028.Spec : Prop :=
  ∀ n, P13428355363326352028.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P13102480653676972610

`(2*n+n+3)/gcd(n+1, and(n, n+1))`
-/

namespace A166466.P13102480653676972610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 3) : ℚ) / (Nat.gcd (n + 1) (Nat.land n (n + 1)) : ℚ)

end

end A166466.P13102480653676972610

namespace A166466

/-- `(2*n+n+3)/gcd(n+1, and(n, n+1))` -/
def P13102480653676972610.Spec : Prop :=
  ∀ n, P13102480653676972610.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P8957588362560629152

`3*(A153733(n)+1)`
-/

namespace A166466.P8957588362560629152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A153733 n + 1)

end

end A166466.P8957588362560629152

namespace A166466

/-- `3*(A153733(n)+1)` -/
def P8957588362560629152.Spec : Prop :=
  ∀ n, P8957588362560629152.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P14207729000657359204

`A171435(6*(n+1))`
-/

namespace A166466.P14207729000657359204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (6 * (n + 1))

end

end A166466.P14207729000657359204

namespace A166466

/-- `A171435(6*(n+1))` -/
def P14207729000657359204.Spec : Prop :=
  ∀ n, P14207729000657359204.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P17299214470730284394

`A302044(6*(n+1))`
-/

namespace A166466.P17299214470730284394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (6 * (n + 1))

end

end A166466.P17299214470730284394

namespace A166466

/-- `A302044(6*(n+1))` -/
def P17299214470730284394.Spec : Prop :=
  ∀ n, P17299214470730284394.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P940334420685647114

`2*A336146(2*(n+1))-1`
-/

namespace A166466.P940334420685647114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336146 (2 * (n + 1)) - 1

end

end A166466.P940334420685647114

namespace A166466

/-- `2*A336146(2*(n+1))-1` -/
def P940334420685647114.Spec : Prop :=
  ∀ n, P940334420685647114.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P12484161748075858191

`A328154(n+1)+2*(n+1)`
-/

namespace A166466.P12484161748075858191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328154 (n + 1) + (2 * (n + 1) : ℤ)

end

end A166466.P12484161748075858191

namespace A166466

/-- `A328154(n+1)+2*(n+1)` -/
def P12484161748075858191.Spec : Prop :=
  ∀ n, P12484161748075858191.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P17462258481904652561

`3*(n+1-A331739(n+1))`
-/

namespace A166466.P17462258481904652561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) - A331739 (n + 1))

end

end A166466.P17462258481904652561

namespace A166466

/-- `3*(n+1-A331739(n+1))` -/
def P17462258481904652561.Spec : Prop :=
  ∀ n, P17462258481904652561.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P12644603783093813895

`3*(n+1)/A006519(n+1)`
-/

namespace A166466.P12644603783093813895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))

end

end A166466.P12644603783093813895

namespace A166466

/-- `3*(n+1)/A006519(n+1)` -/
def P12644603783093813895.Spec : Prop :=
  ∀ n, P12644603783093813895.a n = (A166466 (n + 1) : ℚ)

end A166466

/-! ## A166466.P1129796373771314425

`A016945(A025480(n))`
-/

namespace A166466.P1129796373771314425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A025480 n).toNat

end

end A166466.P1129796373771314425

namespace A166466

/-- `A016945(A025480(n))` -/
def P1129796373771314425.Spec : Prop :=
  ∀ n, P1129796373771314425.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P5063622608501776925

`A136320(A153733(n))`
-/

namespace A166466.P5063622608501776925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136320 (A153733 n).toNat

end

end A166466.P5063622608501776925

namespace A166466

/-- `A136320(A153733(n))` -/
def P5063622608501776925.Spec : Prop :=
  ∀ n, P5063622608501776925.a n = A166466 (n + 1)

end A166466

/-! ## A166466.P16534145155463091016

`A008486(A000265(n+1))`
-/

namespace A166466.P16534145155463091016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A000265 (n + 1)).toNat

end

end A166466.P16534145155463091016

namespace A166466

/-- `A008486(A000265(n+1))` -/
def P16534145155463091016.Spec : Prop :=
  ∀ n, P16534145155463091016.a n = A166466 (n + 1)

end A166466

/-!
# A166467: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166467, there is no canonical definition to state claims against.
-/

/-! ## A166467.P9496775460561290552

`A008486(∑[A194633(n+1)]-1)`
-/

namespace A166467.P9496775460561290552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A166467.P9496775460561290552

/-! ## A166467.P3949552112141376389

`A008486(∑[A194633(n+1)%A003945(n)])`
-/

namespace A166467.P3949552112141376389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194633 (n + 1)) (A003945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166467.P3949552112141376389

/-! ## A166467.P7832155767166326280

`floor(3*2^(n-1))-A054908(A266777(n))`
-/

namespace A166467.P7832155767166326280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A054908 (A266777 n).toNat

end

end A166467.P7832155767166326280

/-! ## A166467.P11300140447197690492

`A166857(A065673(n+1))-A042950(n)`
-/

namespace A166467.P11300140447197690492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166857 (A065673 (n + 1)).toNat - A042950 n

end

end A166467.P11300140447197690492

/-! ## A166467.P1486375286594082862

`A064429(Δ[A166857(n)])`
-/

namespace A166467.P1486375286594082862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (f1 (n + 1) - f1 n).toNat

end

end A166467.P1486375286594082862

/-!
# A166468: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166468, there is no canonical definition to state claims against.
-/

/-! ## A166468.P4690738580070774968

`floor(4*3^(n-1))-A185236(A275077(n)²)`
-/

namespace A166468.P4690738580070774968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185236 (A275077 n ^ 2).toNat

end

end A166468.P4690738580070774968

/-! ## A166468.P87679609927763762

`floor(4*3^(n-1))-A185236(A275077(n+2))`
-/

namespace A166468.P87679609927763762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185236 (A275077 (n + 2)).toNat

end

end A166468.P87679609927763762

/-! ## A166468.P4155155523345054667

`xor(floor(4*3^(n-1)), A285007(A250351(n+1)))`
-/

namespace A166468.P4155155523345054667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A285007 (A250351 (n + 1)).toNat)

end

end A166468.P4155155523345054667

/-! ## A166468.P1530143826839960679

`A003946(n)-A185236(A251759(n)²)`
-/

namespace A166468.P1530143826839960679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185236 (A251759 n ^ 2).toNat

end

end A166468.P1530143826839960679

/-! ## A166468.P2261754710265212071

`A003946(n)-A185036(A275077(n)²)`
-/

namespace A166468.P2261754710265212071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185036 (A275077 n ^ 2).toNat

end

end A166468.P2261754710265212071

/-!
# A166469: Number of divisors of n which are not multiples of consecutive primes.

The programs for A166469, the canonical program `A166469.P6403527322044406154` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166469 has offset 1).

The definition of A166469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166469.P6403527322044406154

`∑{d}[n+1, A356173(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166469

/-- `∑{d}[n+1, A356173(#)]` -/
def P6403527322044406154.Spec : Prop :=
  ∀ n, P6403527322044406154.a n = A166469 (n + 1)

theorem P6403527322044406154.correct : P6403527322044406154.Spec := by
  intro n
  simp only [A166469, Nat.add_sub_cancel]

end A166469

/-! ## A166469.P11214110041701171948

`∑{d}[n+1, A049283(A322361(#))]`
-/

namespace A166469.P11214110041701171948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049283 (A322361 d).toNat

end

end A166469.P11214110041701171948

namespace A166469

/-- `∑{d}[n+1, A049283(A322361(#))]` -/
def P11214110041701171948.Spec : Prop :=
  ∀ n, P11214110041701171948.a n = A166469 (n + 1)

end A166469

/-! ## A166469.P15246602282226261744

`∑{d}[A003961(n+1), A069517(A330749(#))]`
-/

namespace A166469.P15246602282226261744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069517 (A330749 d).toNat

end

end A166469.P15246602282226261744

namespace A166469

/-- `∑{d}[A003961(n+1), A069517(A330749(#))]` -/
def P15246602282226261744.Spec : Prop :=
  ∀ n, P15246602282226261744.a n = A166469 (n + 1)

end A166469

/-! ## A166469.P273659801000821949

`A001222(∏{d}[n+1, 2-A296210(#)])`
-/

namespace A166469.P273659801000821949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n), (2 - A296210 d)).toNat

end

end A166469.P273659801000821949

namespace A166469

/-- `A001222(∏{d}[n+1, 2-A296210(#)])` -/
def P273659801000821949.Spec : Prop :=
  ∀ n, P273659801000821949.a n = A166469 (n + 1)

end A166469

/-! ## A166469.P7417372488837828417

`A070012(∏{d}[n+1, 2-A296210(#)])`
-/

namespace A166469.P7417372488837828417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (∏ d ∈ Nat.divisors (f1 n), (2 - A296210 d)).toNat

end

end A166469.P7417372488837828417

namespace A166469

/-- `A070012(∏{d}[n+1, 2-A296210(#)])` -/
def P7417372488837828417.Spec : Prop :=
  ∀ n, P7417372488837828417.a n = A166469 (n + 1)

end A166469

/-! ## A166469.P18433993051576600390

`A070014(∏{d}[n+1, 2-A296210(#)])`
-/

namespace A166469.P18433993051576600390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (∏ d ∈ Nat.divisors (f1 n), (2 - A296210 d)).toNat

end

end A166469.P18433993051576600390

namespace A166469

/-- `A070014(∏{d}[n+1, 2-A296210(#)])` -/
def P18433993051576600390.Spec : Prop :=
  ∀ n, P18433993051576600390.a n = A166469 (n + 1)

end A166469

/-!
# A166470: a(n) = 2^F(n+1)*3^F(n), where F(n) is the n-th Fibonacci number, A000045(n).

The programs for A166470, the canonical program `A166470.P15947844069761440349` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166470 has offset 0).

The definition of A166470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166470.P15947844069761440349

`a(n-1)*a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166470

/-- `a(n-1)*a(n-2)` -/
def P15947844069761440349.Spec : Prop :=
  ∀ n, (P15947844069761440349.a n : ℤ) = A166470 n

theorem P15947844069761440349.correct : P15947844069761440349.Spec := by
  intro n
  simp only [A166470]

end A166470

/-! ## A166470.P4269046029809235775

`2*A174666(n+1)`
-/

namespace A166470.P4269046029809235775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174666 (n + 1)

end

end A166470.P4269046029809235775

namespace A166470

/-- `2*A174666(n+1)` -/
def P4269046029809235775.Spec : Prop :=
  ∀ n, P4269046029809235775.a n = A166470 n

end A166470

/-! ## A166470.P5537189105501590518

`A000301(n+1)*A010098(n)`
-/

namespace A166470.P5537189105501590518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 (n + 1) * A010098 n

end

end A166470.P5537189105501590518

namespace A166470

/-- `A000301(n+1)*A010098(n)` -/
def P5537189105501590518.Spec : Prop :=
  ∀ n, P5537189105501590518.a n = A166470 n

end A166470

/-! ## A166470.P6045412863100631412

`A115033(2*n+1)`
-/

namespace A166470.P6045412863100631412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115033 (2 * n + 1)

end

end A166470.P6045412863100631412

namespace A166470

/-- `A115033(2*n+1)` -/
def P6045412863100631412.Spec : Prop :=
  ∀ n, P6045412863100631412.a n = A166470 n

end A166470

/-! ## A166470.P13024384368067363334

`floor(a(n-2)/acot(a(n-1)))` with `a(0)=2, a(1)=6`
-/

namespace A166470.P13024384368067363334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ⌊(a (n - 2) : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌋

end

end A166470.P13024384368067363334

namespace A166470

/-- `floor(a(n-2)/acot(a(n-1)))` -/
def P13024384368067363334.Spec : Prop :=
  ∀ n, P13024384368067363334.a n = A166470 n

end A166470

/-!
# A166471: a(n) = 2^L(n+1)*3^L(n), where L(n) is the n-th Lucas number (A000032(n)).

The programs for A166471, the canonical program `A166471.P15716541230611796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166471 has offset 0).

The definition of A166471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166471.P15716541230611796

`a(n-1)*a(n-2)` with `a(0)=18, a(1)=24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166471

/-- `a(n-1)*a(n-2)` -/
def P15716541230611796.Spec : Prop :=
  ∀ n, (P15716541230611796.a n : ℤ) = A166471 n

theorem P15716541230611796.correct : P15716541230611796.Spec := by
  intro n
  simp only [A166471]

end A166471

/-! ## A166471.P10580366346762866621

`2^A000032(n+1)*3^A000032(n)`
-/

namespace A166471.P10580366346762866621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000032 (n + 1) : ℤ) * (3 : ℚ) ^ (A000032 n : ℤ)

end

end A166471.P10580366346762866621

namespace A166471

/-- `2^A000032(n+1)*3^A000032(n)` -/
def P10580366346762866621.Spec : Prop :=
  ∀ n, P10580366346762866621.a n = (A166471 n : ℚ)

end A166471

/-! ## A166471.P6825687915497614696

`A166470(n+1)²/A166470(n)`
-/

namespace A166471.P6825687915497614696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166470 (n + 1) ^ 2 : ℚ) / (A166470 n : ℚ)

end

end A166471.P6825687915497614696

namespace A166471

/-- `A166470(n+1)²/A166470(n)` -/
def P6825687915497614696.Spec : Prop :=
  ∀ n, P6825687915497614696.a n = (A166471 n : ℚ)

end A166471

/-! ## A166471.P17729191939332023208

`ratio[A166473(n+1)]`
-/

namespace A166471.P17729191939332023208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166473 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A166471.P17729191939332023208

namespace A166471

/-- `ratio[A166473(n+1)]` -/
def P17729191939332023208.Spec : Prop :=
  ∀ n, P17729191939332023208.a n = (A166471 n : ℚ)

end A166471

/-!
# A166472: a(n) = 2^F(n+2)*3^F(n+1)/12, where F(n) is the n-th Fibonacci number (A000045(n)).

The programs for A166472, the canonical program `A166472.P15501550878082799753` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166472 has offset 1).

The definition of A166472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166472.P15501550878082799753

`12*a(n-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166472

/-- `12*a(n-1)*a(n-2)` -/
def P15501550878082799753.Spec : Prop :=
  ∀ n, (P15501550878082799753.a n : ℤ) = A166472 (n + 1)

theorem P15501550878082799753.correct : P15501550878082799753.Spec := by
  intro n
  simp only [A166472, Nat.add_sub_cancel]

end A166472

/-! ## A166472.P14753629905589311856

`A166470(n+2)/12`
-/

namespace A166472.P14753629905589311856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166470 (n + 2) : ℚ) / 12

end

end A166472.P14753629905589311856

namespace A166472

/-- `A166470(n+2)/12` -/
def P14753629905589311856.Spec : Prop :=
  ∀ n, P14753629905589311856.a n = (A166472 (n + 1) : ℚ)

end A166472

/-! ## A166472.P15999005911099470108

`∏[A166470(n)]/2`
-/

namespace A166472.P15999005911099470108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166470 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A166472.P15999005911099470108

namespace A166472

/-- `∏[A166470(n)]/2` -/
def P15999005911099470108.Spec : Prop :=
  ∀ n, P15999005911099470108.a n = (A166472 (n + 1) : ℚ)

end A166472

/-! ## A166472.P18282427485364851799

`A174666(n+3)/6`
-/

namespace A166472.P18282427485364851799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174666 (n + 3) : ℚ) / 6

end

end A166472.P18282427485364851799

namespace A166472

/-- `A174666(n+3)/6` -/
def P18282427485364851799.Spec : Prop :=
  ∀ n, P18282427485364851799.a n = (A166472 (n + 1) : ℚ)

end A166472

/-!
# A166473: a(n) = 2^L(n+1) * 3^L(n)/12, where L(n) is the n-th Lucas number (A000032(n)).

The programs for A166473, the canonical program `A166473.P2831343625938984203` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166473 has offset 1).

The definition of A166473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166473.P2831343625938984203

`12*a(n-1)*a(n-2)` with `a(0)=2, a(1)=36`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166473

/-- `12*a(n-1)*a(n-2)` -/
def P2831343625938984203.Spec : Prop :=
  ∀ n, (P2831343625938984203.a n : ℤ) = A166473 (n + 1)

theorem P2831343625938984203.correct : P2831343625938984203.Spec := by
  intro n
  simp only [A166473, Nat.add_sub_cancel]

end A166473

/-! ## A166473.P12195872209474252783

`A166471(n+1)/12`
-/

namespace A166473.P12195872209474252783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166471 (n + 1) : ℚ) / 12

end

end A166473.P12195872209474252783

namespace A166473

/-- `A166471(n+1)/12` -/
def P12195872209474252783.Spec : Prop :=
  ∀ n, P12195872209474252783.a n = (A166473 (n + 1) : ℚ)

end A166473

/-! ## A166473.P8924730742541329394

`A166470(n)*A166472(n+1)`
-/

namespace A166473.P8924730742541329394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166470 n * A166472 (n + 1)

end

end A166473.P8924730742541329394

namespace A166473

/-- `A166470(n)*A166472(n+1)` -/
def P8924730742541329394.Spec : Prop :=
  ∀ n, P8924730742541329394.a n = A166473 (n + 1)

end A166473

/-!
# A166474: a(1)=1; a(2)=2; for n>2, a(n) = a(n-1) + A000217(n-1)*a(n-2).

The programs for A166474, there is no canonical definition to state claims against.
-/

/-! ## A166474.P17630831732731207574

`∏[∑[n]/a(n-1)+1]` with `a(0)=1`
-/

namespace A166474.P17630831732731207574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166474.P17630831732731207574

/-! ## A166474.P7739058338323461700

`a(n-1)+a(n-2)*∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A166474.P7739058338323461700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166474.P7739058338323461700

/-! ## A166474.P4676384176494718568

`a(n-1)+a(n-2)/∑[n]^(-1)` with `a(0)=1, a(1)=2`
-/

namespace A166474.P4676384176494718568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A166474.P4676384176494718568

/-! ## A166474.P9048483565042660999

`a(n-1)+C(n+1, 2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A166474.P9048483565042660999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.choose (n + 1) 2 * a (n - 2)

end

end A166474.P9048483565042660999

/-! ## A166474.P12723118648472803004

`a(n-1)+(n²+n)/2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A166474.P12723118648472803004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (n ^ 2 + n : ℚ) / 2 * a (n - 2)

end

end A166474.P12723118648472803004

/-! ## A166474.P1469050306180200891

`∏[1-∑[n*A057428(n)]/a(n-1)]` with `a(0)=1`
-/

namespace A166474.P1469050306180200891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057428 n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166474.P1469050306180200891

/-!
# A166475: 4th level primorials: product of first n superduperprimorials.

The programs for A166475, there is no canonical definition to state claims against.
-/

/-! ## A166475.P11965134096271218920

`sqrt(∏[A066120(n)²])`
-/

namespace A166475.P11965134096271218920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066120 n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A166475.P11965134096271218920

/-! ## A166475.P1078848327856481718

`∏[∏[A329600(A002110(n))]]`
-/

namespace A166475.P1078848327856481718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (A002110 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166475.P1078848327856481718

/-!
# A166478: Minimum positive integer solution t of equation n=x*(x+1)/(t*(t+1)) where n is a nonsquare integer (see A000037).

The programs for A166478, there is no canonical definition to state claims against.
-/

/-! ## A166478.P9986726349350801538

`A120744(8*comp[n²])`
-/

namespace A166478.P9986726349350801538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166478.P9986726349350801538

/-! ## A166478.P17049311906158477497

`abs(A120744(A008590(comp[n²])))`
-/

namespace A166478.P17049311906158477497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120744 (A008590 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat|

end

end A166478.P17049311906158477497

/-! ## A166478.P1833682143750083766

`abs(A120744(A022144(comp[n²])))`
-/

namespace A166478.P1833682143750083766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120744 (A022144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat|

end

end A166478.P1833682143750083766

/-! ## A166478.P8892144545940227219

`abs(A120744(8*A000037(n+1)))`
-/

namespace A166478.P8892144545940227219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120744 (8 * A000037 (n + 1)).toNat|

end

end A166478.P8892144545940227219

/-! ## A166478.P11068564914589807116

`A120744(A008590(comp[n²]))%A178977(n)`
-/

namespace A166478.P11068564914589807116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120744 (A008590 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat) (A178977 n)

end

end A166478.P11068564914589807116

/-! ## A166478.P6474458948581163649

`A120744(8*A000037(n+1))%A016898(n)`
-/

namespace A166478.P6474458948581163649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120744 (8 * A000037 (n + 1)).toNat) (A016898 n)

end

end A166478.P6474458948581163649

/-! ## A166478.P10405430747217100107

`A120744(A022144(comp[n²]))%A000041(n+3)`
-/

namespace A166478.P10405430747217100107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120744 (A022144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat) (A000041 (n + 3))

end

end A166478.P10405430747217100107

/-! ## A166478.P2468409413953710976

`char[A265667(n)]*A120744(8*A000037(n+1))`
-/

namespace A166478.P2468409413953710976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A120744 (8 * A000037 (n + 1)).toNat

end

end A166478.P2468409413953710976

/-!
# A166479: Lesser of twin primes, written in base 6.

The programs for A166479, there is no canonical definition to state claims against.
-/

/-! ## A166479.P17734768605332100051

`A007092(A001359(n+1))`
-/

namespace A166479.P17734768605332100051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A001359 (n + 1)).toNat

end

end A166479.P17734768605332100051

/-! ## A166479.P4852665254960414850

`A004680(A029707(n+1))`
-/

namespace A166479.P4852665254960414850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (A029707 (n + 1)).toNat

end

end A166479.P4852665254960414850

/-! ## A166479.P11776429996674415488

`A004680(A107770(n+1)-1)`
-/

namespace A166479.P11776429996674415488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (A107770 (n + 1) - 1).toNat

end

end A166479.P11776429996674415488

/-! ## A166479.P13438494892258453869

`A004680(eq[3, A076368(n+1)])`
-/

namespace A166479.P13438494892258453869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166479.P13438494892258453869

/-! ## A166479.P5844628232245181719

`A007092(A124588(n+2))`
-/

namespace A166479.P5844628232245181719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A124588 (n + 2)).toNat

end

end A166479.P5844628232245181719

/-! ## A166479.P11843173186140560800

`A007092(A181747(n+2))`
-/

namespace A166479.P11843173186140560800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A181747 (n + 2)).toNat

end

end A166479.P11843173186140560800

/-! ## A166479.P1766575915530098639

`A007092(A077800(Δ[n²]))`
-/

namespace A166479.P1766575915530098639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A166479.P1766575915530098639

/-! ## A166479.P5679256611101148791

`A007092(p?[A001838(n+1)])`
-/

namespace A166479.P5679256611101148791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P5679256611101148791

/-! ## A166479.P14266744821179145682

`A007092(p?[A040976(n+1)])`
-/

namespace A166479.P14266744821179145682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P14266744821179145682

/-! ## A166479.P7246391515330741533

`A007092(p?[A065873(n+1)])`
-/

namespace A166479.P7246391515330741533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P7246391515330741533

/-! ## A166479.P1206764696310945251

`A007092(p?[A067532(n+1)])`
-/

namespace A166479.P1206764696310945251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P1206764696310945251

/-! ## A166479.P2984851385670330123

`A007092(p?[A209259(n)-2])`
-/

namespace A166479.P2984851385670330123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P2984851385670330123

/-! ## A166479.P3084605522499119215

`A007092(A014574(n+1)-1)`
-/

namespace A166479.P3084605522499119215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A014574 (n + 1) - 1).toNat

end

end A166479.P3084605522499119215

/-! ## A166479.P2024570192656996336

`A007092(A006512(n+1)-2)`
-/

namespace A166479.P2024570192656996336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A006512 (n + 1) - 2).toNat

end

end A166479.P2024570192656996336

/-! ## A166479.P16690946684314582791

`A007092(A067829(n+2)-2)`
-/

namespace A166479.P16690946684314582791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A067829 (n + 2) - 2).toNat

end

end A166479.P16690946684314582791

/-! ## A166479.P691944473912756740

`A007092(A094743(n+2)-2)`
-/

namespace A166479.P691944473912756740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A094743 (n + 2) - 2).toNat

end

end A166479.P691944473912756740

/-! ## A166479.P13602857891523261583

`A007092(p?[A006093(n+1)-1])`
-/

namespace A166479.P13602857891523261583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P13602857891523261583

/-! ## A166479.P141538851372467226

`A007092(p?[A000040(n+1)-2])`
-/

namespace A166479.P141538851372467226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P141538851372467226

/-! ## A166479.P5313884953909737908

`A007092(p?[A008578(n+1)-2])`
-/

namespace A166479.P5313884953909737908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166479.P5313884953909737908

/-! ## A166479.P14279139442407374216

`A007092(p?[lt[n, A014963(n+2)]])`
-/

namespace A166479.P14279139442407374216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A166479.P14279139442407374216

/-!
# A166480: Greater of twin primes, written in base 6.

The programs for A166480, there is no canonical definition to state claims against.
-/

/-! ## A166480.P5615833006084300028

`A007092(A006512(n+1))`
-/

namespace A166480.P5615833006084300028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A006512 (n + 1)).toNat

end

end A166480.P5615833006084300028

/-! ## A166480.P1143750539406972992

`A004680(A107770(n+1))`
-/

namespace A166480.P1143750539406972992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (A107770 (n + 1)).toNat

end

end A166480.P1143750539406972992

/-! ## A166480.P1223866215992810478

`A004680(A029707(n+1)+1)`
-/

namespace A166480.P1223866215992810478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (A029707 (n + 1) + 1).toNat

end

end A166480.P1223866215992810478

/-! ## A166480.P945389101585041968

`A007092(A067829(n+2))`
-/

namespace A166480.P945389101585041968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A067829 (n + 2)).toNat

end

end A166480.P945389101585041968

/-! ## A166480.P16927645384063171599

`A007092(A094743(n+2))`
-/

namespace A166480.P16927645384063171599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A094743 (n + 2)).toNat

end

end A166480.P16927645384063171599

/-! ## A166480.P3932442724506491760

`A007092(A014574(n+1)+1)`
-/

namespace A166480.P3932442724506491760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A014574 (n + 1) + 1).toNat

end

end A166480.P3932442724506491760

/-! ## A166480.P8794324526447783788

`A007092(A001359(n+1)+2)`
-/

namespace A166480.P8794324526447783788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A001359 (n + 1) + 2).toNat

end

end A166480.P8794324526447783788

/-! ## A166480.P3471791421369724387

`A007092(A124588(n+2)+2)`
-/

namespace A166480.P3471791421369724387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A124588 (n + 2) + 2).toNat

end

end A166480.P3471791421369724387

/-! ## A166480.P4506473324594061747

`A007092(A181747(n+2)+2)`
-/

namespace A166480.P4506473324594061747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A181747 (n + 2) + 2).toNat

end

end A166480.P4506473324594061747

/-! ## A166480.P15077574627179470717

`A007092(A077800(2*(n+1)))`
-/

namespace A166480.P15077574627179470717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A077800 (2 * (n + 1))).toNat

end

end A166480.P15077574627179470717

/-! ## A166480.P9832978018983346665

`A007092(p?[A000040(n+1)+2])`
-/

namespace A166480.P9832978018983346665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P9832978018983346665

/-! ## A166480.P6974161218033125623

`A007092(p?[A001751(n+1)+2])`
-/

namespace A166480.P6974161218033125623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P6974161218033125623

/-! ## A166480.P5333987302499183159

`A007092(p?[A001838(n+1)+2])`
-/

namespace A166480.P5333987302499183159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P5333987302499183159

/-! ## A166480.P8648266529640398853

`A007092(p?[A040976(n+1)]+2)`
-/

namespace A166480.P8648266529640398853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A166480.P8648266529640398853

/-! ## A166480.P11570082492614075687

`A007092(p?[A065873(n+1)]+2)`
-/

namespace A166480.P11570082492614075687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A166480.P11570082492614075687

/-! ## A166480.P17716507763909842093

`A007092(p?[A067532(n+1)]+2)`
-/

namespace A166480.P17716507763909842093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A166480.P17716507763909842093

/-! ## A166480.P7289277684750485265

`A007092(p?[A093515(n+1)+2])`
-/

namespace A166480.P7289277684750485265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P7289277684750485265

/-! ## A166480.P16258142549853429841

`A007092(p?[A006093(n+1)+3])`
-/

namespace A166480.P16258142549853429841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P16258142549853429841

/-! ## A166480.P5832237495091355413

`A007092(p?[A008578(n+2)+2])`
-/

namespace A166480.P5832237495091355413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166480.P5832237495091355413

/-!
# A166481: a(n) = 3*a(n-2) for n > 2; a(1) = 1; a(2) = 7.

The programs for A166481, the canonical program `A166481.P18335506939025747773` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166481 has offset 1).

The definition of A166481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A166481.P18335506939025747773`, by `A166481.P18335506939025747773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166481.P18335506939025747773

`3*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166481

/-- `3*a(n-2)` -/
def P18335506939025747773.Spec : Prop :=
  ∀ n, (P18335506939025747773.a n : ℤ) = A166481 (n + 1)

theorem P18335506939025747773.correct : P18335506939025747773.Spec := by
  intro n
  simp only [A166481, Nat.add_sub_cancel]

end A166481

/-! ## A166481.P12914199519982524128

`3^((n+1)/2)*(sqrt(3)*(n+1)%2+7*(n+2)%2)/3`
-/

namespace A166481.P12914199519982524128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) * ((Real.sqrt (3 : ℝ) * (((n + 1) % 2 : ℕ) : ℝ) + ((7 * ((n + 2) % 2) : ℕ) : ℝ)) / 3)

end

end A166481.P12914199519982524128

namespace A166481

/-- `3^((n+1)/2)*(sqrt(3)*(n+1)%2+7*(n+2)%2)/3` -/
def P12914199519982524128.Spec : Prop :=
  ∀ n, P12914199519982524128.a n = (A166481 (n + 1) : ℝ)

end A166481

/-! ## A166481.P1682514234444097396

`∏[3/a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A166481.P1682514234444097396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166481.P1682514234444097396

namespace A166481

/-- `∏[3/a(n-1)]` -/
def P1682514234444097396.Spec : Prop :=
  ∀ n, P1682514234444097396.a n = (A166481 (n + 1) : ℚ)

end A166481

/-! ## A166481.P15230415986925498254

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=7`
-/

namespace A166481.P15230415986925498254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A166481.P15230415986925498254

namespace A166481

/-- `a(n-2)/(1-2/3)` -/
def P15230415986925498254.Spec : Prop :=
  ∀ n, P15230415986925498254.a n = (A166481 (n + 1) : ℚ)

end A166481

/-! ## A166481.P3891249752762656237

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A166481.P3891249752762656237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A166481.P3891249752762656237

namespace A166481

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P3891249752762656237.Spec : Prop :=
  ∀ n, (P3891249752762656237.a n : ℤ) = A166481 (n + 1)

theorem P3891249752762656237.correct : P3891249752762656237.Spec := by
  intro n
  simp only [A166481, Nat.add_sub_cancel, A166481.P3891249752762656237.a, A166481.P18335506939025747773.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166481

/-! ## A166481.P1213762803905392918

`A228879(n)/gcd(2, n)²`
-/

namespace A166481.P1213762803905392918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228879 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A166481.P1213762803905392918

namespace A166481

/-- `A228879(n)/gcd(2, n)²` -/
def P1213762803905392918.Spec : Prop :=
  ∀ n, P1213762803905392918.a n = (A166481 (n + 1) : ℚ)

end A166481

/-! ## A166481.P17548540691506674670

`lcm(2, A072985(n+1))/2`
-/

namespace A166481.P17548540691506674670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A072985 (n + 1)) : ℚ) / 2

end

end A166481.P17548540691506674670

namespace A166481

/-- `lcm(2, A072985(n+1))/2` -/
def P17548540691506674670.Spec : Prop :=
  ∀ n, P17548540691506674670.a n = (A166481 (n + 1) : ℚ)

end A166481

/-! ## A166481.P15296627047962585481

`Δ[A108411(n+2)]+3^floor(n/2)`
-/

namespace A166481.P15296627047962585481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A166481.P15296627047962585481

namespace A166481

/-- `Δ[A108411(n+2)]+3^floor(n/2)` -/
def P15296627047962585481.Spec : Prop :=
  ∀ n, P15296627047962585481.a n = (A166481 (n + 1) : ℚ)

end A166481

/-! ## A166481.P13620214203587176138

`A010688(n)*A108411(n)`
-/

namespace A166481.P13620214203587176138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n * A108411 n

end

end A166481.P13620214203587176138

namespace A166481

/-- `A010688(n)*A108411(n)` -/
def P13620214203587176138.Spec : Prop :=
  ∀ n, P13620214203587176138.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P356669485833712733

`gcd(A228879(n), A254006(n))`
-/

namespace A166481.P356669485833712733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228879 n) (A254006 n)

end

end A166481.P356669485833712733

namespace A166481

/-- `gcd(A228879(n), A254006(n))` -/
def P356669485833712733.Spec : Prop :=
  ∀ n, (P356669485833712733.a n : ℤ) = A166481 (n + 1)

end A166481

/-! ## A166481.P18060137788194303522

`A228879(n)-A254006(n+2)`
-/

namespace A166481.P18060137788194303522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228879 n - A254006 (n + 2)

end

end A166481.P18060137788194303522

namespace A166481

/-- `A228879(n)-A254006(n+2)` -/
def P18060137788194303522.Spec : Prop :=
  ∀ n, P18060137788194303522.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P17534148951143953349

`A108411(n)+Δ[A056449(n+1)]`
-/

namespace A166481.P17534148951143953349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + (f1 (n + 1) - f1 n)

end

end A166481.P17534148951143953349

namespace A166481

/-- `A108411(n)+Δ[A056449(n+1)]` -/
def P17534148951143953349.Spec : Prop :=
  ∀ n, P17534148951143953349.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P5649230547130720589

`A060647(n)+Δ[A254006(n)]+1`
-/

namespace A166481.P5649230547130720589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n + (f1 (n + 1) - f1 n + 1)

end

end A166481.P5649230547130720589

namespace A166481

/-- `A060647(n)+Δ[A254006(n)]+1` -/
def P5649230547130720589.Spec : Prop :=
  ∀ n, P5649230547130720589.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P5445736769697355939

`Δ[A108411(n+2)+A038754(n)]`
-/

namespace A166481.P5445736769697355939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 2) + A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166481.P5445736769697355939

namespace A166481

/-- `Δ[A108411(n+2)+A038754(n)]` -/
def P5445736769697355939.Spec : Prop :=
  ∀ n, P5445736769697355939.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P10192216799550434536

`A108411(n)+Δ[A108411(n+2)]`
-/

namespace A166481.P10192216799550434536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + (f1 (n + 1) - f1 n)

end

end A166481.P10192216799550434536

namespace A166481

/-- `A108411(n)+Δ[A108411(n+2)]` -/
def P10192216799550434536.Spec : Prop :=
  ∀ n, P10192216799550434536.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P6885399460178375390

`2*A166552(n+1)-A108411(n)`
-/

namespace A166481.P6885399460178375390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166552 (n + 1) - A108411 n

end

end A166481.P6885399460178375390

namespace A166481

/-- `2*A166552(n+1)-A108411(n)` -/
def P6885399460178375390.Spec : Prop :=
  ∀ n, P6885399460178375390.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P17610165204025645457

`A162813(n+2)-2*A074324(n+1)`
-/

namespace A166481.P17610165204025645457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162813 (n + 2) - 2 * A074324 (n + 1)

end

end A166481.P17610165204025645457

namespace A166481

/-- `A162813(n+2)-2*A074324(n+1)` -/
def P17610165204025645457.Spec : Prop :=
  ∀ n, P17610165204025645457.a n = A166481 (n + 1)

end A166481

/-! ## A166481.P3857121197766495696

`lcm(3^floor(n/2), A220129(A267352(3*n)))`
-/

namespace A166481.P3857121197766495696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A220129 (A267352 (3 * n)).toNat)

end

end A166481.P3857121197766495696

namespace A166481

/-- `lcm(3^floor(n/2), A220129(A267352(3*n)))` -/
def P3857121197766495696.Spec : Prop :=
  ∀ n, (P3857121197766495696.a n : ℤ) = A166481 (n + 1)

end A166481

/-! ## A166481.P15942028526182644582

`A038754(A010684(n)+n)-A038754(n)`
-/

namespace A166481.P15942028526182644582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A010684 n + (n : ℤ)).toNat - A038754 n

end

end A166481.P15942028526182644582

namespace A166481

/-- `A038754(A010684(n)+n)-A038754(n)` -/
def P15942028526182644582.Spec : Prop :=
  ∀ n, P15942028526182644582.a n = A166481 (n + 1)

end A166481

/-!
# A166482: a(n) = Sum_{k=0..n} binomial(n+k,2*k)*Fibonacci(2*k+1).

The programs for A166482, the canonical program `A166482.P11513648503076732975` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166482 has offset 0).

The definition of A166482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166482.P11513648503076732975

`A131322(2*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166482

/-- `A131322(2*n)` -/
def P11513648503076732975.Spec : Prop :=
  ∀ n, P11513648503076732975.a n = A166482 n

theorem P11513648503076732975.correct : P11513648503076732975.Spec := by
  intro n
  simp only [A166482]

end A166482

/-! ## A166482.P9169032740317473257

`∑[A289846(comp[2*(n+1)])]`
-/

namespace A166482.P9169032740317473257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166482.P9169032740317473257

namespace A166482

/-- `∑[A289846(comp[2*(n+1)])]` -/
def P9169032740317473257.Spec : Prop :=
  ∀ n, P9169032740317473257.a n = A166482 n

end A166482

/-! ## A166482.P2772349399912247671

`A192232(2*n+1)+A112576(2*n)`
-/

namespace A166482.P2772349399912247671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (2 * n + 1) + A112576 (2 * n)

end

end A166482.P2772349399912247671

namespace A166482

/-- `A192232(2*n+1)+A112576(2*n)` -/
def P2772349399912247671.Spec : Prop :=
  ∀ n, P2772349399912247671.a n = A166482 n

end A166482

/-! ## A166482.P17922483664131503676

`Δ[A112576(A130824(n)/2)]`
-/

namespace A166482.P17922483664131503676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166482.P17922483664131503676

namespace A166482

/-- `Δ[A112576(A130824(n)/2)]` -/
def P17922483664131503676.Spec : Prop :=
  ∀ n, P17922483664131503676.a n = A166482 n

end A166482

/-! ## A166482.P14598265657232214515

`A289846(2*n)-A112576(2*n)`
-/

namespace A166482.P14598265657232214515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n) - A112576 (2 * n)

end

end A166482.P14598265657232214515

namespace A166482

/-- `A289846(2*n)-A112576(2*n)` -/
def P14598265657232214515.Spec : Prop :=
  ∀ n, P14598265657232214515.a n = A166482 n

end A166482

/-! ## A166482.P1925315932983317891

`(A289846(2*n)+A192232(2*n+1))/2`
-/

namespace A166482.P1925315932983317891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289846 (2 * n) + A192232 (2 * n + 1) : ℚ) / 2

end

end A166482.P1925315932983317891

namespace A166482

/-- `(A289846(2*n)+A192232(2*n+1))/2` -/
def P1925315932983317891.Spec : Prop :=
  ∀ n, P1925315932983317891.a n = (A166482 n : ℚ)

end A166482

/-! ## A166482.P599300883501611732

`2*A112576(2*n+1)-A192422(2*n+1)`
-/

namespace A166482.P599300883501611732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112576 (2 * n + 1) - A192422 (2 * n + 1)

end

end A166482.P599300883501611732

namespace A166482

/-- `2*A112576(2*n+1)-A192422(2*n+1)` -/
def P599300883501611732.Spec : Prop :=
  ∀ n, P599300883501611732.a n = A166482 n

end A166482

/-! ## A166482.P7575205724053358007

`Δ[A112576(A026741(A130824(n)))]`
-/

namespace A166482.P7575205724053358007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (A026741 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166482.P7575205724053358007

namespace A166482

/-- `Δ[A112576(A026741(A130824(n)))]` -/
def P7575205724053358007.Spec : Prop :=
  ∀ n, P7575205724053358007.a n = A166482 n

end A166482

/-! ## A166482.P2822031664078911510

`Δ[A112576(A049615(∑[n])+n)]`
-/

namespace A166482.P2822031664078911510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (A049615 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166482.P2822031664078911510

namespace A166482

/-- `Δ[A112576(A049615(∑[n])+n)]` -/
def P2822031664078911510.Spec : Prop :=
  ∀ n, P2822031664078911510.a n = A166482 n

end A166482

/-!
# A166483: Number of integers in [1..A112141(n)] that are multiples of the first n semiprimes, where A112141(n) is the product of the first n semiprimes.

The programs for A166483, there is no canonical definition to state claims against.
-/

/-! ## A166483.P17602803087788425052

`A236933(A112798(n+2)-A122100(3*n))`
-/

namespace A166483.P17602803087788425052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236933 (A112798 (n + 2) - A122100 (3 * n)).toNat

end

end A166483.P17602803087788425052

/-!
# A166484: Prime sums of three Fermat numbers: primes of form 2^2^x + 2^2^y + 5.

The programs for A166484, there is no canonical definition to state claims against.
-/

/-! ## A166484.P18050316392287813671

`p?[A155877(n+1)]`
-/

namespace A166484.P18050316392287813671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166484.P18050316392287813671

/-! ## A166484.P2920915933204441729

`p?[record[A155877(A020986(n))]]`
-/

namespace A166484.P2920915933204441729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155877 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166484.P2920915933204441729

/-! ## A166484.P2628776515143563151

`record[A001414(A155877(n+2))]`
-/

namespace A166484.P2628776515143563151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A155877 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166484.P2628776515143563151

/-! ## A166484.P4179965881202532275

`record[A020639(A155877(comp[n²]))]`
-/

namespace A166484.P4179965881202532275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155877 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166484.P4179965881202532275

/-!
# A166486: Periodic sequence [0,1,1,1] of length 4; Characteristic function of numbers that are not multiples of 4.

The programs for A166486, the canonical program `A166486.P13501783531280266850` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166486 has offset 0).

The definition of A166486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166486.P13501783531280266850

`ceil(n/4)-floor(n/4)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166486

/-- `ceil(n/4)-floor(n/4)` -/
def P13501783531280266850.Spec : Prop :=
  ∀ n, P13501783531280266850.a n = A166486 n

theorem P13501783531280266850.correct : P13501783531280266850.Spec := by
  intro n
  simp only [A166486]

end A166486

/-!
# A166492: Table of numerators of A120070(n,m)/A002260(n,m), 1 <= m < n.

The programs for A166492, there is no canonical definition to state claims against.
-/

/-! ## A166492.P3242039553767580390

`A120070(n+2)/gcd(A140978(n+1), A189151(n+1))`
-/

namespace A166492.P3242039553767580390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (Int.gcd (A140978 (n + 1)) (A189151 (n + 1)) : ℚ)

end

end A166492.P3242039553767580390

/-! ## A166492.P2879651207473293359

`lcm(A002260(n+1), A120070(n+2))/A002260(n+1)`
-/

namespace A166492.P2879651207473293359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A120070 (n + 2)) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A166492.P2879651207473293359

/-! ## A166492.P3611205713318848426

`A120070(n+2)/gcd(A002260(n+1), A055096(n+2))`
-/

namespace A166492.P3611205713318848426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (Int.gcd (A002260 (n + 1)) (A055096 (n + 2)) : ℚ)

end

end A166492.P3611205713318848426

/-! ## A166492.P17239252247636746367

`A120070(n+2)/A066099(A177808(n))`
-/

namespace A166492.P17239252247636746367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (A066099 (A177808 n).toNat : ℚ)

end

end A166492.P17239252247636746367

/-! ## A166492.P3203590304486114563

`A120070(n+2)/A198329(A168289(n))`
-/

namespace A166492.P3203590304486114563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (A198329 (A168289 n).toNat : ℚ)

end

end A166492.P3203590304486114563

/-!
# A166493: A Per Bak sand pile collapse sequence using Hofstadter Q:A005185, of the A153112 form.

The programs for A166493, there is no canonical definition to state claims against.
-/

/-! ## A166493.P5918371769089688468

`A005185(A028310(n))%A090036(3*n+1)`
-/

namespace A166493.P5918371769089688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005185 (A028310 n).toNat) (A090036 (3 * n + 1))

end

end A166493.P5918371769089688468

/-! ## A166493.P3119370859397113260

`∏{e}[5*2^n, A005185(#)]`
-/

namespace A166493.P3119370859397113260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005185 (Nat.factorization (f1 n) p)

end

end A166493.P3119370859397113260

/-! ## A166493.P16793001919035041282

`A005185(A244172(n+9)+n)`
-/

namespace A166493.P16793001919035041282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A244172 (n + 9) + (n : ℤ)).toNat

end

end A166493.P16793001919035041282

/-! ## A166493.P15878163220765125223

`A005185(A006819(n)%2+n)`
-/

namespace A166493.P15878163220765125223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (Int.tmod (A006819 n) 2 + (n : ℤ)).toNat

end

end A166493.P15878163220765125223

/-! ## A166493.P18022443169083991500

`A005185(A000005(ceil(2^n/2)))`
-/

namespace A166493.P18022443169083991500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A000005 ⌈(2 ^ n : ℚ) / 2⌉.toNat).toNat

end

end A166493.P18022443169083991500

/-!
# A166494: Irregular triangle T(n,k) = greatest common divisor of n-th row terms of A143753.

The programs for A166494, there is no canonical definition to state claims against.
-/

/-! ## A166494.P16615355101971221885

`A022998(ceil(2*sqrt(comp[n²])))`
-/

namespace A166494.P16615355101971221885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉.toNat

end

end A166494.P16615355101971221885

/-! ## A166494.P12508292522612215140

`A257088(ceil(2*sqrt(comp[n²])))`
-/

namespace A166494.P12508292522612215140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉.toNat

end

end A166494.P12508292522612215140

/-! ## A166494.P10429812875984792285

`A059029(ceil(2*sqrt(n+1)))+1`
-/

namespace A166494.P10429812875984792285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat + 1

end

end A166494.P10429812875984792285

/-! ## A166494.P11921659999523217841

`A296070(floor(sqrt(4*n+1))+2)`
-/

namespace A166494.P11921659999523217841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296070 (Nat.sqrt (4 * n + 1) + 2)

end

end A166494.P11921659999523217841

/-! ## A166494.P4482073836737477812

`A283971(2*ceil(2*sqrt(comp[n²])))`
-/

namespace A166494.P4482073836737477812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (2 * ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉).toNat

end

end A166494.P4482073836737477812

/-! ## A166494.P7811845344593203245

`A225975(4*ceil(2*sqrt(comp[n²])))`
-/

namespace A166494.P7811845344593203245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (4 * ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉).toNat

end

end A166494.P7811845344593203245

/-! ## A166494.P12869784775700056436

`A145979(A027709(n+1))`
-/

namespace A166494.P12869784775700056436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A027709 (n + 1)).toNat

end

end A166494.P12869784775700056436

/-! ## A166494.P3800851906377487870

`A066070(A000267(n))+2`
-/

namespace A166494.P3800851906377487870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066070 (A000267 n).toNat + 2

end

end A166494.P3800851906377487870

/-! ## A166494.P18118653364822511767

`A117691(2*A000267(n))`
-/

namespace A166494.P18118653364822511767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117691 (2 * A000267 n).toNat

end

end A166494.P18118653364822511767

/-! ## A166494.P1512620136899121783

`A040001(A307136(n+1))*A307136(n+1)`
-/

namespace A166494.P1512620136899121783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A307136 (n + 1)).toNat * A307136 (n + 1)

end

end A166494.P1512620136899121783

/-!
# A166495: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166495, there is no canonical definition to state claims against.
-/

/-! ## A166495.P11537916435007016003

`floor(5*4^(n-1))-A185255(A020739(n))`
-/

namespace A166495.P11537916435007016003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A020739 n).toNat

end

end A166495.P11537916435007016003

/-! ## A166495.P5415888128567973900

`floor(5*4^(n-1))-A185255(A047215(n))`
-/

namespace A166495.P5415888128567973900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A047215 n).toNat

end

end A166495.P5415888128567973900

/-! ## A166495.P16119457163075902934

`floor(5*4^(n-1))-A010894(A325724(n+1))`
-/

namespace A166495.P16119457163075902934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A010894 ((A325724 (n + 1)).toNat + 21)

end

end A166495.P16119457163075902934

/-! ## A166495.P7753708997866196715

`floor(5*4^(n-1))-A285007(A250351(n+1))`
-/

namespace A166495.P7753708997866196715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A285007 (A250351 (n + 1)).toNat

end

end A166495.P7753708997866196715

/-!
# A166496: Prime plus the next composite.

The programs for A166496, the canonical program `A166496.P5723234111422910770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166496 has offset 1).

The definition of A166496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166496.P17852283453929570728

`2*(p?[round(8*n/7)]+1)+floor(acot(n))-1`
-/

namespace A166496.P17852283453929570728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A166496.P17852283453929570728

namespace A166496

/-- `2*(p?[round(8*n/7)]+1)+floor(acot(n))-1` -/
def P17852283453929570728.Spec : Prop :=
  ∀ n, P17852283453929570728.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P13839866069109621275

`ceil(A100484(n+1)+acot(n))`
-/

namespace A166496.P13839866069109621275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100484 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A166496.P13839866069109621275

namespace A166496

/-- `ceil(A100484(n+1)+acot(n))` -/
def P13839866069109621275.Spec : Prop :=
  ∀ n, P13839866069109621275.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P6647612619854484559

`A072055(n+1)+A000007(n)`
-/

namespace A166496.P6647612619854484559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A000007 n

end

end A166496.P6647612619854484559

namespace A166496

/-- `A072055(n+1)+A000007(n)` -/
def P6647612619854484559.Spec : Prop :=
  ∀ n, P6647612619854484559.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P5723234111422910770

`A089241(n+1)+A057428(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166496

/-- `A089241(n+1)+A057428(n)` -/
def P5723234111422910770.Spec : Prop :=
  ∀ n, P5723234111422910770.a n = A166496 (n + 1)

theorem P5723234111422910770.correct : P5723234111422910770.Spec := by
  intro n
  simp only [A166496, Nat.add_sub_cancel]

end A166496

/-! ## A166496.P3822790159831870139

`A100484(n+1)+A054977(n)`
-/

namespace A166496.P3822790159831870139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A054977 n

end

end A166496.P3822790159831870139

namespace A166496

/-- `A100484(n+1)+A054977(n)` -/
def P3822790159831870139.Spec : Prop :=
  ∀ n, P3822790159831870139.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P11890763439876794242

`A089241(n+1)-A057427(n)`
-/

namespace A166496.P11890763439876794242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A057427 n

end

end A166496.P11890763439876794242

namespace A166496

/-- `A089241(n+1)-A057427(n)` -/
def P11890763439876794242.Spec : Prop :=
  ∀ n, P11890763439876794242.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P5939088924303118319

`A073582(n+1)-A134824(n)`
-/

namespace A166496.P5939088924303118319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1) - A134824 n

end

end A166496.P5939088924303118319

namespace A166496

/-- `A073582(n+1)-A134824(n)` -/
def P5939088924303118319.Spec : Prop :=
  ∀ n, P5939088924303118319.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P11937107503217815173

`A175216(n+1)+A000040(n+1)`
-/

namespace A166496.P11937107503217815173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) + A000040 (n + 1)

end

end A166496.P11937107503217815173

namespace A166496

/-- `A175216(n+1)+A000040(n+1)` -/
def P11937107503217815173.Spec : Prop :=
  ∀ n, P11937107503217815173.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P16318414360821063825

`A156037(n+1)+A123123(n+1)`
-/

namespace A166496.P16318414360821063825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) + A123123 (n + 1)

end

end A166496.P16318414360821063825

namespace A166496

/-- `A156037(n+1)+A123123(n+1)` -/
def P16318414360821063825.Spec : Prop :=
  ∀ n, P16318414360821063825.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P2810069837772286790

`A008864(n+1)+A008864(n+1)-A057427(n)`
-/

namespace A166496.P2810069837772286790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A008864 (n + 1) - A057427 n)

end

end A166496.P2810069837772286790

namespace A166496

/-- `A008864(n+1)+A008864(n+1)-A057427(n)` -/
def P2810069837772286790.Spec : Prop :=
  ∀ n, P2810069837772286790.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P11307214608609194565

`A130291(n+1)+A130291(n+1)+A000040(n+1)`
-/

namespace A166496.P11307214608609194565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) + (A130291 (n + 1) + A000040 (n + 1))

end

end A166496.P11307214608609194565

namespace A166496

/-- `A130291(n+1)+A130291(n+1)+A000040(n+1)` -/
def P11307214608609194565.Spec : Prop :=
  ∀ n, P11307214608609194565.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P17116831686009104670

`A182986(n+2)+A175216(n+1)`
-/

namespace A166496.P17116831686009104670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A175216 (n + 1)

end

end A166496.P17116831686009104670

namespace A166496

/-- `A182986(n+2)+A175216(n+1)` -/
def P17116831686009104670.Spec : Prop :=
  ∀ n, P17116831686009104670.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P13068254446795820371

`A054541(n+1)+A182986(n+2)+A028815(n)`
-/

namespace A166496.P13068254446795820371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (A182986 (n + 2) + A028815 n)

end

end A166496.P13068254446795820371

namespace A166496

/-- `A054541(n+1)+A182986(n+2)+A028815(n)` -/
def P13068254446795820371.Spec : Prop :=
  ∀ n, P13068254446795820371.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P17484765302678866841

`A100484(n+1)+A100484(n+1)/A077017(n+2)`
-/

namespace A166496.P17484765302678866841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / (A077017 (n + 2) : ℚ)

end

end A166496.P17484765302678866841

namespace A166496

/-- `A100484(n+1)+A100484(n+1)/A077017(n+2)` -/
def P17484765302678866841.Spec : Prop :=
  ∀ n, P17484765302678866841.a n = (A166496 (n + 1) : ℚ)

end A166496

/-! ## A166496.P2251507673320163014

`A001747(n+2)+A001747(n+2)/A077017(n+2)`
-/

namespace A166496.P2251507673320163014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 2) : ℚ) + (A001747 (n + 2) : ℚ) / (A077017 (n + 2) : ℚ)

end

end A166496.P2251507673320163014

namespace A166496

/-- `A001747(n+2)+A001747(n+2)/A077017(n+2)` -/
def P2251507673320163014.Spec : Prop :=
  ∀ n, P2251507673320163014.a n = (A166496 (n + 1) : ℚ)

end A166496

/-! ## A166496.P17936818399728441016

`ceil(acot(n))+2*p?[xor(1, n)+1]`
-/

namespace A166496.P17936818399728441016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ + (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A166496.P17936818399728441016

namespace A166496

/-- `ceil(acot(n))+2*p?[xor(1, n)+1]` -/
def P17936818399728441016.Spec : Prop :=
  ∀ n, P17936818399728441016.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P1137224894555689079

`floor(acot(n))+1+2*p?[xor(1, n)+1]`
-/

namespace A166496.P1137224894555689079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A166496.P1137224894555689079

namespace A166496

/-- `floor(acot(n))+1+2*p?[xor(1, n)+1]` -/
def P1137224894555689079.Spec : Prop :=
  ∀ n, P1137224894555689079.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P16698080666345328664

`p?[xor(1, n)+1]+p?[abs(2*n-3)]+1`
-/

namespace A166496.P16698080666345328664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

end

end A166496.P16698080666345328664

namespace A166496

/-- `p?[xor(1, n)+1]+p?[abs(2*n-3)]+1` -/
def P16698080666345328664.Spec : Prop :=
  ∀ n, P16698080666345328664.a n = A166496 (n + 1)

end A166496

/-! ## A166496.P15942561388949636089

`p?[n-(-1)^n]+p?[abs(2*n-3)]+1`
-/

namespace A166496.P15942561388949636089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

end

end A166496.P15942561388949636089

namespace A166496

/-- `p?[n-(-1)^n]+p?[abs(2*n-3)]+1` -/
def P15942561388949636089.Spec : Prop :=
  ∀ n, P15942561388949636089.a n = A166496 (n + 1)

end A166496

/-!
# A166497: A Per Bak sand pile collapse sequence using A147665 in the A153112 form.

The programs for A166497, there is no canonical definition to state claims against.
-/

/-! ## A166497.P14304617300554422557

`A001221(A034008(n)+A008579(n))`
-/

namespace A166497.P14304617300554422557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034008 n + A008579 n).toNat

end

end A166497.P14304617300554422557

/-! ## A166497.P7808089521413300627

`A320003(n+1)+A319989(ceil(2^(n-1)))`
-/

namespace A166497.P7808089521413300627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (n + 1) + A319989 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A166497.P7808089521413300627

/-! ## A166497.P1334506510318220971

`A049419(A007306(n)^A343265(n))`
-/

namespace A166497.P1334506510318220971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((A007306 n : ℚ) ^ (A343265 n : ℤ))).toNat

end

end A166497.P1334506510318220971

/-! ## A166497.P12859580881151453968

`A217984(∑[A130634(A167619(n+1))])`
-/

namespace A166497.P12859580881151453968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130634 (A167619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166497.P12859580881151453968

/-! ## A166497.P6590343180062267694

`A001221(record[A213064(A180803(n+1))])`
-/

namespace A166497.P6590343180062267694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A180803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166497.P6590343180062267694

/-!
# A166498: Integers formed by concatenating squares.

The programs for A166498, there is no canonical definition to state claims against.
-/

/-! ## A166498.P15789587108358249194

`∪[A168042(n+1), ∪[A261713(n+1), n²]]`
-/

namespace A166498.P15789587108358249194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A166498.P15789587108358249194

/-! ## A166498.P16922968622815270505

`∪[A261713(n+1), n²]%A352094(n+1)`
-/

namespace A166498.P16922968622815270505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ) (A352094 (n + 1))

end

end A166498.P16922968622815270505

/-! ## A166498.P11204592904342694411

`∪[A261713(n+1), n²]%A352065(n)`
-/

namespace A166498.P11204592904342694411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ) (A352065 n)

end

end A166498.P11204592904342694411

/-! ## A166498.P1952636979631357726

`∪[A261713((n+1)^A055642(n)^A055642(n)), n²]`
-/

namespace A166498.P1952636979631357726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (SequenceMachineLib.roundAway (((n + 1 : ℚ) ^ (A055642 n : ℤ)) ^ (A055642 n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A166498.P1952636979631357726

/-!
# A166499: Concatenation of the rightmost digit of the n-th prime and the leftmost digit of the (n+1)th prime.

The programs for A166499, the canonical program `A166499.P15213184489889587938` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166499 has offset 1).

The definition of A166499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, A077648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166499.P15213184489889587938

`10*A007652(n+1)+A077648(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166499

/-- `10*A007652(n+1)+A077648(n+2)` -/
def P15213184489889587938.Spec : Prop :=
  ∀ n, P15213184489889587938.a n = A166499 (n + 1)

theorem P15213184489889587938.correct : P15213184489889587938.Spec := by
  intro n
  simp only [A166499, Nat.add_sub_cancel]

end A166499

/-! ## A166499.P6424888932243010403

`A073729(A004087(n+1))+Δ[A077648(n+1)]`
-/

namespace A166499.P6424888932243010403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A004087 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A166499.P6424888932243010403

namespace A166499

/-- `A073729(A004087(n+1))+Δ[A077648(n+1)]` -/
def P6424888932243010403.Spec : Prop :=
  ∀ n, P6424888932243010403.a n = A166499 (n + 1)

end A166499

