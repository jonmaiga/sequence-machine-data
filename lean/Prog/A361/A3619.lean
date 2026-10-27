import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A361901: The number of linear extensions of n fork-join DAGs of width 3.

The programs for A361901, there is no canonical definition to state claims against.
-/

/-! ## A361901.P90476369427611674

`A357297(A167614(n+2))`
-/

namespace A361901.P90476369427611674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357297 (A167614 (n + 2)).toNat

end

end A361901.P90476369427611674

/-!
# A361902: Least k such that n+A000045(k) is prime, or -1 if no such k exists.

The programs for A361902, there is no canonical definition to state claims against.
-/

/-! ## A361902.P4691308020360837159

`A003893(A007920(n)^6)`
-/

namespace A361902.P4691308020360837159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A007920 n ^ 6).toNat

end

end A361902.P4691308020360837159

/-! ## A361902.P9366332459399110364

`A322823(10^A007920(n))`
-/

namespace A361902.P9366332459399110364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A007920 n : ℤ))).toNat

end

end A361902.P9366332459399110364

/-! ## A361902.P9923604672500134745

`A339896(10^A007920(n))`
-/

namespace A361902.P9923604672500134745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A007920 n : ℤ))).toNat

end

end A361902.P9923604672500134745

/-! ## A361902.P10212354855503464990

`A101606(12^A007920(n))`
-/

namespace A361902.P10212354855503464990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (SequenceMachineLib.roundAway ((12 : ℚ) ^ (A007920 n : ℤ))).toNat

end

end A361902.P10212354855503464990

/-! ## A361902.P8460593111268278577

`A124748(A007920(n)²²)`
-/

namespace A361902.P8460593111268278577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 ((A007920 n ^ 2) ^ 2).toNat

end

end A361902.P8460593111268278577

/-!
# A361903: Numbers k for which sqrt(k/2) divides k and the symmetric representation of sigma(k) has a single part.

The programs for A361903, there is no canonical definition to state claims against.
-/

/-! ## A361903.P9413647469004053217

`∩[2*n², A005153(n+1)]`
-/

namespace A361903.P9413647469004053217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361903.P9413647469004053217

/-! ## A361903.P9396651029004124095

`∩[A377929(n+1), 2*n²]`
-/

namespace A361903.P9396651029004124095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361903.P9396651029004124095

/-! ## A361903.P15420438807380705379

`∩[A005153(n+2), n*2*n]`
-/

namespace A361903.P15420438807380705379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361903.P15420438807380705379

/-! ## A361903.P6430166892577815614

`filter[A001105(n+1), A322860(#)]`
-/

namespace A361903.P6430166892577815614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A361903.P6430166892577815614

/-! ## A361903.P5117294830160718702

`filter[A001105(n+1), A365429(#)]`
-/

namespace A361903.P5117294830160718702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A361903.P5117294830160718702

/-! ## A361903.P898825766772211151

`filter[A001105(n+1), A379968(#)]`
-/

namespace A361903.P898825766772211151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A361903.P898825766772211151

/-! ## A361903.P17711100614494125425

`filter[A005153(n+1), A379480(#)]`
-/

namespace A361903.P17711100614494125425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379480 (f1 j).toNat = 1) n)

end

end A361903.P17711100614494125425

/-! ## A361903.P7049092525451003829

`filter[A174973(n+1), A379480(#)]`
-/

namespace A361903.P7049092525451003829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379480 (f1 j).toNat = 1) n)

end

end A361903.P7049092525451003829

/-! ## A361903.P8210801062680110837

`filter[A245581(n+1), A322860(#)]`
-/

namespace A361903.P8210801062680110837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A361903.P8210801062680110837

/-! ## A361903.P1150285845161206725

`filter[A245581(n+1), A365429(#)]`
-/

namespace A361903.P1150285845161206725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A361903.P1150285845161206725

/-!
# A361904: Odd numbers k such that for all even divisors d of k^2+1, d^2+1 is a prime number.

The programs for A361904, there is no canonical definition to state claims against.
-/

/-! ## A361904.P688190560387866898

`or(1, A003051(A055813(n+1)))`
-/

namespace A361904.P688190560387866898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003051 (A055813 (n + 1)).toNat)

end

end A361904.P688190560387866898

/-! ## A361904.P10360314029597274174

`A110472(A150637(n))%A036469(3*n+2)`
-/

namespace A361904.P10360314029597274174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110472 (A150637 n).toNat) (A036469 (3 * n + 2))

end

end A361904.P10360314029597274174

/-!
# A361905: Numbers k for which sqrt(k/2) divides k and the width at the diagonal of the symmetric representation of sigma(k) equals 1.

The programs for A361905, there is no canonical definition to state claims against.
-/

/-! ## A361905.P2631498250954339123

`2*A174905(n+1)²`
-/

namespace A361905.P2631498250954339123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174905 (n + 1) ^ 2

end

end A361905.P2631498250954339123

/-! ## A361905.P10201326846124468032

`record[2*A053626(n+1)²]`
-/

namespace A361905.P10201326846124468032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053626 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361905.P10201326846124468032

/-! ## A361905.P17590523172411026563

`record[2*A053627(n+1)²]`
-/

namespace A361905.P17590523172411026563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053627 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361905.P17590523172411026563

/-! ## A361905.P12123041855048520272

`2*(eq[0, A270417(n+1)]+1)²`
-/

namespace A361905.P12123041855048520272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A361905.P12123041855048520272

/-! ## A361905.P12088277591776367994

`2*(eq[0, A301989(n+1)]+1)²`
-/

namespace A361905.P12088277591776367994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A361905.P12088277591776367994

/-! ## A361905.P1373137718904262313

`2*eq[n, A053626(abs(1-n)+1)]²`
-/

namespace A361905.P1373137718904262313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A361905.P1373137718904262313

/-! ## A361905.P14531326746773668687

`A001105(A174905(n+1))`
-/

namespace A361905.P14531326746773668687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A174905 (n + 1)).toNat

end

end A361905.P14531326746773668687

/-! ## A361905.P4987678851153662700

`filter[A166401(n+2), A353556(#)]`
-/

namespace A361905.P4987678851153662700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A361905.P4987678851153662700

/-! ## A361905.P106846095225415236

`filter[A166401(n+2), A379480(#)]`
-/

namespace A361905.P106846095225415236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379480 (f1 j).toNat = 1) n)

end

end A361905.P106846095225415236

/-! ## A361905.P10413634846742878332

`∩[A166401(n+1), A001105(n)]`
-/

namespace A361905.P10413634846742878332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361905.P10413634846742878332

/-!
# A361906: Number of integer partitions of n such that (length) * (maximum) >= 2*n.

The programs for A361906, there is no canonical definition to state claims against.
-/

/-! ## A361906.P5780623182170755915

`Δ[A000070(n)]-A361852(n+1)`
-/

namespace A361906.P5780623182170755915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361852 (n + 1)

end

end A361906.P5780623182170755915

/-! ## A361906.P16029620909133695024

`record[A035363(n)]-A361852(n+1)`
-/

namespace A361906.P16029620909133695024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361852 (n + 1)

end

end A361906.P16029620909133695024

/-! ## A361906.P6442486990601255745

`A361907(n+1)+A361853(n+1)`
-/

namespace A361906.P6442486990601255745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361907 (n + 1) + A361853 (n + 1)

end

end A361906.P6442486990601255745

/-! ## A361906.P2373738994126481445

`A000041(n+1)-A361852(n+1)`
-/

namespace A361906.P2373738994126481445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361852 (n + 1)

end

end A361906.P2373738994126481445

/-! ## A361906.P17326924819292547383

`∑[A187219(n+1)]-A361852(n+1)`
-/

namespace A361906.P17326924819292547383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361852 (n + 1)

end

end A361906.P17326924819292547383

/-!
# A361907: Number of integer partitions of n such that (length) * (maximum) > 2*n.

The programs for A361907, there is no canonical definition to state claims against.
-/

/-! ## A361907.P3158961729479426341

`Δ[A000070(n)]-A361851(n+1)`
-/

namespace A361907.P3158961729479426341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361851 (n + 1)

end

end A361907.P3158961729479426341

/-! ## A361907.P15358360244509201564

`record[A035363(n)]-A361851(n+1)`
-/

namespace A361907.P15358360244509201564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361851 (n + 1)

end

end A361907.P15358360244509201564

/-! ## A361907.P17422613438495023768

`record[A035444(n)]-A361851(n+1)`
-/

namespace A361907.P17422613438495023768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361851 (n + 1)

end

end A361907.P17422613438495023768

/-! ## A361907.P14324895861887749486

`A000041(n+1)-A361851(n+1)`
-/

namespace A361907.P14324895861887749486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361851 (n + 1)

end

end A361907.P14324895861887749486

/-! ## A361907.P10184648305981921593

`A361906(n+1)-A361853(n+1)`
-/

namespace A361907.P10184648305981921593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361906 (n + 1) - A361853 (n + 1)

end

end A361907.P10184648305981921593

/-!
# A361908: Positive integers > 1 whose prime indices satisfy (maximum) = 2*(minimum).

The programs for A361908, there is no canonical definition to state claims against.
-/

/-! ## A361908.P6809492983975830633

`filter[A364348(n+1), A252372(#)]`
-/

namespace A361908.P6809492983975830633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A361908.P6809492983975830633

/-! ## A361908.P9887027401706610342

`filter[A383513(n+1), A252372(#)]`
-/

namespace A361908.P9887027401706610342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A361908.P9887027401706610342

/-! ## A361908.P9385663096117568314

`∩[A251726(n+1), A364348(n+1)]`
-/

namespace A361908.P9385663096117568314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361908.P9385663096117568314

/-! ## A361908.P11293948874420122112

`∩[A251726(n+1), A383513(n+1)]`
-/

namespace A361908.P11293948874420122112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361908.P11293948874420122112

/-! ## A361908.P14252309100825307006

`∩[A362981(n+1), A364348(n+1)]`
-/

namespace A361908.P14252309100825307006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361908.P14252309100825307006

/-!
# A361909: Positive integers > 1 whose prime indices satisfy: (maximum) = 2*(length).

The programs for A361909, there is no canonical definition to state claims against.
-/

/-! ## A361909.P5873470087990298256

`sqrt(∩[A106529(n+1), n²])`
-/

namespace A361909.P5873470087990298256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A361909.P5873470087990298256

/-! ## A361909.P6142975173038722439

