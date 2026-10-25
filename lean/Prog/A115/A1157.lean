import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A115700: Squares whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115700, there is no canonical definition to state claims against.
-/

/-! ## A115700.P6273454769507036784

`∩[n², A115697(n+1)]`
-/

namespace A115700.P6273454769507036784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115700.P6273454769507036784

/-! ## A115700.P2884701348444950126

`∩[A115697(n+1), A181385(n)]`
-/

namespace A115700.P2884701348444950126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115700.P2884701348444950126

/-! ## A115700.P10479530903657714710

`∩[A115697(n+1), A274583(n)]`
-/

namespace A115700.P10479530903657714710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115700.P10479530903657714710

/-!
# A115701: Cubes whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115701, there is no canonical definition to state claims against.
-/

/-! ## A115701.P3324778230327582786

`∩[A115697(n+1), n^3]`
-/

namespace A115701.P3324778230327582786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115701.P3324778230327582786

/-! ## A115701.P9857801537622362503

`filter[A115697(n+1), A010057(#)]`
-/

namespace A115701.P9857801537622362503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010057 (f1 j).toNat = 1) n)

end

end A115701.P9857801537622362503

/-! ## A115701.P8887202888768448300

`filter[A115697(n+1), A373372(#)]`
-/

namespace A115701.P8887202888768448300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A115701.P8887202888768448300

/-!
# A115702: Triangular numbers whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115702, there is no canonical definition to state claims against.
-/

/-! ## A115702.P6764396728218347005

`∩[A193569(n+1), A025731(n)]`
-/

namespace A115702.P6764396728218347005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025731 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115702.P6764396728218347005

/-! ## A115702.P3189639710273197631

`∩[A077367(n+1), A193569(n+1)]`
-/

namespace A115702.P3189639710273197631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115702.P3189639710273197631

/-! ## A115702.P9454425221158542222

`eq[A025427(A238343(n)), A238339(n)]`
-/

namespace A115702.P9454425221158542222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A238343 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115702.P9454425221158542222

/-!
# A115703: Pentagonal numbers (A000326) whose digit reversal is the product of 2 palindromes greater than 1.

The programs for A115703, there is no canonical definition to state claims against.
-/

/-! ## A115703.P3559726947016216140

`A000326(eq[n, A053263(n+1)])`
-/

namespace A115703.P3559726947016216140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115703.P3559726947016216140

/-!
# A115704: Triangular numbers whose digit reversal is prime; trailing zeros are permitted.

The programs for A115704, there is no canonical definition to state claims against.
-/

/-! ## A115704.P12886015490834339280

`∩[A095179(n+1), A000217(n)]`
-/

namespace A115704.P12886015490834339280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115704.P12886015490834339280

/-! ## A115704.P16779752926390552048

`∩[A095179(n+1), A253145(n)]`
-/

namespace A115704.P16779752926390552048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115704.P16779752926390552048

/-! ## A115704.P10411160566121282389

`∩[A095179(n+1), A117520(n+1)]`
-/

namespace A115704.P10411160566121282389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115704.P10411160566121282389

/-! ## A115704.P9638107139024627992

`∩[A095179(n+1), A334129(n+1)]`
-/

namespace A115704.P9638107139024627992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115704.P9638107139024627992

/-! ## A115704.P17869030851956966949

`eq[A003415(A004086(n)), A059268(n)]`
-/

namespace A115704.P17869030851956966949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115704.P17869030851956966949

/-!
# A115705: Primes whose digit reversal is a triangular number.

The programs for A115705, there is no canonical definition to state claims against.
-/

/-! ## A115705.P16654817451847971806

`eq[A003415(n), A059268(A004086(n))]`
-/

namespace A115705.P16654817451847971806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115705.P16654817451847971806

/-! ## A115705.P15022804039004401603

`eq[A095660(A004086(n)), A105700(n)]`
-/

namespace A115705.P15022804039004401603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115705.P15022804039004401603

/-!
# A115707: Pentagonal numbers (A000326) whose digit reversal is a prime.

The programs for A115707, there is no canonical definition to state claims against.
-/

/-! ## A115707.P6325809707097287334

`∩[A095179(n+1), A000326(n)]`
-/

namespace A115707.P6325809707097287334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115707.P6325809707097287334

/-! ## A115707.P4618653024261945112

`∩[A095179(n+1), Δ[A002411(n)]]`
-/

namespace A115707.P4618653024261945112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115707.P4618653024261945112

/-! ## A115707.P6707270630961236022

`∩[A211538(2*(n+1)), A095179(n+1)]`
-/

namespace A115707.P6707270630961236022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115707.P6707270630961236022

/-! ## A115707.P14714974114350051796

`filter[A095179(n+1), A255849(#)]`
-/

namespace A115707.P14714974114350051796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A115707.P14714974114350051796

/-! ## A115707.P17231944789550227190

`eq[A032741(A004086(n)), A118890(n)]`
-/

namespace A115707.P17231944789550227190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115707.P17231944789550227190

/-!
# A115708: Semiprimes (A001358) whose digit reversal is a pentagonal number (A000326).

The programs for A115708, there is no canonical definition to state claims against.
-/

/-! ## A115708.P7765780022957304072

`A332951(A188195(n+1))`
-/

namespace A115708.P7765780022957304072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332951 (A188195 (n + 1)).toNat

end

end A115708.P7765780022957304072

/-!
# A115709: Pentagonal numbers (A000326) whose digit reversal is a semiprime (A001358).

The programs for A115709, there is no canonical definition to state claims against.
-/

/-! ## A115709.P10286594108614870111

`A000326(A124492(n+1)+A069519(n+1))`
-/

namespace A115709.P10286594108614870111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A124492 (n + 1) + A069519 (n + 1)).toNat

end

end A115709.P10286594108614870111

/-!
# A115710: Semiprimes (A001358) whose digit reversal is a square.

The programs for A115710, there is no canonical definition to state claims against.
-/

/-! ## A115710.P5114499243770054874

`∩[A115688(n+1), A356417(n+1)]`
-/

namespace A115710.P5114499243770054874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115710.P5114499243770054874

/-! ## A115710.P10316939978380913632

`∩[A007936(n+1), A115688(n+1)]`
-/

namespace A115710.P10316939978380913632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115710.P10316939978380913632

/-! ## A115710.P6479154264786671901

`filter[A356417(n+2), A064911(#)]`
-/

namespace A115710.P6479154264786671901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115710.P6479154264786671901

/-! ## A115710.P14901722944188668625

`∩[A026481(n+1), A115688(n+1)]`
-/

namespace A115710.P14901722944188668625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115710.P14901722944188668625

/-! ## A115710.P17613137967374316713

`∩[A118715(n+1), A142863(n+1)]`
-/

namespace A115710.P17613137967374316713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115710.P17613137967374316713

/-!
# A115711: Squares whose digit reversal is a semiprime (A001358).

The programs for A115711, there is no canonical definition to state claims against.
-/

/-! ## A115711.P3928399746461759344

`∩[A115687(n+1), n²]`
-/

namespace A115711.P3928399746461759344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115711.P3928399746461759344

/-! ## A115711.P10104290868668993838

`∩[A000290(n), A115687(n+1)]`
-/

namespace A115711.P10104290868668993838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P10104290868668993838

/-! ## A115711.P5936843567147293583

`∩[A087278(n), A115687(n+1)]`
-/

namespace A115711.P5936843567147293583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P5936843567147293583

/-! ## A115711.P3151716421090077278

`∩[A005214(n+1), A115687(n+1)]`
-/

namespace A115711.P3151716421090077278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P3151716421090077278

/-! ## A115711.P18314748954886643731

`∩[A006446(n+1), A115687(n+1)]`
-/

namespace A115711.P18314748954886643731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P18314748954886643731

/-! ## A115711.P6390875596867697865

`∩[A034793(n+1), A115687(n+1)]`
-/

namespace A115711.P6390875596867697865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P6390875596867697865

/-! ## A115711.P218156593743891882

`∩[A050271(n+1), A115687(n+1)]`
-/

namespace A115711.P218156593743891882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P218156593743891882

/-! ## A115711.P12324731454252519980

`∩[A072595(n+1), A115687(n+1)]`
-/

namespace A115711.P12324731454252519980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P12324731454252519980

/-! ## A115711.P10545591441417693224

`∩[A087811(n+1), A115687(n+1)]`
-/

namespace A115711.P10545591441417693224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P10545591441417693224

/-! ## A115711.P8867039901000140257

`∩[A062861(n), A115687(n+1)]`
-/

namespace A115711.P8867039901000140257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115711.P8867039901000140257

/-!
# A115713: A divide-and-conquer related triangle.

The programs for A115713, there is no canonical definition to state claims against.
-/

/-! ## A115713.P14987331072026773174

`A033999(comp[∑[n]]-n)*A115633(n)`
-/

namespace A115713.P14987331072026773174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) * A115633 n

end

end A115713.P14987331072026773174

/-! ## A115713.P13682221961845197704

`A115633(n)/A033999(A003056(n))`
-/

namespace A115713.P13682221961845197704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / (A033999 (A003056 n).toNat : ℚ)

end

end A115713.P13682221961845197704

/-! ## A115713.P13782985498638799677

`A064645(n)²*A115952(n)`
-/

namespace A115713.P13782985498638799677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n ^ 2 * A115952 n

end

end A115713.P13782985498638799677

/-! ## A115713.P15747804961941625299

`A115633(n)*A115714(A003056(n)²)`
-/

namespace A115713.P15747804961941625299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115633 n * A115714 (A003056 n ^ 2).toNat

end

end A115713.P15747804961941625299

/-! ## A115713.P9402833040864962193

`A115715(n)*A115952(n)`
-/

namespace A115713.P9402833040864962193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 n * A115952 n

end

end A115713.P9402833040864962193

/-! ## A115713.P15264991332081328903

`abs(A115636(n))*A115952(n)`
-/

namespace A115713.P15264991332081328903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115636 n| * A115952 n

end

end A115713.P15264991332081328903

/-! ## A115713.P674635421937636306

`A004718(A137688(n))*A115633(n)`
-/

namespace A115713.P674635421937636306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A137688 n).toNat * A115633 n

end

end A115713.P674635421937636306

/-! ## A115713.P14212566304989652204

`A115952(n)*A261790(n+1)`
-/

namespace A115713.P14212566304989652204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 n * A261790 (n + 1)

end

end A115713.P14212566304989652204

/-!
# A115714: Periodic {1,-1,-3,0,1,-5,1,0,-3,-1,1,-4}.

The programs for A115714, the canonical program `A115714.P5666176158533524256` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115714 has offset 0).

The definition of A115714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115714.P5666176158533524256

`Δ[A059169(n+2)]-and(4, A047399(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115714

/-- `Δ[A059169(n+2)]-and(4, A047399(n+1))` -/
def P5666176158533524256.Spec : Prop :=
  ∀ n, P5666176158533524256.a n = A115714 n

theorem P5666176158533524256.correct : P5666176158533524256.Spec := by
  intro n
  simp only [A115714]

end A115714

/-!
# A115715: A divide-and-conquer triangle.

The programs for A115715, there is no canonical definition to state claims against.
-/

/-! ## A115715.P4542115514344401685

`abs(A115636(n))`
-/

namespace A115715.P4542115514344401685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115636 n|

end

end A115715.P4542115514344401685

/-! ## A115715.P2005649538550130522

`A115526(n)*A115636(n)`
-/

namespace A115715.P2005649538550130522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115526 n * A115636 n

end

end A115715.P2005649538550130522

/-! ## A115715.P10855183153344648413

`gcd(A000038(n), A115636(n))`
-/

namespace A115715.P10855183153344648413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115636 n)

end

end A115715.P10855183153344648413

/-! ## A115715.P13767168819599767156

`lcm(A020985(n), A115636(n))`
-/

namespace A115715.P13767168819599767156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A115636 n)

end

end A115715.P13767168819599767156

/-! ## A115715.P13080003345115718217

`∑{d}[A115636(n), A000010(#)]`
-/

namespace A115715.P13080003345115718217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A115715.P13080003345115718217

/-! ## A115715.P8407948364795153831

`A049347(A115636(n)+A016789(n))*A115636(n)`
-/

namespace A115715.P8407948364795153831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A115636 n + A016789 n).toNat * A115636 n

end

end A115715.P8407948364795153831

/-! ## A115715.P10048999297945390631

`A057078(A016777(n)-A115636(n))*A115636(n)`
-/

namespace A115715.P10048999297945390631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A016777 n - A115636 n).toNat * A115636 n

end

end A115715.P10048999297945390631

/-! ## A115715.P2548455680661886457

`A000196(A115636(n)²)`
-/

namespace A115715.P2548455680661886457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A115636 n ^ 2).toNat

end

end A115715.P2548455680661886457

/-! ## A115715.P2589071357309793955

`A002262(2*A115636(n)²)`
-/

namespace A115715.P2589071357309793955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A115636 n ^ 2).toNat

end

end A115715.P2589071357309793955

/-! ## A115715.P12845075958271872169

`A000196(A115636(n)*A115636(n))`
-/

namespace A115715.P12845075958271872169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A115636 n * A115636 n).toNat

end

end A115715.P12845075958271872169

/-! ## A115715.P16436978896471003693

`A002262(2*A115636(n)*A115636(n))`
-/

namespace A115715.P16436978896471003693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A115636 n * A115636 n).toNat

end

end A115715.P16436978896471003693

/-! ## A115715.P10385483271738520657

`A115636(n)²/A137735(A115636(n)²)`
-/

namespace A115715.P10385483271738520657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115636 n ^ 2 : ℚ) / (A137735 (A115636 n ^ 2).toNat : ℚ)

end

end A115715.P10385483271738520657

/-! ## A115715.P13013345913381233816

`A057078(A115639(n)-A115636(n))*A115636(n)`
-/

namespace A115715.P13013345913381233816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A115639 n - A115636 n).toNat * A115636 n

end

end A115715.P13013345913381233816

