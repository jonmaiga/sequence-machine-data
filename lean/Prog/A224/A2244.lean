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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A224400: Composite numbers that become prime when their digits are put in nondecreasing order.

The programs for A224400, there is no canonical definition to state claims against.
-/

/-! ## A224400.P268305118520045484

`eq[A007920(A004185(n)), A055671(n)]`
-/

namespace A224400.P268305118520045484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224400.P268305118520045484

/-! ## A224400.P159862326637786372

`eq[A007920(A004185(n)), A055672(n)]`
-/

namespace A224400.P159862326637786372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224400.P159862326637786372

/-! ## A224400.P9999577269025393780

`∩[A068653(n+1), A267771(n+1)-1]`
-/

namespace A224400.P9999577269025393780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267771 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224400.P9999577269025393780

/-! ## A224400.P12988028040487565379

`∩[A031979(n+1), A140209(n+1)]`
-/

namespace A224400.P12988028040487565379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224400.P12988028040487565379

/-! ## A224400.P2484643982071324424

`∩[A009995(n+1), A225193(n+1)]`
-/

namespace A224400.P2484643982071324424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224400.P2484643982071324424

/-!
# A224401: a(n) is the row number of triangle A085612 in which n appears.

The programs for A224401, there is no canonical definition to state claims against.
-/

/-! ## A224401.P15848556215985059104

`A002024(A226387(n+1))`
-/

namespace A224401.P15848556215985059104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A226387 (n + 1)).toNat

end

end A224401.P15848556215985059104

/-! ## A224401.P8275022590023402886

`A003056(A226387(n+1)-1)+1`
-/

namespace A224401.P8275022590023402886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A226387 (n + 1) - 1).toNat + 1

end

end A224401.P8275022590023402886

/-! ## A224401.P10778228537704881821

`A123578(A226387(n+1))%A000041(n+2)`
-/

namespace A224401.P10778228537704881821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A226387 (n + 1)).toNat) (A000041 (n + 2))

end

end A224401.P10778228537704881821

/-! ## A224401.P8835926989469220592

`A019430(2*(n+1))*A123578(A226387(n+1))`
-/

namespace A224401.P8835926989469220592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * (n + 1)) * A123578 (A226387 (n + 1)).toNat

end

end A224401.P8835926989469220592

/-! ## A224401.P17616755988450314778

`A123578(A226387(n+1))^A001221(A000961(n+1))`
-/

namespace A224401.P17616755988450314778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123578 (A226387 (n + 1)).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A224401.P17616755988450314778

/-! ## A224401.P14439843839342219345

`A003056(A226387(n+1)+A003056(A226387(n+1)))`
-/

namespace A224401.P14439843839342219345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A226387 (n + 1) + A003056 (A226387 (n + 1)).toNat).toNat

end

end A224401.P14439843839342219345

/-! ## A224401.P3043383896899980105

`A000194(2*A226387(n+1))`
-/

namespace A224401.P3043383896899980105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A226387 (n + 1)).toNat

end

end A224401.P3043383896899980105

/-! ## A224401.P6812412289589609878

`A000194(A226387(n+1)+A226387(n+1)-1)`
-/

namespace A224401.P6812412289589609878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A226387 (n + 1) + (A226387 (n + 1) - 1)).toNat

end

end A224401.P6812412289589609878

/-! ## A224401.P9897790890679752915

`A123578(A226387(n+1))+A025581(A000096(n))`
-/

namespace A224401.P9897790890679752915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A226387 (n + 1)).toNat + A025581 (A000096 n).toNat

end

end A224401.P9897790890679752915

/-!
# A224402: Composite numbers that become prime when their digits are put in nonincreasing order.

The programs for A224402, there is no canonical definition to state claims against.
-/

/-! ## A224402.P946070635887770501

`filter[A371653(1+n), A005171(#)]`
-/

namespace A224402.P946070635887770501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A224402.P946070635887770501

/-! ## A224402.P12247889606674677585

`filter[A371653(n+1), A066247(#)]`
-/

namespace A224402.P12247889606674677585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A224402.P12247889606674677585

/-! ## A224402.P8563167415331232215

`filter[A371653(1+n), A292438(#)]`
-/

namespace A224402.P8563167415331232215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A224402.P8563167415331232215

/-! ## A224402.P7718334041368540765

`∩[A002808(n+1), A371653(n+1)]`
-/

namespace A224402.P7718334041368540765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P7718334041368540765

/-! ## A224402.P11054688330712193305

`∩[A007935(n+1), A371653(n+1)]`
-/

namespace A224402.P11054688330712193305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P11054688330712193305

/-! ## A224402.P8521683131392795585

`∩[A018252(n+1), A371653(n+1)]`
-/

namespace A224402.P8521683131392795585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P8521683131392795585

/-! ## A224402.P9529027899717341365

`∩[A141468(n+1), A371653(n+1)]`
-/

namespace A224402.P9529027899717341365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P9529027899717341365

/-! ## A224402.P9044693238167586716

`∩[A171993(n+1), A371653(n+1)]`
-/

namespace A224402.P9044693238167586716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P9044693238167586716

/-! ## A224402.P3336225943641186439

`∩[A259315(n+1), A371653(n+1)]`
-/

namespace A224402.P3336225943641186439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P3336225943641186439

/-! ## A224402.P2890334534064586529

`∩[A257586(n+1), A371653(n+1)]`
-/

namespace A224402.P2890334534064586529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P2890334534064586529

/-! ## A224402.P17532600798603787861

`∩[A164276(n+1), A371653(n+1)]`
-/

namespace A224402.P17532600798603787861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P17532600798603787861

/-! ## A224402.P6159827226556744516

`∩[A056653(n+1), A371653(n+1)]`
-/

namespace A224402.P6159827226556744516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P6159827226556744516

/-! ## A224402.P5539237500860307152

`∩[A062973(n+1), A371653(n+1)]`
-/

namespace A224402.P5539237500860307152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P5539237500860307152

/-! ## A224402.P2988844058372458808

`∩[A343311(n+1), A371653(n+1)]`
-/

namespace A224402.P2988844058372458808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P2988844058372458808

/-! ## A224402.P9519835973621389392

`∩[A371653(n+1), A387319(n+1)]`
-/

namespace A224402.P9519835973621389392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224402.P9519835973621389392

/-! ## A224402.P17020644514725683753

`eq[A007920(A004186(n)), A055671(n)]`
-/

namespace A224402.P17020644514725683753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224402.P17020644514725683753

/-! ## A224402.P11177979217428792471

`eq[A007920(A004186(n)), A055672(n)]`
-/

namespace A224402.P11177979217428792471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224402.P11177979217428792471

/-! ## A224402.P711213884429854581

`eq[A032741(A004186(n)), A292438(n)]`
-/

namespace A224402.P711213884429854581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224402.P711213884429854581

/-! ## A224402.P12968611573108109048

`lt[A003415(A004186(n)), A032741(n)]`
-/

namespace A224402.P12968611573108109048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224402.P12968611573108109048

/-! ## A224402.P17048763227893664272

`lt[A343371(A004186(n)), A077462(n)]`
-/

namespace A224402.P17048763227893664272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224402.P17048763227893664272

/-!
# A224403: Number of n X n 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224403, there is no canonical definition to state claims against.
-/

/-! ## A224403.P4059094851389853515

`A224409((n+1)²+n²)`
-/

namespace A224403.P4059094851389853515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 ((n + 1) ^ 2 + n ^ 2)

end

end A224403.P4059094851389853515

/-! ## A224403.P2401655579741287343

`lcm(2, A224409(A001844(n)))`
-/

namespace A224403.P2401655579741287343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224409 (A001844 n).toNat)

end

end A224403.P2401655579741287343

/-! ## A224403.P8934334674287678294

`record[A224409(Δ[A235355(n)])]`
-/

namespace A224403.P8934334674287678294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224403.P8934334674287678294

/-! ## A224403.P12299974466762843602

`record[A224409(A250028((n+1)²))]`
-/

namespace A224403.P12299974466762843602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A250028 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224403.P12299974466762843602

/-! ## A224403.P14957721736252020642

`record[gcd(A114327(n), A224409(n+1))]`
-/

namespace A224403.P14957721736252020642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224409 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224403.P14957721736252020642

/-!
# A224404: Number of n X 3 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224404, the canonical program `A224404.P8372500026389598507` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224404 has offset 1).

The definition of A224404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224404.P8372500026389598507

`ogf((7+2x^2)/(1-4x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224404

/-- `ogf((7+2x^2)/(1-4x+2x^2-2x^3))` -/
def P8372500026389598507.Spec : Prop :=
  ∀ n, P8372500026389598507.a n = A224404 (n + 1)

theorem P8372500026389598507.correct : P8372500026389598507.Spec := by
  intro n
  simp only [A224404, Nat.add_sub_cancel]

end A224404

/-! ## A224404.P4979924637480848214

`4*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=7, a(1)=28, a(2)=100`
-/

namespace A224404.P4979924637480848214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 28, 100] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A224404.P4979924637480848214

namespace A224404

/-- `4*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P4979924637480848214.Spec : Prop :=
  ∀ n, P4979924637480848214.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P9082633686761661212

`A224409(∑[n+3]+1)`
-/

namespace A224404.P9082633686761661212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224404.P9082633686761661212

namespace A224404

/-- `A224409(∑[n+3]+1)` -/
def P9082633686761661212.Spec : Prop :=
  ∀ n, P9082633686761661212.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P1715090020520518271

`A224409(A052905(n)+3)%A198692(n)`
-/

namespace A224404.P1715090020520518271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224409 (A052905 n + 3).toNat) (A198692 n)

end

end A224404.P1715090020520518271

namespace A224404

/-- `A224409(A052905(n)+3)%A198692(n)` -/
def P1715090020520518271.Spec : Prop :=
  ∀ n, P1715090020520518271.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P12138989666539788102

`A224409(A000124(n+3)-3)+n*A000007(n)`
-/

namespace A224404.P12138989666539788102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 3) - 3).toNat + (n : ℤ) * A000007 n

end

end A224404.P12138989666539788102

namespace A224404

/-- `A224409(A000124(n+3)-3)+n*A000007(n)` -/
def P12138989666539788102.Spec : Prop :=
  ∀ n, P12138989666539788102.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P15185906686748500306

`A000035(2*n+1)*A224409(A000124(n+3)-3)`
-/

namespace A224404.P15185906686748500306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A224409 (A000124 (n + 3) - 3).toNat

end

end A224404.P15185906686748500306

namespace A224404

/-- `A000035(2*n+1)*A224409(A000124(n+3)-3)` -/
def P15185906686748500306.Spec : Prop :=
  ∀ n, P15185906686748500306.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P16281624901032496299

`A224409(A000124(n+3)-3)%A001317(2*(n+2))`
-/

namespace A224404.P16281624901032496299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224409 (A000124 (n + 3) - 3).toNat) (A001317 (2 * (n + 2)))

end

end A224404.P16281624901032496299

namespace A224404

/-- `A224409(A000124(n+3)-3)%A001317(2*(n+2))` -/
def P16281624901032496299.Spec : Prop :=
  ∀ n, P16281624901032496299.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P8723844403474091234

`A006530(gcd(n, n+1))*A224409(A000124(n+3)-3)`
-/

namespace A224404.P8723844403474091234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A224409 (A000124 (n + 3) - 3).toNat

end

end A224404.P8723844403474091234

namespace A224404

/-- `A006530(gcd(n, n+1))*A224409(A000124(n+3)-3)` -/
def P8723844403474091234.Spec : Prop :=
  ∀ n, P8723844403474091234.a n = A224404 (n + 1)

end A224404

/-! ## A224404.P10374019916150299305

`A014963(A008458(n))*A224409(A000124(n+3)-3)`
-/

namespace A224404.P10374019916150299305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A224409 (A000124 (n + 3) - 3).toNat

end

end A224404.P10374019916150299305

namespace A224404

/-- `A014963(A008458(n))*A224409(A000124(n+3)-3)` -/
def P10374019916150299305.Spec : Prop :=
  ∀ n, P10374019916150299305.a n = A224404 (n + 1)

end A224404

/-!
# A224405: Number of n X 4 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224405, the canonical program `A224405.P8692646660950527772` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224405 has offset 1).

The definition of A224405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224405.P10916161643930945674

`ogf((11+x+3x^2+2x^3)/(1-5x+5x^2-2x^3-4x^4))`
-/

namespace A224405.P10916161643930945674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 1, 3, 2] [1, -5, 5, -2, -4] n

end

end A224405.P10916161643930945674

namespace A224405

/-- `ogf((11+x+3x^2+2x^3)/(1-5x+5x^2-2x^3-4x^4))` -/
def P10916161643930945674.Spec : Prop :=
  ∀ n, P10916161643930945674.a n = A224405 (n + 1)

end A224405

/-! ## A224405.P8692646660950527772

`5*a(n-1)-5*a(n-2)+2*a(n-3)+4*a(n-4)` with `a(0)=11, a(1)=56, a(2)=228, a(3)=884`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224405

/-- `5*a(n-1)-5*a(n-2)+2*a(n-3)+4*a(n-4)` -/
def P8692646660950527772.Spec : Prop :=
  ∀ n, P8692646660950527772.a n = A224405 (n + 1)

theorem P8692646660950527772.correct : P8692646660950527772.Spec := by
  intro n
  simp only [A224405, Nat.add_sub_cancel]

end A224405

/-! ## A224405.P12401229489087324713

`A224409(∑[n+4]+3)`
-/

namespace A224405.P12401229489087324713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224405.P12401229489087324713

namespace A224405

/-- `A224409(∑[n+4]+3)` -/
def P12401229489087324713.Spec : Prop :=
  ∀ n, P12401229489087324713.a n = A224405 (n + 1)

end A224405

/-! ## A224405.P2708589749042315067

`A224409(A027379(n+2))+2-4/2`
-/

namespace A224405.P2708589749042315067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224409 (A027379 (n + 2)).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A224405.P2708589749042315067

namespace A224405

/-- `A224409(A027379(n+2))+2-4/2` -/
def P2708589749042315067.Spec : Prop :=
  ∀ n, P2708589749042315067.a n = (A224405 (n + 1) : ℚ)

end A224405

/-! ## A224405.P16292439810983811295

`lcm(A000034(n), A224409(A056000(n)+7))`
-/

namespace A224405.P16292439810983811295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A224409 (A056000 n + 7).toNat)

end

end A224405.P16292439810983811295

namespace A224405

/-- `lcm(A000034(n), A224409(A056000(n)+7))` -/
def P16292439810983811295.Spec : Prop :=
  ∀ n, (P16292439810983811295.a n : ℤ) = A224405 (n + 1)

end A224405

/-! ## A224405.P7167861399201644787

`or(A000007(n), A224409(A056000(n)+7))`
-/

namespace A224405.P7167861399201644787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224409 (A056000 n + 7).toNat)

end

end A224405.P7167861399201644787

namespace A224405

/-- `or(A000007(n), A224409(A056000(n)+7))` -/
def P7167861399201644787.Spec : Prop :=
  ∀ n, P7167861399201644787.a n = A224405 (n + 1)

end A224405

/-! ## A224405.P17786311111558872950

