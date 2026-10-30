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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C014
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A095100: Integers m of the form 4k+3 for which all sums Sum_{i=1..u} J(i/m) (with u ranging from 1 to (m-1)) are nonnegative, where J(i/m) is Jacobi symbol of i and m.

The programs for A095100, there is no canonical definition to state claims against.
-/

/-! ## A095100.P11235629761930786030

`4*A095274(n)+3`
-/

namespace A095100.P11235629761930786030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095274 n + 3

end

end A095100.P11235629761930786030

/-! ## A095100.P16262607682834229401

`∪[A004767(A165607(n+1)), A165469(n+1)]`
-/

namespace A095100.P16262607682834229401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165607 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P16262607682834229401

/-! ## A095100.P4792475304253845718

`∪[A131098(A165607(1+n)+2), A165469(n+1)]`
-/

namespace A095100.P4792475304253845718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A165607 (1 + n) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P4792475304253845718

/-! ## A095100.P1179053725989339261

`∪[A005818(2*A165607(n+1)), A165469(n+1)]`
-/

namespace A095100.P1179053725989339261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (2 * A165607 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P1179053725989339261

/-! ## A095100.P8772417718831972649

`∪[A062545(2*A165607(n+1)), A165469(n+1)]`
-/

namespace A095100.P8772417718831972649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (2 * A165607 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P8772417718831972649

/-! ## A095100.P12991240039953854372

`∪[A165469(n+1), A166519(2*A165607(n+1))]`
-/

namespace A095100.P12991240039953854372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (2 * A165607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P12991240039953854372

/-! ## A095100.P11757349730397448003

`∪[4*A165468(n+1)+3, A004767(A165607(n+1))]`
-/

namespace A095100.P11757349730397448003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P11757349730397448003

/-! ## A095100.P17430347966466506491

`∪[4*A165468(n+1)+3, A131098(A165607(1+n)+2)]`
-/

namespace A095100.P17430347966466506491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A165607 (1 + n) + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P17430347966466506491

/-! ## A095100.P1073563653494736082

`∪[4*A165468(n+1)+3, A005818(2*A165607(n+1))]`
-/

namespace A095100.P1073563653494736082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (2 * A165607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P1073563653494736082

/-! ## A095100.P6914575192127238746

`∪[4*A165468(n+1)+3, A062545(2*A165607(n+1))]`
-/

namespace A095100.P6914575192127238746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (2 * A165607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P6914575192127238746

/-! ## A095100.P5729214259491469139

`∪[4*A165468(n+1)+3, A166519(2*A165607(n+1))]`
-/

namespace A095100.P5729214259491469139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (2 * A165607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P5729214259491469139

/-! ## A095100.P9686124996850428978

`∪[A165469(n+1), A165608(n+1)]`
-/

namespace A095100.P9686124996850428978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P9686124996850428978

/-! ## A095100.P15497486164775095031

`∪[4*A166091(∑[n])+3, A165608(n+1)]`
-/

namespace A095100.P15497486164775095031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 (∑ j ∈ Finset.range (n + 1), f2 j) + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A095100.P15497486164775095031

/-! ## A095100.P3286366981321558344

`∪[4*A165468(n+1)+3, A165608(n+1)]`
-/

namespace A095100.P3286366981321558344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095100.P3286366981321558344

/-!
# A095101: Integers m of the form 4k+3 for which some of the sums Sum_{i=1..u} J(i/m) (with u ranging from 1 to (m-1)) is negative, where J(i/m) is Jacobi symbol of i and m.

The programs for A095101, there is no canonical definition to state claims against.
-/

/-! ## A095101.P16088212561505141044

`4*A095275(n)+3`
-/

namespace A095101.P16088212561505141044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095275 n + 3

end

end A095101.P16088212561505141044

/-! ## A095101.P17182308587172131504

`4*comp[floor(A095100(n+1)/4)]+3`
-/

namespace A095101.P17182308587172131504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095100 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A095101.P17182308587172131504

/-! ## A095101.P611010794593182414

`A004767(A095275(n))`
-/

namespace A095101.P611010794593182414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A095275 n).toNat

end

end A095101.P611010794593182414

/-! ## A095101.P16172374476380005877

`A005818(2*A095275(n))`
-/

namespace A095101.P16172374476380005877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (2 * A095275 n).toNat

end

end A095101.P16172374476380005877

/-! ## A095101.P17195508096897200448

`A062545(2*A095275(n))`
-/

namespace A095101.P17195508096897200448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (2 * A095275 n).toNat

end

end A095101.P17195508096897200448

/-! ## A095101.P5087253631327388490

`3-A001478(4*A095275(n))`
-/

namespace A095101.P5087253631327388490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001478 (4 * A095275 n).toNat

end

end A095101.P5087253631327388490

/-! ## A095101.P8859484686460366294

`3-A001489(4*A095275(n))`
-/

namespace A095101.P8859484686460366294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001489 (4 * A095275 n).toNat

end

end A095101.P8859484686460366294

/-! ## A095101.P2786415014139064153

`A007318(∑[n])*or(3, 4*A095275(n))`
-/

namespace A095101.P2786415014139064153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * Int.lor 3 (4 * A095275 n)

end

end A095101.P2786415014139064153

/-!
# A095102: Odd primes p for which all sums Sum_{i=1..u} L(i/p) (with u ranging from 1 to (p-1)) are nonnegative, where L(i/p) is Legendre symbol of i and p, defined to be 1 if i is a quadratic residue (mod p) and -1 if i is a quadratic non-residue (mod p).

The programs for A095102, there is no canonical definition to state claims against.
-/

/-! ## A095102.P8047433729087011905

`4*A095272(n+1)+3`
-/

namespace A095102.P8047433729087011905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095272 (n + 1) + 3

end

end A095102.P8047433729087011905

/-! ## A095102.P10878767039378508571

`A080114(A233334(n+1))`
-/

namespace A095102.P10878767039378508571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (A233334 (n + 1)).toNat

end

end A095102.P10878767039378508571

/-! ## A095102.P10961762943942689422

`filter[A080114(n+1), A343219(#)]`
-/

namespace A095102.P10961762943942689422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A095102.P10961762943942689422

/-! ## A095102.P13993229059491568072

`filter[A080114(n+1), A347871(#)]`
-/

namespace A095102.P13993229059491568072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A095102.P13993229059491568072

/-! ## A095102.P8626403022217118980

`filter[A080114(n+1), A354028(#)]`
-/

namespace A095102.P8626403022217118980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A095102.P8626403022217118980

/-! ## A095102.P10786038138203597321

`filter[A080114(n+1), A354029(#)]`
-/

namespace A095102.P10786038138203597321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A095102.P10786038138203597321

/-! ## A095102.P4421687315229404122

`filter[A080114(n+1), A354033(#)]`
-/

namespace A095102.P4421687315229404122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A095102.P4421687315229404122

/-! ## A095102.P5036749388959027841

`filter[A080114(n+1), A354036(#)]`
-/

namespace A095102.P5036749388959027841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A095102.P5036749388959027841

/-! ## A095102.P7053529009904402533

`filter[A080114(n+1), A359152(#)]`
-/

namespace A095102.P7053529009904402533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A095102.P7053529009904402533

/-! ## A095102.P4501627541047077332

`∩[A002145(n+1), A080114(n+1)]`
-/

namespace A095102.P4501627541047077332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P4501627541047077332

/-! ## A095102.P10298444989207771426

`∩[A004144(n+1), A080114(n+1)]`
-/

namespace A095102.P10298444989207771426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P10298444989207771426

/-! ## A095102.P3349722926171607733

`∩[A004614(n+1), A080114(n+1)]`
-/

namespace A095102.P3349722926171607733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P3349722926171607733

/-! ## A095102.P3161589534851248181

`∩[A045323(n+1), A080114(n+1)]`
-/

namespace A095102.P3161589534851248181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P3161589534851248181

/-! ## A095102.P1381379341705270843

`∩[A045326(n+1), A080114(n+1)]`
-/

namespace A095102.P1381379341705270843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P1381379341705270843

/-! ## A095102.P12078250803651487206

`∩[A045419(n+1), A080114(n+1)]`
-/

namespace A095102.P12078250803651487206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P12078250803651487206

/-! ## A095102.P8427346323514518950

`∩[A049098(n+1), A080114(n+1)]`
-/

namespace A095102.P8427346323514518950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P8427346323514518950

/-! ## A095102.P17709774887432400092

`∩[A065156(n+1), A080114(n+1)]`
-/

namespace A095102.P17709774887432400092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P17709774887432400092

/-! ## A095102.P18427435501427386157

`∩[A080114(n+1), A120127(n+1)]`
-/

namespace A095102.P18427435501427386157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P18427435501427386157

/-! ## A095102.P15937401193455240593

`∩[A039957(n+1), A080114(n+1)]`
-/

namespace A095102.P15937401193455240593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P15937401193455240593

/-! ## A095102.P14025438538525873199

`∩[A080114(n+1), A004767(n)]`
-/

namespace A095102.P14025438538525873199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095102.P14025438538525873199

/-!
# A095103: 4*k+3 primes whose Legendre-vector is not valid Dyck-path.

The programs for A095103, there is no canonical definition to state claims against.
-/

/-! ## A095103.P2435965357618254584

`4*A095273(n+1)+3`
-/

namespace A095103.P2435965357618254584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095273 (n + 1) + 3

end

end A095103.P2435965357618254584

/-! ## A095103.P8441965582929273553

`A004767(A095273(n+1))`
-/

namespace A095103.P8441965582929273553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A095273 (n + 1)).toNat

end

end A095103.P8441965582929273553

/-! ## A095103.P1536420808461164986

`A125254(A095273(n+1)+1)`
-/

namespace A095103.P1536420808461164986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (A095273 (n + 1) + 1).toNat

end

end A095103.P1536420808461164986

/-! ## A095103.P216917171691746509

`A005818(2*A095273(n+1))`
-/

namespace A095103.P216917171691746509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (2 * A095273 (n + 1)).toNat

end

end A095103.P216917171691746509

/-! ## A095103.P3692859701862085662

`A020484(2*A095273(n+1))`
-/

namespace A095103.P3692859701862085662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (2 * A095273 (n + 1)).toNat

end

end A095103.P3692859701862085662

/-!
# A095104: Diving index of the n-th 4k+3 prime (A002145(n)).

The programs for A095104, there is no canonical definition to state claims against.
-/

/-! ## A095104.P11614417311688189508

`(A095105(n+1)+1)%p?[abs(1-4*n)]`
-/

namespace A095104.P11614417311688189508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095105 (n + 1) + 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095104.P11614417311688189508

/-! ## A095104.P8046177016937933194

`(A095105(n+1)+1)%A002145(n+1)`
-/

namespace A095104.P8046177016937933194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095105 (n + 1) + 1) (A002145 (n + 1))

end

end A095104.P8046177016937933194

/-! ## A095104.P18063544696103779079

`A004442(A095105(n+1))%A002145(n+1)`
-/

namespace A095104.P18063544696103779079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A095105 (n + 1)).toNat) (A002145 (n + 1))

end

end A095104.P18063544696103779079

/-! ## A095104.P12919512385957958368

`A065475(A095105(n+1))%A045326(n+2)`
-/

namespace A095104.P12919512385957958368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (A095105 (n + 1)).toNat) (A045326 (n + 2))

end

end A095104.P12919512385957958368

/-! ## A095104.P16658246255090074917

`A095269(A095278(n+1))`
-/

namespace A095104.P16658246255090074917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (A095278 (n + 1)).toNat

end

end A095104.P16658246255090074917

/-!
# A095105: Length of maximal Dyck path prefix in the Legendre-vector of the n-th 4k+3 prime (A002145(n)).

The programs for A095105, there is no canonical definition to state claims against.
-/

/-! ## A095105.P16975532878873411831

`A095270(round(p?[4*n-1]/4))`
-/

namespace A095105.P16975532878873411831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)).toNat

end

end A095105.P16975532878873411831

/-! ## A095105.P9883719378021581678

`A095270((p?[4*n-1]+1)/4)`
-/

namespace A095105.P9883719378021581678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4)).toNat

end

end A095105.P9883719378021581678

/-! ## A095105.P11255522712282950455

`A095270(A005099(n+1))`
-/

namespace A095105.P11255522712282950455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (A005099 (n + 1)).toNat

end

end A095105.P11255522712282950455

/-! ## A095105.P4071792557850696824

`A095270(A095278(n+1)+1)`
-/

namespace A095105.P4071792557850696824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (A095278 (n + 1) + 1).toNat

end

end A095105.P4071792557850696824

/-! ## A095105.P705472248102383162

`A095270(A089986(n+1)+2)`
-/

namespace A095105.P705472248102383162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (A089986 (n + 1) + 2).toNat

end

end A095105.P705472248102383162

/-!
# A095107: Sum of maximal Dyck path prefix lengths of all 4k+3 primes in range ]2^n,2^(n+1)].

The programs for A095107, there is no canonical definition to state claims against.
-/

/-! ## A095107.P263564184375435762

`A002201(n+1)-A087893(A099996(n))`
-/

namespace A095107.P263564184375435762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1) - A087893 (A099996 n).toNat

end

end A095107.P263564184375435762

/-!
# A095108: Diving index of the n-th diving 4k+3 prime (A095103(n)).

The programs for A095108, there is no canonical definition to state claims against.
-/

/-! ## A095108.P6350253486580279255

`filter[A095104(n+1), A000035(#)]`
-/

namespace A095108.P6350253486580279255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A095108.P6350253486580279255

/-! ## A095108.P2919926699624703580

`filter[A095104(n+1), A097325(#)]`
-/

namespace A095108.P2919926699624703580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A095108.P2919926699624703580

/-! ## A095108.P1553022599456132316

`filter[A095104(n+1), A098725(#)]`
-/

namespace A095108.P1553022599456132316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A095108.P1553022599456132316

/-! ## A095108.P7452115819079683396

`filter[A095104(n+1), A115971(#)]`
-/

namespace A095108.P7452115819079683396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A095108.P7452115819079683396

/-! ## A095108.P17124404639458159821

`filter[A095104(n+1), A166486(#)]`
-/

namespace A095108.P17124404639458159821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A095108.P17124404639458159821

/-!
# A095109: Sum of diving indices of all 4k+3 integers in range ]2^n,2^(n+1)].

The programs for A095109, there is no canonical definition to state claims against.
-/

/-! ## A095109.P14176711905341818112

`∑[A033103(A117156(n+1))]`
-/

namespace A095109.P14176711905341818112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (A117156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095109.P14176711905341818112

/-! ## A095109.P137881242683079177

`A360926(A071681(∏[2^floor(n/2)]))`
-/

namespace A095109.P137881242683079177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360926 (A071681 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A095109.P137881242683079177

/-! ## A095109.P3449054107591791175

`A051775(A051789(n)+ceil(xor(1, n)/4))`
-/

namespace A095109.P3449054107591791175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A051789 n + ⌈(Nat.xor 1 n : ℚ) / 4⌉).toNat

end

end A095109.P3449054107591791175

/-!
# A095110: Sum of maximal Motzkin path prefix-lengths of all 4k+3 integers in range ]2^n,2^(n+1)].

The programs for A095110, there is no canonical definition to state claims against.
-/

/-! ## A095110.P14204495222824966962

`A087844(A088129(n+2))`
-/

namespace A095110.P14204495222824966962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (A088129 (n + 2)).toNat

end

end A095110.P14204495222824966962

/-!
# A095111: One minus the parity of 1-fibits in Zeckendorf expansion A014417(n).

The programs for A095111, the canonical program `A095111.P18387562347158701288` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095111 has offset 0).

The definition of A095111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095111.P18387562347158701288

`1-A095076(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A095111

/-- `1-A095076(n)` -/
def P18387562347158701288.Spec : Prop :=
  ∀ n, P18387562347158701288.a n = A095111 n

theorem P18387562347158701288.correct : P18387562347158701288.Spec := by
  intro n
  simp only [A095111]

end A095111

/-! ## A095111.P1887815148401923962

`A010059(A003714(n))`
-/

namespace A095111.P1887815148401923962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A003714 n).toNat

end

end A095111.P1887815148401923962

namespace A095111

/-- `A010059(A003714(n))` -/
def P1887815148401923962.Spec : Prop :=
  ∀ n, P1887815148401923962.a n = A095111 n

end A095111

/-! ## A095111.P14206296705947954732

`log2(gcd(2, A007895(n)))`
-/

namespace A095111.P14206296705947954732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A007895 n) : ℝ)

end

end A095111.P14206296705947954732

namespace A095111

/-- `log2(gcd(2, A007895(n)))` -/
def P14206296705947954732.Spec : Prop :=
  ∀ n, P14206296705947954732.a n = (A095111 n : ℝ)

end A095111

/-! ## A095111.P5571309499298787288

`char[A095096(n+1)]`
-/

namespace A095111.P5571309499298787288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A095111.P5571309499298787288

namespace A095111

/-- `char[A095096(n+1)]` -/
def P5571309499298787288.Spec : Prop :=
  ∀ n, (P5571309499298787288.a n : ℤ) = A095111 n

end A095111

/-! ## A095111.P17095356410612498026

`col(gcd(4, A060140(n)))`
-/

namespace A095111.P17095356410612498026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.gcd 4 (A060140 n))

end

end A095111.P17095356410612498026

namespace A095111

/-- `col(gcd(4, A060140(n)))` -/
def P17095356410612498026.Spec : Prop :=
  ∀ n, (P17095356410612498026.a n : ℤ) = A095111 n

end A095111

/-! ## A095111.P5270818948510907189

`A143299(n+1)%2`
-/

namespace A095111.P5270818948510907189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143299 (n + 1)) 2

end

end A095111.P5270818948510907189

namespace A095111

/-- `A143299(n+1)%2` -/
def P5270818948510907189.Spec : Prop :=
  ∀ n, P5270818948510907189.a n = A095111 n

end A095111

/-! ## A095111.P5218674310809973460

`(A227351(n)+1)%2`
-/

namespace A095111.P5218674310809973460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227351 n + 1) 2

end

end A095111.P5218674310809973460

namespace A095111

/-- `(A227351(n)+1)%2` -/
def P5218674310809973460.Spec : Prop :=
  ∀ n, P5218674310809973460.a n = A095111 n

end A095111

/-! ## A095111.P15445106670985269570

`1-a(A019586(n))` with `a(0)=1`
-/

namespace A095111.P15445106670985269570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (A019586 n).toNat

end

end A095111.P15445106670985269570

namespace A095111

/-- `1-a(A019586(n))` -/
def P15445106670985269570.Spec : Prop :=
  ∀ n, P15445106670985269570.a n = A095111 n

end A095111

/-! ## A095111.P2550133605400470819

`1-a(A066628(n))` with `a(0)=1`
-/

namespace A095111.P2550133605400470819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (A066628 n).toNat

end

end A095111.P2550133605400470819

namespace A095111

/-- `1-a(A066628(n))` -/
def P2550133605400470819.Spec : Prop :=
  ∀ n, P2550133605400470819.a n = A095111 n

end A095111

/-! ## A095111.P4958754328553930967

`char[comp[A020899(n+1)]]`
-/

namespace A095111.P4958754328553930967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095111.P4958754328553930967

namespace A095111

/-- `char[comp[A020899(n+1)]]` -/
def P4958754328553930967.Spec : Prop :=
  ∀ n, (P4958754328553930967.a n : ℤ) = A095111 n

end A095111

/-! ## A095111.P9884433428808125716

`(1-A219641(n)+n)%2`
-/

namespace A095111.P9884433428808125716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A219641 n + (n : ℤ)) 2

end

end A095111.P9884433428808125716

namespace A095111

/-- `(1-A219641(n)+n)%2` -/
def P9884433428808125716.Spec : Prop :=
  ∀ n, P9884433428808125716.a n = A095111 n

end A095111

/-! ## A095111.P5159285973769724117

`A000166(a(A019586(n)))` with `a(0)=1`
-/

namespace A095111.P5159285973769724117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000166 (a (A019586 n).toNat).toNat

end

end A095111.P5159285973769724117

namespace A095111

/-- `A000166(a(A019586(n)))` -/
def P5159285973769724117.Spec : Prop :=
  ∀ n, P5159285973769724117.a n = A095111 n

end A095111

/-! ## A095111.P10996771179772102663

`A000007(n*A095076(n))`
-/

namespace A095111.P10996771179772102663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A095076 n).toNat

end

end A095111.P10996771179772102663

namespace A095111

/-- `A000007(n*A095076(n))` -/
def P10996771179772102663.Spec : Prop :=
  ∀ n, P10996771179772102663.a n = A095111 n

end A095111

/-! ## A095111.P18152143689953289930

`A105774(n+1)-A343647(n)`
-/

namespace A095111.P18152143689953289930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A343647 n

end

end A095111.P18152143689953289930

namespace A095111

/-- `A105774(n+1)-A343647(n)` -/
def P18152143689953289930.Spec : Prop :=
  ∀ n, P18152143689953289930.a n = A095111 n

theorem P18152143689953289930.correct : P18152143689953289930.Spec := by
  intro n
  simp only [A095111, Nat.add_sub_cancel, A095111.P18152143689953289930.a, A095111.P18387562347158701288.a, A095076, A095076.P3589875723574390605.a, A105774, A105774.P16927579740594688494.a, A343647, A343647.P9354644187600228966.a, A000045, A000045.P11838749114346432762.a, A003714, A003714.P565032106299634425.a, A010060, A010060.P3080921269106500717.a, A072649, A072649.P9617326913925617377.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A003849, A003849.P15070805603138295355.a, A108852, A108852.P14747039251510576692.a, A193564, A193564.P10859496068576138660.a, A005187, A005187.P3874015513960485494.a, A022341, A022341.P2847779761458071812.a, A026242, A026242.P14627616473925988182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A095111

/-! ## A095111.P2256335538576400656

`and(1, A016760(n)+A007895(n))`
-/

namespace A095111.P2256335538576400656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016760 n + A007895 n)

end

end A095111.P2256335538576400656

namespace A095111

/-- `and(1, A016760(n)+A007895(n))` -/
def P2256335538576400656.Spec : Prop :=
  ∀ n, P2256335538576400656.a n = A095111 n

end A095111

/-! ## A095111.P8114097377672819384

`and(1, A016820(n)+A007895(n))`
-/

namespace A095111.P8114097377672819384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016820 n + A007895 n)

end

end A095111.P8114097377672819384

namespace A095111

/-- `and(1, A016820(n)+A007895(n))` -/
def P8114097377672819384.Spec : Prop :=
  ∀ n, P8114097377672819384.a n = A095111 n

end A095111

/-! ## A095111.P12935085645506559457

`and(A008349(n), A143299(n+1))`
-/

namespace A095111.P12935085645506559457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A143299 (n + 1))

end

end A095111.P12935085645506559457

namespace A095111

/-- `and(A008349(n), A143299(n+1))` -/
def P12935085645506559457.Spec : Prop :=
  ∀ n, P12935085645506559457.a n = A095111 n

end A095111

/-! ## A095111.P11420568638239289755

`and(A008362(n), A143299(n+1))`
-/

namespace A095111.P11420568638239289755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A143299 (n + 1))

end

end A095111.P11420568638239289755

namespace A095111

/-- `and(A008362(n), A143299(n+1))` -/
def P11420568638239289755.Spec : Prop :=
  ∀ n, P11420568638239289755.a n = A095111 n

end A095111

/-! ## A095111.P8893029854230665743

`and(A008417(n), A143299(n+1))`
-/

namespace A095111.P8893029854230665743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A143299 (n + 1))

end

end A095111.P8893029854230665743

namespace A095111

/-- `and(A008417(n), A143299(n+1))` -/
def P8893029854230665743.Spec : Prop :=
  ∀ n, P8893029854230665743.a n = A095111 n

end A095111

/-! ## A095111.P1741942082267613392

`and(A008514(n), A143299(n+1))`
-/

namespace A095111.P1741942082267613392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A143299 (n + 1))

end

end A095111.P1741942082267613392

namespace A095111

/-- `and(A008514(n), A143299(n+1))` -/
def P1741942082267613392.Spec : Prop :=
  ∀ n, P1741942082267613392.a n = A095111 n

end A095111

/-!
# A095112: a(n) is the sum of n/k over all prime powers k > 1 which divide n.

The programs for A095112, the canonical program `A095112.P8729457893508808626` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095112 has offset 1).

The definition of A095112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095112.P1652254472601213968

`∑{d}[n+1, A116512(#)]`
-/

namespace A095112.P1652254472601213968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A116512 d

end

end A095112.P1652254472601213968

namespace A095112

/-- `∑{d}[n+1, A116512(#)]` -/
def P1652254472601213968.Spec : Prop :=
  ∀ n, P1652254472601213968.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P8729457893508808626

`∑{d}[n+1, A001222(#)*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095112

/-- `∑{d}[n+1, A001222(#)*A000010((n+1)/#)]` -/
def P8729457893508808626.Spec : Prop :=
  ∀ n, P8729457893508808626.a n = A095112 (n + 1)

theorem P8729457893508808626.correct : P8729457893508808626.Spec := by
  intro n
  simp only [A095112, Nat.add_sub_cancel]

end A095112

/-! ## A095112.P17819001882835135300

`∑{#}[n, A001222(gcd(n+1, #))]`
-/

namespace A095112.P17819001882835135300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001222 (Nat.gcd (n + 1) k)

end

end A095112.P17819001882835135300

namespace A095112

/-- `∑{#}[n, A001222(gcd(n+1, #))]` -/
def P17819001882835135300.Spec : Prop :=
  ∀ n, P17819001882835135300.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P14061564638786358280

`∑{d}[n+1, #*A069513((n+1)/#)]`
-/

namespace A095112.P14061564638786358280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P14061564638786358280

namespace A095112

/-- `∑{d}[n+1, #*A069513((n+1)/#)]` -/
def P14061564638786358280.Spec : Prop :=
  ∀ n, P14061564638786358280.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P8672324993126642951

`∑{d}[n+1, A000010(#)*A001222((n+1)/#)]`
-/

namespace A095112.P8672324993126642951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P8672324993126642951

namespace A095112

/-- `∑{d}[n+1, A000010(#)*A001222((n+1)/#)]` -/
def P8672324993126642951.Spec : Prop :=
  ∀ n, P8672324993126642951.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P5771502873424691987

`∑{d}[n+1, A007431(#)*A069264((n+1)/#)]`
-/

namespace A095112.P5771502873424691987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A069264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P5771502873424691987

namespace A095112

/-- `∑{d}[n+1, A007431(#)*A069264((n+1)/#)]` -/
def P5771502873424691987.Spec : Prop :=
  ∀ n, P5771502873424691987.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P15531124490893064391

`∑{d}[n+1, A008683(#)*A329347((n+1)/#)]`
-/

namespace A095112.P15531124490893064391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A329347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P15531124490893064391

namespace A095112

/-- `∑{d}[n+1, A008683(#)*A329347((n+1)/#)]` -/
def P15531124490893064391.Spec : Prop :=
  ∀ n, P15531124490893064391.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P10268385946579220122

`∑{d}[n+1, A130107(#)*A345344((n+1)/#)]`
-/

namespace A095112.P10268385946579220122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A345344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P10268385946579220122

namespace A095112

/-- `∑{d}[n+1, A130107(#)*A345344((n+1)/#)]` -/
def P10268385946579220122.Spec : Prop :=
  ∀ n, P10268385946579220122.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P14677734286978680917

`∑{d}[n+1, A162728(#)*A317531((n+1)/#)]`
-/

namespace A095112.P14677734286978680917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A317531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P14677734286978680917

namespace A095112

/-- `∑{d}[n+1, A162728(#)*A317531((n+1)/#)]` -/
def P14677734286978680917.Spec : Prop :=
  ∀ n, P14677734286978680917.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P656127521219505638

`Δ[A328893(n)]`
-/

namespace A095112.P656127521219505638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095112.P656127521219505638

namespace A095112

/-- `Δ[A328893(n)]` -/
def P656127521219505638.Spec : Prop :=
  ∀ n, P656127521219505638.a n = A095112 (n + 1)

end A095112

/-! ## A095112.P67807553475581908

`A328893(n+1)-A328893(n)`
-/

namespace A095112.P67807553475581908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328893 (n + 1) - A328893 n

end

end A095112.P67807553475581908

namespace A095112

/-- `A328893(n+1)-A328893(n)` -/
def P67807553475581908.Spec : Prop :=
  ∀ n, P67807553475581908.a n = A095112 (n + 1)

end A095112

/-!
# A095113: a(1)=1. a(n) is the sum of n/d over all divisors d of n which are among a(1), ..., a(n-1).

The programs for A095113, there is no canonical definition to state claims against.
-/

/-! ## A095113.P14293952685021586913

`A000203(n+1)-A081603(A268003(n+1))`
-/

namespace A095113.P14293952685021586913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A081603 (A268003 (n + 1)).toNat

end

end A095113.P14293952685021586913

/-!
# A095114: a(1)=1. a(n) = a(n-1) + (number of elements of {a(1),...,a(n-1)} that are <= n-1).

The programs for A095114, the canonical program `A095114.P18128364600797049740` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095114 has offset 1).

The definition of A095114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095114.P18128364600797049740

`∑[a(n-a(a(n-1)))+1]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095114

/-- `∑[a(n-a(a(n-1)))+1]` -/
def P18128364600797049740.Spec : Prop :=
  ∀ n, (P18128364600797049740.a n : ℤ) = A095114 (n + 1)

theorem P18128364600797049740.correct : P18128364600797049740.Spec := by
  intro n
  simp only [A095114, Nat.add_sub_cancel]

end A095114

/-! ## A095114.P10208418229003603292

`A001462(n)+a(n-1)` with `a(0)=1`
-/

namespace A095114.P10208418229003603292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001462 n + a (n - 1)

end

end A095114.P10208418229003603292

namespace A095114

/-- `A001462(n)+a(n-1)` -/
def P10208418229003603292.Spec : Prop :=
  ∀ n, P10208418229003603292.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P13537515783311121445

`∑[A001462(round(sqrt(n²+1)))]`
-/

namespace A095114.P13537515783311121445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095114.P13537515783311121445

namespace A095114

/-- `∑[A001462(round(sqrt(n²+1)))]` -/
def P13537515783311121445.Spec : Prop :=
  ∀ n, P13537515783311121445.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P13471425064522114338

`∑[A001462(abs(1-n)+1)]-1`
-/

namespace A095114.P13471425064522114338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A095114.P13471425064522114338

namespace A095114

/-- `∑[A001462(abs(1-n)+1)]-1` -/
def P13471425064522114338.Spec : Prop :=
  ∀ n, P13471425064522114338.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P15745061992136170737

`A001463(n+1)+1-A001462(n+1)`
-/

namespace A095114.P15745061992136170737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1) + (1 - A001462 (n + 1))

end

end A095114.P15745061992136170737

namespace A095114

/-- `A001463(n+1)+1-A001462(n+1)` -/
def P15745061992136170737.Spec : Prop :=
  ∀ n, P15745061992136170737.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P14150969739538555793

`A109512(n+1)-n`
-/

namespace A095114.P14150969739538555793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1) - (n : ℤ)

end

end A095114.P14150969739538555793

namespace A095114

/-- `A109512(n+1)-n` -/
def P14150969739538555793.Spec : Prop :=
  ∀ n, P14150969739538555793.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P12686185562067994969

`A001463(n+1)+1-(Δ[A001463(n+1)]-A088517(n+1))`
-/

namespace A095114.P12686185562067994969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1) + 1 - (f1 (n + 1) - f1 n - A088517 (n + 1))

end

end A095114.P12686185562067994969

namespace A095114

/-- `A001463(n+1)+1-(Δ[A001463(n+1)]-A088517(n+1))` -/
def P12686185562067994969.Spec : Prop :=
  ∀ n, P12686185562067994969.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P15895010921071315765

`A087739(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A095114.P15895010921071315765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A087739 (n + 1) + a (n - 1)

end

end A095114.P15895010921071315765

namespace A095114

/-- `A087739(n+1)+a(n-1)` -/
def P15895010921071315765.Spec : Prop :=
  ∀ n, P15895010921071315765.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P10674368604210960625

`∑[A087739(n+2)]-A001462(n+1)`
-/

namespace A095114.P10674368604210960625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001462 (n + 1)

end

end A095114.P10674368604210960625

namespace A095114

/-- `∑[A087739(n+2)]-A001462(n+1)` -/
def P10674368604210960625.Spec : Prop :=
  ∀ n, P10674368604210960625.a n = A095114 (n + 1)

end A095114

/-! ## A095114.P12760516568038874019

`∑[A087739(n+2)]-(A087739(n+2)-A101264(3*n+1))`
-/

namespace A095114.P12760516568038874019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A087739 (n + 2) - A101264 (3 * n + 1))

end

end A095114.P12760516568038874019

namespace A095114

/-- `∑[A087739(n+2)]-(A087739(n+2)-A101264(3*n+1))` -/
def P12760516568038874019.Spec : Prop :=
  ∀ n, P12760516568038874019.a n = A095114 (n + 1)

end A095114

/-!
# A095116: a(n) = prime(n) + n - 1.

The programs for A095116, the canonical program `A095116.P2789422422958858773` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095116 has offset 1).

The definition of A095116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+n` (program `A095116.P2789422422958858773`, by `A095116.P2789422422958858773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095116.P2789422422958858773

`A000040(n+1)+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095116

/-- `A000040(n+1)+n` -/
def P2789422422958858773.Spec : Prop :=
  ∀ n, P2789422422958858773.a n = A095116 (n + 1)

theorem P2789422422958858773.correct : P2789422422958858773.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel]

end A095116

/-! ## A095116.P5813014181948464522

`A000040(n+1)+n+1-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095116.P5813014181948464522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ) - 1

end

end A095116.P5813014181948464522

namespace A095116

/-- `A000040(n+1)+n+1-1` -/
def P5813014181948464522.Spec : Prop :=
  ∀ n, P5813014181948464522.a n = A095116 (n + 1)

theorem P5813014181948464522.correct : P5813014181948464522.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P5813014181948464522.a, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095116

/-! ## A095116.P1610433664583290048

`p?[round(8*n/7)]+n`
-/

namespace A095116.P1610433664583290048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A095116.P1610433664583290048

namespace A095116

/-- `p?[round(8*n/7)]+n` -/
def P1610433664583290048.Spec : Prop :=
  ∀ n, P1610433664583290048.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P9794609478458887716

`∑[1+A075526(n)]`
-/

namespace A095116.P9794609478458887716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095116.P9794609478458887716

namespace A095116

/-- `∑[1+A075526(n)]` -/
def P9794609478458887716.Spec : Prop :=
  ∀ n, P9794609478458887716.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P11443812793278441665

`∑[A230846(n+1)]`
-/

namespace A095116.P11443812793278441665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095116.P11443812793278441665

namespace A095116

/-- `∑[A230846(n+1)]` -/
def P11443812793278441665.Spec : Prop :=
  ∀ n, P11443812793278441665.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P11555639843518989407

`Δ[A007504(n)]+n`
-/

namespace A095116.P11555639843518989407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A095116.P11555639843518989407

namespace A095116

/-- `Δ[A007504(n)]+n` -/
def P11555639843518989407.Spec : Prop :=
  ∀ n, P11555639843518989407.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P3157649170077842214

`A014688(n+1)-1`
-/

namespace A095116.P3157649170077842214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 1

end

end A095116.P3157649170077842214

namespace A095116

/-- `A014688(n+1)-1` -/
def P3157649170077842214.Spec : Prop :=
  ∀ n, P3157649170077842214.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P16146110895367983483

`n+A000040(1+n)`
-/

namespace A095116.P16146110895367983483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000040 (1 + n)

end

end A095116.P16146110895367983483

namespace A095116

/-- `n+A000040(1+n)` -/
def P16146110895367983483.Spec : Prop :=
  ∀ n, P16146110895367983483.a n = A095116 (n + 1)

theorem P16146110895367983483.correct : P16146110895367983483.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P16146110895367983483.a, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095116

/-! ## A095116.P14840138168949614598

`A129726(n+1)-n`
-/

namespace A095116.P14840138168949614598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129726 (n + 1) - (n : ℤ)

end

end A095116.P14840138168949614598

namespace A095116

/-- `A129726(n+1)-n` -/
def P14840138168949614598.Spec : Prop :=
  ∀ n, P14840138168949614598.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P10455888623561138438

`∑[A230847(n+1)]-1`
-/

namespace A095116.P10455888623561138438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A095116.P10455888623561138438

namespace A095116

/-- `∑[A230847(n+1)]-1` -/
def P10455888623561138438.Spec : Prop :=
  ∀ n, P10455888623561138438.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P15705945769835780613

`sqrt(A001248(n+1))+n`
-/

namespace A095116.P15705945769835780613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + (n : ℝ)

end

end A095116.P15705945769835780613

namespace A095116

/-- `sqrt(A001248(n+1))+n` -/
def P15705945769835780613.Spec : Prop :=
  ∀ n, P15705945769835780613.a n = (A095116 (n + 1) : ℝ)

end A095116

/-! ## A095116.P9096354094486427689

`∑[A054541(n+1)]+n`
-/

namespace A095116.P9096354094486427689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A095116.P9096354094486427689

namespace A095116

/-- `∑[A054541(n+1)]+n` -/
def P9096354094486427689.Spec : Prop :=
  ∀ n, P9096354094486427689.a n = A095116 (n + 1)

end A095116

/-! ## A095116.P14893800894268477157

`n+1+A006093(n+1)`
-/

namespace A095116.P14893800894268477157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006093 (n + 1)

end

end A095116.P14893800894268477157

namespace A095116

/-- `n+1+A006093(n+1)` -/
def P14893800894268477157.Spec : Prop :=
  ∀ n, P14893800894268477157.a n = A095116 (n + 1)

theorem P14893800894268477157.correct : P14893800894268477157.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P14893800894268477157.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P9005187028942978008

`A008864(n+1)-1+n`
-/

namespace A095116.P9005187028942978008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1 + (n : ℤ)

end

end A095116.P9005187028942978008

namespace A095116

/-- `A008864(n+1)-1+n` -/
def P9005187028942978008.Spec : Prop :=
  ∀ n, P9005187028942978008.a n = A095116 (n + 1)

theorem P9005187028942978008.correct : P9005187028942978008.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P9005187028942978008.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P3872649869775127428

`A040976(n+1)+2+n`
-/

namespace A095116.P3872649869775127428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2 + (n : ℤ)

end

end A095116.P3872649869775127428

namespace A095116

/-- `A040976(n+1)+2+n` -/
def P3872649869775127428.Spec : Prop :=
  ∀ n, P3872649869775127428.a n = A095116 (n + 1)

theorem P3872649869775127428.correct : P3872649869775127428.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P3872649869775127428.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P6448985933664311318

`A052147(n+1)-2+n`
-/

namespace A095116.P6448985933664311318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2 + (n : ℤ)

end

end A095116.P6448985933664311318

namespace A095116

/-- `A052147(n+1)-2+n` -/
def P6448985933664311318.Spec : Prop :=
  ∀ n, P6448985933664311318.a n = A095116 (n + 1)

theorem P6448985933664311318.correct : P6448985933664311318.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P6448985933664311318.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P9856951519185709371

`A014692(n+1)+2*n`
-/

namespace A095116.P9856951519185709371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (2 * n : ℤ)

end

end A095116.P9856951519185709371

namespace A095116

/-- `A014692(n+1)+2*n` -/
def P9856951519185709371.Spec : Prop :=
  ∀ n, P9856951519185709371.a n = A095116 (n + 1)

theorem P9856951519185709371.correct : P9856951519185709371.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P9856951519185709371.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P1115419049078196226

`A001748(n+1)/3+n`
-/

namespace A095116.P1115419049078196226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 + (n : ℚ)

end

end A095116.P1115419049078196226

namespace A095116

/-- `A001748(n+1)/3+n` -/
def P1115419049078196226.Spec : Prop :=
  ∀ n, P1115419049078196226.a n = (A095116 (n + 1) : ℚ)

theorem P1115419049078196226.correct : P1115419049078196226.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P1115419049078196226.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P2836915417853213301

`A001749(n+1)/4+n`
-/

namespace A095116.P2836915417853213301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 + (n : ℚ)

end

end A095116.P2836915417853213301

namespace A095116

/-- `A001749(n+1)/4+n` -/
def P2836915417853213301.Spec : Prop :=
  ∀ n, P2836915417853213301.a n = (A095116 (n + 1) : ℚ)

theorem P2836915417853213301.correct : P2836915417853213301.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P2836915417853213301.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-! ## A095116.P12929547856816195028

`A001750(n+1)/5+n`
-/

namespace A095116.P12929547856816195028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001750 (n + 1) : ℚ) / 5 + (n : ℚ)