/-!
# A115716: A divide-and-conquer sequence.

The programs for A115716, the canonical program `A115716.P15483547809295924347` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115716 has offset 0).

The definition of A115716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115716.P15483547809295924347

`A007583(A091090(n+1)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115716

/-- `A007583(A091090(n+1)-1)` -/
def P15483547809295924347.Spec : Prop :=
  ∀ n, P15483547809295924347.a n = A115716 n

theorem P15483547809295924347.correct : P15483547809295924347.Spec := by
  intro n
  simp only [A115716]

end A115716

/-! ## A115716.P8372299855377709899

`((A276390(n+1)-1)/2-1)/2+1`
-/

namespace A115716.P8372299855377709899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A276390 (n + 1) - 1 : ℚ) / 2 - 1) / 2 + 1

end

end A115716.P8372299855377709899

namespace A115716

/-- `((A276390(n+1)-1)/2-1)/2+1` -/
def P8372299855377709899.Spec : Prop :=
  ∀ n, P8372299855377709899.a n = (A115716 n : ℚ)

end A115716

/-! ## A115716.P5593356059938761316

`A276390(A142150(n))`
-/

namespace A115716.P5593356059938761316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (A142150 n).toNat

end

end A115716.P5593356059938761316

namespace A115716

/-- `A276390(A142150(n))` -/
def P5593356059938761316.Spec : Prop :=
  ∀ n, P5593356059938761316.a n = A115716 n

end A115716

/-! ## A115716.P9740433568753039206

`A008747(A135521(n+1))`
-/

namespace A115716.P9740433568753039206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (A135521 (n + 1)).toNat

end

end A115716.P9740433568753039206

namespace A115716

/-- `A008747(A135521(n+1))` -/
def P9740433568753039206.Spec : Prop :=
  ∀ n, P9740433568753039206.a n = A115716 n

end A115716

/-! ## A115716.P17476899955499191964

`A048702(A135517(n+1))`
-/

namespace A115716.P17476899955499191964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (A135517 (n + 1)).toNat

end

end A115716.P17476899955499191964

namespace A115716

/-- `A048702(A135517(n+1))` -/
def P17476899955499191964.Spec : Prop :=
  ∀ n, P17476899955499191964.a n = A115716 n

end A115716

/-! ## A115716.P1988190103336151414

`A276391(A054429(n+1))`
-/

namespace A115716.P1988190103336151414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A054429 (n + 1)).toNat

end

end A115716.P1988190103336151414

namespace A115716

/-- `A276391(A054429(n+1))` -/
def P1988190103336151414.Spec : Prop :=
  ∀ n, P1988190103336151414.a n = A115716 n

end A115716

/-! ## A115716.P3420885665731230806

`A276391(A062050(n+1))`
-/

namespace A115716.P3420885665731230806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A062050 (n + 1)).toNat

end

end A115716.P3420885665731230806

namespace A115716

/-- `A276391(A062050(n+1))` -/
def P3420885665731230806.Spec : Prop :=
  ∀ n, P3420885665731230806.a n = A115716 n

end A115716

/-! ## A115716.P12300508399916216576

`A276391(A162751(n+1))`
-/

namespace A115716.P12300508399916216576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A162751 (n + 1)).toNat

end

end A115716.P12300508399916216576

namespace A115716

/-- `A276391(A162751(n+1))` -/
def P12300508399916216576.Spec : Prop :=
  ∀ n, P12300508399916216576.a n = A115716 n

end A115716

/-! ## A115716.P4974006686235375236

`A276391(A359506(n+1))`
-/

namespace A115716.P4974006686235375236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A359506 (n + 1)).toNat

end

end A115716.P4974006686235375236

namespace A115716

/-- `A276391(A359506(n+1))` -/
def P4974006686235375236.Spec : Prop :=
  ∀ n, P4974006686235375236.a n = A115716 n

end A115716

/-! ## A115716.P10892789840953510604

`A276391(A364256(n+2))`
-/

namespace A115716.P10892789840953510604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A364256 (n + 2)).toNat

end

end A115716.P10892789840953510604

namespace A115716

/-- `A276391(A364256(n+2))` -/
def P10892789840953510604.Spec : Prop :=
  ∀ n, P10892789840953510604.a n = A115716 n

end A115716

/-! ## A115716.P332513569497817670

`A276390(A237420(n)/2)`
-/

namespace A115716.P332513569497817670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

end

end A115716.P332513569497817670

namespace A115716

/-- `A276390(A237420(n)/2)` -/
def P332513569497817670.Spec : Prop :=
  ∀ n, P332513569497817670.a n = A115716 n

end A115716

/-! ## A115716.P2712506614568426591

`A139250(gcd(n+2, A001316(n)))`
-/

namespace A115716.P2712506614568426591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Int.gcd (n + 2 : ℤ) (A001316 n))

end

end A115716.P2712506614568426591

namespace A115716

/-- `A139250(gcd(n+2, A001316(n)))` -/
def P2712506614568426591.Spec : Prop :=
  ∀ n, P2712506614568426591.a n = A115716 n

end A115716

/-! ## A115716.P12937672915912766862

`A276390(n+1)-A081294(A091090(n+1))`
-/

namespace A115716.P12937672915912766862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (n + 1) - A081294 (A091090 (n + 1)).toNat

end

end A115716.P12937672915912766862

namespace A115716

/-- `A276390(n+1)-A081294(A091090(n+1))` -/
def P12937672915912766862.Spec : Prop :=
  ∀ n, P12937672915912766862.a n = A115716 n

end A115716

/-! ## A115716.P16120832584488569782

`A007583(A014701(n+1)+1-A014701(n+2))`
-/

namespace A115716.P16120832584488569782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A014701 (n + 1) + 1 - A014701 (n + 2)).toNat

end

end A115716.P16120832584488569782

namespace A115716

/-- `A007583(A014701(n+1)+1-A014701(n+2))` -/
def P16120832584488569782.Spec : Prop :=
  ∀ n, P16120832584488569782.a n = A115716 n

theorem P16120832584488569782.correct : P16120832584488569782.Spec := by
  intro n
  simp only [A115716, Nat.add_sub_cancel, A115716.P16120832584488569782.a, A115716.P15483547809295924347.a, A007583, A007583.P12280822276545964020.a, A014701, A014701.P12214863752987612616.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A056792, A056792.P13266386025487519892.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115716

/-! ## A115716.P5897744845228438581

`Δ[A147992(n+1)/2]`
-/

namespace A115716.P5897744845228438581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147992 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115716.P5897744845228438581

namespace A115716

/-- `Δ[A147992(n+1)/2]` -/
def P5897744845228438581.Spec : Prop :=
  ∀ n, P5897744845228438581.a n = (A115716 n : ℚ)

end A115716

/-! ## A115716.P10925255380427088968

`Δ[∑[A276390(n)+1]/4]`
-/

namespace A115716.P10925255380427088968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115716.P10925255380427088968

namespace A115716

/-- `Δ[∑[A276390(n)+1]/4]` -/
def P10925255380427088968.Spec : Prop :=
  ∀ n, P10925255380427088968.a n = (A115716 n : ℚ)

end A115716

/-! ## A115716.P2216824890142348761

`A276391(A153152(n+1))`
-/

namespace A115716.P2216824890142348761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A153152 (n + 1)).toNat

end

end A115716.P2216824890142348761

namespace A115716

/-- `A276391(A153152(n+1))` -/
def P2216824890142348761.Spec : Prop :=
  ∀ n, P2216824890142348761.a n = A115716 n

end A115716

/-! ## A115716.P7638689071085050736

`A276391(A154437(n+1))`
-/

namespace A115716.P7638689071085050736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A154437 (n + 1)).toNat

end

end A115716.P7638689071085050736

namespace A115716

/-- `A276391(A154437(n+1))` -/
def P7638689071085050736.Spec : Prop :=
  ∀ n, P7638689071085050736.a n = A115716 n

end A115716

/-! ## A115716.P2774568133926930021

`A276391(A009195(n+2))`
-/

namespace A115716.P2774568133926930021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A009195 (n + 2)).toNat

end

end A115716.P2774568133926930021

namespace A115716

/-- `A276391(A009195(n+2))` -/
def P2774568133926930021.Spec : Prop :=
  ∀ n, P2774568133926930021.a n = A115716 n

end A115716

/-! ## A115716.P10017881288791528519

`A276391(A048671(n+2))`
-/

namespace A115716.P10017881288791528519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A048671 (n + 2)).toNat

end

end A115716.P10017881288791528519

namespace A115716

/-- `A276391(A048671(n+2))` -/
def P10017881288791528519.Spec : Prop :=
  ∀ n, P10017881288791528519.a n = A115716 n

end A115716

/-!
# A115720: Triangle T(n,k) is the number of partitions of n with Durfee square k.

The programs for A115720, there is no canonical definition to state claims against.
-/

/-! ## A115720.P1891613332217000670

`A335162(ceil(log2(A151537(n+1)+1)))`
-/

namespace A115720.P1891613332217000670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 ⌈Real.logb 2 (A151537 (n + 1) + 1 : ℝ)⌉.toNat

end

end A115720.P1891613332217000670

/-! ## A115720.P15398801852386602665

`A225569(A183420(n+1))+A025581(A183234(n+1))`
-/

namespace A115720.P15398801852386602665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 (A183420 (n + 1)).toNat + A025581 (A183234 (n + 1)).toNat

end

end A115720.P15398801852386602665

/-! ## A115720.P16146969012524740083

`∏{e}[record[A000005(A305325(n+1))], #-1]`
-/

namespace A115720.P16146969012524740083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A305325 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A115720.P16146969012524740083

/-! ## A115720.P8354974923757838776

`A051775(2*n)+A010052(A003945(n))`
-/

namespace A115720.P8354974923757838776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (2 * n) + A010052 (A003945 n).toNat

end

end A115720.P8354974923757838776

/-! ## A115720.P3811633927867818364

`A051775(2*n)+A010054(A180673(n))`
-/

namespace A115720.P3811633927867818364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (2 * n) + A010054 (A180673 n).toNat

end

end A115720.P3811633927867818364

/-!
# A115721: Table of Durfee square of partitions in Abramowitz and Stegun order.

The programs for A115721, there is no canonical definition to state claims against.
-/

/-! ## A115721.P9765530530607676318

`A257990(A185974(n))`
-/

namespace A115721.P9765530530607676318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A185974 n).toNat

end

end A115721.P9765530530607676318

/-! ## A115721.P11710686406201221111

`A257990(A334434(n))`
-/

namespace A115721.P11710686406201221111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A334434 n).toNat

end

end A115721.P11710686406201221111

/-! ## A115721.P17080824946407984980

`A087624(A278525(A185974(n))²)`
-/

namespace A115721.P17080824946407984980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A278525 (A185974 n).toNat ^ 2).toNat

end

end A115721.P17080824946407984980

/-! ## A115721.P4557603691748231017

`A353625(A036035(n))-A057428(n)`
-/

namespace A115721.P4557603691748231017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353625 (A036035 n).toNat - A057428 n

end

end A115721.P4557603691748231017

/-! ## A115721.P1437048590582392076

`A115722(A057889(n)%A119033(n+1))`
-/

namespace A115721.P1437048590582392076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (Int.tmod (A057889 n) (A119033 (n + 1))).toNat

end

end A115721.P1437048590582392076

/-!
# A115722: Table of Durfee square of partitions in Mathematica order.

The programs for A115722, there is no canonical definition to state claims against.
-/

/-! ## A115722.P7139956468858859220

`A257990(A129129(n))`
-/

namespace A115722.P7139956468858859220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A129129 n).toNat

end

end A115722.P7139956468858859220

/-! ## A115722.P11989751068812267831

`floor(sqrt(A130233(n)-A331553(n)))`
-/

namespace A115722.P11989751068812267831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A130233 n - A331553 n)

end

end A115722.P11989751068812267831

/-! ## A115722.P9035449497743114003

`A331553(A130233(n)-A331553(n))`
-/

namespace A115722.P9035449497743114003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331553 (A130233 n - A331553 n).toNat

end

end A115722.P9035449497743114003

/-! ## A115722.P6114799776853583758

`A257990(∏{e}[A063008(n), A028905(#)])`
-/

namespace A115722.P6114799776853583758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A115722.P6114799776853583758

/-! ## A115722.P484958002176802349

`A327910(gcd(Δ[3^n], A063008(n)))`
-/

namespace A115722.P484958002176802349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327910 (Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A063008 n))

end

end A115722.P484958002176802349

/-!
# A115723: Table of partitions of n with maximum rectangle k.

The programs for A115723, there is no canonical definition to state claims against.
-/

/-! ## A115723.P2724320003974999782

`A319421(A010027(n+1))%A309858(n)*A323023(n+1)`
-/

namespace A115723.P2724320003974999782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319421 (A010027 (n + 1)).toNat) (A309858 n) * A323023 (n + 1)

end

end A115723.P2724320003974999782

/-! ## A115723.P14070102627057049939

`A345164(A322527(n))+A008482(n)`
-/

namespace A115723.P14070102627057049939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A322527 n).toNat + A008482 n

end

end A115723.P14070102627057049939

/-! ## A115723.P12529446986014824024

`A358333(A112906(n))`
-/

namespace A115723.P12529446986014824024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358333 (A112906 n).toNat

end

end A115723.P12529446986014824024

/-! ## A115723.P7688357920406853652

`A326031(A099089(n)^4)`
-/

namespace A115723.P7688357920406853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (A099089 n ^ 4).toNat

end

end A115723.P7688357920406853652

/-! ## A115723.P17733052761856178346

`A326031(A099089(n)²²)`
-/

namespace A115723.P17733052761856178346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 ((A099089 n ^ 2) ^ 2).toNat

end

end A115723.P17733052761856178346

/-!
# A115724: Number of partitions with maximum rectangle n.

The programs for A115724, there is no canonical definition to state claims against.
-/

/-! ## A115724.P2375832269582091036

`abs(Δ[A115725(abs(1-n))])`
-/

