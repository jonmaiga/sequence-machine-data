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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A015400: Inverse of 1391st cyclotomic polynomial.

The programs for A015400, there is no canonical definition to state claims against.
-/

/-! ## A015400.P16902953395060486379

`A015660(A228357(n+1)%A004277(n))`
-/

namespace A015400.P16902953395060486379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015660 (Int.tmod (A228357 (n + 1)) (A004277 n)).toNat

end

end A015400.P16902953395060486379

/-! ## A015400.P7028587946478025822

`C(2, A308977(A337050(n+1)))`
-/

namespace A015400.P7028587946478025822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308977 (A337050 (n + 1)).toNat).toNat

end

end A015400.P7028587946478025822

/-! ## A015400.P17130059669613449022

`A000007(∑[∑[A235343(n+1)]])`
-/

namespace A015400.P17130059669613449022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015400.P17130059669613449022

/-! ## A015400.P13622601899294224981

`A000007(∑[∑[A141097(n+4)]])`
-/

namespace A015400.P13622601899294224981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015400.P13622601899294224981

/-! ## A015400.P4134683063484920256

`C(A221915(A238353(n)), A221912(n))`
-/

namespace A015400.P4134683063484920256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A221915 (A238353 n).toNat).toNat (A221912 n).toNat

end

end A015400.P4134683063484920256

/-! ## A015400.P1776874028296295062

`C(A325133(A238279(n)), A345166(n))`
-/

namespace A015400.P1776874028296295062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325133 (A238279 n).toNat).toNat (A345166 n).toNat

end

end A015400.P1776874028296295062

/-! ## A015400.P3026559388026050422

`C(A051064(n+1), A326459(A062249(n+1)))`
-/

namespace A015400.P3026559388026050422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051064 (n + 1)).toNat (A326459 (A062249 (n + 1)).toNat).toNat

end

end A015400.P3026559388026050422

/-! ## A015400.P9287268714707463435

`A001615(A094999(n))%2`
-/

namespace A015400.P9287268714707463435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (A094999 n).toNat) 2

end

end A015400.P9287268714707463435

/-! ## A015400.P3865729488837759295

`A124768(C(A124769(n), A326528(n)))`
-/

namespace A015400.P3865729488837759295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Nat.choose (A124769 n).toNat (A326528 n).toNat)

end

end A015400.P3865729488837759295

/-! ## A015400.P16640011095138366946

`A124769(C(A124769(n), A326528(n)))`
-/

namespace A015400.P16640011095138366946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Nat.choose (A124769 n).toNat (A326528 n).toNat)

end

end A015400.P16640011095138366946

/-! ## A015400.P5734407772442082523

`C(A092362(A320332(n)), A345166(n))`
-/

namespace A015400.P5734407772442082523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092362 (A320332 n).toNat).toNat (A345166 n).toNat

end

end A015400.P5734407772442082523

/-! ## A015400.P129052022921577677

`C(A156352(n+1), A026815(A160051(n)))`
-/

namespace A015400.P129052022921577677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A156352 (n + 1)).toNat (A026815 (A160051 n).toNat).toNat

end

end A015400.P129052022921577677

/-! ## A015400.P6537768846362728508

`C(A124766(n), A349187(A029837(n+4)))`
-/

namespace A015400.P6537768846362728508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124766 n).toNat (A349187 (A029837 (n + 4)).toNat).toNat

end

end A015400.P6537768846362728508

/-!
# A015402: 

The programs for A015402, there is no canonical definition to state claims against.
-/

/-! ## A015402.P6452746073320555202

`A015129(eq[10, A002262(n)])`
-/

namespace A015402.P6452746073320555202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015402.P6452746073320555202

/-! ## A015402.P9849895525680367658

`A015129(eq[11, A002260(n+1)])`
-/

namespace A015402.P9849895525680367658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015402.P9849895525680367658

/-!
# A015403: Inverse of 1394th cyclotomic polynomial.

The programs for A015403, there is no canonical definition to state claims against.
-/

/-! ## A015403.P14679101965782455586

`A014706(n)*A033999(n)`
-/

namespace A015403.P14679101965782455586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014706 n * A033999 n

end

end A015403.P14679101965782455586

/-! ## A015403.P368341347866655271

`A015643(A328617(n+2))`
-/

namespace A015403.P368341347866655271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (A328617 (n + 2)).toNat

end

end A015403.P368341347866655271

/-! ## A015403.P1898876784613857194

`A015471(n)%A282535(n+4)`
-/

namespace A015403.P1898876784613857194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015471 n) (A282535 (n + 4))

end

end A015403.P1898876784613857194

/-! ## A015403.P12812019712515884991

`A015607(n)%A282535(n+4)`
-/

namespace A015403.P12812019712515884991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015607 n) (A282535 (n + 4))

end

end A015403.P12812019712515884991

/-! ## A015403.P11854895479288714135

`A015811(n)%A282535(n+4)`
-/

namespace A015403.P11854895479288714135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015811 n) (A282535 (n + 4))

end

end A015403.P11854895479288714135

/-!
# A015404: Inverse of 1395th cyclotomic polynomial.

The programs for A015404, there is no canonical definition to state claims against.
-/

/-! ## A015404.P9481243716017803512

`A015854(n)^A239931(n+1)`
-/

namespace A015404.P9481243716017803512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015854 n : ℚ) ^ (A239931 (n + 1) : ℤ)

end

end A015404.P9481243716017803512

/-! ## A015404.P3813172308811107675

`A016124(n)+C(A122285(n+4), 64)`
-/

namespace A015404.P3813172308811107675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n + (Nat.choose (A122285 (n + 4)).toNat 64 : ℤ)

end

end A015404.P3813172308811107675

/-! ## A015404.P11256349047154218779

`A016124(n)*A340102(A122285(n+4))`
-/

namespace A015404.P11256349047154218779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A340102 (A122285 (n + 4)).toNat

end

end A015404.P11256349047154218779

/-! ## A015404.P9961008635122794481

`A016124(n)^A194746(A122285(n+4)+1)`
-/

namespace A015404.P9961008635122794481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A194746 (A122285 (n + 4) + 1).toNat : ℤ)

end

end A015404.P9961008635122794481

/-! ## A015404.P1875539749822721481

`A016124(n)^A084631(A336120(n+4))`
-/

namespace A015404.P1875539749822721481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A084631 (A336120 (n + 4)).toNat : ℤ)

end

end A015404.P1875539749822721481

/-!
# A015405: Gaussian binomial coefficient [ n,11 ] for q=-2.

The programs for A015405, there is no canonical definition to state claims against.
-/

/-! ## A015405.P3890249626274868060

`A015109(eq[12, A004736(n+1)])`
-/

namespace A015405.P3890249626274868060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015405.P3890249626274868060

/-!
# A015406: Inverse of 1397th cyclotomic polynomial.

The programs for A015406, there is no canonical definition to state claims against.
-/

/-! ## A015406.P6081189941289351006

`A015538(record[n%A221967(n+1)])`
-/

namespace A015406.P6081189941289351006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A221967 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015406.P6081189941289351006

/-! ## A015406.P3067778388180694487

`A010815(4^∑{e}[n+1, #])^∑[floor(n/11)]`
-/

namespace A015406.P3067778388180694487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 11⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A015406.P3067778388180694487

/-! ## A015406.P15167112359136061668

`A049084(4^∑{e}[n+1, #])^∑[floor(n/11)]`
-/

namespace A015406.P15167112359136061668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 11⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049084 (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A015406.P15167112359136061668

/-! ## A015406.P4154625593735456327

`A014568(∑[A347441(n+1)!])`
-/

namespace A015406.P4154625593735456327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A347441 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015406.P4154625593735456327

/-! ## A015406.P17180582161506022978

`A010054(∑[∑[A146291(n+1)]])`
-/

namespace A015406.P17180582161506022978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015406.P17180582161506022978

/-! ## A015406.P10372751324529354609

`A010054(∑[∑[A353745(n+1)]])`
-/

namespace A015406.P10372751324529354609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015406.P10372751324529354609

/-! ## A015406.P3723250401703711177

`(2-A008619(A035668(n+4)))*a(n-1)` with `a(0)=1`
-/

namespace A015406.P3723250401703711177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - A008619 (A035668 (n + 4)).toNat) * a (n - 1)

end

end A015406.P3723250401703711177

/-! ## A015406.P13309120457125060267

`C(A202853(A001316(n)), A326469(n))`
-/

namespace A015406.P13309120457125060267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A202853 (A001316 n).toNat).toNat (A326469 n).toNat

end

end A015406.P13309120457125060267

/-! ## A015406.P8755134763543184399

`C(A229764(A001316(n)), A326525(n))`
-/

namespace A015406.P8755134763543184399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A229764 (A001316 n).toNat).toNat (A326525 n).toNat

end

end A015406.P8755134763543184399

/-! ## A015406.P2423609285383343574

`C(A342980(A001316(n)), A326529(n))`
-/

namespace A015406.P2423609285383343574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A342980 (A001316 n).toNat).toNat (A326529 n).toNat

end

end A015406.P2423609285383343574

/-! ## A015406.P16190191849356143864

`C(A070914(A006519(n+1)), A326525(n))`
-/

namespace A015406.P16190191849356143864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070914 (A006519 (n + 1)).toNat).toNat (A326525 n).toNat

end

end A015406.P16190191849356143864

/-! ## A015406.P17567208315313845442

`C(A333769(A038573(n)), A033106(n+2))`
-/

namespace A015406.P17567208315313845442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333769 (A038573 n).toNat).toNat (A033106 (n + 2)).toNat

end

end A015406.P17567208315313845442

/-! ## A015406.P13145244549887451606

`C(A115381(A124752(2*(n+2))), A326465(n))`
-/

namespace A015406.P13145244549887451606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115381 (A124752 (2 * (n + 2))).toNat).toNat (A326465 n).toNat

end

end A015406.P13145244549887451606

/-! ## A015406.P6770996076414996763

`C(A389496(n+1), ∑[A230730(n+1)])`
-/

namespace A015406.P6770996076414996763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A389496 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015406.P6770996076414996763

/-! ## A015406.P1078755654799877947

`C(A064115(n+1), A064115(A354925(n+1)))`
-/

namespace A015406.P1078755654799877947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064115 (n + 1)).toNat (A064115 (A354925 (n + 1)).toNat).toNat

end

end A015406.P1078755654799877947

/-! ## A015406.P4745733638130401564

`A318983(∑[A318983(3*(n+1))]!)`
-/

namespace A015406.P4745733638130401564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318983 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318983 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015406.P4745733638130401564

/-! ## A015406.P12880616058355996162

`A010056(A033075(n+1)-A052123(n))`
-/

namespace A015406.P12880616058355996162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A033075 (n + 1) - A052123 n).toNat

end

end A015406.P12880616058355996162

/-! ## A015406.P2795049855943961687

`C(A050326(A170871(n)), A026816(n))`
-/

namespace A015406.P2795049855943961687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050326 (A170871 n).toNat).toNat (A026816 n).toNat

end

end A015406.P2795049855943961687

/-! ## A015406.P4700357901974104532

`A053392(n)!%2`
-/

namespace A015406.P4700357901974104532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053392 n).toNat % 2

end

end A015406.P4700357901974104532

/-! ## A015406.P1179857373260037435

`C(A038573(A059268(n)), A033106(n+2))`
-/

namespace A015406.P1179857373260037435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038573 (A059268 n).toNat).toNat (A033106 (n + 2)).toNat

end

end A015406.P1179857373260037435

/-!
# A015410: 

The programs for A015410, there is no canonical definition to state claims against.
-/

/-! ## A015410.P11616168022996401230

`A015116(eq[11, A002262(n)])`
-/

namespace A015410.P11616168022996401230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015410.P11616168022996401230

/-!
# A015412: Inverse of 1403rd cyclotomic polynomial.

The programs for A015412, there is no canonical definition to state claims against.
-/

/-! ## A015412.P17644840348772935844

`A015688(A001358(n+1)-A120243(n+1))`
-/

namespace A015412.P17644840348772935844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015688 (A001358 (n + 1) - A120243 (n + 1)).toNat

end

end A015412.P17644840348772935844

/-! ## A015412.P9261528702465259281

`A016068(lt[1-2*n%2, A334028(n)])`
-/

namespace A015412.P9261528702465259281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (n % 2) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015412.P9261528702465259281

/-! ## A015412.P1476203080141948998

`A015952(lt[A171173(2*n+1), A304681(n+1)])`
-/

namespace A015412.P1476203080141948998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015412.P1476203080141948998

/-! ## A015412.P16045158228200214720

`A014902(A179439(n+1)-A100922(n))`
-/

namespace A015412.P16045158228200214720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 (A179439 (n + 1) - A100922 n).toNat

end

end A015412.P16045158228200214720

/-! ## A015412.P15083191886935858998

`A014256(A130805(n+4)-1)`
-/

namespace A015412.P15083191886935858998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 (A130805 (n + 4) - 1).toNat

end

end A015412.P15083191886935858998

/-!
# A015415: Inverse of 1406th cyclotomic polynomial.

The programs for A015415, there is no canonical definition to state claims against.
-/

/-! ## A015415.P17911373388188575074

`A014712(n)*A033999(n)`
-/

namespace A015415.P17911373388188575074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014712 n * A033999 n

end

end A015415.P17911373388188575074

/-! ## A015415.P7323121661311361576

`A015567(A175427(n+1))`
-/

namespace A015415.P7323121661311361576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015567 (A175427 (n + 1)).toNat

end

end A015415.P7323121661311361576

/-!
# A015416: Inverse of 1407th cyclotomic polynomial.

The programs for A015416, there is no canonical definition to state claims against.
-/

/-! ## A015416.P14962323357751566432

`A015542(A357875(n+1)-1)`
-/

namespace A015416.P14962323357751566432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015542 (A357875 (n + 1) - 1).toNat

end

end A015416.P14962323357751566432

/-! ## A015416.P7309752780026462849

`A015642(A345921(n+1))*A015668(n)`
-/

namespace A015416.P7309752780026462849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A345921 (n + 1)).toNat * A015668 n

end

end A015416.P7309752780026462849

/-! ## A015416.P6119049282376325412

`A015642(A025157(n+1))*A015668(n)`
-/

namespace A015416.P6119049282376325412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A025157 (n + 1)).toNat * A015668 n

end

end A015416.P6119049282376325412

/-!
# A015419: Inverse of 1410th cyclotomic polynomial.

The programs for A015419, there is no canonical definition to state claims against.
-/

/-! ## A015419.P12728556822980348694

`A014714(n)*A033999(n)`
-/

namespace A015419.P12728556822980348694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014714 n * A033999 n

end

end A015419.P12728556822980348694

/-! ## A015419.P3274111737413008732

`A016019(A055572(n))`
-/

namespace A015419.P3274111737413008732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016019 (A055572 n).toNat

end

end A015419.P3274111737413008732

/-! ## A015419.P6002097578538566046

`A015239(A004881(n+1))`
-/

namespace A015419.P6002097578538566046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015239 (A004881 (n + 1)).toNat

end

end A015419.P6002097578538566046

/-! ## A015419.P5196513544090589225

`A015599(n)*A369341(n)`
-/

namespace A015419.P5196513544090589225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015599 n * A369341 n

end

end A015419.P5196513544090589225

/-! ## A015419.P14594419865246328461

`A015779(n)*A369341(n)`
-/

namespace A015419.P14594419865246328461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015779 n * A369341 n

end

end A015419.P14594419865246328461

/-!
# A015420: Inverse of 1411th cyclotomic polynomial.

The programs for A015420, there is no canonical definition to state claims against.
-/

/-! ## A015420.P9601878780372370352

`A015658(∑[A304118(n+1)])`
-/

namespace A015420.P9601878780372370352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015420.P9601878780372370352

/-! ## A015420.P66274401505810471

`C(2, ∑[A230398(n+1)])`
-/

namespace A015420.P66274401505810471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015420.P66274401505810471

/-! ## A015420.P5665939551184278279

`C(2, A326686(comp[∑[n-1]]))`
-/

namespace A015420.P5665939551184278279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326686 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A015420.P5665939551184278279

/-! ## A015420.P6320751692049816710

`A015966(A269570(n+4)+n)`
-/

namespace A015420.P6320751692049816710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (A269570 (n + 4) + (n : ℤ)).toNat

end

end A015420.P6320751692049816710

/-! ## A015420.P10266627540468309840

`A000007(floor(A118850(n+1)/60))`
-/

namespace A015420.P10266627540468309840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A118850 (n + 1) : ℚ) / 60⌋.toNat

end

end A015420.P10266627540468309840

/-! ## A015420.P15071917520150268181

`C(A000040(n+1), A118849(n+1))`
-/

namespace A015420.P15071917520150268181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A118849 (n + 1)).toNat

end

end A015420.P15071917520150268181

/-! ## A015420.P10821342554336803461

`C(A008578(n+2), A118849(n+1))`
-/

namespace A015420.P10821342554336803461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 2)).toNat (A118849 (n + 1)).toNat

end

end A015420.P10821342554336803461

/-! ## A015420.P15788710133272808020

`floor(A091575(n)/A188654(2*(n+1)))`
-/

namespace A015420.P15788710133272808020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091575 n : ℚ) / (A188654 (2 * (n + 1)) : ℚ)⌋

end

end A015420.P15788710133272808020

