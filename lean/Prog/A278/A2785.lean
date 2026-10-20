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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C025

/-!
# A278500: a(n) = largest k such that n+1 = a prime, n+2 = 2 * a prime, ..., n+k is k times a prime, a(n) = 0 if n+1 is not a prime.

The programs for A278500, there is no canonical definition to state claims against.
-/

/-! ## A278500.P11215837943624185600

`A000005(A180916(3*n+4))*A010051(n+2)`
-/

namespace A278500.P11215837943624185600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A180916 (3 * n + 4)).toNat * A010051 (n + 2)

end

end A278500.P11215837943624185600

/-! ## A278500.P18283669291967212176

`Δ[A000720(n+1)]*A103957(A037380(n+1))`
-/

namespace A278500.P18283669291967212176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103957 (A037380 (n + 1)).toNat

end

end A278500.P18283669291967212176

/-! ## A278500.P5945115775293384365

`C(A228100(A102185(n+1)), A003415(n+2))`
-/

namespace A278500.P5945115775293384365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228100 (A102185 (n + 1)).toNat).toNat (A003415 (n + 2)).toNat

end

end A278500.P5945115775293384365

/-! ## A278500.P1480900863432953017

`val(A300254(A344309(3*n+1)), A300252(10*n+8))`
-/

namespace A278500.P1480900863432953017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A300254 (A344309 (3 * n + 1)).toNat).toNat (A300252 (10 * n + 8)).toNat

end

end A278500.P1480900863432953017

/-!
# A278501: a(n) = A046523(A279336(n)).

The programs for A278501, there is no canonical definition to state claims against.
-/

/-! ## A278501.P13572038334339502576

`A046523(A279336(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278501.P13572038334339502576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A279336 (n + 1)).toNat

end

end A278501.P13572038334339502576

/-! ## A278501.P7130555541470933210

`A086876((A063007(n)+A001222(n+1))²)`
-/

namespace A278501.P7130555541470933210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 ((A063007 n + A001222 (n + 1)) ^ 2).toNat

end

end A278501.P7130555541470933210

/-! ## A278501.P2224437631206803450

`A347739(A087112(n+1)+A005145(n+1))`
-/

namespace A278501.P2224437631206803450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 (A087112 (n + 1) + A005145 (n + 1)).toNat

end

end A278501.P2224437631206803450

/-! ## A278501.P3837034680286457951

`A278222(A096016(n))%A095970(3*n+1)`
-/

namespace A278501.P3837034680286457951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 (A096016 n).toNat) (A095970 (3 * n + 1))

end

end A278501.P3837034680286457951

/-!
# A278502: a(n) = A046523(A279338(n)).

The programs for A278502, there is no canonical definition to state claims against.
-/

/-! ## A278502.P8904176219123340012

`A046523(A279338(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278502.P8904176219123340012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A279338 (n + 1)).toNat

end

end A278502.P8904176219123340012

/-! ## A278502.P6503459359843973674

`A278222(A279343(n+1))`
-/

namespace A278502.P6503459359843973674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A279343 (n + 1)).toNat

end

end A278502.P6503459359843973674

/-! ## A278502.P11364401044374953436

`A278531(A279341(n+1))`
-/

namespace A278502.P11364401044374953436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A279341 (n + 1)).toNat

end

end A278502.P11364401044374953436

/-! ## A278502.P16812675019611084337

`A278524(A279348(n+1))`
-/

namespace A278502.P16812675019611084337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A279348 (n + 1)).toNat

end

end A278502.P16812675019611084337

/-! ## A278502.P274250467109511196

`A278222(∑{d}[A279338(n+1), A297112(#)])`
-/

namespace A278502.P274250467109511196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d).toNat

end

end A278502.P274250467109511196

/-! ## A278502.P4598865376319008709

`A278501(A279337(A279338(A279337(A279336(n+1)))))`
-/

namespace A278502.P4598865376319008709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278501 (A279337 (A279338 (A279337 (A279336 (n + 1)).toNat).toNat).toNat).toNat

end

end A278502.P4598865376319008709

/-! ## A278502.P17865745597555558909

`A278501(A279337(A279338(A005187(n+1))))`
-/

namespace A278502.P17865745597555558909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278501 (A279337 (A279338 (A005187 (n + 1)).toNat).toNat).toNat

end

end A278502.P17865745597555558909

/-!
# A278503: Transpose of square array A278505.

The programs for A278503, there is no canonical definition to state claims against.
-/

/-! ## A278503.P6466737522223094902

`A278505(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A278503.P6466737522223094902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A278503.P6466737522223094902

/-! ## A278503.P1213593224061763103

`A278505(A038722(n+1))`
-/

namespace A278503.P1213593224061763103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A038722 (n + 1)).toNat

end

end A278503.P1213593224061763103

/-! ## A278503.P1445935611487678927

`A278505(A061579(n)+1)`
-/

namespace A278503.P1445935611487678927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A061579 n + 1).toNat

end

end A278503.P1445935611487678927

/-! ## A278503.P1383075387544005180

`A278505(A093995(n+1)-n)`
-/

namespace A278503.P1383075387544005180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A278503.P1383075387544005180

/-! ## A278503.P1921520633010850550

`A278505(n+2-A127948(n))`
-/

namespace A278503.P1921520633010850550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 ((n + 2 : ℤ) - A127948 n).toNat

end

end A278503.P1921520633010850550

/-! ## A278503.P465099533706326163

`A278505(A002024(n+1)²-n)`
-/

namespace A278503.P465099533706326163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A278503.P465099533706326163

/-! ## A278503.P2713287644240986515

`A278505(A057944(n)+val(A118586(n+1), 2))`
-/

namespace A278503.P2713287644240986515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A057944 n + (SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2 : ℤ)).toNat

end

end A278503.P2713287644240986515

/-! ## A278503.P13948620762992940884

`A278505(A057944(n)+A127739(n+1)-n)`
-/

namespace A278503.P13948620762992940884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A057944 n + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A278503.P13948620762992940884

/-! ## A278503.P11594699712377209987

`A278505(A057944(n)+sqrt(A095831(n+1))+1)`
-/

namespace A278503.P11594699712377209987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (SequenceMachineLib.roundAway ((A057944 n : ℝ) + (Real.sqrt (A095831 (n + 1) : ℝ) + 1))).toNat

end

end A278503.P11594699712377209987

/-! ## A278503.P11511429201002042964

`A278505(n-(A002260(n+1)-A004736(n+1))+1)`
-/

namespace A278503.P11511429201002042964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 ((n : ℤ) - (A002260 (n + 1) - A004736 (n + 1)) + 1).toNat

end

end A278503.P11511429201002042964

/-! ## A278503.P4905222131013347342

`A278505(A278504(A278505(n+1)))`
-/

namespace A278503.P4905222131013347342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A278504 (A278505 (n + 1)).toNat).toNat

end

end A278503.P4905222131013347342

/-!
# A278504: Inverse permutation to A278503.

The programs for A278504, there is no canonical definition to state claims against.
-/

/-! ## A278504.P9240086412671369295

`A278506(n+1)+A278539(n+1)-A278538(n+1)`
-/

namespace A278504.P9240086412671369295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278506 (n + 1) + (A278539 (n + 1) - A278538 (n + 1))

end

end A278504.P9240086412671369295

/-! ## A278504.P2150346717405852030

`A038722(A278506(n+1))`
-/

namespace A278504.P2150346717405852030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A278506 (n + 1)).toNat

end

end A278504.P2150346717405852030

/-! ## A278504.P16539426556725402288

`A061579(A278506(n+1)-1)+1`
-/

namespace A278504.P16539426556725402288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A278506 (n + 1) - 1).toNat + 1

end

end A278504.P16539426556725402288

/-! ## A278504.P8809362356471456846

`A255548(n+1)+A014375(A013609(n))`
-/

namespace A278504.P8809362356471456846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255548 (n + 1) + A014375 (A013609 n).toNat

end

end A278504.P8809362356471456846

/-! ## A278504.P8563177828075282294

`A255548(n+1)+A226955(A050932(n))`
-/

namespace A278504.P8563177828075282294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255548 (n + 1) + A226955 (A050932 n).toNat

end

end A278504.P8563177828075282294

/-!
# A278505: Square array constructed from Flavius sieve: Each row n (n >= 1) starts with A000960(n), followed by all numbers removed at the stage n of the sieve.

The programs for A278505, there is no canonical definition to state claims against.
-/

/-! ## A278505.P8921777418764204848

`A278503(A038722(n+1))`
-/

namespace A278505.P8921777418764204848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A038722 (n + 1)).toNat

end

end A278505.P8921777418764204848

/-! ## A278505.P18098853315339095983

`A278503(A061579(n)+1)`
-/

namespace A278505.P18098853315339095983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A061579 n + 1).toNat

end

end A278505.P18098853315339095983

/-! ## A278505.P15648277078105995991

`A278503(A114327(n)+1+n)`
-/

namespace A278505.P15648277078105995991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A114327 n + 1 + (n : ℤ)).toNat

end

end A278505.P15648277078105995991

/-! ## A278505.P17607362577713683431

`A278503(n+2-A127948(n))`
-/

namespace A278505.P17607362577713683431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 ((n + 2 : ℤ) - A127948 n).toNat

end

end A278505.P17607362577713683431

/-! ## A278505.P15414689052936179920

`A278503(A123578(n+1)²-n)`
-/

namespace A278505.P15414689052936179920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A278505.P15414689052936179920

/-! ## A278505.P16575839587217441608

`A278503(A123578(n+1)*A123578(n+1)-n)`
-/

namespace A278505.P16575839587217441608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A123578 (n + 1) * A123578 (n + 1) - (n : ℤ)).toNat

end

end A278505.P16575839587217441608

/-! ## A278505.P4663388786927894940

`A278503(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A278505.P4663388786927894940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A278505.P4663388786927894940

/-! ## A278505.P15684121981150978542

`A278503(A278506(A278503(n+1)))`
-/

namespace A278505.P15684121981150978542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (A278506 (A278503 (n + 1)).toNat).toNat

end

end A278505.P15684121981150978542

/-! ## A278505.P6145053759162127764

`xor(-A020639(A099259(n+1)), -A278511(n+1))`
-/

namespace A278505.P6145053759162127764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A020639 (A099259 (n + 1)).toNat) (-A278511 (n + 1))

end

end A278505.P6145053759162127764

/-!
# A278506: Inverse permutation to A278505.

The programs for A278506, there is no canonical definition to state claims against.
-/

/-! ## A278506.P3544186154428636096

`A278504(n+1)+A278538(n+1)-A278539(n+1)`
-/

namespace A278506.P3544186154428636096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278504 (n + 1) + (A278538 (n + 1) - A278539 (n + 1))

end

end A278506.P3544186154428636096

/-! ## A278506.P13103103114942992639

`A038722(A278504(n+1))`
-/

namespace A278506.P13103103114942992639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A278504 (n + 1)).toNat

end

end A278506.P13103103114942992639

/-! ## A278506.P10685081846577328372

`A127739(A278504(n+1)-A278529(n+1))-A278529(n+1)`
-/

namespace A278506.P10685081846577328372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A278504 (n + 1) - A278529 (n + 1)).toNat - A278529 (n + 1)

end

end A278506.P10685081846577328372

/-! ## A278506.P17970148453602269150

`A127739(A278504(n+1))-A278529(n+1)`
-/

namespace A278506.P17970148453602269150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A278504 (n + 1)).toNat - A278529 (n + 1)

end

end A278506.P17970148453602269150

/-! ## A278506.P17380609276876177793

`A127739(A278504(n+1))+1-A278539(n+1)`
-/

namespace A278506.P17380609276876177793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A278504 (n + 1)).toNat + (1 - A278539 (n + 1))

end

end A278506.P17380609276876177793

/-! ## A278506.P3845267501887071149

`A127739(A278504(n+1))-(A278537(A114112(n+2))-1)`
-/

namespace A278506.P3845267501887071149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A278504 (n + 1)).toNat - (A278537 (A114112 (n + 2)).toNat - 1)

end

end A278506.P3845267501887071149

/-!
# A278507: Square array A(row,col) where row n lists the numbers removed in round n of Flavius sieve. Array is read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A278507, there is no canonical definition to state claims against.
-/

/-! ## A278507.P18013351861802404625

`A278505(comp[∑[n]])`
-/

namespace A278507.P18013351861802404625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A278507.P18013351861802404625

/-! ## A278507.P12805371377956954394

`A278508(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A278507.P12805371377956954394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A278507.P12805371377956954394

/-! ## A278507.P1766153794925714010

`A278508(A038722(n+1))`
-/

namespace A278507.P1766153794925714010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 (A038722 (n + 1)).toNat

end

end A278507.P1766153794925714010

/-! ## A278507.P5127494328023095980

`A278508(A061579(n)+1)`
-/

namespace A278507.P5127494328023095980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 (A061579 n + 1).toNat

end

end A278507.P5127494328023095980

/-! ## A278507.P5369676871582006213

`A278508(2-A127948(n)+n)`
-/

namespace A278507.P5369676871582006213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 (2 - A127948 n + (n : ℤ)).toNat

end

end A278507.P5369676871582006213

/-! ## A278507.P13647026229111307214

`A278503(2*A004736(n+1)+n+1)`
-/

namespace A278507.P13647026229111307214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (2 * A004736 (n + 1) + (n : ℤ) + 1).toNat

end

end A278507.P13647026229111307214

/-!
# A278508: Transpose of square array A278507.

The programs for A278508, there is no canonical definition to state claims against.
-/

/-! ## A278508.P14921632408488441242

`A278507(A038722(n+1))`
-/

namespace A278508.P14921632408488441242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A038722 (n + 1)).toNat

end

end A278508.P14921632408488441242

/-! ## A278508.P18352952884149728136

`A278507(A061579(n)+1)`
-/

namespace A278508.P18352952884149728136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A061579 n + 1).toNat

end

end A278508.P18352952884149728136

/-! ## A278508.P1794688424975914408

`A278505(2*A004736(n+1)+n)`
-/

namespace A278508.P1794688424975914408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A278508.P1794688424975914408

/-! ## A278508.P16506846536039572143

`A278505(A005843(A004736(n+1))+n)`
-/

namespace A278508.P16506846536039572143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A278508.P16506846536039572143

/-! ## A278508.P7976955653239195875

`A278505(A038722(n+1)+A002024(n+1))`
-/

namespace A278508.P7976955653239195875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A278508.P7976955653239195875

/-! ## A278508.P399058032243087649

`A278505(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A278508.P399058032243087649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A278508.P399058032243087649

/-! ## A278508.P15619327707220257441

`A278507(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A278508.P15619327707220257441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A278508.P15619327707220257441

/-! ## A278508.P288415322320723281

`A278503(comp[∑[n]]+1)`
-/

namespace A278508.P288415322320723281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A278508.P288415322320723281

/-! ## A278508.P8885679611710928714

`A278503(lt[char[∑[n]], 1]+1)%(n+2)²`
-/

namespace A278508.P8885679611710928714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278503 (SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1)) ((n + 2) ^ 2 : ℤ)

end

end A278508.P8885679611710928714

/-! ## A278508.P16978141778187130406

`A278507(A278504(A278505(n+1)))`
-/

namespace A278508.P16978141778187130406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A278504 (A278505 (n + 1)).toNat).toNat

end

end A278508.P16978141778187130406

/-! ## A278508.P282918479639925579

`A278507(A278506(A278503(n+1)))`
-/

namespace A278508.P282918479639925579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (A278506 (A278503 (n + 1)).toNat).toNat

end

end A278508.P282918479639925579

/-!
# A278509: a(n) = 3^{number of primes congruent to 3 modulo 4 dividing n (with multiplicity)}.

The programs for A278509, the canonical program `A278509.P8841734432031037313` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278509 has offset 1).

The definition of A278509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278509.P8841734432031037313

`3^A065339(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A278509

/-- `3^A065339(n+1)` -/
def P8841734432031037313.Spec : Prop :=
  ∀ n, P8841734432031037313.a n = (A278509 (n + 1) : ℚ)

end A278509

/-! ## A278509.P10108999966815241916

`A065338(A000265(n+1))`
-/

namespace A278509.P10108999966815241916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A000265 (n + 1)).toNat

end

end A278509.P10108999966815241916

namespace A278509

/-- `A065338(A000265(n+1))` -/
def P10108999966815241916.Spec : Prop :=
  ∀ n, P10108999966815241916.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P7341048962496377438

`3^val(A065338(n+1), 3)`
-/

namespace A278509.P7341048962496377438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A065338 (n + 1)).toNat 3

end

end A278509.P7341048962496377438

namespace A278509

/-- `3^val(A065338(n+1), 3)` -/
def P7341048962496377438.Spec : Prop :=
  ∀ n, (P7341048962496377438.a n : ℤ) = A278509 (n + 1)

end A278509

/-! ## A278509.P5861122784827831865

`A065338(floor(n/and(n+1, -(n+1)))+1)`
-/

namespace A278509.P5861122784827831865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ + 1).toNat

end

end A278509.P5861122784827831865

namespace A278509

/-- `A065338(floor(n/and(n+1, -(n+1)))+1)` -/
def P5861122784827831865.Spec : Prop :=
  ∀ n, P5861122784827831865.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P17790666258844067000

`A065338(gcd(n+1, ∏{d}[(n+1)/and(n+1, -(n+1)), #]))`
-/

namespace A278509.P17790666258844067000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (Nat.gcd (n + 1) (∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d))

end

end A278509.P17790666258844067000

namespace A278509

/-- `A065338(gcd(n+1, ∏{d}[(n+1)/and(n+1, -(n+1)), #]))` -/
def P17790666258844067000.Spec : Prop :=
  ∀ n, P17790666258844067000.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P12409082269218266084

`A097706(A065338(n+1))`
-/

namespace A278509.P12409082269218266084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A065338 (n + 1)).toNat

end

end A278509.P12409082269218266084

namespace A278509

/-- `A097706(A065338(n+1))` -/
def P12409082269218266084.Spec : Prop :=
  ∀ n, P12409082269218266084.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P8018482212004490712

`A065338(A132740(n+1))`
-/

namespace A278509.P8018482212004490712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A132740 (n + 1)).toNat

end

end A278509.P8018482212004490712

namespace A278509

/-- `A065338(A132740(n+1))` -/
def P8018482212004490712.Spec : Prop :=
  ∀ n, P8018482212004490712.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P13354593071566262213

`A246269(A064989(n+1))`
-/

namespace A278509.P13354593071566262213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246269 (A064989 (n + 1)).toNat

end

end A278509.P13354593071566262213

namespace A278509

/-- `A246269(A064989(n+1))` -/
def P13354593071566262213.Spec : Prop :=
  ∀ n, P13354593071566262213.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P17751867351514453202

`A165824(A286363(n+1))`
-/

namespace A278509.P17751867351514453202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A286363 (n + 1)).toNat

end

end A278509.P17751867351514453202

namespace A278509

/-- `A165824(A286363(n+1))` -/
def P17751867351514453202.Spec : Prop :=
  ∀ n, P17751867351514453202.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P17931676867288889473

`3^A001222(A097706(n+1))`
-/

namespace A278509.P17931676867288889473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A097706 (n + 1)).toNat : ℤ)

end

end A278509.P17931676867288889473

namespace A278509

/-- `3^A001222(A097706(n+1))` -/
def P17931676867288889473.Spec : Prop :=
  ∀ n, P17931676867288889473.a n = (A278509 (n + 1) : ℚ)

end A278509

/-! ## A278509.P10550476585189450951

`gcd(A016772(n), A065338(n+1))`
-/

namespace A278509.P10550476585189450951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016772 n) (A065338 (n + 1))

end

end A278509.P10550476585189450951

namespace A278509

/-- `gcd(A016772(n), A065338(n+1))` -/
def P10550476585189450951.Spec : Prop :=
  ∀ n, (P10550476585189450951.a n : ℤ) = A278509 (n + 1)

end A278509

/-! ## A278509.P5950230250832086229

`A065338((n+1)/A006519(n+1))`
-/

namespace A278509.P5950230250832086229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A278509.P5950230250832086229

namespace A278509

/-- `A065338((n+1)/A006519(n+1))` -/
def P5950230250832086229.Spec : Prop :=
  ∀ n, P5950230250832086229.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P1523772447313806381

`A065338((n+1)/A072436(n+1))`
-/

namespace A278509.P1523772447313806381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A278509.P1523772447313806381

namespace A278509

/-- `A065338((n+1)/A072436(n+1))` -/
def P1523772447313806381.Spec : Prop :=
  ∀ n, P1523772447313806381.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P13140222635163918639

`A065338((n+1)/A038502(A065338(n+1)))`
-/

namespace A278509.P13140222635163918639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038502 (A065338 (n + 1)).toNat : ℚ))).toNat

end

end A278509.P13140222635163918639

namespace A278509

/-- `A065338((n+1)/A038502(A065338(n+1)))` -/
def P13140222635163918639.Spec : Prop :=
  ∀ n, P13140222635163918639.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P2052914251500865932

`A065338((n+1)/A322362(A065338(n+1)))`
-/

namespace A278509.P2052914251500865932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A322362 (A065338 (n + 1)).toNat : ℚ))).toNat

end

end A278509.P2052914251500865932

namespace A278509

/-- `A065338((n+1)/A322362(A065338(n+1)))` -/
def P2052914251500865932.Spec : Prop :=
  ∀ n, P2052914251500865932.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P14683493237337601518

`A028234(2*A065338(n+1))`
-/

namespace A278509.P14683493237337601518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A065338 (n + 1)).toNat

end

end A278509.P14683493237337601518

namespace A278509

/-- `A028234(2*A065338(n+1))` -/
def P14683493237337601518.Spec : Prop :=
  ∀ n, P14683493237337601518.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P1345081197435986963

`A028234(A065338(n+2+n))`
-/

namespace A278509.P1345081197435986963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A065338 (n + 2 + n)).toNat

end

end A278509.P1345081197435986963

namespace A278509

/-- `A028234(A065338(n+2+n))` -/
def P1345081197435986963.Spec : Prop :=
  ∀ n, P1345081197435986963.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P3177579577182827375

`A319985(A003963(A065338(2*(n+1))))`
-/

namespace A278509.P3177579577182827375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319985 (A003963 (A065338 (2 * (n + 1))).toNat).toNat

end

end A278509.P3177579577182827375

namespace A278509

/-- `A319985(A003963(A065338(2*(n+1))))` -/
def P3177579577182827375.Spec : Prop :=
  ∀ n, P3177579577182827375.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P16471079972094662800