namespace A115724.P2375832269582091036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115725 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A115724.P2375832269582091036

/-!
# A115725: Number of partitions with maximum rectangle <= n.

The programs for A115725, there is no canonical definition to state claims against.
-/

/-! ## A115725.P11733873076193368295

`∑[A115724(n)]`
-/

namespace A115725.P11733873076193368295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115725.P11733873076193368295

/-! ## A115725.P2652732335474654865

`A115724(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A115725.P2652732335474654865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115724 n + a (A028310 n - 1).toNat

end

end A115725.P2652732335474654865

/-! ## A115725.P4174291002286685016

`a(n-1)-(A000007(n+1)-A115724(n))` with `a(0)=1`
-/

namespace A115725.P4174291002286685016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 (n + 1) - A115724 n)

end

end A115725.P4174291002286685016

/-! ## A115725.P15766764999188682222

`a(n-1)+A115724(n)%A101265(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A115725.P15766764999188682222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A115724 n) (A101265 (n + 1))

end

end A115725.P15766764999188682222

/-! ## A115725.P2560119479398393753

`A238746(A346043(n))`
-/

namespace A115725.P2560119479398393753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238746 (A346043 n).toNat

end

end A115725.P2560119479398393753

/-!
# A115726: Maximum rectangle of partitions in Abramowitz and Stegun order.

The programs for A115726, there is no canonical definition to state claims against.
-/

/-! ## A115726.P1423178442511220649

`A115727(lt[A067323(n), A003339(n+1)])`
-/

namespace A115726.P1423178442511220649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115726.P1423178442511220649

/-! ## A115726.P3425151591434114266

`A115727(lt[A303427(n), A145674(n+3)])`
-/

namespace A115726.P3425151591434114266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145674 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115726.P3425151591434114266

/-! ## A115726.P15050578244487134988

`A115727(lt[A053818(n+1), A141934(n+1)])`
-/

namespace A115726.P15050578244487134988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115726.P15050578244487134988

/-! ## A115726.P6485341713474199108

`A115727(lt[A115724(n+2), A115712(n+1)])`
-/

namespace A115726.P6485341713474199108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115724 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115726.P6485341713474199108

/-! ## A115726.P18012502581023529605

`A115727(lt[A115724(n+2), A115690(3*n+5)])`
-/

namespace A115726.P18012502581023529605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115724 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115690 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115726.P18012502581023529605

/-!
# A115727: Maximum rectangle of partitions in Mathematica order.

The programs for A115727, there is no canonical definition to state claims against.
-/

/-! ## A115727.P7683204096924778606

`A115726(lt[A077947(n), A135721(2*n+3)])`
-/

namespace A115727.P7683204096924778606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135721 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115727.P7683204096924778606

/-! ## A115727.P6339366391788050632

`A160145(A079262(n))+A115726(n)`
-/

namespace A115727.P6339366391788050632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 (A079262 n).toNat + A115726 n

end

end A115727.P6339366391788050632

/-! ## A115727.P13248042465974957898

`A115726(n)+A102683(A246609(n))`
-/

namespace A115727.P13248042465974957898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 n + A102683 (A246609 n).toNat

end

end A115727.P13248042465974957898

/-! ## A115727.P6824460761014961830

`A057427(A082856(n))*A115726(n)`
-/

namespace A115727.P6824460761014961830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A082856 n).toNat * A115726 n

end

end A115727.P6824460761014961830

/-! ## A115727.P13450180766705555743

`A115726(n)%A118533(A143823(n))`
-/

namespace A115727.P13450180766705555743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115726 n) (A118533 (A143823 n).toNat)

end

end A115727.P13450180766705555743

/-!
# A115728: Number of subpartitions of partitions in Abramowitz and Stegun order.

The programs for A115728, there is no canonical definition to state claims against.
-/

/-! ## A115728.P7974615681009534885

`A238690(A129129(n))`
-/

namespace A115728.P7974615681009534885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A129129 n).toNat

end

end A115728.P7974615681009534885

/-! ## A115728.P309627040632332793

`A238690(A333485(n))`
-/

namespace A115728.P309627040632332793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A333485 n).toNat

end

end A115728.P309627040632332793

/-! ## A115728.P12568999968261077397

`∑{d}[A063008(n), A322585(#)]`
-/

namespace A115728.P12568999968261077397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A115728.P12568999968261077397

/-! ## A115728.P12955974507031551569

`∑{d}[A057335(A114994(n)), A322585(#)]`
-/

namespace A115728.P12955974507031551569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A114994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A115728.P12955974507031551569

/-! ## A115728.P15027013256911542448

`∑{d}[A057335(eq[1, A124765(n)!]), A322585(#)]`
-/

namespace A115728.P15027013256911542448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124765 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A115728.P15027013256911542448

/-!
# A115729: Number of subpartitions of partitions in Mathematica order.

The programs for A115729, there is no canonical definition to state claims against.
-/

/-! ## A115729.P6665536731999117246

`A238690(A185974(n))`
-/

namespace A115729.P6665536731999117246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A185974 n).toNat

end

end A115729.P6665536731999117246

/-! ## A115729.P6473476863642781060

`A238690(A334434(n))`
-/

namespace A115729.P6473476863642781060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A334434 n).toNat

end

end A115729.P6473476863642781060

/-! ## A115729.P18387244863721837062

`A238690(A334438(n))`
-/

namespace A115729.P18387244863721837062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A334438 n).toNat

end

end A115729.P18387244863721837062

/-! ## A115729.P5027401538899746323

`A238690(∏{e}[A036035(n), A000040(#)])`
-/

namespace A115729.P5027401538899746323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A115729.P5027401538899746323

/-! ## A115729.P1054850593627995056

`∑{d}[A036035(n), A322585(#)]`
-/

namespace A115729.P1054850593627995056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A115729.P1054850593627995056

/-!
# A115730: a(n) = a(n-3) + A001654(n-1) with a(0)=0, a(1)=0 and a(2)=1.

The programs for A115730, the canonical program `A115730.P18108402953925044374` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115730 has offset 0).

The definition of A115730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+A001654(n-1)` (program `A115730.P18108402953925044374`, by `A115730.P18108402953925044374.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115730.P18108402953925044374

`a(n-3)+A001654(n-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115730

/-- `a(n-3)+A001654(n-1)` -/
def P18108402953925044374.Spec : Prop :=
  ∀ n, P18108402953925044374.a n = A115730 n

theorem P18108402953925044374.correct : P18108402953925044374.Spec := by
  intro n
  simp only [A115730]

end A115730

/-! ## A115730.P11908961517569031780

`floor((∑[a(n-1)+a(n-2)]/2)²)` with `a(0)=1, a(1)=0`
-/

namespace A115730.P11908961517569031780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A115730.P11908961517569031780

namespace A115730

/-- `floor((∑[a(n-1)+a(n-2)]/2)²)` -/
def P11908961517569031780.Spec : Prop :=
  ∀ n, P11908961517569031780.a n = A115730 n

end A115730

/-! ## A115730.P248957300106603262

`floor(∑[A212804(n)/2]²)`
-/

namespace A115730.P248957300106603262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A115730.P248957300106603262

namespace A115730

/-- `floor(∑[A212804(n)/2]²)` -/
def P248957300106603262.Spec : Prop :=
  ∀ n, P248957300106603262.a n = A115730 n

end A115730

/-! ## A115730.P17111356250267397368

`floor((A000045(n+1)/2)²)`
-/

namespace A115730.P17111356250267397368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A115730.P17111356250267397368

namespace A115730

/-- `floor((A000045(n+1)/2)²)` -/
def P17111356250267397368.Spec : Prop :=
  ∀ n, P17111356250267397368.a n = A115730 n

end A115730

/-! ## A115730.P18164485638631403748

`floor((A236191(n+1)/2)²)`
-/

namespace A115730.P18164485638631403748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A236191 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A115730.P18164485638631403748

namespace A115730

/-- `floor((A236191(n+1)/2)²)` -/
def P18164485638631403748.Spec : Prop :=
  ∀ n, P18164485638631403748.a n = A115730 n

end A115730

/-! ## A115730.P15069668807290090655

`floor((A324969(n+2)/2)²)`
-/

namespace A115730.P15069668807290090655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A324969 (n + 2) : ℚ) / 2) ^ 2⌋

end

end A115730.P15069668807290090655

namespace A115730

/-- `floor((A324969(n+2)/2)²)` -/
def P15069668807290090655.Spec : Prop :=
  ∀ n, P15069668807290090655.a n = A115730 n

end A115730

/-! ## A115730.P8825505585796325314

`floor((A128588(n+1)/4)²)`
-/

namespace A115730.P8825505585796325314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A128588 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A115730.P8825505585796325314

namespace A115730

/-- `floor((A128588(n+1)/4)²)` -/
def P8825505585796325314.Spec : Prop :=
  ∀ n, P8825505585796325314.a n = A115730 n

end A115730

/-! ## A115730.P3738278963008717474

`floor((A079977(2*n)/2)²)`
-/

namespace A115730.P3738278963008717474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A079977 (2 * n) : ℚ) / 2) ^ 2⌋

end

end A115730.P3738278963008717474

namespace A115730

/-- `floor((A079977(2*n)/2)²)` -/
def P3738278963008717474.Spec : Prop :=
  ∀ n, P3738278963008717474.a n = A115730 n

end A115730

/-! ## A115730.P2892530796463524011

`floor(Δ[∑[A000045(n)]/2]²)`
-/

namespace A115730.P2892530796463524011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A115730.P2892530796463524011

namespace A115730

/-- `floor(Δ[∑[A000045(n)]/2]²)` -/
def P2892530796463524011.Spec : Prop :=
  ∀ n, P2892530796463524011.a n = A115730 n

end A115730

/-! ## A115730.P17316992425416289884

`round(Δ[A000045(n+2)/2]²)`
-/

namespace A115730.P17316992425416289884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A115730.P17316992425416289884

namespace A115730

/-- `round(Δ[A000045(n+2)/2]²)` -/
def P17316992425416289884.Spec : Prop :=
  ∀ n, P17316992425416289884.a n = A115730 n

end A115730

/-! ## A115730.P2077689777040727998

`floor((A123231(2*n+1)/2)²)`
-/

namespace A115730.P2077689777040727998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A123231 (2 * n + 1) : ℚ) / 2) ^ 2⌋

end

end A115730.P2077689777040727998

namespace A115730

/-- `floor((A123231(2*n+1)/2)²)` -/
def P2077689777040727998.Spec : Prop :=
  ∀ n, P2077689777040727998.a n = A115730 n

end A115730

/-! ## A115730.P17536705968127250731

`floor((A163227(2*n+1)/2)²)`
-/

namespace A115730.P17536705968127250731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A163227 (2 * n + 1) : ℚ) / 2) ^ 2⌋

end

end A115730.P17536705968127250731

namespace A115730

/-- `floor((A163227(2*n+1)/2)²)` -/
def P17536705968127250731.Spec : Prop :=
  ∀ n, P17536705968127250731.a n = A115730 n

end A115730

/-! ## A115730.P9058852122658195437

`floor((A272912(2*n+1)/2)²)`
-/

namespace A115730.P9058852122658195437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A272912 (2 * n + 1) : ℚ) / 2) ^ 2⌋

end

end A115730.P9058852122658195437

namespace A115730

/-- `floor((A272912(2*n+1)/2)²)` -/
def P9058852122658195437.Spec : Prop :=
  ∀ n, P9058852122658195437.a n = A115730 n

end A115730

/-! ## A115730.P13994387358512136171

`floor(Δ[A000045(2*n-(n-2))/2]²)`
-/

namespace A115730.P13994387358512136171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A115730.P13994387358512136171

namespace A115730

/-- `floor(Δ[A000045(2*n-(n-2))/2]²)` -/
def P13994387358512136171.Spec : Prop :=
  ∀ n, P13994387358512136171.a n = A115730 n

end A115730

/-! ## A115730.P6088128425309499423

`∑[a(n-3)+A000045(n-1)²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A115730.P6088128425309499423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + A000045 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115730.P6088128425309499423

namespace A115730

/-- `∑[a(n-3)+A000045(n-1)²]` -/
def P6088128425309499423.Spec : Prop :=
  ∀ n, P6088128425309499423.a n = A115730 n

end A115730

/-! ## A115730.P18165068868638404206

`Δ[A005252(n+1)]*A005252(n)`
-/

namespace A115730.P18165068868638404206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005252 n

end

end A115730.P18165068868638404206

namespace A115730

/-- `Δ[A005252(n+1)]*A005252(n)` -/
def P18165068868638404206.Spec : Prop :=
  ∀ n, P18165068868638404206.a n = A115730 n

end A115730

/-! ## A115730.P17780732059021609286

`A004695(n+1)*A173173(n+1)`
-/

namespace A115730.P17780732059021609286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) * A173173 (n + 1)

end

end A115730.P17780732059021609286

namespace A115730

/-- `A004695(n+1)*A173173(n+1)` -/
def P17780732059021609286.Spec : Prop :=
  ∀ n, P17780732059021609286.a n = A115730 n

end A115730

/-! ## A115730.P11127082969585091852

`A005252(n)*A174618(2*n+1)`
-/

namespace A115730.P11127082969585091852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n * A174618 (2 * n + 1)

end

end A115730.P11127082969585091852

namespace A115730

/-- `A005252(n)*A174618(2*n+1)` -/
def P11127082969585091852.Spec : Prop :=
  ∀ n, P11127082969585091852.a n = A115730 n

end A115730

/-! ## A115730.P2190144838296164795

`A104221(n+1)/2*A173173(n+1)`
-/

namespace A115730.P2190144838296164795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 (n + 1) : ℚ) / 2 * (A173173 (n + 1) : ℚ)

end

end A115730.P2190144838296164795

namespace A115730

/-- `A104221(n+1)/2*A173173(n+1)` -/
def P2190144838296164795.Spec : Prop :=
  ∀ n, P2190144838296164795.a n = (A115730 n : ℚ)