end

end A095116.P12929547856816195028

namespace A095116

/-- `A001750(n+1)/5+n` -/
def P12929547856816195028.Spec : Prop :=
  ∀ n, P12929547856816195028.a n = (A095116 (n + 1) : ℚ)

theorem P12929547856816195028.correct : P12929547856816195028.Spec := by
  intro n
  simp only [A095116, Nat.add_sub_cancel, A095116.P12929547856816195028.a, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095116

/-!
# A095117: a(n) = pi(n) + n, where pi(n) = A000720(n) is the number of primes <= n.

The programs for A095117, the canonical program `A095117.P12920599782158258117` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095117 has offset 0).

The definition of A095117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095117.P9376484665524775234

`comp[p?[comp[n²]]+n]`
-/

namespace A095117.P9376484665524775234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A095117.P9376484665524775234

namespace A095117

/-- `comp[p?[comp[n²]]+n]` -/
def P9376484665524775234.Spec : Prop :=
  ∀ n, (P9376484665524775234.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P12920599782158258117

`∑[∑{p}[n, val(#, n)]]+n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095117

/-- `∑[∑{p}[n, val(#, n)]]+n` -/
def P12920599782158258117.Spec : Prop :=
  ∀ n, (P12920599782158258117.a n : ℤ) = A095117 n

theorem P12920599782158258117.correct : P12920599782158258117.Spec := by
  intro n
  simp only [A095117]

end A095117

/-! ## A095117.P9122658215425974210

`∑[∑{p}[n, C(#, n)]]+n`
-/

namespace A095117.P9122658215425974210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P9122658215425974210

namespace A095117

/-- `∑[∑{p}[n, C(#, n)]]+n` -/
def P9122658215425974210.Spec : Prop :=
  ∀ n, (P9122658215425974210.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P2422130094597346097

`comp[record[∑{p}[comp[(n+1)²], #]]-(1-n)]`
-/

namespace A095117.P2422130094597346097
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (1 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095117.P2422130094597346097

namespace A095117

/-- `comp[record[∑{p}[comp[(n+1)²], #]]-(1-n)]` -/
def P2422130094597346097.Spec : Prop :=
  ∀ n, (P2422130094597346097.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P9047175193305204064

`n+A230980(n)`
-/

namespace A095117.P9047175193305204064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A230980 n

end

end A095117.P9047175193305204064

namespace A095117

/-- `n+A230980(n)` -/
def P9047175193305204064.Spec : Prop :=
  ∀ n, P9047175193305204064.a n = A095117 n

theorem P9047175193305204064.correct : P9047175193305204064.Spec := by
  intro n
  simp only [A095117, Nat.add_sub_cancel, A095117.P9047175193305204064.a, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095117

/-! ## A095117.P17350345116066502000

`comp[A095116(n+1)]`
-/

namespace A095117.P17350345116066502000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095117.P17350345116066502000

namespace A095117

/-- `comp[A095116(n+1)]` -/
def P17350345116066502000.Spec : Prop :=
  ∀ n, (P17350345116066502000.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P8273551612326479803

`A064427(n+1)-1`
-/

namespace A095117.P8273551612326479803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - 1

end

end A095117.P8273551612326479803

namespace A095117

/-- `A064427(n+1)-1` -/
def P8273551612326479803.Spec : Prop :=
  ∀ n, P8273551612326479803.a n = A095117 n

end A095117

/-! ## A095117.P14828540922633957909

`∑[char[A007918(n)]]+n`
-/

namespace A095117.P14828540922633957909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P14828540922633957909

namespace A095117

/-- `∑[char[A007918(n)]]+n` -/
def P14828540922633957909.Spec : Prop :=
  ∀ n, (P14828540922633957909.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P4660078797587898646

`∑[char[A051697(n)]]+n`
-/

namespace A095117.P4660078797587898646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P4660078797587898646

namespace A095117

/-- `∑[char[A051697(n)]]+n` -/
def P4660078797587898646.Spec : Prop :=
  ∀ n, (P4660078797587898646.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P1784963718930873690

`∑[char[A060264(n)]]+n`
-/

namespace A095117.P1784963718930873690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P1784963718930873690

namespace A095117

/-- `∑[char[A060264(n)]]+n` -/
def P1784963718930873690.Spec : Prop :=
  ∀ n, (P1784963718930873690.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P2952795985517026088

`∑[char[A088732(n)]]+n`
-/

namespace A095117.P2952795985517026088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P2952795985517026088

namespace A095117

/-- `∑[char[A088732(n)]]+n` -/
def P2952795985517026088.Spec : Prop :=
  ∀ n, (P2952795985517026088.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P9357131467988677206

`∑[char[A151800(n)]]+n`
-/

namespace A095117.P9357131467988677206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P9357131467988677206

namespace A095117

/-- `∑[char[A151800(n)]]+n` -/
def P9357131467988677206.Spec : Prop :=
  ∀ n, (P9357131467988677206.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P13135664410522796447

`∑[char[A162753(n)]]+n`
-/

namespace A095117.P13135664410522796447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P13135664410522796447

namespace A095117

/-- `∑[char[A162753(n)]]+n` -/
def P13135664410522796447.Spec : Prop :=
  ∀ n, (P13135664410522796447.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P633240431580418651

`comp[Δ[A007504(n)]+n]`
-/

namespace A095117.P633240431580418651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095117.P633240431580418651

namespace A095117

/-- `comp[Δ[A007504(n)]+n]` -/
def P633240431580418651.Spec : Prop :=
  ∀ n, (P633240431580418651.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P3401060805089318513

`comp[A014688(n+1)-1]`
-/

namespace A095117.P3401060805089318513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095117.P3401060805089318513

namespace A095117

/-- `comp[A014688(n+1)-1]` -/
def P3401060805089318513.Spec : Prop :=
  ∀ n, (P3401060805089318513.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P3625646994304216880

`∑[C(2, A105700(n))]-1`
-/

namespace A095117.P3625646994304216880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A095117.P3625646994304216880

namespace A095117

/-- `∑[C(2, A105700(n))]-1` -/
def P3625646994304216880.Spec : Prop :=
  ∀ n, P3625646994304216880.a n = A095117 n

end A095117

/-! ## A095117.P13748441718521520697

`comp[A000040(n+1)+n]`
-/

namespace A095117.P13748441718521520697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095117.P13748441718521520697

namespace A095117

/-- `comp[A000040(n+1)+n]` -/
def P13748441718521520697.Spec : Prop :=
  ∀ n, (P13748441718521520697.a n : ℤ) = A095117 n

end A095117

/-! ## A095117.P14431679945185473130

`Δ[n²]-A086936(n+1)`
-/

namespace A095117.P14431679945185473130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A086936 (n + 1)

end

end A095117.P14431679945185473130

namespace A095117

/-- `Δ[n²]-A086936(n+1)` -/
def P14431679945185473130.Spec : Prop :=
  ∀ n, P14431679945185473130.a n = A095117 n

end A095117

/-! ## A095117.P18000645934719150459

`A000720(A014684(n+1))+n`
-/

namespace A095117.P18000645934719150459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014684 (n + 1)).toNat + (n : ℤ)

end

end A095117.P18000645934719150459

namespace A095117

/-- `A000720(A014684(n+1))+n` -/
def P18000645934719150459.Spec : Prop :=
  ∀ n, P18000645934719150459.a n = A095117 n

end A095117

/-! ## A095117.P5779076021540821068

`A000720(A113638(n+1))+n`
-/

namespace A095117.P5779076021540821068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A113638 (n + 1)).toNat + (n : ℤ)

end

end A095117.P5779076021540821068

namespace A095117

/-- `A000720(A113638(n+1))+n` -/
def P5779076021540821068.Spec : Prop :=
  ∀ n, P5779076021540821068.a n = A095117 n

end A095117

/-!
# A095118: a(n) is the sum of the squares of the divisors of n which are <= sqrt(n).

The programs for A095118, there is no canonical definition to state claims against.
-/

/-! ## A095118.P5982314937906115579

`A297792(n+1)-A339353(n+1)`
-/

namespace A095118.P5982314937906115579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297792 (n + 1) - A339353 (n + 1)

end

end A095118.P5982314937906115579

/-! ## A095118.P11807802221778390548

`∑{d}[n+1, A298473(#)*A341038((n+1)/#)]`
-/

namespace A095118.P11807802221778390548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A341038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095118.P11807802221778390548

/-! ## A095118.P5297231956486845252

`A069293((n+1)²)`
-/

namespace A095118.P5297231956486845252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 ((n + 1) ^ 2)

end

end A095118.P5297231956486845252

/-! ## A095118.P4894185577049438924

`2*A347173(n+1)-A373031(n+1)`
-/

namespace A095118.P4894185577049438924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347173 (n + 1) - A373031 (n + 1)

end

end A095118.P4894185577049438924

/-!
# A095120: a(n) = prime(3^n - 1).

The programs for A095120, the canonical program `A095120.P17792172950455986032` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095120 has offset 1).

The definition of A095120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3^(n+1)-1)` (program `A095120.P17792172950455986032`, by `A095120.P17792172950455986032.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095120.P17792172950455986032

`A000040(3^(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095120

/-- `A000040(3^(n+1)-1)` -/
def P17792172950455986032.Spec : Prop :=
  ∀ n, P17792172950455986032.a n = A095120 (n + 1)

theorem P17792172950455986032.correct : P17792172950455986032.Spec := by
  intro n
  simp only [A095120, Nat.add_sub_cancel]

end A095120

/-! ## A095120.P8526934630500578442

`A151799(A038833(n+1))`
-/

namespace A095120.P8526934630500578442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A038833 (n + 1)).toNat

end

end A095120.P8526934630500578442

namespace A095120

/-- `A151799(A038833(n+1))` -/
def P8526934630500578442.Spec : Prop :=
  ∀ n, P8526934630500578442.a n = A095120 (n + 1)

end A095120

/-! ## A095120.P11500338812024966652

`A031393(A007051(n))`
-/

namespace A095120.P11500338812024966652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031393 (A007051 n).toNat

end

end A095120.P11500338812024966652

namespace A095120

/-- `A031393(A007051(n))` -/
def P11500338812024966652.Spec : Prop :=
  ∀ n, P11500338812024966652.a n = A095120 (n + 1)

end A095120

/-! ## A095120.P16586461505160916126

`A031393(A201730(∑[n]))`
-/

namespace A095120.P16586461505160916126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031393 (A201730 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A095120.P16586461505160916126

namespace A095120

/-- `A031393(A201730(∑[n]))` -/
def P16586461505160916126.Spec : Prop :=
  ∀ n, P16586461505160916126.a n = A095120 (n + 1)

end A095120

/-! ## A095120.P654311467952594558

`A031393(A003462(n)+1)`
-/

namespace A095120.P654311467952594558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031393 (A003462 n + 1).toNat

end

end A095120.P654311467952594558

namespace A095120

/-- `A031393(A003462(n)+1)` -/
def P654311467952594558.Spec : Prop :=
  ∀ n, P654311467952594558.a n = A095120 (n + 1)

end A095120

/-!
# A095121: Expansion of (1-x+2x^2)/((1-x)*(1-2x)).

The programs for A095121, the canonical program `A095121.P4101196610852856255` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095121 has offset 0).

The definition of A095121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2)/(1-3x+2x^2))` (program `A095121.P4101196610852856255`, by `A095121.P4101196610852856255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095121.P4101196610852856255

`ogf((1-x+2x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095121

/-- `ogf((1-x+2x^2)/(1-3x+2x^2))` -/
def P4101196610852856255.Spec : Prop :=
  ∀ n, P4101196610852856255.a n = A095121 n

theorem P4101196610852856255.correct : P4101196610852856255.Spec := by
  intro n
  simp only [A095121]

end A095121

/-! ## A095121.P7315330406200092026

`2+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A095121.P7315330406200092026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 + 2 * a (n - 1)

end

end A095121.P7315330406200092026

namespace A095121

/-- `2+2*a(n-1)` -/
def P7315330406200092026.Spec : Prop :=
  ∀ n, (P7315330406200092026.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P15713819504088536803

`∑{#}[n, 2^#*A123110(C(n+1, 2)+#)]`
-/

namespace A095121.P15713819504088536803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℤ) * A123110 (Nat.choose (n + 1) 2 + k)

end

end A095121.P15713819504088536803

namespace A095121

/-- `∑{#}[n, 2^#*A123110(C(n+1, 2)+#)]` -/
def P15713819504088536803.Spec : Prop :=
  ∀ n, P15713819504088536803.a n = A095121 n

end A095121

/-! ## A095121.P4062891357299292926

`∑[ceil(atan(n))^n]`
-/

namespace A095121.P4062891357299292926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095121.P4062891357299292926

namespace A095121

/-- `∑[ceil(atan(n))^n]` -/
def P4062891357299292926.Spec : Prop :=
  ∀ n, P4062891357299292926.a n = A095121 n

end A095121

/-! ## A095121.P5829474025268824976

`record[abs(2-2^n)]`
-/

namespace A095121.P5829474025268824976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095121.P5829474025268824976

namespace A095121

/-- `record[abs(2-2^n)]` -/
def P5829474025268824976.Spec : Prop :=
  ∀ n, P5829474025268824976.a n = A095121 n

end A095121

/-! ## A095121.P750578523813601477

`∑[(2-char[1])^n]`
-/

namespace A095121.P750578523813601477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095121.P750578523813601477

namespace A095121

/-- `∑[(2-char[1])^n]` -/
def P750578523813601477.Spec : Prop :=
  ∀ n, P750578523813601477.a n = A095121 n

end A095121

/-! ## A095121.P2910423641663073019

`lcm(2, a(n-1)+1)` with `a(0)=1`
-/

namespace A095121.P2910423641663073019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A095121.P2910423641663073019

namespace A095121

/-- `lcm(2, a(n-1)+1)` -/
def P2910423641663073019.Spec : Prop :=
  ∀ n, (P2910423641663073019.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P11124819896116703496

`2*or(1, a(n-1))` with `a(0)=1`
-/

namespace A095121.P11124819896116703496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A095121.P11124819896116703496

namespace A095121

/-- `2*or(1, a(n-1))` -/
def P11124819896116703496.Spec : Prop :=
  ∀ n, (P11124819896116703496.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P18133237054749120597

`2*(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A095121.P18133237054749120597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + 1)

end

end A095121.P18133237054749120597

namespace A095121

/-- `2*(a(n-1)+1)` -/
def P18133237054749120597.Spec : Prop :=
  ∀ n, (P18133237054749120597.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P6538432829808239936

`2*xor(1, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A095121.P6538432829808239936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A095121.P6538432829808239936

namespace A095121

/-- `2*xor(1, a(n-1))` -/
def P6538432829808239936.Spec : Prop :=
  ∀ n, (P6538432829808239936.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P13972565504046184138

`or(2, lcm(4, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A095121.P13972565504046184138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 2 (Nat.lcm 4 (a (n - 1)))

end

end A095121.P13972565504046184138

namespace A095121

/-- `or(2, lcm(4, a(n-1)))` -/
def P13972565504046184138.Spec : Prop :=
  ∀ n, (P13972565504046184138.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P4082438703489888092

`a(n-1)+2^n` with `a(0)=1, a(1)=2`
-/

namespace A095121.P4082438703489888092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 2 ^ n

end

end A095121.P4082438703489888092

namespace A095121

/-- `a(n-1)+2^n` -/
def P4082438703489888092.Spec : Prop :=
  ∀ n, (P4082438703489888092.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P15749177367577916912

`or(2^n, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A095121.P15749177367577916912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (2 ^ n) (a (n - 1))

end

end A095121.P15749177367577916912

namespace A095121

/-- `or(2^n, a(n-1))` -/
def P15749177367577916912.Spec : Prop :=
  ∀ n, (P15749177367577916912.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P10540648302110605079

`xor(2^n, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A095121.P10540648302110605079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor (2 ^ n) (a (n - 1))

end

end A095121.P10540648302110605079

namespace A095121

/-- `xor(2^n, a(n-1))` -/
def P10540648302110605079.Spec : Prop :=
  ∀ n, (P10540648302110605079.a n : ℤ) = A095121 n

end A095121

/-! ## A095121.P5413194534316787030

`∑[2^n]-floor(atan(n+1))`
-/

namespace A095121.P5413194534316787030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A095121.P5413194534316787030

namespace A095121

/-- `∑[2^n]-floor(atan(n+1))` -/
def P5413194534316787030.Spec : Prop :=
  ∀ n, P5413194534316787030.a n = A095121 n

end A095121

/-! ## A095121.P5332257981070397240

`record[2*a(n-1)]-2` with `a(0)=3, a(1)=1`
-/

namespace A095121.P5332257981070397240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A095121.P5332257981070397240

namespace A095121

/-- `record[2*a(n-1)]-2` -/
def P5332257981070397240.Spec : Prop :=
  ∀ n, P5332257981070397240.a n = A095121 n

end A095121

/-! ## A095121.P6459173305450513062

`floor(2^(n+1)-atan(n+1))`
-/

namespace A095121.P6459173305450513062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℝ) - Real.arctan (n + 1 : ℝ)⌋

end

end A095121.P6459173305450513062

namespace A095121

/-- `floor(2^(n+1)-atan(n+1))` -/
def P6459173305450513062.Spec : Prop :=
  ∀ n, P6459173305450513062.a n = A095121 n

end A095121

/-! ## A095121.P10874283689319911215

`2^(n+1)-ceil(atan(n+1))`
-/

namespace A095121.P10874283689319911215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A095121.P10874283689319911215

namespace A095121

/-- `2^(n+1)-ceil(atan(n+1))` -/
def P10874283689319911215.Spec : Prop :=
  ∀ n, P10874283689319911215.a n = A095121 n

end A095121

/-! ## A095121.P7974599907509464432

`2^(n+1)-(3-ceil(acot(n)))`
-/

namespace A095121.P7974599907509464432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A095121.P7974599907509464432

namespace A095121

/-- `2^(n+1)-(3-ceil(acot(n)))` -/
def P7974599907509464432.Spec : Prop :=
  ∀ n, P7974599907509464432.a n = A095121 n

end A095121

/-! ## A095121.P3148886319429040409

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A095121.P3148886319429040409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A095121.P3148886319429040409

namespace A095121

/-- `4-2*(1-a(n-1))` -/
def P3148886319429040409.Spec : Prop :=
  ∀ n, P3148886319429040409.a n = A095121 n

end A095121

/-!
# A095122: a(n) = Fibonacci(n)*(2*Fibonacci(n)-1).

The programs for A095122, the canonical program `A095122.P15035804079666453` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095122 has offset 0).

The definition of A095122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*(2*A000045(n)-1)` (program `A095122.P15035804079666453`, by `A095122.P15035804079666453.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095122.P4354099278879999350

`ogf((x-2x^2+2x^3+x^4)/(1-3x-x^2+5x^3+x^4-x^5))`
-/

namespace A095122.P4354099278879999350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2, 1] [1, -3, -1, 5, 1, -1] n

end

end A095122.P4354099278879999350

namespace A095122

/-- `ogf((x-2x^2+2x^3+x^4)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P4354099278879999350.Spec : Prop :=
  ∀ n, P4354099278879999350.a n = A095122 n

end A095122

/-! ## A095122.P15035804079666453

`A000045(n)*(2*A000045(n)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095122

/-- `A000045(n)*(2*A000045(n)-1)` -/
def P15035804079666453.Spec : Prop :=
  ∀ n, P15035804079666453.a n = A095122 n

theorem P15035804079666453.correct : P15035804079666453.Spec := by
  intro n
  simp only [A095122]

end A095122

/-! ## A095122.P2836084609535369254

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6, a(4)=15`
-/

namespace A095122.P2836084609535369254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 6, 15] fun n a =>
  3 * a (n - 1) + a (n - 2) - 5 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A095122.P2836084609535369254

namespace A095122

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P2836084609535369254.Spec : Prop :=
  ∀ n, P2836084609535369254.a n = A095122 n

end A095122

/-! ## A095122.P6895649830202397771

`(n-∑[a(n-1)-(1-a(n-2))])*A000045(n)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A095122.P6895649830202397771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A000045 n

end

end A095122.P6895649830202397771

namespace A095122

/-- `(n-∑[a(n-1)-(1-a(n-2))])*A000045(n)` -/
def P6895649830202397771.Spec : Prop :=
  ∀ n, P6895649830202397771.a n = A095122 n

end A095122

/-! ## A095122.P9612279791501099289

`A382843(n)+A000045(n)`
-/

namespace A095122.P9612279791501099289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A000045 n

end

end A095122.P9612279791501099289

namespace A095122

/-- `A382843(n)+A000045(n)` -/
def P9612279791501099289.Spec : Prop :=
  ∀ n, P9612279791501099289.a n = A095122 n

theorem P9612279791501099289.correct : P9612279791501099289.Spec := by
  intro n
  simp only [A095122, Nat.add_sub_cancel, A095122.P9612279791501099289.a, A095122.P15035804079666453.a, A000045, A000045.P11838749114346432762.a, A382843, A382843.P16467974130948964599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095122

/-! ## A095122.P4548637974507934243

`A175395(n)-A000045(n)`
-/

namespace A095122.P4548637974507934243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A000045 n

end

end A095122.P4548637974507934243

namespace A095122

/-- `A175395(n)-A000045(n)` -/
def P4548637974507934243.Spec : Prop :=
  ∀ n, P4548637974507934243.a n = A095122 n

theorem P4548637974507934243.correct : P4548637974507934243.Spec := by
  intro n
  simp only [A095122, Nat.add_sub_cancel, A095122.P4548637974507934243.a, A095122.P15035804079666453.a, A000045, A000045.P11838749114346432762.a, A175395, A175395.P1994188799197197583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095122

/-! ## A095122.P16932522473673401491

`A382608(n)-A022086(n)`
-/

namespace A095122.P16932522473673401491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n - A022086 n

end

end A095122.P16932522473673401491

namespace A095122

/-- `A382608(n)-A022086(n)` -/
def P16932522473673401491.Spec : Prop :=
  ∀ n, P16932522473673401491.a n = A095122 n

end A095122

/-! ## A095122.P10431564772321370121

`A392415(n+1)-A001611(n)`
-/

namespace A095122.P10431564772321370121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - A001611 n

end

end A095122.P10431564772321370121

namespace A095122

/-- `A392415(n+1)-A001611(n)` -/
def P10431564772321370121.Spec : Prop :=
  ∀ n, P10431564772321370121.a n = A095122 n

end A095122

/-! ## A095122.P8746824967964700452

`(A055389(n)-1)*A000045(n)`
-/

namespace A095122.P8746824967964700452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055389 n - 1) * A000045 n

end

end A095122.P8746824967964700452

namespace A095122

/-- `(A055389(n)-1)*A000045(n)` -/
def P8746824967964700452.Spec : Prop :=
  ∀ n, P8746824967964700452.a n = A095122 n

end A095122

/-! ## A095122.P4898841260772106264

`A007598(n)+2*A191797(n)`
-/

namespace A095122.P4898841260772106264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + 2 * A191797 n

end

end A095122.P4898841260772106264

namespace A095122

/-- `A007598(n)+2*A191797(n)` -/
def P4898841260772106264.Spec : Prop :=
  ∀ n, P4898841260772106264.a n = A095122 n

end A095122

/-! ## A095122.P3074292262166399633

`(A001588(n)-2)*A000045(n)`
-/

namespace A095122.P3074292262166399633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001588 n - 2) * A000045 n

end

end A095122.P3074292262166399633

namespace A095122

/-- `(A001588(n)-2)*A000045(n)` -/
def P3074292262166399633.Spec : Prop :=
  ∀ n, P3074292262166399633.a n = A095122 n

end A095122

/-! ## A095122.P14109531309084960355

`2*A007598(n)-A000045(n)`
-/

namespace A095122.P14109531309084960355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n - A000045 n

end

end A095122.P14109531309084960355

namespace A095122

/-- `2*A007598(n)-A000045(n)` -/
def P14109531309084960355.Spec : Prop :=
  ∀ n, P14109531309084960355.a n = A095122 n

theorem P14109531309084960355.correct : P14109531309084960355.Spec := by
  intro n
  simp only [A095122, Nat.add_sub_cancel, A095122.P14109531309084960355.a, A095122.P15035804079666453.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095122

/-! ## A095122.P2463093725830787111

`A229912(n)-2*A000045(n)`
-/

namespace A095122.P2463093725830787111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - 2 * A000045 n

end

end A095122.P2463093725830787111

namespace A095122

/-- `A229912(n)-2*A000045(n)` -/
def P2463093725830787111.Spec : Prop :=
  ∀ n, P2463093725830787111.a n = A095122 n

theorem P2463093725830787111.correct : P2463093725830787111.Spec := by
  intro n
  simp only [A095122, Nat.add_sub_cancel, A095122.P2463093725830787111.a, A095122.P15035804079666453.a, A000045, A000045.P11838749114346432762.a, A229912, A229912.P11352936917927614539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095122

/-! ## A095122.P11329781824066253925

`A175395(n)-A103609(2*n)`
-/

namespace A095122.P11329781824066253925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A103609 (2 * n)

end

end A095122.P11329781824066253925

namespace A095122

/-- `A175395(n)-A103609(2*n)` -/
def P11329781824066253925.Spec : Prop :=
  ∀ n, P11329781824066253925.a n = A095122 n

end A095122

/-! ## A095122.P18286602323789278858

`A295680(Δ[n²])-A000045(n)`
-/

namespace A095122.P18286602323789278858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000045 n

end

end A095122.P18286602323789278858

namespace A095122

/-- `A295680(Δ[n²])-A000045(n)` -/
def P18286602323789278858.Spec : Prop :=
  ∀ n, P18286602323789278858.a n = A095122 n

end A095122

/-! ## A095122.P11890158666909727415

`A000045(n)²+A262184(n)-1`
-/

namespace A095122.P11890158666909727415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + (A262184 n - 1)

end

end A095122.P11890158666909727415

namespace A095122

/-- `A000045(n)²+A262184(n)-1` -/
def P11890158666909727415.Spec : Prop :=
  ∀ n, P11890158666909727415.a n = A095122 n

theorem P11890158666909727415.correct : P11890158666909727415.Spec := by
  intro n
  simp only [A095122, Nat.add_sub_cancel, A095122.P11890158666909727415.a, A095122.P15035804079666453.a, A000045, A000045.P11838749114346432762.a, A262184, A262184.P505657882986553229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095122

/-! ## A095122.P2086741189683738798

`A000045(n)²+2*A191797(n)`
-/

namespace A095122.P2086741189683738798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + 2 * A191797 n

end

end A095122.P2086741189683738798

namespace A095122

/-- `A000045(n)²+2*A191797(n)` -/
def P2086741189683738798.Spec : Prop :=
  ∀ n, P2086741189683738798.a n = A095122 n

end A095122

/-! ## A095122.P6972960186025138664

`A236191(n)²+2*A191797(n)`
-/

namespace A095122.P6972960186025138664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n ^ 2 + 2 * A191797 n

end

end A095122.P6972960186025138664

namespace A095122

/-- `A236191(n)²+2*A191797(n)` -/
def P6972960186025138664.Spec : Prop :=
  ∀ n, P6972960186025138664.a n = A095122 n

end A095122

/-! ## A095122.P15141291375396971281

`(Δ[A001595(n)]-1)*A000045(n)`
-/

namespace A095122.P15141291375396971281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A000045 n

end

end A095122.P15141291375396971281

namespace A095122

/-- `(Δ[A001595(n)]-1)*A000045(n)` -/
def P15141291375396971281.Spec : Prop :=
  ∀ n, P15141291375396971281.a n = A095122 n

end A095122

/-!
# A095124: a(n) = prime(2^(2^n)).

The programs for A095124, the canonical program `A095124.P2733019777204179774` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095124 has offset 0).

The definition of A095124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095124.P2733019777204179774

`A033844(2^n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095124

/-- `A033844(2^n)` -/
def P2733019777204179774.Spec : Prop :=
  ∀ n, P2733019777204179774.a n = A095124 n

theorem P2733019777204179774.correct : P2733019777204179774.Spec := by
  intro n
  simp only [A095124]

end A095124

/-!
# A095125: Expansion of -x*(-1-x+x^2) / ( 1-2*x-3*x^2+x^3 ).

The programs for A095125, the canonical program `A095125.P15906161963637185253` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095125 has offset 1).

The definition of A095125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-2x-3x^2+x^3))` (program `A095125.P15906161963637185253`, by `A095125.P15906161963637185253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095125.P15906161963637185253

`ogf((1+x-x^2)/(1-2x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095125

/-- `ogf((1+x-x^2)/(1-2x-3x^2+x^3))` -/
def P15906161963637185253.Spec : Prop :=
  ∀ n, P15906161963637185253.a n = A095125 (n + 1)

theorem P15906161963637185253.correct : P15906161963637185253.Spec := by
  intro n
  simp only [A095125, Nat.add_sub_cancel]

end A095125

/-! ## A095125.P11801700380747112897

`∑[A143787(n)+A122299(n+1)]`
-/

namespace A095125.P11801700380747112897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143787 n + A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095125.P11801700380747112897

namespace A095125

/-- `∑[A143787(n)+A122299(n+1)]` -/
def P11801700380747112897.Spec : Prop :=
  ∀ n, P11801700380747112897.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P348354507931389114

`A095127(n+1)-∑[A122299(n+1)]`
-/

namespace A095125.P348354507931389114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095125.P348354507931389114

namespace A095125

/-- `A095127(n+1)-∑[A122299(n+1)]` -/
def P348354507931389114.Spec : Prop :=
  ∀ n, P348354507931389114.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P5961342764308457977

`A122299(n+1)+∑[A122299(n+2)]`
-/

namespace A095125.P5961342764308457977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095125.P5961342764308457977

namespace A095125

/-- `A122299(n+1)+∑[A122299(n+2)]` -/
def P5961342764308457977.Spec : Prop :=
  ∀ n, P5961342764308457977.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P16230225665028639280

`A095127(n+1)+A095127(n+1)-A095310(n+1)`
-/

namespace A095125.P16230225665028639280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) + (A095127 (n + 1) - A095310 (n + 1))

end

end A095125.P16230225665028639280

namespace A095125

/-- `A095127(n+1)+A095127(n+1)-A095310(n+1)` -/
def P16230225665028639280.Spec : Prop :=
  ∀ n, P16230225665028639280.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P5874790709562111316

`Δ[A101169(n)]-A101169(n)`
-/

namespace A095125.P5874790709562111316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101169 n

end

end A095125.P5874790709562111316

namespace A095125

/-- `Δ[A101169(n)]-A101169(n)` -/
def P5874790709562111316.Spec : Prop :=
  ∀ n, P5874790709562111316.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P18215038822145678689

`A101169(n+1)-2*A101169(n)`
-/

namespace A095125.P18215038822145678689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101169 (n + 1) - 2 * A101169 n

end

end A095125.P18215038822145678689

namespace A095125

/-- `A101169(n+1)-2*A101169(n)` -/
def P18215038822145678689.Spec : Prop :=
  ∀ n, P18215038822145678689.a n = A095125 (n + 1)

end A095125

/-! ## A095125.P223793386070327915

`2*A095127(n+1)-A095310(n+1)`
-/

namespace A095125.P223793386070327915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095127 (n + 1) - A095310 (n + 1)

end

end A095125.P223793386070327915

namespace A095125

/-- `2*A095127(n+1)-A095310(n+1)` -/
def P223793386070327915.Spec : Prop :=
  ∀ n, P223793386070327915.a n = A095125 (n + 1)

end A095125

/-!
# A095126: Expansion of x*(4+5*x-x^2)/ (1-2*x-3*x^2+x^3).

The programs for A095126, the canonical program `A095126.P11191423715904873545` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095126 has offset 1).

The definition of A095126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+5x-x^2)/(1-2x-3x^2+x^3))` (program `A095126.P11191423715904873545`, by `A095126.P11191423715904873545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095126.P11191423715904873545

`ogf((4+5x-x^2)/(1-2x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095126

/-- `ogf((4+5x-x^2)/(1-2x-3x^2+x^3))` -/
def P11191423715904873545.Spec : Prop :=
  ∀ n, P11191423715904873545.a n = A095126 (n + 1)

theorem P11191423715904873545.correct : P11191423715904873545.Spec := by
  intro n
  simp only [A095126, Nat.add_sub_cancel]

end A095126

/-! ## A095126.P545149050355798677

`∑[3*A095125(n+1)]+1`
-/

namespace A095126.P545149050355798677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095126.P545149050355798677

namespace A095126

/-- `∑[3*A095125(n+1)]+1` -/
def P545149050355798677.Spec : Prop :=
  ∀ n, P545149050355798677.a n = A095126 (n + 1)

end A095126

/-! ## A095126.P8852008567464295984

`A143787(n+1)+A101169(n+1)`
-/

namespace A095126.P8852008567464295984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143787 (n + 1) + A101169 (n + 1)

end

end A095126.P8852008567464295984

namespace A095126

/-- `A143787(n+1)+A101169(n+1)` -/
def P8852008567464295984.Spec : Prop :=
  ∀ n, P8852008567464295984.a n = A095126 (n + 1)

end A095126

/-! ## A095126.P18438489184144538353

`A095127(n+1)+3*A101169(n)`
-/

namespace A095126.P18438489184144538353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) + 3 * A101169 n

end

end A095126.P18438489184144538353

namespace A095126

/-- `A095127(n+1)+3*A101169(n)` -/
def P18438489184144538353.Spec : Prop :=
  ∀ n, P18438489184144538353.a n = A095126 (n + 1)

end A095126

/-! ## A095126.P4595671738041686358

`A122299(n+1)+4*A101169(n)`
-/

namespace A095126.P4595671738041686358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + 4 * A101169 n

end

end A095126.P4595671738041686358

namespace A095126

/-- `A122299(n+1)+4*A101169(n)` -/
def P4595671738041686358.Spec : Prop :=
  ∀ n, P4595671738041686358.a n = A095126 (n + 1)

end A095126

/-! ## A095126.P718858670352480359

`Δ[A095125(n+2)]-A095125(n+1)`
-/

namespace A095126.P718858670352480359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095125 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095125 (n + 1)

end

end A095126.P718858670352480359

namespace A095126

/-- `Δ[A095125(n+2)]-A095125(n+1)` -/
def P718858670352480359.Spec : Prop :=
  ∀ n, P718858670352480359.a n = A095126 (n + 1)

end A095126

/-!
# A095127: a(n+3) = 2*a(n+2) + 3*a(n+1) - a(n); with a(1) = 1, a(2) = 4, a(3) = 10.

The programs for A095127, the canonical program `A095127.P12873937581092107135` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095127 has offset 1).

The definition of A095127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095127.P54824818035050292

`ogf((1+2x-x^2)/(1-2x-3x^2+x^3))`
-/

namespace A095127.P54824818035050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -2, -3, 1] n

end

end A095127.P54824818035050292

namespace A095127

/-- `ogf((1+2x-x^2)/(1-2x-3x^2+x^3))` -/
def P54824818035050292.Spec : Prop :=
  ∀ n, P54824818035050292.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P12873937581092107135

`2*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095127

/-- `2*a(n-1)+3*a(n-2)-a(n-3)` -/
def P12873937581092107135.Spec : Prop :=
  ∀ n, P12873937581092107135.a n = A095127 (n + 1)

theorem P12873937581092107135.correct : P12873937581092107135.Spec := by
  intro n
  simp only [A095127, Nat.add_sub_cancel]

end A095127

/-! ## A095127.P5479899585869883673

`A122299(n+1)+A101169(n)`
-/

namespace A095127.P5479899585869883673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + A101169 n

end

end A095127.P5479899585869883673

namespace A095127

/-- `A122299(n+1)+A101169(n)` -/
def P5479899585869883673.Spec : Prop :=
  ∀ n, P5479899585869883673.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P1513498988381329724

`A122299(n+1)+∑[∑[A143787(n)]]`
-/

namespace A095127.P1513498988381329724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095127.P1513498988381329724

namespace A095127

/-- `A122299(n+1)+∑[∑[A143787(n)]]` -/
def P1513498988381329724.Spec : Prop :=
  ∀ n, P1513498988381329724.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P3035642466498445163

`A095310(n+1)-∑[A122299(n+1)]`
-/

namespace A095127.P3035642466498445163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095310 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095127.P3035642466498445163

namespace A095127

/-- `A095310(n+1)-∑[A122299(n+1)]` -/
def P3035642466498445163.Spec : Prop :=
  ∀ n, P3035642466498445163.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P13151909015097877092

`A122299(n+3)-∑[A122299(n+1)]`
-/

namespace A095127.P13151909015097877092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095127.P13151909015097877092

namespace A095127

/-- `A122299(n+3)-∑[A122299(n+1)]` -/
def P13151909015097877092.Spec : Prop :=
  ∀ n, P13151909015097877092.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P5884175436539749134

`(A095310(n+1)+A095125(n+1))/2`
-/

namespace A095127.P5884175436539749134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095310 (n + 1) + A095125 (n + 1) : ℚ) / 2

end

end A095127.P5884175436539749134

namespace A095127

/-- `(A095310(n+1)+A095125(n+1))/2` -/
def P5884175436539749134.Spec : Prop :=
  ∀ n, P5884175436539749134.a n = (A095127 (n + 1) : ℚ)

end A095127

/-! ## A095127.P7752014193647491811

`A095125(n+2)+A095125(n+2)-A095310(n+2)`
-/

namespace A095127.P7752014193647491811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095125 (n + 2) + (A095125 (n + 2) - A095310 (n + 2))

end

end A095127.P7752014193647491811

namespace A095127

/-- `A095125(n+2)+A095125(n+2)-A095310(n+2)` -/
def P7752014193647491811.Spec : Prop :=
  ∀ n, P7752014193647491811.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P6470577374069133191

`2*A095125(n+2)-A095310(n+2)`
-/

namespace A095127.P6470577374069133191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095125 (n + 2) - A095310 (n + 2)

end

end A095127.P6470577374069133191

namespace A095127

/-- `2*A095125(n+2)-A095310(n+2)` -/
def P6470577374069133191.Spec : Prop :=
  ∀ n, P6470577374069133191.a n = A095127 (n + 1)

end A095127

/-! ## A095127.P10435843935653103582

`(A101169(n+4)-A101169(n+1))%A101169(n+2)`
-/

namespace A095127.P10435843935653103582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101169 (n + 4) - A101169 (n + 1)) (A101169 (n + 2))

end

end A095127.P10435843935653103582

namespace A095127

/-- `(A101169(n+4)-A101169(n+1))%A101169(n+2)` -/
def P10435843935653103582.Spec : Prop :=
  ∀ n, P10435843935653103582.a n = A095127 (n + 1)

end A095127

/-!
# A095128: a(n+3) = 3*a(n+2) + 2*a(n+1) - a(n).

The programs for A095128, the canonical program `A095128.P10663396764007546758` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095128 has offset 1).

The definition of A095128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095128.P10663396764007546758

`ogf((1+x-x^2)/(1-3x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095128

/-- `ogf((1+x-x^2)/(1-3x-2x^2+x^3))` -/
def P10663396764007546758.Spec : Prop :=
  ∀ n, P10663396764007546758.a n = A095128 (n + 1)

theorem P10663396764007546758.correct : P10663396764007546758.Spec := by
  intro n
  simp only [A095128, Nat.add_sub_cancel]

end A095128

/-! ## A095128.P3984349872855754375

`A110655(floor(sqrt(A297377(n+1))))`
-/

namespace A095128.P3984349872855754375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.sqrt (A297377 (n + 1))).toNat

end

end A095128.P3984349872855754375

namespace A095128

/-- `A110655(floor(sqrt(A297377(n+1))))` -/
def P3984349872855754375.Spec : Prop :=
  ∀ n, P3984349872855754375.a n = A095128 (n + 1)

end A095128

/-! ## A095128.P1497972868899536096

`A110655(round(sqrt(A297377(n+1))))`
-/

namespace A095128.P1497972868899536096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (SequenceMachineLib.roundAway (Real.sqrt (A297377 (n + 1) : ℝ))).toNat

end

end A095128.P1497972868899536096

namespace A095128

/-- `A110655(round(sqrt(A297377(n+1))))` -/
def P1497972868899536096.Spec : Prop :=
  ∀ n, P1497972868899536096.a n = A095128 (n + 1)

end A095128

/-!
# A095129: a(n) = Jac(n)*(2Jac(n)-1), where Jac(n) = A001045(n).

The programs for A095129, the canonical program `A095129.P5080845709183079424` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095129 has offset 0).

The definition of A095129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095129.P6967870434296787767

`ogf((x-3x^2+6x^3)/(1-4x-5x^2+20x^3+4x^4-16x^5))`
-/

namespace A095129.P6967870434296787767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 6] [1, -4, -5, 20, 4, -16] n

end

end A095129.P6967870434296787767

namespace A095129

/-- `ogf((x-3x^2+6x^3)/(1-4x-5x^2+20x^3+4x^4-16x^5))` -/
def P6967870434296787767.Spec : Prop :=
  ∀ n, P6967870434296787767.a n = A095129 n

end A095129

/-! ## A095129.P5080845709183079424

`2*(4^n+1)/9-4*(-2)^n/9-2^n/3+(-1)^n/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095129

/-- `2*(4^n+1)/9-4*(-2)^n/9-2^n/3+(-1)^n/3` -/
def P5080845709183079424.Spec : Prop :=
  ∀ n, P5080845709183079424.a n = (A095129 n : ℚ)

end A095129

/-! ## A095129.P1580295399358873830

`(A014113(n)-1)*A001045(n)`
-/

namespace A095129.P1580295399358873830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014113 n - 1) * A001045 n

end

end A095129.P1580295399358873830

namespace A095129

/-- `(A014113(n)-1)*A001045(n)` -/
def P1580295399358873830.Spec : Prop :=
  ∀ n, P1580295399358873830.a n = A095129 n

end A095129

/-! ## A095129.P17811919381701169747

`lcm(A001045(n), A083943(n+1))`
-/

namespace A095129.P17811919381701169747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001045 n) (A083943 (n + 1))

end

end A095129.P17811919381701169747

namespace A095129

/-- `lcm(A001045(n), A083943(n+1))` -/
def P17811919381701169747.Spec : Prop :=
  ∀ n, (P17811919381701169747.a n : ℤ) = A095129 n

end A095129

/-! ## A095129.P11335562780879672032

`(Δ[A001045(n+1)]-1)*A001045(n)`
-/

namespace A095129.P11335562780879672032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A001045 n

end

end A095129.P11335562780879672032

namespace A095129

/-- `(Δ[A001045(n+1)]-1)*A001045(n)` -/
def P11335562780879672032.Spec : Prop :=
  ∀ n, P11335562780879672032.a n = A095129 n

end A095129

/-! ## A095129.P18433257318560032654

`(A078008(n+1)-1)*A133684(2*n)`
-/

namespace A095129.P18433257318560032654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 (n + 1) - 1) * A133684 (2 * n)

end

end A095129.P18433257318560032654

namespace A095129

/-- `(A078008(n+1)-1)*A133684(2*n)` -/
def P18433257318560032654.Spec : Prop :=
  ∀ n, P18433257318560032654.a n = A095129 n

end A095129

/-! ## A095129.P6224863237140966232

`(A078008(n+1)-1)*A133730(2*n+1)`
-/

namespace A095129.P6224863237140966232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 (n + 1) - 1) * A133730 (2 * n + 1)

end

end A095129.P6224863237140966232

namespace A095129

/-- `(A078008(n+1)-1)*A133730(2*n+1)` -/
def P6224863237140966232.Spec : Prop :=
  ∀ n, P6224863237140966232.a n = A095129 n

end A095129

/-! ## A095129.P2881422694349802549

`(A230096(2*(n+1))-1)*A133684(2*n)`
-/

namespace A095129.P2881422694349802549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230096 (2 * (n + 1)) - 1) * A133684 (2 * n)

end

end A095129.P2881422694349802549

namespace A095129

/-- `(A230096(2*(n+1))-1)*A133684(2*n)` -/
def P2881422694349802549.Spec : Prop :=
  ∀ n, P2881422694349802549.a n = A095129 n

end A095129

/-! ## A095129.P7369186533139267292

`(A167030(n)+A001045(n))*A001045(n)`
-/

namespace A095129.P7369186533139267292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 n + A001045 n) * A001045 n

end

end A095129.P7369186533139267292

namespace A095129

/-- `(A167030(n)+A001045(n))*A001045(n)` -/
def P7369186533139267292.Spec : Prop :=
  ∀ n, P7369186533139267292.a n = A095129 n

end A095129

/-! ## A095129.P2373303930734772184

`(A167030(n)+A152046(n))*A152046(n)`
-/

namespace A095129.P2373303930734772184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 n + A152046 n) * A152046 n

end

end A095129.P2373303930734772184

namespace A095129

/-- `(A167030(n)+A152046(n))*A152046(n)` -/
def P2373303930734772184.Spec : Prop :=
  ∀ n, P2373303930734772184.a n = A095129 n

end A095129

/-! ## A095129.P4693779425857180588

`(A000975(n)-A059841(n))*A001045(n)`
-/

namespace A095129.P4693779425857180588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 n - A059841 n) * A001045 n

end

end A095129.P4693779425857180588

namespace A095129

/-- `(A000975(n)-A059841(n))*A001045(n)` -/
def P4693779425857180588.Spec : Prop :=
  ∀ n, P4693779425857180588.a n = A095129 n

end A095129

/-! ## A095129.P4539407915047892753

`(A000225(n)-A078008(n))*A001045(n)`
-/

namespace A095129.P4539407915047892753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n - A078008 n) * A001045 n

end

end A095129.P4539407915047892753

namespace A095129

/-- `(A000225(n)-A078008(n))*A001045(n)` -/
def P4539407915047892753.Spec : Prop :=
  ∀ n, P4539407915047892753.a n = A095129 n

end A095129

/-! ## A095129.P1373728100544464598

`(A097074(n)-A097073(n))*A001045(n)`
-/

namespace A095129.P1373728100544464598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097074 n - A097073 n) * A001045 n

end

end A095129.P1373728100544464598

namespace A095129

/-- `(A097074(n)-A097073(n))*A001045(n)` -/
def P1373728100544464598.Spec : Prop :=
  ∀ n, P1373728100544464598.a n = A095129 n

end A095129

/-! ## A095129.P13078565793470192857

`(A000975(n)-A000035(n+1))*A001045(n)`
-/

namespace A095129.P13078565793470192857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 n - A000035 (n + 1)) * A001045 n

end

end A095129.P13078565793470192857

namespace A095129

/-- `(A000975(n)-A000035(n+1))*A001045(n)` -/
def P13078565793470192857.Spec : Prop :=
  ∀ n, P13078565793470192857.a n = A095129 n

end A095129

/-! ## A095129.P15384100577221664162

`(A026644(n)-A001045(n+1))*A001045(n)`
-/

namespace A095129.P15384100577221664162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026644 n - A001045 (n + 1)) * A001045 n

end

end A095129.P15384100577221664162

namespace A095129

/-- `(A026644(n)-A001045(n+1))*A001045(n)` -/
def P15384100577221664162.Spec : Prop :=
  ∀ n, P15384100577221664162.a n = A095129 n

end A095129

/-! ## A095129.P8720285787987138451

`(A084214(n+1)-A000051(n))*A001045(n)`
-/

namespace A095129.P8720285787987138451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084214 (n + 1) - A000051 n) * A001045 n

end

end A095129.P8720285787987138451

namespace A095129

/-- `(A084214(n+1)-A000051(n))*A001045(n)` -/
def P8720285787987138451.Spec : Prop :=
  ∀ n, P8720285787987138451.a n = A095129 n

end A095129

/-! ## A095129.P13089701708272151185

`(A283642(n)-A128209(n+1))*A001045(n)`
-/

namespace A095129.P13089701708272151185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A283642 n - A128209 (n + 1)) * A001045 n

end

end A095129.P13089701708272151185

namespace A095129

/-- `(A283642(n)-A128209(n+1))*A001045(n)` -/
def P13089701708272151185.Spec : Prop :=
  ∀ n, P13089701708272151185.a n = A095129 n

end A095129

/-! ## A095129.P8347327223980850676

`(A001045(n+1)-A010673(n+1))*A001045(n)`
-/

namespace A095129.P8347327223980850676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A010673 (n + 1)) * A001045 n

end

end A095129.P8347327223980850676

namespace A095129

/-- `(A001045(n+1)-A010673(n+1))*A001045(n)` -/
def P8347327223980850676.Spec : Prop :=
  ∀ n, P8347327223980850676.a n = A095129 n

end A095129

/-! ## A095129.P8335854498926396882

`(A128209(n+1)-A010684(n+1))*A001045(n)`
-/

namespace A095129.P8335854498926396882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128209 (n + 1) - A010684 (n + 1)) * A001045 n

end

end A095129.P8335854498926396882

namespace A095129

/-- `(A128209(n+1)-A010684(n+1))*A001045(n)` -/
def P8335854498926396882.Spec : Prop :=
  ∀ n, P8335854498926396882.a n = A095129 n

end A095129

/-! ## A095129.P12795034937259721894

`C(A014113(n), 2)`
-/

namespace A095129.P12795034937259721894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014113 n).toNat 2

end

end A095129.P12795034937259721894

namespace A095129

/-- `C(A014113(n), 2)` -/
def P12795034937259721894.Spec : Prop :=
  ∀ n, (P12795034937259721894.a n : ℤ) = A095129 n

end A095129

/-!
# A095130: Expansion of (x+x^2)/(1-x^6); period 6: repeat [0, 1, 1, 0, 0, 0].

The programs for A095130, the canonical program `A095130.P16495305598118082637` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095130 has offset 0).

The definition of A095130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1-x^6))` (program `A095130.P16495305598118082637`, by `A095130.P16495305598118082637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095130.P18083457641539521594

`floor((n+3)%6/4)`
-/

namespace A095130.P18083457641539521594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 3) % 6 : ℕ) : ℚ) / 4⌋

end

end A095130.P18083457641539521594

namespace A095130

/-- `floor((n+3)%6/4)` -/
def P18083457641539521594.Spec : Prop :=
  ∀ n, P18083457641539521594.a n = A095130 n

end A095130

/-! ## A095130.P16495305598118082637

`ogf((x+x^2)/(1-x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095130

/-- `ogf((x+x^2)/(1-x^6))` -/
def P16495305598118082637.Spec : Prop :=
  ∀ n, P16495305598118082637.a n = A095130 n

theorem P16495305598118082637.correct : P16495305598118082637.Spec := by
  intro n
  simp only [A095130]

end A095130

/-!
# A095131: Numerators of average numbers of trees in a forest on n nodes.

The programs for A095131, there is no canonical definition to state claims against.
-/

/-! ## A095131.P1103236353694809040

`A005196(n+1)/A005195(n+1)*A095132(n+1)`
-/

namespace A095131.P1103236353694809040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005196 (n + 1) : ℚ) / (A005195 (n + 1) : ℚ) * (A095132 (n + 1) : ℚ)

end

end A095131.P1103236353694809040

/-!
# A095132: Denominators of average numbers of trees in a forest on n nodes.

The programs for A095132, there is no canonical definition to state claims against.
-/

/-! ## A095132.P10075573605144174116

`A005195(n+1)/A005196(n+1)*A095131(n+1)`
-/

namespace A095132.P10075573605144174116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005195 (n + 1) : ℚ) / (A005196 (n + 1) : ℚ) * (A095131 (n + 1) : ℚ)

end

end A095132.P10075573605144174116

/-!
# A095133: Triangle of numbers of forests on n nodes containing k trees.

The programs for A095133, there is no canonical definition to state claims against.
-/

/-! ## A095133.P508176380938540126

`A105820(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A095133.P508176380938540126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105820 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A095133.P508176380938540126

/-! ## A095133.P7158532098684590942

`A136605(A038722(1+n))`
-/

namespace A095133.P7158532098684590942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A038722 (1 + n)).toNat

end

end A095133.P7158532098684590942

/-! ## A095133.P11966216590998281495

`A136605(A061579(n)+1)`
-/

namespace A095133.P11966216590998281495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A061579 n + 1).toNat

end

end A095133.P11966216590998281495

/-! ## A095133.P10966617801489509676

`A136605(A002024(n+1)²-n)`
-/

namespace A095133.P10966617801489509676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095133.P10966617801489509676

/-! ## A095133.P17127785012189837543

`A105821(n+1)+A105820(n+1)`
-/

namespace A095133.P17127785012189837543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (n + 1) + A105820 (n + 1)

end

end A095133.P17127785012189837543

/-! ## A095133.P5520201062199969487

`A105821(A080036(n+1))`
-/

namespace A095133.P5520201062199969487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A080036 (n + 1)).toNat

end

end A095133.P5520201062199969487

/-! ## A095133.P1532669476462601120

`A105821(A002024(n+1)+2+n)`
-/

namespace A095133.P1532669476462601120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A002024 (n + 1) + 2 + (n : ℤ)).toNat

end

end A095133.P1532669476462601120

/-! ## A095133.P9024968471295123492

`A105821(eq[1, A035214(n)]+1)`
-/

namespace A095133.P9024968471295123492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095133.P9024968471295123492

/-! ## A095133.P14587915959801455613

`A136605(A278818(n))`
-/

namespace A095133.P14587915959801455613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A278818 n).toNat

end

end A095133.P14587915959801455613

/-! ## A095133.P5755329038973717390

`A105821(A195437(n)+1-n)`
-/

namespace A095133.P5755329038973717390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A195437 n + (1 - (n : ℤ))).toNat

end

end A095133.P5755329038973717390

/-! ## A095133.P15138276562777605306

`A105821(1-(n-A195437(n)))`
-/

namespace A095133.P15138276562777605306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (1 - ((n : ℤ) - A195437 n)).toNat

end

end A095133.P15138276562777605306

/-! ## A095133.P12022411570413789486

`filter[A105821(n+2), A276398(#)]`
-/

namespace A095133.P12022411570413789486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A095133.P12022411570413789486

/-!
# A095134: Sum of the product of the first ceiling(n/2) odd-indexed primes and the product of the first floor(n/2) even-indexed primes; a(1) = 2.

The programs for A095134, there is no canonical definition to state claims against.
-/

/-! ## A095134.P4419827415821514110

`A079078(A087156(n+1))+A079078(n)`
-/

namespace A095134.P4419827415821514110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 (A087156 (n + 1)).toNat + A079078 n

end

end A095134.P4419827415821514110

/-! ## A095134.P15685514780664355816

`A079078(n+1)-A057428(n)*A079078(n)`
-/

namespace A095134.P15685514780664355816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 (n + 1) - A057428 n * A079078 n

end

end A095134.P15685514780664355816

/-! ## A095134.P858051907562703497

`2*A079078(n+1)-A095137(n+1)`
-/

namespace A095134.P858051907562703497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079078 (n + 1) - A095137 (n + 1)

end

end A095134.P858051907562703497

/-! ## A095134.P11689136731034895345

`p?[∑[A095137(A008619(n))]]`
-/

namespace A095134.P11689136731034895345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095137 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095134.P11689136731034895345

/-!
# A095135: Indices of primes in A095134(n).

The programs for A095135, there is no canonical definition to state claims against.
-/

/-! ## A095135.P9665009258519827408

`eq[1, A095136(n+1)]+1`
-/

namespace A095135.P9665009258519827408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095135.P9665009258519827408

/-! ## A095135.P4005521581427617366

`record[A000027(n+1)/A095136(n+1)]`
-/

namespace A095135.P4005521581427617366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A095136 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095135.P4005521581427617366

/-! ## A095135.P10615556934190975036

`record[A058035(n+1)/A095136(n+1)]`
-/

namespace A095135.P10615556934190975036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058035 (n + 1) : ℚ) / (A095136 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095135.P10615556934190975036

/-! ## A095135.P6222553785491437672

`record[A008619(2*n)/A095136(n+1)]`
-/

namespace A095135.P6222553785491437672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A095136 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095135.P6222553785491437672

/-! ## A095135.P18375420467194456810

`record[A008611(3*n)/A095136(n+1)]`
-/

namespace A095135.P18375420467194456810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A095136 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095135.P18375420467194456810

/-!
# A095136: Number of distinct prime factors of A095134(n).

The programs for A095136, there is no canonical definition to state claims against.
-/

/-! ## A095136.P17865246086702241808

`A090822(A178877(n+1)^A070096(n+4))`
-/

namespace A095136.P17865246086702241808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((A178877 (n + 1) : ℚ) ^ (A070096 (n + 4) : ℤ))).toNat

end

end A095136.P17865246086702241808

/-!
# A095137: Absolute difference between the product of the first floor(n/2) even-indexed primes and the product of the first floor(n/2) odd-indexed primes.

The programs for A095137, there is no canonical definition to state claims against.
-/

/-! ## A095137.P1826895784880986983

`floor(acot(n)+Δ[A079078(n)])`
-/

namespace A095137.P1826895784880986983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A095137.P1826895784880986983

/-! ## A095137.P14359360331709865614

`Δ[a(n-2)*A000040(n)]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A095137.P14359360331709865614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 2) * A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095137.P14359360331709865614

/-! ## A095137.P9954365759746239497

`Δ[a(n-2)*record[A014963(n+1)]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A095137.P9954365759746239497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 2) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095137.P9954365759746239497

/-! ## A095137.P6526990759705259785

`Δ[a(n-2)*comp[A018252(n+1)]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A095137.P6526990759705259785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 2) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095137.P6526990759705259785

/-! ## A095137.P13844754561263765095

`A000007(n)+Δ[A079078(n)]`
-/

namespace A095137.P13844754561263765095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A095137.P13844754561263765095

/-!
# A095138: Indices of primes in A095137(n).

The programs for A095138, there is no canonical definition to state claims against.
-/

/-! ## A095138.P11869594137393270359

`eq[1, A095139(n+1)]+1`
-/

namespace A095138.P11869594137393270359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095138.P11869594137393270359

/-! ## A095138.P4161884164775507817

`eq[A057427(n), A095139(A028310(n))]`
-/

namespace A095138.P4161884164775507817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095139 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095138.P4161884164775507817

/-! ## A095138.P12184249672278881031

`eq[A095139(A028310(n)), A178334(n)]`
-/

namespace A095138.P12184249672278881031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095139 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095138.P12184249672278881031

/-!
# A095140: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 5.

The programs for A095140, the canonical program `A095140.P7269654166790434002` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095140 has offset 0).

The definition of A095140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095140.P7269654166790434002

`C(row(n), col(n))%5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095140

/-- `C(row(n), col(n))%5` -/
def P7269654166790434002.Spec : Prop :=
  ∀ n, (P7269654166790434002.a n : ℤ) = A095140 n

theorem P7269654166790434002.correct : P7269654166790434002.Spec := by
  intro n
  simp only [A095140]

end A095140

/-! ## A095140.P11931700373868055107

`(T(n-1,k)+T(n-1,k-1))%5` with `a(0)=1`
-/

namespace A095140.P11931700373868055107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 5

end

end A095140.P11931700373868055107

namespace A095140

/-- `(T(n-1,k)+T(n-1,k-1))%5` -/
def P11931700373868055107.Spec : Prop :=
  ∀ n, (P11931700373868055107.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P4897434017333949852

`(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%5` with `a(0)=1, a(1)=1`
-/

namespace A095140.P4897434017333949852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n) % 5

end

end A095140.P4897434017333949852

namespace A095140

/-- `(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%5` -/
def P4897434017333949852.Spec : Prop :=
  ∀ n, (P4897434017333949852.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P15063424111609578034

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%5` with `a(0)=1`
-/

namespace A095140.P15063424111609578034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 5

end

end A095140.P15063424111609578034

namespace A095140

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%5` -/
def P15063424111609578034.Spec : Prop :=
  ∀ n, P15063424111609578034.a n = A095140 n

end A095140

/-! ## A095140.P7549945319524158594

`A007318(n)%5`
-/

namespace A095140.P7549945319524158594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 5

end

end A095140.P7549945319524158594

namespace A095140

/-- `A007318(n)%5` -/
def P7549945319524158594.Spec : Prop :=
  ∀ n, P7549945319524158594.a n = A095140 n

end A095140

/-! ## A095140.P1731898256351669886

`A008975(n)%5`
-/

namespace A095140.P1731898256351669886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008975 n) 5

end

end A095140.P1731898256351669886

namespace A095140

/-- `A008975(n)%5` -/
def P1731898256351669886.Spec : Prop :=
  ∀ n, P1731898256351669886.a n = A095140 n

end A095140

/-! ## A095140.P15738962120298222881

`A081580(n)%5`
-/

namespace A095140.P15738962120298222881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081580 n) 5

end

end A095140.P15738962120298222881

namespace A095140

/-- `A081580(n)%5` -/
def P15738962120298222881.Spec : Prop :=
  ∀ n, P15738962120298222881.a n = A095140 n

end A095140

/-! ## A095140.P11055930705157423369

`A093563(n)%5`
-/

namespace A095140.P11055930705157423369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093563 n) 5

end

end A095140.P11055930705157423369

namespace A095140

/-- `A093563(n)%5` -/
def P11055930705157423369.Spec : Prop :=
  ∀ n, P11055930705157423369.a n = A095140 n

end A095140

/-! ## A095140.P16300667468513412026

`A096956(n)%5`
-/

namespace A095140.P16300667468513412026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096956 n) 5

end

end A095140.P16300667468513412026

namespace A095140

/-- `A096956(n)%5` -/
def P16300667468513412026.Spec : Prop :=
  ∀ n, P16300667468513412026.a n = A095140 n

end A095140

/-! ## A095140.P13933544300409583213

`A131065(n)%5`
-/

namespace A095140.P13933544300409583213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131065 n) 5

end

end A095140.P13933544300409583213

namespace A095140

/-- `A131065(n)%5` -/
def P13933544300409583213.Spec : Prop :=
  ∀ n, P13933544300409583213.a n = A095140 n

end A095140

/-! ## A095140.P6907675604201793264

`A131114(n)%5`
-/

namespace A095140.P6907675604201793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131114 n) 5

end

end A095140.P6907675604201793264

namespace A095140

/-- `A131114(n)%5` -/
def P6907675604201793264.Spec : Prop :=
  ∀ n, P6907675604201793264.a n = A095140 n

end A095140

/-! ## A095140.P4875800088131798620

`A176203(n)%5`
-/

namespace A095140.P4875800088131798620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176203 n) 5

end

end A095140.P4875800088131798620

namespace A095140

/-- `A176203(n)%5` -/
def P4875800088131798620.Spec : Prop :=
  ∀ n, P4875800088131798620.a n = A095140 n

end A095140

/-! ## A095140.P12585768702507469732

`sqrt(A008459(n))%5`
-/

namespace A095140.P12585768702507469732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 5

end

end A095140.P12585768702507469732

namespace A095140

/-- `sqrt(A008459(n))%5` -/
def P12585768702507469732.Spec : Prop :=
  ∀ n, P12585768702507469732.a n = A095140 n

end A095140

/-! ## A095140.P14853350247206836960

`(A014473(n)+1)%5`
-/

namespace A095140.P14853350247206836960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 5

end

end A095140.P14853350247206836960

namespace A095140

/-- `(A014473(n)+1)%5` -/
def P14853350247206836960.Spec : Prop :=
  ∀ n, P14853350247206836960.a n = A095140 n

end A095140

/-! ## A095140.P1056903095486217305

`((A153491(n)-2)%10)%5`
-/

namespace A095140.P1056903095486217305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153491 n - 2) 10) 5

end

end A095140.P1056903095486217305

namespace A095140

/-- `((A153491(n)-2)%10)%5` -/
def P1056903095486217305.Spec : Prop :=
  ∀ n, P1056903095486217305.a n = A095140 n

end A095140

/-! ## A095140.P10565212285892083262

`gcd(A124927(n), A124928(n))%5`
-/

namespace A095140.P10565212285892083262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 5

end

end A095140.P10565212285892083262

namespace A095140

/-- `gcd(A124927(n), A124928(n))%5` -/
def P10565212285892083262.Spec : Prop :=
  ∀ n, (P10565212285892083262.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P15299058336149983279

`C(A003056(n), A002262(n))%5`
-/

namespace A095140.P15299058336149983279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % 5

end

end A095140.P15299058336149983279

namespace A095140

/-- `C(A003056(n), A002262(n))%5` -/
def P15299058336149983279.Spec : Prop :=
  ∀ n, (P15299058336149983279.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P16656013062345399117

`C(A003056(n), A025581(n))%5`
-/

namespace A095140.P16656013062345399117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A025581 n).toNat % 5

end

end A095140.P16656013062345399117

namespace A095140

/-- `C(A003056(n), A025581(n))%5` -/
def P16656013062345399117.Spec : Prop :=
  ∀ n, (P16656013062345399117.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P9474174294187549818

`C(A003056(n), A002260(n+1)-1)%5`
-/

namespace A095140.P9474174294187549818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat % 5

end

end A095140.P9474174294187549818

namespace A095140

/-- `C(A003056(n), A002260(n+1)-1)%5` -/
def P9474174294187549818.Spec : Prop :=
  ∀ n, (P9474174294187549818.a n : ℤ) = A095140 n

end A095140

/-! ## A095140.P10948573365924587060

`C(A003056(n), A004736(n+1)-1)%5`
-/

namespace A095140.P10948573365924587060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 5

end

end A095140.P10948573365924587060

namespace A095140

/-- `C(A003056(n), A004736(n+1)-1)%5` -/
def P10948573365924587060.Spec : Prop :=
  ∀ n, (P10948573365924587060.a n : ℤ) = A095140 n

end A095140

/-!
# A095141: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 6.

The programs for A095141, the canonical program `A095141.P6720909513522901048` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095141 has offset 0).

The definition of A095141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095141.P6720909513522901048

`C(row(n), col(n))%6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095141

/-- `C(row(n), col(n))%6` -/
def P6720909513522901048.Spec : Prop :=
  ∀ n, (P6720909513522901048.a n : ℤ) = A095141 n

theorem P6720909513522901048.correct : P6720909513522901048.Spec := by
  intro n
  simp only [A095141]

end A095141

/-! ## A095141.P10450526401137868382

`(T(n-1,k)+T(n-1,k-1))%6` with `a(0)=1`
-/

namespace A095141.P10450526401137868382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 6

end

end A095141.P10450526401137868382

namespace A095141

/-- `(T(n-1,k)+T(n-1,k-1))%6` -/
def P10450526401137868382.Spec : Prop :=
  ∀ n, (P10450526401137868382.a n : ℤ) = A095141 n

end A095141

/-! ## A095141.P15827077501950525135

`(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%6` with `a(0)=1, a(1)=1`
-/

namespace A095141.P15827077501950525135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n) % 6

end

end A095141.P15827077501950525135

namespace A095141

/-- `(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%6` -/
def P15827077501950525135.Spec : Prop :=
  ∀ n, (P15827077501950525135.a n : ℤ) = A095141 n

end A095141

/-! ## A095141.P12581720325012261549

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%6` with `a(0)=1`
-/

namespace A095141.P12581720325012261549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 6

end

end A095141.P12581720325012261549

namespace A095141

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%6` -/
def P12581720325012261549.Spec : Prop :=
  ∀ n, P12581720325012261549.a n = A095141 n

end A095141

/-! ## A095141.P16557290256207975224

`A007318(n)%6`
-/

namespace A095141.P16557290256207975224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 6

end

end A095141.P16557290256207975224

namespace A095141

/-- `A007318(n)%6` -/
def P16557290256207975224.Spec : Prop :=
  ∀ n, P16557290256207975224.a n = A095141 n

end A095141

/-! ## A095141.P2428593724133679168

`A081581(n)%6`
-/

namespace A095141.P2428593724133679168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081581 n) 6

end

end A095141.P2428593724133679168

namespace A095141

/-- `A081581(n)%6` -/
def P2428593724133679168.Spec : Prop :=
  ∀ n, P2428593724133679168.a n = A095141 n

end A095141

/-! ## A095141.P13246375260276814837

`A093564(n)%6`
-/

namespace A095141.P13246375260276814837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093564 n) 6

end

end A095141.P13246375260276814837

namespace A095141

/-- `A093564(n)%6` -/
def P13246375260276814837.Spec : Prop :=
  ∀ n, P13246375260276814837.a n = A095141 n

end A095141

/-! ## A095141.P14970869835846985373

`A095145(n)%6`
-/

namespace A095141.P14970869835846985373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095145 n) 6

end

end A095141.P14970869835846985373

namespace A095141

/-- `A095145(n)%6` -/
def P14970869835846985373.Spec : Prop :=
  ∀ n, P14970869835846985373.a n = A095141 n

end A095141

/-! ## A095141.P16104316061261938232

`A131067(n)%6`
-/

namespace A095141.P16104316061261938232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131067 n) 6

end

end A095141.P16104316061261938232

namespace A095141

/-- `A131067(n)%6` -/
def P16104316061261938232.Spec : Prop :=
  ∀ n, P16104316061261938232.a n = A095141 n

end A095141

/-! ## A095141.P6824365130830528480

`A131115(n)%6`
-/

namespace A095141.P6824365130830528480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131115 n) 6

end

end A095141.P6824365130830528480

namespace A095141

/-- `A131115(n)%6` -/
def P6824365130830528480.Spec : Prop :=
  ∀ n, P6824365130830528480.a n = A095141 n

end A095141

/-! ## A095141.P1568843194374688032

`A173742(n)%6`
-/

namespace A095141.P1568843194374688032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173742 n) 6

end

end A095141.P1568843194374688032

namespace A095141

/-- `A173742(n)%6` -/
def P1568843194374688032.Spec : Prop :=
  ∀ n, P1568843194374688032.a n = A095141 n

end A095141

/-! ## A095141.P17484833780801000353

`sqrt(A008459(n))%6`
-/

namespace A095141.P17484833780801000353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 6

end

end A095141.P17484833780801000353

namespace A095141

/-- `sqrt(A008459(n))%6` -/
def P17484833780801000353.Spec : Prop :=
  ∀ n, P17484833780801000353.a n = A095141 n

end A095141

/-! ## A095141.P12781550960698436723

`(A014473(n)+1)%6`
-/

namespace A095141.P12781550960698436723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 6

end

end A095141.P12781550960698436723

namespace A095141

/-- `(A014473(n)+1)%6` -/
def P12781550960698436723.Spec : Prop :=
  ∀ n, P12781550960698436723.a n = A095141 n

end A095141

/-! ## A095141.P14668616965925502727

`A010875(A095145(n))`
-/

namespace A095141.P14668616965925502727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A095145 n).toNat

end

end A095141.P14668616965925502727

namespace A095141

/-- `A010875(A095145(n))` -/
def P14668616965925502727.Spec : Prop :=
  ∀ n, P14668616965925502727.a n = A095141 n

end A095141

/-! ## A095141.P4772791411093758458

`C(A003056(n), A004736(n+1)-1)%6`
-/

namespace A095141.P4772791411093758458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 6

end

end A095141.P4772791411093758458

namespace A095141

/-- `C(A003056(n), A004736(n+1)-1)%6` -/
def P4772791411093758458.Spec : Prop :=
  ∀ n, (P4772791411093758458.a n : ℤ) = A095141 n

end A095141

/-! ## A095141.P7546494702940460732

`(A134059(abs(1-2*n)+1-n)/3)%A157532(n+1)!`
-/

namespace A095141.P7546494702940460732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A134059 (|1 - (2 * n : ℤ)| + 1 - (n : ℤ)).toNat : ℚ) / 3)) (Nat.factorial (A157532 (n + 1)).toNat : ℤ)

end

end A095141.P7546494702940460732

namespace A095141

/-- `(A134059(abs(1-2*n)+1-n)/3)%A157532(n+1)!` -/
def P7546494702940460732.Spec : Prop :=
  ∀ n, P7546494702940460732.a n = A095141 n

end A095141

/-! ## A095141.P16877668529407574059

`C(A003056(n), A002262(n))%A157532(n+1)!`
-/

namespace A095141.P16877668529407574059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % Nat.factorial (A157532 (n + 1)).toNat

end

end A095141.P16877668529407574059

namespace A095141

/-- `C(A003056(n), A002262(n))%A157532(n+1)!` -/
def P16877668529407574059.Spec : Prop :=
  ∀ n, (P16877668529407574059.a n : ℤ) = A095141 n

end A095141

/-! ## A095141.P1128157106486891651

`(A097805(n+1)+A097805(n))%A157532(n+1)!`
-/

namespace A095141.P1128157106486891651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097805 (n + 1) + A097805 n) (Nat.factorial (A157532 (n + 1)).toNat : ℤ)

end

end A095141.P1128157106486891651

namespace A095141

/-- `(A097805(n+1)+A097805(n))%A157532(n+1)!` -/
def P1128157106486891651.Spec : Prop :=
  ∀ n, P1128157106486891651.a n = A095141 n

end A095141

/-! ## A095141.P12226029500414122057

`C(A003056(n), A002260(n+1)-1)%A157532(n+1)!`
-/

namespace A095141.P12226029500414122057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat % Nat.factorial (A157532 (n + 1)).toNat

end

end A095141.P12226029500414122057

namespace A095141

/-- `C(A003056(n), A002260(n+1)-1)%A157532(n+1)!` -/
def P12226029500414122057.Spec : Prop :=
  ∀ n, (P12226029500414122057.a n : ℤ) = A095141 n

end A095141

/-! ## A095141.P12602646144735578090

`C(A003056(n), A004736(n+2)%A004736(n+1))%6`
-/

namespace A095141.P12602646144735578090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat % 6

end

end A095141.P12602646144735578090

namespace A095141

/-- `C(A003056(n), A004736(n+2)%A004736(n+1))%6` -/
def P12602646144735578090.Spec : Prop :=
  ∀ n, (P12602646144735578090.a n : ℤ) = A095141 n

end A095141

/-!
# A095142: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 7.

The programs for A095142, the canonical program `A095142.P15704284510548622109` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095142 has offset 0).

The definition of A095142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095142.P15704284510548622109

`C(row(n), col(n))%7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095142

/-- `C(row(n), col(n))%7` -/
def P15704284510548622109.Spec : Prop :=
  ∀ n, (P15704284510548622109.a n : ℤ) = A095142 n

theorem P15704284510548622109.correct : P15704284510548622109.Spec := by
  intro n
  simp only [A095142]

end A095142

/-! ## A095142.P6614718808306190235

`(T(n-1,k)+T(n-1,k-1))%7` with `a(0)=1`
-/

namespace A095142.P6614718808306190235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 7

end

end A095142.P6614718808306190235

namespace A095142

/-- `(T(n-1,k)+T(n-1,k-1))%7` -/
def P6614718808306190235.Spec : Prop :=
  ∀ n, (P6614718808306190235.a n : ℤ) = A095142 n

end A095142

/-! ## A095142.P18321332946898871843

`(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%7` with `a(0)=1, a(1)=1`
-/

namespace A095142.P18321332946898871843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n) % 7

end

end A095142.P18321332946898871843

namespace A095142

/-- `(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%7` -/
def P18321332946898871843.Spec : Prop :=
  ∀ n, (P18321332946898871843.a n : ℤ) = A095142 n

end A095142

/-! ## A095142.P11126953821788540659

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%7` with `a(0)=1`
-/

namespace A095142.P11126953821788540659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 7

end

end A095142.P11126953821788540659

namespace A095142

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%7` -/
def P11126953821788540659.Spec : Prop :=
  ∀ n, P11126953821788540659.a n = A095142 n

end A095142

/-! ## A095142.P3736883746485810101

`A007318(n)%7`
-/

namespace A095142.P3736883746485810101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 7

end

end A095142.P3736883746485810101

namespace A095142

/-- `A007318(n)%7` -/
def P3736883746485810101.Spec : Prop :=
  ∀ n, P3736883746485810101.a n = A095142 n

end A095142

/-! ## A095142.P11827882204313445627

`A081582(n)%7`
-/

namespace A095142.P11827882204313445627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081582 n) 7

end

end A095142.P11827882204313445627

namespace A095142

/-- `A081582(n)%7` -/
def P11827882204313445627.Spec : Prop :=
  ∀ n, P11827882204313445627.a n = A095142 n

end A095142

/-! ## A095142.P3058789740316565041

`A093565(n)%7`
-/

namespace A095142.P3058789740316565041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093565 n) 7

end

end A095142.P3058789740316565041

namespace A095142

/-- `A093565(n)%7` -/
def P3058789740316565041.Spec : Prop :=
  ∀ n, P3058789740316565041.a n = A095142 n

end A095142

/-! ## A095142.P673136175902897820

`A168625(n)%7`
-/

namespace A095142.P673136175902897820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168625 n) 7

end

end A095142.P673136175902897820

namespace A095142

/-- `A168625(n)%7` -/
def P673136175902897820.Spec : Prop :=
  ∀ n, P673136175902897820.a n = A095142 n

end A095142

/-! ## A095142.P3340394705145265360

`A275198(n)%7`
-/

namespace A095142.P3340394705145265360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275198 n) 7

end

end A095142.P3340394705145265360

namespace A095142

/-- `A275198(n)%7` -/
def P3340394705145265360.Spec : Prop :=
  ∀ n, P3340394705145265360.a n = A095142 n

end A095142

/-! ## A095142.P7438130358637746714

`sqrt(A008459(n))%7`
-/

namespace A095142.P7438130358637746714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 7

end

end A095142.P7438130358637746714

namespace A095142

/-- `sqrt(A008459(n))%7` -/
def P7438130358637746714.Spec : Prop :=
  ∀ n, P7438130358637746714.a n = A095142 n

end A095142

/-! ## A095142.P6564679786123463890

`(A014473(n)+1)%7`
-/

namespace A095142.P6564679786123463890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 7

end

end A095142.P6564679786123463890

namespace A095142

/-- `(A014473(n)+1)%7` -/
def P6564679786123463890.Spec : Prop :=
  ∀ n, P6564679786123463890.a n = A095142 n

end A095142

/-! ## A095142.P17044312894282111825

`ceil(A134059(n)/3)%7`
-/

namespace A095142.P17044312894282111825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134059 n : ℚ) / 3⌉ 7

end

end A095142.P17044312894282111825

namespace A095142

/-- `ceil(A134059(n)/3)%7` -/
def P17044312894282111825.Spec : Prop :=
  ∀ n, P17044312894282111825.a n = A095142 n

end A095142

/-! ## A095142.P905242257467106688

`A010876(A275198(n))`
-/

namespace A095142.P905242257467106688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A275198 n).toNat

end

end A095142.P905242257467106688

namespace A095142

/-- `A010876(A275198(n))` -/
def P905242257467106688.Spec : Prop :=
  ∀ n, P905242257467106688.a n = A095142 n

end A095142

/-! ## A095142.P3768741432344759112

`gcd(A124927(n), A124928(n))%7`
-/

namespace A095142.P3768741432344759112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 7

end

end A095142.P3768741432344759112

namespace A095142

/-- `gcd(A124927(n), A124928(n))%7` -/
def P3768741432344759112.Spec : Prop :=
  ∀ n, (P3768741432344759112.a n : ℤ) = A095142 n

end A095142

/-! ## A095142.P4320954372509994339

`C(A003056(n), A002262(n))%7`
-/

namespace A095142.P4320954372509994339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % 7

end

end A095142.P4320954372509994339

namespace A095142

/-- `C(A003056(n), A002262(n))%7` -/
def P4320954372509994339.Spec : Prop :=
  ∀ n, (P4320954372509994339.a n : ℤ) = A095142 n

end A095142

/-! ## A095142.P10652781317627911736

`(2*A093562(n)-A029653(n))%7`
-/

namespace A095142.P10652781317627911736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A093562 n - A029653 n) 7

end

end A095142.P10652781317627911736

namespace A095142

/-- `(2*A093562(n)-A029653(n))%7` -/
def P10652781317627911736.Spec : Prop :=
  ∀ n, P10652781317627911736.a n = A095142 n

end A095142

/-! ## A095142.P8262576868193436707

`C(A003056(n), A002260(n+1)-1)%7`
-/

namespace A095142.P8262576868193436707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat % 7

end

end A095142.P8262576868193436707

namespace A095142

/-- `C(A003056(n), A002260(n+1)-1)%7` -/
def P8262576868193436707.Spec : Prop :=
  ∀ n, (P8262576868193436707.a n : ℤ) = A095142 n

end A095142

/-! ## A095142.P10311466328709431022

`A013615(n)%7`
-/

namespace A095142.P10311466328709431022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013615 n) 7

end

end A095142.P10311466328709431022

namespace A095142

/-- `A013615(n)%7` -/
def P10311466328709431022.Spec : Prop :=
  ∀ n, P10311466328709431022.a n = A095142 n

end A095142

/-! ## A095142.P17748845840898229422

`A038279(n)%7`
-/

namespace A095142.P17748845840898229422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038279 n) 7

end

end A095142.P17748845840898229422

namespace A095142

/-- `A038279(n)%7` -/
def P17748845840898229422.Spec : Prop :=
  ∀ n, P17748845840898229422.a n = A095142 n

end A095142

/-! ## A095142.P10715965443358574200

`(A038207(n)/(1/A130321(n))²)%7`
-/

namespace A095142.P10715965443358574200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (1 / (A130321 n : ℚ)) ^ 2)) 7

end

end A095142.P10715965443358574200

namespace A095142

/-- `(A038207(n)/(1/A130321(n))²)%7` -/
def P10715965443358574200.Spec : Prop :=
  ∀ n, P10715965443358574200.a n = A095142 n

end A095142

/-!
# A095143: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 9.

The programs for A095143, the canonical program `A095143.P15962678818973681305` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095143 has offset 0).

The definition of A095143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095143.P15962678818973681305

`C(row(n), col(n))%9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095143

/-- `C(row(n), col(n))%9` -/
def P15962678818973681305.Spec : Prop :=
  ∀ n, (P15962678818973681305.a n : ℤ) = A095143 n

theorem P15962678818973681305.correct : P15962678818973681305.Spec := by
  intro n
  simp only [A095143]

end A095143

/-! ## A095143.P8538110034100573960

`(T(n-1,k)+T(n-1,k-1))%9` with `a(0)=1`
-/

namespace A095143.P8538110034100573960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 9

end

end A095143.P8538110034100573960

namespace A095143

/-- `(T(n-1,k)+T(n-1,k-1))%9` -/
def P8538110034100573960.Spec : Prop :=
  ∀ n, (P8538110034100573960.a n : ℤ) = A095143 n

end A095143

/-! ## A095143.P14181684458822028560

`(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%9` with `a(0)=1, a(1)=1`
-/

namespace A095143.P14181684458822028560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n) % 9

end

end A095143.P14181684458822028560

namespace A095143

/-- `(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%9` -/
def P14181684458822028560.Spec : Prop :=
  ∀ n, (P14181684458822028560.a n : ℤ) = A095143 n

end A095143

/-! ## A095143.P10909327603416850362

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%9` with `a(0)=1`
-/

namespace A095143.P10909327603416850362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 9

end

end A095143.P10909327603416850362

namespace A095143

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%9` -/
def P10909327603416850362.Spec : Prop :=
  ∀ n, P10909327603416850362.a n = A095143 n

end A095143

/-! ## A095143.P5654601187375594268

`C(∑[abs(T(n-1,k))], col(n))%9` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A095143.P5654601187375594268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n) % 9

end

end A095143.P5654601187375594268

namespace A095143

/-- `C(∑[abs(T(n-1,k))], col(n))%9` -/
def P5654601187375594268.Spec : Prop :=
  ∀ n, (P5654601187375594268.a n : ℤ) = A095143 n

end A095143

/-! ## A095143.P12697793138857756187

`A007318(n)%9`
-/

namespace A095143.P12697793138857756187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 9

end

end A095143.P12697793138857756187

namespace A095143

/-- `A007318(n)%9` -/
def P12697793138857756187.Spec : Prop :=
  ∀ n, P12697793138857756187.a n = A095143 n

end A095143

/-! ## A095143.P17165225639566851445

`A093645(n)%9`
-/

namespace A095143.P17165225639566851445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093645 n) 9

end

end A095143.P17165225639566851445

namespace A095143

/-- `A093645(n)%9` -/
def P17165225639566851445.Spec : Prop :=
  ∀ n, P17165225639566851445.a n = A095143 n

end A095143

/-! ## A095143.P3227087017618171295

`A096145(n)%9`
-/

namespace A095143.P3227087017618171295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096145 n) 9

end

end A095143.P3227087017618171295

namespace A095143

/-- `A096145(n)%9` -/
def P3227087017618171295.Spec : Prop :=
  ∀ n, P3227087017618171295.a n = A095143 n

end A095143

/-! ## A095143.P5733455332576452305

`A143685(n)%9`
-/

namespace A095143.P5733455332576452305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143685 n) 9

end

end A095143.P5733455332576452305

namespace A095143

/-- `A143685(n)%9` -/
def P5733455332576452305.Spec : Prop :=
  ∀ n, P5733455332576452305.a n = A095143 n

end A095143

/-! ## A095143.P11529959926574482410

`A242312(n)%9`
-/

namespace A095143.P11529959926574482410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242312 n) 9

end

end A095143.P11529959926574482410

namespace A095143

/-- `A242312(n)%9` -/
def P11529959926574482410.Spec : Prop :=
  ∀ n, P11529959926574482410.a n = A095143 n

end A095143

/-! ## A095143.P6293880436542341240

`A386441(n)%9`
-/

namespace A095143.P6293880436542341240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386441 n) 9

end

end A095143.P6293880436542341240

namespace A095143

/-- `A386441(n)%9` -/
def P6293880436542341240.Spec : Prop :=
  ∀ n, P6293880436542341240.a n = A095143 n

end A095143

/-! ## A095143.P13555801561562060771

`sqrt(A008459(n))%9`
-/

namespace A095143.P13555801561562060771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 9

end

end A095143.P13555801561562060771

namespace A095143

/-- `sqrt(A008459(n))%9` -/
def P13555801561562060771.Spec : Prop :=
  ∀ n, P13555801561562060771.a n = A095143 n

end A095143

/-! ## A095143.P16868317806767287019

`(A014473(n)+1)%9`
-/

namespace A095143.P16868317806767287019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 9

end

end A095143.P16868317806767287019

namespace A095143

/-- `(A014473(n)+1)%9` -/
def P16868317806767287019.Spec : Prop :=
  ∀ n, P16868317806767287019.a n = A095143 n

end A095143

/-! ## A095143.P2886576801594064103

`A172171(n+1)%9`
-/

namespace A095143.P2886576801594064103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172171 (n + 1)) 9

end

end A095143.P2886576801594064103

namespace A095143

/-- `A172171(n+1)%9` -/
def P2886576801594064103.Spec : Prop :=
  ∀ n, P2886576801594064103.a n = A095143 n

end A095143

/-! ## A095143.P16271279579011026204

`A172179(n+1)%9`
-/

namespace A095143.P16271279579011026204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172179 (n + 1)) 9

end

end A095143.P16271279579011026204

namespace A095143

/-- `A172179(n+1)%9` -/
def P16271279579011026204.Spec : Prop :=
  ∀ n, P16271279579011026204.a n = A095143 n

end A095143

/-! ## A095143.P12122968505844947922

`A010878(A096145(n))`
-/

namespace A095143.P12122968505844947922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A096145 n).toNat

end

end A095143.P12122968505844947922

namespace A095143

/-- `A010878(A096145(n))` -/
def P12122968505844947922.Spec : Prop :=
  ∀ n, P12122968505844947922.a n = A095143 n

end A095143

/-! ## A095143.P11619898178360793791

`A010878(A386441(n))`
-/

namespace A095143.P11619898178360793791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A386441 n).toNat

end

end A095143.P11619898178360793791

namespace A095143

/-- `A010878(A386441(n))` -/
def P11619898178360793791.Spec : Prop :=
  ∀ n, P11619898178360793791.a n = A095143 n

end A095143

/-! ## A095143.P17786094793590981150

`A010888(A096145(n)+1)-1`
-/

namespace A095143.P17786094793590981150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A096145 n + 1).toNat - 1

end

end A095143.P17786094793590981150

namespace A095143

/-- `A010888(A096145(n)+1)-1` -/
def P17786094793590981150.Spec : Prop :=
  ∀ n, P17786094793590981150.a n = A095143 n

end A095143

/-! ## A095143.P15011574419597042789

`gcd(A124927(n), A124928(n))%9`
-/

namespace A095143.P15011574419597042789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 9

end

end A095143.P15011574419597042789

namespace A095143

/-- `gcd(A124927(n), A124928(n))%9` -/
def P15011574419597042789.Spec : Prop :=
  ∀ n, (P15011574419597042789.a n : ℤ) = A095143 n

end A095143

/-! ## A095143.P12568659055585038211

`(2*A093563(n)-A029653(n))%9`
-/

namespace A095143.P12568659055585038211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A093563 n - A029653 n) 9

end

end A095143.P12568659055585038211

namespace A095143

/-- `(2*A093563(n)-A029653(n))%9` -/
def P12568659055585038211.Spec : Prop :=
  ∀ n, P12568659055585038211.a n = A095143 n

end A095143

/-!
# A095144: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 11.

The programs for A095144, the canonical program `A095144.P8162231425033750909` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095144 has offset 0).

The definition of A095144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095144.P8162231425033750909

`(T(n-1,k-1)+T(n-1,k))%11` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095144

/-- `(T(n-1,k-1)+T(n-1,k))%11` -/
def P8162231425033750909.Spec : Prop :=
  ∀ n, (P8162231425033750909.a n : ℤ) = A095144 n

theorem P8162231425033750909.correct : P8162231425033750909.Spec := by
  intro n
  simp only [A095144]

end A095144

/-! ## A095144.P3873589464370422315

`C(row(n), col(n))%11`
-/

namespace A095144.P3873589464370422315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) % 11

end

end A095144.P3873589464370422315

namespace A095144

/-- `C(row(n), col(n))%11` -/
def P3873589464370422315.Spec : Prop :=
  ∀ n, (P3873589464370422315.a n : ℤ) = A095144 n

end A095144

/-! ## A095144.P6227276739985502754

`(T(n-1,k)+T(n-1,k-1))%11` with `a(0)=1`
-/

namespace A095144.P6227276739985502754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 11

end

end A095144.P6227276739985502754

namespace A095144

/-- `(T(n-1,k)+T(n-1,k-1))%11` -/
def P6227276739985502754.Spec : Prop :=
  ∀ n, (P6227276739985502754.a n : ℤ) = A095144 n

end A095144

/-! ## A095144.P12473959792269119077

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%11` with `a(0)=1`
-/

namespace A095144.P12473959792269119077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 11

end

end A095144.P12473959792269119077

namespace A095144

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%11` -/
def P12473959792269119077.Spec : Prop :=
  ∀ n, P12473959792269119077.a n = A095144 n

end A095144

/-! ## A095144.P14417270525997658243

`A007318(n)%11`
-/

namespace A095144.P14417270525997658243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 11

end

end A095144.P14417270525997658243

namespace A095144

/-- `A007318(n)%11` -/
def P14417270525997658243.Spec : Prop :=
  ∀ n, P14417270525997658243.a n = A095144 n

end A095144

/-! ## A095144.P6840981936529063734

`Δ[A102363(n)]%11`
-/

namespace A095144.P6840981936529063734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 11

end

end A095144.P6840981936529063734

namespace A095144

/-- `Δ[A102363(n)]%11` -/
def P6840981936529063734.Spec : Prop :=
  ∀ n, P6840981936529063734.a n = A095144 n

end A095144

/-! ## A095144.P738661047228565460

`(A014473(n)+1)%11`
-/

namespace A095144.P738661047228565460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 11

end

end A095144.P738661047228565460

namespace A095144

/-- `(A014473(n)+1)%11` -/
def P738661047228565460.Spec : Prop :=
  ∀ n, P738661047228565460.a n = A095144 n

end A095144

/-! ## A095144.P1002106375587245764

`abs(2-A173740(n))%11`
-/

namespace A095144.P1002106375587245764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |2 - A173740 n| 11

end

end A095144.P1002106375587245764

namespace A095144

/-- `abs(2-A173740(n))%11` -/
def P1002106375587245764.Spec : Prop :=
  ∀ n, P1002106375587245764.a n = A095144 n

end A095144

/-! ## A095144.P2561178502839697619

`(A103371(n)/A135278(n))%11`
-/

namespace A095144.P2561178502839697619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A103371 n : ℚ) / (A135278 n : ℚ))) 11

end

end A095144.P2561178502839697619

namespace A095144

/-- `(A103371(n)/A135278(n))%11` -/
def P2561178502839697619.Spec : Prop :=
  ∀ n, P2561178502839697619.a n = A095144 n

end A095144

/-! ## A095144.P5778679899475753494

`C(A003056(n), A004736(n+1)-1)%11`
-/

namespace A095144.P5778679899475753494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 11

end

end A095144.P5778679899475753494

namespace A095144

/-- `C(A003056(n), A004736(n+1)-1)%11` -/
def P5778679899475753494.Spec : Prop :=
  ∀ n, (P5778679899475753494.a n : ℤ) = A095144 n

end A095144

/-! ## A095144.P13365999290272742084

`C(A003056(n), A004736(n+2)%A004736(n+1))%11`
-/

namespace A095144.P13365999290272742084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat % 11

end

end A095144.P13365999290272742084

namespace A095144

/-- `C(A003056(n), A004736(n+2)%A004736(n+1))%11` -/
def P13365999290272742084.Spec : Prop :=
  ∀ n, (P13365999290272742084.a n : ℤ) = A095144 n

end A095144

/-! ## A095144.P10117299075636447780

`A097805(comp[∑[n]])%11`
-/

namespace A095144.P10117299075636447780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 11

end

end A095144.P10117299075636447780

namespace A095144

/-- `A097805(comp[∑[n]])%11` -/
def P10117299075636447780.Spec : Prop :=
  ∀ n, P10117299075636447780.a n = A095144 n

end A095144

/-! ## A095144.P13324930748498097052

`A135225(comp[∑[n]])%11`
-/

namespace A095144.P13324930748498097052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 11

end

end A095144.P13324930748498097052

namespace A095144

/-- `A135225(comp[∑[n]])%11` -/
def P13324930748498097052.Spec : Prop :=
  ∀ n, P13324930748498097052.a n = A095144 n

end A095144

/-! ## A095144.P8339712789204941915

`(A176348(n)/A176346(n))%11`
-/

namespace A095144.P8339712789204941915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))) 11

end

end A095144.P8339712789204941915

namespace A095144

/-- `(A176348(n)/A176346(n))%11` -/
def P8339712789204941915.Spec : Prop :=
  ∀ n, P8339712789204941915.a n = A095144 n

end A095144

/-! ## A095144.P2859426917629102499

`A038338(n)%11`
-/

namespace A095144.P2859426917629102499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038338 n) 11

end

end A095144.P2859426917629102499

namespace A095144

/-- `A038338(n)%11` -/
def P2859426917629102499.Spec : Prop :=
  ∀ n, P2859426917629102499.a n = A095144 n

end A095144

/-! ## A095144.P7639906184753844445

`A022176(n)%11`
-/

namespace A095144.P7639906184753844445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022176 n) 11

end

end A095144.P7639906184753844445

namespace A095144

/-- `A022176(n)%11` -/
def P7639906184753844445.Spec : Prop :=
  ∀ n, P7639906184753844445.a n = A095144 n

end A095144

/-! ## A095144.P17140152073246192166

`A022187(n)%11`
-/

namespace A095144.P17140152073246192166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022187 n) 11

end

end A095144.P17140152073246192166

namespace A095144

/-- `A022187(n)%11` -/
def P17140152073246192166.Spec : Prop :=
  ∀ n, P17140152073246192166.a n = A095144 n

end A095144

/-! ## A095144.P4382415370609864148

`A010880(A007318(n))`
-/

namespace A095144.P4382415370609864148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A007318 n).toNat

end

end A095144.P4382415370609864148

namespace A095144

/-- `A010880(A007318(n))` -/
def P4382415370609864148.Spec : Prop :=
  ∀ n, P4382415370609864148.a n = A095144 n

end A095144

/-! ## A095144.P14678865916748139931

`A010880(A176348(n)/A176346(n))`
-/

namespace A095144.P14678865916748139931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))).toNat

end

end A095144.P14678865916748139931

namespace A095144

/-- `A010880(A176348(n)/A176346(n))` -/
def P14678865916748139931.Spec : Prop :=
  ∀ n, P14678865916748139931.a n = A095144 n

end A095144

/-!
# A095145: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 12.

The programs for A095145, the canonical program `A095145.P2319988997034248794` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095145 has offset 0).

The definition of A095145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095145.P2319988997034248794

`C(row(n), col(n))%12`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095145

/-- `C(row(n), col(n))%12` -/
def P2319988997034248794.Spec : Prop :=
  ∀ n, (P2319988997034248794.a n : ℤ) = A095145 n

theorem P2319988997034248794.correct : P2319988997034248794.Spec := by
  intro n
  simp only [A095145]

end A095145

/-! ## A095145.P11548290317023406650

`(T(n-1,k)+T(n-1,k-1))%12` with `a(0)=1`
-/

namespace A095145.P11548290317023406650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 12

end

end A095145.P11548290317023406650

namespace A095145

/-- `(T(n-1,k)+T(n-1,k-1))%12` -/
def P11548290317023406650.Spec : Prop :=
  ∀ n, (P11548290317023406650.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P12244627893997261266

`A007318(n)%12`
-/

namespace A095145.P12244627893997261266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 12

end

end A095145.P12244627893997261266

namespace A095145

/-- `A007318(n)%12` -/
def P12244627893997261266.Spec : Prop :=
  ∀ n, P12244627893997261266.a n = A095145 n

end A095145

/-! ## A095145.P17022155817909819690

`abs(A130595(n)%12)`
-/

namespace A095145.P17022155817909819690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130595 n) 12|

end

end A095145.P17022155817909819690

namespace A095145

/-- `abs(A130595(n)%12)` -/
def P17022155817909819690.Spec : Prop :=
  ∀ n, P17022155817909819690.a n = A095145 n

end A095145

/-! ## A095145.P5959656132928928105

`sqrt(A008459(n))%12`
-/

namespace A095145.P5959656132928928105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 12

end

end A095145.P5959656132928928105

namespace A095145

/-- `sqrt(A008459(n))%12` -/
def P5959656132928928105.Spec : Prop :=
  ∀ n, P5959656132928928105.a n = A095145 n

end A095145

/-! ## A095145.P4280860352773691680

`Δ[A102363(n)]%12`
-/

namespace A095145.P4280860352773691680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 12

end

end A095145.P4280860352773691680

namespace A095145

/-- `Δ[A102363(n)]%12` -/
def P4280860352773691680.Spec : Prop :=
  ∀ n, P4280860352773691680.a n = A095145 n

end A095145

/-! ## A095145.P8880926097451171688

`(A014473(n)+1)%12`
-/

namespace A095145.P8880926097451171688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 12

end

end A095145.P8880926097451171688

namespace A095145

/-- `(A014473(n)+1)%12` -/
def P8880926097451171688.Spec : Prop :=
  ∀ n, P8880926097451171688.a n = A095145 n

end A095145

/-! ## A095145.P1906096520875884411

`(A028326(n)/2)%12`
-/

namespace A095145.P1906096520875884411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) 12

end

end A095145.P1906096520875884411

namespace A095145

/-- `(A028326(n)/2)%12` -/
def P1906096520875884411.Spec : Prop :=
  ∀ n, P1906096520875884411.a n = A095145 n

end A095145

/-! ## A095145.P98547294215612350

`ceil(A135087(n)/4)%12`
-/

namespace A095145.P98547294215612350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135087 n : ℚ) / 4⌉ 12

end

end A095145.P98547294215612350

namespace A095145

/-- `ceil(A135087(n)/4)%12` -/
def P98547294215612350.Spec : Prop :=
  ∀ n, P98547294215612350.a n = A095145 n

end A095145

/-! ## A095145.P7438198762735375116

`ceil(A135089(n)/5)%12`
-/

namespace A095145.P7438198762735375116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135089 n : ℚ) / 5⌉ 12

end

end A095145.P7438198762735375116

namespace A095145

/-- `ceil(A135089(n)/5)%12` -/
def P7438198762735375116.Spec : Prop :=
  ∀ n, P7438198762735375116.a n = A095145 n

end A095145

/-! ## A095145.P9696192921223793104

`(A134059(A028310(n))/3)%12`
-/

namespace A095145.P9696192921223793104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A134059 (A028310 n).toNat : ℚ) / 3)) 12

end

end A095145.P9696192921223793104

namespace A095145

/-- `(A134059(A028310(n))/3)%12` -/
def P9696192921223793104.Spec : Prop :=
  ∀ n, P9696192921223793104.a n = A095145 n

end A095145

/-! ## A095145.P3422276466110491993

`(A285118(n)+A285116(n))%12`
-/

namespace A095145.P3422276466110491993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285118 n + A285116 n) 12

end

end A095145.P3422276466110491993

namespace A095145

/-- `(A285118(n)+A285116(n))%12` -/
def P3422276466110491993.Spec : Prop :=
  ∀ n, P3422276466110491993.a n = A095145 n

end A095145

/-! ## A095145.P534262867205338230

`gcd(A013609(n), A013610(n))%12`
-/

namespace A095145.P534262867205338230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A013610 n) % 12

end

end A095145.P534262867205338230

namespace A095145

/-- `gcd(A013609(n), A013610(n))%12` -/
def P534262867205338230.Spec : Prop :=
  ∀ n, (P534262867205338230.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P1216947927167920707

`gcd(A124927(n), A134059(n))%12`
-/

namespace A095145.P1216947927167920707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A134059 n) % 12

end

end A095145.P1216947927167920707

namespace A095145

/-- `gcd(A124927(n), A134059(n))%12` -/
def P1216947927167920707.Spec : Prop :=
  ∀ n, (P1216947927167920707.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P7466236904986588761

`C(A003056(n), A002262(n))%12`
-/

namespace A095145.P7466236904986588761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % 12

end

end A095145.P7466236904986588761

namespace A095145

/-- `C(A003056(n), A002262(n))%12` -/
def P7466236904986588761.Spec : Prop :=
  ∀ n, (P7466236904986588761.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P902174824303334278

`C(A003056(n), A025581(n))%12`
-/

namespace A095145.P902174824303334278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A025581 n).toNat % 12

end

end A095145.P902174824303334278

namespace A095145

/-- `C(A003056(n), A025581(n))%12` -/
def P902174824303334278.Spec : Prop :=
  ∀ n, (P902174824303334278.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P8520229340557995974

`C(A003056(n), A103822(n))%12`
-/

namespace A095145.P8520229340557995974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A103822 n).toNat % 12

end

end A095145.P8520229340557995974

namespace A095145

/-- `C(A003056(n), A103822(n))%12` -/
def P8520229340557995974.Spec : Prop :=
  ∀ n, (P8520229340557995974.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P17512911452909673394

`(A102363(n+1)-A102363(n))%12`
-/

namespace A095145.P17512911452909673394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102363 (n + 1) - A102363 n) 12

end

end A095145.P17512911452909673394

namespace A095145

/-- `(A102363(n+1)-A102363(n))%12` -/
def P17512911452909673394.Spec : Prop :=
  ∀ n, P17512911452909673394.a n = A095145 n

end A095145

/-! ## A095145.P9562279626614989562

`C(∑[A010054(n)]-1, A002262(n))%12`
-/

namespace A095145.P9562279626614989562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat (A002262 n).toNat % 12

end

end A095145.P9562279626614989562

namespace A095145

/-- `C(∑[A010054(n)]-1, A002262(n))%12` -/
def P9562279626614989562.Spec : Prop :=
  ∀ n, (P9562279626614989562.a n : ℤ) = A095145 n

end A095145

/-! ## A095145.P10540000539743981483

`C(∑[A010054(n)]-1, A025581(n))%12`
-/

namespace A095145.P10540000539743981483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat (A025581 n).toNat % 12

end

end A095145.P10540000539743981483

namespace A095145

/-- `C(∑[A010054(n)]-1, A025581(n))%12` -/
def P10540000539743981483.Spec : Prop :=
  ∀ n, (P10540000539743981483.a n : ℤ) = A095145 n

end A095145

/-!
# A095146: Even binomial coefficients: C(n,k), 2 <= k <= n-2, sorted, duplicates removed.

The programs for A095146, there is no canonical definition to state claims against.
-/

/-! ## A095146.P1441738922385452508

`2*lt[2, A003016(2*n)]`
-/

namespace A095146.P1441738922385452508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095146.P1441738922385452508

/-! ## A095146.P12457175541206308883

`∩[2*n, A006987(n+1)]`
-/

namespace A095146.P12457175541206308883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095146.P12457175541206308883

/-! ## A095146.P10299077223243554031

`record[A038608(A006987(n+1))]`
-/

namespace A095146.P10299077223243554031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A006987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095146.P10299077223243554031

/-! ## A095146.P3803508812778147142

`record[A038608(A024746(n+1))]`
-/

namespace A095146.P3803508812778147142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A024746 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095146.P3803508812778147142

/-! ## A095146.P10030850522400997939

`record[A038608(A319382(n+1))]`
-/

namespace A095146.P10030850522400997939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A319382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095146.P10030850522400997939

/-! ## A095146.P4490370396845101747

`filter[A006987(n+1), A059841(#)]`
-/

namespace A095146.P4490370396845101747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A095146.P4490370396845101747

/-! ## A095146.P6868818924362367318

`filter[A006987(n+1), A135528(#)]`
-/

namespace A095146.P6868818924362367318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A095146.P6868818924362367318

/-! ## A095146.P1713068763280521740

`filter[A006987(n+1), A266591(#)]`
-/

namespace A095146.P1713068763280521740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A095146.P1713068763280521740

/-! ## A095146.P17024359128078772993

`filter[A006987(n+1), A267043(#)]`
-/

namespace A095146.P17024359128078772993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A095146.P17024359128078772993

/-! ## A095146.P12348866821121428350

`∩[A006987(n+1), A004271(n)]`
-/

namespace A095146.P12348866821121428350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095146.P12348866821121428350

/-!
# A095147: Odd binomial coefficients: C(n,k), 2 <= k <= n-2, sorted, duplicates removed.

The programs for A095147, there is no canonical definition to state claims against.
-/

/-! ## A095147.P12691804834480365062

`A006987(eq[1, A006987(n+3)%2]+3)`
-/

namespace A095147.P12691804834480365062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006987 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A095147.P12691804834480365062

/-! ## A095147.P3673964803397730139

`record[A024746(2*(n+2))%2*A024746(2*(n+2))]`
-/

namespace A095147.P3673964803397730139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024746 (2 * (n + 2))) 2 * A024746 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095147.P3673964803397730139

/-! ## A095147.P17884516054258471021

`∩[2*n+1, A006987(n+1)]`
-/

namespace A095147.P17884516054258471021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P17884516054258471021

/-! ## A095147.P1351484866285130823

`record[A000265(A006987(n+3))]`
-/

namespace A095147.P1351484866285130823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006987 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095147.P1351484866285130823

/-! ## A095147.P11344510981531470179

`record[A000265(A319382(n+3))]`
-/

namespace A095147.P11344510981531470179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319382 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095147.P11344510981531470179

/-! ## A095147.P11161216099949536458

`∩[A006987(n+1), A061346(n+1)]`
-/

namespace A095147.P11161216099949536458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P11161216099949536458

/-! ## A095147.P9590586682031138450

`∩[A006987(n+1), A226025(n+1)]`
-/

namespace A095147.P9590586682031138450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P9590586682031138450

/-! ## A095147.P17568294490661441403

`∩[A006987(n+1), A014076(n+1)]`
-/

namespace A095147.P17568294490661441403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P17568294490661441403

/-! ## A095147.P8850345224442297255

`∩[A006987(n+1), A071904(n+1)]`
-/

namespace A095147.P8850345224442297255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P8850345224442297255

/-! ## A095147.P4297071554114604807

`∩[A006987(n+1), A257521(n+1)]`
-/

namespace A095147.P4297071554114604807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P4297071554114604807

/-! ## A095147.P6399420395823906654

`∩[A006987(n+1), A327922(n+1)]`
-/

namespace A095147.P6399420395823906654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P6399420395823906654

/-! ## A095147.P11807948865690944796

`∩[A006987(n+1), A216848(n+1)]`
-/

namespace A095147.P11807948865690944796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P11807948865690944796

/-! ## A095147.P14188059102641739745

`∩[A006987(n+1), A255763(n+1)]`
-/

namespace A095147.P14188059102641739745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P14188059102641739745

/-! ## A095147.P2602211689541204580

`∩[A006987(n+1), A130569(n+1)]`
-/

namespace A095147.P2602211689541204580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P2602211689541204580

/-! ## A095147.P8554469121376961512

`∩[A006987(n+1), A004273(n)]`
-/

namespace A095147.P8554469121376961512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P8554469121376961512

/-! ## A095147.P6408438297717831693

`∩[A006987(n+1), A004274(n)]`
-/

namespace A095147.P6408438297717831693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P6408438297717831693

/-! ## A095147.P9438129931108051139

`∩[A006987(n+1), A004276(n)]`
-/

namespace A095147.P9438129931108051139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P9438129931108051139

/-! ## A095147.P4735780303519480607

`∩[A006987(n+1), A004281(n)]`
-/

namespace A095147.P4735780303519480607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P4735780303519480607

/-! ## A095147.P169384008941816225

`∩[A006987(n+1), A020742(n)]`
-/

namespace A095147.P169384008941816225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P169384008941816225

/-! ## A095147.P5304262500666279583

`∩[A006987(n+1), A060747(n)]`
-/

namespace A095147.P5304262500666279583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095147.P5304262500666279583

/-!
# A095148: Shifts left under antidiagonal sums of the table (A095788) of iterated binomial transforms of this sequence.

The programs for A095148, there is no canonical definition to state claims against.
-/

/-! ## A095148.P10914537480437484132

`A095788(∑[n]+n)`
-/

namespace A095148.P10914537480437484132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095788 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A095148.P10914537480437484132

/-! ## A095148.P9013770285788994962

`A095788(A000096(n))+char[10]`
-/

namespace A095148.P9013770285788994962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095788 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095148.P9013770285788994962

/-! ## A095148.P2197155126651793726

`A299905(n)+A095788(A000096(n))`
-/

namespace A095148.P2197155126651793726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A095788 (A000096 n).toNat

end

end A095148.P2197155126651793726

/-! ## A095148.P10069043800894904170

`A095788(A000096(n))*A212390(n)`
-/

namespace A095148.P10069043800894904170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095788 (A000096 n).toNat * A212390 n

end

end A095148.P10069043800894904170

/-! ## A095148.P6956792629525981438

`A095788(A000096(n))%A001550(n)`
-/

namespace A095148.P6956792629525981438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095788 (A000096 n).toNat) (A001550 n)

end

end A095148.P6956792629525981438

/-!
# A095149: Triangle read by rows: Aitken's array (A011971) but with a leading diagonal before it given by the Bell numbers (A000110), 1, 1, 2, 5, 15, 52, ...

The programs for A095149, the canonical program `A095149.P11326124666672168335` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095149 has offset 0).

The definition of A095149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095149.P18040860709810733274

`A123346(A056943(n))`
-/

namespace A095149.P18040860709810733274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A056943 n).toNat

end

end A095149.P18040860709810733274

namespace A095149

/-- `A123346(A056943(n))` -/
def P18040860709810733274.Spec : Prop :=
  ∀ n, P18040860709810733274.a n = A095149 n

end A095149

/-! ## A095149.P12411065408828041578

`A123346(A056942(n)-n)`
-/

namespace A095149.P12411065408828041578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A056942 n - (n : ℤ)).toNat

end

end A095149.P12411065408828041578

namespace A095149

/-- `A123346(A056942(n)-n)` -/
def P12411065408828041578.Spec : Prop :=
  ∀ n, P12411065408828041578.a n = A095149 n

end A095149

/-! ## A095149.P8316511472532483969

`A123346(n-A056944(n))`
-/

namespace A095149.P8316511472532483969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 ((n : ℤ) - A056944 n).toNat

end

end A095149.P8316511472532483969

namespace A095149

/-- `A123346(n-A056944(n))` -/
def P8316511472532483969.Spec : Prop :=
  ∀ n, P8316511472532483969.a n = A095149 n

end A095149

/-! ## A095149.P13244664012181561757

`A106436(A130296(n+1)-1+n)`
-/

namespace A095149.P13244664012181561757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A130296 (n + 1) - 1 + (n : ℤ)).toNat

end

end A095149.P13244664012181561757

namespace A095149

/-- `A106436(A130296(n+1)-1+n)` -/
def P13244664012181561757.Spec : Prop :=
  ∀ n, P13244664012181561757.a n = A095149 n

end A095149

/-! ## A095149.P11326124666672168335

`A011971(A056943(A038722(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095149

/-- `A011971(A056943(A038722(n+1)))` -/
def P11326124666672168335.Spec : Prop :=
  ∀ n, P11326124666672168335.a n = A095149 n

theorem P11326124666672168335.correct : P11326124666672168335.Spec := by
  intro n
  simp only [A095149]

end A095149

/-! ## A095149.P2112160659692587929

`A106436(A066182(n+1)+A010054(n))`
-/

namespace A095149.P2112160659692587929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A066182 (n + 1) + A010054 n).toNat

end

end A095149.P2112160659692587929

namespace A095149

/-- `A106436(A066182(n+1)+A010054(n))` -/
def P2112160659692587929.Spec : Prop :=
  ∀ n, P2112160659692587929.a n = A095149 n

end A095149

/-! ## A095149.P1400052050467412603

`A182930(A056943(n)+A002024(n+1))`
-/

namespace A095149.P1400052050467412603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A056943 n + A002024 (n + 1)).toNat

end

end A095149.P1400052050467412603

namespace A095149

/-- `A182930(A056943(n)+A002024(n+1))` -/
def P1400052050467412603.Spec : Prop :=
  ∀ n, P1400052050467412603.a n = A095149 n

end A095149

/-! ## A095149.P1351144982877572457

`A011971(A066182(n+1)-A002024(n+1))`
-/

namespace A095149.P1351144982877572457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A095149.P1351144982877572457

namespace A095149

/-- `A011971(A066182(n+1)-A002024(n+1))` -/
def P1351144982877572457.Spec : Prop :=
  ∀ n, P1351144982877572457.a n = A095149 n

end A095149

/-!
# A095150: a(n) = prime(2^(2^n) + 1).

The programs for A095150, there is no canonical definition to state claims against.
-/

/-! ## A095150.P8755274893060210756

`A051439(2^n)`
-/

namespace A095150.P8755274893060210756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 (2 ^ n)

end

end A095150.P8755274893060210756

/-!
# A095151: a(n+3) = 3*a(n+2) - 2*a(n+1) + 1 with a(0)=0, a(1)=2.

The programs for A095151, the canonical program `A095151.P5582289539786674554` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095151 has offset 0).

The definition of A095151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095151.P5582289539786674554

`3*2^n-(n+3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095151

/-- `3*2^n-(n+3)` -/
def P5582289539786674554.Spec : Prop :=
  ∀ n, P5582289539786674554.a n = A095151 n

theorem P5582289539786674554.correct : P5582289539786674554.Spec := by
  intro n
  simp only [A095151]

end A095151

/-! ## A095151.P11816711085434469191

`ogf((2x-x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A095151.P11816711085434469191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -4, 5, -2] n

end

end A095151.P11816711085434469191

namespace A095151

/-- `ogf((2x-x^2)/(1-4x+5x^2-2x^3))` -/
def P11816711085434469191.Spec : Prop :=
  ∀ n, P11816711085434469191.a n = A095151 n

end A095151

/-! ## A095151.P17455128102970095622

`∑[ogf((2x-x^2)/(1-3x+2x^2))]`
-/

namespace A095151.P17455128102970095622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P17455128102970095622

namespace A095151

/-- `∑[ogf((2x-x^2)/(1-3x+2x^2))]` -/
def P17455128102970095622.Spec : Prop :=
  ∀ n, P17455128102970095622.a n = A095151 n

end A095151

/-! ## A095151.P10451623265942589236

`abs(lcm(3, 2^n)-(n+3))`
-/

namespace A095151.P10451623265942589236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (2 ^ n) : ℤ) - (n + 3 : ℤ)|

end

end A095151.P10451623265942589236

namespace A095151

/-- `abs(lcm(3, 2^n)-(n+3))` -/
def P10451623265942589236.Spec : Prop :=
  ∀ n, P10451623265942589236.a n = A095151 n

end A095151

/-! ## A095151.P7099706863038393825

`∑[2*a(n-1)+1]` with `a(0)=0, a(1)=2`
-/

namespace A095151.P7099706863038393825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P7099706863038393825

namespace A095151

/-- `∑[2*a(n-1)+1]` -/
def P7099706863038393825.Spec : Prop :=
  ∀ n, (P7099706863038393825.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P8535916295561236579

`∑[or(1, 2*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A095151.P8535916295561236579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P8535916295561236579

namespace A095151

/-- `∑[or(1, 2*a(n-1))]` -/
def P8535916295561236579.Spec : Prop :=
  ∀ n, (P8535916295561236579.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P6028722744129964031

`∑[xor(1, 2*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A095151.P6028722744129964031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P6028722744129964031

namespace A095151

/-- `∑[xor(1, 2*a(n-1))]` -/
def P6028722744129964031.Spec : Prop :=
  ∀ n, (P6028722744129964031.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P6116650666772262896

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A095151.P6116650666772262896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P6116650666772262896

namespace A095151

/-- `∑[∑[2*a(n-1)]]` -/
def P6116650666772262896.Spec : Prop :=
  ∀ n, (P6116650666772262896.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P2145947029662730092

`∑[lcm(2, a(n-1))+1]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A095151.P2145947029662730092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P2145947029662730092

namespace A095151

/-- `∑[lcm(2, a(n-1))+1]` -/
def P2145947029662730092.Spec : Prop :=
  ∀ n, (P2145947029662730092.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P14198780810688441694

`abs(2*a(n-1)+1+n)` with `a(0)=0`
-/

namespace A095151.P14198780810688441694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 1 + n

end

end A095151.P14198780810688441694

namespace A095151

/-- `abs(2*a(n-1)+1+n)` -/
def P14198780810688441694.Spec : Prop :=
  ∀ n, (P14198780810688441694.a n : ℤ) = A095151 n

theorem P14198780810688441694.correct : P14198780810688441694.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P14198780810688441694.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P14198780810688441694.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P11921876621020454687

`floor(2*a(n-1)+1+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A095151.P11921876621020454687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 1 + n

end

end A095151.P11921876621020454687

namespace A095151

/-- `floor(2*a(n-1)+1+n)` -/
def P11921876621020454687.Spec : Prop :=
  ∀ n, (P11921876621020454687.a n : ℤ) = A095151 n

theorem P11921876621020454687.correct : P11921876621020454687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P11921876621020454687.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P11921876621020454687.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P9480777625776101326

`ceil(2*a(n-1)+1+n)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A095151.P9480777625776101326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 1 + n

end

end A095151.P9480777625776101326

namespace A095151

/-- `ceil(2*a(n-1)+1+n)` -/
def P9480777625776101326.Spec : Prop :=
  ∀ n, (P9480777625776101326.a n : ℤ) = A095151 n

theorem P9480777625776101326.correct : P9480777625776101326.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P9480777625776101326.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P9480777625776101326.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P767251419124565707

`round(2*a(n-1)+n+1)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A095151.P767251419124565707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (n + 1)

end

end A095151.P767251419124565707

namespace A095151

/-- `round(2*a(n-1)+n+1)` -/
def P767251419124565707.Spec : Prop :=
  ∀ n, (P767251419124565707.a n : ℤ) = A095151 n

theorem P767251419124565707.correct : P767251419124565707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P767251419124565707.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P767251419124565707.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P9147265367815748686

`2*(a(n-1)+(n+1)/2)` with `a(0)=0`
-/

namespace A095151.P9147265367815748686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (n + 1 : ℚ) / 2)

end

end A095151.P9147265367815748686

namespace A095151

/-- `2*(a(n-1)+(n+1)/2)` -/
def P9147265367815748686.Spec : Prop :=
  ∀ n, P9147265367815748686.a n = (A095151 n : ℚ)

theorem P9147265367815748686.correct : P9147265367815748686.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P9147265367815748686.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P9147265367815748686.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P8396079244796188116

`floor(n-(2*(1-a(n-1))-3))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A095151.P8396079244796188116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (2 * (1 - a (n - 1)) - 3)

end

end A095151.P8396079244796188116

namespace A095151

/-- `floor(n-(2*(1-a(n-1))-3))` -/
def P8396079244796188116.Spec : Prop :=
  ∀ n, P8396079244796188116.a n = A095151 n

theorem P8396079244796188116.correct : P8396079244796188116.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P8396079244796188116.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P8396079244796188116.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P6910765273218369261

`∑[a(n-1)+a(n-1)+1]` with `a(0)=0, a(1)=2`
-/

namespace A095151.P6910765273218369261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095151.P6910765273218369261

namespace A095151

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P6910765273218369261.Spec : Prop :=
  ∀ n, (P6910765273218369261.a n : ℤ) = A095151 n

end A095151

/-! ## A095151.P8824989559359068996

`2*(1-((1-n)/2-a(n-1)))` with `a(0)=0`
-/

namespace A095151.P8824989559359068996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (1 - ((1 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A095151.P8824989559359068996

namespace A095151

/-- `2*(1-((1-n)/2-a(n-1)))` -/
def P8824989559359068996.Spec : Prop :=
  ∀ n, P8824989559359068996.a n = (A095151 n : ℚ)

theorem P8824989559359068996.correct : P8824989559359068996.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P8824989559359068996.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P8824989559359068996.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P11300688086026905440

`floor(a(n-1)+1+a(n-1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A095151.P11300688086026905440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + n)

end

end A095151.P11300688086026905440

namespace A095151

/-- `floor(a(n-1)+1+a(n-1)+n)` -/
def P11300688086026905440.Spec : Prop :=
  ∀ n, (P11300688086026905440.a n : ℤ) = A095151 n

theorem P11300688086026905440.correct : P11300688086026905440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P11300688086026905440.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P11300688086026905440.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P3931137532771449917

`round(a(n-1)+a(n-1)+n+1)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A095151.P3931137532771449917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (n + 1))

end

end A095151.P3931137532771449917

namespace A095151

/-- `round(a(n-1)+a(n-1)+n+1)` -/
def P3931137532771449917.Spec : Prop :=
  ∀ n, (P3931137532771449917.a n : ℤ) = A095151 n

theorem P3931137532771449917.correct : P3931137532771449917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P3931137532771449917.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P3931137532771449917.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-! ## A095151.P9348243103277698452

`floor(a(n-1)-(floor(1-a(n-1)-n)-2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A095151.P9348243103277698452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (1 - a (n - 1) - (n : ℤ) - 2)

end

end A095151.P9348243103277698452

namespace A095151

/-- `floor(a(n-1)-(floor(1-a(n-1)-n)-2))` -/
def P9348243103277698452.Spec : Prop :=
  ∀ n, P9348243103277698452.a n = A095151 n

theorem P9348243103277698452.correct : P9348243103277698452.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A095151, Nat.add_sub_cancel, A095151.P9348243103277698452.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A095151, Nat.add_sub_cancel, A095151.P9348243103277698452.a, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095151

/-!
# A095152: Number of 3-block covers of a labeled n-set.

The programs for A095152, the canonical program `A095152.P9676727483578778964` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095152 has offset 2).

The definition of A095152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095152.P13226391517978885275

`ogf((1+21x)/(1-11x+31x^2-21x^3))`
-/

namespace A095152.P13226391517978885275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 21] [1, -11, 31, -21] n

end

end A095152.P13226391517978885275

namespace A095152

/-- `ogf((1+21x)/(1-11x+31x^2-21x^3))` -/
def P13226391517978885275.Spec : Prop :=
  ∀ n, P13226391517978885275.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P9676727483578778964

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=1, a(1)=32, a(2)=321`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095152

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P9676727483578778964.Spec : Prop :=
  ∀ n, P9676727483578778964.a n = A095152 (n + 2)

theorem P9676727483578778964.correct : P9676727483578778964.Spec := by
  intro n
  simp only [A095152, Nat.add_sub_cancel]

end A095152

/-! ## A095152.P8657917207246982494

`(11-6*3^(n+2)+7^(n+2))/6`
-/

namespace A095152.P8657917207246982494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 - (6 * 3 ^ (n + 2) : ℤ) + (7 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A095152.P8657917207246982494

namespace A095152

/-- `(11-6*3^(n+2)+7^(n+2))/6` -/
def P8657917207246982494.Spec : Prop :=
  ∀ n, P8657917207246982494.a n = (A095152 (n + 2) : ℚ)

theorem P8657917207246982494.correct : P8657917207246982494.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A095152, Nat.add_sub_cancel, A095152.P8657917207246982494.a, A095152.P9676727483578778964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A095152, Nat.add_sub_cancel, A095152.P8657917207246982494.a, A095152.P9676727483578778964.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A095152

/-! ## A095152.P5605690103525844860

`record[A047852(n)-A024023(n)]`
-/

namespace A095152.P5605690103525844860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - A024023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095152.P5605690103525844860

namespace A095152

/-- `record[A047852(n)-A024023(n)]` -/
def P5605690103525844860.Spec : Prop :=
  ∀ n, P5605690103525844860.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P3909292378352293099

`A341590(n+2)-A029858(n+2)`
-/

namespace A095152.P3909292378352293099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 (n + 2) - A029858 (n + 2)

end

end A095152.P3909292378352293099

namespace A095152

/-- `A341590(n+2)-A029858(n+2)` -/
def P3909292378352293099.Spec : Prop :=
  ∀ n, P3909292378352293099.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P6896636884014985704

`∑[A074608(n+1)-A000244(n+2)]`
-/

namespace A095152.P6896636884014985704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074608 (n + 1) - A000244 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095152.P6896636884014985704

namespace A095152

/-- `∑[A074608(n+1)-A000244(n+2)]` -/
def P6896636884014985704.Spec : Prop :=
  ∀ n, P6896636884014985704.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P15494087335959980695

`∑[A000420(n+1)-6*A000244(n)]`
-/

namespace A095152.P15494087335959980695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 1) - 6 * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095152.P15494087335959980695

namespace A095152

/-- `∑[A000420(n+1)-6*A000244(n)]` -/
def P15494087335959980695.Spec : Prop :=
  ∀ n, P15494087335959980695.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P12962381359299412769

`∑[A000420(n+1)-Δ[A000244(n+1)]]`
-/

namespace A095152.P12962381359299412769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095152.P12962381359299412769

namespace A095152

/-- `∑[A000420(n+1)-Δ[A000244(n+1)]]` -/
def P12962381359299412769.Spec : Prop :=
  ∀ n, P12962381359299412769.a n = A095152 (n + 2)

end A095152

/-! ## A095152.P15770581241647155002

`(A023000(n+3)+2)%A074608(n+2)`
-/

namespace A095152.P15770581241647155002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023000 (n + 3) + 2) (A074608 (n + 2))

end

end A095152.P15770581241647155002

namespace A095152

/-- `(A023000(n+3)+2)%A074608(n+2)` -/
def P15770581241647155002.Spec : Prop :=
  ∀ n, P15770581241647155002.a n = A095152 (n + 2)

end A095152

/-!
# A095153: Number of 4-block covers of a labeled n-set.

The programs for A095153, the canonical program `A095153.P6600261452962927816` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095153 has offset 3).

The definition of A095153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095153.P6600261452962927816

`∑{#}[n+3, (-1)^#*C(n+3, #)*C(2^(n+3-#)-1, 4)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095153

/-- `∑{#}[n+3, (-1)^#*C(n+3, #)*C(2^(n+3-#)-1, 4)]` -/
def P6600261452962927816.Spec : Prop :=
  ∀ n, P6600261452962927816.a n = A095153 (n + 3)

theorem P6600261452962927816.correct : P6600261452962927816.Spec := by
  intro n
  simp only [A095153, Nat.add_sub_cancel]

end A095153

/-!
# A095154: Number of 5-block covers of a labeled n-set.

The programs for A095154, the canonical program `A095154.P15222260033428961067` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095154 has offset 3).

The definition of A095154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095154.P10414550318966015635

`∑{#}[n+3, (-1)^#*C(n+3, #)*C(2^(n+3-#)-1, 5)]`
-/

namespace A095154.P10414550318966015635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (n + 3) k : ℤ) * (Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 3 : ℤ) - (k : ℤ) : ℤ) - 1)).toNat 5 : ℤ)

end

end A095154.P10414550318966015635

namespace A095154

/-- `∑{#}[n+3, (-1)^#*C(n+3, #)*C(2^(n+3-#)-1, 5)]` -/
def P10414550318966015635.Spec : Prop :=
  ∀ n, P10414550318966015635.a n = A095154 (n + 3)

end A095154

/-! ## A095154.P15222260033428961067

`(274-225*3^(n+3)+85*7^(n+3)-15*15^(n+3)+31^(n+3))/120`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095154

/-- `(274-225*3^(n+3)+85*7^(n+3)-15*15^(n+3)+31^(n+3))/120` -/
def P15222260033428961067.Spec : Prop :=
  ∀ n, P15222260033428961067.a n = (A095154 (n + 3) : ℚ)

end A095154

/-!
# A095156: Least k such that 1/k begins with n after deleting the decimal point and the zeros following the decimal point.

The programs for A095156, there is no canonical definition to state claims against.
-/

/-! ## A095156.P11736895513211484744

`A326818(n+1)+C(A052038(n+2), A326818(n+1))`
-/

namespace A095156.P11736895513211484744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326818 (n + 1) + (Nat.choose (A052038 (n + 2)).toNat (A326818 (n + 1)).toNat : ℤ)

end

end A095156.P11736895513211484744

/-! ## A095156.P11319109310376349061

`A259229(n+1)+A033420(A142815(n+1))`
-/

namespace A095156.P11319109310376349061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259229 (n + 1) + A033420 (A142815 (n + 1)).toNat

end

end A095156.P11319109310376349061

/-! ## A095156.P11614101403195395788

`A259229(n+1)+A033420(A142817(n+1))`
-/

namespace A095156.P11614101403195395788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259229 (n + 1) + A033420 (A142817 (n + 1)).toNat

end

end A095156.P11614101403195395788

/-! ## A095156.P7608857174185861574

`A006480(A072189(n))*A259229(n+1)`
-/

namespace A095156.P7608857174185861574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (A072189 n).toNat * A259229 (n + 1)

end

end A095156.P7608857174185861574

/-! ## A095156.P17121447536595992446

`A259229(n+1)+A245552(A269451(n+1))`
-/

namespace A095156.P17121447536595992446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259229 (n + 1) + A245552 (A269451 (n + 1)).toNat

end

end A095156.P17121447536595992446

/-!
# A095157: Least number beginning with n such that every partial sum is a prime.

The programs for A095157, there is no canonical definition to state claims against.
-/

/-! ## A095157.P3435939932627560885

`A059717(A239464(n+1))-A057427(n)`
-/

namespace A095157.P3435939932627560885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A239464 (n + 1)).toNat - A057427 n

end

end A095157.P3435939932627560885

/-!
# A095160: Let B(k) be the sum of binary digits of k. Sequence lists the numbers k such that B(k) = B(digit sum(k)).

The programs for A095160, there is no canonical definition to state claims against.
-/

/-! ## A095160.P16943220630216256575

`eq[A000120(∑{digits}[n, #]), A000120(n)]`
-/

namespace A095160.P16943220630216256575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A095160.P16943220630216256575

/-! ## A095160.P5286533333558718158

`eq[A000120(n), A000120(A007953(n))]`
-/

namespace A095160.P5286533333558718158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P5286533333558718158

/-! ## A095160.P16062516386265468213

`eq[A001316(n), A001316(A007953(n))]`
-/

namespace A095160.P16062516386265468213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P16062516386265468213

/-! ## A095160.P8654574336840285617

`eq[A038573(A007953(n)), A038573(n)]`
-/

namespace A095160.P8654574336840285617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P8654574336840285617

/-! ## A095160.P426162055262740980

`eq[A048883(A007953(n)), A048883(n)]`
-/

namespace A095160.P426162055262740980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P426162055262740980

/-! ## A095160.P14239137612518625435

`eq[A050315(A007953(n)), A050315(n)]`
-/

namespace A095160.P14239137612518625435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P14239137612518625435

/-! ## A095160.P16367616034174172229

`eq[A093659(A007953(n)), A093659(n)]`
-/

namespace A095160.P16367616034174172229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P16367616034174172229

/-! ## A095160.P15458439024216000480

`eq[A102376(A007953(n)), A102376(n)]`
-/

namespace A095160.P15458439024216000480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P15458439024216000480

/-! ## A095160.P2546211116619638533

`eq[A131762(A007953(n)), A131762(n)]`
-/

namespace A095160.P2546211116619638533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P2546211116619638533

/-! ## A095160.P16101566721057722319

`eq[A000120(n), A000120(A062028(n)-n)]`
-/

namespace A095160.P16101566721057722319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095160.P16101566721057722319

/-!
# A095161: n occurs n times, with distinct successive terms.

The programs for A095161, there is no canonical definition to state claims against.
-/

/-! ## A095161.P9915625516926381487

`A216197(n+1)-A216218(A332727(n))`
-/

namespace A095161.P9915625516926381487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216197 (n + 1) - A216218 (A332727 n).toNat

end

end A095161.P9915625516926381487

/-! ## A095161.P427132414734688682

`or(A001511(A134865(n+1)), A347323(n))`
-/

namespace A095161.P427132414734688682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A134865 (n + 1)).toNat) (A347323 n)