`sqrt(∩[A000290(n), A106529(n+1)])`
-/

namespace A361909.P6142975173038722439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A361909.P6142975173038722439

/-!
# A361911: Number of set partitions of {1..n} with block-medians summing to an integer.

The programs for A361911, there is no canonical definition to state claims against.
-/

/-! ## A361911.P16763840466363101072

`or(A003441(n+1), A365661(A200074(n)))`
-/

namespace A361911.P16763840466363101072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003441 (n + 1)) (A365661 (A200074 n).toNat)

end

end A361911.P16763840466363101072

/-! ## A361911.P10681485604755475920

`A279000(n*(a(n-2)+1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A361911.P10681485604755475920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A279000 ((n : ℤ) * (a (n - 2) + 1)).toNat

end

end A361911.P10681485604755475920

/-!
# A361913: a(n) is the number of steps in the main loop of the Pollard rho integer factorization algorithm for n, with x=2, y=2 and g(x)=x^2-1.

The programs for A361913, there is no canonical definition to state claims against.
-/

/-! ## A361913.P9492432619901239857

`A279495(A052955(2*n))*A337633(3*(n+1))`
-/

namespace A361913.P9492432619901239857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279495 (A052955 (2 * n)).toNat * A337633 (3 * (n + 1))

end

end A361913.P9492432619901239857

/-! ## A361913.P11759607788507027368

`A001221(A145354(3*n+5)-A010874(3*n+1))`
-/

namespace A361913.P11759607788507027368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A145354 (3 * n + 5) - A010874 (3 * n + 1)).toNat

end

end A361913.P11759607788507027368

/-! ## A361913.P2838783269756161831

`A357112(2*A295693(n+1))`
-/

namespace A361913.P2838783269756161831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357112 (2 * A295693 (n + 1)).toNat

end

end A361913.P2838783269756161831

/-! ## A361913.P15025200016959162238

`A354037(A267278(3*n+4))+A076259(n+1)`
-/

namespace A361913.P15025200016959162238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A267278 (3 * n + 4)).toNat + A076259 (n + 1)

end

end A361913.P15025200016959162238

/-! ## A361913.P3803112718946103462

`A374740(A200750(gcd(n+1, ∏{p}[n+1, (n+1)/#])))`
-/

namespace A361913.P3803112718946103462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (A200750 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))).toNat

end

end A361913.P3803112718946103462

/-!
# A361914: Primes that are repunits with three or more digits for exactly one base b >= 2.

The programs for A361914, there is no canonical definition to state claims against.
-/

/-! ## A361914.P16110061411231401328

`p?[A326380(n+1)]`
-/

namespace A361914.P16110061411231401328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A361914.P16110061411231401328

/-! ## A361914.P8963377249079597145

`A085104(comp[A132122(n)])`
-/

namespace A361914.P8963377249079597145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132122 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A361914.P8963377249079597145

/-! ## A361914.P7141774311875484304

`A085104(comp[∑[A035328(n)]])`
-/

namespace A361914.P7141774311875484304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035328 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A361914.P7141774311875484304

/-! ## A361914.P14971746635611637640

`filter[A326380(n+1), A010051(#)]`
-/

namespace A361914.P14971746635611637640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A361914.P14971746635611637640

/-! ## A361914.P4680270285556715663

`filter[A326380(n+1), A302777(#)]`
-/

namespace A361914.P4680270285556715663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A361914.P4680270285556715663

/-!
# A361916: a(n) = n! * Sum_{k=0..floor(n/2)} (-1)^k * (k+1)^(k-1) / (k! * (n-2*k)!).

The programs for A361916, there is no canonical definition to state claims against.
-/

/-! ## A361916.P9015679725334892445

`A293572(n)+A102393(A237443(n+1))`
-/

namespace A361916.P9015679725334892445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293572 n + A102393 (A237443 (n + 1)).toNat

end

end A361916.P9015679725334892445

/-! ## A361916.P2433812403328491423

`A057077(n)*A347796(A087803(n+1))`
-/

namespace A361916.P2433812403328491423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A347796 (A087803 (n + 1)).toNat

end

end A361916.P2433812403328491423

/-!
# A361920: Number of unlabeled ranked posets with n elements.

The programs for A361920, there is no canonical definition to state claims against.
-/

/-! ## A361920.P9611517309749996319

`A080907(A048192(n+1))`
-/

namespace A361920.P9611517309749996319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A048192 (n + 1)).toNat

end

end A361920.P9611517309749996319

/-! ## A361920.P1806963803129379771

`A034973(A173321(n)-∑[n])`
-/

namespace A361920.P1806963803129379771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A173321 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A361920.P1806963803129379771

/-! ## A361920.P9482645927839742156

`A194206(A045501(n+1)+n)/2+1`
-/

namespace A361920.P9482645927839742156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194206 (A045501 (n + 1) + (n : ℤ)).toNat : ℚ) / 2 + 1

end

end A361920.P9482645927839742156

/-!
# A361921: The number of unlabeled bounded Eulerian posets with n elements.

The programs for A361921, there is no canonical definition to state claims against.
-/

/-! ## A361921.P12128597248922442057

`floor((n-a(n-2))/3*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A361921.P12128597248922442057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊((n : ℤ) - a (n - 2) : ℚ) / 3 * (a (n - 2) : ℚ)⌋

end

end A361921.P12128597248922442057

/-! ## A361921.P7416086307880256311

`floor(A218023(n)/n^(n%2))`
-/

namespace A361921.P7416086307880256311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218023 n : ℚ) / (n ^ (n % 2) : ℚ)⌋

end

end A361921.P7416086307880256311

/-! ## A361921.P4437844029558862743

`A335455(and(-(-1)^n, ceil(n/2)))+char[2^n]`
-/

namespace A361921.P4437844029558862743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335455 (Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361921.P4437844029558862743

/-! ## A361921.P13896066874978931705

`A335455(floor(n/(xor(n, n+1)+1)))+char[2^n]`
-/

namespace A361921.P13896066874978931705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335455 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361921.P13896066874978931705

/-! ## A361921.P11529208563428725836

`A188403(n+4)%ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A361921.P11529208563428725836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188403 (n + 4)) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A361921.P11529208563428725836

/-!
# A361922: Infinitary phi-practical numbers: numbers m such that each k <= m is a subsum of a the multiset {iphi(d) : d infinitary divisor of m}, where iphi is an infinitary analog of Euler's phi function (A091732).

The programs for A361922, there is no canonical definition to state claims against.
-/

/-! ## A361922.P7255212127098075624

`A373624(A152452(n+1))`
-/

namespace A361922.P7255212127098075624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A152452 (n + 1)).toNat

end

end A361922.P7255212127098075624

/-! ## A361922.P13430619910326563948

`A373624(A217741(n+1))`
-/

namespace A361922.P13430619910326563948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A217741 (n + 1)).toNat

end

end A361922.P13430619910326563948

/-! ## A361922.P7253220180091771471

`record[A329617(A020898(n+1))]`
-/

namespace A361922.P7253220180091771471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (A020898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361922.P7253220180091771471

/-! ## A361922.P10834561014181362377

`A071295(∑[A332051(n)+n+1])`
-/

namespace A361922.P10834561014181362377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361922.P10834561014181362377

/-! ## A361922.P4554019948416209823

`record[A228350(n+1)*A326394(n+1)]`
-/

namespace A361922.P4554019948416209823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228350 (n + 1) * A326394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361922.P4554019948416209823

/-!
# A361923: Number of distinct values obtained when the infinitary totient function (A091732) is applied to the infinitary divisors of n.

The programs for A361923, there is no canonical definition to state claims against.
-/

/-! ## A361923.P711442609989040249

`A000010(A286324(2*(n+1))%A342819(n+3))`
-/

namespace A361923.P711442609989040249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A286324 (2 * (n + 1))) (A342819 (n + 3))).toNat

end

end A361923.P711442609989040249

/-! ## A361923.P7798187516147458515

`A060594(A160102(n+1))^A038712(A136085(2*n+3))`
-/

namespace A361923.P7798187516147458515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060594 (A160102 (n + 1)).toNat : ℚ) ^ (A038712 (A136085 (2 * n + 3)).toNat : ℤ)

end

end A361923.P7798187516147458515

/-! ## A361923.P16424701990249530683

`A000010(A286324(2*(n+1)))%A276070(n+5)`
-/

namespace A361923.P16424701990249530683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A286324 (2 * (n + 1))).toNat) (A276070 (n + 5))

end

end A361923.P16424701990249530683

/-! ## A361923.P3582613998032739318

`A060594(A160102(n+1))%A337088(n+1)`
-/

namespace A361923.P3582613998032739318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060594 (A160102 (n + 1)).toNat) (A337088 (n + 1))

end

end A361923.P3582613998032739318

/-! ## A361923.P6050869287257048539

`A060548(A000005(2*(n+1))+A325248(n+1)%2-1)`
-/

namespace A361923.P6050869287257048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (A000005 (2 * (n + 1)) + (Int.tmod (A325248 (n + 1)) 2 - 1)).toNat

end

end A361923.P6050869287257048539

/-! ## A361923.P4656921740344784423

`gcd(A060594(A160102(n+1)), A334699(n+1))`
-/

namespace A361923.P4656921740344784423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060594 (A160102 (n + 1)).toNat) (A334699 (n + 1))

end

end A361923.P4656921740344784423

/-! ## A361923.P8892145402172883784

`A001227(A160102(n+1))%A239086(n+5)`
-/

namespace A361923.P8892145402172883784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (A160102 (n + 1)).toNat) (A239086 (n + 5))

end

end A361923.P8892145402172883784

/-! ## A361923.P1519501641502169438

`A001227(A160102(n+1))+A219225(n+1)%3`
-/

namespace A361923.P1519501641502169438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A160102 (n + 1)).toNat + Int.tmod (A219225 (n + 1)) 3

end

end A361923.P1519501641502169438

/-! ## A361923.P2564910210536041239

`A166486(A219225(n+1))+A001227(A160102(n+1))`
-/

namespace A361923.P2564910210536041239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A219225 (n + 1)).toNat + A001227 (A160102 (n + 1)).toNat

end

end A361923.P2564910210536041239

/-! ## A361923.P3464316893006197856

`A060632(A162474(n+1))`
-/

namespace A361923.P3464316893006197856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A162474 (n + 1)).toNat

end

end A361923.P3464316893006197856

/-!
# A361924: Numbers whose infinitary divisors have distinct values of the infinitary totient function iphi (A091732).