end A115730

/-! ## A115730.P337696567812259781

`A174618(2*n+1)*A174618(2*(n+1))`
-/

namespace A115730.P337696567812259781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * n + 1) * A174618 (2 * (n + 1))

end

end A115730.P337696567812259781

namespace A115730

/-- `A174618(2*n+1)*A174618(2*(n+1))` -/
def P337696567812259781.Spec : Prop :=
  ∀ n, P337696567812259781.a n = A115730 n

end A115730

/-!
# A115731: Permutation of natural numbers generated by 3-rowed array shown below.

The programs for A115731, the canonical program `A115731.P6675874321101004067` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115731 has offset 1).

The definition of A115731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115731.P6675874321101004067

`A133259(A116551(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115731

/-- `A133259(A116551(n+1))` -/
def P6675874321101004067.Spec : Prop :=
  ∀ n, P6675874321101004067.a n = A115731 (n + 1)

theorem P6675874321101004067.correct : P6675874321101004067.Spec := by
  intro n
  simp only [A115731, Nat.add_sub_cancel]

end A115731

/-! ## A115731.P16462091722583468225

`A133259(xor(A181440(n+1)%A143098(n+1), A088520(n+1))-1)`
-/

namespace A115731.P16462091722583468225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (Int.xor (Int.tmod (A181440 (n + 1)) (A143098 (n + 1))) (A088520 (n + 1)) - 1).toNat

end

end A115731.P16462091722583468225

namespace A115731

/-- `A133259(xor(A181440(n+1)%A143098(n+1), A088520(n+1))-1)` -/
def P16462091722583468225.Spec : Prop :=
  ∀ n, P16462091722583468225.a n = A115731 (n + 1)

end A115731

/-! ## A115731.P2856291082857147806

`A133259(A115302(n+1)-1)`
-/

namespace A115731.P2856291082857147806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A115302 (n + 1) - 1).toNat

end

end A115731.P2856291082857147806

namespace A115731

/-- `A133259(A115302(n+1)-1)` -/
def P2856291082857147806.Spec : Prop :=
  ∀ n, P2856291082857147806.a n = A115731 (n + 1)

end A115731

/-! ## A115731.P12443445986914185975

`A133259(A260196(n+2)+A115302(n+1))`
-/

namespace A115731.P12443445986914185975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A260196 (n + 2) + A115302 (n + 1)).toNat

end

end A115731.P12443445986914185975

namespace A115731

/-- `A133259(A260196(n+2)+A115302(n+1))` -/
def P12443445986914185975.Spec : Prop :=
  ∀ n, P12443445986914185975.a n = A115731 (n + 1)

end A115731

/-! ## A115731.P6401549821295082446

`A133259(A143098(3*(n+1))+A115302(n+1))`
-/

namespace A115731.P6401549821295082446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A143098 (3 * (n + 1)) + A115302 (n + 1)).toNat

end

end A115731.P6401549821295082446

namespace A115731

/-- `A133259(A143098(3*(n+1))+A115302(n+1))` -/
def P6401549821295082446.Spec : Prop :=
  ∀ n, P6401549821295082446.a n = A115731 (n + 1)

end A115731

/-! ## A115731.P13963596826448894000

`A133259((A115302(n+1)+A008486(n))%A016777(n))`
-/

namespace A115731.P13963596826448894000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (Int.tmod (A115302 (n + 1) + A008486 n) (A016777 n)).toNat

end

end A115731.P13963596826448894000

namespace A115731

/-- `A133259((A115302(n+1)+A008486(n))%A016777(n))` -/
def P13963596826448894000.Spec : Prop :=
  ∀ n, P13963596826448894000.a n = A115731 (n + 1)

end A115731

/-!
# A115732: n-th prime prime(n) repeated (prime(n)-n) times.

The programs for A115732, the canonical program `A115732.P15439679274567884474` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115732 has offset 1).

The definition of A115732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115732.P15439679274567884474

`A000040(∑[char[A112997(n+1)]]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115732

/-- `A000040(∑[char[A112997(n+1)]]+1)` -/
def P15439679274567884474.Spec : Prop :=
  ∀ n, P15439679274567884474.a n = A115732 (n + 1)

theorem P15439679274567884474.correct : P15439679274567884474.Spec := by
  intro n
  simp only [A115732, Nat.add_sub_cancel]

end A115732

/-! ## A115732.P1044125416329423217

`A063905(lt[A063905(n+1), A340753(n+1)])`
-/

namespace A115732.P1044125416329423217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115732.P1044125416329423217

namespace A115732

/-- `A063905(lt[A063905(n+1), A340753(n+1)])` -/
def P1044125416329423217.Spec : Prop :=
  ∀ n, P1044125416329423217.a n = A115732 (n + 1)

end A115732

/-! ## A115732.P16747616503097432817

`p?[A080513(A121149(n))-n]`
-/

namespace A115732.P16747616503097432817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A121149 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115732.P16747616503097432817

namespace A115732

/-- `p?[A080513(A121149(n))-n]` -/
def P16747616503097432817.Spec : Prop :=
  ∀ n, P16747616503097432817.a n = A115732 (n + 1)

end A115732

/-!
# A115733: prime(n)-n, repeated (prime(n)-n) times.

The programs for A115733, the canonical program `A115733.P11332342252543868068` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115733 has offset 1).

The definition of A115733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115733.P11785656793948017974

`A039776(A115732(n+1))`
-/

namespace A115733.P11785656793948017974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039776 (A115732 (n + 1)).toNat

end

end A115733.P11785656793948017974

namespace A115733

/-- `A039776(A115732(n+1))` -/
def P11785656793948017974.Spec : Prop :=
  ∀ n, P11785656793948017974.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P11332342252543868068

`A062298(p?[A115732(n+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115733

/-- `A062298(p?[A115732(n+1)])` -/
def P11332342252543868068.Spec : Prop :=
  ∀ n, P11332342252543868068.a n = A115733 (n + 1)

theorem P11332342252543868068.correct : P11332342252543868068.Spec := by
  intro n
  simp only [A115733, Nat.add_sub_cancel]

end A115733

/-! ## A115733.P7694745679581833331

`A026233(A115732(n+1)-1)`
-/

namespace A115733.P7694745679581833331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A115732 (n + 1) - 1).toNat

end

end A115733.P7694745679581833331

namespace A115733

/-- `A026233(A115732(n+1)-1)` -/
def P7694745679581833331.Spec : Prop :=
  ∀ n, P7694745679581833331.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P2511198496598610954

`A062298(A115732(n+1)-1)`
-/

namespace A115733.P2511198496598610954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A115732 (n + 1) - 1).toNat

end

end A115733.P2511198496598610954

namespace A115733

/-- `A062298(A115732(n+1)-1)` -/
def P2511198496598610954.Spec : Prop :=
  ∀ n, P2511198496598610954.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P4213013819821828348

`A062298(or(1, A115732(n+1)))`
-/

namespace A115733.P4213013819821828348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (Int.lor 1 (A115732 (n + 1))).toNat

end

end A115733.P4213013819821828348

namespace A115733

/-- `A062298(or(1, A115732(n+1)))` -/
def P4213013819821828348.Spec : Prop :=
  ∀ n, P4213013819821828348.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P11366580320634770541

`A065855(p?[A115732(n+1)])+1`
-/

namespace A115733.P11366580320634770541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A115733.P11366580320634770541

namespace A115733

/-- `A065855(p?[A115732(n+1)])+1` -/
def P11366580320634770541.Spec : Prop :=
  ∀ n, P11366580320634770541.a n = A115733 (n + 1)

theorem P11366580320634770541.correct : P11366580320634770541.Spec := by
  intro n
  simp only [A115733, Nat.add_sub_cancel, A115733.P11366580320634770541.f1, A115733.P11366580320634770541.a, A115733.P11332342252543868068.f1, A115733.P11332342252543868068.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A115732, A115732.P15439679274567884474.f2, A115732.P15439679274567884474.f1, A115732.P15439679274567884474.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A112997, A112997.P3713856926934514710.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A182986, A182986.P2625431067462217415.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115733

/-! ## A115733.P11134730988283101343

`A065855(A115732(n+1)-1)+1`
-/

namespace A115733.P11134730988283101343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A115732 (n + 1) - 1).toNat + 1

end

end A115733.P11134730988283101343

namespace A115733

/-- `A065855(A115732(n+1)-1)+1` -/
def P11134730988283101343.Spec : Prop :=
  ∀ n, P11134730988283101343.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P14568787584256606303

`A115732(n+1)-A258851(p?[A115732(n+1)])`
-/

namespace A115733.P14568787584256606303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1) - A258851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115733.P14568787584256606303

namespace A115733

/-- `A115732(n+1)-A258851(p?[A115732(n+1)])` -/
def P14568787584256606303.Spec : Prop :=
  ∀ n, P14568787584256606303.a n = A115733 (n + 1)

end A115733

/-! ## A115733.P9046929442472114864

`A115732(n+1)-1-A000720(A115732(n+1)-1)`
-/

namespace A115733.P9046929442472114864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1) - 1 - A000720 (A115732 (n + 1) - 1).toNat

end

end A115733.P9046929442472114864

namespace A115733

/-- `A115732(n+1)-1-A000720(A115732(n+1)-1)` -/
def P9046929442472114864.Spec : Prop :=
  ∀ n, P9046929442472114864.a n = A115733 (n + 1)

end A115733

/-!
# A115739: n is prime and digits of n^3 include digits of n as substring.

The programs for A115739, there is no canonical definition to state claims against.
-/

/-! ## A115739.P6672288796006182105

`p?[A029942(n+1)]`
-/

namespace A115739.P6672288796006182105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115739.P6672288796006182105

/-! ## A115739.P14220058779969785438

`p?[record[A029942(A065648(n))]]`
-/

namespace A115739.P14220058779969785438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115739.P14220058779969785438

/-! ## A115739.P14260030012209853009

`p?[record[A029942(A117910(n))]]`
-/

namespace A115739.P14260030012209853009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115739.P14260030012209853009

/-! ## A115739.P10915182117513780506

`p?[record[A029942(A291769(n))]]`
-/

namespace A115739.P10915182117513780506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115739.P10915182117513780506

/-! ## A115739.P8319160369623230966

`p?[record[A029942(A344180(n))]]`
-/

namespace A115739.P8319160369623230966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115739.P8319160369623230966

/-!
# A115740: Cubes whose digit reversal is a semiprime (A001358).

The programs for A115740, there is no canonical definition to state claims against.
-/

/-! ## A115740.P5055919738781675459

`∩[A115687(n+1), n*n²]`
-/

namespace A115740.P5055919738781675459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115740.P5055919738781675459

/-! ## A115740.P14718362186997078437

`∩[A000578(n), A115687(n+1)]`
-/

namespace A115740.P14718362186997078437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115740.P14718362186997078437

/-! ## A115740.P9004703670506470265

`∩[A054221(n), A115687(n+1)]`
-/

namespace A115740.P9004703670506470265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115740.P9004703670506470265

/-! ## A115740.P9956638191675543308

`∩[A109900(n), A115687(n+1)]`
-/

namespace A115740.P9956638191675543308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115740.P9956638191675543308

/-! ## A115740.P12156751095984260096

`∩[A066023(n+1), A115687(n+1)]`
-/

namespace A115740.P12156751095984260096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115740.P12156751095984260096

/-!
# A115742: Triangular numbers whose digit reversal is a semiprime (A001358).

The programs for A115742, there is no canonical definition to state claims against.
-/

/-! ## A115742.P10907145472693870237

`A000217(eq[3, A032741(A004158(n))])`
-/

namespace A115742.P10907145472693870237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115742.P10907145472693870237

/-! ## A115742.P454531207574732246

`eq[A105700(A004086(n)), A128710(n)]`
-/

namespace A115742.P454531207574732246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115742.P454531207574732246

/-! ## A115742.P7250290417395319023

`eq[A037126(n+1), A105700(A004086(n))]`
-/

namespace A115742.P7250290417395319023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115742.P7250290417395319023

/-! ## A115742.P14374650534158430112

`eq[A095660(n)+1, A105700(A004086(n))]`
-/

namespace A115742.P14374650534158430112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115742.P14374650534158430112

/-! ## A115742.P11225402725817633993

`eq[A074206(A004086(n)), A243729(n+1)]`
-/

namespace A115742.P11225402725817633993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115742.P11225402725817633993

/-!
# A115743: Squares that are the product of 2 palindromes greater than 1.

The programs for A115743, there is no canonical definition to state claims against.
-/

/-! ## A115743.P10335735729124221927

`∩[A115683(n+1), n²]`
-/

namespace A115743.P10335735729124221927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115743.P10335735729124221927

/-! ## A115743.P9652292967612442657

`∩[A000290(n), A115683(n+1)]`
-/

namespace A115743.P9652292967612442657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115743.P9652292967612442657

/-! ## A115743.P12137887475391672093

`∩[A034793(n+1), A115683(n+1)]`
-/

namespace A115743.P12137887475391672093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115743.P12137887475391672093

/-! ## A115743.P17313794214311014382

`record[A008833(A115683(n+1))]`
-/

namespace A115743.P17313794214311014382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115743.P17313794214311014382

/-! ## A115743.P12462381641254428561

`∩[A089237(n+1), A115683(n+1)]`
-/

namespace A115743.P12462381641254428561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115743.P12462381641254428561

/-!
# A115744: Triangular numbers that are the product of 2 palindromes greater than 1.

The programs for A115744, there is no canonical definition to state claims against.
-/

/-! ## A115744.P5530859099506804191

`∩[A115683(n+1), ∑[n]]`
-/

namespace A115744.P5530859099506804191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115744.P5530859099506804191

/-! ## A115744.P10002267002417673065

`∩[A000217(n), A115683(n+1)]`
-/

namespace A115744.P10002267002417673065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115744.P10002267002417673065

/-! ## A115744.P15469785762025381628

`∩[A253145(n), A115683(n+1)]`
-/

namespace A115744.P15469785762025381628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115744.P15469785762025381628

/-! ## A115744.P521248024663811194

`∩[A250252(2*n+1), A115683(n+2)]`
-/

namespace A115744.P521248024663811194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115744.P521248024663811194

/-! ## A115744.P13378567820103473613

`∩[A101881(2*n+3)+1, A115683(n+1)]`
-/

namespace A115744.P13378567820103473613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (2 * n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115744.P13378567820103473613

/-!
# A115745: Pentagonal numbers (A000326) that are the product of 2 palindromes greater than 1.

The programs for A115745, there is no canonical definition to state claims against.
-/

/-! ## A115745.P313381194835025114

`∩[A115683(n+1), A000326(n)]`
-/

namespace A115745.P313381194835025114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115745.P313381194835025114

/-!
# A115746: Product of the factorials of prime numbers, repetitions allowed.

The programs for A115746, there is no canonical definition to state claims against.
-/

/-! ## A115746.P10252668993161463509

`∪[A344179(n+1), A344181(n+2)]`
-/

namespace A115746.P10252668993161463509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115746.P10252668993161463509

/-! ## A115746.P6965824815569452924

`A001013(n+2)`
-/

namespace A115746.P6965824815569452924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 2)

end

end A115746.P6965824815569452924

/-! ## A115746.P13728772788928741152

`record[A001013(or(n, A000038(n)))]`
-/

namespace A115746.P13728772788928741152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115746.P13728772788928741152

/-! ## A115746.P2638424014064892035

`record[A001013(xor(n, A000038(n)))]`
-/

namespace A115746.P2638424014064892035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115746.P2638424014064892035

/-! ## A115746.P489022000994011147

`record[A001013(A126759(-xor(n, -1)))]`
-/

namespace A115746.P489022000994011147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (A126759 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115746.P489022000994011147

/-! ## A115746.P15745287887883050014

`record[A001013(A064318(n)-(n-1))]`
-/

namespace A115746.P15745287887883050014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (A064318 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115746.P15745287887883050014

/-! ## A115746.P15876258135143743474

`record[A001013(A000267(A004442(n)))]`
-/

namespace A115746.P15876258135143743474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115746.P15876258135143743474

/-! ## A115746.P10493683021350774043

`filter[A050622(n+1), A344438(#)]`
-/

namespace A115746.P10493683021350774043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A115746.P10493683021350774043

/-! ## A115746.P1260218237163634257

`filter[A066311(n+1), A344438(#)]`
-/

namespace A115746.P1260218237163634257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A115746.P1260218237163634257

/-! ## A115746.P1889934064511212313

`filter[A077255(n+1), A344438(#)]`
-/

namespace A115746.P1889934064511212313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A115746.P1889934064511212313

/-!
# A115747: Numbers k such that phi(k) + sigma(k) = (5/2)*k.

The programs for A115747, there is no canonical definition to state claims against.
-/

/-! ## A115747.P1838731572667158614

`∩[A153501(n+1), A291167(n+1)]`
-/

namespace A115747.P1838731572667158614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115747.P1838731572667158614

/-!
# A115750: a(n) = Sum_{k=0..2*n} binomial(2*n, k)*binomial(3*n, 2*n + 2*k).

The programs for A115750, there is no canonical definition to state claims against.
-/

/-! ## A115750.P15866138492007057449

`A357004(A225439(n))`
-/

namespace A115750.P15866138492007057449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (A225439 n).toNat

end

end A115750.P15866138492007057449

/-!
# A115751: a(1)=1. a(n) = number of positive divisors of n which are not among the first (n-1) terms of the sequence.

The programs for A115751, there is no canonical definition to state claims against.
-/

/-! ## A115751.P4704365802335790161

`A327966(A281118(n+1)^A281118(3*n+2))`
-/

namespace A115751.P4704365802335790161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (SequenceMachineLib.roundAway ((A281118 (n + 1) : ℚ) ^ (A281118 (3 * n + 2) : ℤ))).toNat

end

end A115751.P4704365802335790161

/-! ## A115751.P18335887944278474637

`A001221((A107748((n+1)²)+1)%A100662(n+1))`
-/

namespace A115751.P18335887944278474637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A107748 ((n + 1) ^ 2) + 1) (A100662 (n + 1))).toNat