end

end A095161.P427132414734688682

/-! ## A095161.P9487082534151107379

`or(A001511(A140753(n+1)), A347323(n))`
-/

namespace A095161.P9487082534151107379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A140753 (n + 1)).toNat) (A347323 n)

end

end A095161.P9487082534151107379

/-! ## A095161.P2460345529766379880

`A006968(A210584(n+1)^A295657(n+1))`
-/

namespace A095161.P2460345529766379880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (SequenceMachineLib.roundAway ((A210584 (n + 1) : ℚ) ^ (A295657 (n + 1) : ℤ))).toNat

end

end A095161.P2460345529766379880

/-! ## A095161.P10424123883899278192

`A191517(A175592(n+1))`
-/

namespace A095161.P10424123883899278192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191517 (A175592 (n + 1)).toNat

end

end A095161.P10424123883899278192

/-!
# A095162: Index of first occurrence of n in A095161.

The programs for A095162, there is no canonical definition to state claims against.
-/

/-! ## A095162.P116145367357110276

`A000124(n)-A038457(A025178(n+1))`
-/

namespace A095162.P116145367357110276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A038457 (A025178 (n + 1)).toNat

end

end A095162.P116145367357110276

/-! ## A095162.P7678943466236341828

`∑[dr(A034888(A165544(n)))]`
-/