The programs for A361924, there is no canonical definition to state claims against.
-/

/-! ## A361924.P14509088861775183759

`lt[A025151(A005811(n)), A229764(n)]`
-/

namespace A361924.P14509088861775183759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361924.P14509088861775183759

/-! ## A361924.P3326992369878908108

`lt[A316869(A000120(3*(n+1))), A229764(n)]`
-/

namespace A361924.P3326992369878908108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A000120 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361924.P3326992369878908108

/-! ## A361924.P11862878700946707938

`lt[A010054(n²+n), A285383(n+1)]`
-/

namespace A361924.P11862878700946707938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n ^ 2 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361924.P11862878700946707938

/-! ## A361924.P6770450363847644942

`eq[A184964(A357704(n)), A285384(2*n+1)]`
-/

namespace A361924.P6770450363847644942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A357704 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361924.P6770450363847644942

/-! ## A361924.P12494826481252488271

`A185016(A224491(n+1))+comp[2*n*gcd(64, n)]`
-/

namespace A361924.P12494826481252488271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.gcd 64 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A224491 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A361924.P12494826481252488271

/-! ## A361924.P10771732784541118494

`A185016(A224491(n+1))+A003159(n+1)`
-/

namespace A361924.P10771732784541118494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A224491 (n + 1)).toNat + A003159 (n + 1)

end

end A361924.P10771732784541118494

/-!
# A361925: Infinitary phi-practical (A361922) whose infinitary divisors have distinct values of the infinitary totient function iphi (A091732).

The programs for A361925, there is no canonical definition to state claims against.
-/

/-! ## A361925.P1701190178559374834

`∩[A361922(n+1), A361924(n+1)]`
-/

namespace A361925.P1701190178559374834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361925.P1701190178559374834

/-! ## A361925.P5885454199200786080

`record[gcd(ceil(3*(n/2)²), A225640(n))]`
-/

namespace A361925.P5885454199200786080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈3 * ((n : ℚ) / 2) ^ 2⌉ (A225640 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361925.P5885454199200786080

/-!
# A361926: Square array A(n, k) of distinct positive integers, n, k > 0, read and filled by upwards antidiagonals in the greedy way such that A(n, k) is a multiple of A(n, 1).

The programs for A361926, there is no canonical definition to state claims against.
-/

/-! ## A361926.P14741340811516168663

`A397729(A077168(n))`
-/

namespace A361926.P14741340811516168663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397729 (A077168 n).toNat

end

end A361926.P14741340811516168663

/-! ## A361926.P14117909624049101155

`A062537(A333931(n+2))`
-/

namespace A361926.P14117909624049101155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A333931 (n + 2)).toNat

end

end A361926.P14117909624049101155

/-! ## A361926.P9521522231868914275

`A062537(A353899(n+2))`
-/

namespace A361926.P9521522231868914275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A353899 (n + 2)).toNat

end

end A361926.P9521522231868914275

/-! ## A361926.P3264464182696575492

`A062537(A377139(n+2))`
-/

namespace A361926.P3264464182696575492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A377139 (n + 2)).toNat

end

end A361926.P3264464182696575492

/-!
# A361928: Triangle read by rows: T(n,d) = number of non-adaptive group tests required to identify exactly d defectives among n items.

The programs for A361928, there is no canonical definition to state claims against.
-/

/-! ## A361928.P16397193338203002634

`A084558(A157383(n+1)+n)`
-/

namespace A361928.P16397193338203002634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A157383 (n + 1) + (n : ℤ)).toNat

end

end A361928.P16397193338203002634

/-!
# A361929: a(1) = 2; for n > 1, a(n) is the smallest positive integer > 1 not to share a factor with terms a(n-c .. n-1) where c = gcd(n-1,a(n-1)).

The programs for A361929, there is no canonical definition to state claims against.
-/

/-! ## A361929.P2081325600176543531

`A343902(A075341(n+1))`
-/

namespace A361929.P2081325600176543531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343902 (A075341 (n + 1)).toNat

end

end A361929.P2081325600176543531

/-! ## A361929.P2349775768107825007

`A111076(A006778(n+2))`
-/

namespace A361929.P2349775768107825007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A006778 (n + 2)).toNat

end

end A361929.P2349775768107825007

/-! ## A361929.P17671606509406463550

`A389622(A219311(n+1)+2)`
-/

namespace A361929.P17671606509406463550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389622 (A219311 (n + 1) + 2).toNat

end

end A361929.P17671606509406463550

/-! ## A361929.P4302120688568899012

`A053669(A203160(n+1)+∑[n]%3+2*n)`
-/

namespace A361929.P4302120688568899012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A203160 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 2 * n : ℕ) : ℤ)).toNat

end

end A361929.P4302120688568899012

/-! ## A361929.P8742190649936159179

`A053669(A203160(n+1)+Δ[round((1/3-n)²)])`
-/

namespace A361929.P8742190649936159179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 3 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A203160 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A361929.P8742190649936159179

/-!
# A361931: a(n) is the smallest number k such that A361929(k) = prime(n), or -1 if no such prime exists.

The programs for A361931, there is no canonical definition to state claims against.
-/

/-! ## A361931.P8743451200567533470

`A137707(A097979(n+1))`
-/

namespace A361931.P8743451200567533470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137707 (A097979 (n + 1)).toNat

end

end A361931.P8743451200567533470

/-! ## A361931.P12408228238876397902

`A137707(A137711(n+1))`
-/

namespace A361931.P12408228238876397902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137707 (A137711 (n + 1)).toNat

end

end A361931.P12408228238876397902

/-!
# A361932: G.f. A(x) satisfies A(x) = 1 + (x * A(x) / (1 - x))^3.

The programs for A361932, there is no canonical definition to state claims against.
-/

/-! ## A361932.P7209478737807286913

`A325456(A006082(n+1))-A316824(n+2)`
-/

namespace A361932.P7209478737807286913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (A006082 (n + 1)).toNat - A316824 (n + 2)

end

end A361932.P7209478737807286913

/-!
# A361933: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form an arithmetic progression in any order.

The programs for A361933, there is no canonical definition to state claims against.
-/

/-! ## A361933.P6742102010358105254

`and(A141311(n+1), A381629(n+1))`
-/

namespace A361933.P6742102010358105254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A381629 (n + 1))

end

end A361933.P6742102010358105254

/-! ## A361933.P2469593416756152822

`A381629(n+1)%A190274(A136624(n))`
-/

namespace A361933.P2469593416756152822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381629 (n + 1)) (A190274 (A136624 n).toNat)

end

end A361933.P2469593416756152822

/-! ## A361933.P16341667099932498702

`or(A000007(A002943(n)), A381629(n+1))`
-/

namespace A361933.P16341667099932498702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A002943 n).toNat) (A381629 (n + 1))

end

end A361933.P16341667099932498702

/-! ## A361933.P136863858058211283

`A381629(n+1)+A000007(A338909(n+5))`
-/

namespace A361933.P136863858058211283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381629 (n + 1) + A000007 (A338909 (n + 5)).toNat

end

end A361933.P136863858058211283

/-! ## A361933.P3993068144408451518

`A381629(A296882(n+1))%A338909(n+5)`
-/

namespace A361933.P3993068144408451518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381629 (A296882 (n + 1)).toNat) (A338909 (n + 5))

end

end A361933.P3993068144408451518

/-!
# A361936: Indices of the squares in the sequence of powerful numbers (A001694).

The programs for A361936, there is no canonical definition to state claims against.
-/

/-! ## A361936.P4874871817812073599

`A119241(n)+a(n-1)+1` with `a(0)=1`
-/

namespace A361936.P4874871817812073599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119241 n + (a (n - 1) + 1)

end

end A361936.P4874871817812073599

/-! ## A361936.P7893396190601471298

`∑[A119241(round(sqrt(n²+1)))+1]`
-/

namespace A361936.P7893396190601471298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361936.P7893396190601471298

/-! ## A361936.P4113410054670085419

`∑[A119241(A028310(n))]+n+1`
-/

namespace A361936.P4113410054670085419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A361936.P4113410054670085419

/-! ## A361936.P2455307153404363920

`∑[A119241(n+1)+1]-A119241(n+1)`
-/

namespace A361936.P2455307153404363920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119241 (n + 1)

end

end A361936.P2455307153404363920

/-! ## A361936.P15140368085024248954

`eq[1, A007913(A001694(n+1))]+1`
-/

namespace A361936.P15140368085024248954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361936.P15140368085024248954

/-! ## A361936.P4157596543833285181

`A348018(A102631(n+1))`
-/

namespace A361936.P4157596543833285181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat

end

end A361936.P4157596543833285181

/-! ## A361936.P4493748532135193809

`A348018((n+1)*A003557(n+1))`
-/

namespace A361936.P4493748532135193809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A361936.P4493748532135193809

/-! ## A361936.P9667667875036611583

`A217038((n+1)²)+1`
-/

namespace A361936.P9667667875036611583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) ^ 2) + 1

end

end A361936.P9667667875036611583

/-! ## A361936.P11181155568189045759

`A348018(A003557((n+1)²))`
-/

namespace A361936.P11181155568189045759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A003557 ((n + 1) ^ 2)).toNat

end

end A361936.P11181155568189045759

/-! ## A361936.P12390185760879088461

`A217038((n+1)*(n+1)+1)`
-/

namespace A361936.P12390185760879088461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) * (n + 1) + 1)

end

end A361936.P12390185760879088461

/-!
# A361937: Numbers k with record values of the ratio A000005(k)/A246600(k) between the total number of divisors of k and the number of divisors d of k such that the bitwise OR of k and d is equal to k.

The programs for A361937, there is no canonical definition to state claims against.
-/

/-! ## A361937.P8752457028153890262

`record[A180870(n+1)/2]`
-/

namespace A361937.P8752457028153890262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180870 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361937.P8752457028153890262

/-! ## A361937.P8450483104335825534

`record[(2^∑{digits}[n, #%C(n, #)])%A102184(n+1)]`
-/

namespace A361937.P8450483104335825534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum : ℤ) (A102184 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361937.P8450483104335825534

/-! ## A361937.P16841453371367180577

`A032742(record[A180870(n+1)])`
-/

namespace A361937.P16841453371367180577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361937.P16841453371367180577

/-! ## A361937.P13630874219155205516

`A060681(record[A180870(n+1)])`
-/

namespace A361937.P13630874219155205516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361937.P13630874219155205516

/-! ## A361937.P1895704869944218464

`record[A122438(n)%A344653(n+1)]`
-/

namespace A361937.P1895704869944218464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122438 n) (A344653 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361937.P1895704869944218464

/-!
# A361938: a(0)=1, a(1)=0; a(n) = floor(n/2)*(a(n-1) + a(n-2)).

The programs for A361938, the canonical program `A361938.P3160939465542668847` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361938 has offset 0).