end

end A115751.P18335887944278474637

/-! ## A115751.P15405291944942905931

`A308964(A319984(n+1)+1)`
-/

namespace A115751.P15405291944942905931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (A319984 (n + 1) + 1).toNat

end

end A115751.P15405291944942905931

/-! ## A115751.P11932017832412104486

`A001221(A107748((n+1)²)+1)`
-/

namespace A115751.P11932017832412104486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107748 ((n + 1) ^ 2) + 1).toNat

end

end A115751.P11932017832412104486

/-! ## A115751.P6280456887644284604

`∑{p}[A107748((n+1)²)+1, A001222(#)]`
-/

namespace A115751.P6280456887644284604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107748 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A115751.P6280456887644284604

/-!
# A115752: Number of words of length n+1 created with the letters a,b,c with more c's than b's and more b's than a's.

The programs for A115752, there is no canonical definition to state claims against.
-/

/-! ## A115752.P16046555226606301034

`A092255(n+1)-record[A005213(n)]`
-/

namespace A115752.P16046555226606301034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092255 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115752.P16046555226606301034

/-! ## A115752.P4889305224526403127

`A092255(n+1)-A002426(n+1)`
-/

namespace A115752.P4889305224526403127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092255 (n + 1) - A002426 (n + 1)

end

end A115752.P4889305224526403127

/-! ## A115752.P13850252308997699561

`A092255(n+1)-record[A094531(n)]`
-/

namespace A115752.P13850252308997699561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092255 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115752.P13850252308997699561

/-! ## A115752.P637287309130834330

`A092255(A341619(2^n+1)+n+1)%record[A005213(n)]`
-/

namespace A115752.P637287309130834330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092255 (A341619 (2 ^ n + 1) + (n + 1 : ℤ)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A115752.P637287309130834330

/-! ## A115752.P13464528012291549221

`A004483(A007837(n+1))`
-/

namespace A115752.P13464528012291549221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A007837 (n + 1)).toNat

end

end A115752.P13464528012291549221

/-!
# A115754: Decimal expansion of sqrt(3/2).

The programs for A115754, there is no canonical definition to state claims against.
-/

/-! ## A115754.P17008192547885176184

`A176051(n)-A000007(n)`
-/

namespace A115754.P17008192547885176184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176051 (n + 1) - A000007 n

end

end A115754.P17008192547885176184

/-! ## A115754.P3366203547053314390

`A176051(n)/A000038(n)!`
-/

namespace A115754.P3366203547053314390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176051 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A115754.P3366203547053314390

/-! ## A115754.P770615298671979629

`A040002(n)/4*A176051(n)`
-/

namespace A115754.P770615298671979629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040002 n : ℚ) / 4 * (A176051 (n + 1) : ℚ)

end

end A115754.P770615298671979629

/-! ## A115754.P4505096247011230699

`A176051(n)-A008683(A008574(n))`
-/

namespace A115754.P4505096247011230699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176051 (n + 1) - A008683 (A008574 n).toNat

end

end A115754.P4505096247011230699

/-! ## A115754.P7941609679319937877

`A176051(n)-A000035(A071185(n+1))`
-/

namespace A115754.P7941609679319937877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176051 (n + 1) - A000035 (A071185 (n + 1)).toNat

end

end A115754.P7941609679319937877

/-! ## A115754.P8265624465729886174

`A176051(n)-A000035(A002202(n+1))`
-/

namespace A115754.P8265624465729886174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176051 (n + 1) - A000035 (A002202 (n + 1)).toNat

end

end A115754.P8265624465729886174

/-! ## A115754.P2836720254988765412

`A176051(n)-A000035(A008458(n))`
-/

namespace A115754.P2836720254988765412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176051 (n + 1) - A000035 (A008458 n).toNat

end

end A115754.P2836720254988765412

/-!
# A115756: Triangle where a(1,1)=1. a(n,m) = number of terms among first (n-1) terms of sequence A115757 which are coprime to m. A115757(n) is the sum of terms in the n-th row of triangle A115756.

The programs for A115756, there is no canonical definition to state claims against.
-/

/-! ## A115756.P2823912459700735924

`A007895(eq[A107017(n+1), A200650(n+1)])`
-/

namespace A115756.P2823912459700735924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115756.P2823912459700735924

/-! ## A115756.P12448199789381274086

`A001817(A328924(n)+2+n)`
-/

namespace A115756.P12448199789381274086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A328924 n + 2 + (n : ℤ)).toNat

end

end A115756.P12448199789381274086

/-! ## A115756.P14407098542761491149

`A000005(A002260(record[A104040(n)]))`
-/

namespace A115756.P14407098542761491149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A115756.P14407098542761491149

/-! ## A115756.P6016286594787868529

`A055640(A057335(n)*A112626(n))`
-/

namespace A115756.P6016286594787868529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A057335 n * A112626 n).toNat

end

end A115756.P6016286594787868529

/-! ## A115756.P6529633216798510635

`A322867(A333225(n+1)+A320801(n))`
-/

namespace A115756.P6529633216798510635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (A333225 (n + 1) + A320801 n).toNat

end

end A115756.P6529633216798510635

/-!
# A115757: a(n) is the sum of terms in the n-th row of triangle A115756.

The programs for A115757, there is no canonical definition to state claims against.
-/

/-! ## A115757.P8325357814262687864

`A111755(A320921(n))+A111711(n+1)`
-/

namespace A115757.P8325357814262687864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (A320921 n).toNat + A111711 (n + 1)

end

end A115757.P8325357814262687864

/-! ## A115757.P1087698963234312925

`A070450(A275594(n+1))+A046030(n+1)`
-/

namespace A115757.P1087698963234312925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070450 (A275594 (n + 1)).toNat + A046030 (n + 1)

end

end A115757.P1087698963234312925

/-!
# A115758: Triangle where a(1,1)=0. a(n,m) = number of terms among first (n-1) terms of sequence A115759 which are coprime to m. A115759(n) is the sum of terms in the n-th row of triangle A115758.

The programs for A115758, there is no canonical definition to state claims against.
-/

/-! ## A115758.P15346872082105437081

`A076221(n+1)-A095827(A123519(n))`
-/

namespace A115758.P15346872082105437081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076221 (n + 1) - A095827 (A123519 n).toNat

end

end A115758.P15346872082105437081

/-! ## A115758.P3625735179481974321

`A002024(n+1)-A001876(A000213(n))+A010054(n)-1`
-/

namespace A115758.P3625735179481974321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A001876 (A000213 n).toNat + (A010054 n - 1)

end

end A115758.P3625735179481974321

/-! ## A115758.P18243340340080343631

`A001221(A159930(n+1)*A270339(n+1))+A010054(n)-1`
-/

namespace A115758.P18243340340080343631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A159930 (n + 1) * A270339 (n + 1)).toNat + (A010054 n - 1)

end

end A115758.P18243340340080343631

/-! ## A115758.P8631837797200964942

`A072273(A097905(n+1)²)`
-/

namespace A115758.P8631837797200964942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A097905 (n + 1) ^ 2).toNat

end

end A115758.P8631837797200964942

/-! ## A115758.P8162199579255738761

`A385213(A038719(n))`
-/

namespace A115758.P8162199579255738761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A038719 n).toNat

end

end A115758.P8162199579255738761

/-!
# A115759: a(n) is the sum of terms in the n-th row of triangle A115758.

The programs for A115759, there is no canonical definition to state claims against.
-/

/-! ## A115759.P3377026444053132551

`A347697(A187274(n)-A000096(n))`
-/

namespace A115759.P3377026444053132551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A187274 n - A000096 n).toNat

end

end A115759.P3377026444053132551

/-! ## A115759.P2898356949207834331

`A347697(A187274(n)-A130824(n))`
-/

namespace A115759.P2898356949207834331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A187274 n - A130824 n).toNat

end

end A115759.P2898356949207834331

/-! ## A115759.P7206911438358489228

`A265436(A052905(n))-A033273(n+1)`
-/

namespace A115759.P7206911438358489228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A052905 n).toNat - A033273 (n + 1)

end

end A115759.P7206911438358489228

/-! ## A115759.P16227857032035234170

`A347697(A187274(n)-A215721(n+1))`
-/

namespace A115759.P16227857032035234170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A187274 n - A215721 (n + 1)).toNat

end

end A115759.P16227857032035234170

/-!
# A115760: Slowest growing sequence of numbers having the prime-pairwise-average property: if i

The programs for A115760, there is no canonical definition to state claims against.
-/

/-! ## A115760.P13964063709338204521

`2*A103828(n+1)+1`
-/

namespace A115760.P13964063709338204521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103828 (n + 1) + 1

end

end A115760.P13964063709338204521

/-! ## A115760.P10272470472958443183

`(1-A098725(n))!+A103828(n+1)+A103828(n+1)`
-/

namespace A115760.P10272470472958443183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A098725 n).toNat : ℤ) + (A103828 (n + 1) + A103828 (n + 1))

end

end A115760.P10272470472958443183

/-! ## A115760.P12087340797649016959

`A103828(n+1)+A103828(n+1)-A057428(A016777(n))`
-/

namespace A115760.P12087340797649016959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103828 (n + 1) + (A103828 (n + 1) - A057428 (A016777 n).toNat)

end

end A115760.P12087340797649016959

/-! ## A115760.P13704772402837658706

`A103828(n+1)+A103828(n+1)+A001222(A052493(n+1))`
-/

namespace A115760.P13704772402837658706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103828 (n + 1) + (A103828 (n + 1) + A001222 (A052493 (n + 1)).toNat)

end

end A115760.P13704772402837658706

/-! ## A115760.P7444349642062964610

`2*A128933(n+1)-1`
-/

namespace A115760.P7444349642062964610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128933 (n + 1) - 1

end

end A115760.P7444349642062964610

/-!
# A115761: Numbers k such that the digits of k^2, reversed, include the digits of k as a substring.