namespace A095162.P7678943466236341828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A034888 (A165544 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095162.P7678943466236341828

/-! ## A095162.P10480564150838422838

`A107631(A262406(n+1)+1)`
-/

namespace A095162.P10480564150838422838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A262406 (n + 1) + 1).toNat

end

end A095162.P10480564150838422838

/-! ## A095162.P17600887507905930309

`record[A351293(n+4)-A096235(n+1)]`
-/

namespace A095162.P17600887507905930309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351293 (n + 4) - A096235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095162.P17600887507905930309

/-! ## A095162.P9974033016595492965

`A061071(Δ[A008619(n+1)^A008619(n)])`
-/

namespace A095162.P9974033016595492965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (n + 1) : ℚ) ^ (A008619 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A095162.P9974033016595492965

/-!
# A095163: a(n) = smallest divisor d of n that occurs earlier in the sequence fewer than d times.

The programs for A095163, there is no canonical definition to state claims against.
-/

/-! ## A095163.P15667132170762911513

`(1+n)/A095165(n+1)`
-/

namespace A095163.P15667132170762911513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A095165 (n + 1) : ℚ)

end

end A095163.P15667132170762911513

/-! ## A095163.P908511648596166964

`round(sqrt(2*A096780(n+1)))`
-/

namespace A095163.P908511648596166964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A096780 (n + 1) : ℝ))