/-! ## A015420.P1115659443188396992

`and(char[A322561(n)], A357008(3*n+2))`
-/

namespace A015420.P1115659443188396992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322561 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A357008 (3 * n + 2))

end

end A015420.P1115659443188396992

/-! ## A015420.P9624556925687454342

`floor(1/(n+1))^A000332(A027351(2*(n+2)))`
-/

namespace A015420.P9624556925687454342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (A000332 (A027351 (2 * (n + 2))).toNat : ℤ)

end

end A015420.P9624556925687454342

/-!
# A015422: 

The programs for A015422, there is no canonical definition to state claims against.
-/

/-! ## A015422.P4993532867821110910

`A015129(eq[12, A002260(n+1)])`
-/

namespace A015422.P4993532867821110910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015422.P4993532867821110910

/-!
# A015423: Gaussian binomial coefficient [ n,12 ] for q=-2.

The programs for A015423, there is no canonical definition to state claims against.
-/

/-! ## A015423.P14867033719290668603

`∑[lcm(A000079(n), A015405(n))]`
-/

namespace A015423.P14867033719290668603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A015405 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015423.P14867033719290668603

/-!
# A015426: Inverse of 1417th cyclotomic polynomial.

The programs for A015426, the canonical program `A015426.P5504614368241605898` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015426 has offset 0).

The definition of A015426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015426.P5504614368241605898

`A015208(∑[A091018(A084888(n))])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A015426

/-- `A015208(∑[A091018(A084888(n))])` -/
def P5504614368241605898.Spec : Prop :=
  ∀ n, P5504614368241605898.a n = A015426 n

theorem P5504614368241605898.correct : P5504614368241605898.Spec := by
  intro n
  simp only [A015426]

end A015426

/-! ## A015426.P3645541548136011890

`∏[A329291(n+1)]%2`
-/

namespace A015426.P3645541548136011890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 2

end

end A015426.P3645541548136011890

namespace A015426

/-- `∏[A329291(n+1)]%2` -/
def P3645541548136011890.Spec : Prop :=
  ∀ n, P3645541548136011890.a n = A015426 n

end A015426

/-! ## A015426.P18167538001873328755

`A008683((2-A178832(n))²)`
-/

namespace A015426.P18167538001873328755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 - A178832 n) ^ 2).toNat

end

end A015426.P18167538001873328755

namespace A015426

/-- `A008683((2-A178832(n))²)` -/
def P18167538001873328755.Spec : Prop :=
  ∀ n, P18167538001873328755.a n = A015426 n

end A015426

/-! ## A015426.P4545613198181409458

`A000007(∑[A025437(n+1)]²)`
-/

namespace A015426.P4545613198181409458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015426.P4545613198181409458

namespace A015426

/-- `A000007(∑[A025437(n+1)]²)` -/
def P4545613198181409458.Spec : Prop :=
  ∀ n, P4545613198181409458.a n = A015426 n

end A015426

/-! ## A015426.P12545883003560653952

`A000007(∑[A292150(n+1)²])`
-/

namespace A015426.P12545883003560653952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292150 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015426.P12545883003560653952

namespace A015426

/-- `A000007(∑[A292150(n+1)²])` -/
def P12545883003560653952.Spec : Prop :=
  ∀ n, P12545883003560653952.a n = A015426 n

end A015426

/-! ## A015426.P2167508335562446846

`C(A097133(A320332(n)), A345166(n))`
-/

namespace A015426.P2167508335562446846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097133 (A320332 n).toNat).toNat (A345166 n).toNat

end

end A015426.P2167508335562446846

namespace A015426

/-- `C(A097133(A320332(n)), A345166(n))` -/
def P2167508335562446846.Spec : Prop :=
  ∀ n, (P2167508335562446846.a n : ℤ) = A015426 n

end A015426

/-! ## A015426.P11897849914021385755

`A000038(A063950(n+1))^A090620(n)`
-/

namespace A015426.P11897849914021385755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A063950 (n + 1)).toNat : ℚ) ^ (A090620 n : ℤ)

end

end A015426.P11897849914021385755

namespace A015426

/-- `A000038(A063950(n+1))^A090620(n)` -/
def P11897849914021385755.Spec : Prop :=
  ∀ n, P11897849914021385755.a n = (A015426 n : ℚ)

end A015426

/-! ## A015426.P447153806035209522

`A161437(n+3)^A309457(A178832(n))`
-/

namespace A015426.P447153806035209522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161437 (n + 3) : ℚ) ^ (A309457 (A178832 n).toNat : ℤ)

end

end A015426.P447153806035209522

namespace A015426

/-- `A161437(n+3)^A309457(A178832(n))` -/
def P447153806035209522.Spec : Prop :=
  ∀ n, P447153806035209522.a n = (A015426 n : ℚ)

end A015426

/-! ## A015426.P7482568964772317798

`C(A007814(A077068(n+1)), A345166(n))`
-/

namespace A015426.P7482568964772317798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (A077068 (n + 1)).toNat).toNat (A345166 n).toNat

end

end A015426.P7482568964772317798

namespace A015426

/-- `C(A007814(A077068(n+1)), A345166(n))` -/
def P7482568964772317798.Spec : Prop :=
  ∀ n, (P7482568964772317798.a n : ℤ) = A015426 n

end A015426

/-!
# A015428: Inverse of 1419th cyclotomic polynomial.

The programs for A015428, there is no canonical definition to state claims against.
-/

/-! ## A015428.P13589368414303074152

`A015560(lt[A092829(n+1), A326892(3*(n+1))])`
-/

namespace A015428.P13589368414303074152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326892 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015428.P13589368414303074152

/-! ## A015428.P17020385642709428364

`A015560(A175427(n+1))`
-/

namespace A015428.P17020385642709428364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015560 (A175427 (n + 1)).toNat

end

end A015428.P17020385642709428364

/-! ## A015428.P16262722474057388862

`A015560(lt[A230686(n+1), A132602(n+1)])`
-/

namespace A015428.P16262722474057388862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015428.P16262722474057388862

/-! ## A015428.P4883742355628096327

`A015560(n)*A335450(A051698(2*n+1))`
-/

namespace A015428.P4883742355628096327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015560 n * A335450 (A051698 (2 * n + 1)).toNat

end

end A015428.P4883742355628096327

/-! ## A015428.P3374118494372834164

`A015560(n)%A235923(n+1)`
-/

namespace A015428.P3374118494372834164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015560 n) (A235923 (n + 1))

end

end A015428.P3374118494372834164

/-!
# A015435: Inverse of 1426th cyclotomic polynomial.

The programs for A015435, there is no canonical definition to state claims against.
-/

/-! ## A015435.P14160817013703972886

`A014722(n)*A033999(n)`
-/

namespace A015435.P14160817013703972886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014722 n * A033999 n

end

end A015435.P14160817013703972886

/-! ## A015435.P16713592193799967620

`A014451(A330239(n+2))`
-/

namespace A015435.P16713592193799967620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A330239 (n + 2)).toNat

end

end A015435.P16713592193799967620

/-! ## A015435.P2232012569327699198

`A015895(A182049(n+1))`
-/

namespace A015435.P2232012569327699198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015895 (A182049 (n + 1)).toNat

end

end A015435.P2232012569327699198

/-! ## A015435.P4462167849268333747

`A015711(n)%A322348(n)`
-/

namespace A015435.P4462167849268333747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015711 n) (A322348 n)

end

end A015435.P4462167849268333747

/-! ## A015435.P10526457798286499075

`A015895(n)%A322348(n)`
-/

namespace A015435.P10526457798286499075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015895 n) (A322348 n)

end

end A015435.P10526457798286499075

/-!
# A015437: Inverse of 1428th cyclotomic polynomial.

The programs for A015437, there is no canonical definition to state claims against.
-/

/-! ## A015437.P1748120269669029543

`A016151(A006368(n))`
-/

namespace A015437.P1748120269669029543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A006368 n).toNat

end

end A015437.P1748120269669029543

/-! ## A015437.P10208815359241617034

`A016151(A007494(n))`
-/

namespace A015437.P10208815359241617034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A007494 n).toNat

end

end A015437.P10208815359241617034

/-! ## A015437.P14767804795985516043

`A016151(A026430(n))`
-/

namespace A015437.P14767804795985516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A026430 n).toNat

end

end A015437.P14767804795985516043

/-! ## A015437.P11157836431534788286

`A016151(A032766(n))`
-/

namespace A015437.P11157836431534788286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A032766 n).toNat

end

end A015437.P11157836431534788286

/-! ## A015437.P6421259171387824800

`A016151(A074306(n))`
-/

namespace A015437.P6421259171387824800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A074306 n).toNat

end

end A015437.P6421259171387824800

/-! ## A015437.P3597742881279667861

`A016151(A367806(n))`
-/

namespace A015437.P3597742881279667861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A367806 n).toNat

end

end A015437.P3597742881279667861

/-! ## A015437.P1210702100247681438

`A016151(A047229(n+1))`
-/

namespace A015437.P1210702100247681438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A047229 (n + 1)).toNat

end

end A015437.P1210702100247681438

/-! ## A015437.P14070660456087603322

`A016151(A047273(n+1))`
-/

namespace A015437.P14070660456087603322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A047273 (n + 1)).toNat

end

end A015437.P14070660456087603322

/-! ## A015437.P2725149697438888957

`A016151(A168197(n+1))`
-/

namespace A015437.P2725149697438888957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A168197 (n + 1)).toNat

end

end A015437.P2725149697438888957

/-!
# A015439: Inverse of 1430th cyclotomic polynomial.

The programs for A015439, there is no canonical definition to state claims against.
-/

/-! ## A015439.P6142682911765252740

`A014724(n)*A033999(n)`
-/

namespace A015439.P6142682911765252740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014724 n * A033999 n

end

end A015439.P6142682911765252740

/-! ## A015439.P10614497563361662781

`A014724(n)/A033999(n)^A000578(n)`
-/

namespace A015439.P10614497563361662781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014724 n : ℚ) / (A033999 n : ℚ) ^ (A000578 n : ℤ)

end

end A015439.P10614497563361662781

/-! ## A015439.P2035999589615330393

`A014724(n)/A033999(n)^A057889(n)`
-/

namespace A015439.P2035999589615330393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014724 n : ℚ) / (A033999 n : ℚ) ^ (A057889 n : ℤ)

end

end A015439.P2035999589615330393

/-! ## A015439.P9756945769495342411

`A014724(n)/A033999(n)^A270210(n)`
-/

namespace A015439.P9756945769495342411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014724 n : ℚ) / (A033999 n : ℚ) ^ (A270210 n : ℤ)

end

end A015439.P9756945769495342411

/-! ## A015439.P1385834043138683312

`A014724(n)/A033999(n)^A235461(n+1)`
-/

namespace A015439.P1385834043138683312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014724 n : ℚ) / (A033999 n : ℚ) ^ (A235461 (n + 1) : ℤ)

end

end A015439.P1385834043138683312

/-! ## A015439.P5641616123269632205

`A014724(n)/A033999(n)^A079724(n+1)`
-/

namespace A015439.P5641616123269632205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014724 n : ℚ) / (A033999 n : ℚ) ^ (A079724 (n + 1) : ℤ)

end

end A015439.P5641616123269632205

/-!
# A015440: a(n) = a(n-1) + 5*a(n-2), with a(0) = a(1) = 1.

The programs for A015440, the canonical program `A015440.P17690960594545103440` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015440 has offset 0).

The definition of A015440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+5*a(n-2)` (program `A015440.P17690960594545103440`, by `A015440.P17690960594545103440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015440.P17690960594545103440

`a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015440

/-- `a(n-1)+5*a(n-2)` -/
def P17690960594545103440.Spec : Prop :=
  ∀ n, (P17690960594545103440.a n : ℤ) = A015440 n

theorem P17690960594545103440.correct : P17690960594545103440.Spec := by
  intro n
  simp only [A015440]

end A015440

/-! ## A015440.P17314345262664787397

`ogf(1/(1-x-5x^2))`
-/

namespace A015440.P17314345262664787397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -5] n

end

end A015440.P17314345262664787397

namespace A015440

/-- `ogf(1/(1-x-5x^2))` -/
def P17314345262664787397.Spec : Prop :=
  ∀ n, P17314345262664787397.a n = A015440 n

end A015440

/-! ## A015440.P8788976077588454547

`a(n-1)+lcm(5, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015440.P8788976077588454547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 2))

end

end A015440.P8788976077588454547

namespace A015440

/-- `a(n-1)+lcm(5, a(n-2))` -/
def P8788976077588454547.Spec : Prop :=
  ∀ n, (P8788976077588454547.a n : ℤ) = A015440 n

end A015440

/-! ## A015440.P3218843683568264182

`a(n-1)-5*floor(-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A015440.P3218843683568264182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 5 * (-a (n - 2))

end

end A015440.P3218843683568264182

namespace A015440

/-- `a(n-1)-5*floor(-a(n-2))` -/
def P3218843683568264182.Spec : Prop :=
  ∀ n, P3218843683568264182.a n = A015440 n

end A015440

/-! ## A015440.P5671003665648203560

`5-(5*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015440.P5671003665648203560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 - (5 * (1 - a (n - 2)) - a (n - 1))

end

end A015440.P5671003665648203560

namespace A015440

/-- `5-(5*(1-a(n-2))-a(n-1))` -/
def P5671003665648203560.Spec : Prop :=
  ∀ n, P5671003665648203560.a n = A015440 n

end A015440

/-! ## A015440.P8516900947501596732

`a(n-1)+a(n-2)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=1`
-/

namespace A015440.P8516900947501596732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2) / ((1 : ℚ) / 2) ^ 2)

end

end A015440.P8516900947501596732

namespace A015440

/-- `a(n-1)+a(n-2)+a(n-2)/(1/2)²` -/
def P8516900947501596732.Spec : Prop :=
  ∀ n, P8516900947501596732.a n = (A015440 n : ℚ)

end A015440

/-! ## A015440.P528370480755672938

`a(n-1)+a(n-2)+a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015440.P528370480755672938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))))

end

end A015440.P528370480755672938

namespace A015440

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P528370480755672938.Spec : Prop :=
  ∀ n, (P528370480755672938.a n : ℤ) = A015440 n

theorem P528370480755672938.correct : P528370480755672938.Spec := by
  intro n
  simp only [A015440, Nat.add_sub_cancel, A015440.P528370480755672938.a, A015440.P17690960594545103440.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A015440

/-! ## A015440.P9065084190917693634

`∑[A365824(n)]`
-/

namespace A015440.P9065084190917693634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015440.P9065084190917693634

namespace A015440

/-- `∑[A365824(n)]` -/
def P9065084190917693634.Spec : Prop :=
  ∀ n, P9065084190917693634.a n = A015440 n

end A015440

/-! ## A015440.P5235790704843617912

`A133407(n)-a(n-1)` with `a(0)=1`
-/

namespace A015440.P5235790704843617912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133407 n - a (n - 1)

end

end A015440.P5235790704843617912

namespace A015440

/-- `A133407(n)-a(n-1)` -/
def P5235790704843617912.Spec : Prop :=
  ∀ n, P5235790704843617912.a n = A015440 n

end A015440

/-! ## A015440.P11874638212240459333

`A189732(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015440.P11874638212240459333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A189732 n + a (n - 2)

end

end A015440.P11874638212240459333

namespace A015440

/-- `A189732(n)+a(n-2)` -/
def P11874638212240459333.Spec : Prop :=
  ∀ n, P11874638212240459333.a n = A015440 n

end A015440

/-! ## A015440.P1443524305181592608

`A365824(n+2)/5`
-/

namespace A015440.P1443524305181592608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365824 (n + 2) : ℚ) / 5

end

end A015440.P1443524305181592608

namespace A015440

/-- `A365824(n+2)/5` -/
def P1443524305181592608.Spec : Prop :=
  ∀ n, P1443524305181592608.a n = (A015440 n : ℚ)

end A015440

/-!
# A015441: Generalized Fibonacci numbers.

The programs for A015441, the canonical program `A015441.P2265288869096009654` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015441 has offset 0).

The definition of A015441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015441.P2265288869096009654

`a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015441

/-- `a(n-1)+6*a(n-2)` -/
def P2265288869096009654.Spec : Prop :=
  ∀ n, (P2265288869096009654.a n : ℤ) = A015441 n

theorem P2265288869096009654.correct : P2265288869096009654.Spec := by
  intro n
  simp only [A015441]

end A015441

/-! ## A015441.P2522507064331520905

`(3^n-(-2)^n)/5`
-/

namespace A015441.P2522507064331520905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (-2) ^ n : ℚ) / 5

end

end A015441.P2522507064331520905

namespace A015441

/-- `(3^n-(-2)^n)/5` -/
def P2522507064331520905.Spec : Prop :=
  ∀ n, P2522507064331520905.a n = (A015441 n : ℚ)

theorem P2522507064331520905.correct : P2522507064331520905.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015441, Nat.add_sub_cancel, A015441.P2522507064331520905.a, A015441.P2265288869096009654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015441, Nat.add_sub_cancel, A015441.P2522507064331520905.a, A015441.P2265288869096009654.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015441

/-! ## A015441.P16273207770286632234

`ogf(x/(1-x-6x^2))`
-/

namespace A015441.P16273207770286632234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -6] n

end

end A015441.P16273207770286632234