`A102683(n)!*A224409(A027379(n+2))`
-/

namespace A224405.P17786311111558872950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102683 n).toNat : ℤ) * A224409 (A027379 (n + 2)).toNat

end

end A224405.P17786311111558872950

namespace A224405

/-- `A102683(n)!*A224409(A027379(n+2))` -/
def P17786311111558872950.Spec : Prop :=
  ∀ n, P17786311111558872950.a n = A224405 (n + 1)

end A224405

/-! ## A224405.P7766406107804613028

`lcm(A085297(n+1), A224409(A055998(n+2)))`
-/

namespace A224405.P7766406107804613028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085297 (n + 1)) (A224409 (A055998 (n + 2)).toNat)

end

end A224405.P7766406107804613028

namespace A224405

/-- `lcm(A085297(n+1), A224409(A055998(n+2)))` -/
def P7766406107804613028.Spec : Prop :=
  ∀ n, (P7766406107804613028.a n : ℤ) = A224405 (n + 1)

end A224405

/-! ## A224405.P6427683216135760085

`A267417((n+1)²)+A224409(A055998(n+2))`
-/

namespace A224405.P6427683216135760085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 ((n + 1) ^ 2) + A224409 (A055998 (n + 2)).toNat

end

end A224405.P6427683216135760085

namespace A224405

/-- `A267417((n+1)²)+A224409(A055998(n+2))` -/
def P6427683216135760085.Spec : Prop :=
  ∀ n, P6427683216135760085.a n = A224405 (n + 1)

end A224405

/-! ## A224405.P6957874995285350136

`A224409(A055998(n+2))+A000007(A047050(n))`
-/

namespace A224405.P6957874995285350136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A055998 (n + 2)).toNat + A000007 (A047050 n).toNat

end

end A224405.P6957874995285350136

namespace A224405

/-- `A224409(A055998(n+2))+A000007(A047050(n))` -/
def P6957874995285350136.Spec : Prop :=
  ∀ n, P6957874995285350136.a n = A224405 (n + 1)

end A224405

/-!
# A224406: Number of n X 5 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224406, the canonical program `A224406.P13716191919720199559` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224406 has offset 1).

The definition of A224406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224406.P13716191919720199559

`ogf((16+5x+3x^2-17x^3-7x^4)/(1-6x+9x^2-4x^3-2x^4-8x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224406

/-- `ogf((16+5x+3x^2-17x^3-7x^4)/(1-6x+9x^2-4x^3-2x^4-8x^5))` -/
def P13716191919720199559.Spec : Prop :=
  ∀ n, P13716191919720199559.a n = A224406 (n + 1)

theorem P13716191919720199559.correct : P13716191919720199559.Spec := by
  intro n
  simp only [A224406, Nat.add_sub_cancel]

end A224406

/-! ## A224406.P5436634062926677464

`A224409(A046691(n+3))`
-/

namespace A224406.P5436634062926677464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A046691 (n + 3)).toNat

end

end A224406.P5436634062926677464

namespace A224406

/-- `A224409(A046691(n+3))` -/
def P5436634062926677464.Spec : Prop :=
  ∀ n, P5436634062926677464.a n = A224406 (n + 1)

end A224406

/-! ## A224406.P14740817758977867822

`A224409(Δ[A023545(n+1)])`
-/

namespace A224406.P14740817758977867822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (f1 (n + 1) - f1 n).toNat

end

end A224406.P14740817758977867822

namespace A224406

/-- `A224409(Δ[A023545(n+1)])` -/
def P14740817758977867822.Spec : Prop :=
  ∀ n, P14740817758977867822.a n = A224406 (n + 1)

end A224406

/-! ## A224406.P10696944930494747124

`A224409(A055999(n+2)+2)`
-/

namespace A224406.P10696944930494747124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A055999 (n + 2) + 2).toNat

end

end A224406.P10696944930494747124

namespace A224406

/-- `A224409(A055999(n+2)+2)` -/
def P10696944930494747124.Spec : Prop :=
  ∀ n, P10696944930494747124.a n = A224406 (n + 1)

end A224406

/-! ## A224406.P3540484695454995966

`A224409(A000217(n+5)-4)`
-/

namespace A224406.P3540484695454995966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 5) - 4).toNat

end

end A224406.P3540484695454995966

namespace A224406

/-- `A224409(A000217(n+5)-4)` -/
def P3540484695454995966.Spec : Prop :=
  ∀ n, P3540484695454995966.a n = A224406 (n + 1)

end A224406

/-! ## A224406.P15307786002638475146

`A224409(A000124(n+5)-5)`
-/

namespace A224406.P15307786002638475146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 5) - 5).toNat

end

end A224406.P15307786002638475146

namespace A224406

/-- `A224409(A000124(n+5)-5)` -/
def P15307786002638475146.Spec : Prop :=
  ∀ n, P15307786002638475146.a n = A224406 (n + 1)

end A224406

/-! ## A224406.P6023966091986229041

`A224409(A224409(A000124(n+3))+n)`
-/

namespace A224406.P6023966091986229041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A224409 (A000124 (n + 3)).toNat + (n : ℤ)).toNat

end

end A224406.P6023966091986229041

namespace A224406

/-- `A224409(A224409(A000124(n+3))+n)` -/
def P6023966091986229041.Spec : Prop :=
  ∀ n, P6023966091986229041.a n = A224406 (n + 1)

end A224406

/-!
# A224407: Number of n X 6 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224407, there is no canonical definition to state claims against.
-/

/-! ## A224407.P16930867660868934561

`A224409(A052905(n+3))`
-/

namespace A224407.P16930867660868934561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A052905 (n + 3)).toNat

end

end A224407.P16930867660868934561

/-! ## A224407.P10992974771133506654

`A224409(A046691(n+4)-1)`
-/

namespace A224407.P10992974771133506654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A046691 (n + 4) - 1).toNat

end

end A224407.P10992974771133506654

/-! ## A224407.P13649758334999178607

`A224409(A034856(n+5)-3)`
-/

namespace A224407.P13649758334999178607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A034856 (n + 5) - 3).toNat

end

end A224407.P13649758334999178607

/-! ## A224407.P11556644938475721629

`A224409(A056115(n+1)+10)`
-/

namespace A224407.P11556644938475721629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A056115 (n + 1) + 10).toNat

end

end A224407.P11556644938475721629

/-! ## A224407.P3478634386032570011

`A224409(A000124(n+6)-6)`
-/

namespace A224407.P3478634386032570011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 6) - 6).toNat

end

end A224407.P3478634386032570011

/-! ## A224407.P13007125337438567554

`A224409(Δ[A023545(n+2)]-1)`
-/

namespace A224407.P13007125337438567554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (f1 (n + 1) - f1 n - 1).toNat

end

end A224407.P13007125337438567554

/-! ## A224407.P9057033764465915056

`A224409(A000217(n+5)+n+1)`
-/

namespace A224407.P9057033764465915056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A224407.P9057033764465915056

/-! ## A224407.P12154566412021210126

`A224409(A002522(n+9)-A253145(n+10))`
-/

namespace A224407.P12154566412021210126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A002522 (n + 9) - A253145 (n + 10)).toNat

end

end A224407.P12154566412021210126

/-!
# A224408: Number of n X 7 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224408, there is no canonical definition to state claims against.
-/

/-! ## A224408.P15831629934501832990

`A224409(A055999(n+4))`
-/

namespace A224408.P15831629934501832990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A055999 (n + 4)).toNat

end

end A224408.P15831629934501832990

/-! ## A224408.P2240119466266905272

`A224409(A134227(n+5))`
-/

namespace A224408.P2240119466266905272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A134227 (n + 5)).toNat

end

end A224408.P2240119466266905272

/-! ## A224408.P6421735184556360696

`A224409(A253145(n+6)-6)`
-/

namespace A224408.P6421735184556360696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A253145 (n + 6) - 6).toNat

end

end A224408.P6421735184556360696

/-! ## A224408.P8131750122233497853

`A224409(A000217(n+7)-6)`
-/

namespace A224408.P8131750122233497853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 7) - 6).toNat

end

end A224408.P8131750122233497853

/-! ## A224408.P5906463587790877577

`A224409(A000124(n+7)-7)`
-/

namespace A224408.P5906463587790877577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 7) - 7).toNat

end

end A224408.P5906463587790877577

/-!
# A224409: T(n,k)=Number of nXk 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224409, there is no canonical definition to state claims against.
-/

/-! ## A224409.P14061399949763005306

`A224158(n+1)+A185245(A046682(n))`
-/

namespace A224409.P14061399949763005306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (n + 1) + A185245 (A046682 n).toNat

end

end A224409.P14061399949763005306

/-!
# A224410: Number of 3 X n 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224410, the canonical program `A224410.P5220440122096421434` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224410 has offset 1).

The definition of A224410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224410.P5220440122096421434

`ogf((8-20x+16x^2+4x^3-11x^4+4x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224410

/-- `ogf((8-20x+16x^2+4x^3-11x^4+4x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5220440122096421434.Spec : Prop :=
  ∀ n, P5220440122096421434.a n = A224410 (n + 1)

theorem P5220440122096421434.correct : P5220440122096421434.Spec := by
  intro n
  simp only [A224410, Nat.add_sub_cancel]

end A224410

/-! ## A224410.P8844685936688713742

`A224409(∑[n+2]+4)`
-/

namespace A224410.P8844685936688713742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224410.P8844685936688713742

namespace A224410

/-- `A224409(∑[n+2]+4)` -/
def P8844685936688713742.Spec : Prop :=
  ∀ n, P8844685936688713742.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P12193535251064703640

`A224409(A167614(n+1))%(1-10*6^n)`
-/

namespace A224410.P12193535251064703640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224409 (A167614 (n + 1)).toNat) (1 - (10 * 6 ^ n : ℤ))

end

end A224410.P12193535251064703640

namespace A224410

/-- `A224409(A167614(n+1))%(1-10*6^n)` -/
def P12193535251064703640.Spec : Prop :=
  ∀ n, P12193535251064703640.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P2770198110548261972

`A224409(A167614(n+1))+A000007(n+1)`
-/

namespace A224410.P2770198110548261972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A224410.P2770198110548261972

namespace A224410

/-- `A224409(A167614(n+1))+A000007(n+1)` -/
def P2770198110548261972.Spec : Prop :=
  ∀ n, P2770198110548261972.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P6005229546785370214

`A224409(A167614(n+1))*A239700(n+1)`
-/

namespace A224410.P6005229546785370214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167614 (n + 1)).toNat * A239700 (n + 1)

end

end A224410.P6005229546785370214

namespace A224410

/-- `A224409(A167614(n+1))*A239700(n+1)` -/
def P6005229546785370214.Spec : Prop :=
  ∀ n, P6005229546785370214.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P9245358360893471331

`A224409(A055998(n)+6)%A224392(n+1)`
-/

namespace A224410.P9245358360893471331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224409 (A055998 n + 6).toNat) (A224392 (n + 1))

end

end A224410.P9245358360893471331

namespace A224410

/-- `A224409(A055998(n)+6)%A224392(n+1)` -/
def P9245358360893471331.Spec : Prop :=
  ∀ n, P9245358360893471331.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P2764247682377454955

`lcm(A008836(n+1), A224409(A055998(n)+6))`
-/

namespace A224410.P2764247682377454955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A224409 (A055998 n + 6).toNat)

end

end A224410.P2764247682377454955

namespace A224410

/-- `lcm(A008836(n+1), A224409(A055998(n)+6))` -/
def P2764247682377454955.Spec : Prop :=
  ∀ n, (P2764247682377454955.a n : ℤ) = A224410 (n + 1)

end A224410

/-! ## A224410.P2686749793582937081

`A008619(A131364(n))*A224409(A167614(n+1))`
-/

namespace A224410.P2686749793582937081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A131364 n).toNat * A224409 (A167614 (n + 1)).toNat

end

end A224410.P2686749793582937081

namespace A224410

/-- `A008619(A131364(n))*A224409(A167614(n+1))` -/
def P2686749793582937081.Spec : Prop :=
  ∀ n, P2686749793582937081.a n = A224410 (n + 1)

end A224410

/-! ## A224410.P259560094023596306

`A016182(A006165(n+3))*A224409(A167614(n+1))`
-/

namespace A224410.P259560094023596306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 (A006165 (n + 3)).toNat * A224409 (A167614 (n + 1)).toNat

end

end A224410.P259560094023596306

namespace A224410

/-- `A016182(A006165(n+3))*A224409(A167614(n+1))` -/
def P259560094023596306.Spec : Prop :=
  ∀ n, P259560094023596306.a n = A224410 (n + 1)

end A224410

/-!
# A224411: Number of 4 X n 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224411, there is no canonical definition to state claims against.
-/

/-! ## A224411.P10919872626763860430

`A224409(A052905(n)+9)`
-/

namespace A224411.P10919872626763860430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A052905 n + 9).toNat

end

end A224411.P10919872626763860430

/-! ## A224411.P13801705193695819824

`A224409(A055999(n)+10)`
-/

namespace A224411.P13801705193695819824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A055999 n + 10).toNat

end

end A224411.P13801705193695819824

/-! ## A224411.P8281796623864070417

`A224409(A167614(n+2)+1)`
-/

namespace A224411.P8281796623864070417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167614 (n + 2) + 1).toNat

end

end A224411.P8281796623864070417

/-! ## A224411.P10785881846818868906

`A224409(A166136(n+2)-2)`
-/

namespace A224411.P10785881846818868906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A166136 (n + 2) - 2).toNat

end

end A224411.P10785881846818868906

/-! ## A224411.P2955728308436837458

`A224409(A000124(n+3)+3)`
-/

namespace A224411.P2955728308436837458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 3) + 3).toNat

end

end A224411.P2955728308436837458

/-! ## A224411.P13101141875238405239

`A224409(A166136(n+1)+1+n)`
-/

namespace A224411.P13101141875238405239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A224411.P13101141875238405239

/-! ## A224411.P15887588551894624973

`A224409(Δ[A023545(n+1)-n²])`
-/

namespace A224411.P15887588551894624973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (f1 (n + 1) - f1 n).toNat

end

end A224411.P15887588551894624973

/-!
# A224412: Number of 5Xn 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224412, there is no canonical definition to state claims against.
-/

/-! ## A224412.P9500784869473856820

`A224409(A167499(n+3))`
-/

namespace A224412.P9500784869473856820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167499 (n + 3)).toNat

end

end A224412.P9500784869473856820

/-! ## A224412.P3429377854317587993

`A224409(A155212(n)+13)`
-/

namespace A224412.P3429377854317587993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A155212 n + 13).toNat

end

end A224412.P3429377854317587993

/-! ## A224412.P1904273957318871036

`A224409(A056000(n)+15)`
-/

namespace A224412.P1904273957318871036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A056000 n + 15).toNat

end

end A224412.P1904273957318871036

/-! ## A224412.P6902028737782249382

`A224409(A000217(n+4)+5)`
-/

namespace A224412.P6902028737782249382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 4) + 5).toNat

end

end A224412.P6902028737782249382

/-! ## A224412.P17186556172616395793

`A224409(A038722(Δ[A023545(n+1)]))`
-/

namespace A224412.P17186556172616395793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A224412.P17186556172616395793

/-!
# A224413: Number of 6Xn 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224413, there is no canonical definition to state claims against.
-/

/-! ## A224413.P5595824930758039848

`A224409(A166136(n+4))`
-/

namespace A224413.P5595824930758039848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A166136 (n + 4)).toNat

end

end A224413.P5595824930758039848

/-! ## A224413.P16685621814877872955

`A224409(A167499(n+4)+1)`
-/

namespace A224413.P16685621814877872955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167499 (n + 4) + 1).toNat

end

end A224413.P16685621814877872955

/-! ## A224413.P17004522674183579781

`A224409(A000124(n+5)+5)`
-/

namespace A224413.P17004522674183579781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 5) + 5).toNat

end

end A224413.P17004522674183579781

/-! ## A224413.P8904801654693246443

`A224409(A000217(n+5)+6)`
-/

namespace A224413.P8904801654693246443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 5) + 6).toNat

end

end A224413.P8904801654693246443

/-! ## A224413.P953274232439629652

`A224409(A000096(n+5)-A023443(n))`
-/

namespace A224413.P953274232439629652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000096 (n + 5) - A023443 n).toNat

end

end A224413.P953274232439629652

/-! ## A224413.P3588709643006538208

`A224409(A133263(n+3)+A005408(n+6))`
-/

namespace A224413.P3588709643006538208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A133263 (n + 3) + A005408 (n + 6)).toNat

end

end A224413.P3588709643006538208

/-!
# A224414: Number of 7Xn 0..1 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224414, there is no canonical definition to state claims against.
-/

/-! ## A224414.P15802519173097562782

`A224409(A167499(n+5)+2)`
-/

namespace A224414.P15802519173097562782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A167499 (n + 5) + 2).toNat

end

end A224414.P15802519173097562782

/-! ## A224414.P7211851984045251465

`A224409(A000124(n+6)+6)`
-/

namespace A224414.P7211851984045251465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000124 (n + 6) + 6).toNat

end

end A224414.P7211851984045251465

/-! ## A224414.P11986208747194396075

`A224409(A253145(n+5)+7)`
-/

namespace A224414.P11986208747194396075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A253145 (n + 5) + 7).toNat

end

end A224414.P11986208747194396075

/-! ## A224414.P17707158811218241753

`A224409(A000217(n+6)+7)`
-/

namespace A224414.P17707158811218241753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000217 (n + 6) + 7).toNat

end

end A224414.P17707158811218241753

/-! ## A224414.P10063998384904863478

`A224409(A020719(A000217(n+6)))`
-/

namespace A224414.P10063998384904863478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A020719 (A000217 (n + 6)).toNat).toNat

end

end A224414.P10063998384904863478

/-! ## A224414.P14045237803798242689

`A224409(A000096(n+6)-A023443(n))`
-/

namespace A224414.P14045237803798242689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A000096 (n + 6) - A023443 n).toNat

end

end A224414.P14045237803798242689

/-!
# A224415: G.f.: exp( Sum_{n>=1} 5*L(n)*x^n/n ) where L(n) = Fibonacci(n-1)^2 + Fibonacci(n+1)^2 = A069921(n-1).

The programs for A224415, the canonical program `A224415.P17408284692298255486` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224415 has offset 0).

The definition of A224415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224415.P17408284692298255486

`ogf(1/(1-5x+25x^3-5x^4-48x^5-5x^6+25x^7-5x^9+x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224415

/-- `ogf(1/(1-5x+25x^3-5x^4-48x^5-5x^6+25x^7-5x^9+x^10))` -/
def P17408284692298255486.Spec : Prop :=
  ∀ n, P17408284692298255486.a n = A224415 n

theorem P17408284692298255486.correct : P17408284692298255486.Spec := by
  intro n
  simp only [A224415]

end A224415

/-! ## A224415.P17723405585153575292

`A358475(A001933(n+1))+A022729(n)`
-/

namespace A224415.P17723405585153575292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A001933 (n + 1)).toNat + A022729 n

end

end A224415.P17723405585153575292

namespace A224415

/-- `A358475(A001933(n+1))+A022729(n)` -/
def P17723405585153575292.Spec : Prop :=
  ∀ n, P17723405585153575292.a n = A224415 n

end A224415

/-!
# A224417: Least prime p such that sum_{k=0}^n B_k*x^{n-k} is irreducible modulo p, where B_k refers to the Bell number A000110(k).

The programs for A224417, there is no canonical definition to state claims against.
-/

/-! ## A224417.P15666338860821521962

`A227126(A290650(n+1))`
-/

namespace A224417.P15666338860821521962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227126 (A290650 (n + 1)).toNat

end

end A224417.P15666338860821521962

/-! ## A224417.P4104342310649959162

`gcd(A059393(n+5), A112846(n))+1`
-/

namespace A224417.P4104342310649959162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059393 (n + 5)) (A112846 n) + 1

end

end A224417.P4104342310649959162

/-! ## A224417.P182439090218986043

`A020639(A035089(n)*A236583(n))`
-/

namespace A224417.P182439090218986043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035089 n * A236583 n).toNat

end

end A224417.P182439090218986043

/-!
# A224419: Numbers k such that triangular(k) + triangular(2*k) is a square.

The programs for A224419, the canonical program `A224419.P4392876810021397207` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224419 has offset 1).