`A335915(A319984(n+1))`
-/

namespace A278509.P16471079972094662800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A319984 (n + 1)).toNat

end

end A278509.P16471079972094662800

namespace A278509

/-- `A335915(A319984(n+1))` -/
def P16471079972094662800.Spec : Prop :=
  ∀ n, P16471079972094662800.a n = A278509 (n + 1)

end A278509

/-! ## A278509.P2313411213276361076

`A319986(A003963(A065338(A003963(A319987(n+1)))))`
-/

namespace A278509.P2313411213276361076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (A003963 (A065338 (A003963 (A319987 (n + 1)).toNat).toNat).toNat).toNat

end

end A278509.P2313411213276361076

namespace A278509

/-- `A319986(A003963(A065338(A003963(A319987(n+1)))))` -/
def P2313411213276361076.Spec : Prop :=
  ∀ n, P2313411213276361076.a n = A278509 (n + 1)

end A278509

/-!
# A278510: a(n) = A258851(n) - A056239(n).

The programs for A278510, there is no canonical definition to state claims against.
-/

/-! ## A278510.P11308994665142223853

`A258851(n+1)-A056239(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278510.P11308994665142223853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (n + 1) - A056239 (n + 1)

end

end A278510.P11308994665142223853

/-! ## A278510.P15422136362659902866

`∑[A258863(n)]-A056239(n+1)`
-/

namespace A278510.P15422136362659902866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056239 (n + 1)

end

end A278510.P15422136362659902866

/-! ## A278510.P17009499633766638429

`Δ[A258864(n)]-A056239(n+1)`
-/

namespace A278510.P17009499633766638429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056239 (n + 1)

end

end A278510.P17009499633766638429

/-! ## A278510.P10794427438170711404

`A258851(n+1)+1-A316436(2*(n+1))`
-/

namespace A278510.P10794427438170711404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (n + 1) + (1 - A316436 (2 * (n + 1)))

end

end A278510.P10794427438170711404

/-! ## A278510.P8589325255405276813

`A258851(n+1)-A304739(A064664(n+1))`
-/

namespace A278510.P8589325255405276813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (n + 1) - A304739 (A064664 (n + 1)).toNat

end

end A278510.P8589325255405276813

/-! ## A278510.P497661126104509430

`A258851(n+1)-log2(A248692(n+1))`
-/

namespace A278510.P497661126104509430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258851 (n + 1) : ℝ) - Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A278510.P497661126104509430

/-! ## A278510.P15616058208741227188

`A258852(A000040(n+1))-A056239(n+1)`
-/

namespace A278510.P15616058208741227188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A000040 (n + 1)).toNat - A056239 (n + 1)

end

end A278510.P15616058208741227188

/-! ## A278510.P1841212986058522093

`A258852(A008578(n+2))-A056239(n+1)`
-/

namespace A278510.P1841212986058522093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A008578 (n + 2)).toNat - A056239 (n + 1)

end

end A278510.P1841212986058522093

/-! ## A278510.P17906014780668865312

`A258852(A182986(n+2))-A056239(n+1)`
-/

namespace A278510.P17906014780668865312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A182986 (n + 2)).toNat - A056239 (n + 1)

end

end A278510.P17906014780668865312

/-! ## A278510.P12517209227043447326

`A353509(A181821(n+1))`
-/

namespace A278510.P12517209227043447326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353509 (A181821 (n + 1)).toNat

end

end A278510.P12517209227043447326

/-!
# A278511: Square array constructed from Flavius sieve, shifted version, read by descending antidiagonals.

The programs for A278511, there is no canonical definition to state claims against.
-/

/-! ## A278511.P13705788010121360773

`A278505(A066182(n+1)+1)`
-/

namespace A278511.P13705788010121360773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (A066182 (n + 1) + 1).toNat

end

end A278511.P13705788010121360773

/-! ## A278511.P7887906974157966821

`xor(A019425(A019425(n)), A278505(n+1))+1`
-/

namespace A278511.P7887906974157966821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019425 (A019425 n).toNat) (A278505 (n + 1)) + 1

end

end A278511.P7887906974157966821

/-! ## A278511.P9885725621251001778

`A114112(A278505(n+1)+1)`
-/

namespace A278511.P9885725621251001778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A278505 (n + 1) + 1).toNat

end

end A278511.P9885725621251001778

/-! ## A278511.P10111560862072049496

`A014681(A278505(n+1)-1)+2`
-/

namespace A278511.P10111560862072049496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A278505 (n + 1) - 1).toNat + 2

end

end A278511.P10111560862072049496

/-! ## A278511.P6218428882689765413

`A052928(A278505(n+1))+A035214(n)`
-/

namespace A278511.P6218428882689765413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A278505 (n + 1)).toNat + A035214 n

end

end A278511.P6218428882689765413

/-! ## A278511.P5143366513513559167

`A109613(A278505(n+1))+A010054(n)`
-/

namespace A278511.P5143366513513559167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A278505 (n + 1)).toNat + A010054 n

end

end A278511.P5143366513513559167

/-! ## A278511.P12389410025755746897

`A014681(A278505(n+1)-A057428(n))`
-/

namespace A278511.P12389410025755746897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A278505 (n + 1) - A057428 n).toNat

end

end A278511.P12389410025755746897

/-! ## A278511.P12920140934762042161

`A014681(A278505(n+1)+A057428(n)²)`
-/

namespace A278511.P12920140934762042161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A278505 (n + 1) + A057428 n ^ 2).toNat

end

end A278511.P12920140934762042161

/-! ## A278511.P8776507007935318541

`-xor(-A020639(A099259(n+1)), A278505(n+1))`
-/

namespace A278511.P8776507007935318541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A020639 (A099259 (n + 1)).toNat) (A278505 (n + 1))

end

end A278511.P8776507007935318541

/-!
# A278512: Inverse permutation to A278511.

The programs for A278512, there is no canonical definition to state claims against.
-/

/-! ## A278512.P2259308694670606389

`A255552(n+1)+A159075(A171816(n))`
-/

namespace A278512.P2259308694670606389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (n + 1) + A159075 (A171816 n).toNat

end

end A278512.P2259308694670606389

/-! ## A278512.P14034836654599174980

`A255552(n+1)-A226955(A050932(n))`
-/

namespace A278512.P14034836654599174980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (n + 1) - A226955 (A050932 n).toNat

end

end A278512.P14034836654599174980

/-! ## A278512.P6966185894282393753

`and(A255552(n+1), A255565(A255516(n+1)))`
-/

namespace A278512.P6966185894282393753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255552 (n + 1)) (A255565 (A255516 (n + 1)).toNat)

end

end A278512.P6966185894282393753

/-!
# A278513: Möbius function mu applied to the n-th term of the infinite trunk of least squares beanstalk: a(n) = A008683(A276573(n)).

The programs for A278513, there is no canonical definition to state claims against.
-/

/-! ## A278513.P3447306390264947196

`A008683(A276573(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278513.P3447306390264947196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A276573 (n + 1)).toNat

end

end A278513.P3447306390264947196

/-! ## A278513.P16940971654222025952

`A008683(A278497(n+1))`
-/

namespace A278513.P16940971654222025952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278497 (n + 1)).toNat

end

end A278513.P16940971654222025952

/-! ## A278513.P7548949103664146118

`Δ[A278514(n)]`
-/

namespace A278513.P7548949103664146118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278513.P7548949103664146118

/-! ## A278513.P3300792006369721482

`A008683(∑[A276575(n+1)])`
-/

namespace A278513.P3300792006369721482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278513.P3300792006369721482

/-! ## A278513.P11247474527486560784

`A278514(n+1)-A278514(n)`
-/

namespace A278513.P11247474527486560784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278514 (n + 1) - A278514 n

end

end A278513.P11247474527486560784

/-! ## A278513.P7046559635387938600

`A008683(A276574(A276572(n+1)))`
-/

namespace A278513.P7046559635387938600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A276574 (A276572 (n + 1)).toNat).toNat

end

end A278513.P7046559635387938600

/-! ## A278513.P12561954877854420235

`∑{d}[A276573(n+1), A007427(#)]`
-/

namespace A278513.P12561954877854420235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A278513.P12561954877854420235

/-!
# A278514: Partial sums of A278513.

The programs for A278514, there is no canonical definition to state claims against.
-/

/-! ## A278514.P14058779783529156273

`A278513(n)+a(n-1)` with `a(0)=0, a(1)=-1, a(2)=0`
-/

namespace A278514.P14058779783529156273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 0] fun n a =>
  A278513 n + a (n - 1)

end

end A278514.P14058779783529156273

/-! ## A278514.P3794642550783295035

`∑[A278513(A028310(n))]+1`
-/

namespace A278514.P3794642550783295035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278514.P3794642550783295035

/-! ## A278514.P2811924703416873458

`∑[A278513(n+1)]-A278513(n+1)`
-/

namespace A278514.P2811924703416873458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A278513 (n + 1)

end

end A278514.P2811924703416873458

/-! ## A278514.P4851124631050572505

`∑[A057427(n)*A278513(A028310(n))]`
-/

namespace A278514.P4851124631050572505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278513 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278514.P4851124631050572505

/-! ## A278514.P7659793756916356941

`∑[A278513(A028310(n))%A082204(n)]`
-/

namespace A278514.P7659793756916356941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278513 (A028310 n).toNat) (A082204 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278514.P7659793756916356941

/-! ## A278514.P15955688144667817577

`∑[∑{d}[A276573(n), A007427(#)]]`
-/

namespace A278514.P15955688144667817577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007427 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278514.P15955688144667817577

/-! ## A278514.P3426467743822813121

`∑[A278513(A008683((n+1)*(n+1))+n)]+1`
-/

namespace A278514.P3426467743822813121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278513 (A008683 ((n + 1) * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278514.P3426467743822813121

/-!
# A278515: Number of steps required to iterate map k -> A255131(k) when starting from k = (A000196(n)+1)^2 before n is reached, or 0 if n is not reached.

The programs for A278515, there is no canonical definition to state claims against.
-/

/-! ## A278515.P2774969000713153396

`and(A079706(n+1), A284334(A007913(n+1)))`
-/

namespace A278515.P2774969000713153396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079706 (n + 1)) (A284334 (A007913 (n + 1)).toNat)

end

end A278515.P2774969000713153396

/-! ## A278515.P9907795117701732624

`and(A000793(n), A231820(A231806(n+1)))`
-/

namespace A278515.P9907795117701732624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000793 n) (A231820 (A231806 (n + 1)).toNat)

end

end A278515.P9907795117701732624

/-! ## A278515.P11713867495399074261

`and(A036048(n+1), A218581(A008578(n+1)))`
-/

namespace A278515.P11713867495399074261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036048 (n + 1)) (A218581 (A008578 (n + 1)).toNat)

end

end A278515.P11713867495399074261

/-! ## A278515.P4180944444393336976

`A318982(A356209(3*n+2))+A318982(n+1)`
-/

namespace A278515.P4180944444393336976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318982 (A356209 (3 * n + 2)).toNat + A318982 (n + 1)

end

end A278515.P4180944444393336976

/-! ## A278515.P6633354111535774105

`A357879(A359625(n+2))`
-/

namespace A278515.P6633354111535774105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A359625 (n + 2)).toNat

end

end A278515.P6633354111535774105

/-!
# A278516: Number of children the n-th node (counted from the root 0) has in the infinite trunk of least squares beanstalk tree: a(n) = A278216(A276573(n)).

The programs for A278516, there is no canonical definition to state claims against.
-/

/-! ## A278516.P13946539807840008700

`A278216(A276573(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278516.P13946539807840008700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (A276573 n).toNat

end

end A278516.P13946539807840008700

/-! ## A278516.P16578153003977056269

`A278216(∑[A276575(n)])`
-/

namespace A278516.P16578153003977056269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278516.P16578153003977056269

/-! ## A278516.P198912112207015550

`A278216(eq[1, char[A276574(n)]])`
-/

namespace A278516.P198912112207015550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278516.P198912112207015550

/-! ## A278516.P14885470696683141988

`A278216(A278521(n)+A278517(n))`
-/

namespace A278516.P14885470696683141988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (A278521 n + A278517 n).toNat

end

end A278516.P14885470696683141988

/-! ## A278516.P8435873883626791261

`A278216(A278519(n)-A278522(n))`
-/

namespace A278516.P8435873883626791261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (A278519 n - A278522 n).toNat

end

end A278516.P8435873883626791261

/-!
# A278517: a(n) = smallest k for which A260731(k) = n.

The programs for A278517, there is no canonical definition to state claims against.
-/

/-! ## A278517.P12125099380143426930

`A276573(n)-A278521(n)`
-/

namespace A278517.P12125099380143426930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - A278521 n

end

end A278517.P12125099380143426930

/-! ## A278517.P15409367651014340919

`∑[A276575(n)]-A278521(n)`
-/

namespace A278517.P15409367651014340919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A278521 n

end

end A278517.P15409367651014340919

/-! ## A278517.P4711476691482768043

`∑[A278518(n)]-A278518(n)`
-/

namespace A278517.P4711476691482768043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A278518 n

end

end A278517.P4711476691482768043

/-! ## A278517.P9913783806242217799

`A278519(n)+1-A278518(n)`
-/

namespace A278517.P9913783806242217799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n + (1 - A278518 n)

end

end A278517.P9913783806242217799

/-! ## A278517.P17099377108598311306

`A276574(A276572(n))-A278521(n)`
-/

namespace A278517.P17099377108598311306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat - A278521 n

end

end A278517.P17099377108598311306

/-! ## A278517.P4548042413443733775

`A278519(n)-(A278522(n)+A278521(n))`
-/

namespace A278517.P4548042413443733775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - (A278522 n + A278521 n)

end

end A278517.P4548042413443733775

/-!
# A278518: First differences of A278517; run lengths in A260731.

The programs for A278518, there is no canonical definition to state claims against.
-/

/-! ## A278518.P12586252710747705362

`1+A278521(n)+A278522(n)`
-/

namespace A278518.P12586252710747705362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A278521 n + A278522 n

end

end A278518.P12586252710747705362

/-! ## A278518.P13894141353931587996

`A278517(1+n)-A278517(n)`
-/

namespace A278518.P13894141353931587996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 (1 + n) - A278517 n

end

end A278518.P13894141353931587996

/-! ## A278518.P6371743016191594426

`Δ[A278517(n)]`
-/

namespace A278518.P6371743016191594426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278518.P6371743016191594426

/-! ## A278518.P2974213649086509038

`Δ[A276573(n)-A278521(n)]`
-/

namespace A278518.P2974213649086509038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - A278521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278518.P2974213649086509038

/-! ## A278518.P14678433790074613120

`1-(A278517(n)-A278519(n))`
-/

namespace A278518.P14678433790074613120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A278517 n - A278519 n)

end

end A278518.P14678433790074613120

/-!
# A278519: a(n) = largest k for which A260731(k) = n.

The programs for A278519, there is no canonical definition to state claims against.
-/

/-! ## A278519.P7284182433652555726

`A278517(1+n)-1`
-/

namespace A278519.P7284182433652555726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 (1 + n) - 1

end

end A278519.P7284182433652555726

/-! ## A278519.P6836401273091404931

`∑[A278518(n)]-1`
-/

namespace A278519.P6836401273091404931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278519.P6836401273091404931

/-! ## A278519.P4100316242762633043

`A278522(n)+A276573(n)`
-/

namespace A278519.P4100316242762633043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278522 n + A276573 n

end

end A278519.P4100316242762633043

/-! ## A278519.P15057386145045682846

`A278522(n)+∑[A276575(n)]`
-/

namespace A278519.P15057386145045682846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278522 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278519.P15057386145045682846

/-! ## A278519.P5444773959547163823

`∑[xor(A000007(n), A278518(n))]`
-/

namespace A278519.P5444773959547163823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A278518 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278519.P5444773959547163823

/-! ## A278519.P6352359305511099897

`A278518(n)-(1-A278517(n))`
-/

namespace A278519.P6352359305511099897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n - (1 - A278517 n)

end

end A278519.P6352359305511099897

/-! ## A278519.P6926883698358355756

`A276573(n+1)-(A278521(n+1)+1)`
-/

namespace A278519.P6926883698358355756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (n + 1) - (A278521 (n + 1) + 1)

end

end A278519.P6926883698358355756

/-! ## A278519.P12497139689773410570

`Δ[∑[A278517(n)]-n]`
-/

namespace A278519.P12497139689773410570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278519.P12497139689773410570

/-! ## A278519.P969193089643031896

`record[n*Δ[A260731(n)]]`
-/

namespace A278519.P969193089643031896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278519.P969193089643031896

/-! ## A278519.P8596021269927126224

`A023443(A278517(n+1))`
-/

namespace A278519.P8596021269927126224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278517 (n + 1)).toNat

end

end A278519.P8596021269927126224

/-!
# A278520: a(n) = A243503(n) - A056239(n).

The programs for A278520, the canonical program `A278520.P4698045103522186843` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278520 has offset 1).

The definition of A278520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A243503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278520.P4698045103522186843

`A243503(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278520

/-- `A243503(n+1)-A056239(n+1)` -/
def P4698045103522186843.Spec : Prop :=
  ∀ n, P4698045103522186843.a n = A278520 (n + 1)

theorem P4698045103522186843.correct : P4698045103522186843.Spec := by
  intro n
  simp only [A278520, Nat.add_sub_cancel]

end A278520

/-! ## A278520.P9035304799207414549

`A326844(n+1)-A325135(n+1)`
-/

namespace A278520.P9035304799207414549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) - A325135 (n + 1)

end

end A278520.P9035304799207414549

namespace A278520

/-- `A326844(n+1)-A325135(n+1)` -/
def P9035304799207414549.Spec : Prop :=
  ∀ n, P9035304799207414549.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P16913661785975242779

`A243503(n+1)-(A316436(2*(n+1))-1)`
-/

namespace A278520.P16913661785975242779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - (A316436 (2 * (n + 1)) - 1)

end

end A278520.P16913661785975242779

namespace A278520

/-- `A243503(n+1)-(A316436(2*(n+1))-1)` -/
def P16913661785975242779.Spec : Prop :=
  ∀ n, P16913661785975242779.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P8939402733284930058

`A243503(n+1)-A304739(A064664(n+1))`
-/

namespace A278520.P8939402733284930058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A304739 (A064664 (n + 1)).toNat

end

end A278520.P8939402733284930058

namespace A278520

/-- `A243503(n+1)-A304739(A064664(n+1))` -/
def P8939402733284930058.Spec : Prop :=
  ∀ n, P8939402733284930058.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P12050321948631306394

`A243503(n+1)-(A318995(n+1)+A001222(n+1))`
-/

namespace A278520.P12050321948631306394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - (A318995 (n + 1) + A001222 (n + 1))

end

end A278520.P12050321948631306394

namespace A278520

/-- `A243503(n+1)-(A318995(n+1)+A001222(n+1))` -/
def P12050321948631306394.Spec : Prop :=
  ∀ n, P12050321948631306394.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P3201456287121403345

`A326844(2*(n+1))-A359358(2*(n+1))`
-/

namespace A278520.P3201456287121403345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * (n + 1)) - A359358 (2 * (n + 1))

end

end A278520.P3201456287121403345

namespace A278520

/-- `A326844(2*(n+1))-A359358(2*(n+1))` -/
def P3201456287121403345.Spec : Prop :=
  ∀ n, P3201456287121403345.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P1246394064782528142

`A243503(n+1)-log2(A248692(n+1))`
-/

namespace A278520.P1246394064782528142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243503 (n + 1) : ℝ) - Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A278520.P1246394064782528142

namespace A278520

/-- `A243503(n+1)-log2(A248692(n+1))` -/
def P1246394064782528142.Spec : Prop :=
  ∀ n, P1246394064782528142.a n = (A278520 (n + 1) : ℝ)

end A278520

/-! ## A278520.P3369183263616306861

`A243503(n+1)-A318995(A003961(n+1))`
-/

namespace A278520.P3369183263616306861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A318995 (A003961 (n + 1)).toNat

end

end A278520.P3369183263616306861

namespace A278520

/-- `A243503(n+1)-A318995(A003961(n+1))` -/
def P3369183263616306861.Spec : Prop :=
  ∀ n, P3369183263616306861.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P10264772919368666208

`A243503(n+1)-A318995(A045965(n+1))`
-/

namespace A278520.P10264772919368666208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A318995 (A045965 (n + 1)).toNat

end

end A278520.P10264772919368666208

namespace A278520

/-- `A243503(n+1)-A318995(A045965(n+1))` -/
def P10264772919368666208.Spec : Prop :=
  ∀ n, P10264772919368666208.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P18138418908489744338

`A326844(n+1)-A326844(A241916(n+1))`
-/

namespace A278520.P18138418908489744338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) - A326844 (A241916 (n + 1)).toNat

end

end A278520.P18138418908489744338

namespace A278520

/-- `A326844(n+1)-A326844(A241916(n+1))` -/
def P18138418908489744338.Spec : Prop :=
  ∀ n, P18138418908489744338.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P18030748512493951139

`A326844(2*(n+1))-A326844(A137502(2*(n+1)))`
-/

namespace A278520.P18030748512493951139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * (n + 1)) - A326844 (A137502 (2 * (n + 1))).toNat

end

end A278520.P18030748512493951139

namespace A278520

/-- `A326844(2*(n+1))-A326844(A137502(2*(n+1)))` -/
def P18030748512493951139.Spec : Prop :=
  ∀ n, P18030748512493951139.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P9306554999247635009

`A326844(2*(n+1))-A326844(A293448(2*(n+1)))`
-/

namespace A278520.P9306554999247635009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * (n + 1)) - A326844 (A293448 (2 * (n + 1))).toNat

end

end A278520.P9306554999247635009

namespace A278520

/-- `A326844(2*(n+1))-A326844(A293448(2*(n+1)))` -/
def P9306554999247635009.Spec : Prop :=
  ∀ n, P9306554999247635009.a n = A278520 (n + 1)

end A278520

/-! ## A278520.P5900956204135700107

`A325135(A241916(n+1))-A325135(n+1)`
-/

namespace A278520.P5900956204135700107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A241916 (n + 1)).toNat - A325135 (n + 1)

end

end A278520.P5900956204135700107

namespace A278520

/-- `A325135(A241916(n+1))-A325135(n+1)` -/
def P5900956204135700107.Spec : Prop :=
  ∀ n, P5900956204135700107.a n = A278520 (n + 1)

end A278520

/-!
# A278521: a(n) = A276573(n) - A278517(n).

The programs for A278521, there is no canonical definition to state claims against.
-/