The programs for A115761, there is no canonical definition to state claims against.
-/

/-! ## A115761.P1280353352587752803

`sqrt(A179803(n+1))`
-/

namespace A115761.P1280353352587752803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179803 (n + 1) : ℝ)

end

end A115761.P1280353352587752803

/-! ## A115761.P2249509457864960397

`root(A179803(n+1), ratio[A000079(n)])`
-/

namespace A115761.P2249509457864960397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179803 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A115761.P2249509457864960397

/-! ## A115761.P354279496158950842

`root(A179803(n+1), gcd(2, A005843(n)))`
-/

namespace A115761.P354279496158950842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179803 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A115761.P354279496158950842

/-! ## A115761.P16730781465324018223

`root(A179803(n+1), lcm(2, A040001(n)))`
-/

namespace A115761.P16730781465324018223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179803 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A040001 n) : ℝ))

end

end A115761.P16730781465324018223

/-! ## A115761.P9831408079163674833

`root(A179803(n+1), A001316(A001316(n)))`
-/

namespace A115761.P9831408079163674833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179803 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A115761.P9831408079163674833

/-!
# A115766: Distance from the n-th prime to the nearest semiprime.

The programs for A115766, there is no canonical definition to state claims against.
-/

/-! ## A115766.P9444055653263640335

`A145643(A002636(n+3)^A186726(n))`
-/

namespace A115766.P9444055653263640335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145643 (SequenceMachineLib.roundAway ((A002636 (n + 3) : ℚ) ^ (A186726 n : ℤ))).toNat

end

end A115766.P9444055653263640335

/-! ## A115766.P2998480380608866559

`A066099(A051036(n+2)+A001175(n+1))`
-/

namespace A115766.P2998480380608866559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A051036 (n + 2) + A001175 (n + 1)).toNat

end

end A115766.P2998480380608866559

/-! ## A115766.P7725627012745807964

`A261095(A048387(n+1)+2)`
-/

namespace A115766.P7725627012745807964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A048387 (n + 1) + 2).toNat

end

end A115766.P7725627012745807964

/-! ## A115766.P1745784504609518979

`A091090(A275896(Δ[A182027(n)]))`
-/

namespace A115766.P1745784504609518979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A275896 (f1 (n + 1) - f1 n).toNat).toNat

end

end A115766.P1745784504609518979

/-! ## A115766.P5707234043255978655

`A035400(A027423(n)*A251092(n+1))`
-/

namespace A115766.P5707234043255978655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035400 (A027423 n * A251092 (n + 1)).toNat

end

end A115766.P5707234043255978655

/-!
# A115767: Integers i such that 2*i XOR 5*i = 3*i.

The programs for A115767, there is no canonical definition to state claims against.
-/

/-! ## A115767.P4798035185234223736

`∪[A048719(n), A115768(n+1)]`
-/

namespace A115767.P4798035185234223736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115767.P4798035185234223736

/-! ## A115767.P16619973770849749063

`record[n-and(2*n, 3*n)]`
-/

namespace A115767.P16619973770849749063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land (2 * n) (3 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115767.P16619973770849749063

/-! ## A115767.P3359660777871423618

`record[(xor(2*n, 3*n)-n)/4]`
-/

namespace A115767.P3359660777871423618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor (2 * n) (3 * n) : ℤ) - (n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115767.P3359660777871423618

/-! ## A115767.P11606867304776025610

`eq[0, and(2*n, 3*n)]`
-/

namespace A115767.P11606867304776025610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115767.P11606867304776025610

/-! ## A115767.P3122298666400962022

`lt[and(2*n, 3*n), 1]`
-/

namespace A115767.P3122298666400962022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115767.P3122298666400962022

/-! ## A115767.P5023008221601220748

`record[and(n, -comp[3*n])]`
-/

namespace A115767.P5023008221601220748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115767.P5023008221601220748

/-! ## A115767.P18071617241970224744

`eq[A048735(n), A213526(n)]`
-/

namespace A115767.P18071617241970224744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115767.P18071617241970224744

/-! ## A115767.P5302259834815618938

`eq[A178892(n), A269173(n)]`
-/

namespace A115767.P5302259834815618938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115767.P5302259834815618938

/-! ## A115767.P8389652902186186228

`eq[A213526(n), A374355(n)]`
-/

namespace A115767.P8389652902186186228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115767.P8389652902186186228

/-! ## A115767.P11872903088121290127

`eq[1, A008574(and(n, A032766(n)))]`
-/

namespace A115767.P11872903088121290127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.land (n : ℤ) (A032766 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115767.P11872903088121290127

/-! ## A115767.P18122177448332206126

`eq[A048730(n)+n, A048725(n)]`
-/

namespace A115767.P18122177448332206126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115767.P18122177448332206126

/-!
# A115768: Integers i such that 2*i XOR 5*i = 3*i, but 4*i XOR i is not 5*i.

The programs for A115768, there is no canonical definition to state claims against.
-/

/-! ## A115768.P17522748841961681760

`∩[A004748(n+1), A115767(n)]`
-/

namespace A115768.P17522748841961681760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115768.P17522748841961681760

/-! ## A115768.P9629902858414545769

`∩[A180054(n+1), A115767(n)]`
-/

namespace A115768.P9629902858414545769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115768.P9629902858414545769

/-! ## A115768.P15574189469967077144

`∩[A377169(n+1), A115767(n)]`
-/

namespace A115768.P15574189469967077144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115768.P15574189469967077144

/-! ## A115768.P936796694603884949

`∩[A180054(n+1), A358521(n+1)]`
-/

namespace A115768.P936796694603884949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115768.P936796694603884949

/-!
# A115769: Sequence A115768 in binary.

The programs for A115769, there is no canonical definition to state claims against.
-/

/-! ## A115769.P11448971923657511458

`A007088(A115768(n+1))`
-/

namespace A115769.P11448971923657511458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115768 (n + 1)).toNat

end

end A115769.P11448971923657511458

/-! ## A115769.P4534814155038822393

`A007088(∩[A004748(n+1), A115767(n)])`
-/

namespace A115769.P4534814155038822393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115769.P4534814155038822393

/-! ## A115769.P13844708230874861554

`A007088(∩[A180054(n+1), A115767(n)])`
-/

namespace A115769.P13844708230874861554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115769.P13844708230874861554

/-! ## A115769.P8089315425750225794

`A185544(2*A115768(n+1))`
-/

namespace A115769.P8089315425750225794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115768 (n + 1)).toNat

end

end A115769.P8089315425750225794

/-!
# A115770: Numbers k such that 7*k = A048720(11,k), where A048720 is carryless base-2 multiplication.

The programs for A115770, there is no canonical definition to state claims against.
-/

/-! ## A115770.P8775830483028153854

`∩[A173024(n+1), A391742(n+1)]`
-/

namespace A115770.P8775830483028153854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P8775830483028153854

/-! ## A115770.P5299847459985490064

`∩[A391742(n+1), A048717(n)]`
-/

namespace A115770.P5299847459985490064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P5299847459985490064

/-! ## A115770.P6434598547843172495

`∩[A173024(n+1), A391740(n+1)]`
-/

namespace A115770.P6434598547843172495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P6434598547843172495

/-! ## A115770.P2712919233088254257

`∩[A077459(n+1), A391742(n+1)]`
-/

namespace A115770.P2712919233088254257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P2712919233088254257

/-! ## A115770.P5853476439965468539

`∩[A391742(n+1), A269177(n)]`
-/

namespace A115770.P5853476439965468539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P5853476439965468539

/-! ## A115770.P10912969837715257336

`filter[A391742(n+1), A089013(#)]`
-/

namespace A115770.P10912969837715257336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A115770.P10912969837715257336

/-! ## A115770.P3428260167099258502

`eq[0, A342697(A048724(n))]`
-/

namespace A115770.P3428260167099258502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115770.P3428260167099258502

/-! ## A115770.P17205009124551472846

`∩[A186083(n+1), A391742(n+1)]`
-/

namespace A115770.P17205009124551472846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115770.P17205009124551472846

/-! ## A115770.P17537868651389924028

`record[A142150(A115872(A167499(n)))]`
-/

namespace A115770.P17537868651389924028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A115872 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115770.P17537868651389924028

/-! ## A115770.P18407766332548409431

`record[A178895(n)-A269173(A213064(n))]`
-/

namespace A115770.P18407766332548409431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178895 n - A269173 (A213064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115770.P18407766332548409431

/-!
# A115771: Sequence A115770 in binary.

The programs for A115771, there is no canonical definition to state claims against.
-/

/-! ## A115771.P10144234145255644757

`A007088(A115770(n+1))`
-/

namespace A115771.P10144234145255644757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115770 (n + 1)).toNat

end

end A115771.P10144234145255644757

/-! ## A115771.P8675136784121192441

`record[A221714(A120634(n)%A342274(n))]`
-/

namespace A115771.P8675136784121192441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (Int.tmod (A120634 n) (A342274 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115771.P8675136784121192441

/-! ## A115771.P7384390623577270820

`A007088(A173024(n+1))%A053018(3*(n+1))`
-/

namespace A115771.P7384390623577270820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A173024 (n + 1)).toNat) (A053018 (3 * (n + 1)))

end

end A115771.P7384390623577270820

/-! ## A115771.P3598244726388358676

`A007088(A173024(n+1)^A077728(n+1))`
-/

namespace A115771.P3598244726388358676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A173024 (n + 1) : ℚ) ^ (A077728 (n + 1) : ℤ))).toNat

end

end A115771.P3598244726388358676

/-!
# A115772: Integers i such that 13*i = A048720bi(21,i).

The programs for A115772, there is no canonical definition to state claims against.
-/

/-! ## A115772.P3905950850471237341

`eq[0, A048729(xor(n, 4*n))]`
-/

namespace A115772.P3905950850471237341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (Nat.xor n (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P3905950850471237341

/-! ## A115772.P17202305015597211674

`eq[0, A048729(5*n-2*and(n, 4*n))]`
-/

namespace A115772.P17202305015597211674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (5 * n - 2 * Nat.land n (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P17202305015597211674

/-! ## A115772.P6304460766035149155

`eq[0, A048729(A048725(n))]`
-/

namespace A115772.P6304460766035149155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (A048725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P6304460766035149155

/-! ## A115772.P8369044814035921451

`eq[0, and(A048725(n), A064706(n))]`
-/

namespace A115772.P8369044814035921451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048725 n) (A064706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P8369044814035921451

/-! ## A115772.P1589160576200531237

`∪[A115776(n+1), A115774(n)]`
-/

namespace A115772.P1589160576200531237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115772.P1589160576200531237

/-! ## A115772.P1900721227421092544

`eq[0, A048729(5*n-A048729(n))]`
-/

namespace A115772.P1900721227421092544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 ((5 * n : ℤ) - A048729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P1900721227421092544

/-! ## A115772.P6371680757157993825

`eq[0, A048729(A277823(n+1)-A132429(n))]`
-/

namespace A115772.P6371680757157993825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (A277823 (n + 1) - A132429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115772.P6371680757157993825

/-!
# A115773: Sequence A115772 in binary.

The programs for A115773, there is no canonical definition to state claims against.
-/

/-! ## A115773.P882317946312506292

`A007088(A115772(n))`
-/

namespace A115773.P882317946312506292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115772 n).toNat

end

end A115773.P882317946312506292

/-! ## A115773.P6093008585655273061

`A185544(2*A115772(n))`
-/

namespace A115773.P6093008585655273061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115772 n).toNat

end

end A115773.P6093008585655273061

/-! ## A115773.P13320542705588896355

`∪[A115781(n+1), A115775(n)]`
-/

namespace A115773.P13320542705588896355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115775 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115773.P13320542705588896355

/-! ## A115773.P13126894113133915606

`A097256(eq[0, A048729(xor(n, 4*n))])/9`
-/

namespace A115773.P13126894113133915606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (Nat.xor n (4 * n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 9

end

end A115773.P13126894113133915606

/-! ## A115773.P9030633171028309255

`A007088(eq[0, A048729(5*n-2*and(n, 4*n))])`
-/

namespace A115773.P9030633171028309255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (5 * n - 2 * Nat.land n (4 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115773.P9030633171028309255

/-!
# A115774: Integers i such that 15*i = A048720bi(23,i).

The programs for A115774, there is no canonical definition to state claims against.
-/

/-! ## A115774.P14302487384666672747

`eq[A048728(n), A048730(A048725(n))]`
-/

namespace A115774.P14302487384666672747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 (A048725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115774.P14302487384666672747

/-! ## A115774.P14107748164729757727

`eq[A048733(A048725(n)), A048735(n)]`
-/

namespace A115774.P14107748164729757727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A048725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115774.P14107748164729757727

/-! ## A115774.P15465434125570231756

`A062052(A028310(n))%A001157(A000285(n))`
-/

namespace A115774.P15465434125570231756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062052 (A028310 n).toNat) (A001157 (A000285 n).toNat)

end

end A115774.P15465434125570231756

/-! ## A115774.P16676506462740159161

`∩[A115772(n), A115823(n)]`
-/

namespace A115774.P16676506462740159161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115774.P16676506462740159161

/-! ## A115774.P7015842458188790791

`∩[A115772(n), A115845(n+1)]`
-/

namespace A115774.P7015842458188790791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115774.P7015842458188790791

/-!
# A115775: Sequence A115774 in binary.

The programs for A115775, there is no canonical definition to state claims against.
-/

/-! ## A115775.P9065813074410003913

`A007088(A115774(n))`
-/

namespace A115775.P9065813074410003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115774 n).toNat

end

end A115775.P9065813074410003913

/-! ## A115775.P16196970094196116698

`A185544(2*A115774(n))`
-/

namespace A115775.P16196970094196116698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115774 n).toNat

end

end A115775.P16196970094196116698

/-! ## A115775.P5791861376465381148

`A007088(∩[A115772(n), A115823(n)])`
-/

namespace A115775.P5791861376465381148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115775.P5791861376465381148

/-! ## A115775.P16281161658520573631

`∩[A007088(A115772(n)), A115824(n)]`
-/

namespace A115775.P16281161658520573631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115775.P16281161658520573631

/-! ## A115775.P3251992299647589974

`A007088(record[A115216(n)%A108267(n)])`
-/

namespace A115775.P3251992299647589974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115216 n) (A108267 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115775.P3251992299647589974

/-!
# A115776: Integers i such that 13*i = A048720bi(21,i), but 15*i <> A048720bi(23,i).

The programs for A115776, there is no canonical definition to state claims against.
-/

/-! ## A115776.P11790786049510400232

`∩[A115772(n), A237883(n+1)]`
-/

namespace A115776.P11790786049510400232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115776.P11790786049510400232

/-! ## A115776.P6993207134167200119

`∩[A115772(n), A176237(n+1)]`
-/

namespace A115776.P6993207134167200119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115776.P6993207134167200119

/-! ## A115776.P1659272649774943610

`filter[A115772(n), A395285(#)]`
-/

namespace A115776.P1659272649774943610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395285 (f1 j).toNat = 1) n)

end

end A115776.P1659272649774943610

/-! ## A115776.P5414035271785479760

`filter[A178891(n), A395285(#)]`
-/

namespace A115776.P5414035271785479760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395285 (f1 j).toNat = 1) n)

end

end A115776.P5414035271785479760

/-!
# A115779: Consider the Levenshtein distance between k considered as a decimal string and k considered as a binary string. Then a(n) is the greatest number m such that the Levenshtein distance is n or 0 if no such number exists.

The programs for A115779, there is no canonical definition to state claims against.
-/

/-! ## A115779.P6504476460993721256

`A159325(A172285(n+1))`
-/

namespace A115779.P6504476460993721256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159325 (A172285 (n + 1)).toNat

end

end A115779.P6504476460993721256

/-!
# A115781: Sequence A115776 in binary.

The programs for A115781, there is no canonical definition to state claims against.
-/

/-! ## A115781.P9536145379083784280

`A007088(A115776(n+1))`
-/

namespace A115781.P9536145379083784280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115776 (n + 1)).toNat

end

end A115781.P9536145379083784280

/-! ## A115781.P13389196810700243959

`A185544(2*A115776(n+1))`
-/

namespace A115781.P13389196810700243959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115776 (n + 1)).toNat

end

end A115781.P13389196810700243959

/-!
# A115782: Primes generated by pairwise averages of terms in A115760.

The programs for A115782, there is no canonical definition to state claims against.
-/

/-! ## A115782.P1033748130109331611

`A000040(A307692(2*(n+1))+A247782(n+1))`
-/

namespace A115782.P1033748130109331611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A307692 (2 * (n + 1)) + A247782 (n + 1)).toNat