The definition of A361938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)*(a(n-1)+a(n-2))` (program `A361938.P3160939465542668847`, by `A361938.P3160939465542668847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361938.P3160939465542668847

`floor(n/2)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361938

/-- `floor(n/2)*(a(n-1)+a(n-2))` -/
def P3160939465542668847.Spec : Prop :=
  ∀ n, P3160939465542668847.a n = A361938 n

theorem P3160939465542668847.correct : P3160939465542668847.Spec := by
  intro n
  simp only [A361938]

end A361938

/-! ## A361938.P12179727004221797381

`(a(n-1)-ceil(-a(n-2)))*floor(n/2)` with `a(0)=1, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A361938.P12179727004221797381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ⌊(n : ℚ) / 2⌋

end

end A361938.P12179727004221797381

namespace A361938

/-- `(a(n-1)-ceil(-a(n-2)))*floor(n/2)` -/
def P12179727004221797381.Spec : Prop :=
  ∀ n, P12179727004221797381.a n = A361938 n

end A361938

/-! ## A361938.P6817532223465174539

`(a(n-1)-round(-a(n-2)))*floor(n/2)` with `a(0)=1, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A361938.P6817532223465174539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ⌊(n : ℚ) / 2⌋

end

end A361938.P6817532223465174539

namespace A361938

/-- `(a(n-1)-round(-a(n-2)))*floor(n/2)` -/
def P6817532223465174539.Spec : Prop :=
  ∀ n, P6817532223465174539.a n = A361938 n

end A361938

/-! ## A361938.P4494939650413228682

`(2-(4/2-a(n-1)-a(n-2)))*floor(n/2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A361938.P4494939650413228682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))) * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A361938.P4494939650413228682

namespace A361938

/-- `(2-(4/2-a(n-1)-a(n-2)))*floor(n/2)` -/
def P4494939650413228682.Spec : Prop :=
  ∀ n, P4494939650413228682.a n = (A361938 n : ℚ)

end A361938

/-! ## A361938.P9137907954439409709

`(a(n-1)-floor(-a(n-2)))*A004526(n)` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A361938.P9137907954439409709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * A004526 n

end

end A361938.P9137907954439409709

namespace A361938

/-- `(a(n-1)-floor(-a(n-2)))*A004526(n)` -/
def P9137907954439409709.Spec : Prop :=
  ∀ n, P9137907954439409709.a n = A361938 n

end A361938

/-!
# A361942: For any number n >= 0 with binary expansion (b_1, ..., b_w), a(n) is the least p > 0 such that b_i = b_{p+i} for i = 1..w-p.

The programs for A361942, there is no canonical definition to state claims against.
-/

/-! ## A361942.P10497890892731802802

`∑[char[2*a(n-1)]]-A091064(n)` with `a(0)=0, a(1)=2`
-/

namespace A361942.P10497890892731802802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A091064 n

end

end A361942.P10497890892731802802

/-! ## A361942.P15303262028281220328

`A065120(A200322(n))`
-/

namespace A361942.P15303262028281220328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A200322 n).toNat

end

end A361942.P15303262028281220328

/-! ## A361942.P8423491413409728515

`A070939(n)-A091064(n)`
-/

namespace A361942.P8423491413409728515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A091064 n

end

end A361942.P8423491413409728515

/-! ## A361942.P7985483328556575728

`A302295(A053644(n))-A091064(n)`
-/

namespace A361942.P7985483328556575728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A053644 n).toNat - A091064 n

end

end A361942.P7985483328556575728

/-! ## A361942.P16633121131505798746

`A029837(A147756(n))-A070939(n)`
-/

namespace A361942.P16633121131505798746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A147756 n).toNat - A070939 n

end

end A361942.P16633121131505798746

/-!
# A361943: a(n) is the least multiple of n whose binary expansion is an abelian square (A272653).

The programs for A361943, there is no canonical definition to state claims against.
-/

/-! ## A361943.P8734987808206943069

`A361944(n+1)*(n+1)`
-/

namespace A361943.P8734987808206943069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361944 (n + 1) * (n + 1 : ℤ)

end

end A361943.P8734987808206943069

/-!
# A361944: a(n) is the least k > 0 such that the binary expansion of k*n is an abelian square (A272653).

The programs for A361944, there is no canonical definition to state claims against.
-/

/-! ## A361944.P6178721767628946809

`A361943(n+1)/(n+1)`
-/

namespace A361944.P6178721767628946809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361943 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A361944.P6178721767628946809

/-!
# A361945: If the ternary expansion of n starts with the digit 1, then replace 2's by 0's and vice versa; if the ternary expansion of n starts with the digit 2, then replace 1's by 0's and vice versa; a(0) = 0.

The programs for A361945, there is no canonical definition to state claims against.
-/

/-! ## A361945.P742436454076459070

`A371268(A004488(n))`
-/

namespace A361945.P742436454076459070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A004488 n).toNat

end

end A361945.P742436454076459070

/-! ## A361945.P15873470691938123183

`A371268(A117966(n)+n)`
-/

namespace A361945.P15873470691938123183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A117966 n + (n : ℤ)).toNat

end

end A361945.P15873470691938123183

/-! ## A361945.P7861467996121249904

`A380350(A380349(A371268(n)))`
-/

namespace A361945.P7861467996121249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A380349 (A371268 n).toNat).toNat

end

end A361945.P7861467996121249904

/-! ## A361945.P11385421566989608632

`A371268(A380352(A380351(n)))`
-/

namespace A361945.P11385421566989608632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A380352 (A380351 n).toNat).toNat

end

end A361945.P11385421566989608632

/-! ## A361945.P15698432942593297602

`A371268(A374363(n)+A244042(n))`
-/

namespace A361945.P15698432942593297602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A374363 n + A244042 n).toNat

end

end A361945.P15698432942593297602

/-! ## A361945.P6793361013723358503

`A371268(A117967(n)-A117966(2*n))`
-/

namespace A361945.P6793361013723358503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A117967 n - A117966 (2 * n)).toNat

end

end A361945.P6793361013723358503

/-! ## A361945.P1618948710853113501

`A371268(A005843(n)-(n-A117966(n)))`
-/

namespace A361945.P1618948710853113501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A361945.P1618948710853113501

/-! ## A361945.P414789447528158293

`A371268(A244042(3*n)-A117966(n))`
-/

namespace A361945.P414789447528158293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A244042 (3 * n) - A117966 n).toNat

end

end A361945.P414789447528158293

/-! ## A361945.P14502247093208282184

`A371268(A253586(∑[n]))`
-/

namespace A361945.P14502247093208282184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361945.P14502247093208282184

/-!
# A361946: If the base-4 expansion of n starts with the digit 1, then replace 2's by 3's and vice versa; if it starts with the digit 2, then replace 1's by 3's and vice versa; if it starts with the digit 3, then replace 1's by 2's and vice versa; a(0) = 0.

The programs for A361946, there is no canonical definition to state claims against.
-/

/-! ## A361946.P16243918614663787721

`A126006(A361947(A126006(n)))`
-/

namespace A361946.P16243918614663787721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126006 (A361947 (A126006 n).toNat).toNat

end

end A361946.P16243918614663787721

/-!
# A361948: Array read by ascending antidiagonals. A(n, k) = Product_{j=0..k-1} binomial((j + 1)*n - 1, n - 1) if n >= 1, and A(0, k) = 1 for all k.

The programs for A361948, there is no canonical definition to state claims against.
-/

/-! ## A361948.P1393002710297917403

`A370366(n)+A370363(n)`
-/

namespace A361948.P1393002710297917403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 n + A370363 n

end

end A361948.P1393002710297917403

/-! ## A361948.P15631277656521471098

`A370366(n)+A327522(A180803(n+1))`
-/

namespace A361948.P15631277656521471098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 n + A327522 (A180803 (n + 1)).toNat

end

end A361948.P15631277656521471098

/-! ## A361948.P17797916223414539170

`A370366(n)+A304118(A208597(n+1))`
-/

namespace A361948.P17797916223414539170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 n + A304118 (A208597 (n + 1)).toNat

end

end A361948.P17797916223414539170

/-! ## A361948.P17977099526467735179

`A370366(n)+A185620(A242095(n))-A010054(n)`
-/

namespace A361948.P17977099526467735179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 n + (A185620 (A242095 n).toNat - A010054 n)

end

end A361948.P17977099526467735179

/-! ## A361948.P1930628742541053055

`A370366(n)+A327482(A326842(n))%A122366(n)`
-/

namespace A361948.P1930628742541053055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 n + Int.tmod (A327482 (A326842 n).toNat) (A122366 n)

end

end A361948.P1930628742541053055

/-!
# A361949: Triangle read by rows. T(n, k) = binomial(3*n - 1, 3*k - 1).

The programs for A361949, the canonical program `A361949.P5622526156116664732` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361949 has offset 1).

The definition of A361949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(row(n)+1)-1, 3*(col(n)+1)-1)` (program `A361949.P5622526156116664732`, by `A361949.P5622526156116664732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361949.P5622526156116664732