namespace A015441

/-- `ogf(x/(1-x-6x^2))` -/
def P16273207770286632234.Spec : Prop :=
  ∀ n, P16273207770286632234.a n = A015441 n

end A015441

/-! ## A015441.P14904223449339769320

`a(n-1)+lcm(6, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015441.P14904223449339769320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 6 (a (n - 2))

end

end A015441.P14904223449339769320

namespace A015441

/-- `a(n-1)+lcm(6, a(n-2))` -/
def P14904223449339769320.Spec : Prop :=
  ∀ n, (P14904223449339769320.a n : ℤ) = A015441 n

end A015441

/-! ## A015441.P2855150807003297892

`7*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A015441.P2855150807003297892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A015441.P2855150807003297892

namespace A015441

/-- `7*a(n-2)-(a(n-2)-a(n-1))` -/
def P2855150807003297892.Spec : Prop :=
  ∀ n, P2855150807003297892.a n = A015441 n

end A015441

/-! ## A015441.P14661379273961230160

`abs(A091005(n+1))`
-/

namespace A015441.P14661379273961230160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 (n + 1)|

end

end A015441.P14661379273961230160

namespace A015441

/-- `abs(A091005(n+1))` -/
def P14661379273961230160.Spec : Prop :=
  ∀ n, P14661379273961230160.a n = A015441 n

end A015441

/-! ## A015441.P3172723424652649718

`∑[A102901(abs(1-n))]`
-/

namespace A015441.P3172723424652649718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015441.P3172723424652649718

namespace A015441

/-- `∑[A102901(abs(1-n))]` -/
def P3172723424652649718.Spec : Prop :=
  ∀ n, P3172723424652649718.a n = A015441 n

end A015441

/-! ## A015441.P10067289828142166918

`A102901(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A015441.P10067289828142166918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102901 (n - 1) + a (n - 1)

end

end A015441.P10067289828142166918

namespace A015441

/-- `A102901(n-1)+a(n-1)` -/
def P10067289828142166918.Spec : Prop :=
  ∀ n, P10067289828142166918.a n = A015441 n

end A015441

/-! ## A015441.P10975321387850281913

`A091002(n)+A091001(n)`
-/

namespace A015441.P10975321387850281913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + A091001 n

end

end A015441.P10975321387850281913

namespace A015441

/-- `A091002(n)+A091001(n)` -/
def P10975321387850281913.Spec : Prop :=
  ∀ n, P10975321387850281913.a n = A015441 n

end A015441

/-! ## A015441.P12757472496471394000

`A232015(n)-A122803(n)`
-/

namespace A015441.P12757472496471394000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 n - A122803 n

end

end A015441.P12757472496471394000

namespace A015441

/-- `A232015(n)-A122803(n)` -/
def P12757472496471394000.Spec : Prop :=
  ∀ n, P12757472496471394000.a n = A015441 n

end A015441

/-! ## A015441.P9233433360146258999

`A084178(n)+A098703(n)-A000045(n)`
-/

namespace A015441.P9233433360146258999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 n + (A098703 n - A000045 n)

end

end A015441.P9233433360146258999

namespace A015441

/-- `A084178(n)+A098703(n)-A000045(n)` -/
def P9233433360146258999.Spec : Prop :=
  ∀ n, P9233433360146258999.a n = A015441 n

end A015441

/-! ## A015441.P16649106995272067489

`A084179(n)+A098703(n)-A084178(n)`
-/

namespace A015441.P16649106995272067489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n + (A098703 n - A084178 n)

end

end A015441.P16649106995272067489

namespace A015441

/-- `A084179(n)+A098703(n)-A084178(n)` -/
def P16649106995272067489.Spec : Prop :=
  ∀ n, P16649106995272067489.a n = A015441 n

end A015441

/-! ## A015441.P12404761823565756662

`A091002(n)+∑[A094556(n)-A091002(n)]`
-/

namespace A015441.P12404761823565756662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n - A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015441.P12404761823565756662

namespace A015441

/-- `A091002(n)+∑[A094556(n)-A091002(n)]` -/
def P12404761823565756662.Spec : Prop :=
  ∀ n, P12404761823565756662.a n = A015441 n

end A015441

/-! ## A015441.P7064676858198606773

`3^(n-1)-2*a(n-1)` with `a(0)=0`
-/

namespace A015441.P7064676858198606773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A015441.P7064676858198606773

namespace A015441

/-- `3^(n-1)-2*a(n-1)` -/
def P7064676858198606773.Spec : Prop :=
  ∀ n, P7064676858198606773.a n = (A015441 n : ℚ)

end A015441

/-! ## A015441.P223124163422790627

`3^(n-1)-lcm(2, a(n-1))` with `a(0)=0`
-/

namespace A015441.P223124163422790627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A015441.P223124163422790627

namespace A015441

/-- `3^(n-1)-lcm(2, a(n-1))` -/
def P223124163422790627.Spec : Prop :=
  ∀ n, P223124163422790627.a n = (A015441 n : ℚ)

end A015441

/-! ## A015441.P8099482340759050318

`3^(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015441.P8099482340759050318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 1)

end

end A015441.P8099482340759050318

namespace A015441

/-- `3^(n-1)-a(n-1)-a(n-1)` -/
def P8099482340759050318.Spec : Prop :=
  ∀ n, P8099482340759050318.a n = (A015441 n : ℚ)

end A015441

/-! ## A015441.P17642374225757845882

`Δ[A091002(n)]`
-/

namespace A015441.P17642374225757845882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015441.P17642374225757845882

namespace A015441

/-- `Δ[A091002(n)]` -/
def P17642374225757845882.Spec : Prop :=
  ∀ n, P17642374225757845882.a n = A015441 n

end A015441

/-! ## A015441.P9029642756183965454

`abs(∑[A091004(n)])`
-/

namespace A015441.P9029642756183965454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A015441.P9029642756183965454

namespace A015441

/-- `abs(∑[A091004(n)])` -/
def P9029642756183965454.Spec : Prop :=
  ∀ n, P9029642756183965454.a n = A015441 n

end A015441

/-! ## A015441.P15165135848917831341

`A140429(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A015441.P15165135848917831341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A140429 n - (a (n - 1) + a (n - 1))

end

end A015441.P15165135848917831341

namespace A015441

/-- `A140429(n)-(a(n-1)+a(n-1))` -/
def P15165135848917831341.Spec : Prop :=
  ∀ n, P15165135848917831341.a n = A015441 n

end A015441

/-! ## A015441.P10129192783662951857

`A102901(n)-A232015(n)`
-/

namespace A015441.P10129192783662951857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n - A232015 n

end

end A015441.P10129192783662951857

namespace A015441

/-- `A102901(n)-A232015(n)` -/
def P10129192783662951857.Spec : Prop :=
  ∀ n, P10129192783662951857.a n = A015441 n

end A015441

/-!
# A015442: a(n) = a(n-1) + 7*a(n-2), a(0)=0, a(1)=1.

The programs for A015442, the canonical program `A015442.P17509177752158248485` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015442 has offset 0).

The definition of A015442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+7*a(n-2)` (program `A015442.P17509177752158248485`, by `A015442.P17509177752158248485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015442.P17509177752158248485

`a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015442

/-- `a(n-1)+7*a(n-2)` -/
def P17509177752158248485.Spec : Prop :=
  ∀ n, (P17509177752158248485.a n : ℤ) = A015442 n

theorem P17509177752158248485.correct : P17509177752158248485.Spec := by
  intro n
  simp only [A015442]

end A015442

/-! ## A015442.P12155391935621672779

`ogf(x/(1-x-7x^2))`
-/

namespace A015442.P12155391935621672779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -7] n

end

end A015442.P12155391935621672779

namespace A015442

/-- `ogf(x/(1-x-7x^2))` -/
def P12155391935621672779.Spec : Prop :=
  ∀ n, P12155391935621672779.a n = A015442 n

end A015442

/-! ## A015442.P12103279720508203363

`a(n-1)+lcm(7, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015442.P12103279720508203363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 7 (a (n - 2))

end

end A015442.P12103279720508203363

namespace A015442

/-- `a(n-1)+lcm(7, a(n-2))` -/
def P12103279720508203363.Spec : Prop :=
  ∀ n, (P12103279720508203363.a n : ℤ) = A015442 n

end A015442

/-! ## A015442.P13258082571222197132

`8*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A015442.P13258082571222197132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A015442.P13258082571222197132

namespace A015442

/-- `8*a(n-2)-(a(n-2)-a(n-1))` -/
def P13258082571222197132.Spec : Prop :=
  ∀ n, P13258082571222197132.a n = A015442 n

end A015442

/-! ## A015442.P2569158446994647955

`∑[A367456(abs(1-n))]`
-/

namespace A015442.P2569158446994647955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367456 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015442.P2569158446994647955

namespace A015442

/-- `∑[A367456(abs(1-n))]` -/
def P2569158446994647955.Spec : Prop :=
  ∀ n, P2569158446994647955.a n = A015442 n

end A015442

/-! ## A015442.P6159797685713202725

`A367456(n+1)/7`
-/

namespace A015442.P6159797685713202725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367456 (n + 1) : ℚ) / 7

end

end A015442.P6159797685713202725

namespace A015442

/-- `A367456(n+1)/7` -/
def P6159797685713202725.Spec : Prop :=
  ∀ n, P6159797685713202725.a n = (A015442 n : ℚ)

end A015442

/-! ## A015442.P10777764526514457432

`∑[A367456(n)]-A367456(n)`
-/

namespace A015442.P10777764526514457432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367456 n

end

end A015442.P10777764526514457432

namespace A015442

/-- `∑[A367456(n)]-A367456(n)` -/
def P10777764526514457432.Spec : Prop :=
  ∀ n, P10777764526514457432.a n = A015442 n

end A015442

/-! ## A015442.P11598516240913951813

`A060959(eq[7, A002262(n)])`
-/

namespace A015442.P11598516240913951813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015442.P11598516240913951813

namespace A015442

/-- `A060959(eq[7, A002262(n)])` -/
def P11598516240913951813.Spec : Prop :=
  ∀ n, P11598516240913951813.a n = A015442 n

end A015442

/-! ## A015442.P4851814298576507853

`A060959(eq[8, A002260(n+1)])`
-/

namespace A015442.P4851814298576507853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015442.P4851814298576507853

namespace A015442

/-- `A060959(eq[8, A002260(n+1)])` -/
def P4851814298576507853.Spec : Prop :=
  ∀ n, P4851814298576507853.a n = A015442 n

end A015442

/-!
# A015443: Generalized Fibonacci numbers: a(n) = a(n-1) + 8*a(n-2).

The programs for A015443, the canonical program `A015443.P8716889888338850913` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015443 has offset 0).

The definition of A015443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+8*a(n-2)` (program `A015443.P8716889888338850913`, by `A015443.P8716889888338850913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015443.P8716889888338850913

`a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015443

/-- `a(n-1)+8*a(n-2)` -/
def P8716889888338850913.Spec : Prop :=
  ∀ n, (P8716889888338850913.a n : ℤ) = A015443 n

theorem P8716889888338850913.correct : P8716889888338850913.Spec := by
  intro n
  simp only [A015443]

end A015443

/-! ## A015443.P9481951661403936307

`(((1+sqrt(33))/2)^(n+1)-((1-sqrt(33))/2)^(n+1))/sqrt(33)`
-/

namespace A015443.P9481951661403936307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 + Real.sqrt (33 : ℝ)) / 2) ^ (n + 1) - ((1 - Real.sqrt (33 : ℝ)) / 2) ^ (n + 1)) / Real.sqrt (33 : ℝ)

end

end A015443.P9481951661403936307

namespace A015443

/-- `(((1+sqrt(33))/2)^(n+1)-((1-sqrt(33))/2)^(n+1))/sqrt(33)` -/
def P9481951661403936307.Spec : Prop :=
  ∀ n, P9481951661403936307.a n = (A015443 n : ℝ)

theorem P9481951661403936307.correct : P9481951661403936307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015443, Nat.add_sub_cancel, A015443.P9481951661403936307.a, A015443.P8716889888338850913.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015443, Nat.add_sub_cancel, A015443.P9481951661403936307.a, A015443.P8716889888338850913.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015443

/-! ## A015443.P8186050709359846508

`ogf(1/(1-x-8x^2))`
-/

namespace A015443.P8186050709359846508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -8] n

end

end A015443.P8186050709359846508

namespace A015443

/-- `ogf(1/(1-x-8x^2))` -/
def P8186050709359846508.Spec : Prop :=
  ∀ n, P8186050709359846508.a n = A015443 n

end A015443

/-! ## A015443.P15177454035591575787

`a(n-1)+lcm(8, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015443.P15177454035591575787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 8 (a (n - 2))

end

end A015443.P15177454035591575787

namespace A015443

/-- `a(n-1)+lcm(8, a(n-2))` -/
def P15177454035591575787.Spec : Prop :=
  ∀ n, (P15177454035591575787.a n : ℤ) = A015443 n

end A015443

/-! ## A015443.P18212536424925195223

`a(n-1)+a(n-2)/(1/2)^3` with `a(0)=1, a(1)=1`
-/

namespace A015443.P18212536424925195223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A015443.P18212536424925195223

namespace A015443

/-- `a(n-1)+a(n-2)/(1/2)^3` -/
def P18212536424925195223.Spec : Prop :=
  ∀ n, P18212536424925195223.a n = (A015443 n : ℚ)

end A015443

/-! ## A015443.P14065058037492887992

`9*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015443.P14065058037492887992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  9 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A015443.P14065058037492887992

namespace A015443

/-- `9*a(n-2)-(a(n-2)-a(n-1))` -/
def P14065058037492887992.Spec : Prop :=
  ∀ n, P14065058037492887992.a n = A015443 n

end A015443

/-! ## A015443.P561716896012286353

`2*A100305(n)-1`
-/

namespace A015443.P561716896012286353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100305 n - 1

end

end A015443.P561716896012286353

namespace A015443

/-- `2*A100305(n)-1` -/
def P561716896012286353.Spec : Prop :=
  ∀ n, P561716896012286353.a n = A015443 n

end A015443

/-! ## A015443.P10558683633776818884

`4*A100302(n)-3`
-/

namespace A015443.P10558683633776818884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A100302 n - 3

end

end A015443.P10558683633776818884

namespace A015443

/-- `4*A100302(n)-3` -/
def P10558683633776818884.Spec : Prop :=
  ∀ n, P10558683633776818884.a n = A015443 n

end A015443

/-! ## A015443.P14565824744337776252

`∑[2*A100303(n)]-1`
-/

namespace A015443.P14565824744337776252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015443.P14565824744337776252

namespace A015443

/-- `∑[2*A100303(n)]-1` -/
def P14565824744337776252.Spec : Prop :=
  ∀ n, P14565824744337776252.a n = A015443 n

end A015443

/-! ## A015443.P10577606911311147556

`A133479(n)-a(n-1)` with `a(0)=1`
-/

namespace A015443.P10577606911311147556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133479 n - a (n - 1)

end

end A015443.P10577606911311147556

namespace A015443

/-- `A133479(n)-a(n-1)` -/
def P10577606911311147556.Spec : Prop :=
  ∀ n, P10577606911311147556.a n = A015443 n

end A015443

/-! ## A015443.P3387671798343127861

`Δ[A100302(n+1)/2]`
-/

namespace A015443.P3387671798343127861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100302 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015443.P3387671798343127861

namespace A015443

/-- `Δ[A100302(n+1)/2]` -/
def P3387671798343127861.Spec : Prop :=
  ∀ n, P3387671798343127861.a n = (A015443 n : ℚ)

end A015443

/-! ## A015443.P15844119272233336431

`Δ[A100305(n+1)/4]`
-/

namespace A015443.P15844119272233336431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100305 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015443.P15844119272233336431

namespace A015443

/-- `Δ[A100305(n+1)/4]` -/
def P15844119272233336431.Spec : Prop :=
  ∀ n, P15844119272233336431.a n = (A015443 n : ℚ)

end A015443

/-!
# A015444: Inverse of 1435th cyclotomic polynomial.

The programs for A015444, there is no canonical definition to state claims against.
-/

/-! ## A015444.P13570063319280516021

`A015514(n)%A282535(n+4)`
-/

namespace A015444.P13570063319280516021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015514 n) (A282535 (n + 4))

end

end A015444.P13570063319280516021

/-! ## A015444.P8177803805832861308

`A015654(n)%A282535(n+4)`
-/

namespace A015444.P8177803805832861308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015654 n) (A282535 (n + 4))

end

end A015444.P8177803805832861308

/-! ## A015444.P11820802348498559644

`A015864(n)%A282535(n+4)`
-/

namespace A015444.P11820802348498559644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015864 n) (A282535 (n + 4))

end

end A015444.P11820802348498559644

/-! ## A015444.P2379263941968138767

`A016074(n)%A282535(n+4)`
-/

namespace A015444.P2379263941968138767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016074 n) (A282535 (n + 4))

end

end A015444.P2379263941968138767

/-! ## A015444.P1426755135823710467

`A016144(n)%A282535(n+4)`
-/

namespace A015444.P1426755135823710467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016144 n) (A282535 (n + 4))

end

end A015444.P1426755135823710467

/-!
# A015445: Generalized Fibonacci numbers: a(n) = a(n-1) + 9*a(n-2).

The programs for A015445, the canonical program `A015445.P17561431580129353232` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015445 has offset 0).

The definition of A015445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+9*a(n-2)` (program `A015445.P17561431580129353232`, by `A015445.P17561431580129353232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015445.P17561431580129353232

`a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015445

/-- `a(n-1)+9*a(n-2)` -/
def P17561431580129353232.Spec : Prop :=
  ∀ n, (P17561431580129353232.a n : ℤ) = A015445 n

theorem P17561431580129353232.correct : P17561431580129353232.Spec := by
  intro n
  simp only [A015445]

end A015445

/-! ## A015445.P4944820187703209052

`ogf(1/(1-x-9x^2))`
-/

namespace A015445.P4944820187703209052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -9] n

end

end A015445.P4944820187703209052

namespace A015445

/-- `ogf(1/(1-x-9x^2))` -/
def P4944820187703209052.Spec : Prop :=
  ∀ n, P4944820187703209052.a n = A015445 n

end A015445

/-! ## A015445.P17363399782461296506

`a(n-1)+lcm(9, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015445.P17363399782461296506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 9 (a (n - 2))

end

end A015445.P17363399782461296506

namespace A015445

/-- `a(n-1)+lcm(9, a(n-2))` -/
def P17363399782461296506.Spec : Prop :=
  ∀ n, (P17363399782461296506.a n : ℤ) = A015445 n

end A015445

/-! ## A015445.P8554698337958459669

`a(n-1)-9*ceil(-a(n-2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A015445.P8554698337958459669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 9 * (-a (n - 2))

end

end A015445.P8554698337958459669

namespace A015445

/-- `a(n-1)-9*ceil(-a(n-2))` -/
def P8554698337958459669.Spec : Prop :=
  ∀ n, P8554698337958459669.a n = A015445 n

end A015445

/-! ## A015445.P2656690045088571369

`a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A015445.P2656690045088571369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A015445.P2656690045088571369

namespace A015445

/-- `a(n-1)+a(n-2)/(1/3)²` -/
def P2656690045088571369.Spec : Prop :=
  ∀ n, P2656690045088571369.a n = (A015445 n : ℚ)

end A015445

/-! ## A015445.P1896323061184071935

`2*5*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015445.P1896323061184071935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (5 * a (n - 2)) - (a (n - 2) - a (n - 1))

end

end A015445.P1896323061184071935

namespace A015445

/-- `2*5*a(n-2)-(a(n-2)-a(n-1))` -/
def P1896323061184071935.Spec : Prop :=
  ∀ n, P1896323061184071935.a n = A015445 n

end A015445

/-! ## A015445.P7702107531385794441

`A133558(n)-a(n-1)` with `a(0)=1`
-/

namespace A015445.P7702107531385794441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133558 n - a (n - 1)

end

end A015445.P7702107531385794441

namespace A015445

/-- `A133558(n)-a(n-1)` -/
def P7702107531385794441.Spec : Prop :=
  ∀ n, P7702107531385794441.a n = A015445 n

end A015445

/-! ## A015445.P15135669449241743834

`A122994(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A015445.P15135669449241743834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122994 n - (a (n - 1) + a (n - 1))

end

end A015445.P15135669449241743834

namespace A015445

/-- `A122994(n)-(a(n-1)+a(n-1))` -/
def P15135669449241743834.Spec : Prop :=
  ∀ n, P15135669449241743834.a n = A015445 n

end A015445

/-!
# A015446: Generalized Fibonacci numbers: a(n) = a(n-1) + 10*a(n-2).

The programs for A015446, the canonical program `A015446.P6563057995644976077` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015446 has offset 0).

The definition of A015446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+10*a(n-2)` (program `A015446.P6563057995644976077`, by `A015446.P6563057995644976077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015446.P6563057995644976077

`a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015446

/-- `a(n-1)+10*a(n-2)` -/
def P6563057995644976077.Spec : Prop :=
  ∀ n, (P6563057995644976077.a n : ℤ) = A015446 n

theorem P6563057995644976077.correct : P6563057995644976077.Spec := by
  intro n
  simp only [A015446]

end A015446

/-! ## A015446.P13698201787525892236

`(((1+sqrt(41))/2)^(n+1)-((1-sqrt(41))/2)^(n+1))/sqrt(41)`
-/

namespace A015446.P13698201787525892236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 + Real.sqrt (41 : ℝ)) / 2) ^ (n + 1) - ((1 - Real.sqrt (41 : ℝ)) / 2) ^ (n + 1)) / Real.sqrt (41 : ℝ)

end

end A015446.P13698201787525892236

namespace A015446

/-- `(((1+sqrt(41))/2)^(n+1)-((1-sqrt(41))/2)^(n+1))/sqrt(41)` -/
def P13698201787525892236.Spec : Prop :=
  ∀ n, P13698201787525892236.a n = (A015446 n : ℝ)

theorem P13698201787525892236.correct : P13698201787525892236.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015446, Nat.add_sub_cancel, A015446.P13698201787525892236.a, A015446.P6563057995644976077.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015446, Nat.add_sub_cancel, A015446.P13698201787525892236.a, A015446.P6563057995644976077.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015446

/-! ## A015446.P26750864778700589

`ogf(1/(1-x-10x^2))`
-/

namespace A015446.P26750864778700589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -10] n