/-! ## A278521.P11673432003350407981

`A276573(n)-A278517(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278521.P11673432003350407981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - A278517 n

end

end A278521.P11673432003350407981

/-! ## A278521.P16377214263817307196

`A278518(n)-(A278522(n)+1)`
-/

namespace A278521.P16377214263817307196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n - (A278522 n + 1)

end

end A278521.P16377214263817307196

/-! ## A278521.P16992468301895619652

`Δ[A278517(n)]-(A278522(n)+1)`
-/

namespace A278521.P16992468301895619652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A278522 n + 1)

end

end A278521.P16992468301895619652

/-! ## A278521.P181088322986727008

`A276574(A276572(n))-A278517(n)`
-/

namespace A278521.P181088322986727008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat - A278517 n

end

end A278521.P181088322986727008

/-! ## A278521.P8416874968444277963

`A000378(Δ[A278517(n)]-A278522(n))`
-/

namespace A278521.P8416874968444277963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (f1 (n + 1) - f1 n - A278522 n).toNat

end

end A278521.P8416874968444277963

/-! ## A278521.P5872588238521907542

`A278519(n)-(A278522(n)+A278517(n))`
-/

namespace A278521.P5872588238521907542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - (A278522 n + A278517 n)

end

end A278521.P5872588238521907542

/-! ## A278521.P13411623762457771943

`(A278518(n)+A276573(n))%A278517(n+1)`
-/

namespace A278521.P13411623762457771943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278518 n + A276573 n) (A278517 (n + 1))

end

end A278521.P13411623762457771943

/-!
# A278522: a(n) = A278519(n) - A276573(n).

The programs for A278522, there is no canonical definition to state claims against.
-/

/-! ## A278522.P8978444532875953938

`A278519(n)-A276573(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278522.P8978444532875953938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A276573 n

end

end A278522.P8978444532875953938

/-! ## A278522.P12904968607264525608

`A278519(n)-∑[A276575(n)]`
-/

namespace A278522.P12904968607264525608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278522.P12904968607264525608

/-! ## A278522.P8671458510834316639

`A278518(n)-(A278521(n)+1)`
-/

namespace A278522.P8671458510834316639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n - (A278521 n + 1)

end

end A278522.P8671458510834316639

/-! ## A278522.P18216407583023140469

`A278517(n+1)-(A276573(n)+1)`
-/

namespace A278522.P18216407583023140469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 (n + 1) - (A276573 n + 1)

end

end A278522.P18216407583023140469

/-! ## A278522.P517318059434492857

`A276575(n+1)-(A278521(n+1)+1)`
-/

namespace A278522.P517318059434492857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1) - (A278521 (n + 1) + 1)

end

end A278522.P517318059434492857

/-! ## A278522.P16620208162178149912

`A010873(A278519(n)-A278499(n))`
-/

namespace A278522.P16620208162178149912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A278519 n - A278499 n).toNat

end

end A278522.P16620208162178149912

/-! ## A278522.P14893385690744021458

`A278519(n)-A276574(A276572(n))`
-/

namespace A278522.P14893385690744021458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A276574 (A276572 n).toNat

end

end A278522.P14893385690744021458

/-! ## A278522.P14371148566993268995

`A278519(n)-(A278521(n)+A278517(n))`
-/

namespace A278522.P14371148566993268995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - (A278521 n + A278517 n)

end

end A278522.P14371148566993268995

/-! ## A278522.P16114297241933580514

`A002828(A276573(n+1))-(A278521(n+1)+1)`
-/

namespace A278522.P16114297241933580514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A276573 (n + 1)).toNat - (A278521 (n + 1) + 1)

end

end A278522.P16114297241933580514

/-!
# A278523: a(n) = A046523(A249818(n)).

The programs for A278523, there is no canonical definition to state claims against.
-/

/-! ## A278523.P2931656076075551754

`A046523(A249818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278523.P2931656076075551754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A249818 (n + 1)).toNat

end

end A278523.P2931656076075551754

/-! ## A278523.P9598601372170509126

`A046523(A078898(n+1)+A078898(n+1)%(n+1))`
-/

namespace A278523.P9598601372170509126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A078898 (n + 1) + Int.tmod (A078898 (n + 1)) (n + 1 : ℤ)).toNat

end

end A278523.P9598601372170509126

/-! ## A278523.P14205969235537083769

`A046523(A250248(n+1))`
-/

namespace A278523.P14205969235537083769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250248 (n + 1)).toNat

end

end A278523.P14205969235537083769

/-! ## A278523.P4329084724224557533

`A046523(A249817(n+1)/A280497(n+1)*A280498(n+1))`
-/

namespace A278523.P4329084724224557533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A278523.P4329084724224557533

/-! ## A278523.P7557810569481090223

`A046523(A250245(n+1)/A280495(n+1)*A280498(n+1))`
-/

namespace A278523.P7557810569481090223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A278523.P7557810569481090223

/-! ## A278523.P293833801297122595

`A283466(A266645(A249818(A249818(A249817(n+1)))))`
-/

namespace A278523.P293833801297122595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A249818 (A249818 (A249817 (n + 1)).toNat).toNat).toNat).toNat

end

end A278523.P293833801297122595

/-! ## A278523.P8677114880670129255

`A283466(A266645(A249818(A266403(A266403(n+1)))))`
-/

namespace A278523.P8677114880670129255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A249818 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A278523.P8677114880670129255

/-! ## A278523.P11248166624885625500

`A283466(A266645(A249818(A266646(A266645(n+1)))))`
-/

namespace A278523.P11248166624885625500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A249818 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A278523.P11248166624885625500

/-! ## A278523.P12421094210236965653

`A283466(A266645(A249818(A250469(n+1))))`
-/

namespace A278523.P12421094210236965653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A249818 (A250469 (n + 1)).toNat).toNat).toNat

end

end A278523.P12421094210236965653

/-! ## A278523.P3628571075016089739

`A278221(∏{p}[A279352(n+1), #])`
-/

namespace A278523.P3628571075016089739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A278523.P3628571075016089739

/-!
# A278524: a(n) = A046523(A250246(n)).

The programs for A278524, there is no canonical definition to state claims against.
-/

/-! ## A278524.P10981207367915928246

`A046523(A250246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278524.P10981207367915928246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250246 (n + 1)).toNat

end

end A278524.P10981207367915928246

/-! ## A278524.P15988070014172921284

`A046523(A346486(n+1))*A046523(A346487(n+1))`
-/

namespace A278524.P15988070014172921284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A346486 (n + 1)).toNat * A046523 (A346487 (n + 1)).toNat

end

end A278524.P15988070014172921284

/-! ## A278524.P7716067775380331556

`A046523(A250250(n+1))`
-/

namespace A278524.P7716067775380331556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250250 (n + 1)).toNat

end

end A278524.P7716067775380331556

/-! ## A278524.P2714471642603865813

`A046523(A280496(2*(n+1)))`
-/

namespace A278524.P2714471642603865813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A280496 (2 * (n + 1))).toNat

end

end A278524.P2714471642603865813

/-! ## A278524.P10846025013210365059

`A046523(A324546(n+1)+A324535(n+1))`
-/

namespace A278524.P10846025013210365059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A278524.P10846025013210365059

/-! ## A278524.P1939821024546496288

`A046523(A324545(n+1)-A324535(n+1))`
-/

namespace A278524.P1939821024546496288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A278524.P1939821024546496288

/-! ## A278524.P8801237674485360014

`A046523(A346486(n+1)*A346487(n+1))`
-/

namespace A278524.P8801237674485360014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A346486 (n + 1) * A346487 (n + 1)).toNat

end

end A278524.P8801237674485360014

/-! ## A278524.P6701376250999001918

`A278222(gcd(A049084(n+1), A252754(n+1)))`
-/

namespace A278524.P6701376250999001918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.gcd (A049084 (n + 1)) (A252754 (n + 1)))

end

end A278524.P6701376250999001918

/-! ## A278524.P3975261602594394403

`A278222(A252754(n+1)/gcd(2, n))`
-/

namespace A278524.P3975261602594394403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway ((A252754 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A278524.P3975261602594394403

/-! ## A278524.P269308159939741441

`A278222(A252754(n+1)/A040001(n))`
-/

namespace A278524.P269308159939741441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway ((A252754 (n + 1) : ℚ) / (A040001 n : ℚ))).toNat

end

end A278524.P269308159939741441

/-!
# A278525: Filtering sequence (related to prime factorization): a(n) = A046523(A241916(n)).

The programs for A278525, the canonical program `A278525.P17158944752646965372` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278525 has offset 1).

The definition of A278525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278525.P14297124436462691074

`A046523(A241916(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278525.P14297124436462691074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A241916 (n + 1)).toNat

end

end A278525.P14297124436462691074

namespace A278525

/-- `A046523(A241916(n+1))` -/
def P14297124436462691074.Spec : Prop :=
  ∀ n, P14297124436462691074.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P17158944752646965372

`A046523(2*(n+1)/A111089(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278525

/-- `A046523(2*(n+1)/A111089(n+1))` -/
def P17158944752646965372.Spec : Prop :=
  ∀ n, P17158944752646965372.a n = A278525 (n + 1)

theorem P17158944752646965372.correct : P17158944752646965372.Spec := by
  intro n
  simp only [A278525, Nat.add_sub_cancel]

end A278525

/-! ## A278525.P5036727388815843519

`A046523(floor(2*n/A006530(n+1))+1)`
-/

namespace A278525.P5036727388815843519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (⌊2 * ((n : ℚ) / (A006530 (n + 1) : ℚ))⌋ + 1).toNat

end

end A278525.P5036727388815843519

namespace A278525

/-- `A046523(floor(2*n/A006530(n+1))+1)` -/
def P5036727388815843519.Spec : Prop :=
  ∀ n, P5036727388815843519.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P6042281467575225465

`A046523(2*(n+1)/A006530(2*(n+1)))`
-/

namespace A278525.P6042281467575225465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (A006530 (2 * (n + 1)) : ℚ))).toNat

end

end A278525.P6042281467575225465

namespace A278525

/-- `A046523(2*(n+1)/A006530(2*(n+1)))` -/
def P6042281467575225465.Spec : Prop :=
  ∀ n, P6042281467575225465.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P3580382909211018754

`A046523(A052126(2*(n+1)))`
-/

namespace A278525.P3580382909211018754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A052126 (2 * (n + 1))).toNat

end

end A278525.P3580382909211018754

namespace A278525

/-- `A046523(A052126(2*(n+1)))` -/
def P3580382909211018754.Spec : Prop :=
  ∀ n, P3580382909211018754.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P10536359150615873958

`A046523(A130065(2*(n+1))/2)`
-/

namespace A278525.P10536359150615873958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A130065 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278525.P10536359150615873958

namespace A278525

/-- `A046523(A130065(2*(n+1))/2)` -/
def P10536359150615873958.Spec : Prop :=
  ∀ n, P10536359150615873958.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P10255564561724586426

`A046523(A046523(A052126(n+2+n)))`
-/

namespace A278525.P10255564561724586426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A046523 (A052126 (n + 2 + n)).toNat).toNat

end

end A278525.P10255564561724586426

namespace A278525

/-- `A046523(A046523(A052126(n+2+n)))` -/
def P10255564561724586426.Spec : Prop :=
  ∀ n, P10255564561724586426.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P4345710734980886764

`A046523(A069799(2*(n+1))/2)`
-/

namespace A278525.P4345710734980886764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A069799 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278525.P4345710734980886764

namespace A278525

/-- `A046523(A069799(2*(n+1))/2)` -/
def P4345710734980886764.Spec : Prop :=
  ∀ n, P4345710734980886764.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P13622260092935925787

`A046523(A105119(2*(n+1))/2)`
-/

namespace A278525.P13622260092935925787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A105119 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278525.P13622260092935925787

namespace A278525

/-- `A046523(A105119(2*(n+1))/2)` -/
def P13622260092935925787.Spec : Prop :=
  ∀ n, P13622260092935925787.a n = A278525 (n + 1)

end A278525

/-! ## A278525.P785446652567015932

`A046523(A137502(2*(n+1))/2)`
-/

namespace A278525.P785446652567015932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A137502 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278525.P785446652567015932

namespace A278525

/-- `A046523(A137502(2*(n+1))/2)` -/
def P785446652567015932.Spec : Prop :=
  ∀ n, P785446652567015932.a n = A278525 (n + 1)

end A278525

/-!
# A278526: a(n) = A046523(A227413(n)).

The programs for A278526, there is no canonical definition to state claims against.
-/

/-! ## A278526.P48319883133885625

`A278527(A054429(n+1))`
-/

namespace A278526.P48319883133885625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A054429 (n + 1)).toNat

end

end A278526.P48319883133885625

/-! ## A278526.P18131636814451919240

`A046523(A227413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278526.P18131636814451919240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A227413 (n + 1)).toNat

end

end A278526.P18131636814451919240

/-! ## A278526.P14352089880454968195

`A278527(∑[A099892(n+1)]-n)`
-/

namespace A278526.P14352089880454968195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A278526.P14352089880454968195

/-! ## A278526.P6276771566390612431

`A278527(A004756(n+1)-(2*n+3))`
-/

namespace A278526.P6276771566390612431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A278526.P6276771566390612431

/-! ## A278526.P7941502974560729105

`A278527(3*A000079(floor(log2(n+1)))-2-n)`
-/

namespace A278526.P7941502974560729105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (3 * A000079 (Nat.log 2 (n + 1)) - 2 - (n : ℤ)).toNat

end

end A278526.P7941502974560729105

/-! ## A278526.P3770240566443834930

`A278527(xor(A086099(n), A086799(n+1)))`
-/

namespace A278526.P3770240566443834930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A278526.P3770240566443834930

/-! ## A278526.P836230996923171083

`A278527(A053644(n+1)+A035327(n+1))`
-/

namespace A278526.P836230996923171083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A053644 (n + 1) + A035327 (n + 1)).toNat

end

end A278526.P836230996923171083

/-! ## A278526.P13787996424342693530

`A278527(A004754(n+1)-A006257(n+1))`
-/

namespace A278526.P13787996424342693530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A004754 (n + 1) - A006257 (n + 1)).toNat

end

end A278526.P13787996424342693530

/-! ## A278526.P15919998866187311677

`A278527(A088161(n+1)+A038572(n+2))`
-/

namespace A278526.P15919998866187311677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A088161 (n + 1) + A038572 (n + 2)).toNat

end

end A278526.P15919998866187311677

/-! ## A278526.P13066807131857666881

`A278527(A004758(n+1)-A171763(n+1))`
-/

namespace A278526.P13066807131857666881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A004758 (n + 1) - A171763 (n + 1)).toNat

end

end A278526.P13066807131857666881

/-! ## A278526.P1569586807473564127

`A278527((A035327(n+1)+A010078(n+2))/2)`
-/

namespace A278526.P1569586807473564127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (SequenceMachineLib.roundAway ((A035327 (n + 1) + A010078 (n + 2) : ℚ) / 2)).toNat

end

end A278526.P1569586807473564127

/-! ## A278526.P15363432097270346102

`A278527(A080079(n+1)-A053645(n+1)+n)`
-/

namespace A278526.P15363432097270346102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278527 (A080079 (n + 1) - A053645 (n + 1) + (n : ℤ)).toNat

end

end A278526.P15363432097270346102

/-! ## A278526.P16532241857801176792

`A278224(A246364(n+1))`
-/

namespace A278526.P16532241857801176792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A246364 (n + 1)).toNat

end

end A278526.P16532241857801176792

/-!
# A278527: a(n) = A046523(A246378(n)).

The programs for A278527, there is no canonical definition to state claims against.
-/

/-! ## A278527.P1251261612015394086

`A278526(A054429(n+1))`
-/

namespace A278527.P1251261612015394086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A054429 (n + 1)).toNat

end

end A278527.P1251261612015394086

/-! ## A278527.P3303214032036391587

`A046523(A246378(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278527.P3303214032036391587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A246378 (n + 1)).toNat

end

end A278527.P3303214032036391587

/-! ## A278527.P3342788109333956435

`A278526(A346306(Δ[n²])/2)`
-/

namespace A278527.P3342788109333956435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A278527.P3342788109333956435

/-! ## A278527.P7556267713738391980

`A278526(A035327(2^floor(log2(n+1))+n+1))`
-/

namespace A278527.P7556267713738391980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A035327 (2 ^ Nat.log 2 (n + 1) + (n + 1))).toNat

end

end A278527.P7556267713738391980

/-! ## A278527.P466531890648459850

`A278526(xor(A086099(n), A086799(n+1)))`
-/

namespace A278527.P466531890648459850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A278527.P466531890648459850

/-! ## A278527.P12907030629371312442

`A278526(A003817(n+1)-A053645(n+1))`
-/

namespace A278527.P12907030629371312442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A003817 (n + 1) - A053645 (n + 1)).toNat

end

end A278527.P12907030629371312442

/-! ## A278527.P3428405707041841026

`A278526(A088161(n+1)+A038572(n+2))`
-/

namespace A278527.P3428405707041841026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A088161 (n + 1) + A038572 (n + 2)).toNat

end

end A278527.P3428405707041841026

/-! ## A278527.P7752517603285944291

`A278526(A092569(A278526(n+1)+n))`
-/

namespace A278527.P7752517603285944291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A092569 (A278526 (n + 1) + (n : ℤ)).toNat).toNat

end

end A278527.P7752517603285944291

/-!
# A278528: a(n) = number of the round in which n is removed in the Flavius sieve, 0 if it is never removed (when n is one of the terms of A000960).

The programs for A278528, there is no canonical definition to state claims against.
-/

/-! ## A278528.P11311227004957510010

`A278538(n+1)%A100002(n+1)`
-/

namespace A278528.P11311227004957510010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278538 (n + 1)) (A100002 (n + 1))

end

end A278528.P11311227004957510010

/-! ## A278528.P7520143301441229614

`(1-A278169(n+1))*A278538(n+1)`
-/

namespace A278528.P7520143301441229614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A278169 (n + 1)) * A278538 (n + 1)

end

end A278528.P7520143301441229614

/-! ## A278528.P4148128655423751017

`A028242(floor(1/A278539(n+1)))*A278538(n+1)`
-/

namespace A278528.P4148128655423751017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat * A278538 (n + 1)

end

end A278528.P4148128655423751017

/-! ## A278528.P11084374323251412472

`A264620(floor(1/A278539(n+1)))*A278538(n+1)`
-/

namespace A278528.P11084374323251412472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat * A278538 (n + 1)

end

end A278528.P11084374323251412472

/-! ## A278528.P8648995650020500611

`A278538(n+1)*A326426(floor(1/A278539(n+1)))`
-/

namespace A278528.P8648995650020500611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (n + 1) * A326426 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat

end

end A278528.P8648995650020500611

/-! ## A278528.P10245908139655933550

`A278169((n+1)*A278169(n+1)+1)*A278538(n+1)`
-/

namespace A278528.P10245908139655933550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 ((n + 1 : ℤ) * A278169 (n + 1) + 1).toNat * A278538 (n + 1)

end

end A278528.P10245908139655933550

/-! ## A278528.P4766006815243587859

`A272800(n+1)+A000007(A272800(n+1))-1`
-/

namespace A278528.P4766006815243587859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272800 (n + 1) + (A000007 (A272800 (n + 1)).toNat - 1)

end

end A278528.P4766006815243587859

/-! ## A278528.P15085633780761010926

`A272800(n+1)-A355150(2*A272800(n+1))`
-/

namespace A278528.P15085633780761010926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272800 (n + 1) - A355150 (2 * A272800 (n + 1)).toNat

end

end A278528.P15085633780761010926

/-! ## A278528.P15408156539328268758

`A002260(A278506(n+1)+1)-1`
-/

namespace A278528.P15408156539328268758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278506 (n + 1) + 1).toNat - 1

end

end A278528.P15408156539328268758

/-! ## A278528.P2809297601816919297

`A002262(A278506(n+1))`
-/

namespace A278528.P2809297601816919297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A278506 (n + 1)).toNat

end

end A278528.P2809297601816919297

/-!
# A278529: a(n) = one-based position in the round in which n is removed in the Flavius sieve, 0 if n is never removed (when n is one of the terms of A000960).

The programs for A278529, there is no canonical definition to state claims against.
-/

/-! ## A278529.P11777970744484992457

`A278539(n+1)-1`
-/

namespace A278529.P11777970744484992457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - 1

end

end A278529.P11777970744484992457

/-! ## A278529.P14805880965913749787

`A023446(A278539(n+1)+1)+2`
-/

namespace A278529.P14805880965913749787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A278539 (n + 1) + 1).toNat + 2

end

end A278529.P14805880965913749787

/-! ## A278529.P7148144782269295809

`A278537(A065190(n+1)+1)-1`
-/

namespace A278529.P7148144782269295809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A065190 (n + 1) + 1).toNat - 1

end

end A278529.P7148144782269295809

/-! ## A278529.P14127391637715993983

`A135528(n+1)+A278537(n+1)-1`
-/

namespace A278529.P14127391637715993983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + (A278537 (n + 1) - 1)

end

end A278529.P14127391637715993983

/-! ## A278529.P5682799001189592520

`(A278539(n+1)+A028310(n))%(n+1)`
-/

namespace A278529.P5682799001189592520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278539 (n + 1) + A028310 n) (n + 1 : ℤ)

end

end A278529.P5682799001189592520

/-! ## A278529.P16569287117487612589

`floor(A278539(n+1)/root(2, A000203(n+1)))`
-/

namespace A278529.P16569287117487612589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (A000203 (n + 1) : ℝ))⌋

end

end A278529.P16569287117487612589

/-! ## A278529.P562257557235250705

`floor(A278539(n+1)/root(2, A097046(n+1)))`
-/

namespace A278529.P562257557235250705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (A097046 (n + 1) : ℝ))⌋

end

end A278529.P562257557235250705

/-! ## A278529.P2137646779860215354

`floor(A278539(n+1)/root(2, A288695(n+1)))`
-/

namespace A278529.P2137646779860215354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278539 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (A288695 (n + 1) : ℝ))⌋

end

end A278529.P2137646779860215354

/-! ## A278529.P17276490831053965825

`A278537(n+1)-A278538(n+2)%A278538(n+1)`
-/

namespace A278529.P17276490831053965825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (n + 1) - Int.tmod (A278538 (n + 2)) (A278538 (n + 1))

end

end A278529.P17276490831053965825

/-! ## A278529.P2778431154809303183

`A278537(A114112(n+2))-1`
-/

namespace A278529.P2778431154809303183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A114112 (n + 2)).toNat - 1

end

end A278529.P2778431154809303183

/-! ## A278529.P7336541684714754794

`A002260(A278504(n+1))-1`
-/

namespace A278529.P7336541684714754794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278504 (n + 1)).toNat - 1

end

end A278529.P7336541684714754794

/-! ## A278529.P18419664456624503222

`A004736(A278506(n+1))-1`
-/

namespace A278529.P18419664456624503222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A278506 (n + 1)).toNat - 1

end

end A278529.P18419664456624503222

/-! ## A278529.P14648729771047278566

`A070198(n)%A278539(n+1)`
-/

namespace A278529.P14648729771047278566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A278539 (n + 1))

end

end A278529.P14648729771047278566

/-! ## A278529.P4136808156438970252

`A079782(n+1)%A278539(n+1)`
-/

namespace A278529.P4136808156438970252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A278539 (n + 1))

end

end A278529.P4136808156438970252

/-! ## A278529.P14647551202694152128

`A083685(n+1)%A278539(n+1)`
-/

namespace A278529.P14647551202694152128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A278539 (n + 1))

end

end A278529.P14647551202694152128

/-! ## A278529.P1603075128093237582

`A121934(n+1)%A278539(n+1)`
-/

namespace A278529.P1603075128093237582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A278539 (n + 1))

end

end A278529.P1603075128093237582

/-! ## A278529.P11271938269606518332

`A030494(n+1)%A278539(n+1)`
-/

namespace A278529.P11271938269606518332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A278539 (n + 1))

end

end A278529.P11271938269606518332

/-! ## A278529.P85147692073029386

`A072828(n+1)%A278539(n+1)`
-/

namespace A278529.P85147692073029386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A278539 (n + 1))

end

end A278529.P85147692073029386

/-!
# A278530: a(n) = A056239(A260443(n)).

The programs for A278530, there is no canonical definition to state claims against.
-/

/-! ## A278530.P6731463862929488179

`A056239(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278530.P6731463862929488179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A260443 n).toNat