end

end A095163.P908511648596166964

/-! ## A095163.P10469531565665331616

`A002024(A096780(n+1))`
-/

namespace A095163.P10469531565665331616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A096780 (n + 1)).toNat

end

end A095163.P10469531565665331616

/-! ## A095163.P12424876986458335891

`A003056(A096780(n+1)-1)+1`
-/

namespace A095163.P12424876986458335891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A096780 (n + 1) - 1).toNat + 1

end

end A095163.P12424876986458335891

/-! ## A095163.P5252514618773301384

`A123578(A096780(n+1)%A270869(n))`
-/

namespace A095163.P5252514618773301384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.tmod (A096780 (n + 1)) (A270869 n)).toNat

end

end A095163.P5252514618773301384

/-! ## A095163.P11689493834036406814

`A123578(or(A036987(n), A096780(n+1)))`
-/

namespace A095163.P11689493834036406814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor (A036987 n) (A096780 (n + 1))).toNat

end

end A095163.P11689493834036406814

/-! ## A095163.P10052252292714039528

`A123578(A096780(n+1))%A063655(n+1)`
-/

namespace A095163.P10052252292714039528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A096780 (n + 1)).toNat) (A063655 (n + 1))

end

end A095163.P10052252292714039528

/-! ## A095163.P4819539804428355074