end

end A015446.P26750864778700589

namespace A015446

/-- `ogf(1/(1-x-10x^2))` -/
def P26750864778700589.Spec : Prop :=
  ∀ n, P26750864778700589.a n = A015446 n

end A015446

/-! ## A015446.P5692823238767631677

`a(n-1)+lcm(10, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015446.P5692823238767631677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 10 (a (n - 2))

end

end A015446.P5692823238767631677

namespace A015446

/-- `a(n-1)+lcm(10, a(n-2))` -/
def P5692823238767631677.Spec : Prop :=
  ∀ n, (P5692823238767631677.a n : ℤ) = A015446 n

end A015446

/-! ## A015446.P3927702198153008804

`a(n-1)-10*ceil(-a(n-2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A015446.P3927702198153008804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A015446.P3927702198153008804

namespace A015446

/-- `a(n-1)-10*ceil(-a(n-2))` -/
def P3927702198153008804.Spec : Prop :=
  ∀ n, P3927702198153008804.a n = A015446 n

end A015446

/-! ## A015446.P16251456840054788208

`a(n-1)-5*(a(n-2)-3*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015446.P16251456840054788208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 5 * (a (n - 2) - 3 * a (n - 2))

end

end A015446.P16251456840054788208

namespace A015446

/-- `a(n-1)-5*(a(n-2)-3*a(n-2))` -/
def P16251456840054788208.Spec : Prop :=
  ∀ n, P16251456840054788208.a n = A015446 n

end A015446

/-! ## A015446.P10083162355230670398

`a(n-1)+a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A015446.P10083162355230670398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A015446.P10083162355230670398

namespace A015446

/-- `a(n-1)+a(n-2)+a(n-2)/(1/3)²` -/
def P10083162355230670398.Spec : Prop :=
  ∀ n, P10083162355230670398.a n = (A015446 n : ℚ)

end A015446

/-! ## A015446.P14542108114423674368

`A133577(n)-a(n-1)` with `a(0)=1`
-/

namespace A015446.P14542108114423674368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133577 n - a (n - 1)

end

end A015446.P14542108114423674368

namespace A015446

/-- `A133577(n)-a(n-1)` -/
def P14542108114423674368.Spec : Prop :=
  ∀ n, P14542108114423674368.a n = A015446 n

end A015446

/-!
# A015447: Generalized Fibonacci numbers: a(n) = a(n-1) + 11*a(n-2).

The programs for A015447, the canonical program `A015447.P9922878944664536584` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015447 has offset 0).

The definition of A015447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+11*a(n-2)` (program `A015447.P9922878944664536584`, by `A015447.P9922878944664536584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015447.P9922878944664536584

`a(n-1)+11*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015447

/-- `a(n-1)+11*a(n-2)` -/
def P9922878944664536584.Spec : Prop :=
  ∀ n, (P9922878944664536584.a n : ℤ) = A015447 n

theorem P9922878944664536584.correct : P9922878944664536584.Spec := by
  intro n
  simp only [A015447]

end A015447

/-! ## A015447.P13322417628072451538

`ogf(1/(1-x-11x^2))`
-/

namespace A015447.P13322417628072451538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -11] n

end

end A015447.P13322417628072451538

namespace A015447

/-- `ogf(1/(1-x-11x^2))` -/
def P13322417628072451538.Spec : Prop :=
  ∀ n, P13322417628072451538.a n = A015447 n

end A015447

/-! ## A015447.P12948006398519323090

`a(n-1)+lcm(11, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015447.P12948006398519323090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 11 (a (n - 2))

end

end A015447.P12948006398519323090

namespace A015447

/-- `a(n-1)+lcm(11, a(n-2))` -/
def P12948006398519323090.Spec : Prop :=
  ∀ n, (P12948006398519323090.a n : ℤ) = A015447 n

end A015447

/-! ## A015447.P542343123997481914

`3*4*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015447.P542343123997481914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (4 * a (n - 2)) - (a (n - 2) - a (n - 1))

end

end A015447.P542343123997481914

namespace A015447

/-- `3*4*a(n-2)-(a(n-2)-a(n-1))` -/
def P542343123997481914.Spec : Prop :=
  ∀ n, P542343123997481914.a n = A015447 n

end A015447

/-! ## A015447.P14103058204097229670

`A063092(n)-a(n-1)` with `a(0)=1`
-/

namespace A015447.P14103058204097229670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063092 n - a (n - 1)

end

end A015447.P14103058204097229670

namespace A015447

/-- `A063092(n)-a(n-1)` -/
def P14103058204097229670.Spec : Prop :=
  ∀ n, P14103058204097229670.a n = A015447 n

end A015447

/-! ## A015447.P8050009763181004309

`(((1+3*sqrt(5))/2)^(n+1)-((1-3*sqrt(5))/2)^(n+1))/(3*sqrt(5))`
-/

namespace A015447.P8050009763181004309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 + 3 * Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) - ((1 - 3 * Real.sqrt (5 : ℝ)) / 2) ^ (n + 1)) / (3 * Real.sqrt (5 : ℝ))

end

end A015447.P8050009763181004309

namespace A015447

/-- `(((1+3*sqrt(5))/2)^(n+1)-((1-3*sqrt(5))/2)^(n+1))/(3*sqrt(5))` -/
def P8050009763181004309.Spec : Prop :=
  ∀ n, P8050009763181004309.a n = (A015447 n : ℝ)

theorem P8050009763181004309.correct : P8050009763181004309.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015447, Nat.add_sub_cancel, A015447.P8050009763181004309.a, A015447.P9922878944664536584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015447, Nat.add_sub_cancel, A015447.P8050009763181004309.a, A015447.P9922878944664536584.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015447

/-!
# A015448: a(0) = 1, a(1) = 1, and a(n) = 4*a(n-1) + a(n-2) for n >= 2.

The programs for A015448, the canonical program `A015448.P17678901706441707520` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015448 has offset 0).

The definition of A015448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A015448.P17678901706441707520`, by `A015448.P17678901706441707520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015448.P17678901706441707520

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015448

/-- `4*a(n-1)+a(n-2)` -/
def P17678901706441707520.Spec : Prop :=
  ∀ n, (P17678901706441707520.a n : ℤ) = A015448 n

theorem P17678901706441707520.correct : P17678901706441707520.Spec := by
  intro n
  simp only [A015448]

end A015448

/-! ## A015448.P12964235782102628925

`((1+sqrt(5))*(2-sqrt(5))^n-(1-sqrt(5))*(2+sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A015448.P12964235782102628925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (2 - Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A015448.P12964235782102628925

namespace A015448

/-- `((1+sqrt(5))*(2-sqrt(5))^n-(1-sqrt(5))*(2+sqrt(5))^n)/(2*sqrt(5))` -/
def P12964235782102628925.Spec : Prop :=
  ∀ n, P12964235782102628925.a n = (A015448 n : ℝ)

theorem P12964235782102628925.correct : P12964235782102628925.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015448, Nat.add_sub_cancel, A015448.P12964235782102628925.a, A015448.P17678901706441707520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015448, Nat.add_sub_cancel, A015448.P12964235782102628925.a, A015448.P17678901706441707520.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015448

/-! ## A015448.P9494831641777446548

`A001076(n+1)-3*A001076(n)`
-/

namespace A015448.P9494831641777446548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) - 3 * A001076 n

end

end A015448.P9494831641777446548

namespace A015448

/-- `A001076(n+1)-3*A001076(n)` -/
def P9494831641777446548.Spec : Prop :=
  ∀ n, P9494831641777446548.a n = A015448 n

end A015448

/-! ## A015448.P6666288577428001176

`ogf((-1+3x)/(-1+4x+x^2))`
-/

namespace A015448.P6666288577428001176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -4, -1] n

end

end A015448.P6666288577428001176

namespace A015448

/-- `ogf((-1+3x)/(-1+4x+x^2))` -/
def P6666288577428001176.Spec : Prop :=
  ∀ n, P6666288577428001176.a n = A015448 n

end A015448

/-! ## A015448.P6882647503837955436

`round(ϕ^3*a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A015448.P6882647503837955436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A015448.P6882647503837955436

namespace A015448

/-- `round(ϕ^3*a(n-1))` -/
def P6882647503837955436.Spec : Prop :=
  ∀ n, P6882647503837955436.a n = A015448 n

end A015448

/-! ## A015448.P7427904828905300522

`a(n-2)+lcm(4, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015448.P7427904828905300522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A015448.P7427904828905300522

namespace A015448

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P7427904828905300522.Spec : Prop :=
  ∀ n, (P7427904828905300522.a n : ℤ) = A015448 n

end A015448

/-! ## A015448.P7230762081549780024

`4*a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A015448.P7230762081549780024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - (-a (n - 2))

end

end A015448.P7230762081549780024

namespace A015448

/-- `4*a(n-1)-floor(-a(n-2))` -/
def P7230762081549780024.Spec : Prop :=
  ∀ n, P7230762081549780024.a n = A015448 n

end A015448

/-! ## A015448.P10839339063691017578

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=1`
-/

namespace A015448.P10839339063691017578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A015448.P10839339063691017578

namespace A015448

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P10839339063691017578.Spec : Prop :=
  ∀ n, P10839339063691017578.a n = (A015448 n : ℚ)

end A015448

/-! ## A015448.P3021033951973147417

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015448.P3021033951973147417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A015448.P3021033951973147417

namespace A015448

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P3021033951973147417.Spec : Prop :=
  ∀ n, P3021033951973147417.a n = A015448 n

end A015448

/-! ## A015448.P17785150179551896393

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015448.P17785150179551896393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A015448.P17785150179551896393

namespace A015448

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P17785150179551896393.Spec : Prop :=
  ∀ n, (P17785150179551896393.a n : ℤ) = A015448 n

theorem P17785150179551896393.correct : P17785150179551896393.Spec := by
  intro n
  simp only [A015448, Nat.add_sub_cancel, A015448.P17785150179551896393.a, A015448.P17678901706441707520.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A015448

/-! ## A015448.P12990528431640371230

`A212804(3*n)`
-/

namespace A015448.P12990528431640371230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n)

end

end A015448.P12990528431640371230

namespace A015448

/-- `A212804(3*n)` -/
def P12990528431640371230.Spec : Prop :=
  ∀ n, P12990528431640371230.a n = A015448 n

end A015448

/-! ## A015448.P2880170618669540240

`A247049(9*n)`
-/

namespace A015448.P2880170618669540240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (9 * n)

end

end A015448.P2880170618669540240

namespace A015448

/-- `A247049(9*n)` -/
def P2880170618669540240.Spec : Prop :=
  ∀ n, P2880170618669540240.a n = A015448 n

end A015448

/-! ## A015448.P9463826345487129972

`A290968(3*n+1)`
-/

namespace A015448.P9463826345487129972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290968 (3 * n + 1)

end

end A015448.P9463826345487129972

namespace A015448

/-- `A290968(3*n+1)` -/
def P9463826345487129972.Spec : Prop :=
  ∀ n, P9463826345487129972.a n = A015448 n

end A015448

/-! ## A015448.P7433629429240364376

`A000045(abs(1-3*n))`
-/

namespace A015448.P7433629429240364376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (3 * n : ℤ)|.toNat

end

end A015448.P7433629429240364376

namespace A015448

/-- `A000045(abs(1-3*n))` -/
def P7433629429240364376.Spec : Prop :=
  ∀ n, P7433629429240364376.a n = A015448 n

end A015448

/-! ## A015448.P15545574219707843242

`A001611(abs(1-3*n))-1`
-/

namespace A015448.P15545574219707843242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 |1 - (3 * n : ℤ)|.toNat - 1

end

end A015448.P15545574219707843242

namespace A015448

/-- `A001611(abs(1-3*n))-1` -/
def P15545574219707843242.Spec : Prop :=
  ∀ n, P15545574219707843242.a n = A015448 n

end A015448

/-! ## A015448.P13128599342761953383

`A014437(A004273(n))`
-/

namespace A015448.P13128599342761953383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (A004273 n).toNat

end

end A015448.P13128599342761953383

namespace A015448

/-- `A014437(A004273(n))` -/
def P13128599342761953383.Spec : Prop :=
  ∀ n, P13128599342761953383.a n = A015448 n

end A015448

/-! ## A015448.P17261171310137337801

`A272912(A008458(n))`
-/

namespace A015448.P17261171310137337801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A008458 n).toNat

end

end A015448.P17261171310137337801

namespace A015448

/-- `A272912(A008458(n))` -/
def P17261171310137337801.Spec : Prop :=
  ∀ n, P17261171310137337801.a n = A015448 n

end A015448

/-! ## A015448.P5763088107133469497

`A324969(A008486(n))`
-/

namespace A015448.P5763088107133469497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A008486 n).toNat

end

end A015448.P5763088107133469497

namespace A015448

/-- `A324969(A008486(n))` -/
def P5763088107133469497.Spec : Prop :=
  ∀ n, P5763088107133469497.a n = A015448 n

end A015448

/-! ## A015448.P9996277913473428359

`A272912(A270545(n))`
-/

namespace A015448.P9996277913473428359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A270545 n).toNat

end

end A015448.P9996277913473428359

namespace A015448

/-- `A272912(A270545(n))` -/
def P9996277913473428359.Spec : Prop :=
  ∀ n, P9996277913473428359.a n = A015448 n

end A015448

/-! ## A015448.P8173743877005719379

`A141325(A008486(n)-1)`
-/

namespace A015448.P8173743877005719379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (A008486 n - 1).toNat

end

end A015448.P8173743877005719379

namespace A015448

/-- `A141325(A008486(n)-1)` -/
def P8173743877005719379.Spec : Prop :=
  ∀ n, P8173743877005719379.a n = A015448 n

end A015448

/-!
# A015449: Expansion of (1-4*x)/(1-5*x-x^2).

The programs for A015449, the canonical program `A015449.P17972452977600594882` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015449 has offset 0).