end

end A278530.P6731463862929488179

/-! ## A278530.P2905068222892090030

`A125186(comp[2*(n+1)])`
-/

namespace A278530.P2905068222892090030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A278530.P2905068222892090030

/-! ## A278530.P4132634940188332456

`A125186(A004273(n))%29`
-/

namespace A278530.P4132634940188332456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125186 (A004273 n).toNat) 29

end

end A278530.P4132634940188332456

/-! ## A278530.P15376601848347803444

`A054977(n)*A125186(A004273(n))`
-/

namespace A278530.P15376601848347803444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A125186 (A004273 n).toNat

end

end A278530.P15376601848347803444

/-! ## A278530.P15518817720799577406

`lcm(A033999(n), A125186(A004273(n)))`
-/

namespace A278530.P15518817720799577406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A125186 (A004273 n).toNat)

end

end A278530.P15518817720799577406

/-!
# A278531: a(n) = A046523(A163511(n)).

The programs for A278531, the canonical program `A278531.P1651706380382309493` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278531 has offset 0).

The definition of A278531 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278531.P1651706380382309493

`A046523(A163511(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278531

/-- `A046523(A163511(n))` -/
def P1651706380382309493.Spec : Prop :=
  ∀ n, P1651706380382309493.a n = A278531 n

theorem P1651706380382309493.correct : P1651706380382309493.Spec := by
  intro n
  simp only [A278531]

end A278531

/-! ## A278531.P10632993856020455667

`A278217(A006068(n))`
-/

namespace A278531.P10632993856020455667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 (A006068 n).toNat

end

end A278531.P10632993856020455667

namespace A278531

/-- `A278217(A006068(n))` -/
def P10632993856020455667.Spec : Prop :=
  ∀ n, P10632993856020455667.a n = A278531 n

end A278531

/-! ## A278531.P30181132240740515

`A366279(A057889(n))`
-/

namespace A278531.P30181132240740515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366279 (A057889 n).toNat

end

end A278531.P30181132240740515

namespace A278531

/-- `A366279(A057889(n))` -/
def P30181132240740515.Spec : Prop :=
  ∀ n, P30181132240740515.a n = A278531 n

end A278531

/-! ## A278531.P3303268956073419970

`A278219(A180200(n))`
-/

namespace A278531.P3303268956073419970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A180200 n).toNat

end

end A278531.P3303268956073419970

namespace A278531

/-- `A278219(A180200(n))` -/
def P3303268956073419970.Spec : Prop :=
  ∀ n, P3303268956073419970.a n = A278531 n

end A278531

/-! ## A278531.P8878426941925788754

`A365425(Δ[n²])`
-/

namespace A278531.P8878426941925788754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278531.P8878426941925788754

namespace A278531

/-- `A365425(Δ[n²])` -/
def P8878426941925788754.Spec : Prop :=
  ∀ n, P8878426941925788754.a n = A278531 n

end A278531

/-! ## A278531.P7824896995489237973

`A278533(A333776(n))`
-/

namespace A278531.P7824896995489237973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A333776 n).toNat

end

end A278531.P7824896995489237973

namespace A278531

/-- `A278533(A333776(n))` -/
def P7824896995489237973.Spec : Prop :=
  ∀ n, P7824896995489237973.a n = A278531 n

end A278531

/-! ## A278531.P6090499789375777899

`A366279(A333693(n))`
-/

namespace A278531.P6090499789375777899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366279 (A333693 n).toNat

end

end A278531.P6090499789375777899

namespace A278531

/-- `A366279(A333693(n))` -/
def P6090499789375777899.Spec : Prop :=
  ∀ n, P6090499789375777899.a n = A278531 n

end A278531

/-! ## A278531.P2094350292678011936

`A286580(A233278(n))`
-/

namespace A278531.P2094350292678011936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286580 (A233278 n).toNat

end

end A278531.P2094350292678011936

namespace A278531

/-- `A286580(A233278(n))` -/
def P2094350292678011936.Spec : Prop :=
  ∀ n, P2094350292678011936.a n = A278531 n

end A278531

/-! ## A278531.P10524858329204545918

`A286601(A234026(n))`
-/

namespace A278531.P10524858329204545918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A234026 n).toNat

end

end A278531.P10524858329204545918

namespace A278531

/-- `A286601(A234026(n))` -/
def P10524858329204545918.Spec : Prop :=
  ∀ n, P10524858329204545918.a n = A278531 n

end A278531

/-! ## A278531.P13987366210022780464

`A286598(A381852(n))`
-/

namespace A278531.P13987366210022780464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A381852 n).toNat

end

end A278531.P13987366210022780464

namespace A278531

/-- `A286598(A381852(n))` -/
def P13987366210022780464.Spec : Prop :=
  ∀ n, P13987366210022780464.a n = A278531 n

end A278531

/-! ## A278531.P18147366750796620171

`A278222(A234025(A193231(n)))`
-/

namespace A278531.P18147366750796620171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A234025 (A193231 n).toNat).toNat

end

end A278531.P18147366750796620171

namespace A278531

/-- `A278222(A234025(A193231(n)))` -/
def P18147366750796620171.Spec : Prop :=
  ∀ n, P18147366750796620171.a n = A278531 n

end A278531

/-! ## A278531.P13048319778975302317

`A278502(A279342(n))`
-/

namespace A278531.P13048319778975302317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278502 (A279342 n).toNat

end

end A278531.P13048319778975302317

namespace A278531

/-- `A278502(A279342(n))` -/
def P13048319778975302317.Spec : Prop :=
  ∀ n, P13048319778975302317.a n = A278531 n

end A278531

/-! ## A278531.P7927903699108410796

`filter[A365425(2*n+1), A137794(#)]`
-/

namespace A278531.P7927903699108410796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A278531.P7927903699108410796

namespace A278531

/-- `filter[A365425(2*n+1), A137794(#)]` -/
def P7927903699108410796.Spec : Prop :=
  ∀ n, P7927903699108410796.a n = A278531 n

end A278531

/-! ## A278531.P1586086789744437355

`A278524(A252755(n))`
-/

namespace A278531.P1586086789744437355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A252755 n).toNat

end

end A278531.P1586086789744437355

namespace A278531

/-- `A278524(A252755(n))` -/
def P1586086789744437355.Spec : Prop :=
  ∀ n, P1586086789744437355.a n = A278531 n

end A278531

/-! ## A278531.P5023013544005332358

`A046523(A365425(2*n+1))`
-/

namespace A278531.P5023013544005332358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A365425 (2 * n + 1)).toNat

end

end A278531.P5023013544005332358

namespace A278531

/-- `A046523(A365425(2*n+1))` -/
def P5023013544005332358.Spec : Prop :=
  ∀ n, P5023013544005332358.a n = A278531 n

end A278531

/-! ## A278531.P42759918283745387

`filter[A365425(2*n+1), A087429(#)]`
-/

namespace A278531.P42759918283745387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087429 (f1 j).toNat = 1) n)

end

end A278531.P42759918283745387

namespace A278531

/-- `filter[A365425(2*n+1), A087429(#)]` -/
def P42759918283745387.Spec : Prop :=
  ∀ n, P42759918283745387.a n = A278531 n

end A278531

/-! ## A278531.P3986714598974889442

`filter[A365425(2*n+1), A135528(#)]`
-/

namespace A278531.P3986714598974889442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A278531.P3986714598974889442

namespace A278531

/-- `filter[A365425(2*n+1), A135528(#)]` -/
def P3986714598974889442.Spec : Prop :=
  ∀ n, P3986714598974889442.a n = A278531 n

end A278531

/-! ## A278531.P13006416595708840570

`filter[A365425(2*n+1), A264739(#)]`
-/

namespace A278531.P13006416595708840570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A278531.P13006416595708840570

namespace A278531

/-- `filter[A365425(2*n+1), A264739(#)]` -/
def P13006416595708840570.Spec : Prop :=
  ∀ n, P13006416595708840570.a n = A278531 n

end A278531

/-! ## A278531.P10645447170362130559

`filter[A365425(2*n+1), A266591(#)]`
-/

namespace A278531.P10645447170362130559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A278531.P10645447170362130559

namespace A278531

/-- `filter[A365425(2*n+1), A266591(#)]` -/
def P10645447170362130559.Spec : Prop :=
  ∀ n, P10645447170362130559.a n = A278531 n

end A278531

/-! ## A278531.P14260074637851363315

`filter[A365425(2*n+1), A267773(#)]`
-/

namespace A278531.P14260074637851363315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A278531.P14260074637851363315

namespace A278531

/-- `filter[A365425(2*n+1), A267773(#)]` -/
def P14260074637851363315.Spec : Prop :=
  ∀ n, P14260074637851363315.a n = A278531 n

end A278531

/-!
# A278532: a(n) = A278219(A255056(n)).

The programs for A278532, there is no canonical definition to state claims against.
-/

/-! ## A278532.P3536050104601549556

`A278219(A255056(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278532.P3536050104601549556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A255056 n).toNat

end

end A278532.P3536050104601549556

/-! ## A278532.P3072572588833904372

`A278219(lcm(2, A255057(n)))`
-/

namespace A278532.P3072572588833904372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (Int.lcm 2 (A255057 n))

end

end A278532.P3072572588833904372

/-! ## A278532.P10733271558819808340

`A278219(2*A255057(n))`
-/

namespace A278532.P10733271558819808340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (2 * A255057 n).toNat

end

end A278532.P10733271558819808340

/-! ## A278532.P6935016324739809052

`A278219(∑[A255336(n)])`
-/

namespace A278532.P6935016324739809052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278532.P6935016324739809052

/-! ## A278532.P10461854721790185901

`A278219(eq[0, A255327(n)])`
-/

namespace A278532.P10461854721790185901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278532.P10461854721790185901

/-!
# A278533: a(n) = A046523(A253563(n)).

The programs for A278533, the canonical program `A278533.P16229309658360955677` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278533 has offset 0).

The definition of A278533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278533.P16229309658360955677

`A046523(A253563(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278533

/-- `A046523(A253563(n))` -/
def P16229309658360955677.Spec : Prop :=
  ∀ n, P16229309658360955677.a n = A278533 n

theorem P16229309658360955677.correct : P16229309658360955677.Spec := by
  intro n
  simp only [A278533]

end A278533

/-! ## A278533.P4505416037290035519

`A278222(A261693(n))`
-/

namespace A278533.P4505416037290035519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A261693 n).toNat

end

end A278533.P4505416037290035519

namespace A278533

/-- `A278222(A261693(n))` -/
def P4505416037290035519.Spec : Prop :=
  ∀ n, P4505416037290035519.a n = A278533 n

end A278533

/-! ## A278533.P3750556664009099137

`A278217(A341916(n))`
-/

namespace A278533.P3750556664009099137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 (A341916 n).toNat

end

end A278533.P3750556664009099137

namespace A278533

/-- `A278217(A341916(n))` -/
def P3750556664009099137.Spec : Prop :=
  ∀ n, P3750556664009099137.a n = A278533 n

end A278533

/-! ## A278533.P3052981246602787277

`A278531(A333777(n))`
-/

namespace A278533.P3052981246602787277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A333777 n).toNat

end

end A278533.P3052981246602787277

namespace A278533

/-- `A278531(A333777(n))` -/
def P3052981246602787277.Spec : Prop :=
  ∀ n, P3052981246602787277.a n = A278533 n

end A278533

/-! ## A278533.P7954700114649618784

`A365425(A145341(n+1))`
-/

namespace A278533.P7954700114649618784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (A145341 (n + 1)).toNat

end

end A278533.P7954700114649618784

namespace A278533

/-- `A365425(A145341(n+1))` -/
def P7954700114649618784.Spec : Prop :=
  ∀ n, P7954700114649618784.a n = A278533 n

end A278533

/-! ## A278533.P9187613053003891601

`A286598(A059894(n+1)%(n+1)²)`
-/

namespace A278533.P9187613053003891601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (Int.tmod (A059894 (n + 1)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A278533.P9187613053003891601

namespace A278533

/-- `A286598(A059894(n+1)%(n+1)²)` -/
def P9187613053003891601.Spec : Prop :=
  ∀ n, P9187613053003891601.a n = A278533 n

end A278533

/-! ## A278533.P14737542086501097235

`A286598(char[A059893(n+1)]*A059894(n+1))`
-/

namespace A278533.P14737542086501097235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A059894 (n + 1)).toNat

end

end A278533.P14737542086501097235

namespace A278533

/-- `A286598(char[A059893(n+1)]*A059894(n+1))` -/
def P14737542086501097235.Spec : Prop :=
  ∀ n, P14737542086501097235.a n = A278533 n

end A278533

/-! ## A278533.P9262645904382650569

`A286598(char[A059894(n+1)]*A059894(n+1))`
-/

namespace A278533.P9262645904382650569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A059894 (n + 1)).toNat

end

end A278533.P9262645904382650569

namespace A278533

/-- `A286598(char[A059894(n+1)]*A059894(n+1))` -/
def P9262645904382650569.Spec : Prop :=
  ∀ n, P9262645904382650569.a n = A278533 n

end A278533

/-! ## A278533.P1051417189556906137

`A278222(A035327(4*n+1))`
-/

namespace A278533.P1051417189556906137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A035327 (4 * n + 1)).toNat

end

end A278533.P1051417189556906137

namespace A278533

/-- `A278222(A035327(4*n+1))` -/
def P1051417189556906137.Spec : Prop :=
  ∀ n, P1051417189556906137.a n = A278533 n

end A278533

/-! ## A278533.P1448665204182075690

`A278531(A115352(2*n))`
-/

namespace A278533.P1448665204182075690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A115352 (2 * n)).toNat

end

end A278533.P1448665204182075690

namespace A278533

/-- `A278531(A115352(2*n))` -/
def P1448665204182075690.Spec : Prop :=
  ∀ n, P1448665204182075690.a n = A278533 n

end A278533

/-! ## A278533.P10904246789243619000

`A278525(A366275(n))`
-/

namespace A278533.P10904246789243619000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A366275 n).toNat

end

end A278533.P10904246789243619000

namespace A278533

/-- `A278525(A366275(n))` -/
def P10904246789243619000.Spec : Prop :=
  ∀ n, P10904246789243619000.a n = A278533 n

end A278533

/-! ## A278533.P11507391570245282537

`A278525(A163511(n))`
-/

namespace A278533.P11507391570245282537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A163511 n).toNat

end

end A278533.P11507391570245282537

namespace A278533

/-- `A278525(A163511(n))` -/
def P11507391570245282537.Spec : Prop :=
  ∀ n, P11507391570245282537.a n = A278533 n

end A278533

/-! ## A278533.P7474241165765788985

`A278525(A332817(n))`
-/

namespace A278533.P7474241165765788985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A332817 n).toNat

end

end A278533.P7474241165765788985

namespace A278533

/-- `A278525(A332817(n))` -/
def P7474241165765788985.Spec : Prop :=
  ∀ n, P7474241165765788985.a n = A278533 n

end A278533

/-! ## A278533.P10167034918351572186

`A278221(A005940(n+1))`
-/

namespace A278533.P10167034918351572186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A005940 (n + 1)).toNat

end

end A278533.P10167034918351572186

namespace A278533

/-- `A278221(A005940(n+1))` -/
def P10167034918351572186.Spec : Prop :=
  ∀ n, P10167034918351572186.a n = A278533 n

end A278533

/-! ## A278533.P2304354613058059805

`A046523(A122111(A064216(A244154(n))))`
-/

namespace A278533.P2304354613058059805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A122111 (A064216 (A244154 n).toNat).toNat).toNat

end

end A278533.P2304354613058059805

namespace A278533

/-- `A046523(A122111(A064216(A244154(n))))` -/
def P2304354613058059805.Spec : Prop :=
  ∀ n, P2304354613058059805.a n = A278533 n

end A278533

/-! ## A278533.P16425605969587895748

`A046523(A122111(A064989(A005940(2*n+1))))`
-/

namespace A278533.P16425605969587895748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A122111 (A064989 (A005940 (2 * n + 1)).toNat).toNat).toNat

end

end A278533.P16425605969587895748

namespace A278533

/-- `A046523(A122111(A064989(A005940(2*n+1))))` -/
def P16425605969587895748.Spec : Prop :=
  ∀ n, P16425605969587895748.a n = A278533 n

end A278533

/-! ## A278533.P15064731622303705694

`A278525(A241909(A241916(A253565(n))))`
-/

namespace A278533.P15064731622303705694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A241909 (A241916 (A253565 n).toNat).toNat).toNat

end

end A278533.P15064731622303705694

namespace A278533

/-- `A278525(A241909(A241916(A253565(n))))` -/
def P15064731622303705694.Spec : Prop :=
  ∀ n, P15064731622303705694.a n = A278533 n

end A278533

/-!
# A278534: a(n) = A278236(A219666(n)).

The programs for A278534, there is no canonical definition to state claims against.
-/

/-! ## A278534.P14301117859157434741

`A278236(A219666(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278534.P14301117859157434741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A219666 n).toNat

end

end A278534.P14301117859157434741

/-! ## A278534.P15160988947249983357

`A278236(∑[A230406(n)])`
-/

namespace A278534.P15160988947249983357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278534.P15160988947249983357

/-! ## A278534.P13364847370378909350

`A278236(A231723(n)+A219653(n))`
-/

namespace A278534.P13364847370378909350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A231723 n + A219653 n).toNat

end

end A278534.P13364847370378909350

/-! ## A278534.P8649838960085142692

`A278236(A219655(n)-A231724(n))`
-/

namespace A278534.P8649838960085142692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A219655 n - A231724 n).toNat

end

end A278534.P8649838960085142692

/-! ## A278534.P18278214209903894846

`A278236(eq[0, A230425(n)])`
-/

namespace A278534.P18278214209903894846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278534.P18278214209903894846

/-! ## A278534.P1135856367052392782

`A278236(eq[0, A230427(n)])`
-/

namespace A278534.P1135856367052392782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278534.P1135856367052392782

/-!
# A278535: a(n) = A046523(A253565(n)).

The programs for A278535, the canonical program `A278535.P5731312989351838873` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278535 has offset 0).

The definition of A278535 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278535.P5731312989351838873

`A046523(A253565(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278535

/-- `A046523(A253565(n))` -/
def P5731312989351838873.Spec : Prop :=
  ∀ n, P5731312989351838873.a n = A278535 n

theorem P5731312989351838873.correct : P5731312989351838873.Spec := by
  intro n
  simp only [A278535]

end A278535

/-! ## A278535.P11591263740201923691

`A278222(Δ[n²]-2^ceil(log2(n+1)))`
-/

namespace A278535.P11591263740201923691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A278535.P11591263740201923691

namespace A278535

/-- `A278222(Δ[n²]-2^ceil(log2(n+1)))` -/
def P11591263740201923691.Spec : Prop :=
  ∀ n, P11591263740201923691.a n = A278535 n

end A278535

/-! ## A278535.P1567326828504638963

`A278219(A341916(n))`
-/

namespace A278535.P1567326828504638963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A341916 n).toNat

end

end A278535.P1567326828504638963

namespace A278535

/-- `A278219(A341916(n))` -/
def P1567326828504638963.Spec : Prop :=
  ∀ n, P1567326828504638963.a n = A278535 n

end A278535

/-! ## A278535.P11989154387733387732

`or(A099894(n), A278222(A006257(n)))`
-/

namespace A278535.P11989154387733387732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099894 n) (A278222 (A006257 n).toNat)

end

end A278535.P11989154387733387732

namespace A278535

/-- `or(A099894(n), A278222(A006257(n)))` -/
def P11989154387733387732.Spec : Prop :=
  ∀ n, P11989154387733387732.a n = A278535 n

end A278535

/-! ## A278535.P1664343349787129881

`A278222(A006257(n))%A003359(n+1)`
-/

namespace A278535.P1664343349787129881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 (A006257 n).toNat) (A003359 (n + 1))

end

end A278535.P1664343349787129881

namespace A278535

/-- `A278222(A006257(n))%A003359(n+1)` -/
def P1664343349787129881.Spec : Prop :=
  ∀ n, P1664343349787129881.a n = A278535 n

end A278535

/-! ## A278535.P3367195692517389689

`A365425(A345401(n))`
-/

namespace A278535.P3367195692517389689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 (A345401 n).toNat

end

end A278535.P3367195692517389689

namespace A278535

/-- `A365425(A345401(n))` -/
def P3367195692517389689.Spec : Prop :=
  ∀ n, P3367195692517389689.a n = A278535 n

end A278535

/-! ## A278535.P15892478884282910133

`A278222(A006257(n))+A069517(2*n+3)`
-/

namespace A278535.P15892478884282910133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A006257 n).toNat + A069517 (2 * n + 3)