`C(3*(row(n)+1)-1, 3*(col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361949

/-- `C(3*(row(n)+1)-1, 3*(col(n)+1)-1)` -/
def P5622526156116664732.Spec : Prop :=
  ∀ n, (P5622526156116664732.a n : ℤ) = A361949 (n + 1)

theorem P5622526156116664732.correct : P5622526156116664732.Spec := by
  intro n
  simp only [A361949, Nat.add_sub_cancel]

end A361949

/-! ## A361949.P7258774974389949650

`A007318(eq[A070366(2*(n+1)), A204263(n+1)])`
-/

namespace A361949.P7258774974389949650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070366 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A361949.P7258774974389949650

namespace A361949

/-- `A007318(eq[A070366(2*(n+1)), A204263(n+1)])` -/
def P7258774974389949650.Spec : Prop :=
  ∀ n, P7258774974389949650.a n = A361949 (n + 1)

end A361949

/-!
# A361950: Array read by antidiagonals: T(n,k) = n! * Sum_{s} 2^(Sum_{i=1..k-1} s(i)*s(i+1))/(Product_{i=1..k} s(i)!) where the sum is over all nonnegative compositions s of n into k parts.

The programs for A361950, there is no canonical definition to state claims against.
-/

/-! ## A361950.P5784548919109341740

`A322280(n)-A343957(A003961(n+4))`
-/

namespace A361950.P5784548919109341740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 n - A343957 (A003961 (n + 4)).toNat

end

end A361950.P5784548919109341740

/-!
# A361952: Array read by antidiagonals: T(n,k) is the number of unlabeled posets with n elements together with a function rk mapping each element to a rank between 1 and k such that whenever v covers w in the poset then rk(v) = rk(w) + 1.

The programs for A361952, there is no canonical definition to state claims against.
-/

/-! ## A361952.P2367719708812363158

`A341027(A134383(n+1))+A259475(n)`
-/

namespace A361952.P2367719708812363158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A134383 (n + 1)).toNat + 220) + A259475 n

end

end A361952.P2367719708812363158

/-! ## A361952.P5831365801577413143

`A280130(A357636(2*(n+1)))+A259475(n)`
-/

namespace A361952.P5831365801577413143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (A357636 (2 * (n + 1))).toNat + A259475 n

end

end A361952.P5831365801577413143

/-!
# A361953: Triangle read by rows: T(n,k) is the number of unlabeled weakly graded (ranked) posets with n elements and rank k.

The programs for A361953, there is no canonical definition to state claims against.
-/

/-! ## A361953.P11063542369220531308

`A193357(n+1)+A185284(2*n+1)`
-/

namespace A361953.P11063542369220531308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193357 (n + 1) + A185284 (2 * n + 1)

end

end A361953.P11063542369220531308

/-! ## A361953.P12897985605039286407

`A102705(A048993(n))`
-/

namespace A361953.P12897985605039286407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A048993 n).toNat

end

end A361953.P12897985605039286407

/-! ## A361953.P15809990283807262276

`A102705(A151509(n))`
-/

namespace A361953.P15809990283807262276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A151509 n).toNat

end

end A361953.P15809990283807262276

/-! ## A361953.P14817243498095944493

`A102705(A151511(n))`
-/

namespace A361953.P14817243498095944493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A151511 n).toNat

end

end A361953.P14817243498095944493

/-! ## A361953.P18417765172900284439

`A193357(A076084(n+1))`
-/

namespace A361953.P18417765172900284439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193357 (A076084 (n + 1)).toNat

end

end A361953.P18417765172900284439

/-!
# A361954: Triangle read by rows: T(n,k) is the number of unlabeled connected weakly graded (ranked) posets with n elements and rank k.

The programs for A361954, there is no canonical definition to state claims against.
-/

/-! ## A361954.P4492902513366921704

`A342500(n+1)-A086015(A000051(n))`
-/

namespace A361954.P4492902513366921704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342500 (n + 1) - A086015 (A000051 n).toNat

end

end A361954.P4492902513366921704

/-! ## A361954.P4496549164502654096

`A342500(n+1)-A102683(A000225(n))`
-/

namespace A361954.P4496549164502654096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342500 (n + 1) - A102683 (A000225 n).toNat

end

end A361954.P4496549164502654096

/-! ## A361954.P5788541720273892

`A342500(n+1)-A102683(A052396(n+1))`
-/

namespace A361954.P5788541720273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342500 (n + 1) - A102683 (A052396 (n + 1)).toNat

end

end A361954.P5788541720273892

/-! ## A361954.P2268272829240106231

`A342500(n+1)-A185237(A120647(n+1))`
-/

namespace A361954.P2268272829240106231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342500 (n + 1) - A185237 (A120647 (n + 1)).toNat

end

end A361954.P2268272829240106231

/-! ## A361954.P9128315017344157585

`A342500(n+1)-A124762(A361921(n))`
-/

namespace A361954.P9128315017344157585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342500 (n + 1) - A124762 (A361921 n).toNat

end

end A361954.P9128315017344157585

/-!
# A361955: Number of unlabeled connected weakly graded (ranked) posets with n elements.

The programs for A361955, there is no canonical definition to state claims against.
-/

/-! ## A361955.P14890093300288306836

`A108954(A103466(n+1))`
-/

namespace A361955.P14890093300288306836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A103466 (n + 1)).toNat

end

end A361955.P14890093300288306836

/-! ## A361955.P1894124931892134076

`A185215(A248956(n+1))`
-/

namespace A361955.P1894124931892134076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (A248956 (n + 1)).toNat

end

end A361955.P1894124931892134076

/-! ## A361955.P10639668344621109331

`A385652(A243953(n)+1)`
-/

namespace A361955.P10639668344621109331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385652 (A243953 n + 1).toNat

end

end A361955.P10639668344621109331

/-!
# A361956: Triangle read by rows: T(n,k) is the number of labeled tiered posets with n elements and height k.

The programs for A361956, there is no canonical definition to state claims against.
-/

/-! ## A361956.P11195354324104998360

`A226874(n)*A256384(A234742(n))`
-/

namespace A361956.P11195354324104998360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n * A256384 (A234742 n).toNat

end

end A361956.P11195354324104998360

/-!
# A361957: Triangle read by rows: T(n,k) is the number of unlabeled tiered posets with n elements and height k.

The programs for A361957, there is no canonical definition to state claims against.
-/

/-! ## A361957.P12337786449573627377

`A064044(n)-A064515(A069777(n))`
-/

namespace A361957.P12337786449573627377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n - A064515 (A069777 n).toNat

end

end A361957.P12337786449573627377

/-! ## A361957.P13594605911399942484

`A341975(A211399(n)+1)`
-/

namespace A361957.P13594605911399942484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 ((A211399 n + 1).toNat + 11)

end

end A361957.P13594605911399942484

/-! ## A361957.P6319204231160465417

`A291883(n)+A048724(A185284(2*n+3))`
-/

namespace A361957.P6319204231160465417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 n + A048724 (A185284 (2 * n + 3)).toNat

end

end A361957.P6319204231160465417

/-! ## A361957.P325541818976502105

`A007093(A291883(n)%A270339(2*n+3))`
-/

namespace A361957.P325541818976502105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A291883 n) (A270339 (2 * n + 3))).toNat

end

end A361957.P325541818976502105

/-!
# A361958: Triangle read by rows: T(n,k) is the number of connected unlabeled tiered posets with n elements and height k.

The programs for A361958, there is no canonical definition to state claims against.
-/

/-! ## A361958.P4399071615518743276

`A369858(A301924(n+1))`
-/

namespace A361958.P4399071615518743276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369858 (A301924 (n + 1)).toNat

end

end A361958.P4399071615518743276

/-! ## A361958.P1735856277191592565

`A325280(n)+A131646(A127054(n))`
-/

namespace A361958.P1735856277191592565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 n + A131646 (A127054 n).toNat

end

end A361958.P1735856277191592565

/-! ## A361958.P10785640653963527569

`A333528(A264428(n)+A060543(n))`
-/

namespace A361958.P10785640653963527569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333528 (A264428 n + A060543 n).toNat

end

end A361958.P10785640653963527569

/-! ## A361958.P9150607657538015985

`A040001(A211917(n))*A172380(n)`
-/

namespace A361958.P9150607657538015985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A211917 n).toNat * A172380 n

end

end A361958.P9150607657538015985

/-! ## A361958.P351672977311628638

`A325678(A256893(n)+A230398(n+5))`
-/

namespace A361958.P351672977311628638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A256893 n + A230398 (n + 5)).toNat

end

end A361958.P351672977311628638

/-!
# A361959: Number of connected unlabeled tiered posets with n elements.

The programs for A361959, there is no canonical definition to state claims against.
-/

/-! ## A361959.P4545108624603682614

`A137588(A137590(n+1)+A137554(n+1))`
-/

namespace A361959.P4545108624603682614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A137590 (n + 1) + A137554 (n + 1)).toNat

end

end A361959.P4545108624603682614

/-!
# A361960: Total semiperimeter of 2-Fuss-Catalan polyominoes of length 2n.

The programs for A361960, the canonical program `A361960.P11534871599392896999` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361960 has offset 1).

The definition of A361960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361960.P11534871599392896999

`A117671(n)+A004319(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361960

/-- `A117671(n)+A004319(n+1)` -/
def P11534871599392896999.Spec : Prop :=
  ∀ n, P11534871599392896999.a n = A361960 (n + 1)

theorem P11534871599392896999.correct : P11534871599392896999.Spec := by
  intro n
  simp only [A361960, Nat.add_sub_cancel]

end A361960

/-! ## A361960.P7671182943160360045

`A081181(2*n)+A004319(n+1)`
-/

namespace A361960.P7671182943160360045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081181 (2 * n) + A004319 (n + 1)

end

end A361960.P7671182943160360045

namespace A361960

/-- `A081181(2*n)+A004319(n+1)` -/
def P7671182943160360045.Spec : Prop :=
  ∀ n, P7671182943160360045.a n = A361960 (n + 1)

end A361960

/-! ## A361960.P1659733435799257042

`A127040(2*n+1)+A117671(n)`
-/

namespace A361960.P1659733435799257042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n + 1) + A117671 n

end

end A361960.P1659733435799257042

namespace A361960

/-- `A127040(2*n+1)+A117671(n)` -/
def P1659733435799257042.Spec : Prop :=
  ∀ n, P1659733435799257042.a n = A361960 (n + 1)

end A361960

/-! ## A361960.P1131765134345508296

`A127040(2*n+1)+A099576(2*n)`
-/

namespace A361960.P1131765134345508296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n + 1) + A099576 (2 * n)

end

end A361960.P1131765134345508296

namespace A361960

/-- `A127040(2*n+1)+A099576(2*n)` -/
def P1131765134345508296.Spec : Prop :=
  ∀ n, P1131765134345508296.a n = A361960 (n + 1)

end A361960

/-! ## A361960.P9349853764774151790

`A175167(2*(n+1))+A099576(2*n)`
-/

namespace A361960.P9349853764774151790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175167 (2 * (n + 1)) + A099576 (2 * n)

end

end A361960.P9349853764774151790

namespace A361960

/-- `A175167(2*(n+1))+A099576(2*n)` -/
def P9349853764774151790.Spec : Prop :=
  ∀ n, P9349853764774151790.a n = A361960 (n + 1)

end A361960

/-! ## A361960.P1181117398155461337

`Δ[A099578(2*n)]-A099578(2*n+1)`
-/