The definition of A015449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-5x-x^2))` (program `A015449.P17972452977600594882`, by `A015449.P17972452977600594882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015449.P17972452977600594882

`ogf((1-4x)/(1-5x-x^2))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015449

/-- `ogf((1-4x)/(1-5x-x^2))` -/
def P17972452977600594882.Spec : Prop :=
  ∀ n, P17972452977600594882.a n = A015449 n

theorem P17972452977600594882.correct : P17972452977600594882.Spec := by
  intro n
  simp only [A015449]

end A015449

/-! ## A015449.P18369948952638463273

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015449.P18369948952638463273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * a (n - 1) + a (n - 2)

end

end A015449.P18369948952638463273

namespace A015449

/-- `5*a(n-1)+a(n-2)` -/
def P18369948952638463273.Spec : Prop :=
  ∀ n, (P18369948952638463273.a n : ℤ) = A015449 n

end A015449

/-! ## A015449.P12296361803953741320

`a(n-2)+lcm(5, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015449.P12296361803953741320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 1))

end

end A015449.P12296361803953741320

namespace A015449

/-- `a(n-2)+lcm(5, a(n-1))` -/
def P12296361803953741320.Spec : Prop :=
  ∀ n, (P12296361803953741320.a n : ℤ) = A015449 n

end A015449

/-! ## A015449.P1184107933143221196

`a(n-2)-5*floor(-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A015449.P1184107933143221196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 5 * (-a (n - 1))

end

end A015449.P1184107933143221196

namespace A015449

/-- `a(n-2)-5*floor(-a(n-1))` -/
def P1184107933143221196.Spec : Prop :=
  ∀ n, P1184107933143221196.a n = A015449 n

end A015449

/-! ## A015449.P16069437613875193042

`a(n-2)+a(n-1)/(1-4/5)` with `a(0)=1, a(1)=1`
-/

namespace A015449.P16069437613875193042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A015449.P16069437613875193042

namespace A015449

/-- `a(n-2)+a(n-1)/(1-4/5)` -/
def P16069437613875193042.Spec : Prop :=
  ∀ n, P16069437613875193042.a n = (A015449 n : ℚ)

end A015449

/-! ## A015449.P17312062852188624197

`6*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015449.P17312062852188624197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  6 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A015449.P17312062852188624197

namespace A015449

/-- `6*a(n-1)-(a(n-1)-a(n-2))` -/
def P17312062852188624197.Spec : Prop :=
  ∀ n, P17312062852188624197.a n = A015449 n

end A015449

/-! ## A015449.P17942512278752909813

`A087130(n)-A100237(n)`
-/

namespace A015449.P17942512278752909813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - A100237 n

end

end A015449.P17942512278752909813

namespace A015449

/-- `A087130(n)-A100237(n)` -/
def P17942512278752909813.Spec : Prop :=
  ∀ n, P17942512278752909813.a n = A015449 n

end A015449

/-! ## A015449.P16824202016869889088

`A100236(n)+1-A100237(n)`
-/

namespace A015449.P16824202016869889088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100236 n + (1 - A100237 n)

end

end A015449.P16824202016869889088

namespace A015449

/-- `A100236(n)+1-A100237(n)` -/
def P16824202016869889088.Spec : Prop :=
  ∀ n, P16824202016869889088.a n = A015449 n

end A015449

/-! ## A015449.P13709290047434248203

`A164581(n)-A190954(n)/A011782(n)`
-/

namespace A015449.P13709290047434248203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164581 n : ℚ) - (A190954 n : ℚ) / (A011782 n : ℚ)

end

end A015449.P13709290047434248203

namespace A015449

/-- `A164581(n)-A190954(n)/A011782(n)` -/
def P13709290047434248203.Spec : Prop :=
  ∀ n, P13709290047434248203.a n = (A015449 n : ℚ)

end A015449

/-!
# A015450: Inverse of 1441st cyclotomic polynomial.

The programs for A015450, the canonical program `A015450.P9628221473587249471` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015450 has offset 0).

The definition of A015450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015450.P2193403152137334893

`A000007(C(A091226(n), 4))`
-/

namespace A015450.P2193403152137334893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A091226 n).toNat 4)

end

end A015450.P2193403152137334893

namespace A015450

/-- `A000007(C(A091226(n), 4))` -/
def P2193403152137334893.Spec : Prop :=
  ∀ n, P2193403152137334893.a n = A015450 n

end A015450

/-! ## A015450.P9628221473587249471

`A036987(∑[A093882(n)²])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015450

/-- `A036987(∑[A093882(n)²])` -/
def P9628221473587249471.Spec : Prop :=
  ∀ n, P9628221473587249471.a n = A015450 n

theorem P9628221473587249471.correct : P9628221473587249471.Spec := by
  intro n
  simp only [A015450]

end A015450

/-! ## A015450.P10918980520791524948

`C(A293108(n), ∑[A131242(n)])`
-/

namespace A015450.P10918980520791524948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293108 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015450.P10918980520791524948

namespace A015450

/-- `C(A293108(n), ∑[A131242(n)])` -/
def P10918980520791524948.Spec : Prop :=
  ∀ n, (P10918980520791524948.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P3591523103470579148

`and(1, A270637(A002113(n+1)))`
-/

namespace A015450.P3591523103470579148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A270637 (A002113 (n + 1)).toNat)

end

end A015450.P3591523103470579148

namespace A015450

/-- `and(1, A270637(A002113(n+1)))` -/
def P3591523103470579148.Spec : Prop :=
  ∀ n, P3591523103470579148.a n = A015450 n

end A015450

/-! ## A015450.P2676255692138805733

`C(floor(A211984(n+1)/4), A091194(n+1))`
-/

namespace A015450.P2676255692138805733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A211984 (n + 1) : ℚ) / 4⌋.toNat (A091194 (n + 1)).toNat

end

end A015450.P2676255692138805733

namespace A015450

/-- `C(floor(A211984(n+1)/4), A091194(n+1))` -/
def P2676255692138805733.Spec : Prop :=
  ∀ n, (P2676255692138805733.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P14717420960429775097

`C(A007814(A025706(n)), A326469(n))`
-/

namespace A015450.P14717420960429775097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (A025706 n).toNat).toNat (A326469 n).toNat

end

end A015450.P14717420960429775097

namespace A015450

/-- `C(A007814(A025706(n)), A326469(n))` -/
def P14717420960429775097.Spec : Prop :=
  ∀ n, (P14717420960429775097.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P3456075092958801918

`C(A295662(A143035(n+1)), A054899(n))`
-/

namespace A015450.P3456075092958801918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A295662 (A143035 (n + 1)).toNat).toNat (A054899 n).toNat

end

end A015450.P3456075092958801918

namespace A015450

/-- `C(A295662(A143035(n+1)), A054899(n))` -/
def P3456075092958801918.Spec : Prop :=
  ∀ n, (P3456075092958801918.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P4507130814223763883

`C(A247506(A247506(n)), A326591(n+1))`
-/

namespace A015450.P4507130814223763883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A247506 (A247506 n).toNat).toNat (A326591 (n + 1)).toNat

end

end A015450.P4507130814223763883

namespace A015450

/-- `C(A247506(A247506(n)), A326591(n+1))` -/
def P4507130814223763883.Spec : Prop :=
  ∀ n, (P4507130814223763883.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P16782023286625913138

`C(A125289(n+1), A125289(A125289(n+1)))`
-/

namespace A015450.P16782023286625913138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125289 (n + 1)).toNat (A125289 (A125289 (n + 1)).toNat).toNat

end

end A015450.P16782023286625913138

namespace A015450

/-- `C(A125289(n+1), A125289(A125289(n+1)))` -/
def P16782023286625913138.Spec : Prop :=
  ∀ n, (P16782023286625913138.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P8663360128059558303

`C(A287864(n+1), A331913(A287864(n+1)))`
-/

namespace A015450.P8663360128059558303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287864 (n + 1)).toNat (A331913 (A287864 (n + 1)).toNat).toNat

end

end A015450.P8663360128059558303

namespace A015450

/-- `C(A287864(n+1), A331913(A287864(n+1)))` -/
def P8663360128059558303.Spec : Prop :=
  ∀ n, (P8663360128059558303.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P9227328706651180821

`C(A055396(A104236(2*(n+1))), A326527(n))`
-/

namespace A015450.P9227328706651180821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055396 (A104236 (2 * (n + 1))).toNat).toNat (A326527 n).toNat

end

end A015450.P9227328706651180821

namespace A015450

/-- `C(A055396(A104236(2*(n+1))), A326527(n))` -/
def P9227328706651180821.Spec : Prop :=
  ∀ n, (P9227328706651180821.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P14976625221215486608

`C(n, comp[A114412(n+5)])`
-/

namespace A015450.P14976625221215486608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114412 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015450.P14976625221215486608

namespace A015450

/-- `C(n, comp[A114412(n+5)])` -/
def P14976625221215486608.Spec : Prop :=
  ∀ n, (P14976625221215486608.a n : ℤ) = A015450 n

end A015450

/-! ## A015450.P16916981773297710332

`A000007(A308975(n+3))`
-/

namespace A015450.P16916981773297710332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A308975 (n + 3)).toNat

end

end A015450.P16916981773297710332

namespace A015450

/-- `A000007(A308975(n+3))` -/
def P16916981773297710332.Spec : Prop :=
  ∀ n, P16916981773297710332.a n = A015450 n

end A015450

/-! ## A015450.P18409521541712845118

`A379668(∑[(n-4)*char[A139071(3*(n+1))]]+1)`
-/

namespace A015450.P18409521541712845118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139071 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A015450.P18409521541712845118

namespace A015450

/-- `A379668(∑[(n-4)*char[A139071(3*(n+1))]]+1)` -/
def P18409521541712845118.Spec : Prop :=
  ∀ n, P18409521541712845118.a n = A015450 n

end A015450

/-! ## A015450.P13501109408976505499

`C(A103378(n+1), A258660(A103378(n+1)))`
-/

namespace A015450.P13501109408976505499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103378 (n + 1)).toNat (A258660 (A103378 (n + 1)).toNat).toNat

end

end A015450.P13501109408976505499

namespace A015450

/-- `C(A103378(n+1), A258660(A103378(n+1)))` -/
def P13501109408976505499.Spec : Prop :=
  ∀ n, (P13501109408976505499.a n : ℤ) = A015450 n

end A015450

/-!
# A015451: a(n) = 6*a(n-1) + a(n-2) for n > 1, with a(0) = a(1) = 1.

The programs for A015451, the canonical program `A015451.P7580581442623857454` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015451 has offset 0).

The definition of A015451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+a(n-2)` (program `A015451.P7580581442623857454`, by `A015451.P7580581442623857454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015451.P7580581442623857454

`6*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015451

/-- `6*a(n-1)+a(n-2)` -/
def P7580581442623857454.Spec : Prop :=
  ∀ n, (P7580581442623857454.a n : ℤ) = A015451 n

theorem P7580581442623857454.correct : P7580581442623857454.Spec := by
  intro n
  simp only [A015451]

end A015451

/-! ## A015451.P3072936774659373317

`ogf((-1+5x)/(-1+6x+x^2))`
-/

namespace A015451.P3072936774659373317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -6, -1] n

end

end A015451.P3072936774659373317

namespace A015451

/-- `ogf((-1+5x)/(-1+6x+x^2))` -/
def P3072936774659373317.Spec : Prop :=
  ∀ n, P3072936774659373317.a n = A015451 n

end A015451

/-! ## A015451.P16191454737126713110

`a(n-2)+lcm(6, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015451.P16191454737126713110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 6 (a (n - 1))

end

end A015451.P16191454737126713110

namespace A015451

/-- `a(n-2)+lcm(6, a(n-1))` -/
def P16191454737126713110.Spec : Prop :=
  ∀ n, (P16191454737126713110.a n : ℤ) = A015451 n

end A015451

/-! ## A015451.P17398884436441841708

`7*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015451.P17398884436441841708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A015451.P17398884436441841708

namespace A015451

/-- `7*a(n-1)-(a(n-1)-a(n-2))` -/
def P17398884436441841708.Spec : Prop :=
  ∀ n, P17398884436441841708.a n = A015451 n

end A015451

/-! ## A015451.P7453234543618921977

`A179237(n)-A005668(n)`
-/

namespace A015451.P7453234543618921977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 n - A005668 n

end

end A015451.P7453234543618921977

namespace A015451

/-- `A179237(n)-A005668(n)` -/
def P7453234543618921977.Spec : Prop :=
  ∀ n, P7453234543618921977.a n = A015451 n

theorem P7453234543618921977.correct : P7453234543618921977.Spec := by
  intro n
  simp only [A015451, Nat.add_sub_cancel, A015451.P7453234543618921977.a, A015451.P7580581442623857454.a, A005668, A005668.P16454621697673047627.a, A179237, A179237.P6821180634810169376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A015451

/-! ## A015451.P10450395447482121270

`A295334(A130824(n)-n)`
-/

namespace A015451.P10450395447482121270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A130824 n - (n : ℤ)).toNat

end

end A015451.P10450395447482121270

namespace A015451

/-- `A295334(A130824(n)-n)` -/
def P10450395447482121270.Spec : Prop :=
  ∀ n, P10450395447482121270.a n = A015451 n

end A015451

/-! ## A015451.P15645198844138627088

`A295334(record[A001281(n)/2])`
-/

namespace A015451.P15645198844138627088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001281 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A015451.P15645198844138627088

namespace A015451

/-- `A295334(record[A001281(n)/2])` -/
def P15645198844138627088.Spec : Prop :=
  ∀ n, P15645198844138627088.a n = A015451 n

end A015451

/-! ## A015451.P16851052246054382936

`A005667(n)-2*A005668(n)`
-/

namespace A015451.P16851052246054382936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 n - 2 * A005668 n

end

end A015451.P16851052246054382936

namespace A015451

/-- `A005667(n)-2*A005668(n)` -/
def P16851052246054382936.Spec : Prop :=
  ∀ n, P16851052246054382936.a n = A015451 n

end A015451

/-! ## A015451.P8028998445985014286

`A295334(A004275(2*n)-n)`
-/

namespace A015451.P8028998445985014286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A004275 (2 * n) - (n : ℤ)).toNat

end

end A015451.P8028998445985014286

namespace A015451

/-- `A295334(A004275(2*n)-n)` -/
def P8028998445985014286.Spec : Prop :=
  ∀ n, P8028998445985014286.a n = A015451 n

end A015451

/-! ## A015451.P16056494459257514505

`A295334(A001281(record[A001281(n)]))`
-/

namespace A015451.P16056494459257514505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A015451.P16056494459257514505

namespace A015451

/-- `A295334(A001281(record[A001281(n)]))` -/
def P16056494459257514505.Spec : Prop :=
  ∀ n, P16056494459257514505.a n = A015451 n

end A015451

/-! ## A015451.P12731788560439612505

`A179237(n)+A179237(n)-A005667(n)`
-/

namespace A015451.P12731788560439612505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 n + (A179237 n - A005667 n)

end

end A015451.P12731788560439612505

namespace A015451

/-- `A179237(n)+A179237(n)-A005667(n)` -/
def P12731788560439612505.Spec : Prop :=
  ∀ n, P12731788560439612505.a n = A015451 n

end A015451

/-! ## A015451.P7386276651629040228

`2*A179237(n)-A005667(n)`
-/

namespace A015451.P7386276651629040228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179237 n - A005667 n

end

end A015451.P7386276651629040228

namespace A015451

/-- `2*A179237(n)-A005667(n)` -/
def P7386276651629040228.Spec : Prop :=
  ∀ n, P7386276651629040228.a n = A015451 n