end

end A278535.P15892478884282910133

namespace A278535

/-- `A278222(A006257(n))+A069517(2*n+3)` -/
def P15892478884282910133.Spec : Prop :=
  ∀ n, P15892478884282910133.a n = A278535 n

end A278535

/-! ## A278535.P5536448985047283676

`A057427(2*n+3)*A278222(abs(A003817(n)-n-n))`
-/

namespace A278535.P5536448985047283676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A278222 |A003817 n - (n : ℤ) - (n : ℤ)|.toNat

end

end A278535.P5536448985047283676

namespace A278535

/-- `A057427(2*n+3)*A278222(abs(A003817(n)-n-n))` -/
def P5536448985047283676.Spec : Prop :=
  ∀ n, P5536448985047283676.a n = A278535 n

end A278535

/-! ## A278535.P2037137935344047818

`A046523(A278222(A053645(2*n+1)))`
-/

namespace A278535.P2037137935344047818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A278222 (A053645 (2 * n + 1)).toNat).toNat

end

end A278535.P2037137935344047818

namespace A278535

/-- `A046523(A278222(A053645(2*n+1)))` -/
def P2037137935344047818.Spec : Prop :=
  ∀ n, P2037137935344047818.a n = A278535 n

end A278535

/-! ## A278535.P4095289966082220751

`A290092(A191109(n+1))`
-/

namespace A278535.P4095289966082220751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A191109 (n + 1)).toNat

end

end A278535.P4095289966082220751

namespace A278535

/-- `A290092(A191109(n+1))` -/
def P4095289966082220751.Spec : Prop :=
  ∀ n, P4095289966082220751.a n = A278535 n

end A278535

/-! ## A278535.P17662993429617172493

`A278525(A005940(n+1))`
-/

namespace A278535.P17662993429617172493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A005940 (n + 1)).toNat

end

end A278535.P17662993429617172493

namespace A278535

/-- `A278525(A005940(n+1))` -/
def P17662993429617172493.Spec : Prop :=
  ∀ n, P17662993429617172493.a n = A278535 n

end A278535

/-! ## A278535.P10718350624139206848

`A046523(A052126(A005940(2*(n+1))))`
-/

namespace A278535.P10718350624139206848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A052126 (A005940 (2 * (n + 1))).toNat).toNat

end

end A278535.P10718350624139206848

namespace A278535

/-- `A046523(A052126(A005940(2*(n+1))))` -/
def P10718350624139206848.Spec : Prop :=
  ∀ n, P10718350624139206848.a n = A278535 n

end A278535

/-! ## A278535.P14009783449912308998

`A046523(A052126(2*A064216(A244154(n))))`
-/

namespace A278535.P14009783449912308998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A052126 (2 * A064216 (A244154 n).toNat).toNat).toNat

end

end A278535.P14009783449912308998

namespace A278535

/-- `A046523(A052126(2*A064216(A244154(n))))` -/
def P14009783449912308998.Spec : Prop :=
  ∀ n, P14009783449912308998.a n = A278535 n

end A278535

/-!
# A278536: First differences of A273324.

The programs for A278536, the canonical program `A278536.P10927879092705534477` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278536 has offset 1).

The definition of A278536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278536.P10927879092705534477

`A273324(n+2)-A273324(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278536

/-- `A273324(n+2)-A273324(n+1)` -/
def P10927879092705534477.Spec : Prop :=
  ∀ n, P10927879092705534477.a n = A278536 (n + 1)

theorem P10927879092705534477.correct : P10927879092705534477.Spec := by
  intro n
  simp only [A278536, Nat.add_sub_cancel]

end A278536

/-!
# A278537: a(n) = index of the column where n is located in array A278511, a(1) = 0.

The programs for A278537, there is no canonical definition to state claims against.
-/

/-! ## A278537.P6727860087187434871

`A278539(n+1)-(n%2)^n`
-/

namespace A278537.P6727860087187434871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - (((n % 2) ^ n : ℕ) : ℤ)

end

end A278537.P6727860087187434871

/-! ## A278537.P14558831948647300202

`A278529(n+1)+A040001(n)-1`
-/

namespace A278537.P14558831948647300202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1) + (A040001 n - 1)

end

end A278537.P14558831948647300202

/-! ## A278537.P13628510849324169630

`A278539(n+1)-A135528(n+1)`
-/

namespace A278537.P13628510849324169630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - A135528 (n + 1)

end

end A278537.P13628510849324169630

/-! ## A278537.P11315289710820320988

`A278529(n+1)+(A028310(n)+1)%2`
-/

namespace A278537.P11315289710820320988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1) + Int.tmod (A028310 n + 1) 2

end

end A278537.P11315289710820320988

/-! ## A278537.P6523388696845973817

`A278539(n+1)-floor(1/A278538(n+1))`
-/

namespace A278537.P6523388696845973817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - ⌊1 / (A278538 (n + 1) : ℚ)⌋

end

end A278537.P6523388696845973817

/-! ## A278537.P7190732907871860362

`A278529(n+1)+char[A243501(n+1)]`
-/

namespace A278537.P7190732907871860362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A278537.P7190732907871860362

/-! ## A278537.P1598155886145743877

`A278539(n+1)-∑[A100287(n+1)]%2`
-/

namespace A278537.P1598155886145743877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A278537.P1598155886145743877

/-! ## A278537.P12212718136436267960

`A278539(n+1)-A287905(n)%2`
-/

namespace A278537.P12212718136436267960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1) - Int.tmod (A287905 n) 2

end

end A278537.P12212718136436267960

/-!
# A278538: a(n) = index of the row where n is located in array A278505.

The programs for A278538, there is no canonical definition to state claims against.
-/

/-! ## A278538.P6760408977602857215

`A278506(n+1)+A278539(n+1)-A278504(n+1)`
-/

namespace A278538.P6760408977602857215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278506 (n + 1) + (A278539 (n + 1) - A278504 (n + 1))

end

end A278538.P6760408977602857215

/-! ## A278538.P13286875606626565700

`A278528(n+1)+A100617(n+1)*A278169(n+1)`
-/

namespace A278538.P13286875606626565700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1) + A100617 (n + 1) * A278169 (n + 1)

end

end A278538.P13286875606626565700

/-! ## A278538.P4785737411726115187

`A002260(A278512(n+1)-2%A000960(n+1)+1)`
-/

namespace A278538.P4785737411726115187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278512 (n + 1) - Int.tmod 2 (A000960 (n + 1)) + 1).toNat

end

end A278538.P4785737411726115187

/-! ## A278538.P13291659196273968272

`A002260((A278512(n+1)-2)%A278512(n+1)+1)`
-/

namespace A278538.P13291659196273968272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A278512 (n + 1) - 2) (A278512 (n + 1)) + 1).toNat

end

end A278538.P13291659196273968272

/-! ## A278538.P8736935326468927857

`A002260(A278506(n+1))`
-/

namespace A278538.P8736935326468927857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278506 (n + 1)).toNat

end

end A278538.P8736935326468927857

/-! ## A278538.P49158252859741459

`A002262(A278506(n+1)-1)+1`
-/

namespace A278538.P49158252859741459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A278506 (n + 1) - 1).toNat + 1

end

end A278538.P49158252859741459

/-! ## A278538.P18391996397549667101

`A004736(A278504(n+1))`
-/

namespace A278538.P18391996397549667101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A278504 (n + 1)).toNat

end

end A278538.P18391996397549667101

/-! ## A278538.P8416038277209576817

`A278539(A278505(A278504(A278504(A278503(n+1)))))`
-/

namespace A278538.P8416038277209576817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A278505 (A278504 (A278504 (A278503 (n + 1)).toNat).toNat).toNat).toNat

end

end A278538.P8416038277209576817

/-! ## A278538.P2996311405304474662

`A278539(A278505(A278504(A278506(A278505(n+1)))))`
-/

namespace A278538.P2996311405304474662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A278505 (A278504 (A278506 (A278505 (n + 1)).toNat).toNat).toNat).toNat

end

end A278538.P2996311405304474662

/-!
# A278539: a(n) = index of the column where n is located in array A278505.

The programs for A278539, there is no canonical definition to state claims against.
-/

/-! ## A278539.P6995322910058368813

`1+A278529(n+1)`
-/

namespace A278539.P6995322910058368813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A278529 (n + 1)

end

end A278539.P6995322910058368813

/-! ## A278539.P3086309358470674294

`A278537(A065190(n+1)+1)`
-/

namespace A278539.P3086309358470674294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A065190 (n + 1) + 1).toNat

end

end A278539.P3086309358470674294

/-! ## A278539.P2378063178683044255

`A278537(n+1)+A135528(n+1)`
-/

namespace A278539.P2378063178683044255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (n + 1) + A135528 (n + 1)

end

end A278539.P2378063178683044255

/-! ## A278539.P13624962084471560138

`A278504(n+1)+A278538(n+1)-A278506(n+1)`
-/

namespace A278539.P13624962084471560138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278504 (n + 1) + (A278538 (n + 1) - A278506 (n + 1))

end

end A278539.P13624962084471560138

/-! ## A278539.P6759827748433770313

`A278537(A114112(n+2))`
-/

namespace A278539.P6759827748433770313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A114112 (n + 2)).toNat

end

end A278539.P6759827748433770313

/-! ## A278539.P12453744078083719501

`A278529(A017629(A278529(A278529(A017629(n)))))`
-/

namespace A278539.P12453744078083719501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A017629 (A278529 (A278529 (A017629 n).toNat).toNat).toNat).toNat

end

end A278539.P12453744078083719501

/-! ## A278539.P10750730827700161515

`A002260(A278504(n+1))`
-/

namespace A278539.P10750730827700161515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278504 (n + 1)).toNat

end

end A278539.P10750730827700161515

/-! ## A278539.P9822685873307938642

`A278537(A278511(A278506(n+1)))`
-/

namespace A278539.P9822685873307938642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A278511 (A278506 (n + 1)).toNat).toNat

end

end A278539.P9822685873307938642

/-! ## A278539.P6318710151538844490

`A004736(A278506(n+1))`
-/

namespace A278539.P6318710151538844490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A278506 (n + 1)).toNat

end

end A278539.P6318710151538844490

/-! ## A278539.P9479212588746512083

`A278538(A278505(A278504(A278504(A278503(n+1)))))`
-/

namespace A278539.P9479212588746512083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (A278505 (A278504 (A278504 (A278503 (n + 1)).toNat).toNat).toNat).toNat

end

end A278539.P9479212588746512083

/-! ## A278539.P420861753972473598

`A278538(A278505(A278504(A278506(A278505(n+1)))))`
-/

namespace A278539.P420861753972473598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (A278505 (A278504 (A278506 (A278505 (n + 1)).toNat).toNat).toNat).toNat

end

end A278539.P420861753972473598

/-!
# A278540: a(n) = A046523(A235201(n)).

The programs for A278540, there is no canonical definition to state claims against.
-/

/-! ## A278540.P3889150401640688883

`A046523(A235201(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278540.P3889150401640688883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A235201 (n + 1)).toNat

end

end A278540.P3889150401640688883

/-! ## A278540.P12502934325704247668

`A046523(A235485(A235487(n+1)))`
-/

namespace A278540.P12502934325704247668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A235485 (A235487 (n + 1)).toNat).toNat

end

end A278540.P12502934325704247668

/-!
# A278541: a(n) = A046523(A209636(n)).

The programs for A278541, the canonical program `A278541.P12391541813226285379` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278541 has offset 0).

The definition of A278541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278541.P8176254491239410890

`A046523(A209636(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278541.P8176254491239410890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A209636 n).toNat

end

end A278541.P8176254491239410890

namespace A278541

/-- `A046523(A209636(n))` -/
def P8176254491239410890.Spec : Prop :=
  ∀ n, P8176254491239410890.a n = A278541 n

end A278541

/-! ## A278541.P12391541813226285379

`A278542(A006068(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A278541

/-- `A278542(A006068(n))` -/
def P12391541813226285379.Spec : Prop :=
  ∀ n, P12391541813226285379.a n = A278541 n

theorem P12391541813226285379.correct : P12391541813226285379.Spec := by
  intro n
  simp only [A278541]

end A278541

/-! ## A278541.P2642605953195004875

`A278542(A153141(n))`
-/

namespace A278541.P2642605953195004875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A153141 n).toNat

end

end A278541.P2642605953195004875

namespace A278541

/-- `A278542(A153141(n))` -/
def P2642605953195004875.Spec : Prop :=
  ∀ n, P2642605953195004875.a n = A278541 n

end A278541

/-! ## A278541.P6968088161915284169

`A278542(A154436(n))`
-/

namespace A278541.P6968088161915284169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A154436 n).toNat

end

end A278541.P6968088161915284169

namespace A278541

/-- `A278542(A154436(n))` -/
def P6968088161915284169.Spec : Prop :=
  ∀ n, P6968088161915284169.a n = A278541 n

end A278541

/-! ## A278541.P9529010014292604798

`A278542(A334727(n))`
-/

namespace A278541.P9529010014292604798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A334727 n).toNat

end

end A278541.P9529010014292604798

namespace A278541

/-- `A278542(A334727(n))` -/
def P9529010014292604798.Spec : Prop :=
  ∀ n, P9529010014292604798.a n = A278541 n

end A278541

/-! ## A278541.P5528929619078431782

`A278542(A341335(n))`
-/

namespace A278541.P5528929619078431782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A341335 n).toNat

end

end A278541.P5528929619078431782

namespace A278541

/-- `A278542(A341335(n))` -/
def P5528929619078431782.Spec : Prop :=
  ∀ n, P5528929619078431782.a n = A278541 n

end A278541

/-! ## A278541.P15927762614824081349

`A046523(A127301(A071163(n)))`
-/

namespace A278541.P15927762614824081349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A127301 (A071163 n).toNat).toNat

end

end A278541.P15927762614824081349

namespace A278541

/-- `A046523(A127301(A071163(n)))` -/
def P15927762614824081349.Spec : Prop :=
  ∀ n, P15927762614824081349.a n = A278541 n

end A278541

/-! ## A278541.P15014407324631759692

`A278540(A235201(A209636(2*n-n)))`
-/

namespace A278541.P15014407324631759692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A235201 (A209636 (2 * n - n)).toNat).toNat

end

end A278541.P15014407324631759692

namespace A278541

/-- `A278540(A235201(A209636(2*n-n)))` -/
def P15014407324631759692.Spec : Prop :=
  ∀ n, P15014407324631759692.a n = A278541 n

end A278541

/-!
# A278542: a(n) = A046523(A209637(n)).

The programs for A278542, the canonical program `A278542.P14194569089620889875` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278542 has offset 0).

The definition of A278542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278542.P2399794828782856691

`A046523(A209637(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278542.P2399794828782856691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A209637 n).toNat

end

end A278542.P2399794828782856691

namespace A278542

/-- `A046523(A209637(n))` -/
def P2399794828782856691.Spec : Prop :=
  ∀ n, P2399794828782856691.a n = A278542 n

end A278542

/-! ## A278542.P9205128442241589342

`A278541(A003188(n))`
-/

namespace A278542.P9205128442241589342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A003188 n).toNat

end

end A278542.P9205128442241589342

namespace A278542

/-- `A278541(A003188(n))` -/
def P9205128442241589342.Spec : Prop :=
  ∀ n, P9205128442241589342.a n = A278542 n

end A278542

/-! ## A278542.P2850512015002931801

`A278541(A153142(n))`
-/

namespace A278542.P2850512015002931801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A153142 n).toNat

end

end A278542.P2850512015002931801

namespace A278542

/-- `A278541(A153142(n))` -/
def P2850512015002931801.Spec : Prop :=
  ∀ n, P2850512015002931801.a n = A278542 n

end A278542

/-! ## A278542.P1543401450288559497

`A278541(A154435(n))`
-/

namespace A278542.P1543401450288559497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A154435 n).toNat

end

end A278542.P1543401450288559497

namespace A278542

/-- `A278541(A154435(n))` -/
def P1543401450288559497.Spec : Prop :=
  ∀ n, P1543401450288559497.a n = A278542 n

end A278542

/-! ## A278542.P4125536277315998564

`A278541(A341336(n))`
-/

namespace A278542.P4125536277315998564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A341336 n).toNat

end

end A278542.P4125536277315998564

namespace A278542

/-- `A278541(A341336(n))` -/
def P4125536277315998564.Spec : Prop :=
  ∀ n, P4125536277315998564.a n = A278542 n

end A278542

/-! ## A278542.P14194569089620889875

`A278535(A342126(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278542

/-- `A278535(A342126(n))` -/
def P14194569089620889875.Spec : Prop :=
  ∀ n, P14194569089620889875.a n = A278542 n

theorem P14194569089620889875.correct : P14194569089620889875.Spec := by
  intro n
  simp only [A278542]

end A278542

/-! ## A278542.P12150639827216859627

`A278222(n-A115352(n))`
-/

namespace A278542.P12150639827216859627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 ((n : ℤ) - A115352 n).toNat

end

end A278542.P12150639827216859627

namespace A278542

/-- `A278222(n-A115352(n))` -/
def P12150639827216859627.Spec : Prop :=
  ∀ n, P12150639827216859627.a n = A278542 n

end A278542

/-! ## A278542.P180126461038206350

`A278541(A334727(n))`
-/

namespace A278542.P180126461038206350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A334727 n).toNat

end

end A278542.P180126461038206350

namespace A278542

/-- `A278541(A334727(n))` -/
def P180126461038206350.Spec : Prop :=
  ∀ n, P180126461038206350.a n = A278542 n

end A278542

/-! ## A278542.P14140496707426905123

`A278540(A235201(A209637(2*n-n)))`
-/

namespace A278542.P14140496707426905123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A235201 (A209637 (2 * n - n)).toNat).toNat

end

end A278542.P14140496707426905123

namespace A278542

/-- `A278540(A235201(A209637(2*n-n)))` -/
def P14140496707426905123.Spec : Prop :=
  ∀ n, P14140496707426905123.a n = A278542 n

end A278542

/-!
# A278543: a(n) = A046523(A277198(n)).

The programs for A278543, there is no canonical definition to state claims against.
-/

/-! ## A278543.P439289527198947902

`A046523(A277198(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278543.P439289527198947902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A277198 n).toNat

end

end A278543.P439289527198947902

/-! ## A278543.P13242282586040355068

`A336158(A277324(n)/A284008(n))`
-/

namespace A278543.P13242282586040355068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (SequenceMachineLib.roundAway ((A277324 n : ℚ) / (A284008 n : ℚ))).toNat

end

end A278543.P13242282586040355068

/-! ## A278543.P14481365530900742572

`A336158(gcd(A260443(n), A277197(n)))`
-/

namespace A278543.P14481365530900742572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.gcd (A260443 n) (A277197 n))

end

end A278543.P14481365530900742572

/-! ## A278543.P11708192615780324781

`A336158(A260443(2*n+1)/A284008(n))`
-/

namespace A278543.P11708192615780324781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (SequenceMachineLib.roundAway ((A260443 (2 * n + 1) : ℚ) / (A284008 n : ℚ))).toNat

end

end A278543.P11708192615780324781

/-!
# A278544: Arithmetic derivative of the prime-factorization representation of the n-th Stern polynomial: a(n) = A003415(A260443(n)).

The programs for A278544, there is no canonical definition to state claims against.
-/

/-! ## A278544.P3224740337875370258

`A003415(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278544.P3224740337875370258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A260443 n).toNat

end

end A278544.P3224740337875370258

/-! ## A278544.P4578650559440212750

`A344026(A277020(n))`
-/

namespace A278544.P4578650559440212750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A277020 n).toNat

end

end A278544.P4578650559440212750

/-! ## A278544.P948414001302873331

`∑{d}[A260443(n), A300251(#)]`
-/

namespace A278544.P948414001302873331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A278544.P948414001302873331

/-! ## A278544.P4266006239140499109

`∑{d}[A277330(n)*A283989(n), A300251(#)]`
-/

namespace A278544.P4266006239140499109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n * A283989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A278544.P4266006239140499109

/-! ## A278544.P11337373055718847079

`∑{d}[A284553(n)*A284554(n), A300251(#)]`
-/

namespace A278544.P11337373055718847079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 n * A284554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A278544.P11337373055718847079

/-!
# A278545: Number of neighbors of the n-th term in a full square array read by antidiagonals.

The programs for A278545, the canonical program `A278545.P6824174565856992994` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278545 has offset 1).

The definition of A278545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278545.P9586481805081120031

`A152012(a(1-A103451(n)))` with `a(0)=3`
-/

namespace A278545.P9586481805081120031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A152012 (a (1 - A103451 n).toNat).toNat

end

end A278545.P9586481805081120031

namespace A278545

/-- `A152012(a(1-A103451(n)))` -/
def P9586481805081120031.Spec : Prop :=
  ∀ n, P9586481805081120031.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P2127121721871296924

`A014132(a(a(A067138(n))-3))` with `a(0)=3`
-/

namespace A278545.P2127121721871296924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A014132 (a (a (A067138 n).toNat - 3).toNat).toNat

end

end A278545.P2127121721871296924

namespace A278545

/-- `A014132(a(a(A067138(n))-3))` -/
def P2127121721871296924.Spec : Prop :=
  ∀ n, P2127121721871296924.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P6824174565856992994

`A318460(a(1-A103451(n))+1)` with `a(0)=3`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278545

/-- `A318460(a(1-A103451(n))+1)` -/
def P6824174565856992994.Spec : Prop :=
  ∀ n, P6824174565856992994.a n = A278545 (n + 1)

theorem P6824174565856992994.correct : P6824174565856992994.Spec := by
  intro n
  simp only [A278545, Nat.add_sub_cancel]

end A278545

/-! ## A278545.P14223958823135371275

`A182873(Δ[A089812(n)]²+1)-1`
-/

namespace A278545.P14223958823135371275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat - 1

end

end A278545.P14223958823135371275

namespace A278545

/-- `A182873(Δ[A089812(n)]²+1)-1` -/
def P14223958823135371275.Spec : Prop :=
  ∀ n, P14223958823135371275.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P16162054696060278663

`A098171(a(3%A007318(n)²)+1)` with `a(0)=3`
-/

namespace A278545.P16162054696060278663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A098171 (a (Int.tmod 3 (A007318 n ^ 2)).toNat + 1).toNat

end

end A278545.P16162054696060278663

namespace A278545

/-- `A098171(a(3%A007318(n)²)+1)` -/
def P16162054696060278663.Spec : Prop :=
  ∀ n, P16162054696060278663.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P13068135279679761951