`A054531(A095165(n+1)+∑[n])`
-/

namespace A095163.P4819539804428355074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A095165 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A095163.P4819539804428355074

/-! ## A095163.P2073216320557011966

`A000194(2*A096780(n+1))`
-/

namespace A095163.P2073216320557011966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A096780 (n + 1)).toNat

end

end A095163.P2073216320557011966

/-! ## A095163.P3314833407242066388

`A349520(2*A096780(n+1))`
-/

namespace A095163.P3314833407242066388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * A096780 (n + 1)).toNat

end

end A095163.P3314833407242066388

/-! ## A095163.P9103768611351396394

`A000194(A096780(n+1)+A096780(n+1))`
-/

namespace A095163.P9103768611351396394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A096780 (n + 1) + A096780 (n + 1)).toNat

end

end A095163.P9103768611351396394

/-! ## A095163.P883697935711752448

`A095165((A063655(n+1)-A095165(n+1))²)`
-/

namespace A095163.P883697935711752448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 ((A063655 (n + 1) - A095165 (n + 1)) ^ 2).toNat

end

end A095163.P883697935711752448

/-!
# A095164: Index of the first occurrence of n in A095163.

The programs for A095164, there is no canonical definition to state claims against.
-/

/-! ## A095164.P1235685150861649592