end A015451

/-! ## A015451.P2856751426716795928

`A116559(A016921(n))-2*A005668(n)`
-/

namespace A015451.P2856751426716795928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A016921 n).toNat - 2 * A005668 n

end

end A015451.P2856751426716795928

namespace A015451

/-- `A116559(A016921(n))-2*A005668(n)` -/
def P2856751426716795928.Spec : Prop :=
  ∀ n, P2856751426716795928.a n = A015451 n

end A015451

/-! ## A015451.P2787146914689011292

`A005668(n)+A085447(n)-A005668(n+1)`
-/

namespace A015451.P2787146914689011292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 n + (A085447 n - A005668 (n + 1))

end

end A015451.P2787146914689011292

namespace A015451

/-- `A005668(n)+A085447(n)-A005668(n+1)` -/
def P2787146914689011292.Spec : Prop :=
  ∀ n, P2787146914689011292.a n = A015451 n

end A015451

/-!
# A015452: Inverse of 1443rd cyclotomic polynomial.

The programs for A015452, there is no canonical definition to state claims against.
-/

/-! ## A015452.P14764832155383355905

`A015608(A175427(n+1))`
-/

namespace A015452.P14764832155383355905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015608 (A175427 (n + 1)).toNat

end

end A015452.P14764832155383355905

/-! ## A015452.P3127478974357339544

`A016076(n)/A001221(A215421(n+1))`
-/

namespace A015452.P3127478974357339544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016076 n : ℚ) / (A001221 (A215421 (n + 1)).toNat : ℚ)

end

end A015452.P3127478974357339544

/-! ## A015452.P7778904175361012117

`A016076(A135383(n+1))`
-/

namespace A015452.P7778904175361012117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016076 (A135383 (n + 1)).toNat

end

end A015452.P7778904175361012117

/-! ## A015452.P15784672007028672621

`A015608(n)%A182744(n+1)`
-/

namespace A015452.P15784672007028672621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015608 n) (A182744 (n + 1))

end

end A015452.P15784672007028672621

/-! ## A015452.P9561984606414121408

`A015686(n)%A182744(n+1)`
-/

namespace A015452.P9561984606414121408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015686 n) (A182744 (n + 1))

end

end A015452.P9561984606414121408

/-!
# A015453: Generalized Fibonacci numbers.

The programs for A015453, the canonical program `A015453.P7215082379021107706` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015453 has offset 0).

The definition of A015453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015453.P7215082379021107706

`7*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015453

/-- `7*a(n-1)+a(n-2)` -/
def P7215082379021107706.Spec : Prop :=
  ∀ n, (P7215082379021107706.a n : ℤ) = A015453 n

theorem P7215082379021107706.correct : P7215082379021107706.Spec := by
  intro n
  simp only [A015453]

end A015453

/-! ## A015453.P9804690247868412768

`ogf((-1+6x)/(-1+7x+x^2))`
-/

namespace A015453.P9804690247868412768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -7, -1] n

end

end A015453.P9804690247868412768

namespace A015453

/-- `ogf((-1+6x)/(-1+7x+x^2))` -/
def P9804690247868412768.Spec : Prop :=
  ∀ n, P9804690247868412768.a n = A015453 n

end A015453

/-! ## A015453.P5223198704586086097

`a(n-2)+lcm(7, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015453.P5223198704586086097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 7 (a (n - 1))

end

end A015453.P5223198704586086097

namespace A015453

/-- `a(n-2)+lcm(7, a(n-1))` -/
def P5223198704586086097.Spec : Prop :=
  ∀ n, (P5223198704586086097.a n : ℤ) = A015453 n

end A015453

/-! ## A015453.P3139398808626310419

`8*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015453.P3139398808626310419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  8 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A015453.P3139398808626310419

namespace A015453

/-- `8*a(n-1)-(a(n-1)-a(n-2))` -/
def P3139398808626310419.Spec : Prop :=
  ∀ n, P3139398808626310419.a n = A015453 n

end A015453

/-! ## A015453.P2441572870929939317

`a(n-2)+7*a(A023443(n))` with `a(0)=1, a(1)=1`
-/

namespace A015453.P2441572870929939317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 7 * a (A023443 n).toNat

end

end A015453.P2441572870929939317

namespace A015453

/-- `a(n-2)+7*a(A023443(n))` -/
def P2441572870929939317.Spec : Prop :=
  ∀ n, (P2441572870929939317.a n : ℤ) = A015453 n

end A015453

/-!
# A015454: Generalized Fibonacci numbers.

The programs for A015454, the canonical program `A015454.P12310916909365342101` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015454 has offset 0).

The definition of A015454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015454.P12310916909365342101

`8*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015454

/-- `8*a(n-1)+a(n-2)` -/
def P12310916909365342101.Spec : Prop :=
  ∀ n, (P12310916909365342101.a n : ℤ) = A015454 n

theorem P12310916909365342101.correct : P12310916909365342101.Spec := by
  intro n
  simp only [A015454]

end A015454

/-! ## A015454.P1981717989110524685

`ogf((-1+7x)/(-1+8x+x^2))`
-/

namespace A015454.P1981717989110524685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -8, -1] n

end

end A015454.P1981717989110524685

namespace A015454

/-- `ogf((-1+7x)/(-1+8x+x^2))` -/
def P1981717989110524685.Spec : Prop :=
  ∀ n, P1981717989110524685.a n = A015454 n

end A015454

/-! ## A015454.P11540668061181815987

`a(n-2)+lcm(8, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015454.P11540668061181815987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 8 (a (n - 1))

end

end A015454.P11540668061181815987

namespace A015454

/-- `a(n-2)+lcm(8, a(n-1))` -/
def P11540668061181815987.Spec : Prop :=
  ∀ n, (P11540668061181815987.a n : ℤ) = A015454 n

end A015454

/-! ## A015454.P5359588206059188426

`3*3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015454.P5359588206059188426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (3 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A015454.P5359588206059188426

namespace A015454

/-- `3*3*a(n-1)-(a(n-1)-a(n-2))` -/
def P5359588206059188426.Spec : Prop :=
  ∀ n, P5359588206059188426.a n = A015454 n

end A015454

/-!
# A015455: a(n) = 9*a(n-1) + a(n-2) for n>1; a(0) = a(1) = 1.

The programs for A015455, the canonical program `A015455.P5839113336442973069` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015455 has offset 0).

The definition of A015455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+a(n-2)` (program `A015455.P5839113336442973069`, by `A015455.P5839113336442973069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015455.P5839113336442973069

`9*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015455

/-- `9*a(n-1)+a(n-2)` -/
def P5839113336442973069.Spec : Prop :=
  ∀ n, (P5839113336442973069.a n : ℤ) = A015455 n

theorem P5839113336442973069.correct : P5839113336442973069.Spec := by
  intro n
  simp only [A015455]

end A015455

/-! ## A015455.P6587089152401311934

`ogf((-1+8x)/(-1+9x+x^2))`
-/

namespace A015455.P6587089152401311934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -9, -1] n

end

end A015455.P6587089152401311934

namespace A015455

/-- `ogf((-1+8x)/(-1+9x+x^2))` -/
def P6587089152401311934.Spec : Prop :=
  ∀ n, P6587089152401311934.a n = A015455 n

end A015455

/-! ## A015455.P17760487536837366913

`a(n-2)+lcm(9, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015455.P17760487536837366913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 9 (a (n - 1))

end

end A015455.P17760487536837366913

namespace A015455

/-- `a(n-2)+lcm(9, a(n-1))` -/
def P17760487536837366913.Spec : Prop :=
  ∀ n, (P17760487536837366913.a n : ℤ) = A015455 n

end A015455

/-! ## A015455.P6598576004116774021

`a(n-2)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A015455.P6598576004116774021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A015455.P6598576004116774021

namespace A015455

/-- `a(n-2)+a(n-1)/(1/3)²` -/
def P6598576004116774021.Spec : Prop :=
  ∀ n, P6598576004116774021.a n = (A015455 n : ℚ)

end A015455

/-! ## A015455.P6686905043052674057

`a(n-2)-3*(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015455.P6686905043052674057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 3 * (a (n - 1) - 4 * a (n - 1))

end

end A015455.P6686905043052674057

namespace A015455

/-- `a(n-2)-3*(a(n-1)-4*a(n-1))` -/
def P6686905043052674057.Spec : Prop :=
  ∀ n, P6686905043052674057.a n = A015455 n

end A015455

/-! ## A015455.P2255510962666304666

`A087798(n)-Δ[A099371(n)]`
-/

namespace A015455.P2255510962666304666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 n - (f1 (n + 1) - f1 n)

end

end A015455.P2255510962666304666

namespace A015455

/-- `A087798(n)-Δ[A099371(n)]` -/
def P2255510962666304666.Spec : Prop :=
  ∀ n, P2255510962666304666.a n = A015455 n

end A015455

/-! ## A015455.P16325217202086379583

`A087798(n)+A099371(n)-A099371(n+1)`
-/

namespace A015455.P16325217202086379583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 n + (A099371 n - A099371 (n + 1))

end

end A015455.P16325217202086379583

namespace A015455

/-- `A087798(n)+A099371(n)-A099371(n+1)` -/
def P16325217202086379583.Spec : Prop :=
  ∀ n, P16325217202086379583.a n = A015455 n

end A015455

/-!
# A015456: Generalized Fibonacci numbers.

The programs for A015456, the canonical program `A015456.P7826078047961667005` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015456 has offset 0).

The definition of A015456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015456.P7826078047961667005

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015456

/-- `10*a(n-1)+a(n-2)` -/
def P7826078047961667005.Spec : Prop :=
  ∀ n, (P7826078047961667005.a n : ℤ) = A015456 n

theorem P7826078047961667005.correct : P7826078047961667005.Spec := by
  intro n
  simp only [A015456]

end A015456

/-! ## A015456.P7166154400707280594

`ogf((-1+9x)/(-1+10x+x^2))`
-/

namespace A015456.P7166154400707280594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -10, -1] n

end

end A015456.P7166154400707280594

namespace A015456

/-- `ogf((-1+9x)/(-1+10x+x^2))` -/
def P7166154400707280594.Spec : Prop :=
  ∀ n, P7166154400707280594.a n = A015456 n

end A015456

/-! ## A015456.P14672606234215310873

`a(n-2)+lcm(10, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015456.P14672606234215310873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 10 (a (n - 1))

end

end A015456.P14672606234215310873

namespace A015456

/-- `a(n-2)+lcm(10, a(n-1))` -/
def P14672606234215310873.Spec : Prop :=
  ∀ n, (P14672606234215310873.a n : ℤ) = A015456 n

end A015456

/-! ## A015456.P8644821962836553892

`a(n-1)+a(n-2)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A015456.P8644821962836553892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 1) / ((1 : ℚ) / 3) ^ 2)

end

end A015456.P8644821962836553892

namespace A015456

/-- `a(n-1)+a(n-2)+a(n-1)/(1/3)²` -/
def P8644821962836553892.Spec : Prop :=
  ∀ n, P8644821962836553892.a n = (A015456 n : ℚ)

end A015456

/-! ## A015456.P12546419598131189994

`a(n-2)+10*a(A023443(n))` with `a(0)=1, a(1)=1`
-/

namespace A015456.P12546419598131189994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 10 * a (A023443 n).toNat

end

end A015456.P12546419598131189994

namespace A015456

/-- `a(n-2)+10*a(A023443(n))` -/
def P12546419598131189994.Spec : Prop :=
  ∀ n, (P12546419598131189994.a n : ℤ) = A015456 n

end A015456

/-! ## A015456.P5691701906064489199

`A086927(n)-A109108(n)`
-/

namespace A015456.P5691701906064489199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 n - A109108 n

end

end A015456.P5691701906064489199

namespace A015456

/-- `A086927(n)-A109108(n)` -/
def P5691701906064489199.Spec : Prop :=
  ∀ n, P5691701906064489199.a n = A015456 n

end A015456

/-! ## A015456.P2268630801144015927

`2*A088320(n)-A109108(n)`
-/

namespace A015456.P2268630801144015927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088320 n - A109108 n

end

end A015456.P2268630801144015927

namespace A015456

/-- `2*A088320(n)-A109108(n)` -/
def P2268630801144015927.Spec : Prop :=
  ∀ n, P2268630801144015927.a n = A015456 n

end A015456

/-!
# A015457: Generalized Fibonacci numbers.

The programs for A015457, the canonical program `A015457.P12564482202894267777` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015457 has offset 0).

The definition of A015457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015457.P12564482202894267777

`11*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015457

/-- `11*a(n-1)+a(n-2)` -/
def P12564482202894267777.Spec : Prop :=
  ∀ n, (P12564482202894267777.a n : ℤ) = A015457 n

theorem P12564482202894267777.correct : P12564482202894267777.Spec := by
  intro n
  simp only [A015457]

end A015457

/-! ## A015457.P3944167482140348206

`ogf((-1+10x)/(-1+11x+x^2))`
-/

namespace A015457.P3944167482140348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -11, -1] n

end

end A015457.P3944167482140348206

namespace A015457

/-- `ogf((-1+10x)/(-1+11x+x^2))` -/
def P3944167482140348206.Spec : Prop :=
  ∀ n, P3944167482140348206.a n = A015457 n

end A015457

/-! ## A015457.P5212694956152748230

`a(n-2)+lcm(11, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A015457.P5212694956152748230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 11 (a (n - 1))

end

end A015457.P5212694956152748230

namespace A015457

/-- `a(n-2)+lcm(11, a(n-1))` -/
def P5212694956152748230.Spec : Prop :=
  ∀ n, (P5212694956152748230.a n : ℤ) = A015457 n

end A015457

/-! ## A015457.P4281852643748318727

`3*4*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A015457.P4281852643748318727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (4 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A015457.P4281852643748318727

namespace A015457

/-- `3*4*a(n-1)-(a(n-1)-a(n-2))` -/
def P4281852643748318727.Spec : Prop :=
  ∀ n, P4281852643748318727.a n = A015457 n

end A015457

/-! ## A015457.P678775059861368311

`A001946(n)-Δ[A049666(n)]`
-/

namespace A015457.P678775059861368311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001946 n - (f1 (n + 1) - f1 n)

end

end A015457.P678775059861368311

namespace A015457

/-- `A001946(n)-Δ[A049666(n)]` -/
def P678775059861368311.Spec : Prop :=
  ∀ n, P678775059861368311.a n = A015457 n

end A015457

/-! ## A015457.P819919727288116848

`A049666(n+1)-2*A102312(n)`
-/

namespace A015457.P819919727288116848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (n + 1) - 2 * A102312 n

end

end A015457.P819919727288116848

namespace A015457

/-- `A049666(n+1)-2*A102312(n)` -/
def P819919727288116848.Spec : Prop :=
  ∀ n, P819919727288116848.a n = A015457 n

end A015457

/-! ## A015457.P6376782785012895818

`A001946(n)+A049666(n)-A049666(n+1)`
-/

namespace A015457.P6376782785012895818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001946 n + (A049666 n - A049666 (n + 1))

end

end A015457.P6376782785012895818

namespace A015457

/-- `A001946(n)+A049666(n)-A049666(n+1)` -/
def P6376782785012895818.Spec : Prop :=
  ∀ n, P6376782785012895818.a n = A015457 n

end A015457

/-!
# A015459: q-Fibonacci numbers for q=2, scaling a(n-2).

The programs for A015459, the canonical program `A015459.P5485631699629829835` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015459 has offset 0).

The definition of A015459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015459.P5485631699629829835

`a(n-1)+2^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015459

/-- `a(n-1)+2^(n-2)*a(n-2)` -/
def P5485631699629829835.Spec : Prop :=
  ∀ n, P5485631699629829835.a n = (A015459 n : ℚ)

end A015459

/-! ## A015459.P14936581535559959256

`A065361(A015460(n))`
-/

namespace A015459.P14936581535559959256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A015460 n).toNat

end

end A015459.P14936581535559959256

namespace A015459

/-- `A065361(A015460(n))` -/
def P14936581535559959256.Spec : Prop :=
  ∀ n, P14936581535559959256.a n = A015459 n

end A015459

/-! ## A015459.P16031368851018882013

`A087808(A015461(n))`
-/

namespace A015459.P16031368851018882013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A015461 n).toNat

end

end A015459.P16031368851018882013

namespace A015459

/-- `A087808(A015461(n))` -/
def P16031368851018882013.Spec : Prop :=
  ∀ n, P16031368851018882013.a n = A015459 n

end A015459

/-!
# A015460: q-Fibonacci numbers for q=3, scale a(n-2).

The programs for A015460, the canonical program `A015460.P6263780858399305285` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015460 has offset 0).

The definition of A015460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015460.P6263780858399305285