`A031176(a(n-1))-3*A103451(n)` with `a(0)=3`
-/

namespace A278545.P13068135279679761951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A031176 (a (n - 1)).toNat - 3 * A103451 n

end

end A278545.P13068135279679761951

namespace A278545

/-- `A031176(a(n-1))-3*A103451(n)` -/
def P13068135279679761951.Spec : Prop :=
  ∀ n, P13068135279679761951.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P12031540223762321000

`floor((a(2%A176348(n))+1)*sqrt(2))` with `a(0)=3`
-/

namespace A278545.P12031540223762321000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (Int.tmod 2 (A176348 n)).toNat + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A278545.P12031540223762321000

namespace A278545

/-- `floor((a(2%A176348(n))+1)*sqrt(2))` -/
def P12031540223762321000.Spec : Prop :=
  ∀ n, P12031540223762321000.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P4758396880130043452

`A047357(a(2%A176348(n))+1)-2` with `a(0)=3`
-/

namespace A278545.P4758396880130043452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047357 (a (Int.tmod 2 (A176348 n)).toNat + 1).toNat - 2

end

end A278545.P4758396880130043452

namespace A278545

/-- `A047357(a(2%A176348(n))+1)-2` -/
def P4758396880130043452.Spec : Prop :=
  ∀ n, P4758396880130043452.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P7377150459267133122

`A136188(A049702(n))`
-/

namespace A278545.P7377150459267133122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 (A049702 n).toNat

end

end A278545.P7377150459267133122

namespace A278545

/-- `A136188(A049702(n))` -/
def P7377150459267133122.Spec : Prop :=
  ∀ n, P7377150459267133122.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P7970308114571516384

`A136188(A333287(n+1))`
-/

namespace A278545.P7970308114571516384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 (A333287 (n + 1)).toNat

end

end A278545.P7970308114571516384

namespace A278545

/-- `A136188(A333287(n+1))` -/
def P7970308114571516384.Spec : Prop :=
  ∀ n, P7970308114571516384.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P8721897566817386711

`∑{d}[A087112(n+1), A100073(#)+1]`
-/

namespace A278545.P8721897566817386711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A100073 d + 1)

end

end A278545.P8721897566817386711

namespace A278545

/-- `∑{d}[A087112(n+1), A100073(#)+1]` -/
def P8721897566817386711.Spec : Prop :=
  ∀ n, P8721897566817386711.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P10654940685354692089

`A154325(A014132(n+1))+A278290(n+1)+2`
-/

namespace A278545.P10654940685354692089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A014132 (n + 1)).toNat + (A278290 (n + 1) + 2)

end

end A278545.P10654940685354692089

namespace A278545

/-- `A154325(A014132(n+1))+A278290(n+1)+2` -/
def P10654940685354692089.Spec : Prop :=
  ∀ n, P10654940685354692089.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P525625794049244689

`A136188(A350770(n+1))`
-/

namespace A278545.P525625794049244689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 (A350770 (n + 1)).toNat

end

end A278545.P525625794049244689

namespace A278545

/-- `A136188(A350770(n+1))` -/
def P525625794049244689.Spec : Prop :=
  ∀ n, P525625794049244689.a n = A278545 (n + 1)

end A278545

/-! ## A278545.P17157484740245431698

`A278480(n+1)+A129186(n)`
-/

namespace A278545.P17157484740245431698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278480 (n + 1) + A129186 n

end

end A278545.P17157484740245431698

namespace A278545

/-- `A278480(n+1)+A129186(n)` -/
def P17157484740245431698.Spec : Prop :=
  ∀ n, P17157484740245431698.a n = A278545 (n + 1)

end A278545

/-!
# A278546: Even numbers that cannot be expressed as a sum of 3 or fewer terms of A035928.

The programs for A278546, there is no canonical definition to state claims against.
-/

/-! ## A278546.P11320925836569749246

`A231575(A305801(3*n+1))+A001006(n+3)`
-/

namespace A278546.P11320925836569749246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231575 (A305801 (3 * n + 1)).toNat + A001006 (n + 3)

end

end A278546.P11320925836569749246

/-!
# A278547: Number of n X 1 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278547, the canonical program `A278547.P16001027706530451381` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278547 has offset 1).

The definition of A278547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278547.P16001027706530451381

`C(n+12, n+1)-(n+2)*C(n+8, n+1)+C(n+4, n+1)*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278547

/-- `C(n+12, n+1)-(n+2)*C(n+8, n+1)+C(n+4, n+1)*C(n+2, 2)` -/
def P16001027706530451381.Spec : Prop :=
  ∀ n, P16001027706530451381.a n = A278547 (n + 1)

theorem P16001027706530451381.correct : P16001027706530451381.Spec := by
  intro n
  simp only [A278547, Nat.add_sub_cancel]

end A278547

/-! ## A278547.P18126121551901143485

`A278798(∑[n]+1)`
-/

namespace A278547.P18126121551901143485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278547.P18126121551901143485

namespace A278547

/-- `A278798(∑[n]+1)` -/
def P18126121551901143485.Spec : Prop :=
  ∀ n, P18126121551901143485.a n = A278547 (n + 1)

end A278547

/-! ## A278547.P4974366389356354143

`A278798(A000124(n))+A025469(n)`
-/

namespace A278547.P4974366389356354143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A000124 n).toNat + A025469 n

end

end A278547.P4974366389356354143

namespace A278547

/-- `A278798(A000124(n))+A025469(n)` -/
def P4974366389356354143.Spec : Prop :=
  ∀ n, P4974366389356354143.a n = A278547 (n + 1)

end A278547

/-! ## A278547.P8275234584541021840

`A278798(A000124(n))+A235044(n)`
-/

namespace A278547.P8275234584541021840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A000124 n).toNat + A235044 n

end

end A278547.P8275234584541021840

namespace A278547

/-- `A278798(A000124(n))+A235044(n)` -/
def P8275234584541021840.Spec : Prop :=
  ∀ n, P8275234584541021840.a n = A278547 (n + 1)

end A278547

/-! ## A278547.P10704554135574046999

`A178489(n)*A278798(A000124(n))`
-/

namespace A278547.P10704554135574046999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A278798 (A000124 n).toNat

end

end A278547.P10704554135574046999

namespace A278547

/-- `A178489(n)*A278798(A000124(n))` -/
def P10704554135574046999.Spec : Prop :=
  ∀ n, P10704554135574046999.a n = A278547 (n + 1)

end A278547

/-!
# A278548: Number of nX2 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278548, there is no canonical definition to state claims against.
-/

/-! ## A278548.P8059731286982606578

`A278553(∑[n+1]+2)`
-/

namespace A278548.P8059731286982606578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278548.P8059731286982606578

/-! ## A278548.P1565206205922873477

`record[A278553(∑[A152271(n)])]`
-/

namespace A278548.P1565206205922873477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278548.P1565206205922873477

/-! ## A278548.P9721374031032396146

`record[A278553(A117142(n+1))]`
-/

namespace A278548.P9721374031032396146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278548.P9721374031032396146

/-! ## A278548.P13746187367667309590

`record[A278553(Δ[A003453(n+5)])]`
-/

namespace A278548.P13746187367667309590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278548.P13746187367667309590

/-! ## A278548.P9992413305391440812

`record[A278553(record[A185180(n+1)])]`
-/

namespace A278548.P9992413305391440812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278548.P9992413305391440812

/-!
# A278549: Number of nX3 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278549, there is no canonical definition to state claims against.
-/

/-! ## A278549.P10859403894993885957

`A278553(∑[n+2]+4)`
-/

namespace A278549.P10859403894993885957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278549.P10859403894993885957

/-! ## A278549.P1799447957839296185

`A278553(A167614(n+1))+A025469(n)`
-/

namespace A278549.P1799447957839296185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A167614 (n + 1)).toNat + A025469 n

end

end A278549.P1799447957839296185

/-! ## A278549.P5834070575032251013

`A278553(A167614(n+1))+A235044(n)`
-/

namespace A278549.P5834070575032251013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A167614 (n + 1)).toNat + A235044 n

end

end A278549.P5834070575032251013

/-! ## A278549.P11148136281616156457

`A278553(Δ[A008778(n)])+A171765(n)`
-/

namespace A278549.P11148136281616156457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f1 (n + 1) - f1 n).toNat + A171765 n

end

end A278549.P11148136281616156457

/-!
# A278550: Number of nX4 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278550, there is no canonical definition to state claims against.
-/

/-! ## A278550.P14972288950795821125

`A278553(A141214(n)+7)`
-/

namespace A278550.P14972288950795821125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A141214 n + 7).toNat

end

end A278550.P14972288950795821125

/-! ## A278550.P7020309964968804073

`A278553(A052905(n)+9)`
-/

namespace A278550.P7020309964968804073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A052905 n + 9).toNat

end

end A278550.P7020309964968804073

/-! ## A278550.P2291082965141011364

`A278553(A055999(n)+10)`
-/

namespace A278550.P2291082965141011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A055999 n + 10).toNat

end

end A278550.P2291082965141011364

/-! ## A278550.P11212532948582610778

`A278553(A167614(n+2)+1)`
-/

namespace A278550.P11212532948582610778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A167614 (n + 2) + 1).toNat

end

end A278550.P11212532948582610778

/-! ## A278550.P15075245091039908734

`A278553(Δ[A264443(n)-n²])`
-/

namespace A278550.P15075245091039908734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f1 (n + 1) - f1 n).toNat

end

end A278550.P15075245091039908734

/-!
# A278551: Number of nX5 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278551, there is no canonical definition to state claims against.
-/

/-! ## A278551.P2450974524211438422

`A278553(Δ[A264443(n)])`
-/

namespace A278551.P2450974524211438422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f1 (n + 1) - f1 n).toNat

end

end A278551.P2450974524211438422

/-! ## A278551.P10857220999302785658

`A278553(A374005(n+1))`
-/

namespace A278551.P10857220999302785658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A374005 (n + 1)).toNat

end

end A278551.P10857220999302785658

/-! ## A278551.P1952860062429955417

`A278553(Δ[A034857(n+2)]-1)`
-/

namespace A278551.P1952860062429955417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (f1 (n + 1) - f1 n - 1).toNat

end

end A278551.P1952860062429955417

/-! ## A278551.P2793955285754088756

`A278553(A264443(n+1)-A264443(n))`
-/

namespace A278551.P2793955285754088756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278553 (A264443 (n + 1) - A264443 n).toNat

end

end A278551.P2793955285754088756

/-!
# A278554: Number of distinct blocks of length n (a.k.a. subword complexity) of the characteristic sequence of the squarefree numbers A008966.

The programs for A278554, there is no canonical definition to state claims against.
-/

/-! ## A278554.P9624649399780895597

`2^n-A274627(n)`
-/

namespace A278554.P9624649399780895597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A274627 n

end

end A278554.P9624649399780895597

/-! ## A278554.P6930901603484741324

`abs(A000079(n)-A274627(n))`
-/

namespace A278554.P6930901603484741324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A274627 n|

end

end A278554.P6930901603484741324

/-! ## A278554.P3793075661822869191

`A000051(n)-(A274627(n)+1)`
-/

namespace A278554.P3793075661822869191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A274627 n + 1)

end

end A278554.P3793075661822869191

/-! ## A278554.P13671182719262571401

`A000225(n)+1-A274627(n)`
-/

namespace A278554.P13671182719262571401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A274627 n)

end

end A278554.P13671182719262571401

/-! ## A278554.P3078246419090999087

`A000918(n)+2-A274627(n)`
-/

namespace A278554.P3078246419090999087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A274627 n)

end

end A278554.P3078246419090999087

/-!
# A278555: Expansion of Product_{n>=1} (1 - x^(5*n))^12/(1 - x^n)^13 in powers of x.

The programs for A278555, there is no canonical definition to state claims against.
-/

/-! ## A278555.P11947438892991890020

`A023011(n)-A341880(A341884(n+1))`
-/

namespace A278555.P11947438892991890020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023011 n - A341880 ((A341884 (n + 1)).toNat + 16)

end

end A278555.P11947438892991890020

/-!
# A278556: Expansion of Product_{n>=1} (1 - x^(5*n))^18/(1 - x^n)^19 in powers of x.

The programs for A278556, there is no canonical definition to state claims against.
-/

/-! ## A278556.P4032218893679411144

`A344758(A023017(n))`
-/

namespace A278556.P4032218893679411144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (A023017 n).toNat

end

end A278556.P4032218893679411144

/-!
# A278557: Expansion of Product_{n>=1} (1 - x^(5*n))^24/(1 - x^n)^25 in powers of x.

The programs for A278557, there is no canonical definition to state claims against.
-/

/-! ## A278557.P9167605578464840606

`A014682(2*A282924(n))`
-/

namespace A278557.P9167605578464840606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A282924 n).toNat

end

end A278557.P9167605578464840606

/-!
# A278559: a(n) = A000041(25*n + 24).

The programs for A278559, there is no canonical definition to state claims against.
-/

/-! ## A278559.P12448003543551542730

`A213260(5*n+4)`
-/

namespace A278559.P12448003543551542730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213260 (5 * n + 4)

end

end A278559.P12448003543551542730

/-! ## A278559.P3354054262666870499

`A000041(25*n+24)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278559.P3354054262666870499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (25 * n + 24)

end

end A278559.P3354054262666870499

/-! ## A278559.P7943051111712052472

`5*5*A072870(n)`
-/

namespace A278559.P7943051111712052472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A072870 n)

end

end A278559.P7943051111712052472

/-! ## A278559.P10285177975068281521

`5*A071734(A016897(n))`
-/

namespace A278559.P10285177975068281521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A071734 (A016897 n).toNat

end

end A278559.P10285177975068281521

/-! ## A278559.P13270942572237024893

`or(A000007(n), A213260(A016897(n)))`
-/

namespace A278559.P13270942572237024893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213260 (A016897 n).toNat)

end

end A278559.P13270942572237024893

/-! ## A278559.P9839590452375535011

`A213260(A016897(n))%A327771(n)`
-/

namespace A278559.P9839590452375535011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213260 (A016897 n).toNat) (A327771 n)

end

end A278559.P9839590452375535011

/-!
# A278561: Let v = list of denominators of Farey series of order n (see A006843); let b(n) = Sum k*k'/(k+k'), where (k,k') are pairs of successive terms of v; a(n) = denominator of b(n).

The programs for A278561, there is no canonical definition to state claims against.
-/

/-! ## A278561.P8388905186701584659

`gcd(A278048(A187829(n+1)), A278051(n+1))`
-/

namespace A278561.P8388905186701584659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278048 (A187829 (n + 1)).toNat) (A278051 (n + 1))

end

end A278561.P8388905186701584659

/-! ## A278561.P11527575867381179363

`gcd(A278048(n+1), A278051(A161951(n+1)))`
-/

namespace A278561.P11527575867381179363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278048 (n + 1)) (A278051 (A161951 (n + 1)).toNat)

end

end A278561.P11527575867381179363

/-! ## A278561.P21647672946430109

`gcd(A000027(A278051(n+1)), A007004(n+2))`
-/

namespace A278561.P21647672946430109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A278051 (n + 1)).toNat) (A007004 (n + 2))

end

end A278561.P21647672946430109

/-!
# A278563: Denominators of coefficients in Taylor series expansion of log(arcsin(x)/log(x+1)).

The programs for A278563, there is no canonical definition to state claims against.
-/

/-! ## A278563.P16044104784830193606

`2^n*A000010(A000108(2*n))%13`
-/

namespace A278563.P16044104784830193606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.tmod (A000010 (A000108 (2 * n)).toNat) 13

end

end A278563.P16044104784830193606

/-! ## A278563.P908321859609403666

`A000005(A194972(n+1))*∑{d}[n+1, #*#%2]`
-/

namespace A278563.P908321859609403666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A194972 (n + 1)).toNat * ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ)

end

end A278563.P908321859609403666

/-!
# A278564: Irregular triangle read by rows: row n lists (negated) determinants of the quadratic Farey series of order n.

The programs for A278564, there is no canonical definition to state claims against.
-/

/-! ## A278564.P15914028543570297507

`gcd(A000217(A212444(n)), A134011(n))`
-/

namespace A278564.P15914028543570297507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A212444 n).toNat) (A134011 n)

end

end A278564.P15914028543570297507

/-! ## A278564.P6961382847240841107

`gcd(A053344(A187829(n+1)), A277082(n))`
-/

namespace A278564.P6961382847240841107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053344 (A187829 (n + 1)).toNat) (A277082 n)

end

end A278564.P6961382847240841107

/-! ## A278564.P9563686530482352582

`A020639(C(A285089(n+2), A285108(3*n+4)))`
-/

namespace A278564.P9563686530482352582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A285089 (n + 2)).toNat (A285108 (3 * n + 4)).toNat)

end

end A278564.P9563686530482352582

/-!
# A278565: a(n) = Sum_{t=1..n} binomial(n,t)*t^(1+(n-t)^2).

The programs for A278565, there is no canonical definition to state claims against.
-/

/-! ## A278565.P14792584885050419793

`n*A031143(n!)`
-/

namespace A278565.P14792584885050419793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A031143 (Nat.factorial n)

end

end A278565.P14792584885050419793

/-!
# A278566: Irregular triangle read by rows: row n gives coefficients when the n-th coefficient of the modular function j (A000521(n)) is written as a linear combination of irreducible characters of the Monster simple group (A001379).

The programs for A278566, there is no canonical definition to state claims against.
-/

/-! ## A278566.P15679650208130128285

`A132272(A301917(n+1)%A048949(n+1))`
-/

namespace A278566.P15679650208130128285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 (Int.tmod (A301917 (n + 1)) (A048949 (n + 1))).toNat

end

end A278566.P15679650208130128285

/-!
# A278567: Maximal coefficient (in absolute value) of cyclotomic polynomial C(N,x), where N = n-th number which is a product of exactly three distinct primes = A007304(n).

The programs for A278567, there is no canonical definition to state claims against.
-/

/-! ## A278567.P10874118206212360810

`A137979(lcm(2, A007304(n+1)))`
-/

namespace A278567.P10874118206212360810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137979 (Int.lcm 2 (A007304 (n + 1)))

end

end A278567.P10874118206212360810

/-!
# A278568: Twice odd prime powers.

The programs for A278568, the canonical program `A278568.P6932813075951238754` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278568 has offset 1).

The definition of A278568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278568.P6932813075951238754