The definition of A224419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224419.P4392876810021397207

`(A228209(2*(n+1)-1)-3)/10`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A224419

/-- `(A228209(2*(n+1)-1)-3)/10` -/
def P4392876810021397207.Spec : Prop :=
  ∀ n, P4392876810021397207.a n = (A224419 (n + 1) : ℚ)

end A224419

/-!
# A224420: Primes of the form 3^n - n.

The programs for A224420, there is no canonical definition to state claims against.
-/

/-! ## A224420.P12822669401333523969

`A024024(A058037(n+1))`
-/

namespace A224420.P12822669401333523969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 (A058037 (n + 1)).toNat

end

end A224420.P12822669401333523969

/-!
# A224422: Expansion of (1-x)*(1-3*x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A224422, the canonical program `A224422.P8756552002184330950` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224422 has offset 0).

The definition of A224422 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+3x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A224422.P8756552002184330950`, by `A224422.P8756552002184330950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224422.P8756552002184330950

`ogf((1-4x+3x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224422

/-- `ogf((1-4x+3x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P8756552002184330950.Spec : Prop :=
  ∀ n, P8756552002184330950.a n = A224422 n

theorem P8756552002184330950.correct : P8756552002184330950.Spec := by
  intro n
  simp only [A224422]

end A224422

/-! ## A224422.P3509978453633474794

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=75, a(4)=275`
-/

namespace A224422.P3509978453633474794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 20, 75, 275] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A224422.P3509978453633474794

namespace A224422

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P3509978453633474794.Spec : Prop :=
  ∀ n, P3509978453633474794.a n = A224422 n

end A224422

/-! ## A224422.P3863530002906254487

`∑[A220948(n)]`
-/

namespace A224422.P3863530002906254487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224422.P3863530002906254487

namespace A224422

/-- `∑[A220948(n)]` -/
def P3863530002906254487.Spec : Prop :=
  ∀ n, P3863530002906254487.a n = A224422 n

end A224422

/-! ## A224422.P7406763229432726237

`A231181(2*n)`
-/

namespace A224422.P7406763229432726237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (2 * n)

end

end A224422.P7406763229432726237

namespace A224422

/-- `A231181(2*n)` -/
def P7406763229432726237.Spec : Prop :=
  ∀ n, P7406763229432726237.a n = A224422 n

end A224422

/-! ## A224422.P15424298356753525096

`A231182(2*n+5)`
-/

namespace A224422.P15424298356753525096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * n + 5)

end

end A224422.P15424298356753525096

namespace A224422

/-- `A231182(2*n+5)` -/
def P15424298356753525096.Spec : Prop :=
  ∀ n, P15424298356753525096.a n = A224422 n

end A224422

/-! ## A224422.P8161441520052935705

`record[A231181(and(n, n+1))]`
-/

namespace A224422.P8161441520052935705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P8161441520052935705

namespace A224422

/-- `record[A231181(and(n, n+1))]` -/
def P8161441520052935705.Spec : Prop :=
  ∀ n, P8161441520052935705.a n = A224422 n

end A224422

/-! ## A224422.P18361170458263384723

`record[A231181(n-val(n+1, 2))]`
-/

namespace A224422.P18361170458263384723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (n - SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P18361170458263384723

namespace A224422

/-- `record[A231181(n-val(n+1, 2))]` -/
def P18361170458263384723.Spec : Prop :=
  ∀ n, P18361170458263384723.a n = A224422 n

end A224422

/-! ## A224422.P16941228319149403683

`a(n-1)+A224509(n)+a(n-1)` with `a(0)=1`
-/

namespace A224422.P16941228319149403683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A224509 n + a (n - 1))

end

end A224422.P16941228319149403683

namespace A224422

/-- `a(n-1)+A224509(n)+a(n-1)` -/
def P16941228319149403683.Spec : Prop :=
  ∀ n, P16941228319149403683.a n = A224422 n

end A224422

/-! ## A224422.P16858675156507141287

`record[A231181(A014681(n))]`
-/

namespace A224422.P16858675156507141287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P16858675156507141287

namespace A224422

/-- `record[A231181(A014681(n))]` -/
def P16858675156507141287.Spec : Prop :=
  ∀ n, P16858675156507141287.a n = A224422 n

end A224422

/-! ## A224422.P4595645085198052566

`record[A231181(A026741(n)+1)]`
-/

namespace A224422.P4595645085198052566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P4595645085198052566

namespace A224422

/-- `record[A231181(A026741(n)+1)]` -/
def P4595645085198052566.Spec : Prop :=
  ∀ n, P4595645085198052566.a n = A224422 n

end A224422

/-! ## A224422.P1280842659177904557

`record[A231181(A257088(n)-n)]`
-/

namespace A224422.P1280842659177904557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A257088 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P1280842659177904557

namespace A224422

/-- `record[A231181(A257088(n)-n)]` -/
def P1280842659177904557.Spec : Prop :=
  ∀ n, P1280842659177904557.a n = A224422 n

end A224422

/-! ## A224422.P8089632622935414060

`record[A231181(n)/A010685(n)]`
-/

namespace A224422.P8089632622935414060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231181 n : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P8089632622935414060

namespace A224422

/-- `record[A231181(n)/A010685(n)]` -/
def P8089632622935414060.Spec : Prop :=
  ∀ n, P8089632622935414060.a n = (A224422 n : ℚ)

end A224422

/-! ## A224422.P14711730522147929408

`2*A220948(n)-A224509(n)`
-/

namespace A224422.P14711730522147929408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220948 n - A224509 n

end

end A224422.P14711730522147929408

namespace A224422

/-- `2*A220948(n)-A224509(n)` -/
def P14711730522147929408.Spec : Prop :=
  ∀ n, P14711730522147929408.a n = A224422 n

end A224422

/-! ## A224422.P7656746302127122303

`record[A231181(n-A053385(n+1))]`
-/

namespace A224422.P7656746302127122303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 ((n : ℤ) - A053385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P7656746302127122303

namespace A224422

/-- `record[A231181(n-A053385(n+1))]` -/
def P7656746302127122303.Spec : Prop :=
  ∀ n, P7656746302127122303.a n = A224422 n

end A224422

/-! ## A224422.P5754494613014188718

`record[A231181(n)/(A053385(n+1)+1)]`
-/

namespace A224422.P5754494613014188718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231181 n : ℚ) / (A053385 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P5754494613014188718

namespace A224422

/-- `record[A231181(n)/(A053385(n+1)+1)]` -/
def P5754494613014188718.Spec : Prop :=
  ∀ n, P5754494613014188718.a n = (A224422 n : ℚ)

end A224422

/-! ## A224422.P2455914023839451519

`record[A231181(A008611(A026741(n)))]`
-/

namespace A224422.P2455914023839451519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A008611 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224422.P2455914023839451519

namespace A224422

/-- `record[A231181(A008611(A026741(n)))]` -/
def P2455914023839451519.Spec : Prop :=
  ∀ n, P2455914023839451519.a n = A224422 n

end A224422

/-! ## A224422.P10389257580240841797

`A220948(n+1)-A224509(n+1)`
-/

namespace A224422.P10389257580240841797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220948 (n + 1) - A224509 (n + 1)

end

end A224422.P10389257580240841797

namespace A224422

/-- `A220948(n+1)-A224509(n+1)` -/
def P10389257580240841797.Spec : Prop :=
  ∀ n, P10389257580240841797.a n = A224422 n

end A224422

/-! ## A224422.P3943006157641495477

`A370051(n+1)-A370074(n+1)`
-/

namespace A224422.P3943006157641495477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370051 (n + 1) - A370074 (n + 1)

end

end A224422.P3943006157641495477

namespace A224422

/-- `A370051(n+1)-A370074(n+1)` -/
def P3943006157641495477.Spec : Prop :=
  ∀ n, P3943006157641495477.a n = A224422 n

end A224422

/-!
# A224439: G.f.: A(x) = exp( Sum_{n>=1} sigma(n)^(n-1) * x^n/n ).

The programs for A224439, there is no canonical definition to state claims against.
-/

/-! ## A224439.P17346696260191139080

`A200926(A011954(n))`
-/

namespace A224439.P17346696260191139080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200926 (A011954 n).toNat

end

end A224439.P17346696260191139080

/-! ## A224439.P1548298349519450701

`A200926(A349566(n+1))`
-/

namespace A224439.P1548298349519450701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200926 (A349566 (n + 1)).toNat

end

end A224439.P1548298349519450701

/-!
# A224440: a(n) = sigma(n)^(n-1).

The programs for A224440, the canonical program `A224440.P7654101212196881365` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224440 has offset 1).

The definition of A224440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)^n` (program `A224440.P7654101212196881365`, by `A224440.P7654101212196881365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224440.P7654101212196881365

`A000203(n+1)^n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A224440

/-- `A000203(n+1)^n` -/
def P7654101212196881365.Spec : Prop :=
  ∀ n, P7654101212196881365.a n = A224440 (n + 1)

theorem P7654101212196881365.correct : P7654101212196881365.Spec := by
  intro n
  simp only [A224440, Nat.add_sub_cancel]

end A224440

/-! ## A224440.P9944847546279893476

`∑{d}[1+n, #]^n`
-/

namespace A224440.P9944847546279893476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ n

end

end A224440.P9944847546279893476

namespace A224440

/-- `∑{d}[1+n, #]^n` -/
def P9944847546279893476.Spec : Prop :=
  ∀ n, (P9944847546279893476.a n : ℤ) = A224440 (n + 1)

theorem P9944847546279893476.correct : P9944847546279893476.Spec := by
  intro n
  simp only [A224440, Nat.add_sub_cancel, A224440.P9944847546279893476.f1, A224440.P9944847546279893476.a, A224440.P7654101212196881365.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224440

/-! ## A224440.P4787563092050894248

`log2(∏{d}[n+1, 2^#])^n`
-/

namespace A224440.P4787563092050894248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℝ) ^ n

end

end A224440.P4787563092050894248

namespace A224440

/-- `log2(∏{d}[n+1, 2^#])^n` -/
def P4787563092050894248.Spec : Prop :=
  ∀ n, P4787563092050894248.a n = (A224440 (n + 1) : ℝ)

end A224440

/-! ## A224440.P5240005579775207423

`A130307(∑[n])^n`
-/

namespace A224440.P5240005579775207423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130307 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A224440.P5240005579775207423

namespace A224440

/-- `A130307(∑[n])^n` -/
def P5240005579775207423.Spec : Prop :=
  ∀ n, P5240005579775207423.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P10229101206308516361

`Δ[A160664(n)]^n`
-/

namespace A224440.P10229101206308516361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A224440.P10229101206308516361

namespace A224440

/-- `Δ[A160664(n)]^n` -/
def P10229101206308516361.Spec : Prop :=
  ∀ n, P10229101206308516361.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P10987353169075460119

`A097012(n+1)^n`
-/

namespace A224440.P10987353169075460119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) ^ n

end

end A224440.P10987353169075460119

namespace A224440

/-- `A097012(n+1)^n` -/
def P10987353169075460119.Spec : Prop :=
  ∀ n, P10987353169075460119.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P11278176157251004107

`A245092(Δ[n²])^n`
-/

namespace A224440.P11278176157251004107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ n

end

end A224440.P11278176157251004107

namespace A224440

/-- `A245092(Δ[n²])^n` -/
def P11278176157251004107.Spec : Prop :=
  ∀ n, P11278176157251004107.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P1000128179000752481

`A262610(Δ[n²])^n`
-/

namespace A224440.P1000128179000752481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ n

end

end A224440.P1000128179000752481

namespace A224440

/-- `A262610(Δ[n²])^n` -/
def P1000128179000752481.Spec : Prop :=
  ∀ n, P1000128179000752481.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P3137558108778928807

`A069290((n+1)²)^n`
-/

namespace A224440.P3137558108778928807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 ((n + 1) ^ 2) ^ n

end

end A224440.P3137558108778928807

namespace A224440

/-- `A069290((n+1)²)^n` -/
def P3137558108778928807.Spec : Prop :=
  ∀ n, P3137558108778928807.a n = A224440 (n + 1)

end A224440

/-! ## A224440.P2504251370592899865

`sqrt(A072861(n+1))^n`
-/

namespace A224440.P2504251370592899865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) ^ n

end

end A224440.P2504251370592899865

namespace A224440

/-- `sqrt(A072861(n+1))^n` -/
def P2504251370592899865.Spec : Prop :=
  ∀ n, P2504251370592899865.a n = (A224440 (n + 1) : ℝ)

end A224440

/-!
# A224442: Numbers that are the sum of three squares (square 0 allowed) in exactly two ways.

The programs for A224442, there is no canonical definition to state claims against.
-/

/-! ## A224442.P17132725485999486614

`eq[2, A000164(n)]`
-/

namespace A224442.P17132725485999486614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224442.P17132725485999486614

/-! ## A224442.P2439453663754893685

`eq[2, A025427(n)+A000161(n)]`
-/

namespace A224442.P2439453663754893685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224442.P2439453663754893685

/-! ## A224442.P10639860455262323519

`eq[A025428(n)+2, A002635(n)]`
-/

namespace A224442.P10639860455262323519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224442.P10639860455262323519

/-! ## A224442.P11785833854682458586

`eq[2, A085202(A000925(n))+A025427(n)]`
-/

namespace A224442.P11785833854682458586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224442.P11785833854682458586

/-! ## A224442.P11502687238643576560

`eq[2-A000161(A005843(n)), A025427(n)]`
-/

namespace A224442.P11502687238643576560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000161 (A005843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224442.P11502687238643576560

/-! ## A224442.P8291293033614241645

`lt[A141472(A000164(n)²+1), A000164(n)²]`
-/

namespace A224442.P8291293033614241645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A000164 n ^ 2 + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224442.P8291293033614241645

/-!
# A224443: Numbers that are the sum of three squares (square 0 allowed) in exactly three ways.

The programs for A224443, there is no canonical definition to state claims against.
-/

/-! ## A224443.P16275786015913037348

`eq[3, A000164(n)]`
-/

namespace A224443.P16275786015913037348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224443.P16275786015913037348

/-! ## A224443.P670818683331550089

`eq[3, A025427(n)+A000161(n)]`
-/

namespace A224443.P670818683331550089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224443.P670818683331550089

/-! ## A224443.P4806798631376059007

`eq[A025428(n)+3, A002635(n)]`
-/

namespace A224443.P4806798631376059007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224443.P4806798631376059007

/-! ## A224443.P12434064250468540055

`eq[3, A085202(A000925(n))+A025427(n)]`
-/

namespace A224443.P12434064250468540055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224443.P12434064250468540055

/-! ## A224443.P3777727303327133906

`eq[A002635(n), A141213(A025428(n))]`
-/

namespace A224443.P3777727303327133906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224443.P3777727303327133906

/-!
# A224444: Multiplicities for representations of nonnegative numbers as primitive sums of three squares of integers (square 0 allowed).

The programs for A224444, there is no canonical definition to state claims against.
-/

/-! ## A224444.P739533721446596670

`A048766(A295848(n))%A036884(n+1)`
-/

namespace A224444.P739533721446596670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A295848 n).toNat) (A036884 (n + 1))