`A075384(n+1)+C(n, 61)`
-/

namespace A095164.P1235685150861649592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075384 (n + 1) + (Nat.choose n 61 : ℤ)

end

end A095164.P1235685150861649592

/-! ## A095164.P6548729807714584916

`(n+1)*A075388(n+1)%32`
-/

namespace A095164.P6548729807714584916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A075388 (n + 1)) 32

end

end A095164.P6548729807714584916

/-! ## A095164.P11172035871027248432

`A075383(∑[n]+1)%∑[n+6]`
-/

namespace A095164.P11172035871027248432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A095164.P11172035871027248432

/-! ## A095164.P14346742083376828976

`A075383(∑[and(64, n)/4+n]+1)`
-/

namespace A095164.P14346742083376828976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 64 n : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A095164.P14346742083376828976

/-! ## A095164.P2721216474911829587

`A075384(A118759(n)+1)`
-/

namespace A095164.P2721216474911829587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075384 (A118759 n + 1).toNat

end

end A095164.P2721216474911829587

/-! ## A095164.P15654550633995409379

`A075384(A025442(n)!+n)`
-/

namespace A095164.P15654550633995409379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075384 (Nat.factorial (A025442 n).toNat + n)

end

end A095164.P15654550633995409379

/-! ## A095164.P538121900466836909

`A075384(n+1)^A011600(n²)`
-/

namespace A095164.P538121900466836909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075384 (n + 1) : ℚ) ^ (A011600 (n ^ 2) : ℤ)

end

end A095164.P538121900466836909

/-! ## A095164.P17343966588996568998

`(n+1)*A075388(A069782(n+1))`
-/

namespace A095164.P17343966588996568998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075388 (A069782 (n + 1)).toNat

end

end A095164.P17343966588996568998

/-! ## A095164.P9014632814243684236

`(n+1)*A075388(A085736(n+1))`
-/

namespace A095164.P9014632814243684236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075388 (A085736 (n + 1)).toNat

end

end A095164.P9014632814243684236

/-! ## A095164.P10240853379154037540

`A075388(n+1)*A090107(n+1)`
-/

namespace A095164.P10240853379154037540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075388 (n + 1) * A090107 (n + 1)

end

end A095164.P10240853379154037540

/-!
# A095165: n divided by A095163(n).

The programs for A095165, there is no canonical definition to state claims against.
-/

/-! ## A095165.P6076774768185223202

`(1+n)/A095163(n+1)`
-/

namespace A095165.P6076774768185223202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A095163 (n + 1) : ℚ)

end

end A095165.P6076774768185223202

/-! ## A095165.P9041846182700538264

`(n+1)/round(sqrt(2*A096780(n+1)))`
-/

namespace A095165.P9041846182700538264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (2 * A096780 (n + 1) : ℝ)) : ℚ)

end

end A095165.P9041846182700538264

/-! ## A095165.P7286372626076350080

`(n+1)/A002024(A096780(n+1))`
-/

namespace A095165.P7286372626076350080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002024 (A096780 (n + 1)).toNat : ℚ)

end

end A095165.P7286372626076350080

/-! ## A095165.P8926150716066389510

`(n+1)/(A003056(A096780(n+1)-1)+1)`
-/

namespace A095165.P8926150716066389510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003056 (A096780 (n + 1) - 1).toNat + 1 : ℚ)

end

end A095165.P8926150716066389510

/-! ## A095165.P15398649190983643678

`A063655(n+1)-A002024(A096780(n+1))`
-/

namespace A095165.P15398649190983643678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A002024 (A096780 (n + 1)).toNat

end

end A095165.P15398649190983643678

/-! ## A095165.P16375571828497646961

`A000027(n+1)/A123578(A096780(n+1))`
-/

namespace A095165.P16375571828497646961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A123578 (A096780 (n + 1)).toNat : ℚ)

end

end A095165.P16375571828497646961

/-! ## A095165.P1010515354048300203

`A063655(n+1)-(A003056(A096780(n+1)-1)+1)`
-/

namespace A095165.P1010515354048300203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - (A003056 (A096780 (n + 1) - 1).toNat + 1)

end

end A095165.P1010515354048300203

/-! ## A095165.P5716495990889635418

`A054531(A095163(n+1)+∑[n])`
-/

namespace A095165.P5716495990889635418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A095163 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A095165.P5716495990889635418

/-! ## A095165.P4865714082379986709

`(n+1)/A000194(2*A096780(n+1))`
-/

namespace A095165.P4865714082379986709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000194 (2 * A096780 (n + 1)).toNat : ℚ)

end

end A095165.P4865714082379986709

/-!
# A095166: Group the natural numbers >= 1 so that the n-th group contains n(n+1)/2 numbers and obtain the group sum.

The programs for A095166, the canonical program `A095166.P619936935345648061` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095166 has offset 1).

The definition of A095166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095166.P3687851397507080726

`Δ[C(∑[∑[n]]+1, 2)]`
-/

namespace A095166.P3687851397507080726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095166.P3687851397507080726

namespace A095166

/-- `Δ[C(∑[∑[n]]+1, 2)]` -/
def P3687851397507080726.Spec : Prop :=
  ∀ n, P3687851397507080726.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P619936935345648061

`∑[∑[∑[5*n²+1]]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095166

/-- `∑[∑[∑[5*n²+1]]]` -/
def P619936935345648061.Spec : Prop :=
  ∀ n, (P619936935345648061.a n : ℤ) = A095166 (n + 1)

theorem P619936935345648061.correct : P619936935345648061.Spec := by
  intro n
  simp only [A095166, Nat.add_sub_cancel]

end A095166

/-! ## A095166.P12291275922737817383

`Δ[C(n+2, 3)+(C(n+2, 3)²-C(n+2, 3))/2]`
-/

namespace A095166.P12291275922737817383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℚ) + ((Nat.choose (n + 2) 3 ^ 2 : ℤ) - (Nat.choose (n + 2) 3 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095166.P12291275922737817383

namespace A095166

/-- `Δ[C(n+2, 3)+(C(n+2, 3)²-C(n+2, 3))/2]` -/
def P12291275922737817383.Spec : Prop :=
  ∀ n, P12291275922737817383.a n = (A095166 (n + 1) : ℚ)

end A095166

/-! ## A095166.P6639911237482030894

`Δ[A373733(n)]`
-/

namespace A095166.P6639911237482030894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095166.P6639911237482030894

namespace A095166

/-- `Δ[A373733(n)]` -/
def P6639911237482030894.Spec : Prop :=
  ∀ n, P6639911237482030894.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P8225659497578707807

`A244864(n)-∑[∑[n]]`
-/

namespace A095166.P8225659497578707807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095166.P8225659497578707807

namespace A095166

/-- `A244864(n)-∑[∑[n]]` -/
def P8225659497578707807.Spec : Prop :=
  ∀ n, P8225659497578707807.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P16420085929781985244

`∑[A167239(n+1)]/8`
-/

namespace A095166.P16420085929781985244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167239 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A095166.P16420085929781985244

namespace A095166

/-- `∑[A167239(n+1)]/8` -/
def P16420085929781985244.Spec : Prop :=
  ∀ n, P16420085929781985244.a n = (A095166 (n + 1) : ℚ)

end A095166

/-! ## A095166.P4042582926419705458

`∑[∑[∑[A158187(n)+1]]]/2`
-/

namespace A095166.P4042582926419705458
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A095166.P4042582926419705458

namespace A095166

/-- `∑[∑[∑[A158187(n)+1]]]/2` -/
def P4042582926419705458.Spec : Prop :=
  ∀ n, P4042582926419705458.a n = (A095166 (n + 1) : ℚ)

end A095166

/-! ## A095166.P6700600803939104523

`A051880(n)-A033487(n)`
-/

namespace A095166.P6700600803939104523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n - A033487 n

end

end A095166.P6700600803939104523

namespace A095166

/-- `A051880(n)-A033487(n)` -/
def P6700600803939104523.Spec : Prop :=
  ∀ n, P6700600803939104523.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P518406478655020167

`A108650(n)-A174002(n)`
-/

namespace A095166.P518406478655020167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - A174002 n

end

end A095166.P518406478655020167

namespace A095166

/-- `A108650(n)-A174002(n)` -/
def P518406478655020167.Spec : Prop :=
  ∀ n, P518406478655020167.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P7844533444999627226

`A051843(n)+A033455(n+1)`
-/

namespace A095166.P7844533444999627226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 n + A033455 (n + 1)

end

end A095166.P7844533444999627226

namespace A095166

/-- `A051843(n)+A033455(n+1)` -/
def P7844533444999627226.Spec : Prop :=
  ∀ n, P7844533444999627226.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P15137684160623902639

`A373733(n+1)-A373733(n)`
-/

namespace A095166.P15137684160623902639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 (n + 1) - A373733 n

end

end A095166.P15137684160623902639

namespace A095166

/-- `A373733(n+1)-A373733(n)` -/
def P15137684160623902639.Spec : Prop :=
  ∀ n, P15137684160623902639.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P16871944361868625437

`2*A027800(n)-A051740(n)`
-/

namespace A095166.P16871944361868625437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027800 n - A051740 n

end

end A095166.P16871944361868625437

namespace A095166

/-- `2*A027800(n)-A051740(n)` -/
def P16871944361868625437.Spec : Prop :=
  ∀ n, P16871944361868625437.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P13355809912973512582

`A244882(n)+n*∑[A000292(n)]`
-/

namespace A095166.P13355809912973512582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095166.P13355809912973512582

namespace A095166

/-- `A244882(n)+n*∑[A000292(n)]` -/
def P13355809912973512582.Spec : Prop :=
  ∀ n, P13355809912973512582.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P13043765594014026045

`A201106(n+1)+A006322(n+1)`
-/

namespace A095166.P13043765594014026045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201106 (n + 1) + A006322 (n + 1)

end

end A095166.P13043765594014026045

namespace A095166

/-- `A201106(n+1)+A006322(n+1)` -/
def P13043765594014026045.Spec : Prop :=
  ∀ n, P13043765594014026045.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P6376719389157789450

`∑[A033487(n)]+A034263(n)-A033487(n)`
-/

namespace A095166.P6376719389157789450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A034263 n - A033487 n)

end

end A095166.P6376719389157789450

namespace A095166

/-- `∑[A033487(n)]+A034263(n)-A033487(n)` -/
def P6376719389157789450.Spec : Prop :=
  ∀ n, P6376719389157789450.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P3440696294962584083

`A000217(n+1)+A054563(n+1)-A054563(n)`
-/

namespace A095166.P3440696294962584083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A054563 (n + 1) - A054563 n)

end

end A095166.P3440696294962584083

namespace A095166

/-- `A000217(n+1)+A054563(n+1)-A054563(n)` -/
def P3440696294962584083.Spec : Prop :=
  ∀ n, P3440696294962584083.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P1848082318609796504

`A002817(n+1)+A000217(n+1)*A000292(n)`
-/

namespace A095166.P1848082318609796504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + A000217 (n + 1) * A000292 n

end

end A095166.P1848082318609796504

namespace A095166

/-- `A002817(n+1)+A000217(n+1)*A000292(n)` -/
def P1848082318609796504.Spec : Prop :=
  ∀ n, P1848082318609796504.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P13431346116937349198

`A004302(n+1)-A050534(n+2)`
-/

namespace A095166.P13431346116937349198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 1) - A050534 (n + 2)

end

end A095166.P13431346116937349198

namespace A095166

/-- `A004302(n+1)-A050534(n+2)` -/
def P13431346116937349198.Spec : Prop :=
  ∀ n, P13431346116937349198.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P2209016396198764861

`A111400(n+1)-(A113596(n+1)+A000217(n+1))`
-/

namespace A095166.P2209016396198764861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111400 (n + 1) - (A113596 (n + 1) + A000217 (n + 1))

end

end A095166.P2209016396198764861

namespace A095166

/-- `A111400(n+1)-(A113596(n+1)+A000217(n+1))` -/
def P2209016396198764861.Spec : Prop :=
  ∀ n, P2209016396198764861.a n = A095166 (n + 1)

end A095166

/-! ## A095166.P67222777411153078

`A000125(n+1)*A000217(n+1)-A110426(n+1)`
-/

namespace A095166.P67222777411153078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 1) * A000217 (n + 1) - A110426 (n + 1)

end

end A095166.P67222777411153078

namespace A095166

/-- `A000125(n+1)*A000217(n+1)-A110426(n+1)` -/
def P67222777411153078.Spec : Prop :=
  ∀ n, P67222777411153078.a n = A095166 (n + 1)

end A095166

/-!
# A095168: Leading diagonal of A095169.

The programs for A095168, there is no canonical definition to state claims against.
-/

/-! ## A095168.P4869939885284306083

`A095167(∑[n]+1)`
-/

namespace A095168.P4869939885284306083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095168.P4869939885284306083

/-! ## A095168.P13807923167075389578

`and(-1, A095167(A000124(n)))`
-/

namespace A095168.P13807923167075389578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A095167 (A000124 n).toNat)

end

end A095168.P13807923167075389578

/-! ## A095168.P14741285094533083695

`A000027(A095167(C(n, 2)+n+1))`
-/

namespace A095168.P14741285094533083695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095167 (Nat.choose n 2 + (n + 1))).toNat

end

end A095168.P14741285094533083695

/-! ## A095168.P7875873480559657242

`A095167(A000124(n))%A000051(n)`
-/

namespace A095168.P7875873480559657242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095167 (A000124 n).toNat) (A000051 n)

end

end A095168.P7875873480559657242

/-! ## A095168.P17607501544410078739

`gcd(A000038(n), A095167(A000124(n)))`
-/

namespace A095168.P17607501544410078739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A095167 (A000124 n).toNat)

end

end A095168.P17607501544410078739

/-! ## A095168.P8213742893901777832

`A007318(∑[n])*A095167(A000124(n))`
-/

namespace A095168.P8213742893901777832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A095167 (A000124 n).toNat

end

end A095168.P8213742893901777832

/-! ## A095168.P4774421976384310789

`A095167(A000124(n))+A000007(n+1)`
-/

namespace A095168.P4774421976384310789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095167 (A000124 n).toNat + A000007 (n + 1)

end

end A095168.P4774421976384310789

/-! ## A095168.P7321662447774416509

`A000005((n+1)²)%2*A095167(A000124(n))`
-/

namespace A095168.P7321662447774416509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) ^ 2)) 2 * A095167 (A000124 n).toNat

end

end A095168.P7321662447774416509

/-!
# A095169: Leading diagonal of the triangle A095167.

The programs for A095169, there is no canonical definition to state claims against.
-/

/-! ## A095169.P1607622650116864664

`A095167(∑[1+n])`
-/

namespace A095169.P1607622650116864664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095169.P1607622650116864664

/-! ## A095169.P5103283795441987184

`and(-1, A095167(C(n+2, 2)))`
-/

namespace A095169.P5103283795441987184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A095167 (Nat.choose (n + 2) 2))

end

end A095169.P5103283795441987184

/-! ## A095169.P14631466616089175148

`A000027(A095167(C(n+2, 2)))`
-/

namespace A095169.P14631466616089175148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095167 (Nat.choose (n + 2) 2)).toNat

end

end A095169.P14631466616089175148

/-! ## A095169.P13083922156535088560

`A014682(2*A095167(C(n+2, 2)))`
-/

namespace A095169.P13083922156535088560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A095167 (Nat.choose (n + 2) 2)).toNat

end

end A095169.P13083922156535088560

/-! ## A095169.P8054128413094187047

`A065033(2*A095167(C(n+2, 2)))`
-/

namespace A095169.P8054128413094187047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A095167 (Nat.choose (n + 2) 2)).toNat

end

end A095169.P8054128413094187047

/-! ## A095169.P17917090263638620273

`abs(1-A095167(Δ[A000292(n)]))+1`
-/

namespace A095169.P17917090263638620273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A095167 (f1 (n + 1) - f1 n).toNat| + 1

end

end A095169.P17917090263638620273

/-! ## A095169.P18338090679499817339

`∏{e}[A020639(n+1), #*A095167(C(n+2, 2))]`
-/

namespace A095169.P18338090679499817339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A095167 (Nat.choose (n + 2) 2)

end

end A095169.P18338090679499817339

/-! ## A095169.P11948869577685649980

`(A020639(2*(n+1))-1)*A095167(C(n+2, 2))`
-/

namespace A095169.P11948869577685649980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) - 1) * A095167 (Nat.choose (n + 2) 2)

end

end A095169.P11948869577685649980

/-!
# A095170: Row sums of A095167.

The programs for A095170, there is no canonical definition to state claims against.
-/

/-! ## A095170.P14629206975956757508

`or(A025581(A244610(n)), A247619(n))`
-/

namespace A095170.P14629206975956757508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A244610 n).toNat) (A247619 n)

end

end A095170.P14629206975956757508

/-! ## A095170.P11790395941210437597

`or(A176788(A111059(n+1)), A276480(n))`
-/

namespace A095170.P11790395941210437597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176788 (A111059 (n + 1)).toNat) (A276480 n)

end

end A095170.P11790395941210437597

/-!
# A095171: Number of multiples of n in the n-th row of the triangle A095167.

The programs for A095171, there is no canonical definition to state claims against.
-/

/-! ## A095171.P15441670265717859189

`A275661(6*a(n-1))+A164880(n+1)` with `a(0)=1`
-/

namespace A095171.P15441670265717859189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275661 (6 * a (n - 1)).toNat + A164880 (n + 1)

end

end A095171.P15441670265717859189

/-! ## A095171.P6612962111000589306

`A288991(A061493(n+1))+A014963(n+1)`
-/

namespace A095171.P6612962111000589306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A061493 (n + 1)).toNat + A014963 (n + 1)

end

end A095171.P6612962111000589306

/-! ## A095171.P9192138416434035118

`A288551(A000055(n))+A014963(n+1)`
-/

namespace A095171.P9192138416434035118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (A000055 n).toNat + A014963 (n + 1)

end

end A095171.P9192138416434035118

/-! ## A095171.P12418031415465823293

`A124761(A059662(n+1))+ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A095171.P12418031415465823293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A059662 (n + 1)).toNat + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A095171.P12418031415465823293

/-! ## A095171.P16369863735749174014

`A174875(A293524(n+1))+A014963(n+1)`
-/

namespace A095171.P16369863735749174014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174875 (A293524 (n + 1)).toNat + A014963 (n + 1)

end

end A095171.P16369863735749174014

/-!
# A095173: Image of 1,2,3,4,... under the map Q defined in A095172.

The programs for A095173, there is no canonical definition to state claims against.
-/

/-! ## A095173.P18041036734821340871

`∑[A053251(A187829(n+1))+A004525(n)]`
-/

namespace A095173.P18041036734821340871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (A187829 (n + 1)).toNat + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095173.P18041036734821340871

/-! ## A095173.P17827113417241071330

`A135664(A027967(n+3))+n`
-/

namespace A095173.P17827113417241071330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A027967 (n + 3)).toNat + (n : ℤ)

end

end A095173.P17827113417241071330

/-! ## A095173.P1991638246995029697

`A111114(A048578(n))-C(2, n+2)`
-/

namespace A095173.P1991638246995029697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111114 (A048578 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A095173.P1991638246995029697

/-! ## A095173.P4400605115856373177

`floor(A152125(n+1)+sqrt(A051635(n+1)))`
-/

namespace A095173.P4400605115856373177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152125 (n + 1) : ℝ) + Real.sqrt (A051635 (n + 1) : ℝ)⌋

end

end A095173.P4400605115856373177

/-! ## A095173.P9373449838624526642

`A111114(A048578(n))/A014963(4*n+2)`
-/

namespace A095173.P9373449838624526642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111114 (A048578 n).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A095173.P9373449838624526642

/-!
# A095175: Denominator of b(n) given by b(1) = 1, b(2) = 2; for n >= 3, b(n) = (-1)^n (2n-1) ((n-2)!!)^2/((n-1)!!)^2, where n!! is the double factorial A006882.

The programs for A095175, there is no canonical definition to state claims against.
-/

/-! ## A095175.P700455344601353254

`A327526(A184877(n))`
-/

namespace A095175.P700455344601353254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A184877 n).toNat

end

end A095175.P700455344601353254

/-! ## A095175.P12037012211936834586

`A332012(A296771(n))`
-/

namespace A095175.P12037012211936834586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332012 (A296771 n).toNat

end

end A095175.P12037012211936834586

/-! ## A095175.P1949959352199666373

`A375931(A006882(n)²)`
-/

namespace A095175.P1949959352199666373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (A006882 n ^ 2).toNat

end

end A095175.P1949959352199666373

/-!
# A095176: E.g.f.: exp(9x)/(1-9x)^(1/9).

The programs for A095176, the canonical program `A095176.P7931482728015868435` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095176 has offset 0).

The definition of A095176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095176.P7931482728015868435

`∑{#}[n, A046716(C(n+1, 2)+#)*9^#]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095176

/-- `∑{#}[n, A046716(C(n+1, 2)+#)*9^#]` -/
def P7931482728015868435.Spec : Prop :=
  ∀ n, P7931482728015868435.a n = A095176 n

theorem P7931482728015868435.correct : P7931482728015868435.Spec := by
  intro n
  simp only [A095176]

end A095176

/-!
# A095177: E.g.f.: exp(x)/(1-x)^5.

The programs for A095177, the canonical program `A095177.P2860718890473091075` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095177 has offset 0).

The definition of A095177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095177.P2860718890473091075

`∑{#}[n, A094816(C(n+1, 2)+#)*5^#]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095177

/-- `∑{#}[n, A094816(C(n+1, 2)+#)*5^#]` -/
def P2860718890473091075.Spec : Prop :=
  ∀ n, P2860718890473091075.a n = A095177 n

theorem P2860718890473091075.correct : P2860718890473091075.Spec := by
  intro n
  simp only [A095177]

end A095177

/-! ## A095177.P14450578497711054508

`Δ[A095000(n)/4]`
-/

namespace A095177.P14450578497711054508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095000 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095177.P14450578497711054508

namespace A095177

/-- `Δ[A095000(n)/4]` -/
def P14450578497711054508.Spec : Prop :=
  ∀ n, P14450578497711054508.a n = (A095177 n : ℚ)

end A095177

/-! ## A095177.P17402005775169147605

`A001342(n)/24`
-/

namespace A095177.P17402005775169147605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001342 n : ℚ) / 24

end

end A095177.P17402005775169147605

namespace A095177

/-- `A001342(n)/24` -/
def P17402005775169147605.Spec : Prop :=
  ∀ n, P17402005775169147605.a n = (A095177 n : ℚ)