`2*A061345(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278568

/-- `2*A061345(n)` -/
def P6932813075951238754.Spec : Prop :=
  ∀ n, P6932813075951238754.a n = A278568 (n + 1)

theorem P6932813075951238754.correct : P6932813075951238754.Spec := by
  intro n
  simp only [A278568, Nat.add_sub_cancel]

end A278568

/-! ## A278568.P12634343899975890594

`record[2*A034699(2*n+1)]`
-/

namespace A278568.P12634343899975890594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034699 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278568.P12634343899975890594

namespace A278568

/-- `record[2*A034699(2*n+1)]` -/
def P12634343899975890594.Spec : Prop :=
  ∀ n, P12634343899975890594.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P7403601953776479159

`record[2*A330691(2*n+1)]`
-/

namespace A278568.P7403601953776479159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278568.P7403601953776479159

namespace A278568

/-- `record[2*A330691(2*n+1)]` -/
def P7403601953776479159.Spec : Prop :=
  ∀ n, P7403601953776479159.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P14224912937865282535

`filter[A122905(n+1), A354924(#)]`
-/

namespace A278568.P14224912937865282535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A278568.P14224912937865282535

namespace A278568

/-- `filter[A122905(n+1), A354924(#)]` -/
def P14224912937865282535.Spec : Prop :=
  ∀ n, P14224912937865282535.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P2288653750152246073

`filter[A138929(n+1), A359374(#)]`
-/

namespace A278568.P2288653750152246073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A278568.P2288653750152246073

namespace A278568

/-- `filter[A138929(n+1), A359374(#)]` -/
def P2288653750152246073.Spec : Prop :=
  ∀ n, P2288653750152246073.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P4603515669632569251

`filter[A138929(n+1), A359820(#)]`
-/

namespace A278568.P4603515669632569251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A278568.P4603515669632569251

namespace A278568

/-- `filter[A138929(n+1), A359820(#)]` -/
def P4603515669632569251.Spec : Prop :=
  ∀ n, P4603515669632569251.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P8271569834008380480

`filter[A321193(n+1), A359374(#)]`
-/

namespace A278568.P8271569834008380480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A278568.P8271569834008380480

namespace A278568

/-- `filter[A321193(n+1), A359374(#)]` -/
def P8271569834008380480.Spec : Prop :=
  ∀ n, P8271569834008380480.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P16019943671437537302

`filter[A321193(n+1), A359820(#)]`
-/

namespace A278568.P16019943671437537302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A278568.P16019943671437537302

namespace A278568

/-- `filter[A321193(n+1), A359820(#)]` -/
def P16019943671437537302.Spec : Prop :=
  ∀ n, P16019943671437537302.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P10799513278618996466

`filter[A138929(n+1), A166486(#)]`
-/

namespace A278568.P10799513278618996466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A278568.P10799513278618996466

namespace A278568

/-- `filter[A138929(n+1), A166486(#)]` -/
def P10799513278618996466.Spec : Prop :=
  ∀ n, P10799513278618996466.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P16743495859266010

`filter[A122905(n+1), A211487(#)]`
-/

namespace A278568.P16743495859266010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A278568.P16743495859266010

namespace A278568

/-- `filter[A122905(n+1), A211487(#)]` -/
def P16743495859266010.Spec : Prop :=
  ∀ n, P16743495859266010.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P16806248931847347266

`filter[A122905(n+1), A340363(#)]`
-/

namespace A278568.P16806248931847347266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A278568.P16806248931847347266

namespace A278568

/-- `filter[A122905(n+1), A340363(#)]` -/
def P16806248931847347266.Spec : Prop :=
  ∀ n, P16806248931847347266.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P5073020793714007459

`filter[A321193(n+1), A166486(#)]`
-/

namespace A278568.P5073020793714007459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A278568.P5073020793714007459

namespace A278568

/-- `filter[A321193(n+1), A166486(#)]` -/
def P5073020793714007459.Spec : Prop :=
  ∀ n, P5073020793714007459.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P18085495566787824903

`filter[A138929(n+1), A391844(#)]`
-/

namespace A278568.P18085495566787824903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A278568.P18085495566787824903

namespace A278568

/-- `filter[A138929(n+1), A391844(#)]` -/
def P18085495566787824903.Spec : Prop :=
  ∀ n, P18085495566787824903.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P13750664546175922126

`filter[A321193(n+1), A391844(#)]`
-/

namespace A278568.P13750664546175922126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A278568.P13750664546175922126

namespace A278568

/-- `filter[A321193(n+1), A391844(#)]` -/
def P13750664546175922126.Spec : Prop :=
  ∀ n, P13750664546175922126.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P8254883971962339224

`filter[A033948(n+2), A391844(#)]`
-/

namespace A278568.P8254883971962339224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A278568.P8254883971962339224

namespace A278568

/-- `filter[A033948(n+2), A391844(#)]` -/
def P8254883971962339224.Spec : Prop :=
  ∀ n, P8254883971962339224.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P26582597410060566

`∩[A033948(n+1), A122905(n+1)]`
-/

namespace A278568.P26582597410060566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278568.P26582597410060566

namespace A278568

/-- `∩[A033948(n+1), A122905(n+1)]` -/
def P26582597410060566.Spec : Prop :=
  ∀ n, (P26582597410060566.a n : ℤ) = A278568 (n + 1)

end A278568

/-! ## A278568.P11671887681970541995

`filter[A182991(n+1), A211487(#)]`
-/

namespace A278568.P11671887681970541995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A278568.P11671887681970541995

namespace A278568

/-- `filter[A182991(n+1), A211487(#)]` -/
def P11671887681970541995.Spec : Prop :=
  ∀ n, P11671887681970541995.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P16741723146702621680

`filter[A182991(n+2), A340363(#)]`
-/

namespace A278568.P16741723146702621680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A278568.P16741723146702621680

namespace A278568

/-- `filter[A182991(n+2), A340363(#)]` -/
def P16741723146702621680.Spec : Prop :=
  ∀ n, P16741723146702621680.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P103918425159175087

`filter[A182991(n+2), A354924(#)]`
-/

namespace A278568.P103918425159175087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A278568.P103918425159175087

namespace A278568

/-- `filter[A182991(n+2), A354924(#)]` -/
def P103918425159175087.Spec : Prop :=
  ∀ n, P103918425159175087.a n = A278568 (n + 1)

end A278568

/-! ## A278568.P5739194881647445558

`filter[A070776(n+1), A391844(#)]`
-/

namespace A278568.P5739194881647445558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A278568.P5739194881647445558

namespace A278568

/-- `filter[A070776(n+1), A391844(#)]` -/
def P5739194881647445558.Spec : Prop :=
  ∀ n, P5739194881647445558.a n = A278568 (n + 1)

end A278568

/-!
# A278569: Numbers of the form p^i*q^j*r^k where p,q,r are distinct odd primes and i,j,k >= 1.

The programs for A278569, the canonical program `A278569.P10528025825887119479` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278569 has offset 1).

The definition of A278569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278569.P14963796075441131750

`∩[A098903(n+1), A386606(n+1)]`
-/

namespace A278569.P14963796075441131750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P14963796075441131750

namespace A278569

/-- `∩[A098903(n+1), A386606(n+1)]` -/
def P14963796075441131750.Spec : Prop :=
  ∀ n, (P14963796075441131750.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P14781580129428637101

`∩[A333326(n+1), A386606(n+1)]`
-/

namespace A278569.P14781580129428637101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P14781580129428637101

namespace A278569

/-- `∩[A333326(n+1), A386606(n+1)]` -/
def P14781580129428637101.Spec : Prop :=
  ∀ n, (P14781580129428637101.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P11564646876601112130

`∩[A176847(n+1), A386606(n+1)]`
-/

namespace A278569.P11564646876601112130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P11564646876601112130

namespace A278569

/-- `∩[A176847(n+1), A386606(n+1)]` -/
def P11564646876601112130.Spec : Prop :=
  ∀ n, (P11564646876601112130.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P14592939668063033332

`∩[A083883(n+1), A386606(n+1)]`
-/

namespace A278569.P14592939668063033332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P14592939668063033332

namespace A278569

/-- `∩[A083883(n+1), A386606(n+1)]` -/
def P14592939668063033332.Spec : Prop :=
  ∀ n, (P14592939668063033332.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P10874160635170788688

`∩[A333855(n+1), A386606(n+1)]`
-/

namespace A278569.P10874160635170788688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P10874160635170788688

namespace A278569

/-- `∩[A333855(n+1), A386606(n+1)]` -/
def P10874160635170788688.Spec : Prop :=
  ∀ n, (P10874160635170788688.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P5515187232387173450

`∩[A033992(n+1), A083883(n+1)]`
-/

namespace A278569.P5515187232387173450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P5515187232387173450

namespace A278569

/-- `∩[A033992(n+1), A083883(n+1)]` -/
def P5515187232387173450.Spec : Prop :=
  ∀ n, (P5515187232387173450.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P10528025825887119479

`∩[A033992(n+1), A098903(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A278569

/-- `∩[A033992(n+1), A098903(n+1)]` -/
def P10528025825887119479.Spec : Prop :=
  ∀ n, (P10528025825887119479.a n : ℤ) = A278569 (n + 1)

theorem P10528025825887119479.correct : P10528025825887119479.Spec := by
  intro n
  simp only [A278569, Nat.add_sub_cancel]

end A278569

/-! ## A278569.P13764501974129698205

`∩[A033992(n+1), A176847(n+1)]`
-/

namespace A278569.P13764501974129698205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P13764501974129698205

namespace A278569

/-- `∩[A033992(n+1), A176847(n+1)]` -/
def P13764501974129698205.Spec : Prop :=
  ∀ n, (P13764501974129698205.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P15006718172693150464

`∩[A033992(n+1), A216918(n+1)]`
-/

namespace A278569.P15006718172693150464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P15006718172693150464

namespace A278569

/-- `∩[A033992(n+1), A216918(n+1)]` -/
def P15006718172693150464.Spec : Prop :=
  ∀ n, (P15006718172693150464.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P13347842597497477843

`∩[A083883(n+1), A214195(n+1)]`
-/

namespace A278569.P13347842597497477843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P13347842597497477843

namespace A278569

/-- `∩[A083883(n+1), A214195(n+1)]` -/
def P13347842597497477843.Spec : Prop :=
  ∀ n, (P13347842597497477843.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P18327600129497015047

`∩[A098903(n+1), A214195(n+1)]`
-/

namespace A278569.P18327600129497015047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P18327600129497015047

namespace A278569

/-- `∩[A098903(n+1), A214195(n+1)]` -/
def P18327600129497015047.Spec : Prop :=
  ∀ n, (P18327600129497015047.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P6684785883513966505

`∩[A033992(n+1), A333326(n+1)]`
-/

namespace A278569.P6684785883513966505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P6684785883513966505

namespace A278569

/-- `∩[A033992(n+1), A333326(n+1)]` -/
def P6684785883513966505.Spec : Prop :=
  ∀ n, (P6684785883513966505.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P12498859277245638638

`∩[A033992(n+1), A333855(n+1)]`
-/

namespace A278569.P12498859277245638638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P12498859277245638638

namespace A278569

/-- `∩[A033992(n+1), A333855(n+1)]` -/
def P12498859277245638638.Spec : Prop :=
  ∀ n, (P12498859277245638638.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P17881795804918690931

`∩[A033992(n+1), A386606(n+1)]`
-/

namespace A278569.P17881795804918690931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P17881795804918690931

namespace A278569

/-- `∩[A033992(n+1), A386606(n+1)]` -/
def P17881795804918690931.Spec : Prop :=
  ∀ n, (P17881795804918690931.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P15186555066537215010

`∩[A214195(n+1), A216918(n+1)]`
-/

namespace A278569.P15186555066537215010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P15186555066537215010

namespace A278569

/-- `∩[A214195(n+1), A216918(n+1)]` -/
def P15186555066537215010.Spec : Prop :=
  ∀ n, (P15186555066537215010.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P16982086519756441651

`∩[A214195(n+1), A333326(n+1)]`
-/

namespace A278569.P16982086519756441651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P16982086519756441651

namespace A278569

/-- `∩[A214195(n+1), A333326(n+1)]` -/
def P16982086519756441651.Spec : Prop :=
  ∀ n, (P16982086519756441651.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P6175551050472139183

`∩[A214195(n+1), A333855(n+1)]`
-/

namespace A278569.P6175551050472139183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P6175551050472139183

namespace A278569

/-- `∩[A214195(n+1), A333855(n+1)]` -/
def P6175551050472139183.Spec : Prop :=
  ∀ n, (P6175551050472139183.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P15278077618814638829

`∩[A214195(n+1), A386606(n+1)]`
-/

namespace A278569.P15278077618814638829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P15278077618814638829

namespace A278569

/-- `∩[A214195(n+1), A386606(n+1)]` -/
def P15278077618814638829.Spec : Prop :=
  ∀ n, (P15278077618814638829.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P5497772225400922207

`∩[A033992(n+1), A061346(n+1)]`
-/

namespace A278569.P5497772225400922207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P5497772225400922207

namespace A278569

/-- `∩[A033992(n+1), A061346(n+1)]` -/
def P5497772225400922207.Spec : Prop :=
  ∀ n, (P5497772225400922207.a n : ℤ) = A278569 (n + 1)

end A278569

/-! ## A278569.P7000206112092870011

`∩[A061346(n+1), A214195(n+1)]`
-/

namespace A278569.P7000206112092870011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P7000206112092870011

namespace A278569

/-- `∩[A061346(n+1), A214195(n+1)]` -/
def P7000206112092870011.Spec : Prop :=
  ∀ n, (P7000206112092870011.a n : ℤ) = A278569 (n + 1)

end A278569

/-!
# A278570: a(n) = maximum absolute value of coefficients in the cyclotomic polynomial C(N,x), where N = n-th number which a product of three distinct odd primes = A046389(n).

The programs for A278570, there is no canonical definition to state claims against.
-/

/-! ## A278570.P14525686257657673969

`A137979(2*A046389(n+1))`
-/

namespace A278570.P14525686257657673969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137979 (2 * A046389 (n + 1)).toNat

end

end A278570.P14525686257657673969

/-!
# A278572: Irregular triangle read by rows: row n lists values of k in range 1 <= k <= n/2 such x^n + x^k + 1 is irreducible (mod 2), or -1 if no such k exists.

The programs for A278572, there is no canonical definition to state claims against.
-/

/-! ## A278572.P10317733594024770743

`A014415(A014382(n+3))+A014405(3*n+5)`
-/

namespace A278572.P10317733594024770743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014415 (A014382 (n + 3)).toNat + A014405 (3 * n + 5)

end

end A278572.P10317733594024770743

/-!
# A278573: Irregular triangle read by rows: row n lists values of k in range 1 <= k <= n-1 such x^n + x^k + 1 is irreducible (mod 2), or -1 if no such k exists.

The programs for A278573, there is no canonical definition to state claims against.
-/

/-! ## A278573.P12014527956508082330

`A001222(A276721(n)+A060052(n+2))`
-/

namespace A278573.P12014527956508082330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276721 n + A060052 (n + 2)).toNat

end

end A278573.P12014527956508082330

/-! ## A278573.P8427966808665230

`A181848(A003376(n+5))%A192512(n+2)`
-/

namespace A278573.P8427966808665230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181848 (A003376 (n + 5)).toNat) (A192512 (n + 2))

end

end A278573.P8427966808665230

/-! ## A278573.P2609304149244872487

`A204553((A204553(n+2)*A253572(2*(n+1)))²)`
-/

namespace A278573.P2609304149244872487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 ((A204553 (n + 2) * A253572 (2 * (n + 1))) ^ 2).toNat

end

end A278573.P2609304149244872487

/-! ## A278573.P6825505083321916029

`A039996(or(A038792(2*n+1), A300946(2*n+1)))`
-/

namespace A278573.P6825505083321916029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (Int.lor (A038792 (2 * n + 1)) (A300946 (2 * n + 1))).toNat

end

end A278573.P6825505083321916029

/-! ## A278573.P10250992832065385231

`A111775(∑[6^A187783(n)])`
-/

namespace A278573.P10250992832065385231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A187783 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278573.P10250992832065385231

/-!
# A278574: Records in A179210.

The programs for A278574, there is no canonical definition to state claims against.
-/

/-! ## A278574.P3920729785766121498

`record[A179210(n+1)]`
-/

namespace A278574.P3920729785766121498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278574.P3920729785766121498

/-! ## A278574.P1427450390529415340

`record[A279066(A005728(n))]`
-/

namespace A278574.P1427450390529415340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278574.P1427450390529415340

/-! ## A278574.P5565921024639648872

`record[A279066(A002088(n)+1)]`
-/

namespace A278574.P5565921024639648872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279066 (A002088 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278574.P5565921024639648872

/-! ## A278574.P16303084229389420271

`record[root(A279066(n+1), A038566(n+1))]`
-/

namespace A278574.P16303084229389420271
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279066 (n + 1) : ℝ) ^ (1 / (A038566 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278574.P16303084229389420271

/-!
# A278576: E.g.f. = exp(5*(exp(t)-1) + 3*(exp(t)-1)^2).

The programs for A278576, there is no canonical definition to state claims against.
-/

/-! ## A278576.P9254649421980748877

`A110654(A099336(n+1)+A083392(n))`
-/

namespace A278576.P9254649421980748877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A099336 (n + 1) + A083392 n).toNat

end

end A278576.P9254649421980748877

/-!
# A278577: Ramanujan function tau(p) as p runs through the prime powers: a(n) = A000594(A000961(n)).

The programs for A278577, there is no canonical definition to state claims against.
-/

/-! ## A278577.P728098164976152972

`A000594(A000961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278577.P728098164976152972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A000961 (n + 1)).toNat

end

end A278577.P728098164976152972

/-! ## A278577.P10673769560402063306

`A000594(A181062(n+1)+1)`
-/

namespace A278577.P10673769560402063306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A181062 (n + 1) + 1).toNat

end

end A278577.P10673769560402063306

/-! ## A278577.P6418743590998158324

`A000594(A138929(n+1)/2)`
-/

namespace A278577.P6418743590998158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A278577.P6418743590998158324

/-! ## A278577.P2827639137653245228

`A000594(record[A136623(n+1)])`
-/

namespace A278577.P2827639137653245228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278577.P2827639137653245228

/-! ## A278577.P2303515155411268342

`A000594(eq[n, A136623(n+1)])`
-/

namespace A278577.P2303515155411268342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278577.P2303515155411268342

/-! ## A278577.P12168972551407690379

`A145155(A000961(n+1)-1)/A000961(n+1)`
-/

namespace A278577.P12168972551407690379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 (A000961 (n + 1) - 1).toNat : ℚ) / (A000961 (n + 1) : ℚ)

end

end A278577.P12168972551407690379

/-!
# A278579: Quadratic non-residues of 23: numbers n such that Jacobi(n,23) = -1.

The programs for A278579, there is no canonical definition to state claims against.
-/

/-! ## A278579.P8488832582115707596

`lt[A011586(n)+n, n]`
-/

namespace A278579.P8488832582115707596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278579.P8488832582115707596

/-! ## A278579.P16043885602444360207

`eq[A011586(n), A260196(n)]`
-/

namespace A278579.P16043885602444360207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278579.P16043885602444360207

/-! ## A278579.P31111539077798094

`lt[A011586(n), A185012(n)]`
-/

namespace A278579.P31111539077798094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278579.P31111539077798094

/-! ## A278579.P16041822222086262582

`lt[A011586(n), char[A014062(n)]]`
-/

namespace A278579.P16041822222086262582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014062 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278579.P16041822222086262582

/-! ## A278579.P12247294853529407046

`eq[A011586(n)+1, A209997(C(2, n))]`
-/

namespace A278579.P12247294853529407046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209997 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278579.P12247294853529407046

/-!
# A278580: Numbers n such that Jacobi(n,23) = 1.

The programs for A278580, there is no canonical definition to state claims against.
-/

/-! ## A278580.P15745657705139079227

`lt[n, A011586(n)+n]`
-/

namespace A278580.P15745657705139079227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278580.P15745657705139079227

/-! ## A278580.P721577854485869891

`eq[A011586(n)*A072721(n), A072721(n)]`
-/

namespace A278580.P721577854485869891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P721577854485869891

/-! ## A278580.P15693152365004527990

`eq[A011586(n)*A210442(n), A210442(n)]`
-/

namespace A278580.P15693152365004527990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P15693152365004527990

/-! ## A278580.P14855150035595132796

`eq[A011586(n)*A211110(n), A211110(n)]`
-/

namespace A278580.P14855150035595132796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P14855150035595132796

/-! ## A278580.P17622456029080046648

`eq[A011586(n)*A284289(n), A284289(n)]`
-/

namespace A278580.P17622456029080046648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P17622456029080046648

/-! ## A278580.P7407824476322295741

`eq[A011586(n)*A322968(n), A322968(n)]`
-/

namespace A278580.P7407824476322295741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A322968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P7407824476322295741

/-! ## A278580.P10032441890449392916

`eq[A011586(n)*A366285(n), A366285(n)]`
-/

namespace A278580.P10032441890449392916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A366285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P10032441890449392916

/-! ## A278580.P6913933758409315271

`eq[A011586(n)*A308749(n+1), A308749(n+1)]`
-/

namespace A278580.P6913933758409315271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A308749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P6913933758409315271

/-! ## A278580.P5237362914611851067

`lt[A185012(n), 2*A011586(n)]`
-/

namespace A278580.P5237362914611851067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278580.P5237362914611851067

/-! ## A278580.P16287420736786560108

`eq[A011586(n)*A260196(n), A260196(n)]`
-/

namespace A278580.P16287420736786560108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P16287420736786560108

/-! ## A278580.P18011114442845850635

`eq[A011586(n)*A053989(n+1), A053989(n+1)]`
-/

namespace A278580.P18011114442845850635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P18011114442845850635

/-! ## A278580.P2685217381967285425

`eq[A011586(n)*A231820(n+1), A231820(n+1)]`
-/

namespace A278580.P2685217381967285425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A231820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P2685217381967285425

/-! ## A278580.P2567776314205912682

`eq[A011586(n)*A262079(n+1), A262079(n+1)]`
-/

namespace A278580.P2567776314205912682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A262079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P2567776314205912682

/-! ## A278580.P8211656908106326738

`eq[A011586(n)*A260897(n+1), A260897(n+1)]`
-/

namespace A278580.P8211656908106326738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A260897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278580.P8211656908106326738

/-!
# A278581: Numbers n such that the Shimura subgroup Sigma(n) of the Jacobi variety J_0(n) has order 1.

The programs for A278581, there is no canonical definition to state claims against.
-/

/-! ## A278581.P7855789356376689120

`eq[A001617(n+1), A025469(n+1)]+1`
-/

namespace A278581.P7855789356376689120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A278581.P7855789356376689120

/-! ## A278581.P12082554515901950355

`lt[A001617(n+1), A205007(n+1)]+1`
-/

namespace A278581.P12082554515901950355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A278581.P12082554515901950355

/-! ## A278581.P8400559969430159807

`lt[A243071(A122521(n+1)), A363942(n+1)]`
-/

namespace A278581.P8400559969430159807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A122521 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278581.P8400559969430159807

/-! ## A278581.P490106579480585226

`lt[A276183(2*(n+1)), A214709(A224697(2*(n+2))+1)]+1`
-/

namespace A278581.P490106579480585226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (A224697 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A278581.P490106579480585226

/-!
# A278583: Numbers k such that k+1 is a prime, k+2 is twice a prime, and k+3 is three times a prime.

The programs for A278583, there is no canonical definition to state claims against.
-/

/-! ## A278583.P5327875093672155902

`A036570(n+1)-1`
-/

namespace A278583.P5327875093672155902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036570 (n + 1) - 1

end

end A278583.P5327875093672155902

/-! ## A278583.P3374105528351205088

`xor(A036570(n+1), A038712((n+1)/2^val(n+1, 2)))`
-/

namespace A278583.P3374105528351205088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036570 (n + 1)) (A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A278583.P3374105528351205088

/-! ## A278583.P11475950743638871928

`xor(A028234(A006530(n+1)), A036570(n+1))`
-/

namespace A278583.P11475950743638871928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028234 (A006530 (n + 1)).toNat) (A036570 (n + 1))

end

end A278583.P11475950743638871928

/-! ## A278583.P5918011880375593027

`xor(A033676(A082061(n+1)), A036570(n+1))`
-/

namespace A278583.P5918011880375593027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033676 (A082061 (n + 1)).toNat) (A036570 (n + 1))

end

end A278583.P5918011880375593027

/-! ## A278583.P430800104890898292

`xor(A036570(n+1), A038712(A339876(n+1)))`
-/

namespace A278583.P430800104890898292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036570 (n + 1)) (A038712 (A339876 (n + 1)).toNat)

end

end A278583.P430800104890898292

/-! ## A278583.P13997769387728293675

`xor(A001221(A034444(n+4)), A036570(n+1))`
-/

namespace A278583.P13997769387728293675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A034444 (n + 4)).toNat) (A036570 (n + 1))

end

end A278583.P13997769387728293675

/-! ## A278583.P5772034517836682123

`xor(A000035(2*n+1), A036570(n+1))`
-/

namespace A278583.P5772034517836682123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A036570 (n + 1))

end

end A278583.P5772034517836682123

/-! ## A278583.P13067224480099407894

`xor(A036570(n+1), A036577(A036554(n+1)))`
-/

namespace A278583.P13067224480099407894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036570 (n + 1)) (A036577 (A036554 (n + 1)).toNat)

end

end A278583.P13067224480099407894

/-! ## A278583.P2337031135479444959

`xor(A036570(n+1), A357299(A357299(3*n+5)))`
-/

namespace A278583.P2337031135479444959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036570 (n + 1)) (A357299 (A357299 (3 * n + 5)).toNat)

end

end A278583.P2337031135479444959

/-! ## A278583.P2934148486841558017

`xor(A036570(n+1), A036581(A036554(2*n+5)))`
-/

namespace A278583.P2934148486841558017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036570 (n + 1)) (A036581 (A036554 (2 * n + 5)).toNat)

end

end A278583.P2934148486841558017

/-! ## A278583.P12323908701357538313

`∩[A005383(n+1), A350675(n+1)]-1`
-/

namespace A278583.P12323908701357538313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P12323908701357538313

/-! ## A278583.P3711840881190844000

`∩[A171262(n+1), A350675(n+1)]-1`
-/

namespace A278583.P3711840881190844000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P3711840881190844000

/-! ## A278583.P5306810219922826284

`∩[A217466(n+1), A350675(n+1)]-1`
-/

namespace A278583.P5306810219922826284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P5306810219922826284

/-! ## A278583.P15091465548726117482