end

end A224444.P739533721446596670

/-! ## A224444.P9837318446452112536

`A048766(A295848(n))+A000038(A337389(n))`
-/

namespace A224444.P9837318446452112536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A295848 n).toNat + A000038 (A337389 n).toNat

end

end A224444.P9837318446452112536

/-! ## A224444.P15443436694362603288

`A048766(A295848(n))%A101932(A218510(n))`
-/

namespace A224444.P15443436694362603288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A295848 n).toNat) (A101932 (A218510 n).toNat)

end

end A224444.P15443436694362603288

/-! ## A224444.P9320592734583941371

`ceil(A295848(n)%A134382(n+1)/6)`
-/

namespace A224444.P9320592734583941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A295848 n) (A134382 (n + 1)) : ℚ) / 6⌉

end

end A224444.P9320592734583941371

/-! ## A224444.P17589632921931835249

`A048766(A295848(n)%A134382(n+1))`
-/

namespace A224444.P17589632921931835249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.tmod (A295848 n) (A134382 (n + 1))).toNat

end

end A224444.P17589632921931835249

/-!
# A224446: Denominators of certain rationals approximating sqrt(3).

The programs for A224446, there is no canonical definition to state claims against.
-/

/-! ## A224446.P17931058263490414982

`∏[gcd(8*n, 4^n)]`
-/