`a(n-1)+3^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015460

/-- `a(n-1)+3^(n-2)*a(n-2)` -/
def P6263780858399305285.Spec : Prop :=
  ∀ n, P6263780858399305285.a n = (A015460 n : ℚ)

end A015460

/-! ## A015460.P12523550236643607334

`∑{d}[(2*a(n-1))², #*#%2]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A015460.P12523550236643607334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n f1 =>
  (2 * f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (d % 2)

end

end A015460.P12523550236643607334

namespace A015460

/-- `∑{d}[(2*a(n-1))², #*#%2]` -/
def P12523550236643607334.Spec : Prop :=
  ∀ n, (P12523550236643607334.a n : ℤ) = A015460 n

end A015460

/-!
# A015461: q-Fibonacci numbers for q=4, scaling a(n-2).

The programs for A015461, the canonical program `A015461.P1133610251509051775` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015461 has offset 0).

The definition of A015461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015461.P1133610251509051775

`a(n-1)+4^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015461

/-- `a(n-1)+4^(n-2)*a(n-2)` -/
def P1133610251509051775.Spec : Prop :=
  ∀ n, P1133610251509051775.a n = (A015461 n : ℚ)

end A015461

/-! ## A015461.P15870551853165628466

`A023717(A015460(n))`
-/

namespace A015461.P15870551853165628466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A015460 n).toNat

end

end A015461.P15870551853165628466

namespace A015461

/-- `A023717(A015460(n))` -/
def P15870551853165628466.Spec : Prop :=
  ∀ n, P15870551853165628466.a n = A015461 n

end A015461

/-!
# A015462: q-Fibonacci numbers for q=5, scaling a(n-2).

The programs for A015462, the canonical program `A015462.P14180006256563998528` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015462 has offset 0).

The definition of A015462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015462.P14180006256563998528

`a(n-1)+5^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015462

/-- `a(n-1)+5^(n-2)*a(n-2)` -/
def P14180006256563998528.Spec : Prop :=
  ∀ n, P14180006256563998528.a n = (A015462 n : ℚ)

end A015462

/-! ## A015462.P7306678795666215541

`A020654(A015461(n)+1)`
-/

namespace A015462.P7306678795666215541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A015461 n + 1).toNat

end

end A015462.P7306678795666215541

namespace A015462

/-- `A020654(A015461(n)+1)` -/
def P7306678795666215541.Spec : Prop :=
  ∀ n, P7306678795666215541.a n = A015462 n

end A015462

/-!
# A015463: q-Fibonacci numbers for q=6, scaling a(n-2).

The programs for A015463, the canonical program `A015463.P10868034344335870898` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015463 has offset 0).

The definition of A015463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015463.P10868034344335870898

`a(n-1)+6^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015463

/-- `a(n-1)+6^(n-2)*a(n-2)` -/
def P10868034344335870898.Spec : Prop :=
  ∀ n, P10868034344335870898.a n = (A015463 n : ℚ)

end A015463

/-! ## A015463.P361822158259348860

`A032927(A015459(n)+1)-1`
-/

namespace A015463.P361822158259348860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032927 (A015459 n + 1).toNat - 1

end

end A015463.P361822158259348860

namespace A015463

/-- `A032927(A015459(n)+1)-1` -/
def P361822158259348860.Spec : Prop :=
  ∀ n, P361822158259348860.a n = A015463 n

end A015463

/-! ## A015463.P11466189898663704353

`A037460(A015461(n))`
-/

namespace A015463.P11466189898663704353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A015461 n).toNat

end

end A015463.P11466189898663704353

namespace A015463

/-- `A037460(A015461(n))` -/
def P11466189898663704353.Spec : Prop :=
  ∀ n, P11466189898663704353.a n = A015463 n

end A015463

/-!
# A015464: q-Fibonacci numbers for q=7, scaling a(n-2).

The programs for A015464, the canonical program `A015464.P11020119249636461753` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015464 has offset 0).

The definition of A015464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015464.P11020119249636461753

`a(n-1)+7^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015464

/-- `a(n-1)+7^(n-2)*a(n-2)` -/
def P11020119249636461753.Spec : Prop :=
  ∀ n, P11020119249636461753.a n = (A015464 n : ℚ)

end A015464

/-! ## A015464.P3224715412869874169

`∑{d}[a(n-1)*a(n-1), #]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A015464.P3224715412869874169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 7] fun n f1 =>
  f1 (n - 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A015464.P3224715412869874169

namespace A015464

/-- `∑{d}[a(n-1)*a(n-1), #]` -/
def P3224715412869874169.Spec : Prop :=
  ∀ n, (P3224715412869874169.a n : ℤ) = A015464 n

end A015464

/-!
# A015465: q-Fibonacci numbers for q=8, scaling a(n-2).

The programs for A015465, the canonical program `A015465.P4356832289849483468` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015465 has offset 0).

The definition of A015465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015465.P4356832289849483468

`a(n-1)+8^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015465

/-- `a(n-1)+8^(n-2)*a(n-2)` -/
def P4356832289849483468.Spec : Prop :=
  ∀ n, P4356832289849483468.a n = (A015465 n : ℚ)

end A015465

/-! ## A015465.P7582611569218363650

`A001158(2^(∑[n]-n))%(2^(∑[∑[n]]+n-n²))`
-/

namespace A015465.P7582611569218363650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ))).toNat) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - (n ^ 2 : ℤ)) : ℤ)))

end

end A015465.P7582611569218363650

namespace A015465

/-- `A001158(2^(∑[n]-n))%(2^(∑[∑[n]]+n-n²))` -/
def P7582611569218363650.Spec : Prop :=
  ∀ n, P7582611569218363650.a n = A015465 n

end A015465

/-!
# A015466: Inverse of 1457th cyclotomic polynomial.

The programs for A015466, there is no canonical definition to state claims against.
-/

/-! ## A015466.P8561511962447549804

`A014560(A233583(2*n+1)-A047373(n+1))`
-/

namespace A015466.P8561511962447549804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A233583 (2 * n + 1) - A047373 (n + 1)).toNat

end

end A015466.P8561511962447549804

/-! ## A015466.P9338239509829163714

`A015970(lt[A378305(n+1), A029854(2*(n+2))])`
-/

namespace A015466.P9338239509829163714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029854 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P9338239509829163714

/-! ## A015466.P14406126102698543878

`A015970(lt[A390307(n+4), A194742(3*n+2)])`
-/

namespace A015466.P14406126102698543878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390307 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194742 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P14406126102698543878

/-! ## A015466.P15706885833149994055

`A015970(lt[A392713(n+1), A001222(n+1)])`
-/

namespace A015466.P15706885833149994055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P15706885833149994055

/-! ## A015466.P15942883760242836719

`A015970(lt[A392713(n+1), A006530(n+1)])`
-/

namespace A015466.P15942883760242836719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P15942883760242836719

/-! ## A015466.P15322556727161268803

`A015970(lt[A392713(n+1), A036450(n+1)])`
-/

namespace A015466.P15322556727161268803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P15322556727161268803

/-! ## A015466.P499820187301852260

`A015970(lt[A392713(n+1), A325226(2*(n+1))])`
-/

namespace A015466.P499820187301852260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015466.P499820187301852260

/-! ## A015466.P7316092190137925881

`∑[A321764(A169706(∑{e}[n+1, #]))]`
-/

namespace A015466.P7316092190137925881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321764 (A169706 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015466.P7316092190137925881

/-! ## A015466.P907610041307032621

`A016192(A304678(n+2))^A173865(n+1)`
-/

namespace A015466.P907610041307032621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016192 (A304678 (n + 2)).toNat : ℚ) ^ (A173865 (n + 1) : ℤ)

end

end A015466.P907610041307032621

/-!
# A015467: q-Fibonacci numbers for q=9, scaling a(n-2).

The programs for A015467, the canonical program `A015467.P127967657889280494` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015467 has offset 0).

The definition of A015467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015467.P127967657889280494

`a(n-1)+9^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015467

/-- `a(n-1)+9^(n-2)*a(n-2)` -/
def P127967657889280494.Spec : Prop :=
  ∀ n, P127967657889280494.a n = (A015467 n : ℚ)

end A015467

/-! ## A015467.P7114783877798842983

`A008541(A015464(n)+1)`
-/

namespace A015467.P7114783877798842983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (A015464 n + 1).toNat

end

end A015467.P7114783877798842983

namespace A015467

/-- `A008541(A015464(n)+1)` -/
def P7114783877798842983.Spec : Prop :=
  ∀ n, P7114783877798842983.a n = A015467 n

end A015467

/-!
# A015468: q-Fibonacci numbers for q=10, scaling a(n-2).

The programs for A015468, the canonical program `A015468.P15989102458088801209` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015468 has offset 0).

The definition of A015468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015468.P15989102458088801209

`a(n-1)+10^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015468

/-- `a(n-1)+10^(n-2)*a(n-2)` -/
def P15989102458088801209.Spec : Prop :=
  ∀ n, P15989102458088801209.a n = (A015468 n : ℚ)

end A015468

/-! ## A015468.P18034826822709133986

`A007089(A015460(n))`
-/

namespace A015468.P18034826822709133986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A015460 n).toNat

end

end A015468.P18034826822709133986

namespace A015468

/-- `A007089(A015460(n))` -/
def P18034826822709133986.Spec : Prop :=
  ∀ n, P18034826822709133986.a n = A015468 n

end A015468

/-! ## A015468.P15695662966287580053

`A007090(A015461(n))`
-/

namespace A015468.P15695662966287580053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A015461 n).toNat

end

end A015468.P15695662966287580053

namespace A015468

/-- `A007090(A015461(n))` -/
def P15695662966287580053.Spec : Prop :=
  ∀ n, P15695662966287580053.a n = A015468 n

end A015468

/-!
# A015469: q-Fibonacci numbers for q=11, scaling a(n-2).

The programs for A015469, the canonical program `A015469.P17100039085973864910` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015469 has offset 0).

The definition of A015469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015469.P17100039085973864910

`a(n-1)+11^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015469

/-- `a(n-1)+11^(n-2)*a(n-2)` -/
def P17100039085973864910.Spec : Prop :=
  ∀ n, P17100039085973864910.a n = (A015469 n : ℚ)

end A015469

/-! ## A015469.P13162999151355254268

`A032931(A015459(n)+1)-1`
-/

namespace A015469.P13162999151355254268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032931 (A015459 n + 1).toNat - 1

end

end A015469.P13162999151355254268

namespace A015469

/-- `A032931(A015459(n)+1)-1` -/
def P13162999151355254268.Spec : Prop :=
  ∀ n, P13162999151355254268.a n = A015469 n

end A015469

/-!
# A015470: q-Fibonacci numbers for q=12, scaling a(n-2).

The programs for A015470, the canonical program `A015470.P11301384405923531030` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015470 has offset 0).

The definition of A015470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015470.P11301384405923531030

`a(n-1)+12^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015470

/-- `a(n-1)+12^(n-2)*a(n-2)` -/
def P11301384405923531030.Spec : Prop :=
  ∀ n, P11301384405923531030.a n = (A015470 n : ℚ)

end A015470

/-! ## A015470.P12977762943518527645

`A022176(A131577(n))%A317073(n+1)`
-/

namespace A015470.P12977762943518527645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022176 (A131577 n).toNat) (A317073 (n + 1))

end

end A015470.P12977762943518527645

namespace A015470

/-- `A022176(A131577(n))%A317073(n+1)` -/
def P12977762943518527645.Spec : Prop :=
  ∀ n, P12977762943518527645.a n = A015470 n

end A015470

/-!
# A015471: Inverse of 1462nd cyclotomic polynomial.

The programs for A015471, there is no canonical definition to state claims against.
-/

/-! ## A015471.P7805092495034753593

`A014740(n)*A033999(n)`
-/

namespace A015471.P7805092495034753593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014740 n * A033999 n

end

end A015471.P7805092495034753593

/-! ## A015471.P9086857771378513591

`A015607(A175427(n+1))`
-/

namespace A015471.P9086857771378513591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015607 (A175427 (n + 1)).toNat

end

end A015471.P9086857771378513591

/-! ## A015471.P6970298645854607941

`A015607(n)*A362113(n)`
-/

namespace A015471.P6970298645854607941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015607 n * A362113 n

end

end A015471.P6970298645854607941

/-! ## A015471.P17599321479036298754

`A015811(n)*A362113(n)`
-/

namespace A015471.P17599321479036298754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 n * A362113 n

end

end A015471.P17599321479036298754

/-! ## A015471.P18446302868551162782

`A016015(n)*A362113(n)`
-/

namespace A015471.P18446302868551162782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 n * A362113 n

end

end A015471.P18446302868551162782

/-!
# A015472: Inverse of 1463rd cyclotomic polynomial.

The programs for A015472, there is no canonical definition to state claims against.
-/

/-! ## A015472.P10736489320538068422

`A016417(A007089(n)%A321570(n+1))`
-/

namespace A015472.P10736489320538068422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016417 (Int.tmod (A007089 n) (A321570 (n + 1))).toNat

end

end A015472.P10736489320538068422

/-! ## A015472.P6043129275583564419

`A016417(A007089(n))`
-/

namespace A015472.P6043129275583564419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016417 (A007089 n).toNat

end

end A015472.P6043129275583564419

/-! ## A015472.P2264544598840340485

`A016417(A159952(n+1))`
-/

namespace A015472.P2264544598840340485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016417 (A159952 (n + 1)).toNat

end

end A015472.P2264544598840340485

/-! ## A015472.P4615502071048826279

`A016360(A024640(n))`
-/

namespace A015472.P4615502071048826279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016360 (A024640 n).toNat

end

end A015472.P4615502071048826279

/-!
# A015473: q-Fibonacci numbers for q=2, scale a(n-1).

The programs for A015473, the canonical program `A015473.P6057162485237954035` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015473 has offset 0).

The definition of A015473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015473.P6057162485237954035

`2^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015473

/-- `2^(n-1)*a(n-1)+a(n-2)` -/
def P6057162485237954035.Spec : Prop :=
  ∀ n, P6057162485237954035.a n = (A015473 n : ℚ)

end A015473

/-! ## A015473.P11732523211236444615

`A127612(ceil(2^(n-1)))%or(1, 10^n)`
-/

namespace A015473.P11732523211236444615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127612 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (Nat.lor 1 (10 ^ n) : ℤ)

end

end A015473.P11732523211236444615

namespace A015473

/-- `A127612(ceil(2^(n-1)))%or(1, 10^n)` -/
def P11732523211236444615.Spec : Prop :=
  ∀ n, P11732523211236444615.a n = A015473 n

end A015473

/-!
# A015474: q-Fibonacci numbers for q=3, scale a(n-1).

The programs for A015474, the canonical program `A015474.P14332478178526608739` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015474 has offset 0).

The definition of A015474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015474.P14332478178526608739

`3^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015474

/-- `3^(n-1)*a(n-1)+a(n-2)` -/
def P14332478178526608739.Spec : Prop :=
  ∀ n, P14332478178526608739.a n = (A015474 n : ℚ)

end A015474

/-! ## A015474.P16350584715919366320

`A005836(A015473(n)+1)`
-/

namespace A015474.P16350584715919366320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A015473 n + 1).toNat

end

end A015474.P16350584715919366320

namespace A015474

/-- `A005836(A015473(n)+1)` -/
def P16350584715919366320.Spec : Prop :=
  ∀ n, P16350584715919366320.a n = A015474 n

end A015474

/-!
# A015475: q-Fibonacci numbers for q=4, scaling a(n-1).

The programs for A015475, the canonical program `A015475.P4127816596210924181` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015475 has offset 0).

The definition of A015475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015475.P4127816596210924181

`4^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015475

/-- `4^(n-1)*a(n-1)+a(n-2)` -/
def P4127816596210924181.Spec : Prop :=
  ∀ n, P4127816596210924181.a n = (A015475 n : ℚ)

end A015475

/-! ## A015475.P3102825016815784136

`A000695(A015473(n))`
-/

namespace A015475.P3102825016815784136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A015473 n).toNat

end

end A015475.P3102825016815784136

namespace A015475

/-- `A000695(A015473(n))` -/
def P3102825016815784136.Spec : Prop :=
  ∀ n, P3102825016815784136.a n = A015475 n

end A015475

/-!
# A015476: q-Fibonacci numbers for q=5, scaling a(n-1).

The programs for A015476, the canonical program `A015476.P3870109531505420284` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015476 has offset 0).

The definition of A015476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015476.P3870109531505420284

`5^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015476

/-- `5^(n-1)*a(n-1)+a(n-2)` -/
def P3870109531505420284.Spec : Prop :=
  ∀ n, P3870109531505420284.a n = (A015476 n : ℚ)

end A015476

/-! ## A015476.P504762770596704071

`A033042(A015473(n))`
-/

namespace A015476.P504762770596704071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A015473 n).toNat

end

end A015476.P504762770596704071

namespace A015476

/-- `A033042(A015473(n))` -/
def P504762770596704071.Spec : Prop :=
  ∀ n, P504762770596704071.a n = A015476 n

end A015476

/-!
# A015477: q-Fibonacci numbers for q=6, scaling a(n-1).

The programs for A015477, the canonical program `A015477.P11338720294392721788` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015477 has offset 0).

The definition of A015477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015477.P11338720294392721788