namespace A361960.P1181117398155461337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099578 (2 * n + 1)

end

end A361960.P1181117398155461337

namespace A361960

/-- `Δ[A099578(2*n)]-A099578(2*n+1)` -/
def P1181117398155461337.Spec : Prop :=
  ∀ n, P1181117398155461337.a n = A361960 (n + 1)

end A361960

/-! ## A361960.P11290732060698294363

`A045721(n+1)-(A045721(n)+A025174(n+1))`
-/

namespace A361960.P11290732060698294363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 (n + 1) - (A045721 n + A025174 (n + 1))

end

end A361960.P11290732060698294363

namespace A361960

/-- `A045721(n+1)-(A045721(n)+A025174(n+1))` -/
def P11290732060698294363.Spec : Prop :=
  ∀ n, P11290732060698294363.a n = A361960 (n + 1)

end A361960

/-!
# A361968: Unitary highly totient numbers: numbers k that have more solutions x to the equation uphi(x) = k than any smaller k, where uphi is the unitary totient function (A047994).

The programs for A361968, there is no canonical definition to state claims against.
-/

/-! ## A361968.P8508659309021242036

`record[A005875(A237427(n))]`
-/

namespace A361968.P8508659309021242036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A237427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361968.P8508659309021242036

/-! ## A361968.P4333084119390197107

`record[A141219(n+1)*A327936(3*n+1)]`
-/

namespace A361968.P4333084119390197107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141219 (n + 1) * A327936 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361968.P4333084119390197107

/-!
# A361969: Numbers k with a single solution x to the equation uphi(x) = k, where uphi is the unitary totient function (A047994).

The programs for A361969, there is no canonical definition to state claims against.
-/

/-! ## A361969.P9876101085148546028

`A362212(n+1)-A323410(A362212(n+1))`
-/

namespace A361969.P9876101085148546028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362212 (n + 1) - A323410 (A362212 (n + 1)).toNat

end

end A361969.P9876101085148546028

/-! ## A361969.P161066885883457095

`eq[1, A361967(n+1)]+1`
-/

namespace A361969.P161066885883457095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361969.P161066885883457095

/-! ## A361969.P13617367422649448126

`eq[1, A361967(A028310(n))]`
-/

namespace A361969.P13617367422649448126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361969.P13617367422649448126

/-! ## A361969.P17033432971914383842

`eq[1, A361967(A000007(n)+n)]`
-/

namespace A361969.P17033432971914383842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361969.P17033432971914383842

/-! ## A361969.P6749696328708217514

`A047994(A362212(n+1))`
-/

namespace A361969.P6749696328708217514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A362212 (n + 1)).toNat

end

end A361969.P6749696328708217514

/-!
# A361971: Record values in A361967.

The programs for A361971, there is no canonical definition to state claims against.
-/

/-! ## A361971.P13564549564331775402

`A361967(A361968(n+1))`
-/

namespace A361971.P13564549564331775402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A361968 (n + 1)).toNat

end

end A361971.P13564549564331775402

/-! ## A361971.P12174661087344393497

`record[A361967(2*(n+1))]`
-/

namespace A361971.P12174661087344393497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361971.P12174661087344393497

/-! ## A361971.P11375404171717694690

`lt[A361970(n), A095117(A000217(n))]`
-/

namespace A361971.P11375404171717694690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361971.P11375404171717694690

/-!
# A361973: Decimal expansion of twice the Champernowne constant.

The programs for A361973, there is no canonical definition to state claims against.
-/

/-! ## A361973.P443374216372987309

`A002266(A136414(n+1))%10`
-/

namespace A361973.P443374216372987309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (A136414 (n + 1)).toNat) 10

end

end A361973.P443374216372987309

/-! ## A361973.P498021465868447255

`A010879(floor(A136414(n+1)/5))`
-/

namespace A361973.P498021465868447255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ⌊(A136414 (n + 1) : ℚ) / 5⌋.toNat

end

end A361973.P498021465868447255

/-!
# A361974: (1,2)-block array, B(1,2), of the natural number array (A000027), read by descending antidiagonals.

The programs for A361974, there is no canonical definition to state claims against.
-/

/-! ## A361974.P1872309979969100792

`A214871(A341706(n+1))`
-/

namespace A361974.P1872309979969100792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214871 (A341706 (n + 1)).toNat

end

end A361974.P1872309979969100792

/-! ## A361974.P15248578269931116390

`A133280(A128116(n+1)+n+1)`
-/

namespace A361974.P15248578269931116390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A128116 (n + 1) + (n + 1 : ℤ)).toNat

end

end A361974.P15248578269931116390

/-! ## A361974.P9991087455054615061

`A375510(lt[n+1, A056011(n+1)])`
-/

namespace A361974.P9991087455054615061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A361974.P9991087455054615061

/-! ## A361974.P15707305399927518245

`A214871(A185869(n+1)-A002262(n))`
-/

namespace A361974.P15707305399927518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214871 (A185869 (n + 1) - A002262 n).toNat

end

end A361974.P15707305399927518245

/-! ## A361974.P17350839497948345402

`A375510(lt[A101688(n), A057212(n+1)])`
-/

namespace A361974.P17350839497948345402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361974.P17350839497948345402

/-!
# A361975: (2,1)-block array, B(2,1), of the natural number array (A000027), read by descending antidiagonals.

The programs for A361975, there is no canonical definition to state claims against.
-/

/-! ## A361975.P11659485093773148453

`A002522(A108872(n+1))-A099375(n)`
-/

namespace A361975.P11659485093773148453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A108872 (n + 1)).toNat - A099375 n

end

end A361975.P11659485093773148453

/-! ## A361975.P18198789123858250017

`A056537(A185870(n+1))-A025581(n)`
-/

namespace A361975.P18198789123858250017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (A185870 (n + 1)).toNat - A025581 n

end

end A361975.P18198789123858250017

/-! ## A361975.P413892453898623908

`A194012(2*n+1)+A194012(2*(n+1))`
-/

namespace A361975.P413892453898623908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194012 (2 * n + 1) + A194012 (2 * (n + 1))

end

end A361975.P413892453898623908

/-!
# A361976: (2,2)-block array, B(2,2), of the natural number array (A000027), read by descending antidiagonals.

The programs for A361976, there is no canonical definition to state claims against.
-/

/-! ## A361976.P1327681364088644472

`4*(Δ[n²]+∑[char[∑[n]]]²)+3`
-/

namespace A361976.P1327681364088644472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)) + 3

end

end A361976.P1327681364088644472

/-! ## A361976.P13844757606486307619

`or(3, 4*A185869(n+1))`
-/

namespace A361976.P13844757606486307619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * A185869 (n + 1))

end

end A361976.P13844757606486307619

/-! ## A361976.P11558303736623487522

`abs(4*A185870(n+1)-1)`
-/

namespace A361976.P11558303736623487522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A185870 (n + 1) - 1|

end

end A361976.P11558303736623487522

/-! ## A361976.P12534853591610036963