`∩[A216822(n+1), A350675(n+1)]-1`
-/

namespace A278583.P15091465548726117482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P15091465548726117482

/-! ## A278583.P14230595675726154824

`∩[A057920(n+1), A350675(n+1)]-1`
-/

namespace A278583.P14230595675726154824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P14230595675726154824

/-! ## A278583.P6542099191336823281

`∩[A348659(n+1), A350675(n+1)]-1`
-/

namespace A278583.P6542099191336823281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P6542099191336823281

/-! ## A278583.P14398570551491065220

`∩[A005383(n+1), A091180(n+1)]-1`
-/

namespace A278583.P14398570551491065220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P14398570551491065220

/-! ## A278583.P14865585726966314827

`∩[A048968(n+1), A091180(n+1)]-1`
-/

namespace A278583.P14865585726966314827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P14865585726966314827

/-! ## A278583.P11960968213251419481

`∩[A057920(n+1), A091180(n+1)]-1`
-/

namespace A278583.P11960968213251419481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P11960968213251419481

/-! ## A278583.P5926439521545068084

`∩[A064519(n+1), A091180(n+1)]-1`
-/

namespace A278583.P5926439521545068084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278583.P5926439521545068084

/-!
# A278584: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A278584, there is no canonical definition to state claims against.
-/

/-! ## A278584.P16757942517122350008

`A007088(A279151(n))`
-/

namespace A278584.P16757942517122350008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279151 n).toNat

end

end A278584.P16757942517122350008

/-! ## A278584.P9154076246559369074

`A185544(2*A279151(n))`
-/

namespace A278584.P9154076246559369074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279151 n).toNat

end

end A278584.P9154076246559369074

/-!
# A278585: Numbers k such that k+1 is a prime, k+2 is twice a prime, k+3 is three times a prime, and k+4 is four times a prime.

The programs for A278585, there is no canonical definition to state claims against.
-/

/-! ## A278585.P10033936040591568780

`A163573(n+1)-1`
-/

namespace A278585.P10033936040591568780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163573 (n + 1) - 1

end

end A278585.P10033936040591568780

/-! ## A278585.P18243985225897610162

`and(-2, A163573(A000027(n+1)))`
-/

namespace A278585.P18243985225897610162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A163573 (A000027 (n + 1)).toNat)

end

end A278585.P18243985225897610162

/-! ## A278585.P12121229367638766119

`xor(abs(A033999(n)), A163573(n+1))`
-/

namespace A278585.P12121229367638766119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A033999 n| (A163573 (n + 1))

end

end A278585.P12121229367638766119

/-! ## A278585.P16773105338221582525

`xor(abs(A009001(2*n)), A163573(n+1))`
-/

namespace A278585.P16773105338221582525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A009001 (2 * n)| (A163573 (n + 1))

end

end A278585.P16773105338221582525

/-! ## A278585.P2797281477787725439

`xor(1, A163573(n+1)%A066598(n+1))`
-/

namespace A278585.P2797281477787725439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A163573 (n + 1)) (A066598 (n + 1)))

end

end A278585.P2797281477787725439

/-! ## A278585.P12436690397914772507

`xor(A066597(n+1)%2, A163573(n+1))`
-/

namespace A278585.P12436690397914772507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A066597 (n + 1)) 2) (A163573 (n + 1))

end

end A278585.P12436690397914772507

/-! ## A278585.P2817663207380750061

`xor(A163573(n+1), A304042(A024155(n+1)))`
-/

namespace A278585.P2817663207380750061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163573 (n + 1)) (A304042 (A024155 (n + 1)).toNat)

end

end A278585.P2817663207380750061

/-! ## A278585.P4292572281581375718

`xor(A163573(n+1), A304042(A196058(n+1)))`
-/

namespace A278585.P4292572281581375718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163573 (n + 1)) (A304042 (A196058 (n + 1)).toNat)

end

end A278585.P4292572281581375718

/-! ## A278585.P4143926584620744221

`xor(A001222(A065091(n+1)), A163573(n+1))`
-/

namespace A278585.P4143926584620744221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A065091 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P4143926584620744221

/-! ## A278585.P11174961427634396534

`xor(A008683(A179875(n+1)), A163573(n+1))`
-/

namespace A278585.P11174961427634396534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A179875 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P11174961427634396534

/-! ## A278585.P16085606074989655231

`xor(A001511(2*n+1), A163573(n+1))`
-/

namespace A278585.P16085606074989655231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001511 (2 * n + 1)) (A163573 (n + 1))

end

end A278585.P16085606074989655231

/-! ## A278585.P5635863711323810248

`xor(A001222(A040124(n+1)), A163573(n+1))`
-/

namespace A278585.P5635863711323810248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A040124 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P5635863711323810248

/-! ## A278585.P1753603861114423345

`A317673(p?[2*n+1])+A163573(n+1)`
-/

namespace A278585.P1753603861114423345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A163573 (n + 1)

end

end A278585.P1753603861114423345

/-! ## A278585.P10020423454867557050

`xor(A001222(A048161(n+1)), A163573(n+1))`
-/

namespace A278585.P10020423454867557050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A048161 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P10020423454867557050

/-! ## A278585.P7929411820163051743

`xor(A001222(A005383(n+1)), A163573(n+1))`
-/

namespace A278585.P7929411820163051743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A005383 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P7929411820163051743

/-! ## A278585.P3251148130001511404

`xor(A014963(A179642(n+1)), A163573(n+1))`
-/

namespace A278585.P3251148130001511404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A179642 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P3251148130001511404

/-! ## A278585.P6370088852719879600

`∩[A036570(n+1), A350686(n+1)]-1`
-/

namespace A278585.P6370088852719879600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350686 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278585.P6370088852719879600

/-! ## A278585.P16403815985481940607

`xor(A014963(A179644(n+1)), A163573(n+1))`
-/

namespace A278585.P16403815985481940607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A179644 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P16403815985481940607

/-! ## A278585.P14427499653350833551

`xor(A014963(A179643(n+1)), A163573(n+1))`
-/

namespace A278585.P14427499653350833551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A179643 (n + 1)).toNat) (A163573 (n + 1))

end

end A278585.P14427499653350833551

/-!
# A278586: Start with X = n^2. Repeatedly replace X with X - ceiling(X/n); a(n) is the number of steps to reach 0.

The programs for A278586, there is no canonical definition to state claims against.
-/

/-! ## A278586.P12476783755205259350

`floor(∑[log(A324845(3*(n+1)))])`
-/

namespace A278586.P12476783755205259350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A324845 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A278586.P12476783755205259350

/-! ## A278586.P2441275399126625223

`floor(∑[A029837(A223137(n+1))]/3)`
-/

namespace A278586.P2441275399126625223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A223137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A278586.P2441275399126625223

/-! ## A278586.P2321973479154408750

`A002264(∑[A029837(A223137(n+1))])`
-/

namespace A278586.P2321973479154408750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A223137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278586.P2321973479154408750

/-! ## A278586.P10808937794102926057

`floor(log2(A330540(n+2)))`
-/

namespace A278586.P10808937794102926057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A330540 (n + 2)).toNat

end

end A278586.P10808937794102926057

/-! ## A278586.P7208599267047067051

`A277903(A089351(n+5))`
-/

namespace A278586.P7208599267047067051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A089351 (n + 5)).toNat

end

end A278586.P7208599267047067051

/-!
# A278587: Value of the Catch-Up game [1,...n] for first player (1 = win, -1 = loss, 0 = draw).

The programs for A278587, there is no canonical definition to state claims against.
-/

/-! ## A278587.P951472422773828923

`(11-∑[n+1]%56)%2`
-/

namespace A278587.P951472422773828923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 56 : ℕ) : ℤ)) 2

end

end A278587.P951472422773828923

/-! ## A278587.P4142086697962002078

`A008683(or(2, 9*(n+14)))`
-/

namespace A278587.P4142086697962002078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lor 2 (9 * (n + 14)))

end

end A278587.P4142086697962002078

/-! ## A278587.P11582050327645107846

`(4-A005132(n)+n)%2`
-/

namespace A278587.P11582050327645107846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 - A005132 n + (n : ℤ)) 2

end

end A278587.P11582050327645107846

/-! ## A278587.P5135574906702280060

`(6-A118201(n)+n)%2`
-/

namespace A278587.P5135574906702280060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 - A118201 n + (n : ℤ)) 2

end

end A278587.P5135574906702280060

/-! ## A278587.P4381744458347104634

`(or(6, n)-A350578(n))%2`
-/

namespace A278587.P4381744458347104634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lor 6 n : ℤ) - A350578 n) 2

end

end A278587.P4381744458347104634

/-!
# A278589: Number of equivalence classes under the fixed-point-free braid relation B_{FPF}(w_0).

The programs for A278589, there is no canonical definition to state claims against.
-/

/-! ## A278589.P10165803835171310301

`2^n*A278590(n)`
-/

namespace A278589.P10165803835171310301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A278590 n

end

end A278589.P10165803835171310301

/-!
# A278590: a(n) = A278589(n)/2^n.

The programs for A278590, there is no canonical definition to state claims against.
-/

/-! ## A278590.P2603626045735384972

`A278589(n)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278590.P2603626045735384972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278589 n : ℚ) / (2 ^ n : ℚ)

end

end A278590.P2603626045735384972

/-!
# A278591: Numbers k such that (11*10^k - 107) / 3 is prime.

The programs for A278591, there is no canonical definition to state claims against.
-/

/-! ## A278591.P10105897407642826790

`A003002(A108318(n+1))+n`
-/

namespace A278591.P10105897407642826790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A108318 (n + 1)).toNat + (n : ℤ)

end

end A278591.P10105897407642826790

/-! ## A278591.P7906422870345334445

`A064099(n²²)+A000016(n)`
-/

namespace A278591.P7906422870345334445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 ((n ^ 2) ^ 2) + A000016 n

end

end A278591.P7906422870345334445

/-!
# A278592: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A278592, there is no canonical definition to state claims against.
-/

/-! ## A278592.P4268603306358256922

`A007088(A278594(n))`
-/

namespace A278592.P4268603306358256922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278594 n).toNat

end

end A278592.P4268603306358256922

/-! ## A278592.P4337814865019195952

`A305989(A278595(n))`
-/

namespace A278592.P4337814865019195952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A278595 n).toNat

end

end A278592.P4337814865019195952

/-! ## A278592.P11867134972119217197

`A185544(2*A278594(n))`
-/

namespace A278592.P11867134972119217197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278594 n).toNat

end

end A278592.P11867134972119217197

/-! ## A278592.P5413204902135342745

`A185544(lcm(2, A278594(n)))`
-/

namespace A278592.P5413204902135342745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A278594 n))

end

end A278592.P5413204902135342745

/-!
# A278593: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A278593, there is no canonical definition to state claims against.
-/

/-! ## A278593.P14399703292490701015

`A007088(A278595(n))`
-/

namespace A278593.P14399703292490701015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278595 n).toNat

end

end A278593.P14399703292490701015

/-! ## A278593.P1599068691204058495

`A185544(2*A278595(n))`
-/

namespace A278593.P1599068691204058495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278595 n).toNat

end

end A278593.P1599068691204058495

/-!
# A278594: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A278594, there is no canonical definition to state claims against.
-/

/-! ## A278594.P10457809292552892353

`A030101(A278595(n))`
-/

namespace A278594.P10457809292552892353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A278595 n).toNat

end

end A278594.P10457809292552892353

/-! ## A278594.P8116839644119706297

`or(A277866(n), A343757(A001403(n+1)))`
-/

namespace A278594.P8116839644119706297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277866 n) (A343757 (A001403 (n + 1)).toNat)

end

end A278594.P8116839644119706297

/-!
# A278595: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A278595, there is no canonical definition to state claims against.
-/

/-! ## A278595.P8853303863100453711

`A030109(A278594(n)+A000079(n+1))`
-/

namespace A278595.P8853303863100453711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A278594 n + A000079 (n + 1)).toNat

end

end A278595.P8853303863100453711

/-!
# A278596: a(n) = Sum_{k=0..n} binomial(k+n+3,k)*binomial(2*n+1,n-k).

The programs for A278596, there is no canonical definition to state claims against.
-/

/-! ## A278596.P5738316954777720574

`A201780(Δ[A037237(n)])`
-/

namespace A278596.P5738316954777720574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (f1 (n + 1) - f1 n).toNat

end

end A278596.P5738316954777720574

/-! ## A278596.P2319876772065025399

`A201780(A058331(n+2))`
-/

namespace A278596.P2319876772065025399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A058331 (n + 2)).toNat

end

end A278596.P2319876772065025399

/-! ## A278596.P212161517882110295

`A201780(A268581(n)+4)`
-/

namespace A278596.P212161517882110295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A268581 n + 4).toNat

end

end A278596.P212161517882110295

/-! ## A278596.P10183760808730862096

`A201780(A005408((n+2)²))`
-/

namespace A278596.P10183760808730862096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A005408 ((n + 2) ^ 2)).toNat

end

end A278596.P10183760808730862096

/-! ## A278596.P1606846761571095070

`A201780(A001105(n+2)+1)`
-/

namespace A278596.P1606846761571095070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A001105 (n + 2) + 1).toNat

end

end A278596.P1606846761571095070

/-! ## A278596.P6960553500579580060

`A201780(A056220(n+2)+2)`
-/

namespace A278596.P6960553500579580060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A056220 (n + 2) + 2).toNat

end

end A278596.P6960553500579580060

/-! ## A278596.P1102330431231053459

`A201780(A037237(n+1)-A037237(n))`
-/

namespace A278596.P1102330431231053459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A037237 (n + 1) - A037237 n).toNat

end

end A278596.P1102330431231053459

/-!
# A278597: One half of A278481.

The programs for A278597, the canonical program `A278597.P5436521184196426050` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278597 has offset 1).

The definition of A278597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278597.P8856921404985229530

`A278481(n+1)/2`
-/

namespace A278597.P8856921404985229530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278481 (n + 1) : ℚ) / 2

end

end A278597.P8856921404985229530

namespace A278597

/-- `A278481(n+1)/2` -/
def P8856921404985229530.Spec : Prop :=
  ∀ n, P8856921404985229530.a n = (A278597 (n + 1) : ℚ)

end A278597

/-! ## A278597.P391416646190768081

`floor(log2(A278545(n+1)))`
-/

namespace A278597.P391416646190768081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A278545 (n + 1)).toNat

end

end A278597.P391416646190768081

namespace A278597

/-- `floor(log2(A278545(n+1)))` -/
def P391416646190768081.Spec : Prop :=
  ∀ n, (P391416646190768081.a n : ℤ) = A278597 (n + 1)

end A278597

/-! ## A278597.P13475655132419243397

`∑{e}[A073060(n), #]+1`
-/

namespace A278597.P13475655132419243397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A278597.P13475655132419243397

namespace A278597

/-- `∑{e}[A073060(n), #]+1` -/
def P13475655132419243397.Spec : Prop :=
  ∀ n, (P13475655132419243397.a n : ℤ) = A278597 (n + 1)

end A278597

/-! ## A278597.P17197141741811280117

`a(log2(A154325(n)))+1` with `a(0)=1`
-/

namespace A278597.P17197141741811280117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A154325 n : ℝ))).toNat + 1

end

end A278597.P17197141741811280117

namespace A278597

/-- `a(log2(A154325(n)))+1` -/
def P17197141741811280117.Spec : Prop :=
  ∀ n, (P17197141741811280117.a n : ℤ) = A278597 (n + 1)

end A278597

/-! ## A278597.P17008580417278798400

`floor((2-acot(A029618(n)))²)`
-/

namespace A278597.P17008580417278798400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - SequenceMachineLib.acot (A029618 n : ℝ)) ^ 2⌋

end

end A278597.P17008580417278798400

namespace A278597

/-- `floor((2-acot(A029618(n)))²)` -/
def P17008580417278798400.Spec : Prop :=
  ∀ n, P17008580417278798400.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P15764845437234949905

`a(1-A103451(n))+1` with `a(0)=1`
-/

namespace A278597.P15764845437234949905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (1 - A103451 n).toNat + 1

end

end A278597.P15764845437234949905

namespace A278597

/-- `a(1-A103451(n))+1` -/
def P15764845437234949905.Spec : Prop :=
  ∀ n, (P15764845437234949905.a n : ℤ) = A278597 (n + 1)

end A278597

/-! ## A278597.P14401518671891740730

`round(sqrt(A278317(n+1)))+1`
-/

namespace A278597.P14401518671891740730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A278317 (n + 1) : ℝ)) + 1

end

end A278597.P14401518671891740730

namespace A278597

/-- `round(sqrt(A278317(n+1)))+1` -/
def P14401518671891740730.Spec : Prop :=
  ∀ n, P14401518671891740730.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P5436521184196426050

`round((a(A193592(n)-1)+3)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278597

/-- `round((a(A193592(n)-1)+3)/2)` -/
def P5436521184196426050.Spec : Prop :=
  ∀ n, P5436521184196426050.a n = A278597 (n + 1)

theorem P5436521184196426050.correct : P5436521184196426050.Spec := by
  intro n
  simp only [A278597, Nat.add_sub_cancel]

end A278597

/-! ## A278597.P8619852065912331575

`A158799(A049687(n))`
-/

namespace A278597.P8619852065912331575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (A049687 n).toNat

end

end A278597.P8619852065912331575

namespace A278597

/-- `A158799(A049687(n))` -/
def P8619852065912331575.Spec : Prop :=
  ∀ n, P8619852065912331575.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P12980880838229715135

`A158799(A049695(n))`
-/

namespace A278597.P12980880838229715135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (A049695 n).toNat

end

end A278597.P12980880838229715135

namespace A278597

/-- `A158799(A049695(n))` -/
def P12980880838229715135.Spec : Prop :=
  ∀ n, P12980880838229715135.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P11904841131989009554

`A158799(A157458(n))`
-/

namespace A278597.P11904841131989009554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (A157458 n).toNat

end

end A278597.P11904841131989009554

namespace A278597

/-- `A158799(A157458(n))` -/
def P11904841131989009554.Spec : Prop :=
  ∀ n, P11904841131989009554.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P13728264241075221840

`A211664(A115284(n))`
-/

namespace A278597.P13728264241075221840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211664 (A115284 n).toNat

end

end A278597.P13728264241075221840

namespace A278597

/-- `A211664(A115284(n))` -/
def P13728264241075221840.Spec : Prop :=
  ∀ n, P13728264241075221840.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P18267696583707045281

`A211663(A115292(n))`
-/

namespace A278597.P18267696583707045281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211663 (A115292 n).toNat

end

end A278597.P18267696583707045281

namespace A278597

/-- `A211663(A115292(n))` -/
def P18267696583707045281.Spec : Prop :=
  ∀ n, P18267696583707045281.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P13089549755185671019

`A154325(n)+A057427(n)`
-/

namespace A278597.P13089549755185671019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n + A057427 n

end

end A278597.P13089549755185671019

namespace A278597

/-- `A154325(n)+A057427(n)` -/
def P13089549755185671019.Spec : Prop :=
  ∀ n, P13089549755185671019.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P445089852293851923

`A238303(n)+A023532(n)`
-/

namespace A278597.P445089852293851923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n + A023532 n

end

end A278597.P445089852293851923

namespace A278597

/-- `A238303(n)+A023532(n)` -/
def P445089852293851923.Spec : Prop :=
  ∀ n, P445089852293851923.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P3937589823394131948

`A154325(n)-A057428(n)`
-/

namespace A278597.P3937589823394131948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n - A057428 n

end

end A278597.P3937589823394131948

namespace A278597

/-- `A154325(n)-A057428(n)` -/
def P3937589823394131948.Spec : Prop :=
  ∀ n, P3937589823394131948.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P4217970024601596828

`A003991(a(A004247(n)))+1` with `a(0)=1`
-/

namespace A278597.P4217970024601596828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003991 (a (A004247 n).toNat).toNat + 1

end

end A278597.P4217970024601596828

namespace A278597

/-- `A003991(a(A004247(n)))+1` -/
def P4217970024601596828.Spec : Prop :=
  ∀ n, P4217970024601596828.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P6895994723353151994

`A000040(a(1-A103451(n)))` with `a(0)=1`
-/

namespace A278597.P6895994723353151994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (1 - A103451 n).toNat).toNat

end

end A278597.P6895994723353151994

namespace A278597

/-- `A000040(a(1-A103451(n)))` -/
def P6895994723353151994.Spec : Prop :=
  ∀ n, P6895994723353151994.a n = A278597 (n + 1)

end A278597

/-! ## A278597.P2031449639668296269

`A003991(2*a(A004247(n)))` with `a(0)=1`
-/

namespace A278597.P2031449639668296269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003991 (2 * a (A004247 n).toNat).toNat

end

end A278597.P2031449639668296269

namespace A278597

/-- `A003991(2*a(A004247(n)))` -/
def P2031449639668296269.Spec : Prop :=
  ∀ n, P2031449639668296269.a n = A278597 (n + 1)

end A278597

/-!
# A278598: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A278598, there is no canonical definition to state claims against.
-/

/-! ## A278598.P3113746817716857600

`A007088(A278600(n))`
-/

namespace A278598.P3113746817716857600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278600 n).toNat

end

end A278598.P3113746817716857600

/-! ## A278598.P1474515747690713308

`A281035(n)-A185284(n²+1)`
-/

namespace A278598.P1474515747690713308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281035 n - A185284 (n ^ 2 + 1)

end

end A278598.P1474515747690713308

/-! ## A278598.P10669488429071392159

`abs(A185284(4*n+10)-A281035(n))`
-/

namespace A278598.P10669488429071392159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185284 (4 * n + 10) - A281035 n|

end

end A278598.P10669488429071392159

/-!
# A278599: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A278599, there is no canonical definition to state claims against.
-/

/-! ## A278599.P17613096871016904790

`A007088(A278601(n))`
-/

namespace A278599.P17613096871016904790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278601 n).toNat

end

end A278599.P17613096871016904790

/-! ## A278599.P1227604970212176605

`A305989(A278600(n)/A184167(n+2))`
-/

namespace A278599.P1227604970212176605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278600 n : ℚ) / (A184167 (n + 2) : ℚ))).toNat

end

end A278599.P1227604970212176605

/-! ## A278599.P8151462328697784257

`A305989(A278600(n))`
-/

namespace A278599.P8151462328697784257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A278600 n).toNat

end

end A278599.P8151462328697784257

/-! ## A278599.P8611224291397360250

`A185544(2*A278601(n))`
-/

namespace A278599.P8611224291397360250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278601 n).toNat

end

end A278599.P8611224291397360250