namespace A224446.P17931058263490414982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (8 * n) (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224446.P17931058263490414982

/-! ## A224446.P1518586915383566394

`4*gcd(2*n, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A224446.P1518586915383566394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * (Nat.gcd (2 * n) (a (n - 1)) * a (n - 1))

end

end A224446.P1518586915383566394

/-! ## A224446.P3787225081545905974

`A120777(comp[2*(n+1)])`
-/

namespace A224446.P3787225081545905974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A224446.P3787225081545905974

/-! ## A224446.P7236331055187781006

`ceil(4^n/2)*A046161(n)`
-/

namespace A224446.P7236331055187781006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * A046161 n

end

end A224446.P7236331055187781006

/-! ## A224446.P4426908744962264027

`ceil(4^n/2)*A060818(2*n)`
-/

namespace A224446.P4426908744962264027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * A060818 (2 * n)

end

end A224446.P4426908744962264027

/-! ## A224446.P978459280475961425

`A011782(A120738(n))`
-/

namespace A224446.P978459280475961425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A120738 n).toNat

end

end A224446.P978459280475961425

/-! ## A224446.P11092499286537430100

`∏[A006519(A234275(n))]`
-/

namespace A224446.P11092499286537430100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A234275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224446.P11092499286537430100

/-! ## A224446.P3371865303978684730

`A090129(A120738(n)+1)`
-/

namespace A224446.P3371865303978684730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A120738 n + 1).toNat

end

end A224446.P3371865303978684730

/-! ## A224446.P7687085694390959862

`A011782(A005187(2*n))`
-/

namespace A224446.P7687085694390959862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A005187 (2 * n)).toNat

end

end A224446.P7687085694390959862

/-! ## A224446.P7016012562181975039

`A011782(A004134(n)+n)`
-/

namespace A224446.P7016012562181975039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004134 n + (n : ℤ)).toNat

end

end A224446.P7016012562181975039

/-!
# A224447: Multiplicities for representations of n as primitive and distinct sums of three squares.

The programs for A224447, there is no canonical definition to state claims against.
-/

/-! ## A224447.P9405226551593399992

`A025436(n*A000007(A010894(n)))`
-/

namespace A224447.P9405226551593399992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 ((n : ℤ) * A000007 (A010894 (n + 21)).toNat).toNat

end

end A224447.P9405226551593399992

/-! ## A224447.P1277313471254383701

`A025436(n*A010894(A010894(n)))`
-/

namespace A224447.P1277313471254383701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 ((n : ℤ) * A010894 ((A010894 (n + 21)).toNat + 21)).toNat

end

end A224447.P1277313471254383701

/-! ## A224447.P276380644108126803

`and(A007623(A072277(n+3)), A025436(n))`
-/

namespace A224447.P276380644108126803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007623 (A072277 (n + 3)).toNat) (A025436 n)

end

end A224447.P276380644108126803

/-! ## A224447.P10962608937465266461

`and(-A104516(n+2), A025436(n))`
-/

namespace A224447.P10962608937465266461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A104516 (n + 2)) (A025436 n)

end

end A224447.P10962608937465266461

/-! ## A224447.P4003330140664737078

`A025436(n)%A337220(n+1)`
-/

namespace A224447.P4003330140664737078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025436 n) (A337220 (n + 1))

end

end A224447.P4003330140664737078

/-!
# A224448: Nonnegative numbers that have a representation as a sum of three primitive and distinct squares (square 0 allowed).

The programs for A224448, there is no canonical definition to state claims against.
-/

/-! ## A224448.P16727455804924876178

`record[A065883(A001974(n+1))]`
-/

namespace A224448.P16727455804924876178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A001974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224448.P16727455804924876178

/-! ## A224448.P16377948788145973285

`filter[A001974(n+1), A166486(#)]`
-/

namespace A224448.P16377948788145973285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A224448.P16377948788145973285

/-! ## A224448.P8612890282042400428

`∩[A001974(n+1), A042968(n+1)]`
-/

namespace A224448.P8612890282042400428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224448.P8612890282042400428

/-! ## A224448.P17642497686282047360

`∩[A001974(n+1), A047449(n+1)]`
-/

namespace A224448.P17642497686282047360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224448.P17642497686282047360

/-! ## A224448.P374657484499167190

`∩[A001974(n+1), A059557(n+1)]`
-/

namespace A224448.P374657484499167190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224448.P374657484499167190

/-! ## A224448.P11866595467827623715

`eq[A010130(n), A054977(A025436(n))]`
-/

namespace A224448.P11866595467827623715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P11866595467827623715

/-! ## A224448.P13507450518109832021

`eq[A010121(n), A057427(A025436(n))]`
-/

namespace A224448.P13507450518109832021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P13507450518109832021

/-! ## A224448.P17434888589256075026

`eq[A040037(n), A057427(A025436(n))]`
-/

namespace A224448.P17434888589256075026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P17434888589256075026

/-! ## A224448.P423920966381292257

`eq[A000038(A025436(n)), A121262(n)]`
-/

namespace A224448.P423920966381292257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P423920966381292257

/-! ## A224448.P2279372871907248242

`eq[A000007(A025436(n)), A264769(n)]`
-/

namespace A224448.P2279372871907248242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P2279372871907248242

/-! ## A224448.P8009459338881334561

`eq[A000038(A025436(n)²), A264769(n)]`
-/

namespace A224448.P8009459338881334561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025436 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224448.P8009459338881334561

/-! ## A224448.P7128855066428546382

`eq[A000038(n)^A025436(n), A264769(n)]`
-/

namespace A224448.P7128855066428546382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A025436 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A224448.P7128855066428546382

/-!
# A224449: A finite set of numbers relevant for the representation of numbers as primitive distinct sums of three squares (0 squared allowed).

The programs for A224449, there is no canonical definition to state claims against.
-/

/-! ## A224449.P5481274334187353752

`eq[A008423(n), A025436(n)]`
-/

namespace A224449.P5481274334187353752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224449.P5481274334187353752

/-! ## A224449.P8331061384380966326

`eq[A025436(n), A028698(n)]`
-/

namespace A224449.P8331061384380966326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224449.P8331061384380966326

/-! ## A224449.P10940301750830894269

`∩[A004436(n+1), A047404(n+1)]`
-/

namespace A224449.P10940301750830894269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224449.P10940301750830894269

/-! ## A224449.P16289847645757561665

`∩[A004436(n+1), A047449(n+1)]`
-/

namespace A224449.P16289847645757561665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224449.P16289847645757561665

/-! ## A224449.P11575345618785855535

`∩[A004436(n+1), A057127(n+1)]`
-/

namespace A224449.P11575345618785855535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224449.P11575345618785855535

/-!
# A224450: Numbers that are the primitive sum of two nonzero squares in exactly one way.

The programs for A224450, the canonical program `A224450.P3123032026514639829` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224450 has offset 1).

The definition of A224450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224450.P3123032026514639829

`filter[A008784(n+2), A354924(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224450

/-- `filter[A008784(n+2), A354924(#)]` -/
def P3123032026514639829.Spec : Prop :=
  ∀ n, P3123032026514639829.a n = A224450 (n + 1)

theorem P3123032026514639829.correct : P3123032026514639829.Spec := by
  intro n
  simp only [A224450, Nat.add_sub_cancel]

end A224450

/-! ## A224450.P14313861502470778720

`filter[A008784(n+1), A211487(#)]`
-/

namespace A224450.P14313861502470778720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A224450.P14313861502470778720

namespace A224450

/-- `filter[A008784(n+1), A211487(#)]` -/
def P14313861502470778720.Spec : Prop :=
  ∀ n, P14313861502470778720.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P436858309513714016

`filter[A008784(n+2), A340363(#)]`
-/

namespace A224450.P436858309513714016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A224450.P436858309513714016

namespace A224450

/-- `filter[A008784(n+2), A340363(#)]` -/
def P436858309513714016.Spec : Prop :=
  ∀ n, P436858309513714016.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P10675402162945327292

`∩[A008784(n+1), A070776(n+1)]`
-/

namespace A224450.P10675402162945327292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224450.P10675402162945327292

namespace A224450

/-- `∩[A008784(n+1), A070776(n+1)]` -/
def P10675402162945327292.Spec : Prop :=
  ∀ n, (P10675402162945327292.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P16944274548111714070

`filter[A037942(n+1), A211487(#)]`
-/

namespace A224450.P16944274548111714070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A224450.P16944274548111714070

namespace A224450

/-- `filter[A037942(n+1), A211487(#)]` -/
def P16944274548111714070.Spec : Prop :=
  ∀ n, P16944274548111714070.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P5934929554552930721

`filter[A037942(n+2), A340363(#)]`
-/

namespace A224450.P5934929554552930721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A224450.P5934929554552930721

namespace A224450

/-- `filter[A037942(n+2), A340363(#)]` -/
def P5934929554552930721.Spec : Prop :=
  ∀ n, P5934929554552930721.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P15195821971364580905

`filter[A037942(n+2), A354924(#)]`
-/

namespace A224450.P15195821971364580905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A224450.P15195821971364580905

namespace A224450

/-- `filter[A037942(n+2), A354924(#)]` -/
def P15195821971364580905.Spec : Prop :=
  ∀ n, P15195821971364580905.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P4463509218965650326

`∩[A008784(n+1), A075592(n+1)]`
-/

namespace A224450.P4463509218965650326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224450.P4463509218965650326

namespace A224450

/-- `∩[A008784(n+1), A075592(n+1)]` -/
def P4463509218965650326.Spec : Prop :=
  ∀ n, (P4463509218965650326.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P2102972258203966451

`filter[A400587(n+1), A211487(#)]`
-/

namespace A224450.P2102972258203966451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A224450.P2102972258203966451

namespace A224450

/-- `filter[A400587(n+1), A211487(#)]` -/
def P2102972258203966451.Spec : Prop :=
  ∀ n, P2102972258203966451.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P3914459152128872271

`filter[A400587(n+2), A354924(#)]`
-/

namespace A224450.P3914459152128872271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A224450.P3914459152128872271

namespace A224450

/-- `filter[A400587(n+2), A354924(#)]` -/
def P3914459152128872271.Spec : Prop :=
  ∀ n, P3914459152128872271.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P2097856853968761122

`eq[1, A180783(n+1)%2]+1`
-/

namespace A224450.P2097856853968761122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180783 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224450.P2097856853968761122

namespace A224450

/-- `eq[1, A180783(n+1)%2]+1` -/
def P2097856853968761122.Spec : Prop :=
  ∀ n, (P2097856853968761122.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P4705320631336683874

`eq[n, n*A157228(n+2)]+2`
-/

namespace A224450.P4705320631336683874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157228 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A224450.P4705320631336683874

namespace A224450

/-- `eq[n, n*A157228(n+2)]+2` -/
def P4705320631336683874.Spec : Prop :=
  ∀ n, (P4705320631336683874.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P14576887763226180946

`eq[n, n^A157228(n+1)]+1`
-/

namespace A224450.P14576887763226180946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A157228 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A224450.P14576887763226180946

namespace A224450

/-- `eq[n, n^A157228(n+1)]+1` -/
def P14576887763226180946.Spec : Prop :=
  ∀ n, (P14576887763226180946.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P13742033933554376727

`A254667(eq[2, A295819(n)])`
-/

namespace A224450.P13742033933554376727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224450.P13742033933554376727

namespace A224450

/-- `A254667(eq[2, A295819(n)])` -/
def P13742033933554376727.Spec : Prop :=
  ∀ n, P13742033933554376727.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P12141535662179495641

`eq[A295819(n), A329683(n)]`
-/

namespace A224450.P12141535662179495641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224450.P12141535662179495641

namespace A224450

/-- `eq[A295819(n), A329683(n)]` -/
def P12141535662179495641.Spec : Prop :=
  ∀ n, (P12141535662179495641.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P16488080131702595987

`eq[A295819(n), A387540(n)]`
-/

namespace A224450.P16488080131702595987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224450.P16488080131702595987

namespace A224450

/-- `eq[A295819(n), A387540(n)]` -/
def P16488080131702595987.Spec : Prop :=
  ∀ n, (P16488080131702595987.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P17120498327674600062

`A000007(n)+eq[2, A295819(n)]`
-/

namespace A224450.P17120498327674600062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A224450.P17120498327674600062

namespace A224450

/-- `A000007(n)+eq[2, A295819(n)]` -/
def P17120498327674600062.Spec : Prop :=
  ∀ n, P17120498327674600062.a n = A224450 (n + 1)

end A224450

/-! ## A224450.P4791164027906830237

`eq[1, A192085(a(A295819(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A224450.P4791164027906830237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A192085 (f2 (A295819 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224450.P4791164027906830237

namespace A224450

/-- `eq[1, A192085(a(A295819(n)))]` -/
def P4791164027906830237.Spec : Prop :=
  ∀ n, (P4791164027906830237.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P1402784493970878953

`eq[2, A286350(a(A000089(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A224450.P1402784493970878953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  A286350 (f2 (A000089 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224450.P1402784493970878953

namespace A224450

/-- `eq[2, A286350(a(A000089(n)))]` -/
def P1402784493970878953.Spec : Prop :=
  ∀ n, (P1402784493970878953.a n : ℤ) = A224450 (n + 1)

end A224450

/-! ## A224450.P4592780627222219287

`eq[A000089(n+1), A130130(n)]+1`
-/

namespace A224450.P4592780627222219287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A224450.P4592780627222219287

namespace A224450

/-- `eq[A000089(n+1), A130130(n)]+1` -/
def P4592780627222219287.Spec : Prop :=
  ∀ n, (P4592780627222219287.a n : ℤ) = A224450 (n + 1)

end A224450

/-!
# A224454: The Wiener index of the linear phenylene with n hexagons.

The programs for A224454, the canonical program `A224454.P15166075221710493676` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224454 has offset 1).

The definition of A224454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224454.P1570794639539078844

`ogf((27+72x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A224454.P1570794639539078844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, 72, 9] [1, -4, 6, -4, 1] n

end

end A224454.P1570794639539078844

namespace A224454

/-- `ogf((27+72x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1570794639539078844.Spec : Prop :=
  ∀ n, P1570794639539078844.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P15166075221710493676

`9*(n+1)²*(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224454

/-- `9*(n+1)²*(2*(n+1)+1)` -/
def P15166075221710493676.Spec : Prop :=
  ∀ n, (P15166075221710493676.a n : ℤ) = A224454 (n + 1)

theorem P15166075221710493676.correct : P15166075221710493676.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel]

end A224454

/-! ## A224454.P11386598931895880191

`∑[9*A126587(n+1)]`
-/

namespace A224454.P11386598931895880191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A126587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224454.P11386598931895880191

namespace A224454

/-- `∑[9*A126587(n+1)]` -/
def P11386598931895880191.Spec : Prop :=
  ∀ n, P11386598931895880191.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P1527460881913720726

`Δ[C((n+1)*A016777(n), 2)]-n-1`
-/

namespace A224454.P1527460881913720726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) * A016777 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - 1

end

end A224454.P1527460881913720726

namespace A224454

/-- `Δ[C((n+1)*A016777(n), 2)]-n-1` -/
def P1527460881913720726.Spec : Prop :=
  ∀ n, P1527460881913720726.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P6747025428679314862

`A338588(n)+A158551(n+1)`
-/

namespace A224454.P6747025428679314862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338588 n + A158551 (n + 1)

end

end A224454.P6747025428679314862

namespace A224454

/-- `A338588(n)+A158551(n+1)` -/
def P6747025428679314862.Spec : Prop :=
  ∀ n, P6747025428679314862.a n = A224454 (n + 1)

theorem P6747025428679314862.correct : P6747025428679314862.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P6747025428679314862.a, A224454.P15166075221710493676.a, A158551, A158551.P5984939618370270517.a, A338588, A338588.P16971192733736992687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P9723234462691672215

`A216110(n+1)-A163758(n)`
-/

namespace A224454.P9723234462691672215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216110 (n + 1) - A163758 n

end

end A224454.P9723234462691672215

namespace A224454

/-- `A216110(n+1)-A163758(n)` -/
def P9723234462691672215.Spec : Prop :=
  ∀ n, P9723234462691672215.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P9822298939565726300

`A014105(n+1)+A014105(n+1)*A017257(n)`
-/

namespace A224454.P9822298939565726300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1) + A014105 (n + 1) * A017257 n

end

end A224454.P9822298939565726300

namespace A224454

/-- `A014105(n+1)+A014105(n+1)*A017257(n)` -/
def P9822298939565726300.Spec : Prop :=
  ∀ n, P9822298939565726300.a n = A224454 (n + 1)

theorem P9822298939565726300.correct : P9822298939565726300.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P9822298939565726300.a, A224454.P15166075221710493676.a, A014105, A014105.P182524374866796289.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P1135724701200172730

`3*A190705(n+1)/2`
-/

namespace A224454.P1135724701200172730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A190705 (n + 1) : ℚ) / 2

end

end A224454.P1135724701200172730

namespace A224454

/-- `3*A190705(n+1)/2` -/
def P1135724701200172730.Spec : Prop :=
  ∀ n, P1135724701200172730.a n = (A224454 (n + 1) : ℚ)

theorem P1135724701200172730.correct : P1135724701200172730.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P1135724701200172730.a, A224454.P15166075221710493676.a, A190705, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P10113399372586652426

`A087887(n+1)+A033428(n+1)`
-/

namespace A224454.P10113399372586652426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087887 (n + 1) + A033428 (n + 1)

end

end A224454.P10113399372586652426

namespace A224454

/-- `A087887(n+1)+A033428(n+1)` -/
def P10113399372586652426.Spec : Prop :=
  ∀ n, P10113399372586652426.a n = A224454 (n + 1)

theorem P10113399372586652426.correct : P10113399372586652426.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P10113399372586652426.a, A224454.P15166075221710493676.a, A033428, A033428.P10473664201403486648.a, A087887, A087887.P10011487220671445220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P18267534101994941728

`A028896(n+1)²-A033428(n+1)²`
-/

namespace A224454.P18267534101994941728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1) ^ 2 - A033428 (n + 1) ^ 2

end

end A224454.P18267534101994941728

namespace A224454

/-- `A028896(n+1)²-A033428(n+1)²` -/
def P18267534101994941728.Spec : Prop :=
  ∀ n, P18267534101994941728.a n = A224454 (n + 1)

theorem P18267534101994941728.correct : P18267534101994941728.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P18267534101994941728.a, A224454.P15166075221710493676.a, A028896, A028896.P3776891904721443318.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P1478399229001590455

`A085409(n+1)+A085409(n+1)+A033428(n+1)`
-/

namespace A224454.P1478399229001590455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085409 (n + 1) + (A085409 (n + 1) + A033428 (n + 1))

end

end A224454.P1478399229001590455

namespace A224454

/-- `A085409(n+1)+A085409(n+1)+A033428(n+1)` -/
def P1478399229001590455.Spec : Prop :=
  ∀ n, P1478399229001590455.a n = A224454 (n + 1)

theorem P1478399229001590455.correct : P1478399229001590455.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P1478399229001590455.a, A224454.P15166075221710493676.a, A033428, A033428.P10473664201403486648.a, A085409, A085409.P4278820891763862298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P6252498385157809276

`A089207(n+1)+A190705(n+1)+A099721(n+1)`
-/

namespace A224454.P6252498385157809276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089207 (n + 1) + (A190705 (n + 1) + A099721 (n + 1))

end

end A224454.P6252498385157809276

namespace A224454

/-- `A089207(n+1)+A190705(n+1)+A099721(n+1)` -/
def P6252498385157809276.Spec : Prop :=
  ∀ n, P6252498385157809276.a n = A224454 (n + 1)

theorem P6252498385157809276.correct : P6252498385157809276.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P6252498385157809276.a, A224454.P15166075221710493676.a, A089207, A089207.P17316122751903932538.a, A099721, A099721.P13421266014638133477.a, A190705, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P6871859747759458696

`A087887(n+1)+A085409(n+1)/A016777(n+1)`
-/

namespace A224454.P6871859747759458696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087887 (n + 1) : ℚ) + (A085409 (n + 1) : ℚ) / (A016777 (n + 1) : ℚ)

end

end A224454.P6871859747759458696

namespace A224454

/-- `A087887(n+1)+A085409(n+1)/A016777(n+1)` -/
def P6871859747759458696.Spec : Prop :=
  ∀ n, P6871859747759458696.a n = (A224454 (n + 1) : ℚ)

theorem P6871859747759458696.correct : P6871859747759458696.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P6871859747759458696.a, A224454.P15166075221710493676.a, A016777, A016777.P9931792138852554157.a, A085409, A085409.P4278820891763862298.a, A087887, A087887.P10011487220671445220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P13960431187652976949

`A085789(2*(n+1))+A085789(2*(n+1))/2`
-/

namespace A224454.P13960431187652976949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085789 (2 * (n + 1)) : ℚ) + (A085789 (2 * (n + 1)) : ℚ) / 2

end

end A224454.P13960431187652976949

namespace A224454

/-- `A085789(2*(n+1))+A085789(2*(n+1))/2` -/
def P13960431187652976949.Spec : Prop :=
  ∀ n, P13960431187652976949.a n = (A224454 (n + 1) : ℚ)

end A224454

/-! ## A224454.P17468262189933454916

`A008591(n+1)+A002378(n+1)*A008591(2*n+1)`
-/

namespace A224454.P17468262189933454916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) + A002378 (n + 1) * A008591 (2 * n + 1)

end

end A224454.P17468262189933454916

namespace A224454

/-- `A008591(n+1)+A002378(n+1)*A008591(2*n+1)` -/
def P17468262189933454916.Spec : Prop :=
  ∀ n, P17468262189933454916.a n = A224454 (n + 1)

theorem P17468262189933454916.correct : P17468262189933454916.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P17468262189933454916.a, A224454.P15166075221710493676.a, A002378, A002378.P6342434596694243671.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P8082720233272304017

`A163815(n)+A135713(2*(n+1))`
-/

namespace A224454.P8082720233272304017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A135713 (2 * (n + 1))

end

end A224454.P8082720233272304017

namespace A224454

/-- `A163815(n)+A135713(2*(n+1))` -/
def P8082720233272304017.Spec : Prop :=
  ∀ n, P8082720233272304017.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P2406837492142036849

`A275709(3*(n+1))/3`
-/

namespace A224454.P2406837492142036849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275709 (3 * (n + 1)) : ℚ) / 3

end

end A224454.P2406837492142036849

namespace A224454

/-- `A275709(3*(n+1))/3` -/
def P2406837492142036849.Spec : Prop :=
  ∀ n, P2406837492142036849.a n = (A224454 (n + 1) : ℚ)

theorem P2406837492142036849.correct : P2406837492142036849.Spec := by
  intro n
  simp only [A224454, Nat.add_sub_cancel, A224454.P2406837492142036849.a, A224454.P15166075221710493676.a, A275709, A275709.P9405816799488244254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A224454

/-! ## A224454.P7880656272267700712

`A112524(3*(n+1))-n`
-/

namespace A224454.P7880656272267700712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112524 (3 * (n + 1)) - (n : ℤ)

end

end A224454.P7880656272267700712

namespace A224454

/-- `A112524(3*(n+1))-n` -/
def P7880656272267700712.Spec : Prop :=
  ∀ n, P7880656272267700712.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P6239397733105535489

`∑[A227776(3*n+2)+2]`
-/

namespace A224454.P6239397733105535489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 (3 * n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224454.P6239397733105535489

namespace A224454

/-- `∑[A227776(3*n+2)+2]` -/
def P6239397733105535489.Spec : Prop :=
  ∀ n, P6239397733105535489.a n = A224454 (n + 1)

end A224454

/-! ## A224454.P1991940920095091001

`∑[or(1, A005897(3*n+2))]`
-/

namespace A224454.P1991940920095091001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005897 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224454.P1991940920095091001

namespace A224454

/-- `∑[or(1, A005897(3*n+2))]` -/
def P1991940920095091001.Spec : Prop :=
  ∀ n, P1991940920095091001.a n = A224454 (n + 1)

end A224454

/-!
# A224455: The hyper-Wiener index of the linear phenylene with n hexagons.

The programs for A224455, the canonical program `A224455.P12077512880858041536` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224455 has offset 1).

The definition of A224455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224455.P1763689884371233109

`ogf((42+186x+96x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A224455.P1763689884371233109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [42, 186, 96] [1, -5, 10, -10, 5, -1] n

end

end A224455.P1763689884371233109

namespace A224455

/-- `ogf((42+186x+96x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1763689884371233109.Spec : Prop :=
  ∀ n, P1763689884371233109.a n = A224455 (n + 1)

end A224455

/-! ## A224455.P12077512880858041536

`3/2*(n+1)*(n+2)*(9*(n+1)²+3*(n+1)+2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224455

/-- `3/2*(n+1)*(n+2)*(9*(n+1)²+3*(n+1)+2)` -/
def P12077512880858041536.Spec : Prop :=
  ∀ n, P12077512880858041536.a n = (A224455 (n + 1) : ℚ)

end A224455

/-! ## A224455.P5738137709586631176

`A045943(n+1)+A045943(n+1)*A082040(n+1)`
-/

namespace A224455.P5738137709586631176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + A045943 (n + 1) * A082040 (n + 1)

end

end A224455.P5738137709586631176

namespace A224455

/-- `A045943(n+1)+A045943(n+1)*A082040(n+1)` -/
def P5738137709586631176.Spec : Prop :=
  ∀ n, P5738137709586631176.a n = A224455 (n + 1)

end A224455

/-! ## A224455.P5660676803235564446

`∑[A193218(2*(n+1))+A193218(n+2)]`
-/

namespace A224455.P5660676803235564446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (2 * (n + 1)) + A193218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224455.P5660676803235564446

namespace A224455

/-- `∑[A193218(2*(n+1))+A193218(n+2)]` -/
def P5660676803235564446.Spec : Prop :=
  ∀ n, P5660676803235564446.a n = A224455 (n + 1)

end A224455

/-! ## A224455.P9623806396685963015

`(A100188(3*n+4)+n)/2`
-/

namespace A224455.P9623806396685963015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100188 (3 * n + 4) + (n : ℤ) : ℚ) / 2

end

end A224455.P9623806396685963015

namespace A224455

/-- `(A100188(3*n+4)+n)/2` -/
def P9623806396685963015.Spec : Prop :=
  ∀ n, P9623806396685963015.a n = (A224455 (n + 1) : ℚ)

end A224455

/-! ## A224455.P13988453267851125986

`A104249(A045944(n+1))+2*n+1`
-/

namespace A224455.P13988453267851125986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 (A045944 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A224455.P13988453267851125986

namespace A224455

/-- `A104249(A045944(n+1))+2*n+1` -/
def P13988453267851125986.Spec : Prop :=
  ∀ n, P13988453267851125986.a n = A224455 (n + 1)

end A224455

/-!
# A224456: The Wiener index of the cyclic phenylene with n hexagons (n>=3).

The programs for A224456, the canonical program `A224456.P16413591846427829289` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224456 has offset 3).

The definition of A224456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224456.P16413591846427829289

`9*(n+3)*((n+3)²+4*(n+3)-4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224456

/-- `9*(n+3)*((n+3)²+4*(n+3)-4)` -/
def P16413591846427829289.Spec : Prop :=
  ∀ n, P16413591846427829289.a n = A224456 (n + 3)

theorem P16413591846427829289.correct : P16413591846427829289.Spec := by
  intro n
  simp only [A224456, Nat.add_sub_cancel]

end A224456

/-! ## A224456.P17247049398570233024

`6*n+3+A003215(n+2)*A008486(n+8)`
-/

namespace A224456.P17247049398570233024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) + A003215 (n + 2) * A008486 (n + 8)

end

end A224456.P17247049398570233024

namespace A224456

/-- `6*n+3+A003215(n+2)*A008486(n+8)` -/
def P17247049398570233024.Spec : Prop :=
  ∀ n, P17247049398570233024.a n = A224456 (n + 3)

end A224456

/-!
# A224457: The hyper-Wiener index of the cyclic phenylene with n hexagons (n>=3).

The programs for A224457, the canonical program `A224457.P5375130291819219308` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224457 has offset 3).

The definition of A224457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224457.P5375130291819219308

`3/2*(n+3)*(2*(n+3)^3+15*(n+3)²+45*(n+3)-88)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224457

/-- `3/2*(n+3)*(2*(n+3)^3+15*(n+3)²+45*(n+3)-88)` -/
def P5375130291819219308.Spec : Prop :=
  ∀ n, P5375130291819219308.a n = (A224457 (n + 3) : ℚ)

end A224457

/-!
# A224458: The Gordon-Scantlebury index of the rooted tree with Matula-Goebel number n.

The programs for A224458, there is no canonical definition to state claims against.
-/

/-! ## A224458.P10908498826573931814

`A198332(n+1)/2`
-/

namespace A224458.P10908498826573931814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198332 (n + 1) : ℚ) / 2

end

end A224458.P10908498826573931814

/-! ## A224458.P2300207682449920117

`A001281(A198332(n+1))`
-/

namespace A224458.P2300207682449920117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A198332 (n + 1)).toNat

end

end A224458.P2300207682449920117

/-! ## A224458.P5762536524324208731

`A004524(A198332(n+1)+1)`
-/

namespace A224458.P5762536524324208731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A198332 (n + 1) + 1).toNat

end

end A224458.P5762536524324208731

/-! ## A224458.P3065668825338546397

`A004526(A198332(n+1)+1)`
-/

namespace A224458.P3065668825338546397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198332 (n + 1) + 1).toNat

end

end A224458.P3065668825338546397

/-! ## A224458.P14575028520850072242

`A028242(A198332(n+1)+1)`
-/

namespace A224458.P14575028520850072242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A198332 (n + 1) + 1).toNat

end

end A224458.P14575028520850072242

/-! ## A224458.P17615310279521861449

`A110654(lcm(2, A198332(n+1)))`
-/

namespace A224458.P17615310279521861449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm 2 (A198332 (n + 1)))

end

end A224458.P17615310279521861449

/-! ## A224458.P3652611925016824477

`A008619(A198332(n+1)+1)-1`
-/

namespace A224458.P3652611925016824477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A198332 (n + 1) + 1).toNat - 1

end

end A224458.P3652611925016824477

/-! ## A224458.P7916396133733499001

`A110654(A198332(n+1)+1)-1`
-/

namespace A224458.P7916396133733499001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A198332 (n + 1) + 1).toNat - 1

end

end A224458.P7916396133733499001

/-! ## A224458.P6704810536528166475

`A026741(A198332(n+1)+2)-1`
-/

namespace A224458.P6704810536528166475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A198332 (n + 1) + 2).toNat - 1

end

end A224458.P6704810536528166475

/-! ## A224458.P14204537519860070326

`A080513(A198332(n+1)+1)-2`
-/

namespace A224458.P14204537519860070326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A198332 (n + 1) + 1).toNat - 2

end

end A224458.P14204537519860070326

/-! ## A224458.P15629068462071183563

`A052938(A198332(n+1)+2)-2`
-/

namespace A224458.P15629068462071183563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A198332 (n + 1) + 2).toNat - 2

end

end A224458.P15629068462071183563

/-! ## A224458.P6442584074703230300

`A196053(n+1)/2-A196050(n+1)`
-/

namespace A224458.P6442584074703230300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196053 (n + 1) : ℚ) / 2 - (A196050 (n + 1) : ℚ)

end

end A224458.P6442584074703230300

/-! ## A224458.P7073443421114727130

`A196057(n+1)+A196050(A003963(n+1))`
-/

namespace A224458.P7073443421114727130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196057 (n + 1) + A196050 (A003963 (n + 1)).toNat

end

end A224458.P7073443421114727130

/-!
# A224459: The Wiener index of the straight pentachain of n pentagonal rings (see Fig. 2.1 in the A. A. Ali et al. reference).

The programs for A224459, the canonical program `A224459.P1696704868144368826` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224459 has offset 2).

The definition of A224459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224459.P1696704868144368826

`(3*(n+2)^3+21*(n+2)²-6*(n+2)+14)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224459

/-- `(3*(n+2)^3+21*(n+2)²-6*(n+2)+14)/2` -/
def P1696704868144368826.Spec : Prop :=
  ∀ n, P1696704868144368826.a n = (A224459 (n + 2) : ℚ)

end A224459

/-! ## A224459.P6194376106361247104

`A085789(n+3)+A081271(n)`
-/

namespace A224459.P6194376106361247104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 3) + A081271 n

end

end A224459.P6194376106361247104

namespace A224459

/-- `A085789(n+3)+A081271(n)` -/
def P6194376106361247104.Spec : Prop :=
  ∀ n, P6194376106361247104.a n = A224459 (n + 2)

end A224459

/-! ## A224459.P9004199398420208668

`A003215(n)+3*(n+2)*A000096(n+3)`
-/

namespace A224459.P9004199398420208668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + (3 * (n + 2) : ℤ) * A000096 (n + 3)

end

end A224459.P9004199398420208668

namespace A224459

/-- `A003215(n)+3*(n+2)*A000096(n+3)` -/
def P9004199398420208668.Spec : Prop :=
  ∀ n, P9004199398420208668.a n = A224459 (n + 2)

end A224459

/-! ## A224459.P1162813518018618761

`A062025(n+3)-A005900(n)`
-/

namespace A224459.P1162813518018618761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 (n + 3) - A005900 n

end

end A224459.P1162813518018618761

namespace A224459

/-- `A062025(n+3)-A005900(n)` -/
def P1162813518018618761.Spec : Prop :=
  ∀ n, P1162813518018618761.a n = A224459 (n + 2)

end A224459

/-! ## A224459.P15144134899730306943

`Δ[A264888(n+2)]-A005900(n)`
-/

namespace A224459.P15144134899730306943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005900 n

end

end A224459.P15144134899730306943

namespace A224459

/-- `Δ[A264888(n+2)]-A005900(n)` -/
def P15144134899730306943.Spec : Prop :=
  ∀ n, P15144134899730306943.a n = A224459 (n + 2)

end A224459

/-!
# A224460: The hyper-Wiener index of the straight pentachain of n pentagonal rings (see Fig. 2.1 in the A. A. Ali et al. reference).

The programs for A224460, the canonical program `A224460.P9432691080717282567` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224460 has offset 2).

The definition of A224460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224460.P9432691080717282567

`(n+2)*((n+2)*((n+2)*(3*(n+2)+34)+145)-190)/8+26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224460

/-- `(n+2)*((n+2)*((n+2)*(3*(n+2)+34)+145)-190)/8+26` -/
def P9432691080717282567.Spec : Prop :=
  ∀ n, P9432691080717282567.a n = (A224460 (n + 2) : ℚ)

end A224460

/-!
# A224467: Numbers n such that 27*n+1 is prime.

The programs for A224467, the canonical program `A224467.P13325224831687872706` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224467 has offset 1).

The definition of A224467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224467.P13325224831687872706

`floor(p?[a(n-1)+27]/27)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224467

/-- `floor(p?[a(n-1)+27]/27)` -/
def P13325224831687872706.Spec : Prop :=
  ∀ n, P13325224831687872706.a n = A224467 (n + 1)

theorem P13325224831687872706.correct : P13325224831687872706.Spec := by
  intro n
  simp only [A224467, Nat.add_sub_cancel]

end A224467

/-! ## A224467.P6450290517440115127

`comp[A228373(n+1)]`
-/

namespace A224467.P6450290517440115127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224467.P6450290517440115127

namespace A224467

/-- `comp[A228373(n+1)]` -/
def P6450290517440115127.Spec : Prop :=
  ∀ n, (P6450290517440115127.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P5820680605660982411

`eq[2, ∏{e}[27*n+1, #+1]]`
-/

namespace A224467.P5820680605660982411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224467.P5820680605660982411

namespace A224467

/-- `eq[2, ∏{e}[27*n+1, #+1]]` -/
def P5820680605660982411.Spec : Prop :=
  ∀ n, (P5820680605660982411.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P16362857092896611619

`eq[1, A001222(27*n+1)]`
-/

namespace A224467.P16362857092896611619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224467.P16362857092896611619

namespace A224467

/-- `eq[1, A001222(27*n+1)]` -/
def P16362857092896611619.Spec : Prop :=
  ∀ n, (P16362857092896611619.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P7564501884379845073

`eq[1, A010051(27*n+1)]`
-/

namespace A224467.P7564501884379845073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224467.P7564501884379845073

namespace A224467

/-- `eq[1, A010051(27*n+1)]` -/
def P7564501884379845073.Spec : Prop :=
  ∀ n, (P7564501884379845073.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P13737937878995864005

`eq[2, A000005(27*n+1)]`
-/

namespace A224467.P13737937878995864005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224467.P13737937878995864005

namespace A224467

/-- `eq[2, A000005(27*n+1)]` -/
def P13737937878995864005.Spec : Prop :=
  ∀ n, (P13737937878995864005.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P4711049857300224244

`lt[n*A001222(27*n+1), A003817(n)]`
-/

namespace A224467.P4711049857300224244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (27 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224467.P4711049857300224244

namespace A224467

/-- `lt[n*A001222(27*n+1), A003817(n)]` -/
def P4711049857300224244.Spec : Prop :=
  ∀ n, (P4711049857300224244.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P3216456619697776125

`lt[A056081(n+1), A006530(A056081(2*n+1))]`
-/

namespace A224467.P3216456619697776125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056081 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224467.P3216456619697776125

namespace A224467

/-- `lt[A056081(n+1), A006530(A056081(2*n+1))]` -/
def P3216456619697776125.Spec : Prop :=
  ∀ n, (P3216456619697776125.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P4307108631808078264

`eq[1, A156706(A008486(A008486(n)))]`
-/

namespace A224467.P4307108631808078264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A008486 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224467.P4307108631808078264

namespace A224467

/-- `eq[1, A156706(A008486(A008486(n)))]` -/
def P4307108631808078264.Spec : Prop :=
  ∀ n, (P4307108631808078264.a n : ℤ) = A224467 (n + 1)

end A224467

/-! ## A224467.P6432482652142505638

`eq[1, A342001(27*n+1)]`
-/

namespace A224467.P6432482652142505638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224467.P6432482652142505638

namespace A224467

/-- `eq[1, A342001(27*n+1)]` -/
def P6432482652142505638.Spec : Prop :=
  ∀ n, (P6432482652142505638.a n : ℤ) = A224467 (n + 1)

end A224467

/-!
# A224471: Numbers k such that 8^k - k is prime.

The programs for A224471, there is no canonical definition to state claims against.
-/

/-! ## A224471.P14814345857343416538

`eq[A013603(A008486(n)), A028310(n)]`
-/

namespace A224471.P14814345857343416538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224471.P14814345857343416538

/-!
# A224473: a(n) = (2*5^(2^n) - 1) mod 10^n: a sequence of trimorphic numbers ending in 9.

The programs for A224473, there is no canonical definition to state claims against.
-/

/-! ## A224473.P14971571297015459046

`(2*A007185(n+1)-1)%(10^(n+1))`
-/

namespace A224473.P14971571297015459046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A007185 (n + 1) - 1) (10 ^ (n + 1) : ℤ)

end

end A224473.P14971571297015459046

/-! ## A224473.P6722793134134778314

`∑[A011557(n)*A091661(n)]`
-/

namespace A224473.P6722793134134778314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A091661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224473.P6722793134134778314

/-! ## A224473.P9978330092061783455

`10^(n+1)-A224474(n+1)`
-/

namespace A224473.P9978330092061783455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A224474 (n + 1)

end

end A224473.P9978330092061783455

/-! ## A224473.P10534245016650248791

`A198971(n)+A199685(n)-A224474(n+1)`
-/

namespace A224473.P10534245016650248791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A224474 (n + 1))

end

end A224473.P10534245016650248791

/-! ## A224473.P15817262560775091068

`A007185(n+1)+A198971(n)-A224478(n+1)`
-/

namespace A224473.P15817262560775091068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A198971 n - A224478 (n + 1))

end

end A224473.P15817262560775091068

/-! ## A224473.P6414420980161802128

`A007185(n+1)+A216093(n+1)-A224474(n+1)`
-/

namespace A224473.P6414420980161802128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A216093 (n + 1) - A224474 (n + 1))

end

end A224473.P6414420980161802128

/-! ## A224473.P6891525998429348789

`A224475(n+1)+A224476(n+1)-A224474(n+1)`
-/

namespace A224473.P6891525998429348789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224475 (n + 1) + (A224476 (n + 1) - A224474 (n + 1))

end

end A224473.P6891525998429348789

/-!
# A224474: (2*16^(5^n) - 1) mod 10^n: a sequence of trimorphic numbers ending in 1.

The programs for A224474, there is no canonical definition to state claims against.
-/

/-! ## A224474.P4696044088821755796

`(2*A016090(n+1)-1)%(10^(n+1))`
-/

namespace A224474.P4696044088821755796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A016090 (n + 1) - 1) (10 ^ (n + 1) : ℤ)

end

end A224474.P4696044088821755796

/-! ## A224474.P3656037528270305288

`∑[A011557(n)*A063006(n)]`
-/

namespace A224474.P3656037528270305288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A063006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224474.P3656037528270305288

/-! ## A224474.P17349166482405177027

`∑[(A002283(n)+1)*A063006(n)]`
-/

namespace A224474.P17349166482405177027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002283 n + 1) * A063006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224474.P17349166482405177027

/-! ## A224474.P18371054959005624344

`A011557(n+1)-A224473(n+1)`
-/

namespace A224474.P18371054959005624344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A224473 (n + 1)

end

end A224474.P18371054959005624344

/-! ## A224474.P10338576440906863167

`A198971(n)+A199685(n)-A224473(n+1)`
-/

namespace A224474.P10338576440906863167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A224473 (n + 1))

end

end A224474.P10338576440906863167

/-! ## A224474.P13117970605599626024

`A224478(n+1)+A199685(n)-A007185(n+1)`
-/

namespace A224474.P13117970605599626024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224478 (n + 1) + (A199685 n - A007185 (n + 1))

end

end A224474.P13117970605599626024

/-! ## A224474.P7968197242825215137

`A216093(n+1)+A224478(n+1)-A198971(n)`
-/

namespace A224474.P7968197242825215137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216093 (n + 1) + (A224478 (n + 1) - A198971 n)

end

end A224474.P7968197242825215137

/-! ## A224474.P12662521558091634141

`A007185(n+1)+A216093(n+1)-A224473(n+1)`
-/

namespace A224474.P12662521558091634141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A216093 (n + 1) - A224473 (n + 1))

end

end A224474.P12662521558091634141

/-! ## A224474.P8869515748460210775

`A224475(n+1)+A224476(n+1)-A224473(n+1)`
-/

namespace A224474.P8869515748460210775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224475 (n + 1) + (A224476 (n + 1) - A224473 (n + 1))

end

end A224474.P8869515748460210775

/-!
# A224475: (2*5^(2^n) + (10^n)/2 - 1) mod 10^n: a sequence of trimorphic numbers ending (for n > 1) in 9.

The programs for A224475, there is no canonical definition to state claims against.
-/

/-! ## A224475.P15645404672178153281

`(A224473(n+1)+10^(n+1)/2)%(10^(n+1))`
-/

namespace A224475.P15645404672178153281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A224473 (n + 1) : ℚ) + (10 ^ (n + 1) : ℚ) / 2)) (10 ^ (n + 1) : ℤ)

end

end A224475.P15645404672178153281

/-! ## A224475.P7414296393470379621

`A011557(n+1)-A224476(n+1)`
-/

namespace A224475.P7414296393470379621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A224476 (n + 1)

end

end A224475.P7414296393470379621

/-! ## A224475.P4944152648383197073

`A198971(n)+A199685(n)-A224476(n+1)`
-/

namespace A224475.P4944152648383197073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A224476 (n + 1))

end

end A224475.P4944152648383197073

/-! ## A224475.P2431889364386958555

`A007185(n+1)+A216093(n+1)-A224476(n+1)`
-/

namespace A224475.P2431889364386958555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A216093 (n + 1) - A224476 (n + 1))

end

end A224475.P2431889364386958555

/-! ## A224475.P8075824280025693004

`A016090(n+1)+A216092(n+1)-A224476(n+1)`
-/

namespace A224475.P8075824280025693004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016090 (n + 1) + (A216092 (n + 1) - A224476 (n + 1))

end

end A224475.P8075824280025693004

/-! ## A224475.P15993669012700730600

`A224473(n+1)+A224474(n+1)-A224476(n+1)`
-/

namespace A224475.P15993669012700730600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224473 (n + 1) + (A224474 (n + 1) - A224476 (n + 1))

end

end A224475.P15993669012700730600

/-!
# A224476: (2*16^(5^n) + (10^n)/2 - 1) mod 10^n: a sequence of trimorphic numbers ending (for n > 1) in 1.

The programs for A224476, there is no canonical definition to state claims against.
-/

/-! ## A224476.P3922538631508012662

`(A224474(n+1)+10^(n+1)/2)%(10^(n+1))`
-/

namespace A224476.P3922538631508012662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A224474 (n + 1) : ℚ) + (10 ^ (n + 1) : ℚ) / 2)) (10 ^ (n + 1) : ℤ)