`A004767(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A361976.P12534853591610036963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A361976.P12534853591610036963

/-! ## A361976.P11201771968571125276

`A004273(2*(2*n+∑[char[∑[n]]]²+2))`
-/

namespace A361976.P11201771968571125276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2)))

end

end A361976.P11201771968571125276

/-! ## A361976.P14060656384838924027

`A047546(2*(2*n+∑[char[∑[n]]]²+2))`
-/

namespace A361976.P14060656384838924027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047546 (2 * (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2)))

end

end A361976.P14060656384838924027

/-! ## A361976.P13039918932024645694

`A217585(A185870(n+1))`
-/

namespace A361976.P13039918932024645694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (A185870 (n + 1)).toNat

end

end A361976.P13039918932024645694

/-!
# A361978: Complement of A361337.

The programs for A361978, there is no canonical definition to state claims against.
-/

/-! ## A361978.P9591119827210573344

`comp[A361337(n+1)]`
-/

namespace A361978.P9591119827210573344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A361978.P9591119827210573344

/-! ## A361978.P303883294298542626

`A326332(A038569(n+4))+A277061(n+1)`
-/

namespace A361978.P303883294298542626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326332 (A038569 (n + 4)).toNat + A277061 (n + 1)

end

end A361978.P303883294298542626

/-! ## A361978.P862372851423086377

`A277061(n+1)+A010054(A008364(2*(n+2)))`
-/

namespace A361978.P862372851423086377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1) + A010054 (A008364 (2 * (n + 2))).toNat

end

end A361978.P862372851423086377

/-!
# A361979: Expansion of 1 / Sum_{k>=0} x^(k*(2*k - 1)).

The programs for A361979, there is no canonical definition to state claims against.
-/

/-! ## A361979.P3338054891951118520

`A000007(A122834(n+1))-A101916(n+1)`
-/

namespace A361979.P3338054891951118520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A122834 (n + 1)).toNat - A101916 (n + 1)

end

end A361979.P3338054891951118520

/-! ## A361979.P4842026120029251773

`A121373(A204483(n+1))-A101916(n+1)`
-/

namespace A361979.P4842026120029251773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A204483 (n + 1)).toNat - A101916 (n + 1)

end

end A361979.P4842026120029251773

/-! ## A361979.P14665778086814044290

`A330973(A038476(n+1))-A101916(n+1)`
-/

namespace A361979.P14665778086814044290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A038476 (n + 1)).toNat - A101916 (n + 1)

end

end A361979.P14665778086814044290

/-! ## A361979.P1008780886539239183

`A008683(A000583(n+3))-A101916(n+1)`
-/

namespace A361979.P1008780886539239183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000583 (n + 3)).toNat - A101916 (n + 1)

end

end A361979.P1008780886539239183

/-! ## A361979.P6667772392271274382

`A008683(A236749(n+4))-A101916(n+1)`
-/

namespace A361979.P6667772392271274382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A236749 (n + 4)).toNat - A101916 (n + 1)

end

end A361979.P6667772392271274382

/-!
# A361981: a(1) = 1; a(n) = Sum_{k=2..n} (-1)^k * k^2 * a(floor(n/k)).

The programs for A361981, there is no canonical definition to state claims against.
-/

/-! ## A361981.P6732535311789412395

`∑[A361986(n+1)]`
-/

namespace A361981.P6732535311789412395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361981.P6732535311789412395

/-!
# A361982: a(n) = 1 + Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

The programs for A361982, the canonical program `A361982.P1969307350692837118` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361982 has offset 1).

The definition of A361982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361982.P1969307350692837118

`∑[A332793(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361982

/-- `∑[A332793(n+1)]` -/
def P1969307350692837118.Spec : Prop :=
  ∀ n, P1969307350692837118.a n = A361982 (n + 1)

theorem P1969307350692837118.correct : P1969307350692837118.Spec := by
  intro n
  simp only [A361982, Nat.add_sub_cancel]

end A361982

/-! ## A361982.P12665157055383570693

`∑[∑{d}[n+1, A327268(#)]]`
-/

namespace A361982.P12665157055383570693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A327268 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P12665157055383570693

namespace A361982

/-- `∑[∑{d}[n+1, A327268(#)]]` -/
def P12665157055383570693.Spec : Prop :=
  ∀ n, P12665157055383570693.a n = A361982 (n + 1)

end A361982

/-! ## A361982.P6932030362127169075

`∑[(n+1)*A067856(n+1)]`
-/

namespace A361982.P6932030362127169075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P6932030362127169075

namespace A361982

/-- `∑[(n+1)*A067856(n+1)]` -/
def P6932030362127169075.Spec : Prop :=
  ∀ n, P6932030362127169075.a n = A361982 (n + 1)

end A361982

/-! ## A361982.P11046700896715287794

`∑[A361987(n+1)/(n+1)]`
-/

namespace A361982.P11046700896715287794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P11046700896715287794

namespace A361982

/-- `∑[A361987(n+1)/(n+1)]` -/
def P11046700896715287794.Spec : Prop :=
  ∀ n, P11046700896715287794.a n = (A361982 (n + 1) : ℚ)

end A361982

/-! ## A361982.P16981471598357011701

`∑[(n+1)*A209635(n+1)*A348037(n+1)]`
-/

namespace A361982.P16981471598357011701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A209635 (n + 1) * A348037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P16981471598357011701

namespace A361982

/-- `∑[(n+1)*A209635(n+1)*A348037(n+1)]` -/
def P16981471598357011701.Spec : Prop :=
  ∀ n, P16981471598357011701.a n = A361982 (n + 1)

end A361982

/-!
# A361983: a(n) = 1 + Sum_{k=2..n} (-1)^k * k^2 * a(floor(n/k)).

The programs for A361983, the canonical program `A361983.P15191376049012557876` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361983 has offset 1).

The definition of A361983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361983.P10416383754501899755

`∑[A361987(n+1)]`
-/

namespace A361983.P10416383754501899755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P10416383754501899755

namespace A361983

/-- `∑[A361987(n+1)]` -/
def P10416383754501899755.Spec : Prop :=
  ∀ n, P10416383754501899755.a n = A361983 (n + 1)

end A361983

/-! ## A361983.P15191376049012557876

`∑[(n+1)*A332793(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361983

/-- `∑[(n+1)*A332793(n+1)]` -/
def P15191376049012557876.Spec : Prop :=
  ∀ n, P15191376049012557876.a n = A361983 (n + 1)

theorem P15191376049012557876.correct : P15191376049012557876.Spec := by
  intro n
  simp only [A361983, Nat.add_sub_cancel]

end A361983

/-! ## A361983.P17916787054601312761

`∑[(n+1)²*A067856(n+1)]`
-/

namespace A361983.P17916787054601312761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P17916787054601312761

namespace A361983

/-- `∑[(n+1)²*A067856(n+1)]` -/
def P17916787054601312761.Spec : Prop :=
  ∀ n, P17916787054601312761.a n = A361983 (n + 1)

theorem P17916787054601312761.correct : P17916787054601312761.Spec := by
  intro n
  simp only [A361983, Nat.add_sub_cancel, A361983.P17916787054601312761.f1, A361983.P17916787054601312761.a, A361983.P15191376049012557876.f1, A361983.P15191376049012557876.a, A067856, A067856.P11218736261645060229.f1, A067856.P11218736261645060229.a, A332793, A332793.P2046662391934450926.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A038712, A038712.P3404197303190209645.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361983

/-! ## A361983.P16250479222979700812

`∑[(n+1)*∑{d}[n+1, A327268(#)]]`
-/

namespace A361983.P16250479222979700812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A327268 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P16250479222979700812

namespace A361983

/-- `∑[(n+1)*∑{d}[n+1, A327268(#)]]` -/
def P16250479222979700812.Spec : Prop :=
  ∀ n, P16250479222979700812.a n = A361983 (n + 1)

end A361983

/-! ## A361983.P16487690018633462209

`∑[A209635(n+1)*A348037(n+1)*(n+1)²]`
-/

namespace A361983.P16487690018633462209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A348037 (n + 1) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P16487690018633462209

namespace A361983

/-- `∑[A209635(n+1)*A348037(n+1)*(n+1)²]` -/
def P16487690018633462209.Spec : Prop :=
  ∀ n, P16487690018633462209.a n = A361983 (n + 1)

end A361983

/-!
# A361984: a(1) = 1, a(2) = 0; a(n) = Sum_{d|n, d < n} (-1)^(n/d) a(d).

The programs for A361984, the canonical program `A361984.P10115388884131320115` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361984 has offset 1).

The definition of A361984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361984.P9420333443911138756

`Δ[A309288(n)]`
-/

namespace A361984.P9420333443911138756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361984.P9420333443911138756

namespace A361984

/-- `Δ[A309288(n)]` -/
def P9420333443911138756.Spec : Prop :=
  ∀ n, P9420333443911138756.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P11323419670667461585

`A309288(n+1)-A309288(n)`
-/

namespace A361984.P11323419670667461585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (n + 1) - A309288 n

end

end A361984.P11323419670667461585

namespace A361984

/-- `A309288(n+1)-A309288(n)` -/
def P11323419670667461585.Spec : Prop :=
  ∀ n, P11323419670667461585.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P2755532715190919960

`(A067856(n+1)+A008683(n+1))/2`
-/

namespace A361984.P2755532715190919960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067856 (n + 1) + A008683 (n + 1) : ℚ) / 2

end

end A361984.P2755532715190919960

namespace A361984

/-- `(A067856(n+1)+A008683(n+1))/2` -/
def P2755532715190919960.Spec : Prop :=
  ∀ n, P2755532715190919960.a n = (A361984 (n + 1) : ℚ)

end A361984

/-! ## A361984.P10115388884131320115

`∑{d}[n+1, A006519(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361984

/-- `∑{d}[n+1, A006519(#)*A007427((n+1)/#)]` -/
def P10115388884131320115.Spec : Prop :=
  ∀ n, P10115388884131320115.a n = A361984 (n + 1)

theorem P10115388884131320115.correct : P10115388884131320115.Spec := by
  intro n
  simp only [A361984, Nat.add_sub_cancel]

end A361984

/-! ## A361984.P9831915442251151442

`∑{d}[n+1, A007428(#)*A174238((n+1)/#)]`
-/

namespace A361984.P9831915442251151442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A174238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P9831915442251151442

namespace A361984

/-- `∑{d}[n+1, A007428(#)*A174238((n+1)/#)]` -/
def P9831915442251151442.Spec : Prop :=
  ∀ n, P9831915442251151442.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P13646858084173043091

`∑{d}[n+1, A046692(#)*A267092((n+1)/#)]`
-/

namespace A361984.P13646858084173043091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P13646858084173043091

namespace A361984

/-- `∑{d}[n+1, A046692(#)*A267092((n+1)/#)]` -/
def P13646858084173043091.Spec : Prop :=
  ∀ n, P13646858084173043091.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P10576355801649148438

`∑{d}[n+1, A000010(#)*A326937((n+1)/#)]`
-/

namespace A361984.P10576355801649148438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A326937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P10576355801649148438

namespace A361984

/-- `∑{d}[n+1, A000010(#)*A326937((n+1)/#)]` -/
def P10576355801649148438.Spec : Prop :=
  ∀ n, P10576355801649148438.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P5759865150248323161

`∑{d}[n+1, A160467(#)*A327276((n+1)/#)]`
-/

namespace A361984.P5759865150248323161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160467 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P5759865150248323161

namespace A361984

/-- `∑{d}[n+1, A160467(#)*A327276((n+1)/#)]` -/
def P5759865150248323161.Spec : Prop :=
  ∀ n, P5759865150248323161.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P1102240159072525509

`∑{d}[n+1, A162728(#)*A359484((n+1)/#)]`
-/

namespace A361984.P1102240159072525509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P1102240159072525509

namespace A361984

/-- `∑{d}[n+1, A162728(#)*A359484((n+1)/#)]` -/
def P1102240159072525509.Spec : Prop :=
  ∀ n, P1102240159072525509.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P6687284704073271093

`∑{d}[n+1, A333787(#)*A341635((n+1)/#)]`
-/

namespace A361984.P6687284704073271093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333787 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P6687284704073271093

namespace A361984

/-- `∑{d}[n+1, A333787(#)*A341635((n+1)/#)]` -/
def P6687284704073271093.Spec : Prop :=
  ∀ n, P6687284704073271093.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P13329613553493353698

`∑{d}[n+1, A326305(#)*A349343((n+1)/#)]`
-/

namespace A361984.P13329613553493353698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P13329613553493353698

namespace A361984

/-- `∑{d}[n+1, A326305(#)*A349343((n+1)/#)]` -/
def P13329613553493353698.Spec : Prop :=
  ∀ n, P13329613553493353698.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P18446626486605134917

`∑{d}[n+1, A092673(#)*A099894((n+1)/#-1)]`
-/

namespace A361984.P18446626486605134917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A361984.P18446626486605134917

namespace A361984

/-- `∑{d}[n+1, A092673(#)*A099894((n+1)/#-1)]` -/
def P18446626486605134917.Spec : Prop :=
  ∀ n, P18446626486605134917.a n = A361984 (n + 1)

end A361984

/-! ## A361984.P13744580208568507486

`∑{d}[n+1, A059841(#-1)*A327274((n+1)/#)]`
-/

namespace A361984.P13744580208568507486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361984.P13744580208568507486

namespace A361984

/-- `∑{d}[n+1, A059841(#-1)*A327274((n+1)/#)]` -/
def P13744580208568507486.Spec : Prop :=
  ∀ n, P13744580208568507486.a n = A361984 (n + 1)

end A361984

/-!
# A361985: a(1) = 1, a(2) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d.

The programs for A361985, the canonical program `A361985.P15140877785734381926` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361985 has offset 1).

The definition of A361985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361985.P15140877785734381926

`∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361985

/-- `∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]` -/
def P15140877785734381926.Spec : Prop :=
  ∀ n, P15140877785734381926.a n = A361985 (n + 1)

theorem P15140877785734381926.correct : P15140877785734381926.Spec := by
  intro n
  simp only [A361985, Nat.add_sub_cancel]

end A361985

/-!
# A361987: a(1) = 1; a(n) = n^2 * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d^2.

The programs for A361987, the canonical program `A361987.P26249262648997249` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361987 has offset 1).

The definition of A361987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361987.P26249262648997249

`(n+1)*A332793(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361987

/-- `(n+1)*A332793(n+1)` -/
def P26249262648997249.Spec : Prop :=
  ∀ n, P26249262648997249.a n = A361987 (n + 1)

theorem P26249262648997249.correct : P26249262648997249.Spec := by
  intro n
  simp only [A361987, Nat.add_sub_cancel]

end A361987

/-! ## A361987.P4711549486774928839

`(n+1)²*A067856(n+1)`
-/

namespace A361987.P4711549486774928839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A067856 (n + 1)

end

end A361987.P4711549486774928839

namespace A361987

/-- `(n+1)²*A067856(n+1)` -/
def P4711549486774928839.Spec : Prop :=
  ∀ n, P4711549486774928839.a n = A361987 (n + 1)

theorem P4711549486774928839.correct : P4711549486774928839.Spec := by
  intro n
  simp only [A361987, Nat.add_sub_cancel, A361987.P4711549486774928839.a, A361987.P26249262648997249.a, A067856, A067856.P11218736261645060229.f1, A067856.P11218736261645060229.a, A332793, A332793.P2046662391934450926.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A038712, A038712.P3404197303190209645.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361987

/-! ## A361987.P7084718518286627494

`(n+1)*∑{d}[n+1, A327268(#)]`
-/

namespace A361987.P7084718518286627494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A327268 d)

end

end A361987.P7084718518286627494

namespace A361987

/-- `(n+1)*∑{d}[n+1, A327268(#)]` -/
def P7084718518286627494.Spec : Prop :=
  ∀ n, P7084718518286627494.a n = A361987 (n + 1)

end A361987

/-! ## A361987.P15438440168597226121

`∑{d}[n+1, A053822(#)*A318935((n+1)/#)]`
-/

namespace A361987.P15438440168597226121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A318935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361987.P15438440168597226121

namespace A361987

/-- `∑{d}[n+1, A053822(#)*A318935((n+1)/#)]` -/
def P15438440168597226121.Spec : Prop :=
  ∀ n, P15438440168597226121.a n = A361987 (n + 1)

end A361987

/-! ## A361987.P16581603327049523402

`∑{d}[n+1, A036987(#-1)*A361986((n+1)/#)]`
-/

namespace A361987.P16581603327049523402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A361986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361987.P16581603327049523402

namespace A361987

/-- `∑{d}[n+1, A036987(#-1)*A361986((n+1)/#)]` -/
def P16581603327049523402.Spec : Prop :=
  ∀ n, P16581603327049523402.a n = A361987 (n + 1)

end A361987

/-!
# A361989: a(n) is the sum of the Fibonacci numbers missing from the dual Zeckendorf representation of n; a(0) = 0, and for n > 0, a(n) = A022290(A035327(A003754(n+1))).

The programs for A361989, the canonical program `A361989.P2689510740431827614` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361989 has offset 0).

The definition of A361989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A194029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361989.P2689510740431827614

`A130312(n+1)-A194029(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A361989

/-- `A130312(n+1)-A194029(n+1)` -/
def P2689510740431827614.Spec : Prop :=
  ∀ n, P2689510740431827614.a n = A361989 n

theorem P2689510740431827614.correct : P2689510740431827614.Spec := by
  intro n
  simp only [A361989]

end A361989

/-! ## A361989.P17521130076943328784

`A000045(A072649(n+1))-A194029(n+1)`
-/

namespace A361989.P17521130076943328784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 1)).toNat - A194029 (n + 1)

end

end A361989.P17521130076943328784

namespace A361989

/-- `A000045(A072649(n+1))-A194029(n+1)` -/
def P17521130076943328784.Spec : Prop :=
  ∀ n, P17521130076943328784.a n = A361989 n

end A361989

/-! ## A361989.P3695681503174573561

`A256654(n+2)-n-2`
-/

namespace A361989.P3695681503174573561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 2) - (n : ℤ) - 2

end

end A361989.P3695681503174573561

namespace A361989

/-- `A256654(n+2)-n-2` -/
def P3695681503174573561.Spec : Prop :=
  ∀ n, P3695681503174573561.a n = A361989 n

end A361989

/-! ## A361989.P13700749857360625814

`eq[1, a(floor(n/ϕ))²]%(n+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A361989.P13700749857360625814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1)

end

end A361989.P13700749857360625814

namespace A361989

/-- `eq[1, a(floor(n/ϕ))²]%(n+1)` -/
def P13700749857360625814.Spec : Prop :=
  ∀ n, (P13700749857360625814.a n : ℤ) = A361989 n

end A361989

/-! ## A361989.P396486756429875843

`A246104(n)-(n+2)`
-/

namespace A361989.P396486756429875843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n - (n + 2 : ℤ)

end

end A361989.P396486756429875843

namespace A361989

/-- `A246104(n)-(n+2)` -/
def P396486756429875843.Spec : Prop :=
  ∀ n, P396486756429875843.a n = A361989 n

end A361989

/-! ## A361989.P13127182371681806055

`A023444(A246104(n)-n)`
-/

namespace A361989.P13127182371681806055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246104 n - (n : ℤ)).toNat

end

end A361989.P13127182371681806055

namespace A361989

/-- `A023444(A246104(n)-n)` -/
def P13127182371681806055.Spec : Prop :=
  ∀ n, P13127182371681806055.a n = A361989 n

end A361989

/-! ## A361989.P15619134443562482801

`A246104(n)%A057544(n)`
-/

namespace A361989.P15619134443562482801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246104 n) (A057544 n)