`6^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015477

/-- `6^(n-1)*a(n-1)+a(n-2)` -/
def P11338720294392721788.Spec : Prop :=
  ∀ n, P11338720294392721788.a n = (A015477 n : ℚ)

end A015477

/-! ## A015477.P9083100328294389869

`A033043(A015473(n))`
-/

namespace A015477.P9083100328294389869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A015473 n).toNat

end

end A015477.P9083100328294389869

namespace A015477

/-- `A033043(A015473(n))` -/
def P9083100328294389869.Spec : Prop :=
  ∀ n, P9083100328294389869.a n = A015477 n

end A015477

/-!
# A015478: Inverse of 1469th cyclotomic polynomial.

The programs for A015478, there is no canonical definition to state claims against.
-/

/-! ## A015478.P4429435187066699198

`A015972(eq[A015966(n), A015970(2*(n+1))])`
-/

namespace A015478.P4429435187066699198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015478.P4429435187066699198

/-! ## A015478.P10845311578786306065

`A014706(A055645(n)+A002264(n))`
-/

namespace A015478.P10845311578786306065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014706 (A055645 n + A002264 n).toNat

end

end A015478.P10845311578786306065

/-! ## A015478.P12616919281869047394

`A129186(C(A101402(n), 3))`
-/

namespace A015478.P12616919281869047394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (Nat.choose (A101402 n).toNat 3)

end

end A015478.P12616919281869047394

/-! ## A015478.P15891845888624404944

`C(A333737(n), A326589(n))`
-/

namespace A015478.P15891845888624404944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333737 n).toNat (A326589 n).toNat

end

end A015478.P15891845888624404944

/-! ## A015478.P9480750535855824545

`C(A136431(n), ∑[A257850(n)])`
-/

namespace A015478.P9480750535855824545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A136431 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015478.P9480750535855824545

/-! ## A015478.P4519082828120209136

`A047999(A349195(n+4)²²)`
-/

namespace A015478.P4519082828120209136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 ((A349195 (n + 4) ^ 2) ^ 2).toNat

end

end A015478.P4519082828120209136

/-! ## A015478.P3885878011765089778

`A010056(A004111(floor(sqrt(2*n))+1))`
-/

namespace A015478.P3885878011765089778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A004111 (Nat.sqrt (2 * n) + 1)).toNat

end

end A015478.P3885878011765089778

/-! ## A015478.P15752638480147370128

`A010052(∏[char[A002144(n+1)]+1]-1)`
-/

namespace A015478.P15752638480147370128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A015478.P15752638480147370128

/-! ## A015478.P13770789610711673701

`A096651(C(comp[A088513(n+1)+1]-n, 2))`
-/

namespace A015478.P13770789610711673701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088513 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2)

end

end A015478.P13770789610711673701

/-! ## A015478.P10948463090603075400

`C(A215703(A168561(n)), A345166(n))`
-/

namespace A015478.P10948463090603075400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215703 (A168561 n).toNat).toNat (A345166 n).toNat

end

end A015478.P10948463090603075400

/-! ## A015478.P6661214301308046457

`round(1/A286305(A286305(n)))`
-/

namespace A015478.P6661214301308046457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A286305 (A286305 n).toNat : ℚ))

end

end A015478.P6661214301308046457

/-! ## A015478.P9902280245859362869

`floor(A071561(n+1)/A304721(n+1))`
-/

namespace A015478.P9902280245859362869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071561 (n + 1) : ℚ) / (A304721 (n + 1) : ℚ)⌋

end

end A015478.P9902280245859362869

/-! ## A015478.P5738204269563805305

`A010057(A000392(round(sqrt(n))))`
-/

namespace A015478.P5738204269563805305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000392 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat

end

end A015478.P5738204269563805305

/-! ## A015478.P14293762665684101952

`C(A053263(n), A034709(A053263(n)))`
-/

namespace A015478.P14293762665684101952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053263 n).toNat (A034709 (A053263 n).toNat).toNat

end

end A015478.P14293762665684101952

/-! ## A015478.P1505880748223222186

`A094497(n)^A345166(A002264(2*(n+2)))`
-/

namespace A015478.P1505880748223222186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094497 n : ℚ) ^ (A345166 (A002264 (2 * (n + 2))).toNat : ℤ)

end

end A015478.P1505880748223222186

/-!
# A015479: q-Fibonacci numbers for q=7, scaling a(n-1).

The programs for A015479, the canonical program `A015479.P14086849698868816499` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015479 has offset 0).

The definition of A015479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015479.P14086849698868816499

`7^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015479

/-- `7^(n-1)*a(n-1)+a(n-2)` -/
def P14086849698868816499.Spec : Prop :=
  ∀ n, P14086849698868816499.a n = (A015479 n : ℚ)

end A015479

/-! ## A015479.P12150129006665798154

`A033044(A015473(n)+1)`
-/

namespace A015479.P12150129006665798154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A015473 n + 1).toNat

end

end A015479.P12150129006665798154

namespace A015479

/-- `A033044(A015473(n)+1)` -/
def P12150129006665798154.Spec : Prop :=
  ∀ n, P12150129006665798154.a n = A015479 n

end A015479

/-!
# A015480: q-Fibonacci numbers for q=8, scaling a(n-1).

The programs for A015480, the canonical program `A015480.P1685834389804888557` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015480 has offset 0).

The definition of A015480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015480.P1685834389804888557

`8^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015480

/-- `8^(n-1)*a(n-1)+a(n-2)` -/
def P1685834389804888557.Spec : Prop :=
  ∀ n, P1685834389804888557.a n = (A015480 n : ℚ)

end A015480

/-!
# A015481: q-Fibonacci numbers for q=9, scaling a(n-1).

The programs for A015481, the canonical program `A015481.P2867451734331592700` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015481 has offset 0).

The definition of A015481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015481.P2867451734331592700

`9^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015481

/-- `9^(n-1)*a(n-1)+a(n-2)` -/
def P2867451734331592700.Spec : Prop :=
  ∀ n, P2867451734331592700.a n = (A015481 n : ℚ)

end A015481

/-! ## A015481.P2322340441040796481

`A033046(A015473(n))`
-/

namespace A015481.P2322340441040796481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A015473 n).toNat

end

end A015481.P2322340441040796481

namespace A015481

/-- `A033046(A015473(n))` -/
def P2322340441040796481.Spec : Prop :=
  ∀ n, P2322340441040796481.a n = A015481 n

end A015481

/-!
# A015482: q-Fibonacci numbers for q=10, scaling a(n-1).

The programs for A015482, the canonical program `A015482.P4107649290320531552` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015482 has offset 0).

The definition of A015482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015482.P4107649290320531552

`10^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015482

/-- `10^(n-1)*a(n-1)+a(n-2)` -/
def P4107649290320531552.Spec : Prop :=
  ∀ n, P4107649290320531552.a n = (A015482 n : ℚ)

end A015482

/-! ## A015482.P10060969914129992739

`A007088(A015473(n))`
-/

namespace A015482.P10060969914129992739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A015473 n).toNat

end

end A015482.P10060969914129992739

namespace A015482

/-- `A007088(A015473(n))` -/
def P10060969914129992739.Spec : Prop :=
  ∀ n, P10060969914129992739.a n = A015482 n

end A015482

/-!
# A015483: Inverse of 1474th cyclotomic polynomial.

The programs for A015483, there is no canonical definition to state claims against.
-/

/-! ## A015483.P15220744285385974473

`A014746(n)*A033999(n)`
-/

namespace A015483.P15220744285385974473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014746 n * A033999 n

end

end A015483.P15220744285385974473

/-! ## A015483.P9218237700048208544

`(-floor(A087643(n+3)/A161346(n+1)))^n`
-/

namespace A015483.P9218237700048208544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌊(A087643 (n + 3) : ℚ) / (A161346 (n + 1) : ℚ)⌋) ^ n

end

end A015483.P9218237700048208544

/-! ## A015483.P15892551014475997253

`(-round(A335235(n+1)/A154893(n+1)))^n`
-/

namespace A015483.P15892551014475997253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-SequenceMachineLib.roundAway ((A335235 (n + 1) : ℚ) / (A154893 (n + 1) : ℚ))) ^ n

end

end A015483.P15892551014475997253

/-! ## A015483.P10128053193273440248

`A010815(A005448(n+1)-A353866(n+1))`
-/

namespace A015483.P10128053193273440248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005448 (n + 1) - A353866 (n + 1)).toNat

end

end A015483.P10128053193273440248

/-! ## A015483.P17932909952480753082

`(-C(n, A353744(n+1)))^n`
-/

namespace A015483.P17932909952480753082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose n (A353744 (n + 1)).toNat : ℤ)) ^ n

end

end A015483.P17932909952480753082

/-! ## A015483.P4550131248304472300

`(A340860(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A015483.P4550131248304472300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A340860 n - 1) * a (n - 1)

end

end A015483.P4550131248304472300

/-! ## A015483.P11022231768116124086

`A016275(n)/A000034(A014557(n))`
-/

namespace A015483.P11022231768116124086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) / (A000034 (A014557 n).toNat : ℚ)

end

end A015483.P11022231768116124086

/-! ## A015483.P935520861837717

`A010815(A333223(n+1)+A000326(n))`
-/

namespace A015483.P935520861837717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A333223 (n + 1) + A000326 n).toNat

end

end A015483.P935520861837717

/-! ## A015483.P3630763855387553846

`val(A091020(n), A194366(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015483.P3630763855387553846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A091020 n).toNat (A194366 (n + 1)).toNat : ℤ) - a (n - 1)

end

end A015483.P3630763855387553846

/-! ## A015483.P1792273002877963817

`val(A256468(n), A194366(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015483.P1792273002877963817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A256468 n).toNat (A194366 (n + 1)).toNat : ℤ) - a (n - 1)

end

end A015483.P1792273002877963817

/-!
# A015484: q-Fibonacci numbers for q=11, scaling a(n-1).

The programs for A015484, the canonical program `A015484.P5038509184695025932` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015484 has offset 0).

The definition of A015484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015484.P5038509184695025932

`11^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015484

/-- `11^(n-1)*a(n-1)+a(n-2)` -/
def P5038509184695025932.Spec : Prop :=
  ∀ n, P5038509184695025932.a n = (A015484 n : ℚ)

end A015484

/-!
# A015485: q-Fibonacci numbers for q=12, scaling a(n-1).

The programs for A015485, the canonical program `A015485.P11170823866583203512` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015485 has offset 0).

The definition of A015485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015485.P11170823866583203512

`12^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015485

/-- `12^(n-1)*a(n-1)+a(n-2)` -/
def P11170823866583203512.Spec : Prop :=
  ∀ n, P11170823866583203512.a n = (A015485 n : ℚ)

end A015485

/-!
# A015486: a(0)=1, a(1)=2, a(n) = sum_{k=0}^{k=n-1} 2^k a(k).

The programs for A015486, there is no canonical definition to state claims against.
-/

/-! ## A015486.P8389544685522512315

`(2^(n-1)+1)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A015486.P8389544685522512315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) * a (n - 1)

end

end A015486.P8389544685522512315

/-! ## A015486.P14729917946124526085

`a(n-1)*A094373(n)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A015486.P14729917946124526085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) * A094373 n

end

end A015486.P14729917946124526085

/-! ## A015486.P1391163036846398874

`a(n-1)*A127904(n)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A015486.P1391163036846398874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) * A127904 n

end

end A015486.P1391163036846398874

/-! ## A015486.P305148091325819811

`a(n-1)*Δ[A052968(n)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A015486.P305148091325819811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A015486.P305148091325819811

/-! ## A015486.P7848789413155046480

`a(n-1)*A228693(2*n)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A015486.P7848789413155046480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) * A228693 (2 * n)

end

end A015486.P7848789413155046480

/-!
# A015487: a(0)=1, a(1)=3, a(n) = sum_{k=0}^{k=n-1} 3^k a(k).

The programs for A015487, there is no canonical definition to state claims against.
-/

/-! ## A015487.P14466700333092542894

`a(n-1)*A094388(n)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A015487.P14466700333092542894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  a (n - 1) * A094388 n

end

end A015487.P14466700333092542894

/-! ## A015487.P696912931630797927

`(A140429(n)+1)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A015487.P696912931630797927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  (A140429 n + 1) * a (n - 1)

end

end A015487.P696912931630797927

/-! ## A015487.P6709537471558971470

`a(n-1)*A103457(n-1)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A015487.P6709537471558971470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  a (n - 1) * A103457 (n - 1)

end

end A015487.P6709537471558971470

/-!
# A015488: Inverse of 1479th cyclotomic polynomial.

The programs for A015488, there is no canonical definition to state claims against.
-/

/-! ## A015488.P12142119730258209054

`A015896(n)-A015899(A294847(n))`
-/

namespace A015488.P12142119730258209054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015896 n - A015899 (A294847 n).toNat

end

end A015488.P12142119730258209054

/-! ## A015488.P14338619631441563176

`A049347(lt[A212217(n+3), A039649(n+1)])`
-/

namespace A015488.P14338619631441563176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212217 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015488.P14338619631441563176

/-! ## A015488.P6786758780518551146

`A049347(lt[A285947(n), A237642(2*n+1)])`
-/

namespace A015488.P6786758780518551146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237642 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015488.P6786758780518551146

/-! ## A015488.P7038126944354183215

`A015590(n)%A139092(n+4)`
-/

namespace A015488.P7038126944354183215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015590 n) (A139092 (n + 4))

end

end A015488.P7038126944354183215

/-! ## A015488.P5808147756519780767

`A015896(n)%A139092(n+4)`
-/

namespace A015488.P5808147756519780767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015896 n) (A139092 (n + 4))

end

end A015488.P5808147756519780767

/-!
# A015489: a(0)=1, a(1)=4, a(n) = Sum_{k=0..n-1} 4^k*a(k).

The programs for A015489, the canonical program `A015489.P15900155062899305530` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015489 has offset 0).

The definition of A015489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015489.P15900155062899305530

`(4^(n-1)+1)*a(n-1)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015489

/-- `(4^(n-1)+1)*a(n-1)` -/
def P15900155062899305530.Spec : Prop :=
  ∀ n, P15900155062899305530.a n = (A015489 n : ℚ)

end A015489

/-!
# A015491: Inverse of 1482nd cyclotomic polynomial.

The programs for A015491, there is no canonical definition to state claims against.
-/

/-! ## A015491.P13988509900732738764

`A014750(n)*A033999(n)`
-/

namespace A015491.P13988509900732738764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014750 n * A033999 n

end

end A015491.P13988509900732738764

/-! ## A015491.P10570561619447509187

`A016340(A055964(n))`
-/

namespace A015491.P10570561619447509187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (A055964 n).toNat

end

end A015491.P10570561619447509187

/-! ## A015491.P9338225703522046911

`A016350(A276326(n))`
-/

namespace A015491.P9338225703522046911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (A276326 n).toNat

end

end A015491.P9338225703522046911

/-! ## A015491.P8470653381782527050

`A010892(A247755(n+1)^3)`
-/

namespace A015491.P8470653381782527050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A247755 (n + 1) ^ 3).toNat

end

end A015491.P8470653381782527050

/-! ## A015491.P2467273262354129443

`A010892(lt[A331913(n+1), A292276(2*n+1)])`
-/

namespace A015491.P2467273262354129443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292276 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015491.P2467273262354129443

/-!
# A015493: Inverse of 1484th cyclotomic polynomial.

The programs for A015493, there is no canonical definition to state claims against.
-/

/-! ## A015493.P14419991585145450105

`A015997(n)^∑[A004018(A071341(n))]`
-/

namespace A015493.P14419991585145450105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A071341 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A015493.P14419991585145450105

/-! ## A015493.P1128284544941978932

`A016192(A308920(n+2))*A016221(n)`
-/

namespace A015493.P1128284544941978932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A308920 (n + 2)).toNat * A016221 n

end

end A015493.P1128284544941978932

/-! ## A015493.P17003341778047904815

`A015997(n)/(A096008(A245851(n+1))+1)`
-/

namespace A015493.P17003341778047904815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) / (A096008 (A245851 (n + 1)).toNat + 1 : ℚ)

end

end A015493.P17003341778047904815

/-! ## A015493.P9950118867576715182

`A015997(n)^A247814(A245851(n+1)+1)`
-/

namespace A015493.P9950118867576715182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A247814 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015493.P9950118867576715182

/-! ## A015493.P10855953917895683411

`A015997(n)^A333217(A245851(n+1)+1)`
-/

namespace A015493.P10855953917895683411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A333217 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015493.P10855953917895683411

/-! ## A015493.P4058468714589598014

`A015885(n)^A000203(A210217(n+1))`
-/

namespace A015493.P4058468714589598014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015885 n : ℚ) ^ (A000203 (A210217 (n + 1)).toNat : ℤ)

end

end A015493.P4058468714589598014

/-! ## A015493.P3648530710061919519

`A015885(n)^((n+1)²/A073843((n+1)²))`
-/

namespace A015493.P3648530710061919519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A015885 n : ℝ) ^ (((n + 1) ^ 2 : ℚ) / (A073843 ((n + 1) ^ 2) : ℚ) : ℝ)

end

end A015493.P3648530710061919519

/-!
# A015494: Inverse of 1485th cyclotomic polynomial.

The programs for A015494, there is no canonical definition to state claims against.
-/

/-! ## A015494.P1034883638751847144

`A014504(gcd(n, A005900(n)))`
-/

namespace A015494.P1034883638751847144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014504 (Int.gcd (n : ℤ) (A005900 n))

end

end A015494.P1034883638751847144

/-!
# A015498: a(0)=1, a(1)=10, a(n) = sum_{k=0}^{k=n-1} 10^k a(k).

The programs for A015498, there is no canonical definition to state claims against.
-/

/-! ## A015498.P1826120538867983834

`A007089(A015487(n))`
-/

namespace A015498.P1826120538867983834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A015487 n).toNat

end

end A015498.P1826120538867983834