end

end A224476.P3922538631508012662

/-! ## A224476.P13469150609166637901

`10^(n+1)-A224475(n+1)`
-/

namespace A224476.P13469150609166637901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A224475 (n + 1)

end

end A224476.P13469150609166637901

/-! ## A224476.P12733913975129530313

`abs(A011557(n+1)-A224475(n+1))`
-/

namespace A224476.P12733913975129530313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 (n + 1) - A224475 (n + 1)|

end

end A224476.P12733913975129530313

/-! ## A224476.P13205878610419882062

`A198971(n)+A199685(n)-A224475(n+1)`
-/

namespace A224476.P13205878610419882062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A224475 (n + 1))

end

end A224476.P13205878610419882062

/-! ## A224476.P4090262202240296446

`A052268(n+1)+A011557(n)-A224475(n+1)`
-/

namespace A224476.P4090262202240296446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) + (A011557 n - A224475 (n + 1))

end

end A224476.P4090262202240296446

/-! ## A224476.P1153291193515546986

`A007185(n+1)+A216093(n+1)-A224475(n+1)`
-/

namespace A224476.P1153291193515546986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A216093 (n + 1) - A224475 (n + 1))

end

end A224476.P1153291193515546986

/-! ## A224476.P3729592618034348374

`A224473(n+1)+A224474(n+1)-A224475(n+1)`
-/