end

end A361989.P15619134443562482801

namespace A361989

/-- `A246104(n)%A057544(n)` -/
def P15619134443562482801.Spec : Prop :=
  ∀ n, P15619134443562482801.a n = A361989 n

end A361989

/-! ## A361989.P13791668013924061450

`A000045(A108852(n+1))-(n+2)`
-/

namespace A361989.P13791668013924061450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 1)).toNat - (n + 2 : ℤ)

end

end A361989.P13791668013924061450

namespace A361989

/-- `A000045(A108852(n+1))-(n+2)` -/
def P13791668013924061450.Spec : Prop :=
  ∀ n, P13791668013924061450.a n = A361989 n

end A361989

/-! ## A361989.P2496613428257488504

`A000045(A130234(n+2))-(n+2)`
-/

namespace A361989.P2496613428257488504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130234 (n + 2)).toNat - (n + 2 : ℤ)

end

end A361989.P2496613428257488504

namespace A361989

/-- `A000045(A130234(n+2))-(n+2)` -/
def P2496613428257488504.Spec : Prop :=
  ∀ n, P2496613428257488504.a n = A361989 n

end A361989

/-! ## A361989.P8220936164437420548

`A280514(ceil(abs(γ-n)))-1`
-/

namespace A361989.P8220936164437420548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1

end

end A361989.P8220936164437420548

namespace A361989

/-- `A280514(ceil(abs(γ-n)))-1` -/
def P8220936164437420548.Spec : Prop :=
  ∀ n, P8220936164437420548.a n = A361989 n

end A361989

/-! ## A361989.P12896615015818148477

`A066628(A280514(2*n+1)+n)`
-/

namespace A361989.P12896615015818148477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A280514 (2 * n + 1) + (n : ℤ)).toNat

end

end A361989.P12896615015818148477

namespace A361989

/-- `A066628(A280514(2*n+1)+n)` -/
def P12896615015818148477.Spec : Prop :=
  ∀ n, P12896615015818148477.a n = A361989 n

end A361989

/-!
# A361991: Number of prime knotoids in a sphere with n crossings.

The programs for A361991, there is no canonical definition to state claims against.
-/

/-! ## A361991.P7409657229821746410

`∑{p}[2*n, (n-and(5, #))!]`
-/

namespace A361991.P7409657229821746410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial ((n : ℤ) - (Nat.land 5 p : ℤ)).toNat

end

end A361991.P7409657229821746410

/-!
# A361992: (1,2)-block array, B(1,2), of the Wythoff array (A035513), read by descending antidiagonals.

The programs for A361992, there is no canonical definition to state claims against.
-/

/-! ## A361992.P4760844608385388798

`A003623(A080164(n+1))`
-/

namespace A361992.P4760844608385388798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A080164 (n + 1)).toNat

end

end A361992.P4760844608385388798

/-!
# A361994: (2,2)-block array, B(2,1), of the Wythoff array (A035513), read by descending antidiagonals.

The programs for A361994, there is no canonical definition to state claims against.
-/

/-! ## A361994.P15278913178476142878

`record[A121375(n+1)-A000010(n+1)-A000010(n+1)]`
-/

namespace A361994.P15278913178476142878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121375 (n + 1) - A000010 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361994.P15278913178476142878

/-!
# A361995: Order array of A361993, read by descending antidiagonals.

The programs for A361995, there is no canonical definition to state claims against.
-/

/-! ## A361995.P18368266348829059852

`xor(A126714(n+1), A239657(A000051(n)))`
-/

namespace A361995.P18368266348829059852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126714 (n + 1)) (A239657 (A000051 n).toNat)

end

end A361995.P18368266348829059852

/-!
# A361997: Records in A361902.

The programs for A361997, there is no canonical definition to state claims against.
-/

/-! ## A361997.P2353106199890014015

`record[A361902(n)]`
-/

namespace A361997.P2353106199890014015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361997.P2353106199890014015

/-! ## A361997.P17670191794246828899

`A361902(A361998(n+1))`
-/

namespace A361997.P17670191794246828899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 (A361998 (n + 1)).toNat

end

end A361997.P17670191794246828899

/-!
# A361998: Indices of records in A361902.

The programs for A361998, there is no canonical definition to state claims against.
-/

/-! ## A361998.P5209774973070459089

`A361999(record[A361902(n)])`
-/

namespace A361998.P5209774973070459089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361998.P5209774973070459089

/-! ## A361998.P15185253140021909873

`A361999(A361997(n+1))`
-/

namespace A361998.P15185253140021909873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361999 (A361997 (n + 1)).toNat

end

end A361998.P15185253140021909873