end

end A115782.P1033748130109331611

/-! ## A115782.P2924248118328095313

`A000040(lt[A354802(3*(n+1)), A072827(n+1)])`
-/

namespace A115782.P2924248118328095313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354802 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115782.P2924248118328095313

/-! ## A115782.P8173477674727679074

`A065091(lt[A342860(n+3), A352826(3*n+1)])`
-/

namespace A115782.P8173477674727679074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342860 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115782.P8173477674727679074

/-!
# A115785: Smallest prime number p such that p - prime(1)#, p - prime(2)#, ..., p - prime(n)# are all prime, where prime(i)# is the primorial of the i-th prime (A002110(i)).

The programs for A115785, there is no canonical definition to state claims against.
-/

/-! ## A115785.P8419583086901326669

`A325143(A240936(n)+A008137(n))`
-/

namespace A115785.P8419583086901326669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (A240936 n + A008137 n).toNat

end

end A115785.P8419583086901326669

/-!
# A115788: a(n) = floor(n*Pi) mod 2.

The programs for A115788, the canonical program `A115788.P13674972467552780509` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115788 has offset 1).

The definition of A115788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115788.P13674972467552780509

`A000035(A022844(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115788

/-- `A000035(A022844(n+1))` -/
def P13674972467552780509.Spec : Prop :=
  ∀ n, P13674972467552780509.a n = A115788 (n + 1)

theorem P13674972467552780509.correct : P13674972467552780509.Spec := by
  intro n
  simp only [A115788, Nat.add_sub_cancel]

end A115788

/-!
# A115789: a(n) = (floor((n+1)*Pi) - floor(n*Pi)) mod 2.

The programs for A115789, there is no canonical definition to state claims against.
-/

/-! ## A115789.P3657894096821115653

`1-A115790(n)`
-/

namespace A115789.P3657894096821115653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115790 n

end

end A115789.P3657894096821115653

/-!
# A115790: a(n) = 1 - (floor((n+1)*Pi) - floor(n*Pi)) mod 2.

The programs for A115790, there is no canonical definition to state claims against.
-/

/-! ## A115790.P17170683955817801497

`1-A115789(n)`
-/

namespace A115790.P17170683955817801497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115789 n

end

end A115790.P17170683955817801497

/-!
# A115791: Number of different ways to select n elements from five sets of n elements under the precondition of choosing at least one element from each set.

The programs for A115791, the canonical program `A115791.P4073025030002286088` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115791 has offset 1).

The definition of A115791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115791.P4073025030002286088

`C(5*(n+1), n+1)-5*C(4*(n+1), n+1)+10*C(3*(n+1), n+1)-10*C(2*(n+1), n+1)+5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115791

/-- `C(5*(n+1), n+1)-5*C(4*(n+1), n+1)+10*C(3*(n+1), n+1)-10*C(2*(n+1), n+1)+5` -/
def P4073025030002286088.Spec : Prop :=
  ∀ n, P4073025030002286088.a n = A115791 (n + 1)

theorem P4073025030002286088.correct : P4073025030002286088.Spec := by
  intro n
  simp only [A115791, Nat.add_sub_cancel]

end A115791

/-! ## A115791.P5525707434970237730

`A181614(A000110(n))*A215453(n+1)`
-/

namespace A115791.P5525707434970237730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181614 (A000110 n).toNat * A215453 (n + 1)

end

end A115791.P5525707434970237730

namespace A115791

/-- `A181614(A000110(n))*A215453(n+1)` -/
def P5525707434970237730.Spec : Prop :=
  ∀ n, P5525707434970237730.a n = A115791 (n + 1)

end A115791

/-!
# A115792: a(n) = ceiling(g(A000073(n))) with g(k) = (k-1)^2/(4k).

The programs for A115792, the canonical program `A115792.P92138196797629265` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115792 has offset 2).

The definition of A115792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115792.P92138196797629265