namespace A224476.P3729592618034348374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224473 (n + 1) + (A224474 (n + 1) - A224475 (n + 1))

end

end A224476.P3729592618034348374

/-!
# A224477: (5^(2^n) + (10^n)/2) mod 10^n: a sequence of trimorphic numbers ending (for n > 1) in 5.

The programs for A224477, there is no canonical definition to state claims against.
-/

/-! ## A224477.P5951777466564344911

`(A007185(n+1)+10^(n+1)/2)%(10^(n+1))`
-/

namespace A224477.P5951777466564344911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007185 (n + 1) : ℚ) + (10 ^ (n + 1) : ℚ) / 2)) (10 ^ (n + 1) : ℤ)

end

end A224477.P5951777466564344911

/-!
# A224478: (16^(5^n) + (10^n)/2 - 1) mod 10^n: a sequence of trimorphic numbers ending (for n > 1) in 5.

The programs for A224478, there is no canonical definition to state claims against.
-/

/-! ## A224478.P6523779489573749657

`(A016090(n+1)+10^(n+1)/2-1)%(10^(n+1))`
-/

namespace A224478.P6523779489573749657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A016090 (n + 1) : ℚ) + (10 ^ (n + 1) : ℚ) / 2 - 1)) (10 ^ (n + 1) : ℤ)

end

end A224478.P6523779489573749657

/-! ## A224478.P2685053865405594141

`A007185(n+1)+A198971(n)-A224473(n+1)`
-/

namespace A224478.P2685053865405594141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A198971 n - A224473 (n + 1))

end

end A224478.P2685053865405594141

/-! ## A224478.P7224339789639939265

`A007185(n+1)+A224474(n+1)-A199685(n)`
-/

namespace A224478.P7224339789639939265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) + (A224474 (n + 1) - A199685 n)

end

end A224478.P7224339789639939265

/-! ## A224478.P9465995269550343920

`A224474(n+1)+A198971(n)-A216093(n+1)`
-/

namespace A224478.P9465995269550343920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224474 (n + 1) + (A198971 n - A216093 (n + 1))

end

end A224478.P9465995269550343920

/-!
# A224479: a(n) = Product_{k=1..n} Product_{i=1..k-1} gcd(k,i).

The programs for A224479, the canonical program `A224479.P1414813410862480078` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224479 has offset 0).

The definition of A224479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092287, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224479.P1414813410862480078

`sqrt(A092287(n)/n!)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A224479

/-- `sqrt(A092287(n)/n!)` -/
def P1414813410862480078.Spec : Prop :=
  ∀ n, P1414813410862480078.a n = (A224479 n : ℝ)

end A224479

/-! ## A224479.P2078147539264676444

`a(n-1)*A051190(n)` with `a(0)=1`
-/

namespace A224479.P2078147539264676444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051190 n

end

end A224479.P2078147539264676444

namespace A224479

/-- `a(n-1)*A051190(n)` -/
def P2078147539264676444.Spec : Prop :=
  ∀ n, P2078147539264676444.a n = A224479 n

end A224479

/-! ## A224479.P14821716478969490932

`∏[A051190(A028310(n))]`
-/

namespace A224479.P14821716478969490932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051190 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224479.P14821716478969490932

namespace A224479

/-- `∏[A051190(A028310(n))]` -/
def P14821716478969490932.Spec : Prop :=
  ∀ n, P14821716478969490932.a n = A224479 n

end A224479

/-! ## A224479.P4660401970733767604

`∏[A051190(A000007(n)+n)]`
-/

namespace A224479.P4660401970733767604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051190 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224479.P4660401970733767604

namespace A224479

/-- `∏[A051190(A000007(n)+n)]` -/
def P4660401970733767604.Spec : Prop :=
  ∀ n, P4660401970733767604.a n = A224479 n

end A224479

/-! ## A224479.P3534623817976319589

`∏[A051190(or(n, A000007(n)))]`
-/

namespace A224479.P3534623817976319589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051190 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224479.P3534623817976319589

namespace A224479

/-- `∏[A051190(or(n, A000007(n)))]` -/
def P3534623817976319589.Spec : Prop :=
  ∀ n, P3534623817976319589.a n = A224479 n

end A224479

/-!
# A224482: Numbers n for which the Lucas numbers modulo n is nondefective (residue complete).

The programs for A224482, the canonical program `A224482.P8977706204425104098` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224482 has offset 1).

The definition of A224482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224482.P8977706204425104098

`ogf((2-3x-5x^2-6x^3-11x^4-12x^5-13x^6-15x^7)/(1-3x))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224482

/-- `ogf((2-3x-5x^2-6x^3-11x^4-12x^5-13x^6-15x^7)/(1-3x))` -/
def P8977706204425104098.Spec : Prop :=
  ∀ n, P8977706204425104098.a n = A224482 (n + 1)

theorem P8977706204425104098.correct : P8977706204425104098.Spec := by
  intro n
  simp only [A224482, Nat.add_sub_cancel]

end A224482

/-! ## A224482.P15717679440419386813

`∩[A079002(n+2), A219174(n+2)]`
-/

namespace A224482.P15717679440419386813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224482.P15717679440419386813

namespace A224482

/-- `∩[A079002(n+2), A219174(n+2)]` -/
def P15717679440419386813.Spec : Prop :=
  ∀ n, (P15717679440419386813.a n : ℤ) = A224482 (n + 1)

end A224482

/-! ## A224482.P12836170044962611880

`filter[A079002(n+2), A011558(#)]`
-/

namespace A224482.P12836170044962611880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A224482.P12836170044962611880

namespace A224482

/-- `filter[A079002(n+2), A011558(#)]` -/
def P12836170044962611880.Spec : Prop :=
  ∀ n, P12836170044962611880.a n = A224482 (n + 1)

end A224482

/-! ## A224482.P12285920497342171840

`filter[A079002(n+2), A364252(#)]`
-/

namespace A224482.P12285920497342171840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A224482.P12285920497342171840

namespace A224482

/-- `filter[A079002(n+2), A364252(#)]` -/
def P12285920497342171840.Spec : Prop :=
  ∀ n, P12285920497342171840.a n = A224482 (n + 1)

end A224482

/-! ## A224482.P15543740921912079753

`∩[A079002(n+2), A113508(n+2)]`
-/

namespace A224482.P15543740921912079753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113508 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224482.P15543740921912079753

namespace A224482

/-- `∩[A079002(n+2), A113508(n+2)]` -/
def P15543740921912079753.Spec : Prop :=
  ∀ n, (P15543740921912079753.a n : ℤ) = A224482 (n + 1)

end A224482

/-!
# A224483: Numbers which are the sum of two positive cubes and divisible by 29.

The programs for A224483, there is no canonical definition to state claims against.
-/

/-! ## A224483.P697207768888122197

`∩[30*n-n, A003325(n+1)]`
-/

namespace A224483.P697207768888122197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * n : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224483.P697207768888122197

/-! ## A224483.P5026319198471785548

`filter[A195819(2*n+1), A373971(#)]`
-/

namespace A224483.P5026319198471785548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195819 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373971 (f1 j).toNat = 1) n)

end

end A224483.P5026319198471785548

/-!
# A224484: Numbers which are the sum of two positive cubes and divisible by 3.

The programs for A224484, there is no canonical definition to state claims against.
-/

/-! ## A224484.P10574454864546879806