end A095177

/-! ## A095177.P207111373546436122

`Δ[A001341(n)/24]`
-/

namespace A095177.P207111373546436122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001341 n : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095177.P207111373546436122

namespace A095177

/-- `Δ[A001341(n)/24]` -/
def P207111373546436122.Spec : Prop :=
  ∀ n, P207111373546436122.a n = (A095177 n : ℚ)

end A095177

/-! ## A095177.P13276596200740844609

`A143409(A155212(n)+12)`
-/

namespace A095177.P13276596200740844609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A155212 n + 12).toNat

end

end A095177.P13276596200740844609

namespace A095177

/-- `A143409(A155212(n)+12)` -/
def P13276596200740844609.Spec : Prop :=
  ∀ n, P13276596200740844609.a n = A095177 n

end A095177

/-! ## A095177.P9712241547303947491

`A143409(eq[4, A002262(n)])`
-/

namespace A095177.P9712241547303947491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095177.P9712241547303947491

namespace A095177

/-- `A143409(eq[4, A002262(n)])` -/
def P9712241547303947491.Spec : Prop :=
  ∀ n, P9712241547303947491.a n = A095177 n

end A095177

/-! ## A095177.P555886046456997127

`A143409(eq[16, A059268(n)])`
-/

namespace A095177.P555886046456997127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095177.P555886046456997127

namespace A095177

/-- `A143409(eq[16, A059268(n)])` -/
def P555886046456997127.Spec : Prop :=
  ∀ n, P555886046456997127.a n = A095177 n

end A095177

/-! ## A095177.P7881643875240691844

`A143409(eq[5, A002260(n+1)])`
-/

namespace A095177.P7881643875240691844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095177.P7881643875240691844

namespace A095177

/-- `A143409(eq[5, A002260(n+1)])` -/
def P7881643875240691844.Spec : Prop :=
  ∀ n, P7881643875240691844.a n = A095177 n

end A095177

/-! ## A095177.P4197464442663253175

`A143409(eq[2, A144328(n+1)-2])`
-/

namespace A095177.P4197464442663253175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095177.P4197464442663253175

namespace A095177

/-- `A143409(eq[2, A144328(n+1)-2])` -/
def P4197464442663253175.Spec : Prop :=
  ∀ n, P4197464442663253175.a n = A095177 n

end A095177

/-! ## A095177.P8238462767336636688

`A143409(eq[2, A144328(n+1)/2])`
-/

namespace A095177.P8238462767336636688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A095177.P8238462767336636688

namespace A095177

/-- `A143409(eq[2, A144328(n+1)/2])` -/
def P8238462767336636688.Spec : Prop :=
  ∀ n, P8238462767336636688.a n = A095177 n

end A095177

/-!
# A095178: Final digit of the (10^n)-th prime.

The programs for A095178, there is no canonical definition to state claims against.
-/

/-! ## A095178.P5439359434534006007

`A006988(n)%10`
-/

namespace A095178.P5439359434534006007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006988 n) 10

end

end A095178.P5439359434534006007

/-! ## A095178.P9365492111950628392

`A347000(A155212(n+5)-1)%10`
-/

namespace A095178.P9365492111950628392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A155212 (n + 5) - 1).toNat) 10

end

end A095178.P9365492111950628392

/-! ## A095178.P8312254657108288449

`A347000(A052905(n+6)-4)%10`
-/

namespace A095178.P8312254657108288449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A052905 (n + 6) - 4).toNat) 10

end

end A095178.P8312254657108288449

/-! ## A095178.P257904803696281301

`A347000(A000217(n+9)-9)%10`
-/

namespace A095178.P257904803696281301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A000217 (n + 9) - 9).toNat) 10

end

end A095178.P257904803696281301

/-! ## A095178.P7749335148254853373

`A347000(A000124(n+8)+n-1)%10`
-/

namespace A095178.P7749335148254853373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat) 10

end

end A095178.P7749335148254853373

/-!
# A095179: Numbers whose reversed digit representation is prime.

The programs for A095179, there is no canonical definition to state claims against.
-/

/-! ## A095179.P15791818543883651163

`∪[A007500(n+1), A076055(n+1)]`
-/

namespace A095179.P15791818543883651163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095179.P15791818543883651163

/-! ## A095179.P16581333307852144899

`eq[2, A000005(A004086(n+1))]+1`
-/

namespace A095179.P16581333307852144899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P16581333307852144899

/-! ## A095179.P7267264011475920727

`eq[1, A001222(A004086(2+n))]+2`
-/

namespace A095179.P7267264011475920727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004086 (2 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A095179.P7267264011475920727

/-! ## A095179.P10480688097433240739

`record[n/a(A001222(A056964(n)-n))]` with `a(0)=2, a(1)=1`
-/

namespace A095179.P10480688097433240739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A001222 (A056964 n - (n : ℤ)).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095179.P10480688097433240739

/-! ## A095179.P7405177361152184289

`eq[2, A000005(A056964(n+1)-(n+1))]+1`
-/

namespace A095179.P7405177361152184289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P7405177361152184289

/-! ## A095179.P12043760095074367344

`eq[0, A007920(A004086(n))]`
-/

namespace A095179.P12043760095074367344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095179.P12043760095074367344

/-! ## A095179.P6624732093773972118

`eq[1, A003415(A004086(n+1))]+1`
-/

namespace A095179.P6624732093773972118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P6624732093773972118

/-! ## A095179.P6446761258056514194

`eq[1, A001222(n+1-A056965(n+1))]+1`
-/

namespace A095179.P6446761258056514194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) - A056965 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P6446761258056514194

/-! ## A095179.P9858372327044796196

`eq[2, A000005(A135020(2*(n+1)))]+1`
-/

namespace A095179.P9858372327044796196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135020 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P9858372327044796196

/-! ## A095179.P15868825166644354217

`eq[1, A001222(A004093(5*(n+1)))]+1`
-/

namespace A095179.P15868825166644354217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004093 (5 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095179.P15868825166644354217

/-! ## A095179.P645951353344615549

`eq[2, A105700(2*A004086(n))]`
-/

namespace A095179.P645951353344615549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095179.P645951353344615549

/-! ## A095179.P4263947297342032130

`eq[2, A284289(2*A004086(n))]`
-/

namespace A095179.P4263947297342032130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095179.P4263947297342032130

/-!
# A095180: Reverse digits of primes, append to sequence if result is a prime.

The programs for A095180, there is no canonical definition to state claims against.
-/

/-! ## A095180.P18184149370723137731

`p?[A004087(n+1)]`
-/

namespace A095180.P18184149370723137731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P18184149370723137731

/-! ## A095180.P11226437645505216232

`p?[A061227(n)-A000040(n+1)]`
-/

namespace A095180.P11226437645505216232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P11226437645505216232

/-! ## A095180.P14344404748228950983

`p?[A061227(n)-A008578(n+2)]`
-/

namespace A095180.P14344404748228950983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P14344404748228950983

/-! ## A095180.P3857838694075780475

`A007500(A388056(n+1))`
-/

namespace A095180.P3857838694075780475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (A388056 (n + 1)).toNat

end

end A095180.P3857838694075780475

/-! ## A095180.P1639312283552041712

`filter[A004087(n+1), A010051(#)]`
-/

namespace A095180.P1639312283552041712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095180.P1639312283552041712

/-! ## A095180.P7998783990484339179

`A004086(A007500(n+1))`
-/

namespace A095180.P7998783990484339179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007500 (n + 1)).toNat

end

end A095180.P7998783990484339179

/-! ## A095180.P9096526765590226059

`p?[A004086(A000040(n+1))]`
-/

namespace A095180.P9096526765590226059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P9096526765590226059

/-! ## A095180.P3854773222720252870

`p?[A004086(A008578(n+1))]`
-/

namespace A095180.P3854773222720252870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P3854773222720252870

/-! ## A095180.P14827525179943555970

`A004086(p?[A062895(n+1)])`
-/

namespace A095180.P14827525179943555970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095180.P14827525179943555970

/-! ## A095180.P4383325269224294256

`A004086(p?[A085869(n+1)])`
-/

namespace A095180.P4383325269224294256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095180.P4383325269224294256

/-! ## A095180.P11979637480843377906

`p?[A004086(C(A020639(n+1), n))]`
-/

namespace A095180.P11979637480843377906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A020639 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P11979637480843377906

/-! ## A095180.P4755674924076925535

`p?[A004086((n+1)*A010051(n+1))]`
-/

namespace A095180.P4755674924076925535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n + 1 : ℤ) * A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P4755674924076925535

/-! ## A095180.P16551074804131523464

`p?[A004086(p?[A207790(n+1)])]`
-/

namespace A095180.P16551074804131523464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P16551074804131523464

/-! ## A095180.P15006918105211611945

`p?[A004086(p?[A067251(n+1)])]`
-/

namespace A095180.P15006918105211611945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P15006918105211611945

/-! ## A095180.P13928944836697648679

`p?[A004086(p?[A342851(n+1)])]`
-/

namespace A095180.P13928944836697648679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P13928944836697648679

/-! ## A095180.P15579855719655197818

`p?[A071786(n+1)]`
-/

namespace A095180.P15579855719655197818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P15579855719655197818

/-! ## A095180.P6561011728616568978

`p?[A004086(p?[A014681(n)])]`
-/

namespace A095180.P6561011728616568978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P6561011728616568978

/-! ## A095180.P5020694731914558799

`p?[A188649(p?[A014681(n)])]`
-/

namespace A095180.P5020694731914558799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P5020694731914558799

/-! ## A095180.P9094322649835575804

`p?[A004086(p?[A236348(n)])]`
-/

namespace A095180.P9094322649835575804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P9094322649835575804

/-! ## A095180.P12659086406720317341

`p?[A004086(eq[2, A062830(n)])]`
-/

namespace A095180.P12659086406720317341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095180.P12659086406720317341

/-!
# A095182: Consider the triangle in which the j-th row begins with prime(j) and is the arithmetic progression with least common difference such that the remaining j-1 terms are composite and not divisible by prime(j). Sequence gives last term in each row.

The programs for A095182, there is no canonical definition to state claims against.
-/

/-! ## A095182.P16059329143770657643

`A095181(∑[n+1])`
-/

namespace A095182.P16059329143770657643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095182.P16059329143770657643

/-! ## A095182.P11590974236413283028

`A095181(A025747(n))*A152844(n)`
-/

namespace A095182.P11590974236413283028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095181 (A025747 n).toNat * A152844 n

end

end A095182.P11590974236413283028

/-! ## A095182.P823869910406801508

`A095181(A025747(n))*A152845(n)`
-/

namespace A095182.P823869910406801508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095181 (A025747 n).toNat * A152845 n

end

end A095182.P823869910406801508

/-! ## A095182.P3232362963893973867

`A095181(A025747(n))*A152846(n)`
-/

namespace A095182.P3232362963893973867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095181 (A025747 n).toNat * A152846 n

end

end A095182.P3232362963893973867

/-! ## A095182.P2273288685855133730

`A095181(A025747(n))*A152847(n)`
-/

namespace A095182.P2273288685855133730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095181 (A025747 n).toNat * A152847 n

end

end A095182.P2273288685855133730

/-!
# A095184: a(1) = 3; for n > 1 a(n) is the least prime of form a(n-1) + k*prime(n-1) with k > 0.

The programs for A095184, there is no canonical definition to state claims against.
-/

/-! ## A095184.P12195486810617071972

`A214296(A026021(n+1))`
-/

namespace A095184.P12195486810617071972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214296 (A026021 (n + 1)).toNat

end

end A095184.P12195486810617071972

/-! ## A095184.P18217197427064674364

`A214296(A374631(n+1))`
-/

namespace A095184.P18217197427064674364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214296 (A374631 (n + 1)).toNat

end

end A095184.P18217197427064674364

/-! ## A095184.P6542292259256980905

`A214296(A374690(n+1))`
-/

namespace A095184.P6542292259256980905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214296 (A374690 (n + 1)).toNat

end

end A095184.P6542292259256980905

/-!
# A095187: Least significant digit of (n mod 10)^floor(n/10).

The programs for A095187, the canonical program `A095187.P5131033102684218004` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095187 has offset 10).

The definition of A095187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095187.P5131033102684218004

`(((n+10)%10)^floor((n+10)/10))%10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095187

/-- `(((n+10)%10)^floor((n+10)/10))%10` -/
def P5131033102684218004.Spec : Prop :=
  ∀ n, P5131033102684218004.a n = A095187 (n + 10)

theorem P5131033102684218004.correct : P5131033102684218004.Spec := by
  intro n
  simp only [A095187, Nat.add_sub_cancel]

end A095187

/-!
# A095190: Doubled Thue-Morse sequence: a(2n) = A010060(n), a(2n+1) = A010060(n).

The programs for A095190, the canonical program `A095190.P13459185923934876190` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095190 has offset 0).

The definition of A095190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095190.P195784680005297340

`A096273(n)%2`
-/

namespace A095190.P195784680005297340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096273 n) 2

end

end A095190.P195784680005297340

namespace A095190

/-- `A096273(n)%2` -/
def P195784680005297340.Spec : Prop :=
  ∀ n, P195784680005297340.a n = A095190 n

end A095190

/-! ## A095190.P13459185923934876190

`A010060(floor(n/2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095190

/-- `A010060(floor(n/2))` -/
def P13459185923934876190.Spec : Prop :=
  ∀ n, P13459185923934876190.a n = A095190 n

theorem P13459185923934876190.correct : P13459185923934876190.Spec := by
  intro n
  simp only [A095190]

end A095190

/-! ## A095190.P8458553598988057971

`A000120(floor(n/2))%2`
-/

namespace A095190.P8458553598988057971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A095190.P8458553598988057971

namespace A095190

/-- `A000120(floor(n/2))%2` -/
def P8458553598988057971.Spec : Prop :=
  ∀ n, P8458553598988057971.a n = A095190 n

end A095190

/-! ## A095190.P2970819307220067331

`char[xor(n, 2*or(1, n))]`
-/

namespace A095190.P2970819307220067331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095190.P2970819307220067331

namespace A095190

/-- `char[xor(n, 2*or(1, n))]` -/
def P2970819307220067331.Spec : Prop :=
  ∀ n, (P2970819307220067331.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P15602495489797611294

`char[xor(n, lcm(2, or(1, n)))]`
-/

namespace A095190.P15602495489797611294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lcm 2 (Nat.lor 1 n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095190.P15602495489797611294

namespace A095190

/-- `char[xor(n, lcm(2, or(1, n)))]` -/
def P15602495489797611294.Spec : Prop :=
  ∀ n, (P15602495489797611294.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P15505574894301098814

`char[xor(n, or(2, n+n))]`
-/

namespace A095190.P15505574894301098814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor 2 (n + n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095190.P15505574894301098814

namespace A095190

/-- `char[xor(n, or(2, n+n))]` -/
def P15505574894301098814.Spec : Prop :=
  ∀ n, (P15505574894301098814.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P897572952381160864

`1-a(and(n, n-2))` with `a(0)=0, a(1)=0`
-/

namespace A095190.P897572952381160864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A095190.P897572952381160864

namespace A095190

/-- `1-a(and(n, n-2))` -/
def P897572952381160864.Spec : Prop :=
  ∀ n, P897572952381160864.a n = A095190 n

end A095190

/-! ## A095190.P11176545294491705106

`char[xor(n, xor(1, n)+1+n)]`
-/

namespace A095190.P11176545294491705106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 1 n + 1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095190.P11176545294491705106

namespace A095190

/-- `char[xor(n, xor(1, n)+1+n)]` -/
def P11176545294491705106.Spec : Prop :=
  ∀ n, (P11176545294491705106.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P3272658853317123891

`(a(n-1)+val(n, 2))%2` with `a(0)=0`
-/

namespace A095190.P3272658853317123891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + SequenceMachineLib.valuation n 2) % 2

end

end A095190.P3272658853317123891

namespace A095190

/-- `(a(n-1)+val(n, 2))%2` -/
def P3272658853317123891.Spec : Prop :=
  ∀ n, (P3272658853317123891.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P13145593036950030555

`(n-char[comp[xor(n, 2*n)]])%2`
-/

namespace A095190.P13145593036950030555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) 2

end

end A095190.P13145593036950030555

namespace A095190

/-- `(n-char[comp[xor(n, 2*n)]])%2` -/
def P13145593036950030555.Spec : Prop :=
  ∀ n, P13145593036950030555.a n = A095190 n

end A095190

/-! ## A095190.P10737372207547866702

`and(1, n-char[comp[xor(n, 2*n)]])`
-/

namespace A095190.P10737372207547866702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A095190.P10737372207547866702

namespace A095190

/-- `and(1, n-char[comp[xor(n, 2*n)]])` -/
def P10737372207547866702.Spec : Prop :=
  ∀ n, P10737372207547866702.a n = A095190 n

end A095190

/-! ## A095190.P14581478857841781453

`xor(n%2, char[comp[xor(n, 2*n)]])`
-/

namespace A095190.P14581478857841781453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n % 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A095190.P14581478857841781453

namespace A095190

/-- `xor(n%2, char[comp[xor(n, 2*n)]])` -/
def P14581478857841781453.Spec : Prop :=
  ∀ n, (P14581478857841781453.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P8804962306457448350

`C(comp[xor(n-1, 2*n)], 2)%2`
-/

namespace A095190.P8804962306457448350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 % 2

end

end A095190.P8804962306457448350

namespace A095190

/-- `C(comp[xor(n-1, 2*n)], 2)%2` -/
def P8804962306457448350.Spec : Prop :=
  ∀ n, (P8804962306457448350.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P14093810017102746424

`(comp[xor(n, 2*n)]+1+n)%2`
-/

namespace A095190.P14093810017102746424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n) % 2

end

end A095190.P14093810017102746424

namespace A095190

/-- `(comp[xor(n, 2*n)]+1+n)%2` -/
def P14093810017102746424.Spec : Prop :=
  ∀ n, (P14093810017102746424.a n : ℤ) = A095190 n

end A095190

/-! ## A095190.P5513373117679598043

`(n-1-char[xor(n, 2*n)])%2`
-/

namespace A095190.P5513373117679598043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) 2

end

end A095190.P5513373117679598043

namespace A095190

/-- `(n-1-char[xor(n, 2*n)])%2` -/
def P5513373117679598043.Spec : Prop :=
  ∀ n, P5513373117679598043.a n = A095190 n

end A095190

/-! ## A095190.P18295216698434684618

`gcd(2, comp[xor(n, 2*n)]+n)-1`
-/

namespace A095190.P18295216698434684618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1

end

end A095190.P18295216698434684618

namespace A095190

/-- `gcd(2, comp[xor(n, 2*n)]+n)-1` -/
def P18295216698434684618.Spec : Prop :=
  ∀ n, P18295216698434684618.a n = A095190 n

end A095190

/-! ## A095190.P11877778781617312099

`and(1, comp[xor(n, 2*n)-1]-n)`
-/

namespace A095190.P11877778781617312099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A095190.P11877778781617312099

namespace A095190

/-- `and(1, comp[xor(n, 2*n)-1]-n)` -/
def P11877778781617312099.Spec : Prop :=
  ∀ n, P11877778781617312099.a n = A095190 n

end A095190

/-! ## A095190.P1514599706685779946

`1-A179020(n)`
-/

namespace A095190.P1514599706685779946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A179020 n

end

end A095190.P1514599706685779946

namespace A095190

/-- `1-A179020(n)` -/
def P1514599706685779946.Spec : Prop :=
  ∀ n, P1514599706685779946.a n = A095190 n

theorem P1514599706685779946.correct : P1514599706685779946.Spec := by
  intro n
  simp only [A095190, Nat.add_sub_cancel, A095190.P1514599706685779946.a, A095190.P13459185923934876190.a, A010060, A010060.P3080921269106500717.a, A179020, A179020.P13298888622046712416.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095190

/-!
# A095191: Composites k such that k + A001414(k) is a semiprime.

The programs for A095191, there is no canonical definition to state claims against.
-/

/-! ## A095191.P14289300222248050617

`∪[A050707(3*n+4), A050706(n+1)]%A057874(n)`
-/

namespace A095191.P14289300222248050617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050707 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050706 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A057874 n)

end

end A095191.P14289300222248050617

/-!
# A095192: Smallest semiprime with same leading digits as n!.

The programs for A095192, there is no canonical definition to state claims against.
-/

/-! ## A095192.P4501424421870637013

`A006881(A289159(n+3)+1)`
-/

namespace A095192.P4501424421870637013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A289159 (n + 3) + 1).toNat

end

end A095192.P4501424421870637013

/-!
# A095193: Common differences of the arithmetic progressions corresponding to A095181.

The programs for A095193, there is no canonical definition to state claims against.
-/

/-! ## A095193.P13497834137716515115

`(A095182(n+2)-A000040(n+2))/(n+1)`
-/

namespace A095193.P13497834137716515115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095182 (n + 2) - A000040 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A095193.P13497834137716515115

/-!
# A095194: Least number that yields a semiprime when appended to n!.

The programs for A095194, there is no canonical definition to state claims against.
-/

/-! ## A095194.P5711371716895575788

`A095192(n+1)%(2*(n+1))`
-/

namespace A095194.P5711371716895575788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095192 (n + 1)) (2 * (n + 1) : ℤ)

end

end A095194.P5711371716895575788

/-! ## A095194.P8761418361808281721

`and(A052551(n+1), A095192(n+1))`
-/

namespace A095194.P8761418361808281721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 (n + 1)) (A095192 (n + 1))

end

end A095194.P8761418361808281721

/-! ## A095194.P15791275499374892121

`and(A000225(A080513(n)), A095192(n+1))`
-/

namespace A095194.P15791275499374892121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A080513 n).toNat) (A095192 (n + 1))

end

end A095194.P15791275499374892121

/-! ## A095194.P4044399915085448800

`and(A095192(n+1), A103454(A000194(n)))`
-/

namespace A095194.P4044399915085448800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095192 (n + 1)) (A103454 (A000194 n).toNat)

end

end A095194.P4044399915085448800

/-! ## A095194.P3761487933512280796

`and(A000225(A260734(n+1)), A095192(n+1))`
-/

namespace A095194.P3761487933512280796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A260734 (n + 1)).toNat) (A095192 (n + 1))

end

end A095194.P3761487933512280796

/-!
# A095195: T(n,0) = prime(n), T(n,k) = T(n,k-1)-T(n-1,k-1), 0<=k<n, triangle read by rows.

The programs for A095195, there is no canonical definition to state claims against.
-/

/-! ## A095195.P1194927652374865834

`A376682(comp[∑[n-1]])`
-/

namespace A095195.P1194927652374865834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A095195.P1194927652374865834

/-! ## A095195.P18299581358934756333

`A376682(comp[∑[n]])+A376682(n)`
-/

namespace A095195.P18299581358934756333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A376682 n

end

end A095195.P18299581358934756333

/-! ## A095195.P2989329546427415576

`A376682(A007401(n+1))%A062748(n)`
-/

namespace A095195.P2989329546427415576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376682 (A007401 (n + 1)).toNat) (A062748 n)

end

end A095195.P2989329546427415576

/-! ## A095195.P11122012086006567393

`A376682(A007401(n+1))^A007318(∑[n])`
-/

namespace A095195.P11122012086006567393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376682 (A007401 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A095195.P11122012086006567393

/-! ## A095195.P10627653276034866777

`A376682(A007401(n+1))^A152716(∑[n])`
-/

namespace A095195.P10627653276034866777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376682 (A007401 (n + 1)).toNat : ℚ) ^ (A152716 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A095195.P10627653276034866777

/-! ## A095195.P258486646597872722

`A376682(A007401(n+1))^A000120(A152716(n))`
-/

namespace A095195.P258486646597872722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376682 (A007401 (n + 1)).toNat : ℚ) ^ (A000120 (A152716 n).toNat : ℤ)

end

end A095195.P258486646597872722

/-!
# A095197: a(1) = 1, a(n+1) = 2 * digit reversal of a(n).

The programs for A095197, there is no canonical definition to state claims against.
-/

/-! ## A095197.P10172979554445288418

`A036447(n-1)*a(A040000(n)-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A095197.P10172979554445288418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A036447 (n - 1) * a (A040000 n - 1).toNat

end

end A095197.P10172979554445288418

/-! ## A095197.P10502884782179843125

`A036447(A028310(n)-1)*A040000(n)`
-/

namespace A095197.P10502884782179843125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036447 (A028310 n - 1).toNat * A040000 n

end

end A095197.P10502884782179843125

/-! ## A095197.P5927484211294107843

`A036447(A028310(n)-1)*A036453(n+1)`
-/

namespace A095197.P5927484211294107843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036447 (A028310 n - 1).toNat * A036453 (n + 1)

end

end A095197.P5927484211294107843

/-! ## A095197.P15971562713007928248

`gcd(2, A000010(n+2))*A036447(A028310(n)-1)`
-/

namespace A095197.P15971562713007928248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A036447 (A028310 n - 1).toNat

end

end A095197.P15971562713007928248

/-! ## A095197.P5820278600143965371

`(A051904(n²+1)+1)*A036447(A028310(n)-1)`
-/

namespace A095197.P5820278600143965371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051904 (n ^ 2 + 1) + 1) * A036447 (A028310 n - 1).toNat

end

end A095197.P5820278600143965371

/-! ## A095197.P11698946888730961034

`A000041(2-C(2, n+2))*A036447(A028310(n)-1)`
-/

namespace A095197.P11698946888730961034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 - Nat.choose 2 (n + 2)) * A036447 (A028310 n - 1).toNat

end

end A095197.P11698946888730961034

/-! ## A095197.P12799136382206978490

`A036447(A028310(n)-1)*A080054((n+2)%(n+1))`
-/

namespace A095197.P12799136382206978490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036447 (A028310 n - 1).toNat * A080054 ((n + 2) % (n + 1))

end

end A095197.P12799136382206978490

/-! ## A095197.P2634617864740941439

`A020639(A315796(n))*A036447(A028310(n)-1)`
-/

namespace A095197.P2634617864740941439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315796 n).toNat * A036447 (A028310 n - 1).toNat

end

end A095197.P2634617864740941439

/-! ## A095197.P10333755458279316783

`A000005(A008578(n+1))*A036447(A028310(n)-1)`
-/

namespace A095197.P10333755458279316783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A036447 (A028310 n - 1).toNat

end

end A095197.P10333755458279316783

/-! ## A095197.P3485760345647893925

`A000005(A076396(n+1))*A036447(A028310(n)-1)`
-/

namespace A095197.P3485760345647893925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076396 (n + 1)).toNat * A036447 (A028310 n - 1).toNat

end

end A095197.P3485760345647893925

/-! ## A095197.P9187345321628238886

`A000005(A076397(n+1))*A036447(A028310(n)-1)`
-/

namespace A095197.P9187345321628238886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076397 (n + 1)).toNat * A036447 (A028310 n - 1).toNat

end

end A095197.P9187345321628238886

/-! ## A095197.P9371190441674607390

`A000005(A090368(n+1))*A036447(A028310(n)-1)`
-/

namespace A095197.P9371190441674607390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090368 (n + 1)).toNat * A036447 (A028310 n - 1).toNat

end

end A095197.P9371190441674607390

/-!
# A095198: a(1) = 1, a(n+1) = prime(n)*Digit reversal of a(n).

The programs for A095198, there is no canonical definition to state claims against.
-/

/-! ## A095198.P12842927872008829922

`A000040(n)*A004086(a(n-1))` with `a(0)=1`
-/

namespace A095198.P12842927872008829922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * A004086 (a (n - 1)).toNat

end

end A095198.P12842927872008829922

/-! ## A095198.P6711288199325840025

`A004086(a(n-1))*A069706(n)` with `a(0)=1`
-/

namespace A095198.P6711288199325840025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat * A069706 n

end

end A095198.P6711288199325840025

/-! ## A095198.P11069916384838368645

`A004086(a(n-1))*A008578(n+1)` with `a(0)=1`
-/

namespace A095198.P11069916384838368645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat * A008578 (n + 1)

end

end A095198.P11069916384838368645

/-! ## A095198.P1655058909241490918

`A004086(a(n-1))*A064555(n+1)` with `a(0)=1`
-/

namespace A095198.P1655058909241490918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat * A064555 (n + 1)

end

end A095198.P1655058909241490918

/-!
# A095199: Least integer multiple of f(1/n) where f(1/n) is the number obtained by retaining only n digits after decimal and deleting the rest.

The programs for A095199, the canonical program `A095199.P6304213532179979107` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095199 has offset 1).

The definition of A095199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095199.P6304213532179979107

`floor(10^(n+1)/(n+1))/gcd(10^(n+1), floor(10^(n+1)/(n+1)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095199

/-- `floor(10^(n+1)/(n+1))/gcd(10^(n+1), floor(10^(n+1)/(n+1)))` -/
def P6304213532179979107.Spec : Prop :=
  ∀ n, P6304213532179979107.a n = (A095199 (n + 1) : ℚ)

end A095199