`a(n-1)+a(n-2)+a(n-3)-A132151(n+4)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115792

/-- `a(n-1)+a(n-2)+a(n-3)-A132151(n+4)` -/
def P92138196797629265.Spec : Prop :=
  ∀ n, P92138196797629265.a n = A115792 (n + 2)

theorem P92138196797629265.correct : P92138196797629265.Spec := by
  intro n
  simp only [A115792, Nat.add_sub_cancel]

end A115792

/-! ## A115792.P4028726787848260035

`ceil(A089068(n)/4)`
-/

namespace A115792.P4028726787848260035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089068 n : ℚ) / 4⌉

end

end A115792.P4028726787848260035

namespace A115792

/-- `ceil(A089068(n)/4)` -/
def P4028726787848260035.Spec : Prop :=
  ∀ n, P4028726787848260035.a n = A115792 (n + 2)

end A115792

/-! ## A115792.P13544933237883101406

`round(A282718(n)/4)`
-/

namespace A115792.P13544933237883101406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A282718 n : ℚ) / 4)

end

end A115792.P13544933237883101406

namespace A115792

/-- `round(A282718(n)/4)` -/
def P13544933237883101406.Spec : Prop :=
  ∀ n, P13544933237883101406.a n = A115792 (n + 2)

end A115792

/-! ## A115792.P10700976495898744779

`round(A135491(n)/8)`
-/

namespace A115792.P10700976495898744779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135491 n : ℚ) / 8)

end

end A115792.P10700976495898744779

namespace A115792

/-- `round(A135491(n)/8)` -/
def P10700976495898744779.Spec : Prop :=
  ∀ n, P10700976495898744779.a n = A115792 (n + 2)

end A115792

/-! ## A115792.P5513570268025138445

`round(A104580(∑[n])/4)`
-/

namespace A115792.P5513570268025138445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104580 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4)

end

end A115792.P5513570268025138445

namespace A115792

/-- `round(A104580(∑[n])/4)` -/
def P5513570268025138445.Spec : Prop :=
  ∀ n, P5513570268025138445.a n = A115792 (n + 2)

end A115792

/-! ## A115792.P718245522213177744

`round(A106522(∑[n])/4)`
-/

namespace A115792.P718245522213177744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106522 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4)

end

end A115792.P718245522213177744

namespace A115792

/-- `round(A106522(∑[n])/4)` -/
def P718245522213177744.Spec : Prop :=
  ∀ n, P718245522213177744.a n = A115792 (n + 2)

end A115792

/-!
# A115793: Integers i such that i XOR 10i = 11i.

The programs for A115793, the canonical program `A115793.P7659724966465355234` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115793 has offset 1).

The definition of A115793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115793.P7659724966465355234

`eq[0, and(n, 10*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115793

/-- `eq[0, and(n, 10*n)]` -/
def P7659724966465355234.Spec : Prop :=
  ∀ n, (P7659724966465355234.a n : ℤ) = A115793 (n + 1)

theorem P7659724966465355234.correct : P7659724966465355234.Spec := by
  intro n
  simp only [A115793, Nat.add_sub_cancel]

end A115793

/-! ## A115793.P13799124988858452602

`lt[and(n, 10*n), 1]`
-/

namespace A115793.P13799124988858452602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (10 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115793.P13799124988858452602

namespace A115793

/-- `lt[and(n, 10*n), 1]` -/
def P13799124988858452602.Spec : Prop :=
  ∀ n, (P13799124988858452602.a n : ℤ) = A115793 (n + 1)

end A115793

/-! ## A115793.P11911645139623144735

`eq[A008593(n), A178736(n)]`
-/

namespace A115793.P11911645139623144735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115793.P11911645139623144735

namespace A115793

/-- `eq[A008593(n), A178736(n)]` -/
def P11911645139623144735.Spec : Prop :=
  ∀ n, (P11911645139623144735.a n : ℤ) = A115793 (n + 1)

end A115793

/-! ## A115793.P2693431127973921969

`eq[A008593(n), A178897(n)]`
-/

namespace A115793.P2693431127973921969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115793.P2693431127973921969

namespace A115793

/-- `eq[A008593(n), A178897(n)]` -/
def P2693431127973921969.Spec : Prop :=
  ∀ n, (P2693431127973921969.a n : ℤ) = A115793 (n + 1)

end A115793

/-! ## A115793.P7545300179306256306

`eq[A178736(n), A178897(n)]`
-/

namespace A115793.P7545300179306256306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115793.P7545300179306256306

namespace A115793

/-- `eq[A178736(n), A178897(n)]` -/
def P7545300179306256306.Spec : Prop :=
  ∀ n, (P7545300179306256306.a n : ℤ) = A115793 (n + 1)

end A115793

/-!
# A115794: Sequence A115793 in binary.

The programs for A115794, the canonical program `A115794.P4559744070722464181` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115794 has offset 0).

The definition of A115794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115794.P4559744070722464181

`record[gcd(and(n, 10*n), A007088(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115794

/-- `record[gcd(and(n, 10*n), A007088(n))]` -/
def P4559744070722464181.Spec : Prop :=
  ∀ n, (P4559744070722464181.a n : ℤ) = A115794 n

theorem P4559744070722464181.correct : P4559744070722464181.Spec := by
  intro n
  simp only [A115794]

end A115794

/-! ## A115794.P9719205662860958319

`A007088(A115793(n+1))`
-/

namespace A115794.P9719205662860958319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115793 (n + 1)).toNat

end

end A115794.P9719205662860958319

namespace A115794

/-- `A007088(A115793(n+1))` -/
def P9719205662860958319.Spec : Prop :=
  ∀ n, P9719205662860958319.a n = A115794 n

end A115794

/-! ## A115794.P12743736890107590570

`A185544(2*lt[and(n, 10*n), 1])`
-/

namespace A115794.P12743736890107590570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (10 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115794.P12743736890107590570

namespace A115794

/-- `A185544(2*lt[and(n, 10*n), 1])` -/
def P12743736890107590570.Spec : Prop :=
  ∀ n, P12743736890107590570.a n = A115794 n

end A115794

/-! ## A115794.P733025527222083679

`A185544(2*A115793(n+1))`
-/

namespace A115794.P733025527222083679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115793 (n + 1)).toNat

end

end A115794.P733025527222083679

namespace A115794

/-- `A185544(2*A115793(n+1))` -/
def P733025527222083679.Spec : Prop :=
  ∀ n, P733025527222083679.a n = A115794 n

end A115794

/-! ## A115794.P12114832365129442322

`A185544(2*record[gcd(n, A178736(2*n))])`
-/

namespace A115794.P12114832365129442322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A178736 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A115794.P12114832365129442322

namespace A115794

/-- `A185544(2*record[gcd(n, A178736(2*n))])` -/
def P12114832365129442322.Spec : Prop :=
  ∀ n, P12114832365129442322.a n = A115794 n

end A115794

/-! ## A115794.P13934075669615921935

`A185544(2*eq[A008593(n), A178897(n)])`
-/

namespace A115794.P13934075669615921935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115794.P13934075669615921935

namespace A115794

/-- `A185544(2*eq[A008593(n), A178897(n)])` -/
def P13934075669615921935.Spec : Prop :=
  ∀ n, P13934075669615921935.a n = A115794 n

end A115794

/-!
# A115795: Integers k such that 2*k XOR 9*k = 11*k.

The programs for A115795, the canonical program `A115795.P638431974062550195` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115795 has offset 1).

The definition of A115795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115795.P638431974062550195

`eq[0, and(2*n, 9*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115795

/-- `eq[0, and(2*n, 9*n)]` -/
def P638431974062550195.Spec : Prop :=
  ∀ n, (P638431974062550195.a n : ℤ) = A115795 (n + 1)

theorem P638431974062550195.correct : P638431974062550195.Spec := by
  intro n
  simp only [A115795, Nat.add_sub_cancel]

end A115795

/-! ## A115795.P7413071774233072207

`lt[and(2*n, 9*n), 1]`
-/

namespace A115795.P7413071774233072207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (9 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115795.P7413071774233072207

namespace A115795

/-- `lt[and(2*n, 9*n), 1]` -/
def P7413071774233072207.Spec : Prop :=
  ∀ n, (P7413071774233072207.a n : ℤ) = A115795 (n + 1)

end A115795

/-! ## A115795.P1519288524937397282

`eq[11*n, or(11*n, A005843(n))]`
-/

namespace A115795.P1519288524937397282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (11 * n : ℤ) (A005843 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115795.P1519288524937397282

namespace A115795

/-- `eq[11*n, or(11*n, A005843(n))]` -/
def P1519288524937397282.Spec : Prop :=
  ∀ n, (P1519288524937397282.a n : ℤ) = A115795 (n + 1)

end A115795

/-! ## A115795.P2471421335373599751

`record[n/A273144(and(2*n, 9*n))]`
-/

namespace A115795.P2471421335373599751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A273144 (Nat.land (2 * n) (9 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115795.P2471421335373599751

namespace A115795

/-- `record[n/A273144(and(2*n, 9*n))]` -/
def P2471421335373599751.Spec : Prop :=
  ∀ n, P2471421335373599751.a n = (A115795 (n + 1) : ℚ)

end A115795

/-! ## A115795.P11695920396953998592

`record[n/A273146(and(2*n, 9*n))]`
-/

namespace A115795.P11695920396953998592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A273146 (Nat.land (2 * n) (9 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115795.P11695920396953998592

namespace A115795

/-- `record[n/A273146(and(2*n, 9*n))]` -/
def P11695920396953998592.Spec : Prop :=
  ∀ n, P11695920396953998592.a n = (A115795 (n + 1) : ℚ)

end A115795

/-!
# A115796: Sequence A115795 in binary.

The programs for A115796, the canonical program `A115796.P9825240409534695713` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115796 has offset 1).

The definition of A115796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115796.P9825240409534695713

`record[gcd(and(2*n, 9*n), A007088(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115796

/-- `record[gcd(and(2*n, 9*n), A007088(n))]` -/
def P9825240409534695713.Spec : Prop :=
  ∀ n, (P9825240409534695713.a n : ℤ) = A115796 (n + 1)

theorem P9825240409534695713.correct : P9825240409534695713.Spec := by
  intro n
  simp only [A115796, Nat.add_sub_cancel]

end A115796

/-! ## A115796.P342204603205825765

`A007088(A115795(n+1))`
-/

namespace A115796.P342204603205825765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115795 (n + 1)).toNat

end

end A115796.P342204603205825765

namespace A115796

/-- `A007088(A115795(n+1))` -/
def P342204603205825765.Spec : Prop :=
  ∀ n, P342204603205825765.a n = A115796 (n + 1)

end A115796

/-! ## A115796.P12440159722184208703

`A185544(2*A115795(n+1))`
-/

namespace A115796.P12440159722184208703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115795 (n + 1)).toNat

end

end A115796.P12440159722184208703

namespace A115796

/-- `A185544(2*A115795(n+1))` -/
def P12440159722184208703.Spec : Prop :=
  ∀ n, P12440159722184208703.a n = A115796 (n + 1)

end A115796

/-! ## A115796.P14357399784014976749

`A185544(∩[A115795(n+1), A005843(n)])`
-/

namespace A115796.P14357399784014976749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A115796.P14357399784014976749

namespace A115796

/-- `A185544(∩[A115795(n+1), A005843(n)])` -/
def P14357399784014976749.Spec : Prop :=
  ∀ n, P14357399784014976749.a n = A115796 (n + 1)

end A115796

/-! ## A115796.P9203883075347460970

`A185544(A115795(n+1)+A115795(n+1))`
-/

namespace A115796.P9203883075347460970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115795 (n + 1) + A115795 (n + 1)).toNat

end

end A115796.P9203883075347460970

namespace A115796

/-- `A185544(A115795(n+1)+A115795(n+1))` -/
def P9203883075347460970.Spec : Prop :=
  ∀ n, P9203883075347460970.a n = A115796 (n + 1)

end A115796

/-! ## A115796.P9686304532106088847

`A007088(record[n/A273144(and(2*n, 9*n))])`
-/

namespace A115796.P9686304532106088847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A273144 (Nat.land (2 * n) (9 * n)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A115796.P9686304532106088847

namespace A115796

/-- `A007088(record[n/A273144(and(2*n, 9*n))])` -/
def P9686304532106088847.Spec : Prop :=
  ∀ n, P9686304532106088847.a n = A115796 (n + 1)

end A115796

/-! ## A115796.P9438525505933980260

`A185544(2*record[n/A273144(and(2*n, 9*n))])`
-/

namespace A115796.P9438525505933980260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A273144 (Nat.land (2 * n) (9 * n)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A115796.P9438525505933980260

namespace A115796

/-- `A185544(2*record[n/A273144(and(2*n, 9*n))])` -/
def P9438525505933980260.Spec : Prop :=
  ∀ n, P9438525505933980260.a n = A115796 (n + 1)

end A115796

/-!
# A115797: Integers i such that 3*i XOR 8*i = 11*i.

The programs for A115797, the canonical program `A115797.P15414465715836074564` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115797 has offset 1).

The definition of A115797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115797.P15414465715836074564

`lt[and(8*n, 3*n), 1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115797

/-- `lt[and(8*n, 3*n), 1]` -/
def P15414465715836074564.Spec : Prop :=
  ∀ n, (P15414465715836074564.a n : ℤ) = A115797 (n + 1)

theorem P15414465715836074564.correct : P15414465715836074564.Spec := by
  intro n
  simp only [A115797, Nat.add_sub_cancel]

end A115797

/-! ## A115797.P3878776417971739739

`eq[0, and(n, A057360(n))]`
-/

namespace A115797.P3878776417971739739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057360 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P3878776417971739739

namespace A115797

/-- `eq[0, and(n, A057360(n))]` -/
def P3878776417971739739.Spec : Prop :=
  ∀ n, (P3878776417971739739.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P14037748005947087428

`eq[0, and(A008598(n), A016921(n))]`
-/

namespace A115797.P14037748005947087428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008598 n) (A016921 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P14037748005947087428

namespace A115797

/-- `eq[0, and(A008598(n), A016921(n))]` -/
def P14037748005947087428.Spec : Prop :=
  ∀ n, (P14037748005947087428.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P14668716783584382009

`eq[0, and(A008585(n), A022144(n))]`
-/

namespace A115797.P14668716783584382009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008585 n) (A022144 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P14668716783584382009

namespace A115797

/-- `eq[0, and(A008585(n), A022144(n))]` -/
def P14668716783584382009.Spec : Prop :=
  ∀ n, (P14668716783584382009.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P14679264106549460921

`eq[0, and(A008574(n), A032766(n))]`
-/

namespace A115797.P14679264106549460921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 n) (A032766 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P14679264106549460921

namespace A115797

/-- `eq[0, and(A008574(n), A032766(n))]` -/
def P14679264106549460921.Spec : Prop :=
  ∀ n, (P14679264106549460921.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P198548626208216520

`eq[0, and(A008586(n), A032766(n))]`
-/

namespace A115797.P198548626208216520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008586 n) (A032766 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P198548626208216520

namespace A115797

/-- `eq[0, and(A008586(n), A032766(n))]` -/
def P198548626208216520.Spec : Prop :=
  ∀ n, (P198548626208216520.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P4120124288334135997

`eq[0, and(A005843(n), A057353(n))]`
-/

namespace A115797.P4120124288334135997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005843 n) (A057353 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P4120124288334135997

namespace A115797

/-- `eq[0, and(A005843(n), A057353(n))]` -/
def P4120124288334135997.Spec : Prop :=
  ∀ n, (P4120124288334135997.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P14259862271519695312

`eq[1, and(A016921(n), A158057(n))]`
-/

namespace A115797.P14259862271519695312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016921 n) (A158057 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115797.P14259862271519695312

namespace A115797

/-- `eq[1, and(A016921(n), A158057(n))]` -/
def P14259862271519695312.Spec : Prop :=
  ∀ n, (P14259862271519695312.a n : ℤ) = A115797 (n + 1)

end A115797

/-! ## A115797.P5069754147232844540

`record[n-and(A008458(n), A008598(n))]`
-/

namespace A115797.P5069754147232844540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A008458 n) (A008598 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115797.P5069754147232844540

namespace A115797

/-- `record[n-and(A008458(n), A008598(n))]` -/
def P5069754147232844540.Spec : Prop :=
  ∀ n, P5069754147232844540.a n = A115797 (n + 1)

end A115797

/-! ## A115797.P3231504679842550063

`record[n+1-A290550(and(n, A057360(n)))]`
-/

namespace A115797.P3231504679842550063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A290550 (Int.land (n : ℤ) (A057360 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115797.P3231504679842550063

namespace A115797

/-- `record[n+1-A290550(and(n, A057360(n)))]` -/
def P3231504679842550063.Spec : Prop :=
  ∀ n, P3231504679842550063.a n = A115797 (n + 1)

end A115797

/-!
# A115798: Sequence A115797 in binary.

The programs for A115798, the canonical program `A115798.P14531436441237878101` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115798 has offset 1).

The definition of A115798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115798.P14531436441237878101

`A007088(A115797(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115798

/-- `A007088(A115797(n+1))` -/
def P14531436441237878101.Spec : Prop :=
  ∀ n, P14531436441237878101.a n = A115798 (n + 1)

theorem P14531436441237878101.correct : P14531436441237878101.Spec := by
  intro n
  simp only [A115798, Nat.add_sub_cancel]

end A115798

/-! ## A115798.P301707901419624365

`A007088(eq[0, and(n, A057360(n))])`
-/

namespace A115798.P301707901419624365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057360 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115798.P301707901419624365

namespace A115798

/-- `A007088(eq[0, and(n, A057360(n))])` -/
def P301707901419624365.Spec : Prop :=
  ∀ n, P301707901419624365.a n = A115798 (n + 1)

end A115798

/-! ## A115798.P9561951155690566424

`A204093(eq[0, and(n, A057360(n))])/6`
-/

namespace A115798.P9561951155690566424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057360 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 6

end

end A115798.P9561951155690566424

namespace A115798

/-- `A204093(eq[0, and(n, A057360(n))])/6` -/
def P9561951155690566424.Spec : Prop :=
  ∀ n, P9561951155690566424.a n = (A115798 (n + 1) : ℚ)

end A115798

/-! ## A115798.P8063233666400652139

`A097256(eq[0, and(n, A057360(n))])/9`
-/

namespace A115798.P8063233666400652139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057360 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 9

end

end A115798.P8063233666400652139

namespace A115798

/-- `A097256(eq[0, and(n, A057360(n))])/9` -/
def P8063233666400652139.Spec : Prop :=
  ∀ n, P8063233666400652139.a n = (A115798 (n + 1) : ℚ)

end A115798

/-! ## A115798.P7072774790896484327

`A185544(2*eq[0, and(n, A057360(n))])`
-/

namespace A115798.P7072774790896484327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057360 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115798.P7072774790896484327

namespace A115798

/-- `A185544(2*eq[0, and(n, A057360(n))])` -/
def P7072774790896484327.Spec : Prop :=
  ∀ n, P7072774790896484327.a n = A115798 (n + 1)

end A115798

/-!
# A115799: Integers i such that 4*i XOR 7*i = 11*i.

The programs for A115799, the canonical program `A115799.P4383293262149048622` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115799 has offset 0).

The definition of A115799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115799.P4383293262149048622

`eq[0, and(4*n, 7*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115799

/-- `eq[0, and(4*n, 7*n)]` -/
def P4383293262149048622.Spec : Prop :=
  ∀ n, (P4383293262149048622.a n : ℤ) = A115799 n

theorem P4383293262149048622.correct : P4383293262149048622.Spec := by
  intro n
  simp only [A115799]

end A115799

/-! ## A115799.P3285509908968362029

`lt[and(4*n, 7*n), 1]`
-/

namespace A115799.P3285509908968362029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115799.P3285509908968362029

namespace A115799

/-- `lt[and(4*n, 7*n), 1]` -/
def P3285509908968362029.Spec : Prop :=
  ∀ n, (P3285509908968362029.a n : ℤ) = A115799 n

end A115799

/-! ## A115799.P3102104487888739545

`eq[11*n, or(7*n, 11*n)]`
-/

namespace A115799.P3102104487888739545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (7 * n) (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115799.P3102104487888739545

namespace A115799

/-- `eq[11*n, or(7*n, 11*n)]` -/
def P3102104487888739545.Spec : Prop :=
  ∀ n, (P3102104487888739545.a n : ℤ) = A115799 n

end A115799

/-! ## A115799.P13363631572548972268

`eq[and(n, A047285(n+1)), A000035(n)]`
-/

namespace A115799.P13363631572548972268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A047285 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115799.P13363631572548972268

namespace A115799

/-- `eq[and(n, A047285(n+1)), A000035(n)]` -/
def P13363631572548972268.Spec : Prop :=
  ∀ n, (P13363631572548972268.a n : ℤ) = A115799 n

end A115799

/-! ## A115799.P2082572412588110708

`eq[or(2*n, A301710(n)), A301710(n)]`
-/

namespace A115799.P2082572412588110708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A301710 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115799.P2082572412588110708

namespace A115799

/-- `eq[or(2*n, A301710(n)), A301710(n)]` -/
def P2082572412588110708.Spec : Prop :=
  ∀ n, (P2082572412588110708.a n : ℤ) = A115799 n

end A115799