`∩[9*A222305(n+1), A003325(n+1)]`
-/

namespace A224484.P10574454864546879806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224484.P10574454864546879806

/-! ## A224484.P2416402891635960091

`∩[9*n, A003325(n+2)]`
-/

namespace A224484.P2416402891635960091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224484.P2416402891635960091

/-! ## A224484.P981007414268390202

`∩[A003325(n+1), 3*n]`
-/

namespace A224484.P981007414268390202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A224484.P981007414268390202

/-! ## A224484.P15140115827146918481

`filter[A003325(n+1), A079978(#)]`
-/

namespace A224484.P15140115827146918481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A224484.P15140115827146918481

/-!
# A224485: Numbers which are the sum of two positive cubes and divisible by 5.

The programs for A224485, there is no canonical definition to state claims against.
-/

/-! ## A224485.P5017115364441105329

`∩[5*n, A003325(n+2)]`
-/

namespace A224485.P5017115364441105329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P5017115364441105329

/-! ## A224485.P8857862575063532785

`∩[A003325(n+1), A008587(n)]`
-/

namespace A224485.P8857862575063532785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P8857862575063532785

/-! ## A224485.P1089048177411425812

`∩[A003325(n+1), A008706(n)]`
-/

namespace A224485.P1089048177411425812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P1089048177411425812

/-! ## A224485.P14756963784173152294

`∩[A003325(n+1), A168101(n)]`
-/

namespace A224485.P14756963784173152294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P14756963784173152294

/-! ## A224485.P13207649805005976258

`∩[A338667(n+1), A008587(n)]`
-/

namespace A224485.P13207649805005976258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P13207649805005976258

/-! ## A224485.P3519641122172340849

`∩[A338667(n+1), A008706(n)]`
-/

namespace A224485.P3519641122172340849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P3519641122172340849

/-! ## A224485.P7401822363313628756

`∩[A338667(n+1), A168101(n)]`
-/

namespace A224485.P7401822363313628756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P7401822363313628756

/-! ## A224485.P10690800627585517086

`∩[A003325(n+1), A167179(n+1)]`
-/

namespace A224485.P10690800627585517086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P10690800627585517086

/-! ## A224485.P9343395065104836536

`∩[A003325(n+1), A357778(n+1)]`
-/

namespace A224485.P9343395065104836536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P9343395065104836536

/-! ## A224485.P10933896077546012662

`∩[A167179(n+1), A338667(n+1)]`
-/

namespace A224485.P10933896077546012662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224485.P10933896077546012662

/-!
# A224486: Numbers k such that 2*k+1 divides 2^k+1.

The programs for A224486, there is no canonical definition to state claims against.
-/

/-! ## A224486.P8712003629189782478

`floor(A175865(1+n)/2)`
-/

namespace A224486.P8712003629189782478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175865 (1 + n) : ℚ) / 2⌋

end

end A224486.P8712003629189782478

/-! ## A224486.P5687785755466176281

`(A175865(n+1)-1)/2`
-/

namespace A224486.P5687785755466176281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175865 (n + 1) - 1 : ℚ) / 2

end

end A224486.P5687785755466176281

/-! ## A224486.P10285013609812609750

`A038572(A175865(n+1)-1)`
-/

namespace A224486.P10285013609812609750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A175865 (n + 1) - 1).toNat

end

end A224486.P10285013609812609750

/-! ## A224486.P3440378268141490410

`eq[A047444(n+1), A137576(n)]`
-/

namespace A224486.P3440378268141490410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P3440378268141490410

/-! ## A224486.P14888267560051226584

`eq[A047447(n+1), A137576(n)]`
-/

namespace A224486.P14888267560051226584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P14888267560051226584

/-! ## A224486.P14211973353408944905

`A174239(A175865(n+1))`
-/

namespace A224486.P14211973353408944905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A175865 (n + 1)).toNat

end

end A224486.P14211973353408944905

/-! ## A224486.P14170203045543801122

`A004525(A175865(n+1)-1)`
-/

namespace A224486.P14170203045543801122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A175865 (n + 1) - 1).toNat

end

end A224486.P14170203045543801122

/-! ## A224486.P8798489564042566515

`A026741(A175865(n+1)-1)`
-/

namespace A224486.P8798489564042566515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A175865 (n + 1) - 1).toNat

end

end A224486.P8798489564042566515

/-! ## A224486.P14455564547733975489

`A029578(A175865(n+1)-1)`
-/

namespace A224486.P14455564547733975489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A175865 (n + 1) - 1).toNat

end

end A224486.P14455564547733975489

/-! ## A224486.P17814932207620151535

`A064680(A175865(n+1)-1)`
-/

namespace A224486.P17814932207620151535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A175865 (n + 1) - 1).toNat

end

end A224486.P17814932207620151535

/-! ## A224486.P1180301363022636252

`A289441(A175865(n+1)-1)`
-/

namespace A224486.P1180301363022636252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A175865 (n + 1) - 1).toNat

end

end A224486.P1180301363022636252

/-! ## A224486.P5001791934820538989

`A008619(A175865(n+1)-2)`
-/

namespace A224486.P5001791934820538989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A175865 (n + 1) - 2).toNat

end

end A224486.P5001791934820538989

/-! ## A224486.P1791119862669170363

`eq[A008424(2*n+1)+A007920(2*n+1), A008424(n+1)]`
-/

namespace A224486.P1791119862669170363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (2 * n + 1) + A007920 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P1791119862669170363

/-! ## A224486.P1368248050370770663

`eq[A008424(2*n+1)+A008424(n+1), A051699(2*n+1)]`
-/

namespace A224486.P1368248050370770663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (2 * n + 1) + A008424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P1368248050370770663

/-! ## A224486.P17155328403095156482

`eq[A037288(n), A119332(n+1)]`
-/

namespace A224486.P17155328403095156482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P17155328403095156482

/-! ## A224486.P12135733057200279595

`eq[A004025(n+2), A037288(n)]`
-/

namespace A224486.P12135733057200279595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004025 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224486.P12135733057200279595

/-! ## A224486.P10021935732930799922

`eq[1, A107279(2*n+1)+A003785(n+4)]`
-/

namespace A224486.P10021935732930799922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n + 1) + A003785 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224486.P10021935732930799922

/-!
# A224487: Least integer b > F(n) such that sum_{k=1}^n F(k)*b^{k-1} is prime, where F = A000045.

The programs for A224487, there is no canonical definition to state claims against.
-/

/-! ## A224487.P9516104327229257629

`A184416(A001222(n+1)+A000704(n))`
-/

namespace A224487.P9516104327229257629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (A001222 (n + 1) + A000704 n).toNat

end

end A224487.P9516104327229257629

/-! ## A224487.P5177002924481609197

`A270969(2*n)+A025453(A092266(n+2))`
-/

namespace A224487.P5177002924481609197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270969 (2 * n) + A025453 (A092266 (n + 2)).toNat

end

end A224487.P5177002924481609197

/-! ## A224487.P16065326760919428800

`A307405(A135473(n+1)+A103391(n+5))`
-/

namespace A224487.P16065326760919428800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307405 (A135473 (n + 1) + A103391 (n + 5)).toNat

end

end A224487.P16065326760919428800

/-!
# A224489: Smallest k such that k*2*p(n)^2-1 is prime.

The programs for A224489, there is no canonical definition to state claims against.
-/

/-! ## A224489.P14289186167245949096

`A103961(p?[xor(1, n)]²)`
-/

namespace A224489.P14289186167245949096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A224489.P14289186167245949096

/-! ## A224489.P15475438889974185758

`A103961(p?[comp[n²]]²)`
-/

namespace A224489.P15475438889974185758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A224489.P15475438889974185758

/-! ## A224489.P9993528738501319707

`A103961(A001248(n+1))`
-/

namespace A224489.P9993528738501319707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A001248 (n + 1)).toNat

end

end A224489.P9993528738501319707

/-! ## A224489.P1025690676380889798

`A103961(A112052(n+1))`
-/

namespace A224489.P1025690676380889798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A112052 (n + 1)).toNat

end

end A224489.P1025690676380889798

/-! ## A224489.P4383888257564139803

`A103961(A359757(n+1))`
-/

namespace A224489.P4383888257564139803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A359757 (n + 1)).toNat

end

end A224489.P4383888257564139803

/-!
# A224493: Smallest k such that k*2*p(n)^2+1 is prime.

The programs for A224493, there is no canonical definition to state claims against.
-/

/-! ## A224493.P5491211727121445579

`A035092(p?[A195140(n)])/2`
-/

namespace A224493.P5491211727121445579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A224493.P5491211727121445579

/-! ## A224493.P11478705977863273722

`A001281(A035092(record[A128059(n)]))`
-/

namespace A224493.P11478705977863273722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A035092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A224493.P11478705977863273722

/-! ## A224493.P11921606639843662601

`A014682(A035092(p?[A195140(n)]))`
-/

namespace A224493.P11921606639843662601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P11921606639843662601

/-! ## A224493.P11128646394822484095

`A014682(A035092(A000040(n+1)))`
-/

namespace A224493.P11128646394822484095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (A000040 (n + 1)).toNat).toNat

end

end A224493.P11128646394822484095

/-! ## A224493.P11104462998181477951

`A001281(A035092(A008578(n+2)))`
-/

namespace A224493.P11104462998181477951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A035092 (A008578 (n + 2)).toNat).toNat

end

end A224493.P11104462998181477951

/-! ## A224493.P4535709687819148526

`A014682(A035092(p?[A007412(n+1)]))`
-/

namespace A224493.P4535709687819148526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P4535709687819148526

/-! ## A224493.P7820483002838614123

`A014682(A035092(p?[A042968(n+1)]))`
-/

namespace A224493.P7820483002838614123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P7820483002838614123

/-! ## A224493.P9711567167914040475

`A014682(A035092(p?[A063934(n+1)]))`
-/

namespace A224493.P9711567167914040475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P9711567167914040475

/-! ## A224493.P6729561655538914589

`A014682(A035092(p?[A073846(n+1)]))`
-/

namespace A224493.P6729561655538914589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P6729561655538914589

/-! ## A224493.P6220210392054544017

`A014682(A035092(p?[A098962(n+1)]))`
-/

namespace A224493.P6220210392054544017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P6220210392054544017

/-! ## A224493.P17063800223244723163

`A014682(A035092(p?[A131732(n)]))`
-/

namespace A224493.P17063800223244723163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A035092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224493.P17063800223244723163

/-!
# A224497: a(n) = sqrt(floor(n/2)! * Product_{k=1..n} Product_{i=1..k-1} gcd(k,i)).

The programs for A224497, the canonical program `A224497.P9599545819491647864` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224497 has offset 0).

The definition of A224497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224479, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224497.P9599545819491647864

`sqrt(floor(n/2)!*A224479(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A224497

/-- `sqrt(floor(n/2)!*A224479(n))` -/
def P9599545819491647864.Spec : Prop :=
  ∀ n, P9599545819491647864.a n = (A224497 n : ℝ)

end A224497

/-! ## A224497.P13245549007352153453

`∏[gcd(n², A225187(n+1))]`
-/

namespace A224497.P13245549007352153453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A225187 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224497.P13245549007352153453

namespace A224497

/-- `∏[gcd(n², A225187(n+1))]` -/
def P13245549007352153453.Spec : Prop :=
  ∀ n, (P13245549007352153453.a n : ℤ) = A224497 n

end A224497

/-! ## A224497.P4222222861724748575

`∏[gcd(n, eq[48, lcm(48, n)])]`
-/

namespace A224497.P4222222861724748575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 48 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224497.P4222222861724748575

namespace A224497

/-- `∏[gcd(n, eq[48, lcm(48, n)])]` -/
def P4222222861724748575.Spec : Prop :=
  ∀ n, (P4222222861724748575.a n : ℤ) = A224497 n

end A224497

/-! ## A224497.P15342959634751264559

`∏{e}[n!, A169970(#)]`
-/

namespace A224497.P15342959634751264559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A169970 (Nat.factorization (f1 n) p)

end

end A224497.P15342959634751264559

namespace A224497

/-- `∏{e}[n!, A169970(#)]` -/
def P15342959634751264559.Spec : Prop :=
  ∀ n, P15342959634751264559.a n = A224497 n

end A224497

/-! ## A224497.P9330148143487569709

`∏{e}[n!, A290518(#)]`
-/

namespace A224497.P9330148143487569709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A290518 (Nat.factorization (f1 n) p)

end

end A224497.P9330148143487569709

namespace A224497

/-- `∏{e}[n!, A290518(#)]` -/
def P9330148143487569709.Spec : Prop :=
  ∀ n, P9330148143487569709.a n = A224497 n

end A224497

/-!
# A224499: Numbers k such that if 2*k+1 divides 2^k+1 then 2*(k+1)+1 divides 2^(k+1)+1.

The programs for A224499, there is no canonical definition to state claims against.
-/

/-! ## A224499.P12590975305095395768

`∩[A104635(n+1), A224486(n+1)-1]`
-/

namespace A224499.P12590975305095395768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224499.P12590975305095395768

/-! ## A224499.P7105691091173967953

`record[A175865(n+2)%(A224486(n+1)+3)]`
-/

namespace A224499.P7105691091173967953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175865 (n + 2)) (A224486 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224499.P7105691091173967953

/-! ## A224499.P6732280466527117385

`A224486(eq[1, A224486(n+2)-A224486(n+1)]+1)`
-/

namespace A224499.P6732280466527117385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 2) - A224486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224499.P6732280466527117385

/-! ## A224499.P7363241644668279312

`A083259(A139983(n+1))+4*A124192(n+1)`
-/

namespace A224499.P7363241644668279312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (A139983 (n + 1)).toNat + 4 * A124192 (n + 1)

end

end A224499.P7363241644668279312

/-! ## A224499.P1390471609876731704

`A291168(A211111(n))+4*A124192(n+1)`
-/

namespace A224499.P1390471609876731704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A211111 n).toNat + 4 * A124192 (n + 1)

end

end A224499.P1390471609876731704

/-! ## A224499.P5848994895506187197

`A190611(A338506(n+1))+4*A124192(n+1)`
-/

namespace A224499.P5848994895506187197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (A338506 (n + 1)).toNat + 4 * A124192 (n + 1)

end

end A224499.P5848994895506187197

/-! ## A224499.P4446213680958616681

`A304800(3*A124192(n+1))`
-/

namespace A224499.P4446213680958616681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 (3 * A124192 (n + 1)).toNat

end

end A224499.P4446213680958616681

/-! ## A224499.P16064002767237827959

`A304800(lcm(3, A124192(n+1)))`
-/

namespace A224499.P16064002767237827959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 (Int.lcm 3 (A124192 (n + 1)))

end

end A224499.P16064002767237827959

/-! ## A224499.P1491677303019307481

`A006369(3*A124192(n+1)+1)`
-/

namespace A224499.P1491677303019307481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (3 * A124192 (n + 1) + 1).toNat

end

end A224499.P1491677303019307481

/-! ## A224499.P16476795588803075661

`A042968(A016777(A124192(n+1)))`
-/

namespace A224499.P16476795588803075661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A016777 (A124192 (n + 1)).toNat).toNat

end

end A224499.P16476795588803075661

