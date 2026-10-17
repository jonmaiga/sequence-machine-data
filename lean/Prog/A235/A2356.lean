import SequenceMachineLib
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C026

/-!
# A235600: a(n) = n/d(n) if d(n) divides n, otherwise a(n) = n, where d(n) is the sum of the digits of n (A007953).

The programs for A235600, there is no canonical definition to state claims against.
-/

/-! ## A235600.P17746457749414579271

`n%A110367(n+1)+1`
-/

namespace A235600.P17746457749414579271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A110367 (n + 1)) + 1

end

end A235600.P17746457749414579271

/-! ## A235600.P15929703159233266940

`gcd(A110367(n+1), A131738(n))`
-/

namespace A235600.P15929703159233266940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110367 (n + 1)) (A131738 n)

end

end A235600.P15929703159233266940

/-! ## A235600.P12468788485511205013

`lcm(A065517(n+1), A385105(n+1))`
-/

namespace A235600.P12468788485511205013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065517 (n + 1)) (A385105 (n + 1))

end

end A235600.P12468788485511205013

/-! ## A235600.P12687980327502687357

`gcd(A000027(n+1), A110367(A000027(n+1)))`
-/

namespace A235600.P12687980327502687357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A110367 (A000027 (n + 1)).toNat)

end

end A235600.P12687980327502687357

/-!
# A235601: Smallest number m such that repeated application of A235600 takes n steps to reach 1, where A235600(k) = k/A007953(k) if the digital sum A007953(k) divides k, A235600(k) = k otherwise.

The programs for A235601, there is no canonical definition to state claims against.
-/

/-! ## A235601.P9622236980984653157

`∏[record[A007953(A004152(n))]]`
-/

namespace A235601.P9622236980984653157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004152 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235601.P9622236980984653157

/-! ## A235601.P17990215568088369917

`∏[record[A007953(A026549(n))]]`
-/

namespace A235601.P17990215568088369917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A026549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235601.P17990215568088369917

/-!
# A235602: a(n) = n/wt(n) if wt(n) divides n, otherwise a(n) = n, where wt(n) is the binary weight of n (A000120).

The programs for A235602, there is no canonical definition to state claims against.
-/

/-! ## A235602.P4223596596326121

`(n+1)/A095955(A290479(n+1))`
-/

namespace A235602.P4223596596326121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A095955 (A290479 (n + 1)).toNat : ℚ)

end

end A235602.P4223596596326121

/-! ## A235602.P7134997744781510952

`A000027(n+1)/A348416(A290479(n+1))`
-/

namespace A235602.P7134997744781510952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A348416 (A290479 (n + 1)).toNat : ℚ)

end

end A235602.P7134997744781510952

/-! ## A235602.P7168153126071506614

`A153679(A153679(n+1))/A348416(n+1)`
-/

namespace A235602.P7168153126071506614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153679 (A153679 (n + 1)).toNat : ℚ) / (A348416 (n + 1) : ℚ)

end

end A235602.P7168153126071506614

/-! ## A235602.P12187882873942852304

`A326567(A325094(n+1))`
-/

namespace A235602.P12187882873942852304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A325094 (n + 1)).toNat

end

end A235602.P12187882873942852304

/-! ## A235602.P14196819320866663933

`A143824(A003022(n+2))/A348416(n+1)`
-/

namespace A235602.P14196819320866663933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143824 (A003022 (n + 2)).toNat : ℚ) / (A348416 (n + 1) : ℚ)

end

end A235602.P14196819320866663933

/-!
# A235603: Minimal weight of a p-slope addition chain, where p = prime(n).

The programs for A235603, there is no canonical definition to state claims against.
-/

/-! ## A235603.P17929838592912259486

`A182008(4*A127919(n+1))`
-/

namespace A235603.P17929838592912259486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (4 * A127919 (n + 1)).toNat

end

end A235603.P17929838592912259486

/-! ## A235603.P8195984343802785460

`A002024(A030078(n+1)-∑[n*∑[n]])`
-/

namespace A235603.P8195984343802785460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A030078 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A235603.P8195984343802785460

/-! ## A235603.P9034882267130234564

`A003057(A030078(n+1))-A005378(n)`
-/

namespace A235603.P9034882267130234564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A030078 (n + 1)).toNat - A005378 n

end

end A235603.P9034882267130234564

/-! ## A235603.P699165192224397812

`A003057(A083558(n+1)-A001333(n))`
-/

namespace A235603.P699165192224397812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A083558 (n + 1) - A001333 n).toNat

end

end A235603.P699165192224397812

/-!
# A235604: Number of equivalence classes of lattices of subsets of the power set 2^[n].

The programs for A235604, there is no canonical definition to state claims against.
-/

/-! ## A235604.P5909150306737252516

`A355517(char[1]+n)`
-/

namespace A235604.P5909150306737252516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355517 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A235604.P5909150306737252516

/-! ## A235604.P5352153335242959372

`A355517(n)-char[1]`
-/

namespace A235604.P5352153335242959372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355517 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235604.P5352153335242959372

/-! ## A235604.P249805043435278524

`gcd(A240328(n), A355517(n))`
-/

namespace A235604.P249805043435278524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240328 n) (A355517 n)

end

end A235604.P249805043435278524

/-!
# A235605: Shanks's array c_{a,n} (a >= 1, n >= 0) that generalizes Euler and class numbers, read by antidiagonals upwards.

The programs for A235605, there is no canonical definition to state claims against.
-/

/-! ## A235605.P3919935844832304125

`A349271(A245300(n)+A002260(n+1))`
-/

namespace A235605.P3919935844832304125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349271 (A245300 n + A002260 (n + 1)).toNat

end

end A235605.P3919935844832304125

/-! ## A235605.P10340802938779962902

`A055019(A289714(n))`
-/

namespace A235605.P10340802938779962902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055019 (A289714 n).toNat

end

end A235605.P10340802938779962902

/-! ## A235605.P10106527471537152406

`A371209(A192337(n+2))`
-/

namespace A235605.P10106527471537152406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371209 (A192337 (n + 2)).toNat

end

end A235605.P10106527471537152406

/-! ## A235605.P7640440367262154709

`A114225(A374518(n)+A083219(n))`
-/

namespace A235605.P7640440367262154709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 (A374518 n + A083219 n).toNat

end

end A235605.P7640440367262154709

/-! ## A235605.P14106696439627214096

`gcd(A013937(A024023(n)), A042087(n))`
-/

namespace A235605.P14106696439627214096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013937 (A024023 n).toNat) (A042087 n)

end

end A235605.P14106696439627214096

/-!
# A235607: Number of random-noble-means substitution-legal words of length n.

The programs for A235607, there is no canonical definition to state claims against.
-/

/-! ## A235607.P18330305997248162329

`A002024(A001550(n))-A290624(n)`
-/

namespace A235607.P18330305997248162329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001550 n).toNat - A290624 n

end

end A235607.P18330305997248162329

/-! ## A235607.P7420491784297266765

`A002024(A007689(n))-A290546(n)`
-/

namespace A235607.P7420491784297266765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007689 n).toNat - A290546 n

end

end A235607.P7420491784297266765

/-! ## A235607.P6935602455735791200

`A002024(A007689(n))-A291700(n)`
-/

namespace A235607.P6935602455735791200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007689 n).toNat - A291700 n

end

end A235607.P6935602455735791200

/-! ## A235607.P15723656093663427689

`A085089(A364472(n))+A000720(n+1)`
-/

namespace A235607.P15723656093663427689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A364472 n).toNat + A000720 (n + 1)

end

end A235607.P15723656093663427689

/-!
# A235609: List of privileged words over the alphabet {1,2}.

The programs for A235609, there is no canonical definition to state claims against.
-/

/-! ## A235609.P2306507083875488353

`A007931(A341257(n+1)%A214786(n+1))`
-/

namespace A235609.P2306507083875488353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.tmod (A341257 (n + 1)) (A214786 (n + 1))).toNat

end

end A235609.P2306507083875488353

/-! ## A235609.P12096139572022640595

`A007931(A341257(n+1))+A000007(A109449(n))`
-/

namespace A235609.P12096139572022640595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A341257 (n + 1)).toNat + A000007 (A109449 n).toNat

end

end A235609.P12096139572022640595

/-! ## A235609.P12061336693278447536

`A007931(A341257(n+1))+A000007(A008282(n+1))`
-/

namespace A235609.P12061336693278447536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A341257 (n + 1)).toNat + A000007 (A008282 (n + 1)).toNat

end

end A235609.P12061336693278447536

/-! ## A235609.P14760651192199317032

`A007931(A341257(n+1))*A066637(A086259(n+1))`
-/

namespace A235609.P14760651192199317032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A341257 (n + 1)).toNat * A066637 (A086259 (n + 1)).toNat

end

end A235609.P14760651192199317032

/-! ## A235609.P8478560298042825684

`∩[A002113(n+1), A007931(n+1)]`
-/

namespace A235609.P8478560298042825684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235609.P8478560298042825684

/-!
# A235611: First row of array in A235610.

The programs for A235611, there is no canonical definition to state claims against.
-/

/-! ## A235611.P9959317959820166150

`A235610(∑[n+1])`
-/

namespace A235611.P9959317959820166150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235611.P9959317959820166150

/-! ## A235611.P14193460868457055148

`ceil(Δ[root(A339281(2*(n+1)), 4)])`
-/

namespace A235611.P14193460868457055148
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A339281 (2 * (n + 1)) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A235611.P14193460868457055148

/-! ## A235611.P8304475002009310480

`record[A235610(A133825(n))]`
-/

namespace A235611.P8304475002009310480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235611.P8304475002009310480

/-! ## A235611.P16767310018850912953

`record[A235610(A328371(n+1))]`
-/

namespace A235611.P16767310018850912953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (A328371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235611.P16767310018850912953

/-!
# A235612: Second column of array in A235610.

The programs for A235612, there is no canonical definition to state claims against.
-/

/-! ## A235612.P4684120815228747888

`A235610(∑[n+1]+2)`
-/

namespace A235612.P4684120815228747888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235612.P4684120815228747888

/-! ## A235612.P16910208055859774339

`record[A235610(A254106(n+1)+2)]`
-/

namespace A235612.P16910208055859774339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (A254106 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235612.P16910208055859774339

/-! ## A235612.P12983255427176563572

`record[A235610(n+3)/A235608(n)]`
-/

namespace A235612.P12983255427176563572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235610 (n + 3) : ℚ) / (A235608 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235612.P12983255427176563572

/-!
# A235613: Number of ways to write n = k + m (0 < k <= m) with k and m terms of A235592.

The programs for A235613, there is no canonical definition to state claims against.
-/

/-! ## A235613.P14256251252392659450

`A073855(A110654(A293957(n)²))`
-/

namespace A235613.P14256251252392659450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A110654 (A293957 n ^ 2).toNat).toNat

end

end A235613.P14256251252392659450

/-! ## A235613.P6905069188165342172

`A328615(or(A005563(n), A211797(n)))`
-/

namespace A235613.P6905069188165342172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (Int.lor (A005563 n) (A211797 n)).toNat

end

end A235613.P6905069188165342172

/-! ## A235613.P9859185157074805724

`A262303(A066813(n+1)+A000010(2*(n+1)))`
-/

namespace A235613.P9859185157074805724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (A066813 (n + 1) + A000010 (2 * (n + 1))).toNat

end

end A235613.P9859185157074805724

/-!
# A235614: Number of ordered ways to write n = k + m with k a term of A235592 and m a positive triangular number.

The programs for A235614, there is no canonical definition to state claims against.
-/

/-! ## A235614.P970080390459821866

`A240857(record[A014200(A235711(n))])`
-/

namespace A235614.P970080390459821866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A235711 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235614.P970080390459821866

/-!
# A235615: Primes whose base-5 representation also is the base-4 representation of a prime.

The programs for A235615, there is no canonical definition to state claims against.
-/

/-! ## A235615.P5470278632673391490

`p?[A020654(A028815(n))]`
-/

namespace A235615.P5470278632673391490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P5470278632673391490

/-! ## A235615.P23336893849286005

`A020655(A235474(n+1))`
-/

namespace A235615.P23336893849286005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A235474 (n + 1)).toNat

end

end A235615.P23336893849286005

/-! ## A235615.P13008922392720776040

`p?[A020655(A000040(n+1))]`
-/

namespace A235615.P13008922392720776040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P13008922392720776040

/-! ## A235615.P3065688464742174758

`p?[A020655(A008578(n+1))]`
-/

namespace A235615.P3065688464742174758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P3065688464742174758

/-! ## A235615.P8269761143358458111

`p?[A020654(A008864(n+1))]`
-/

namespace A235615.P8269761143358458111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P8269761143358458111

/-! ## A235615.P3396266225388347917

`A020654(A235474(n+1)+1)`
-/

namespace A235615.P3396266225388347917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A235474 (n + 1) + 1).toNat

end

end A235615.P3396266225388347917

/-! ## A235615.P2894830673253172217

`p?[A020655(sqrt(A001248(n+1)))]`
-/

namespace A235615.P2894830673253172217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P2894830673253172217

/-! ## A235615.P6839397883579732149

`p?[A020654(A000040(n+1)+1)]`
-/

namespace A235615.P6839397883579732149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P6839397883579732149

/-! ## A235615.P2594949366388933811

`p?[A020655(A006093(n+1)+1)]`
-/

namespace A235615.P2594949366388933811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235615.P2594949366388933811

/-! ## A235615.P15239707476856840923

`record[A006530(A020655(A162753(n)))]`
-/

namespace A235615.P15239707476856840923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020655 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235615.P15239707476856840923

/-!
# A235616: Primes whose base-6 representation also is the base-4 representation of a prime.

The programs for A235616, there is no canonical definition to state claims against.
-/

/-! ## A235616.P11275094539020898670

`p?[A037460(A209259(n))]`
-/

namespace A235616.P11275094539020898670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235616.P11275094539020898670

/-! ## A235616.P861182554981567700

`A037460(A235624(n+1))`
-/

namespace A235616.P861182554981567700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A235624 (n + 1)).toNat

end

end A235616.P861182554981567700

/-! ## A235616.P14207531755101817790

`p?[A037460(A000040(n+1))]`
-/

namespace A235616.P14207531755101817790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235616.P14207531755101817790

/-! ## A235616.P15264619471521495231

`p?[A037460(A001751(n+1))]`
-/

namespace A235616.P15264619471521495231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235616.P15264619471521495231

/-! ## A235616.P10798923961665027846

`p?[A032741(n)*A037460(n)]`
-/

namespace A235616.P10798923961665027846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A037460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235616.P10798923961665027846

/-!
# A235617: Primes whose base-7 representation also is the base-4 representation of a prime.

The programs for A235617, there is no canonical definition to state claims against.
-/

/-! ## A235617.P6342386794126799308

`A037461(A235634(n+1))`
-/

namespace A235617.P6342386794126799308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A235634 (n + 1)).toNat

end

end A235617.P6342386794126799308

/-! ## A235617.P7916433108616854229

`p?[A037461(A000040(n+1))]`
-/

namespace A235617.P7916433108616854229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P7916433108616854229

/-! ## A235617.P13677025569623499939

`p?[A037461(A008578(n+1))]`
-/

namespace A235617.P13677025569623499939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P13677025569623499939

/-! ## A235617.P7587556530096845802

`p?[A037461(A033946(n+1))]`
-/

namespace A235617.P7587556530096845802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P7587556530096845802

/-! ## A235617.P3925057008204035740

`p?[A037461(A045319(n+1))]`
-/

namespace A235617.P3925057008204035740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P3925057008204035740

/-! ## A235617.P10370447561273926930

`p?[A037461(sqrt(A001248(n+1)))]`
-/

namespace A235617.P10370447561273926930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P10370447561273926930

/-! ## A235617.P13125299157402303749

`p?[A037461(record[A014963(n+1)])]`
-/

namespace A235617.P13125299157402303749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P13125299157402303749

/-! ## A235617.P10498849851455243586

`p?[A037461(p?[A249817(n+1)])]`
-/

namespace A235617.P10498849851455243586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P10498849851455243586

/-! ## A235617.P16157634822416725626

`p?[A037461(A005180(n+1))]`
-/

namespace A235617.P16157634822416725626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P16157634822416725626

/-! ## A235617.P8094072630824677484

`p?[A001222(n+1)*A037461(n+1)]`
-/

namespace A235617.P8094072630824677484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A037461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235617.P8094072630824677484

/-!
# A235618: Primes whose base-8 representation also is the base-4 representation of a prime.

The programs for A235618, there is no canonical definition to state claims against.
-/

/-! ## A235618.P9001987987685768688

`p?[A037462(A209259(n))]`
-/

namespace A235618.P9001987987685768688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235618.P9001987987685768688

/-! ## A235618.P9186957051592584024

`A037462(A235633(n+1))`
-/

namespace A235618.P9186957051592584024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A235633 (n + 1)).toNat

end

end A235618.P9186957051592584024

/-! ## A235618.P730912139704192349

`p?[A037462(A000040(n+1))]`
-/

namespace A235618.P730912139704192349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235618.P730912139704192349

/-! ## A235618.P143691037415497071

`p?[A037462(A001751(n+1))]`
-/

namespace A235618.P143691037415497071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235618.P143691037415497071

/-! ## A235618.P5642459296450170386

`p?[(A037462(n)+1)*A001222(n+1)]`
-/

namespace A235618.P5642459296450170386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037462 n + 1) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235618.P5642459296450170386

/-!
# A235619: Primes whose base-9 representation also is the base-4 representation of a prime.

The programs for A235619, there is no canonical definition to state claims against.
-/

/-! ## A235619.P11158586000667947621

`A037463(A235481(n+1))`
-/

namespace A235619.P11158586000667947621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A235481 (n + 1)).toNat

end

end A235619.P11158586000667947621

/-! ## A235619.P16899000278753636623

`p?[A037463(A000040(n+1))]`
-/

namespace A235619.P16899000278753636623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P16899000278753636623

/-! ## A235619.P760251672570045453

`p?[A037463(A008578(n+1))]`
-/

namespace A235619.P760251672570045453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P760251672570045453

/-! ## A235619.P7462914107381853232

`p?[A037463(p?[A015919(n+1)])]`
-/

namespace A235619.P7462914107381853232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P7462914107381853232

/-! ## A235619.P7439311474994356934

`p?[A037463(p?[A175067(n+1)])]`
-/

namespace A235619.P7439311474994356934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P7439311474994356934

/-! ## A235619.P11531759280737476413

`p?[A037463(A005180(n+1))]`
-/

namespace A235619.P11531759280737476413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P11531759280737476413

/-! ## A235619.P1664542939056066107

`p?[A037463(p?[A175068(n+1)])]`
-/

namespace A235619.P1664542939056066107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235619.P1664542939056066107

/-!
# A235620: Primes whose base-9 representation also is the base-8 representation of a prime.

The programs for A235620, the canonical program `A235620.P8527257182076827454` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235620 has offset 1).

The definition of A235620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235620.P17981723361304260792

`A037477(A231480(n+1))`
-/

namespace A235620.P17981723361304260792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A231480 (n + 1)).toNat

end

end A235620.P17981723361304260792

namespace A235620

/-- `A037477(A231480(n+1))` -/
def P17981723361304260792.Spec : Prop :=
  ∀ n, P17981723361304260792.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P14116150725744810256

`p?[A037477(p?[A209259(n)])]`
-/

namespace A235620.P14116150725744810256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P14116150725744810256

namespace A235620

/-- `p?[A037477(p?[A209259(n)])]` -/
def P14116150725744810256.Spec : Prop :=
  ∀ n, P14116150725744810256.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P16426617269752579481

`p?[A037477(p?[A260442(n)])]`
-/

namespace A235620.P16426617269752579481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P16426617269752579481

namespace A235620

/-- `p?[A037477(p?[A260442(n)])]` -/
def P16426617269752579481.Spec : Prop :=
  ∀ n, P16426617269752579481.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P8527257182076827454

`p?[A037477(A000040(n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235620

/-- `p?[A037477(A000040(n+1))]` -/
def P8527257182076827454.Spec : Prop :=
  ∀ n, P8527257182076827454.a n = A235620 (n + 1)

theorem P8527257182076827454.correct : P8527257182076827454.Spec := by
  intro n
  simp only [A235620, Nat.add_sub_cancel]

end A235620

/-! ## A235620.P4570631597789891949

`p?[A037477(A008578(n+1))]`
-/

namespace A235620.P4570631597789891949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P4570631597789891949

namespace A235620

/-- `p?[A037477(A008578(n+1))]` -/
def P4570631597789891949.Spec : Prop :=
  ∀ n, P4570631597789891949.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P8131877905940707231

`p?[A037477(A033946(n+1))]`
-/

namespace A235620.P8131877905940707231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P8131877905940707231

namespace A235620

/-- `p?[A037477(A033946(n+1))]` -/
def P8131877905940707231.Spec : Prop :=
  ∀ n, P8131877905940707231.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P8068349736557320567

`p?[A037477(A046022(n+1))]`
-/

namespace A235620.P8068349736557320567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A046022 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P8068349736557320567

namespace A235620

/-- `p?[A037477(A046022(n+1))]` -/
def P8068349736557320567.Spec : Prop :=
  ∀ n, P8068349736557320567.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P7802231950258896079

`p?[A037477(A174090(n+1))]`
-/

namespace A235620.P7802231950258896079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A174090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P7802231950258896079

namespace A235620

/-- `p?[A037477(A174090(n+1))]` -/
def P7802231950258896079.Spec : Prop :=
  ∀ n, P7802231950258896079.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P8219366567033968063

`p?[A037477(A324050(n+1))]`
-/

namespace A235620.P8219366567033968063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A324050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P8219366567033968063

namespace A235620

/-- `p?[A037477(A324050(n+1))]` -/
def P8219366567033968063.Spec : Prop :=
  ∀ n, P8219366567033968063.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P17473675545874007018

`p?[A037477(sqrt(A001248(n+1)))]`
-/

namespace A235620.P17473675545874007018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P17473675545874007018

namespace A235620

/-- `p?[A037477(sqrt(A001248(n+1)))]` -/
def P17473675545874007018.Spec : Prop :=
  ∀ n, P17473675545874007018.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P7202666075066468004

`p?[A037477(p?[A004273(n)+2])]`
-/

namespace A235620.P7202666075066468004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P7202666075066468004

namespace A235620

/-- `p?[A037477(p?[A004273(n)+2])]` -/
def P7202666075066468004.Spec : Prop :=
  ∀ n, P7202666075066468004.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P11153843294246511578

`p?[A037477(A006093(n+1)+1)]`
-/

namespace A235620.P11153843294246511578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P11153843294246511578

namespace A235620

/-- `p?[A037477(A006093(n+1)+1)]` -/
def P11153843294246511578.Spec : Prop :=
  ∀ n, P11153843294246511578.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P11087163489857938815

`p?[A037477(A040976(n+1)+2)]`
-/

namespace A235620.P11087163489857938815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P11087163489857938815

namespace A235620

/-- `p?[A037477(A040976(n+1)+2)]` -/
def P11087163489857938815.Spec : Prop :=
  ∀ n, P11087163489857938815.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P5820079600532858197

`p?[A037477(A134735(2*n+1))]`
-/

namespace A235620.P5820079600532858197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A134735 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P5820079600532858197

namespace A235620

/-- `p?[A037477(A134735(2*n+1))]` -/
def P5820079600532858197.Spec : Prop :=
  ∀ n, P5820079600532858197.a n = A235620 (n + 1)

end A235620

/-! ## A235620.P2709554816514678620

`p?[A037477(A001748(n+1)/3)]`
-/

namespace A235620.P2709554816514678620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P2709554816514678620

namespace A235620

/-- `p?[A037477(A001748(n+1)/3)]` -/
def P2709554816514678620.Spec : Prop :=
  ∀ n, P2709554816514678620.a n = A235620 (n + 1)

end A235620

/-!
# A235621: Primes whose base-9 representation also is the base-7 representation of a prime.

The programs for A235621, the canonical program `A235621.P10422737223195381463` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235621 has offset 1).

The definition of A235621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235621.P18087582616068466129

`p?[A037475(A209259(n))]`
-/

namespace A235621.P18087582616068466129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P18087582616068466129

namespace A235621

/-- `p?[A037475(A209259(n))]` -/
def P18087582616068466129.Spec : Prop :=
  ∀ n, P18087582616068466129.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P7551763026796601665

`A037475(A231479(n+1))`
-/

namespace A235621.P7551763026796601665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A231479 (n + 1)).toNat

end

end A235621.P7551763026796601665

namespace A235621

/-- `A037475(A231479(n+1))` -/
def P7551763026796601665.Spec : Prop :=
  ∀ n, P7551763026796601665.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P10422737223195381463

`p?[A037475(A000040(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235621

/-- `p?[A037475(A000040(n+1))]` -/
def P10422737223195381463.Spec : Prop :=
  ∀ n, P10422737223195381463.a n = A235621 (n + 1)

theorem P10422737223195381463.correct : P10422737223195381463.Spec := by
  intro n
  simp only [A235621, Nat.add_sub_cancel]

end A235621

/-! ## A235621.P9983724430124134383

`p?[A037475(A001751(n+1))]`
-/

namespace A235621.P9983724430124134383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P9983724430124134383

namespace A235621

/-- `p?[A037475(A001751(n+1))]` -/
def P9983724430124134383.Spec : Prop :=
  ∀ n, P9983724430124134383.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P6116585311030153126

`p?[A037475(A008578(n+1))]`
-/

namespace A235621.P6116585311030153126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P6116585311030153126

namespace A235621

/-- `p?[A037475(A008578(n+1))]` -/
def P6116585311030153126.Spec : Prop :=
  ∀ n, P6116585311030153126.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P15617147030191723729

`p?[A037475(sqrt(A001248(n+1)))]`
-/

namespace A235621.P15617147030191723729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P15617147030191723729

namespace A235621

/-- `p?[A037475(sqrt(A001248(n+1)))]` -/
def P15617147030191723729.Spec : Prop :=
  ∀ n, P15617147030191723729.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P10276005778551133577

`p?[A037475(p?[A015919(n+1)])]`
-/

namespace A235621.P10276005778551133577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P10276005778551133577

namespace A235621

/-- `p?[A037475(p?[A015919(n+1)])]` -/
def P10276005778551133577.Spec : Prop :=
  ∀ n, P10276005778551133577.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P17227666736691765532

`p?[A037475(A005180(n+1))]`
-/

namespace A235621.P17227666736691765532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P17227666736691765532

namespace A235621

/-- `p?[A037475(A005180(n+1))]` -/
def P17227666736691765532.Spec : Prop :=
  ∀ n, P17227666736691765532.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P5653581605109078346

`record[A014963(A037475(A007918(n)))]`
-/

namespace A235621.P5653581605109078346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A037475 (A007918 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235621.P5653581605109078346

namespace A235621

/-- `record[A014963(A037475(A007918(n)))]` -/
def P5653581605109078346.Spec : Prop :=
  ∀ n, P5653581605109078346.a n = A235621 (n + 1)

end A235621

/-! ## A235621.P10909074676238221933

`p?[A028904(A004681(n+1))]`
-/

namespace A235621.P10909074676238221933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A004681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P10909074676238221933

namespace A235621

/-- `p?[A028904(A004681(n+1))]` -/
def P10909074676238221933.Spec : Prop :=
  ∀ n, P10909074676238221933.a n = A235621 (n + 1)

end A235621

/-!
# A235622: Primes whose base-8 representation also is the base-7 representation of a prime.

The programs for A235622, the canonical program `A235622.P15548937306164557030` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235622 has offset 1).

The definition of A235622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235622.P12140661539613507908

`A037474(A235630(n+1))`
-/

namespace A235622.P12140661539613507908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A235630 (n + 1)).toNat

end

end A235622.P12140661539613507908

namespace A235622

/-- `A037474(A235630(n+1))` -/
def P12140661539613507908.Spec : Prop :=
  ∀ n, P12140661539613507908.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P15472204539471310215

`p?[A037474(p?[A260442(n)])]`
-/

namespace A235622.P15472204539471310215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P15472204539471310215

namespace A235622

/-- `p?[A037474(p?[A260442(n)])]` -/
def P15472204539471310215.Spec : Prop :=
  ∀ n, P15472204539471310215.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P15548937306164557030

`p?[A037474(A000040(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A235622

/-- `p?[A037474(A000040(n+1))]` -/
def P15548937306164557030.Spec : Prop :=
  ∀ n, P15548937306164557030.a n = A235622 (n + 1)

theorem P15548937306164557030.correct : P15548937306164557030.Spec := by
  intro n
  simp only [A235622, Nat.add_sub_cancel]

end A235622

/-! ## A235622.P10878373842727633717

`p?[A037474(A008578(n+1))]`
-/

namespace A235622.P10878373842727633717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P10878373842727633717

namespace A235622

/-- `p?[A037474(A008578(n+1))]` -/
def P10878373842727633717.Spec : Prop :=
  ∀ n, P10878373842727633717.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P17770971902964184005

`p?[A037474(A033946(n+1))]`
-/

namespace A235622.P17770971902964184005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P17770971902964184005

namespace A235622

/-- `p?[A037474(A033946(n+1))]` -/
def P17770971902964184005.Spec : Prop :=
  ∀ n, P17770971902964184005.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P5110428526348184727

`p?[A037474(A046022(n+1))]`
-/

namespace A235622.P5110428526348184727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A046022 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P5110428526348184727

namespace A235622

/-- `p?[A037474(A046022(n+1))]` -/
def P5110428526348184727.Spec : Prop :=
  ∀ n, P5110428526348184727.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P14071231209662204140

`p?[A037474(A051948(n+1))]`
-/

namespace A235622.P14071231209662204140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A051948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P14071231209662204140

namespace A235622

/-- `p?[A037474(A051948(n+1))]` -/
def P14071231209662204140.Spec : Prop :=
  ∀ n, P14071231209662204140.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P1777490080686753320

`p?[A037474(A189710(n+1))]`
-/

namespace A235622.P1777490080686753320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A189710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P1777490080686753320

namespace A235622

/-- `p?[A037474(A189710(n+1))]` -/
def P1777490080686753320.Spec : Prop :=
  ∀ n, P1777490080686753320.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P18304918244595016510

`p?[A032741(n)*A037474(n)]`
-/

namespace A235622.P18304918244595016510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A037474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P18304918244595016510

namespace A235622

/-- `p?[A032741(n)*A037474(n)]` -/
def P18304918244595016510.Spec : Prop :=
  ∀ n, P18304918244595016510.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P2645803694521616738

`p?[A037474(sqrt(A001248(n+1)))]`
-/

namespace A235622.P2645803694521616738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P2645803694521616738

namespace A235622

/-- `p?[A037474(sqrt(A001248(n+1)))]` -/
def P2645803694521616738.Spec : Prop :=
  ∀ n, P2645803694521616738.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P16083945539622677805

`p?[A037474(A006093(n+1)+1)]`
-/

namespace A235622.P16083945539622677805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P16083945539622677805

namespace A235622

/-- `p?[A037474(A006093(n+1)+1)]` -/
def P16083945539622677805.Spec : Prop :=
  ∀ n, P16083945539622677805.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P6317443359895387913

`p?[A037474(A134735(2*n+1))]`
-/

namespace A235622.P6317443359895387913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A134735 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P6317443359895387913

namespace A235622

/-- `p?[A037474(A134735(2*n+1))]` -/
def P6317443359895387913.Spec : Prop :=
  ∀ n, P6317443359895387913.a n = A235622 (n + 1)

end A235622

/-! ## A235622.P1021290851722777796

`p?[A037474(A001748(n+1)/3)]`
-/

namespace A235622.P1021290851722777796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P1021290851722777796

namespace A235622

/-- `p?[A037474(A001748(n+1)/3)]` -/
def P1021290851722777796.Spec : Prop :=
  ∀ n, P1021290851722777796.a n = A235622 (n + 1)

end A235622

/-!
# A235624: Primes whose base-4 representation is also the base-6 representation of a prime.

The programs for A235624, there is no canonical definition to state claims against.
-/

/-! ## A235624.P7556945468472357088

`p?[(n+1)*A001222(A037460(n+1))]`
-/

namespace A235624.P7556945468472357088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A037460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235624.P7556945468472357088

/-! ## A235624.P4789169499681140015

`eq[A107286(A037460(n)), A210442(n)]`
-/

namespace A235624.P4789169499681140015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A037460 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235624.P4789169499681140015

/-! ## A235624.P5567400976500532467

`eq[2, A032741(n)+A032741(A037460(n))]`
-/

namespace A235624.P5567400976500532467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A032741 (A037460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235624.P5567400976500532467

/-! ## A235624.P10625496789792163604

`eq[n*A032741(A037460(n)), A007918(n)]`
-/

namespace A235624.P10625496789792163604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A037460 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235624.P10625496789792163604

/-! ## A235624.P9963305809608548095

`p?[(n*A032741(A037460(n)))%A000040(n+1)²]`
-/

namespace A235624.P9963305809608548095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A032741 (A037460 n).toNat) (A000040 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235624.P9963305809608548095

/-!
# A235625: Primes whose base-5 representation is also the base-6 representation of a prime.

The programs for A235625, there is no canonical definition to state claims against.
-/

/-! ## A235625.P7452047109081528983

`A303788(A235626(n+1))`
-/

namespace A235625.P7452047109081528983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A235626 (n + 1)).toNat

end

end A235625.P7452047109081528983

/-! ## A235625.P11239189590784108792

`p?[A303788(p?[A037465(n)])]`
-/

namespace A235625.P11239189590784108792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235625.P11239189590784108792

/-! ## A235625.P16414612346186807255

`p?[(n+1)*A347235(A037465(n+1))]`
-/

namespace A235625.P16414612346186807255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347235 (A037465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235625.P16414612346186807255

/-! ## A235625.P10250880536014244288

`eq[2, A001222((n+1)*A037465(n+1))]+1`
-/

namespace A235625.P10250880536014244288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A037465 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235625.P10250880536014244288

/-!
# A235626: Primes whose base-6 representation also is the base-5 representation of a prime.

The programs for A235626, the canonical program `A235626.P1590916053852408949` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235626 has offset 1).

The definition of A235626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235626.P11524152390234948543

`A037465(A235625(n+1))`
-/

namespace A235626.P11524152390234948543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A235625 (n + 1)).toNat

end

end A235626.P11524152390234948543

namespace A235626

/-- `A037465(A235625(n+1))` -/
def P11524152390234948543.Spec : Prop :=
  ∀ n, P11524152390234948543.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P1590916053852408949

`p?[A037465(A000040(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A235626

/-- `p?[A037465(A000040(n+1))]` -/
def P1590916053852408949.Spec : Prop :=
  ∀ n, P1590916053852408949.a n = A235626 (n + 1)

theorem P1590916053852408949.correct : P1590916053852408949.Spec := by
  intro n
  simp only [A235626, Nat.add_sub_cancel]

end A235626

/-! ## A235626.P17580431259709893030

`p?[A037465(A008578(n+1))]`
-/

namespace A235626.P17580431259709893030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P17580431259709893030

namespace A235626

/-- `p?[A037465(A008578(n+1))]` -/
def P17580431259709893030.Spec : Prop :=
  ∀ n, P17580431259709893030.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P8915697280716100701

`p?[A037465(A033946(n+1))]`
-/

namespace A235626.P8915697280716100701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P8915697280716100701

namespace A235626

/-- `p?[A037465(A033946(n+1))]` -/
def P8915697280716100701.Spec : Prop :=
  ∀ n, P8915697280716100701.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P16591549944233170435

`p?[A037465(A042986(n+1))]`
-/

namespace A235626.P16591549944233170435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A042986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P16591549944233170435

namespace A235626

/-- `p?[A037465(A042986(n+1))]` -/
def P16591549944233170435.Spec : Prop :=
  ∀ n, P16591549944233170435.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P2931780722859757427

`p?[A037465(A045319(n+1))]`
-/

namespace A235626.P2931780722859757427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P2931780722859757427

namespace A235626

/-- `p?[A037465(A045319(n+1))]` -/
def P2931780722859757427.Spec : Prop :=
  ∀ n, P2931780722859757427.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P17838797820408998493

`p?[A037465(A175787(n+1))]`
-/

namespace A235626.P17838797820408998493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A175787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P17838797820408998493

namespace A235626

/-- `p?[A037465(A175787(n+1))]` -/
def P17838797820408998493.Spec : Prop :=
  ∀ n, P17838797820408998493.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P15916493795065454613

`p?[A037465(A301987(n+1))]`
-/

namespace A235626.P15916493795065454613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A301987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P15916493795065454613

namespace A235626

/-- `p?[A037465(A301987(n+1))]` -/
def P15916493795065454613.Spec : Prop :=
  ∀ n, P15916493795065454613.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P3513697864809909949

`p?[A037465(A162753(2*n))]`
-/

namespace A235626.P3513697864809909949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A162753 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P3513697864809909949

namespace A235626

/-- `p?[A037465(A162753(2*n))]` -/
def P3513697864809909949.Spec : Prop :=
  ∀ n, P3513697864809909949.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P10690346891713756042

`p?[A037465(sqrt(A001248(n+1)))]`
-/

namespace A235626.P10690346891713756042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P10690346891713756042

namespace A235626

/-- `p?[A037465(sqrt(A001248(n+1)))]` -/
def P10690346891713756042.Spec : Prop :=
  ∀ n, P10690346891713756042.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P4871874661937644231

`p?[A037465(p?[A015919(n+1)])]`
-/

namespace A235626.P4871874661937644231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P4871874661937644231

namespace A235626

/-- `p?[A037465(p?[A015919(n+1)])]` -/
def P4871874661937644231.Spec : Prop :=
  ∀ n, P4871874661937644231.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P12042068010286942780

`p?[A037465(A006093(n+1)+1)]`
-/

namespace A235626.P12042068010286942780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P12042068010286942780

namespace A235626

/-- `p?[A037465(A006093(n+1)+1)]` -/
def P12042068010286942780.Spec : Prop :=
  ∀ n, P12042068010286942780.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P6993707534295580189

`p?[A037465(A008864(n+1)-1)]`
-/

namespace A235626.P6993707534295580189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P6993707534295580189

namespace A235626

/-- `p?[A037465(A008864(n+1)-1)]` -/
def P6993707534295580189.Spec : Prop :=
  ∀ n, P6993707534295580189.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P10450684807688632730

`p?[A037465(A134735(2*n+1))]`
-/

namespace A235626.P10450684807688632730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A134735 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P10450684807688632730

namespace A235626

/-- `p?[A037465(A134735(2*n+1))]` -/
def P10450684807688632730.Spec : Prop :=
  ∀ n, P10450684807688632730.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P10887833311826585632

`p?[A037465(A001748(n+1)/3)]`
-/

namespace A235626.P10887833311826585632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P10887833311826585632

namespace A235626

/-- `p?[A037465(A001748(n+1)/3)]` -/
def P10887833311826585632.Spec : Prop :=
  ∀ n, P10887833311826585632.a n = A235626 (n + 1)

end A235626

/-! ## A235626.P1738483667493016677

`p?[A037465(A033286(n+1)/(n+1))]`
-/

namespace A235626.P1738483667493016677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P1738483667493016677

namespace A235626

/-- `p?[A037465(A033286(n+1)/(n+1))]` -/
def P1738483667493016677.Spec : Prop :=
  ∀ n, P1738483667493016677.a n = A235626 (n + 1)

end A235626

/-!
# A235627: Primes whose base-7 representation also is the base-5 representation of a prime.

The programs for A235627, the canonical program `A235627.P715287924712714477` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235627 has offset 1).

The definition of A235627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235627.P10922170128434163954

`p?[A037466(A209259(n))]`
-/

namespace A235627.P10922170128434163954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P10922170128434163954

namespace A235627

/-- `p?[A037466(A209259(n))]` -/
def P10922170128434163954.Spec : Prop :=
  ∀ n, P10922170128434163954.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P5058755351989931937

`A037466(A235635(n+1))`
-/

namespace A235627.P5058755351989931937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A235635 (n + 1)).toNat

end

end A235627.P5058755351989931937

namespace A235627

/-- `A037466(A235635(n+1))` -/
def P5058755351989931937.Spec : Prop :=
  ∀ n, P5058755351989931937.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P7602849980938573482

`p?[A037466(p?[A327420(n)])]`
-/

namespace A235627.P7602849980938573482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P7602849980938573482

namespace A235627

/-- `p?[A037466(p?[A327420(n)])]` -/
def P7602849980938573482.Spec : Prop :=
  ∀ n, P7602849980938573482.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P715287924712714477

`p?[A037466(A000040(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235627

/-- `p?[A037466(A000040(n+1))]` -/
def P715287924712714477.Spec : Prop :=
  ∀ n, P715287924712714477.a n = A235627 (n + 1)

theorem P715287924712714477.correct : P715287924712714477.Spec := by
  intro n
  simp only [A235627, Nat.add_sub_cancel]

end A235627

/-! ## A235627.P14211214526877128966

`p?[A037466(A001751(n+1))]`
-/

namespace A235627.P14211214526877128966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P14211214526877128966

namespace A235627

/-- `p?[A037466(A001751(n+1))]` -/
def P14211214526877128966.Spec : Prop :=
  ∀ n, P14211214526877128966.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P10282560289504538901

`p?[A037466(A008578(n+1))]`
-/

namespace A235627.P10282560289504538901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P10282560289504538901

namespace A235627

/-- `p?[A037466(A008578(n+1))]` -/
def P10282560289504538901.Spec : Prop :=
  ∀ n, P10282560289504538901.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P2936326346363885957

`p?[A037466(A015919(n+1))]`
-/

namespace A235627.P2936326346363885957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A015919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P2936326346363885957

namespace A235627

/-- `p?[A037466(A015919(n+1))]` -/
def P2936326346363885957.Spec : Prop :=
  ∀ n, P2936326346363885957.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P2100701669183273394

`p?[A037466(n)*A105700(n)]`
-/

namespace A235627.P2100701669183273394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 n * A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P2100701669183273394

namespace A235627

/-- `p?[A037466(n)*A105700(n)]` -/
def P2100701669183273394.Spec : Prop :=
  ∀ n, P2100701669183273394.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P269076062680123755

`∩[A262839(n+1), A037466(n)]`
-/

namespace A235627.P269076062680123755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235627.P269076062680123755

namespace A235627

/-- `∩[A262839(n+1), A037466(n)]` -/
def P269076062680123755.Spec : Prop :=
  ∀ n, (P269076062680123755.a n : ℤ) = A235627 (n + 1)

end A235627

/-! ## A235627.P4962910015599934283

`p?[A037466(A005180(n+1))]`
-/

namespace A235627.P4962910015599934283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P4962910015599934283

namespace A235627

/-- `p?[A037466(A005180(n+1))]` -/
def P4962910015599934283.Spec : Prop :=
  ∀ n, P4962910015599934283.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P15247120825160510153

`p?[A037466(A026741(n*A107279(n)))]`
-/

namespace A235627.P15247120825160510153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A026741 ((n : ℤ) * A107279 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P15247120825160510153

namespace A235627

/-- `p?[A037466(A026741(n*A107279(n)))]` -/
def P15247120825160510153.Spec : Prop :=
  ∀ n, P15247120825160510153.a n = A235627 (n + 1)

end A235627

/-! ## A235627.P17167575693645710559

`p?[A032741(n)*A037466(n)]`
-/

namespace A235627.P17167575693645710559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A037466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235627.P17167575693645710559

namespace A235627

/-- `p?[A032741(n)*A037466(n)]` -/
def P17167575693645710559.Spec : Prop :=
  ∀ n, P17167575693645710559.a n = A235627 (n + 1)

end A235627

/-!
# A235628: Primes whose base-8 representation also is the base-5 representation of a prime.

The programs for A235628, the canonical program `A235628.P12758492442679431710` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235628 has offset 1).

The definition of A235628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235628.P15254283311279793258

`A037467(A235632(n+1))`
-/

namespace A235628.P15254283311279793258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A235632 (n + 1)).toNat

end

end A235628.P15254283311279793258

namespace A235628

/-- `A037467(A235632(n+1))` -/
def P15254283311279793258.Spec : Prop :=
  ∀ n, P15254283311279793258.a n = A235628 (n + 1)

end A235628

/-! ## A235628.P7133183979479526112

`p?[A037467(p?[A327420(n)])]`
-/

namespace A235628.P7133183979479526112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235628.P7133183979479526112

namespace A235628

/-- `p?[A037467(p?[A327420(n)])]` -/
def P7133183979479526112.Spec : Prop :=
  ∀ n, P7133183979479526112.a n = A235628 (n + 1)

end A235628

/-! ## A235628.P12758492442679431710

`p?[A037467(A000040(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A235628

/-- `p?[A037467(A000040(n+1))]` -/
def P12758492442679431710.Spec : Prop :=
  ∀ n, P12758492442679431710.a n = A235628 (n + 1)

theorem P12758492442679431710.correct : P12758492442679431710.Spec := by
  intro n
  simp only [A235628, Nat.add_sub_cancel]

end A235628

/-! ## A235628.P4585259104265398839

`p?[A037467(A008578(n+1))]`
-/

namespace A235628.P4585259104265398839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235628.P4585259104265398839

namespace A235628

/-- `p?[A037467(A008578(n+1))]` -/
def P4585259104265398839.Spec : Prop :=
  ∀ n, P4585259104265398839.a n = A235628 (n + 1)

end A235628

/-! ## A235628.P4340468386859249377

`p?[A037467(n)*A105700(n)]`
-/

namespace A235628.P4340468386859249377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 n * A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235628.P4340468386859249377

namespace A235628

/-- `p?[A037467(n)*A105700(n)]` -/
def P4340468386859249377.Spec : Prop :=
  ∀ n, P4340468386859249377.a n = A235628 (n + 1)

end A235628

/-! ## A235628.P7562020910184264500

`p?[A037467(A005180(n+1))]`
-/

namespace A235628.P7562020910184264500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235628.P7562020910184264500

namespace A235628

/-- `p?[A037467(A005180(n+1))]` -/
def P7562020910184264500.Spec : Prop :=
  ∀ n, P7562020910184264500.a n = A235628 (n + 1)

end A235628

/-! ## A235628.P6864882309815734355

`p?[A032741(n)*A037467(n)]`
-/

namespace A235628.P6864882309815734355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A037467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235628.P6864882309815734355

namespace A235628

/-- `p?[A032741(n)*A037467(n)]` -/
def P6864882309815734355.Spec : Prop :=
  ∀ n, P6864882309815734355.a n = A235628 (n + 1)

end A235628

/-!
# A235629: Primes whose base-9 representation also is the base-5 representation of a prime.

The programs for A235629, the canonical program `A235629.P6978234422931053120` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235629 has offset 1).

The definition of A235629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235629.P14094333171755269892

`p?[A037468(A209259(n))]`
-/

namespace A235629.P14094333171755269892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P14094333171755269892

namespace A235629

/-- `p?[A037468(A209259(n))]` -/
def P14094333171755269892.Spec : Prop :=
  ∀ n, P14094333171755269892.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P6978234422931053120

`A037468(A235482(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A235629

/-- `A037468(A235482(n+1))` -/
def P6978234422931053120.Spec : Prop :=
  ∀ n, P6978234422931053120.a n = A235629 (n + 1)

theorem P6978234422931053120.correct : P6978234422931053120.Spec := by
  intro n
  simp only [A235629, Nat.add_sub_cancel]

end A235629

/-! ## A235629.P9182706977656035971

`p?[A037468(p?[A327420(n)])]`
-/

namespace A235629.P9182706977656035971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P9182706977656035971

namespace A235629

/-- `p?[A037468(p?[A327420(n)])]` -/
def P9182706977656035971.Spec : Prop :=
  ∀ n, P9182706977656035971.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P4468918285698076132

`p?[A037468(A000040(n+1))]`
-/

namespace A235629.P4468918285698076132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P4468918285698076132

namespace A235629

/-- `p?[A037468(A000040(n+1))]` -/
def P4468918285698076132.Spec : Prop :=
  ∀ n, P4468918285698076132.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P1173745825170036593

`p?[A037468(A001751(n+1))]`
-/

namespace A235629.P1173745825170036593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P1173745825170036593

namespace A235629

/-- `p?[A037468(A001751(n+1))]` -/
def P1173745825170036593.Spec : Prop :=
  ∀ n, P1173745825170036593.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P3139707648759686990

`p?[A037468(A008578(n+1))]`
-/

namespace A235629.P3139707648759686990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P3139707648759686990

namespace A235629

/-- `p?[A037468(A008578(n+1))]` -/
def P3139707648759686990.Spec : Prop :=
  ∀ n, P3139707648759686990.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P11929359895266251407

`p?[A037468(n)*A105700(n)]`
-/

namespace A235629.P11929359895266251407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n * A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P11929359895266251407

namespace A235629

/-- `p?[A037468(n)*A105700(n)]` -/
def P11929359895266251407.Spec : Prop :=
  ∀ n, P11929359895266251407.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P16827462802176728945

`p?[A037468(sqrt(A001248(n+1)))]`
-/

namespace A235629.P16827462802176728945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P16827462802176728945

namespace A235629

/-- `p?[A037468(sqrt(A001248(n+1)))]` -/
def P16827462802176728945.Spec : Prop :=
  ∀ n, P16827462802176728945.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P10153451172466727355

`p?[A037468(p?[A067747(n+1)])]`
-/

namespace A235629.P10153451172466727355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P10153451172466727355

namespace A235629

/-- `p?[A037468(p?[A067747(n+1)])]` -/
def P10153451172466727355.Spec : Prop :=
  ∀ n, P10153451172466727355.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P6754599818661409444

`p?[A037468(p?[n*A032741(n)])]`
-/

namespace A235629.P6754599818661409444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P6754599818661409444

namespace A235629

/-- `p?[A037468(p?[n*A032741(n)])]` -/
def P6754599818661409444.Spec : Prop :=
  ∀ n, P6754599818661409444.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P2958989063607359198

`p?[A037468(A067747(A005408(n)))]`
-/

namespace A235629.P2958989063607359198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A067747 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P2958989063607359198

namespace A235629

/-- `p?[A037468(A067747(A005408(n)))]` -/
def P2958989063607359198.Spec : Prop :=
  ∀ n, P2958989063607359198.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P1018372985873962468

`p?[A037468(A005180(n+1))]`
-/

namespace A235629.P1018372985873962468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235629.P1018372985873962468

namespace A235629

/-- `p?[A037468(A005180(n+1))]` -/
def P1018372985873962468.Spec : Prop :=
  ∀ n, P1018372985873962468.a n = A235629 (n + 1)

end A235629

/-! ## A235629.P7228830696693641114

`record[A020639(A037468(A060264(n)))]`
-/

namespace A235629.P7228830696693641114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037468 (A060264 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235629.P7228830696693641114

namespace A235629

/-- `record[A020639(A037468(A060264(n)))]` -/
def P7228830696693641114.Spec : Prop :=
  ∀ n, P7228830696693641114.a n = A235629 (n + 1)

end A235629

/-!
# A235630: Primes whose base-7 representation is also the base-8 representation of a prime.

The programs for A235630, the canonical program `A235630.P485179838393159040` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235630 has offset 1).

The definition of A235630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235630.P485179838393159040

`p?[n*A032741(A037474(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A235630

/-- `p?[n*A032741(A037474(n))]` -/
def P485179838393159040.Spec : Prop :=
  ∀ n, P485179838393159040.a n = A235630 (n + 1)

theorem P485179838393159040.correct : P485179838393159040.Spec := by
  intro n
  simp only [A235630, Nat.add_sub_cancel]

end A235630

/-! ## A235630.P15975540012885089827

`∩[A262833(n+1), A045506(n)]`
-/

namespace A235630.P15975540012885089827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235630.P15975540012885089827

namespace A235630

/-- `∩[A262833(n+1), A045506(n)]` -/
def P15975540012885089827.Spec : Prop :=
  ∀ n, (P15975540012885089827.a n : ℤ) = A235630 (n + 1)

end A235630

/-! ## A235630.P10418959484602639122

`p?[A287441(n+1)-A134829(n)]`
-/

namespace A235630.P10418959484602639122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287441 (n + 1) - A134829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235630.P10418959484602639122

namespace A235630

/-- `p?[A287441(n+1)-A134829(n)]` -/
def P10418959484602639122.Spec : Prop :=
  ∀ n, P10418959484602639122.a n = A235630 (n + 1)

end A235630

/-! ## A235630.P15838248037864838753

`∩[A048265(n+1), A262833(n+1)]`
-/

namespace A235630.P15838248037864838753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235630.P15838248037864838753

namespace A235630

/-- `∩[A048265(n+1), A262833(n+1)]` -/
def P15838248037864838753.Spec : Prop :=
  ∀ n, (P15838248037864838753.a n : ℤ) = A235630 (n + 1)

end A235630

/-!
# A235631: Primes whose base-6 representation is also the base-8 representation of a prime.

The programs for A235631, there is no canonical definition to state claims against.
-/

/-! ## A235631.P12941861511461809840

`A038615(record[A335458(n)])`
-/

namespace A235631.P12941861511461809840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235631.P12941861511461809840

/-! ## A235631.P9760321946538669750

`record[A204895(A271409(n))]`
-/

namespace A235631.P9760321946538669750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (A271409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235631.P9760321946538669750

/-! ## A235631.P1242779924494638510

`eq[A214323(n), A321452(n)]`
-/

namespace A235631.P1242779924494638510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235631.P1242779924494638510

/-! ## A235631.P8104700648120132507

`record[A342659(∑[A034867(n)])]`
-/

namespace A235631.P8104700648120132507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235631.P8104700648120132507

/-! ## A235631.P7157665368255122246

`A019565(2^A001481(n+1))`
-/

namespace A235631.P7157665368255122246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001481 (n + 1) : ℤ))).toNat

end

end A235631.P7157665368255122246

/-!
# A235632: Primes whose base-5 representation is also the base-8 representation of a prime.

The programs for A235632, there is no canonical definition to state claims against.
-/

/-! ## A235632.P3923085723759362304

`p?[n*A032741(A037467(n))]`
-/

namespace A235632.P3923085723759362304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A037467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235632.P3923085723759362304

/-! ## A235632.P7618806376032268828

`p?[A105700(A037467(n))*A327420(n)]`
-/

namespace A235632.P7618806376032268828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037467 n).toNat * A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235632.P7618806376032268828

/-! ## A235632.P7486689897536270393

`p?[A105700(A037467(n))*A123108(2*n)]`
-/

namespace A235632.P7486689897536270393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037467 n).toNat * A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235632.P7486689897536270393

/-! ## A235632.P9653888505372141674

`p?[(A000007(n)+n)*A105700(A037467(n))]`
-/

namespace A235632.P9653888505372141674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A105700 (A037467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235632.P9653888505372141674

/-! ## A235632.P655399625397659492

`p?[A105700(A037467(n))*A233583(n+1)]`
-/

namespace A235632.P655399625397659492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037467 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235632.P655399625397659492

/-!
# A235633: Primes whose base-4 representation is also the base-8 representation of a prime.

The programs for A235633, there is no canonical definition to state claims against.
-/

/-! ## A235633.P464065659813687037

`p?[(n+1)*A001222(A037462(n+1))]`
-/

namespace A235633.P464065659813687037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A037462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235633.P464065659813687037

/-! ## A235633.P18198469165169268405

`p?[lcm(n+1, A001222(A037462(n)+1))]`
-/

namespace A235633.P18198469165169268405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 (A037462 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235633.P18198469165169268405

/-! ## A235633.P17835423160970258510

`eq[A003415(n), A223135(A037462(n))]`
-/

namespace A235633.P17835423160970258510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A037462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235633.P17835423160970258510

/-! ## A235633.P17267373277611574305

`eq[A078898(A037462(n)), A167865(n)]`
-/

namespace A235633.P17267373277611574305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A037462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235633.P17267373277611574305

/-! ## A235633.P16756950431558413476

`p?[A002033(A037462(n))*A141310(n)]`
-/

namespace A235633.P16756950431558413476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A037462 n).toNat * A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235633.P16756950431558413476

/-!
# A235634: Primes whose base-4 representation is also the base-7 representation of a prime.

The programs for A235634, there is no canonical definition to state claims against.
-/

/-! ## A235634.P221125914808266150

`p?[A001222(A037461(n+1))*(n+1)]`
-/

namespace A235634.P221125914808266150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037461 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235634.P221125914808266150

/-! ## A235634.P1340048685756179804

`eq[2, A001222((n+1)*A037461(n+1))]+1`
-/

namespace A235634.P1340048685756179804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A037461 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235634.P1340048685756179804

/-! ## A235634.P3009343919810935207

`filter[A341661(n+1), A194685(#)]`
-/

namespace A235634.P3009343919810935207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A194685 (f1 j).toNat = 1) n)

end

end A235634.P3009343919810935207

/-!
# A235635: Primes whose base-5 representation is also the base-7 representation of a prime.

The programs for A235635, the canonical program `A235635.P13772045391702524805` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235635 has offset 1).

The definition of A235635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235635.P13772045391702524805

`p?[n*A032741(A037466(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235635

/-- `p?[n*A032741(A037466(n))]` -/
def P13772045391702524805.Spec : Prop :=
  ∀ n, P13772045391702524805.a n = A235635 (n + 1)

theorem P13772045391702524805.correct : P13772045391702524805.Spec := by
  intro n
  simp only [A235635, Nat.add_sub_cancel]

end A235635

/-! ## A235635.P7521000912114353832

`eq[A003415(n), A226378(A037466(n))]`
-/

namespace A235635.P7521000912114353832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A037466 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235635.P7521000912114353832

namespace A235635

/-- `eq[A003415(n), A226378(A037466(n))]` -/
def P7521000912114353832.Spec : Prop :=
  ∀ n, (P7521000912114353832.a n : ℤ) = A235635 (n + 1)

end A235635

/-! ## A235635.P16686618822464868077

`p?[A105700(A037466(n))*A327420(n)]`
-/

namespace A235635.P16686618822464868077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037466 n).toNat * A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235635.P16686618822464868077

namespace A235635

/-- `p?[A105700(A037466(n))*A327420(n)]` -/
def P16686618822464868077.Spec : Prop :=
  ∀ n, P16686618822464868077.a n = A235635 (n + 1)

end A235635

/-! ## A235635.P809011237097375486

`p?[A026741(n*A107279(A037466(n)))]`
-/

namespace A235635.P809011237097375486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) * A107279 (A037466 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235635.P809011237097375486

namespace A235635

/-- `p?[A026741(n*A107279(A037466(n)))]` -/
def P809011237097375486.Spec : Prop :=
  ∀ n, P809011237097375486.a n = A235635 (n + 1)

end A235635

/-! ## A235635.P11494628596318673400

`p?[A105700(A037466(n))*A233583(n+1)]`
-/

namespace A235635.P11494628596318673400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037466 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235635.P11494628596318673400

namespace A235635

/-- `p?[A105700(A037466(n))*A233583(n+1)]` -/
def P11494628596318673400.Spec : Prop :=
  ∀ n, P11494628596318673400.a n = A235635 (n + 1)

end A235635

/-!
# A235636: Primes whose base-6 representation is also the base-7 representation of a prime.

The programs for A235636, there is no canonical definition to state claims against.
-/

/-! ## A235636.P17191380429502199226

`A303789(A235637(n+1))`
-/

namespace A235636.P17191380429502199226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A235637 (n + 1)).toNat

end

end A235636.P17191380429502199226

/-! ## A235636.P16830970940916276851

`p?[A303789(p?[A020657(n+1)])]`
-/

namespace A235636.P16830970940916276851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235636.P16830970940916276851

/-! ## A235636.P9404065648602201412

`p?[A303789(p?[A020658(n+1)])]`
-/

namespace A235636.P9404065648602201412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235636.P9404065648602201412

/-! ## A235636.P10074774778920797341

`eq[A003415(A020657(n+1)), A068108(n+1)]`
-/

namespace A235636.P10074774778920797341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020657 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235636.P10074774778920797341

/-! ## A235636.P10614317675727968611

`eq[A018783(A020657(n+1)), A053989(n+1)]`
-/

namespace A235636.P10614317675727968611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A020657 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235636.P10614317675727968611

/-! ## A235636.P8484959553222558094

`eq[1, A018783(A020657(n+1))*A018783(n)]`
-/

namespace A235636.P8484959553222558094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A020657 (n + 1)).toNat * A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235636.P8484959553222558094

/-!
# A235637: Primes whose base-7 representation also is the base-6 representation of a prime.

The programs for A235637, there is no canonical definition to state claims against.
-/

/-! ## A235637.P6980746242057994497

`p?[A020657(A028815(n))]`
-/

namespace A235637.P6980746242057994497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P6980746242057994497

/-! ## A235637.P10853786648783268256

`A020658(A235636(n+1))`
-/

namespace A235637.P10853786648783268256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A235636 (n + 1)).toNat

end

end A235637.P10853786648783268256

/-! ## A235637.P10650855444887227551

`p?[A020658(A000040(n+1))]`
-/

namespace A235637.P10650855444887227551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P10650855444887227551

/-! ## A235637.P18213242645394163205

`p?[A020658(A008578(n+1))]`
-/

namespace A235637.P18213242645394163205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P18213242645394163205

/-! ## A235637.P7502878384784144404

`p?[A020657(A008864(n+1))]`
-/

namespace A235637.P7502878384784144404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P7502878384784144404

/-! ## A235637.P12536742635389173953

`p?[A020658(sqrt(A001248(n+1)))]`
-/

namespace A235637.P12536742635389173953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P12536742635389173953

/-! ## A235637.P16750510765166689138

`p?[A020657(A000040(n+1)+1)]`
-/

namespace A235637.P16750510765166689138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235637.P16750510765166689138

/-! ## A235637.P14291003027524450954

`record[A020639(A020658(A020639(n+2)))]`
-/

namespace A235637.P14291003027524450954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020658 (A020639 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235637.P14291003027524450954

/-! ## A235637.P4693593814688163860

`record[A014963(A020658(A060264(n)))]`
-/

namespace A235637.P4693593814688163860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020658 (A060264 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235637.P4693593814688163860

/-! ## A235637.P15790915289251570864

`record[A014963(A020658(A162753(n)))]`
-/

namespace A235637.P15790915289251570864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020658 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235637.P15790915289251570864

/-!
# A235638: Primes whose base-8 representation also is the base-6 representation of a prime.

The programs for A235638, the canonical program `A235638.P10084186725712370400` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235638 has offset 1).

The definition of A235638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235638.P11095812706774084871

`p?[A037471(A209259(n))]`
-/

namespace A235638.P11095812706774084871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P11095812706774084871

namespace A235638

/-- `p?[A037471(A209259(n))]` -/
def P11095812706774084871.Spec : Prop :=
  ∀ n, P11095812706774084871.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P10928598378693215972

`A037471(A235631(n+1))`
-/

namespace A235638.P10928598378693215972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A235631 (n + 1)).toNat

end

end A235638.P10928598378693215972

namespace A235638

/-- `A037471(A235631(n+1))` -/
def P10928598378693215972.Spec : Prop :=
  ∀ n, P10928598378693215972.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P10084186725712370400

`p?[A037471(A000040(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235638

/-- `p?[A037471(A000040(n+1))]` -/
def P10084186725712370400.Spec : Prop :=
  ∀ n, P10084186725712370400.a n = A235638 (n + 1)

theorem P10084186725712370400.correct : P10084186725712370400.Spec := by
  intro n
  simp only [A235638, Nat.add_sub_cancel]

end A235638

/-! ## A235638.P4044363043427982982

`p?[A037471(A001751(n+1))]`
-/

namespace A235638.P4044363043427982982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P4044363043427982982

namespace A235638

/-- `p?[A037471(A001751(n+1))]` -/
def P4044363043427982982.Spec : Prop :=
  ∀ n, P4044363043427982982.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P7332949962646643381

`p?[A037471(A008578(n+1))]`
-/

namespace A235638.P7332949962646643381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P7332949962646643381

namespace A235638

/-- `p?[A037471(A008578(n+1))]` -/
def P7332949962646643381.Spec : Prop :=
  ∀ n, P7332949962646643381.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P6527230559943432635

`p?[A037471(p?[A015919(n+1)])]`
-/

namespace A235638.P6527230559943432635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P6527230559943432635

namespace A235638

/-- `p?[A037471(p?[A015919(n+1)])]` -/
def P6527230559943432635.Spec : Prop :=
  ∀ n, P6527230559943432635.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P3364084377684580883

`p?[A001222(n+1)*A037471(n+1)]`
-/

namespace A235638.P3364084377684580883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A037471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P3364084377684580883

namespace A235638

/-- `p?[A001222(n+1)*A037471(n+1)]` -/
def P3364084377684580883.Spec : Prop :=
  ∀ n, P3364084377684580883.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P4465075160596419449

`record[A006530(A037471(A006530(n+2)))]`
-/

namespace A235638.P4465075160596419449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A037471 (A006530 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235638.P4465075160596419449

namespace A235638

/-- `record[A006530(A037471(A006530(n+2)))]` -/
def P4465075160596419449.Spec : Prop :=
  ∀ n, P4465075160596419449.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P9321746773319162020

`p?[A037471(A005180(n+1))]`
-/

namespace A235638.P9321746773319162020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P9321746773319162020

namespace A235638

/-- `p?[A037471(A005180(n+1))]` -/
def P9321746773319162020.Spec : Prop :=
  ∀ n, P9321746773319162020.a n = A235638 (n + 1)

end A235638

/-! ## A235638.P10117793128939946172

`p?[A028903(A004680(n+1))]`
-/

namespace A235638.P10117793128939946172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A004680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235638.P10117793128939946172

namespace A235638

/-- `p?[A028903(A004680(n+1))]` -/
def P10117793128939946172.Spec : Prop :=
  ∀ n, P10117793128939946172.a n = A235638 (n + 1)

end A235638

/-!
# A235639: Primes whose base-9 representation is also the base-6 representation of a prime.

The programs for A235639, the canonical program `A235639.P13103420692652260823` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235639 has offset 1).

The definition of A235639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235639.P14608993977776503448

`A037472(A231481(n+1))`
-/

namespace A235639.P14608993977776503448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A231481 (n + 1)).toNat

end

end A235639.P14608993977776503448

namespace A235639

/-- `A037472(A231481(n+1))` -/
def P14608993977776503448.Spec : Prop :=
  ∀ n, P14608993977776503448.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P13103420692652260823

`p?[A037472(A000040(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235639

/-- `p?[A037472(A000040(n+1))]` -/
def P13103420692652260823.Spec : Prop :=
  ∀ n, P13103420692652260823.a n = A235639 (n + 1)

theorem P13103420692652260823.correct : P13103420692652260823.Spec := by
  intro n
  simp only [A235639, Nat.add_sub_cancel]

end A235639

/-! ## A235639.P6507002047218980576

`p?[A037472(A008578(n+1))]`
-/

namespace A235639.P6507002047218980576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P6507002047218980576

namespace A235639

/-- `p?[A037472(A008578(n+1))]` -/
def P6507002047218980576.Spec : Prop :=
  ∀ n, P6507002047218980576.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P3750710890552590209

`p?[A037472(A033946(n+1))]`
-/

namespace A235639.P3750710890552590209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A033946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P3750710890552590209

namespace A235639

/-- `p?[A037472(A033946(n+1))]` -/
def P3750710890552590209.Spec : Prop :=
  ∀ n, P3750710890552590209.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P17812664098995180778

`p?[A037472(A046022(n+1))]`
-/

namespace A235639.P17812664098995180778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A046022 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P17812664098995180778

namespace A235639

/-- `p?[A037472(A046022(n+1))]` -/
def P17812664098995180778.Spec : Prop :=
  ∀ n, P17812664098995180778.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P9042677814496943620

`p?[A037472(A062972(n+1))]`
-/

namespace A235639.P9042677814496943620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A062972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P9042677814496943620

namespace A235639

/-- `p?[A037472(A062972(n+1))]` -/
def P9042677814496943620.Spec : Prop :=
  ∀ n, P9042677814496943620.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P2823157308248039026

`p?[A037472(A175787(n+1))]`
-/

namespace A235639.P2823157308248039026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A175787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P2823157308248039026

namespace A235639

/-- `p?[A037472(A175787(n+1))]` -/
def P2823157308248039026.Spec : Prop :=
  ∀ n, P2823157308248039026.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P15384787941450488951

`p?[A037472(A189710(n+1))]`
-/

namespace A235639.P15384787941450488951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A189710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P15384787941450488951

namespace A235639

/-- `p?[A037472(A189710(n+1))]` -/
def P15384787941450488951.Spec : Prop :=
  ∀ n, P15384787941450488951.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P11672852708443523963

`p?[A037472(A326715(n+1))]`
-/

namespace A235639.P11672852708443523963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A326715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P11672852708443523963

namespace A235639

/-- `p?[A037472(A326715(n+1))]` -/
def P11672852708443523963.Spec : Prop :=
  ∀ n, P11672852708443523963.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P5925742288397984515

`p?[A037472(sqrt(A001248(n+1)))]`
-/

namespace A235639.P5925742288397984515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P5925742288397984515

namespace A235639

/-- `p?[A037472(sqrt(A001248(n+1)))]` -/
def P5925742288397984515.Spec : Prop :=
  ∀ n, P5925742288397984515.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P2298998827411989526

`p?[A037472(p?[A067747(n+1)])]`
-/

namespace A235639.P2298998827411989526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P2298998827411989526

namespace A235639

/-- `p?[A037472(p?[A067747(n+1)])]` -/
def P2298998827411989526.Spec : Prop :=
  ∀ n, P2298998827411989526.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P14825616544016653087

`p?[A037472(A001747(n+1)/2)]`
-/

namespace A235639.P14825616544016653087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P14825616544016653087

namespace A235639

/-- `p?[A037472(A001747(n+1)/2)]` -/
def P14825616544016653087.Spec : Prop :=
  ∀ n, P14825616544016653087.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P8252317832013609360

`p?[A037472(A001748(n+1)/3)]`
-/

namespace A235639.P8252317832013609360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P8252317832013609360

namespace A235639

/-- `p?[A037472(A001748(n+1)/3)]` -/
def P8252317832013609360.Spec : Prop :=
  ∀ n, P8252317832013609360.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P3675976290729720613

`p?[(2-A074206(n))*A037472(n)]`
-/

namespace A235639.P3675976290729720613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A074206 n) * A037472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P3675976290729720613

namespace A235639

/-- `p?[(2-A074206(n))*A037472(n)]` -/
def P3675976290729720613.Spec : Prop :=
  ∀ n, P3675976290729720613.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P13545036986428608362

`p?[(A037472(n)+1)*A001222(n+1)]`
-/

namespace A235639.P13545036986428608362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037472 n + 1) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P13545036986428608362

namespace A235639

/-- `p?[(A037472(n)+1)*A001222(n+1)]` -/
def P13545036986428608362.Spec : Prop :=
  ∀ n, P13545036986428608362.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P45086029326828341

`p?[A037472(p?[n*A223135(n)])]`
-/

namespace A235639.P45086029326828341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A223135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P45086029326828341

namespace A235639

/-- `p?[A037472(p?[n*A223135(n)])]` -/
def P45086029326828341.Spec : Prop :=
  ∀ n, P45086029326828341.a n = A235639 (n + 1)

end A235639

/-! ## A235639.P12736679770293256523

`p?[A037472(n)*A223135(n)]`
-/

namespace A235639.P12736679770293256523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n * A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235639.P12736679770293256523

namespace A235639

/-- `p?[A037472(n)*A223135(n)]` -/
def P12736679770293256523.Spec : Prop :=
  ∀ n, P12736679770293256523.a n = A235639 (n + 1)

end A235639

/-!
# A235642: a(n) = prime(10^n) mod 10^n.

The programs for A235642, the canonical program `A235642.P11216031610826937538` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235642 has offset 0).

The definition of A235642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004648, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235642.P11216031610826937538

`A004648(10^n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235642

/-- `A004648(10^n)` -/
def P11216031610826937538.Spec : Prop :=
  ∀ n, P11216031610826937538.a n = A235642 n

theorem P11216031610826937538.correct : P11216031610826937538.Spec := by
  intro n
  simp only [A235642]

end A235642

/-! ## A235642.P12172689420215453809

`A006988(n)%(10^n)`
-/

namespace A235642.P12172689420215453809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006988 n) (10 ^ n : ℤ)

end

end A235642.P12172689420215453809

namespace A235642

/-- `A006988(n)%(10^n)` -/
def P12172689420215453809.Spec : Prop :=
  ∀ n, P12172689420215453809.a n = A235642 n

end A235642

/-! ## A235642.P15448664507352001746

`A347000(A155212(n+5)-1)%A011557(n)`
-/

namespace A235642.P15448664507352001746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A155212 (n + 5) - 1).toNat) (A011557 n)

end

end A235642.P15448664507352001746

namespace A235642

/-- `A347000(A155212(n+5)-1)%A011557(n)` -/
def P15448664507352001746.Spec : Prop :=
  ∀ n, P15448664507352001746.a n = A235642 n

end A235642

/-! ## A235642.P8514818026083190294

`A347000(A052905(n+6)-4)%A011557(n)`
-/

namespace A235642.P8514818026083190294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A052905 (n + 6) - 4).toNat) (A011557 n)

end

end A235642.P8514818026083190294

namespace A235642

/-- `A347000(A052905(n+6)-4)%A011557(n)` -/
def P8514818026083190294.Spec : Prop :=
  ∀ n, P8514818026083190294.a n = A235642 n

end A235642

/-! ## A235642.P17627629228877479205

`A347000(A000217(n+9)-9)%A011557(n)`
-/

namespace A235642.P17627629228877479205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A000217 (n + 9) - 9).toNat) (A011557 n)

end

end A235642.P17627629228877479205

namespace A235642

/-- `A347000(A000217(n+9)-9)%A011557(n)` -/
def P17627629228877479205.Spec : Prop :=
  ∀ n, P17627629228877479205.a n = A235642 n

end A235642

/-!
# A235643: Total number of sides of a tetraflake-like fractal after n iterations, a(1) = 16 (see comments).

The programs for A235643, the canonical program `A235643.P1290111141521370080` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235643 has offset 1).

The definition of A235643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235643.P1290111141521370080

`6*a(n-1)-7*a(n-2)` with `a(0)=16, a(1)=68`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235643

/-- `6*a(n-1)-7*a(n-2)` -/
def P1290111141521370080.Spec : Prop :=
  ∀ n, P1290111141521370080.a n = A235643 (n + 1)

theorem P1290111141521370080.correct : P1290111141521370080.Spec := by
  intro n
  simp only [A235643, Nat.add_sub_cancel]

end A235643

/-! ## A235643.P15324133314861753427

`2*A034999(n+2)`
-/

namespace A235643.P15324133314861753427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034999 (n + 2)

end

end A235643.P15324133314861753427

namespace A235643

/-- `2*A034999(n+2)` -/
def P15324133314861753427.Spec : Prop :=
  ∀ n, P15324133314861753427.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P14812476516070598641

`4*A086351(n+1)`
-/

namespace A235643.P14812476516070598641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086351 (n + 1)

end

end A235643.P14812476516070598641

namespace A235643

/-- `4*A086351(n+1)` -/
def P14812476516070598641.Spec : Prop :=
  ∀ n, P14812476516070598641.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P9790642827422546083

`Δ[2*A083878(n+1)]`
-/

namespace A235643.P9790642827422546083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235643.P9790642827422546083

namespace A235643

/-- `Δ[2*A083878(n+1)]` -/
def P9790642827422546083.Spec : Prop :=
  ∀ n, P9790642827422546083.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P7930246912874201048

`Δ[A162270(n)+A102285(n)]`
-/

namespace A235643.P7930246912874201048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162270 n + A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235643.P7930246912874201048

namespace A235643

/-- `Δ[A162270(n)+A102285(n)]` -/
def P7930246912874201048.Spec : Prop :=
  ∀ n, P7930246912874201048.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P5085324620741312835

`4*(A164037(n)-A086351(n))`
-/

namespace A235643.P5085324620741312835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A164037 n - A086351 n)

end

end A235643.P5085324620741312835

namespace A235643

/-- `4*(A164037(n)-A086351(n))` -/
def P5085324620741312835.Spec : Prop :=
  ∀ n, P5085324620741312835.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P13757038522003962290

`A163609(n+1)-A083878(n+1)`
-/

namespace A235643.P13757038522003962290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163609 (n + 1) - A083878 (n + 1)

end

end A235643.P13757038522003962290

namespace A235643

/-- `A163609(n+1)-A083878(n+1)` -/
def P13757038522003962290.Spec : Prop :=
  ∀ n, P13757038522003962290.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P14140891187814295959

`A164037(n+1)-A102285(n+1)`
-/

namespace A235643.P14140891187814295959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164037 (n + 1) - A102285 (n + 1)

end

end A235643.P14140891187814295959

namespace A235643

/-- `A164037(n+1)-A102285(n+1)` -/
def P14140891187814295959.Spec : Prop :=
  ∀ n, P14140891187814295959.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P16354635373692539672

`A086351(n+2)-A081179(n+1)`
-/

namespace A235643.P16354635373692539672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 2) - A081179 (n + 1)

end

end A235643.P16354635373692539672

namespace A235643

/-- `A086351(n+2)-A081179(n+1)` -/
def P16354635373692539672.Spec : Prop :=
  ∀ n, P16354635373692539672.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P17027381257736180210

`2*(A164033(n+1)-A081179(n+1))`
-/

namespace A235643.P17027381257736180210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164033 (n + 1) - A081179 (n + 1))

end

end A235643.P17027381257736180210

namespace A235643

/-- `2*(A164033(n+1)-A081179(n+1))` -/
def P17027381257736180210.Spec : Prop :=
  ∀ n, P17027381257736180210.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P18002663486808672085

`2*(A163606(n+1)-A102285(n+1))`
-/

namespace A235643.P18002663486808672085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163606 (n + 1) - A102285 (n + 1))

end

end A235643.P18002663486808672085

namespace A235643

/-- `2*(A163606(n+1)-A102285(n+1))` -/
def P18002663486808672085.Spec : Prop :=
  ∀ n, P18002663486808672085.a n = A235643 (n + 1)

end A235643

/-! ## A235643.P3006212998186819731

`Δ[Δ[A162270(n)-A163348(n)]]`
-/

namespace A235643.P3006212998186819731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162270 n - A163348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235643.P3006212998186819731

namespace A235643

/-- `Δ[Δ[A162270(n)-A163348(n)]]` -/
def P3006212998186819731.Spec : Prop :=
  ∀ n, P3006212998186819731.a n = A235643 (n + 1)

end A235643

/-!
# A235644: Number of decompositions of 12*n into the sum of two (not necessarily distinct) twin prime pairs.

The programs for A235644, there is no canonical definition to state claims against.
-/

/-! ## A235644.P577700883173603703

`A219157(6*(n+1))`
-/

namespace A235644.P577700883173603703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (6 * (n + 1))

end

end A235644.P577700883173603703

/-! ## A235644.P18407614613260074474

`A334158(3*n+4)`
-/

namespace A235644.P18407614613260074474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334158 (3 * n + 4)

end

end A235644.P18407614613260074474

/-! ## A235644.P3426125917674509785

`ceil(A339625(n+1)/2)`
-/

namespace A235644.P3426125917674509785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339625 (n + 1) : ℚ) / 2⌉

end

end A235644.P3426125917674509785

/-! ## A235644.P7185803047550711333

`A110654(A339625(n+1))`
-/

namespace A235644.P7185803047550711333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A339625 (n + 1)).toNat

end

end A235644.P7185803047550711333

/-! ## A235644.P13744072325707764160

`dr(A219157(Δ[A028896(n)]))`
-/

namespace A235644.P13744072325707764160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A219157 (f1 (n + 1) - f1 n).toNat)

end

end A235644.P13744072325707764160

/-! ## A235644.P13246254105341332122

`A004526(A339625(n+1)+1)`
-/

namespace A235644.P13246254105341332122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339625 (n + 1) + 1).toNat

end

end A235644.P13246254105341332122

/-! ## A235644.P1749033953446572190

`val(A016116(A339625(n+1)+1), 2)`
-/

namespace A235644.P1749033953446572190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016116 (A339625 (n + 1) + 1).toNat).toNat 2

end

end A235644.P1749033953446572190

/-! ## A235644.P17587986273857931075

`A339625(n+1)-A187759(n+1)`
-/

namespace A235644.P17587986273857931075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339625 (n + 1) - A187759 (n + 1)

end

end A235644.P17587986273857931075

/-! ## A235644.P79451148204137956

`round(A339625(n+1)/A000032(C(2, n+2)))`
-/

namespace A235644.P79451148204137956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A339625 (n + 1) : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ))

end

end A235644.P79451148204137956

/-! ## A235644.P17980221255080004769

`round(A339625(n+1)/A000005(A001359(n+1)))`
-/

namespace A235644.P17980221255080004769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A339625 (n + 1) : ℚ) / (A000005 (A001359 (n + 1)).toNat : ℚ))

end

end A235644.P17980221255080004769

/-!
# A235645: From Goldbach's conjecture and Chen's theorem: number of decompositions of 2n as the sum of either two primes, or a prime and a semiprime.

The programs for A235645, there is no canonical definition to state claims against.
-/

/-! ## A235645.P12932256656661383804

`or(A002375(n+1), A341023(A086764(n)))`
-/

namespace A235645.P12932256656661383804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002375 (n + 1)) (A341023 ((A086764 n).toNat + 56))

end

end A235645.P12932256656661383804

/-! ## A235645.P6426148716875567855

`or(A045917(n+1), A341023(A086764(n)))`
-/

namespace A235645.P6426148716875567855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045917 (n + 1)) (A341023 ((A086764 n).toNat + 56))

end

end A235645.P6426148716875567855

/-! ## A235645.P112795995976732769

`or(A061358(2*(n+1)), A341023(A086764(n)))`
-/

namespace A235645.P112795995976732769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061358 (2 * (n + 1))) (A341023 ((A086764 n).toNat + 56))

end

end A235645.P112795995976732769

/-! ## A235645.P17333124025728177570

`or(A190353(2*(n+1)), A341023(A086764(n)))`
-/

namespace A235645.P17333124025728177570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190353 (2 * (n + 1))) (A341023 ((A086764 n).toNat + 56))

end

end A235645.P17333124025728177570

/-! ## A235645.P17819671615574998196

`A070206(A323243(2*n+3))+A045917(n+1)`
-/

namespace A235645.P17819671615574998196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070206 (A323243 (2 * n + 3)).toNat + A045917 (n + 1)

end

end A235645.P17819671615574998196

/-!
# A235648: Perimeter (rounded down) of a tetraflake-like fractal after n iterations, a(1) = 1 (see comments).

The programs for A235648, there is no canonical definition to state claims against.
-/

/-! ## A235648.P18221555868005748197

`A001462(A213705(n+1)-A030308(n))`
-/

namespace A235648.P18221555868005748197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A213705 (n + 1) - A030308 n).toNat

end

end A235648.P18221555868005748197

/-! ## A235648.P1267132122642053338

`A001462(A213705(n+1)-A110656(n))`
-/

namespace A235648.P1267132122642053338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A213705 (n + 1) - A110656 n).toNat

end

end A235648.P1267132122642053338

/-! ## A235648.P3385437169139279202

`A001462(A213705(n+1)-A280128(abs(1-n)))`
-/

namespace A235648.P3385437169139279202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A213705 (n + 1) - A280128 |1 - (n : ℤ)|.toNat).toNat

end

end A235648.P3385437169139279202

/-! ## A235648.P1273444650092497203

`A074198(A036620(n+1))`
-/

namespace A235648.P1273444650092497203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A036620 (n + 1)).toNat

end

end A235648.P1273444650092497203

/-! ## A235648.P16716274255689791020

`A225687(A025249(n+1))`
-/

namespace A235648.P16716274255689791020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A025249 (n + 1)).toNat

end

end A235648.P16716274255689791020

/-!
# A235650: Number of (n+1)X(2+1) 0..3 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A235650, there is no canonical definition to state claims against.
-/

/-! ## A235650.P2878518607156646002

`A235652(∑[n+1]+2)`
-/

namespace A235650.P2878518607156646002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235650.P2878518607156646002

/-! ## A235650.P4737076393815346614

`record[A235652(C(A002262(n), 2)+2)]`
-/

namespace A235650.P4737076393815346614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235652 (Nat.choose (A002262 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235650.P4737076393815346614

/-!
# A235651: Number of (n+1) X (3+1) 0..3 arrays with 2 X 2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A235651, there is no canonical definition to state claims against.
-/

/-! ## A235651.P8747966479131166032

`A235652(A167614(n+1))`
-/

namespace A235651.P8747966479131166032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235652 (A167614 (n + 1)).toNat

end

end A235651.P8747966479131166032

/-! ## A235651.P10904002952179055730

`A235652(∑[n+3]+1)`
-/

namespace A235651.P10904002952179055730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235651.P10904002952179055730

/-!
# A235653: Number of (n+1) X (1+1) 0..1 arrays with the difference of the upper median and minimum value of each 2 X 2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235653, the canonical program `A235653.P13514850946475138505` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235653 has offset 1).

The definition of A235653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235653.P13514850946475138505

`4*a(n-1)-a(n-2)-8*a(n-3)+4*a(n-4)` with `a(0)=16, a(1)=52, a(2)=160, a(3)=476`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235653

/-- `4*a(n-1)-a(n-2)-8*a(n-3)+4*a(n-4)` -/
def P13514850946475138505.Spec : Prop :=
  ∀ n, P13514850946475138505.a n = A235653 (n + 1)

theorem P13514850946475138505.correct : P13514850946475138505.Spec := by
  intro n
  simp only [A235653, Nat.add_sub_cancel]

end A235653

/-! ## A235653.P5255030764799955764

`A236523(∑[n]+1)`
-/

namespace A235653.P5255030764799955764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235653.P5255030764799955764

namespace A235653

/-- `A236523(∑[n]+1)` -/
def P5255030764799955764.Spec : Prop :=
  ∀ n, P5255030764799955764.a n = A235653 (n + 1)

end A235653

/-! ## A235653.P10331960498401270930

`lcm(2, A236523(A000124(n)))`
-/

namespace A235653.P10331960498401270930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236523 (A000124 n).toNat)

end

end A235653.P10331960498401270930

namespace A235653

/-- `lcm(2, A236523(A000124(n)))` -/
def P10331960498401270930.Spec : Prop :=
  ∀ n, (P10331960498401270930.a n : ℤ) = A235653 (n + 1)

end A235653

/-! ## A235653.P4386682617919078687

`record[A010054(n)*A236523(n+1)]`
-/

namespace A235653.P4386682617919078687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235653.P4386682617919078687

namespace A235653

/-- `record[A010054(n)*A236523(n+1)]` -/
def P4386682617919078687.Spec : Prop :=
  ∀ n, P4386682617919078687.a n = A235653 (n + 1)

end A235653

/-! ## A235653.P14124543855780784779

`record[A236523(n+1)/A008300(n)]`
-/

namespace A235653.P14124543855780784779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236523 (n + 1) : ℚ) / (A008300 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235653.P14124543855780784779

namespace A235653

/-- `record[A236523(n+1)/A008300(n)]` -/
def P14124543855780784779.Spec : Prop :=
  ∀ n, P14124543855780784779.a n = (A235653 (n + 1) : ℚ)

end A235653

/-!
# A235654: Number of (n+1)X(2+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235654, there is no canonical definition to state claims against.
-/

/-! ## A235654.P18220725140164374239

`A235660(∑[n+1]+2)`
-/

namespace A235654.P18220725140164374239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235654.P18220725140164374239

/-! ## A235654.P12234914630789295051

`record[A235660(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A235654.P12234914630789295051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235654.P12234914630789295051

/-! ## A235654.P10861806040100045053

`or(A235660(A133263(n+1)), A319072(2*n+1))`
-/

namespace A235654.P10861806040100045053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235660 (A133263 (n + 1)).toNat) (A319072 (2 * n + 1))

end

end A235654.P10861806040100045053

/-! ## A235654.P3093927297845131393

`record[A235660(abs(A201163(n)))]`
-/

namespace A235654.P3093927297845131393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235654.P3093927297845131393

/-! ## A235654.P11794541679708093888

`A000034(2*n)*A235660(A000096(n+1))`
-/

namespace A235654.P11794541679708093888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A235660 (A000096 (n + 1)).toNat

end

end A235654.P11794541679708093888

/-!
# A235655: Number of (n+1)X(3+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235655, there is no canonical definition to state claims against.
-/

/-! ## A235655.P5695775592133543640

`A235660(∑[n+2]+4)`
-/

namespace A235655.P5695775592133543640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235655.P5695775592133543640

/-! ## A235655.P11935092676597816888

`A235660(A167614(n+1))+A055965(n)`
-/

namespace A235655.P11935092676597816888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167614 (n + 1)).toNat + A055965 n

end

end A235655.P11935092676597816888

/-! ## A235655.P10367229816122874762

`A235660(A167614(n+1))*A280865(n)`
-/

namespace A235655.P10367229816122874762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167614 (n + 1)).toNat * A280865 n

end

end A235655.P10367229816122874762

/-! ## A235655.P4605826451759163814

`lcm(A033999(n), A235660(A167614(n+1)))`
-/

namespace A235655.P4605826451759163814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A235660 (A167614 (n + 1)).toNat)

end

end A235655.P4605826451759163814

/-! ## A235655.P9540846839436855413

`A342720(n+1)+A235660(A167614(n+1))`
-/

namespace A235655.P9540846839436855413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 1) + A235660 (A167614 (n + 1)).toNat

end

end A235655.P9540846839436855413

/-!
# A235656: Number of (n+1)X(4+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235656, there is no canonical definition to state claims against.
-/

/-! ## A235656.P10375213628032820466

`A235660(C(n+5, 2)-n)`
-/

namespace A235656.P10375213628032820466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (Nat.choose (n + 5) 2 - n)

end

end A235656.P10375213628032820466

/-! ## A235656.P14846003704196529780

`A235660(A374004(n+1))`
-/

namespace A235656.P14846003704196529780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A374004 (n + 1)).toNat

end

end A235656.P14846003704196529780

/-! ## A235656.P14176780883132963657

`A235660(A141214(n)+7)`
-/

namespace A235656.P14176780883132963657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A141214 n + 7).toNat

end

end A235656.P14176780883132963657

/-! ## A235656.P14758695158301694124

`A235660(A052905(n)+9)`
-/

namespace A235656.P14758695158301694124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A052905 n + 9).toNat

end

end A235656.P14758695158301694124

/-! ## A235656.P941488922224249459

`A235660(A167614(n+2)+1)`
-/

namespace A235656.P941488922224249459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167614 (n + 2) + 1).toNat

end

end A235656.P941488922224249459

/-!
# A235657: Number of (n+1)X(5+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235657, there is no canonical definition to state claims against.
-/

/-! ## A235657.P16196888739183632415

`A235660(A374005(n+1))`
-/

namespace A235657.P16196888739183632415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A374005 (n + 1)).toNat

end

end A235657.P16196888739183632415

/-! ## A235657.P16976068311261816291

`A235660(A167499(n+3))`
-/

namespace A235657.P16976068311261816291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167499 (n + 3)).toNat

end

end A235657.P16976068311261816291

/-! ## A235657.P17664445638417045760

`A235660(A155212(n)+13)`
-/

namespace A235657.P17664445638417045760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A155212 n + 13).toNat

end

end A235657.P17664445638417045760

/-! ## A235657.P10952201942295187871

`A235660(A056000(n)+15)`
-/

namespace A235657.P10952201942295187871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A056000 n + 15).toNat

end

end A235657.P10952201942295187871

/-! ## A235657.P14029846619269838731

`A235660(eq[7, A066657(n)])`
-/

namespace A235657.P14029846619269838731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235657.P14029846619269838731

/-!
# A235658: Number of (n+1)X(6+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235658, there is no canonical definition to state claims against.
-/

/-! ## A235658.P378516888378693303

`A235660(A374007(n+1))`
-/

namespace A235658.P378516888378693303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A374007 (n + 1)).toNat

end

end A235658.P378516888378693303

/-! ## A235658.P15868918902263433657

`A235660(A167499(n+4)+1)`
-/

namespace A235658.P15868918902263433657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167499 (n + 4) + 1).toNat

end

end A235658.P15868918902263433657

/-! ## A235658.P5749629274961481885

`A235660(A000124(n+5)+5)`
-/

namespace A235658.P5749629274961481885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A000124 (n + 5) + 5).toNat

end

end A235658.P5749629274961481885

/-! ## A235658.P8286588203428507788

`A235660(A000217(n+5)+6)`
-/

namespace A235658.P8286588203428507788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A000217 (n + 5) + 6).toNat

end

end A235658.P8286588203428507788

/-! ## A235658.P13592914326549465854

`A235660(eq[7, A131818(n+1)])`
-/

namespace A235658.P13592914326549465854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235658.P13592914326549465854

/-!
# A235659: Number of (n+1)X(7+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235659, there is no canonical definition to state claims against.
-/

/-! ## A235659.P4731697281308065174

`A235660(A374008(n+1))`
-/

namespace A235659.P4731697281308065174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A374008 (n + 1)).toNat

end

end A235659.P4731697281308065174

/-! ## A235659.P5609572879681815360

`A235660(eq[11, A066657(n)])`
-/

namespace A235659.P5609572879681815360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235659.P5609572879681815360

/-! ## A235659.P4309363825749854352

`A235660(A167614(n+5)+4)`
-/

namespace A235659.P4309363825749854352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A167614 (n + 5) + 4).toNat

end

end A235659.P4309363825749854352

/-! ## A235659.P7352273791535185562

`A235660(A027379(n+4)+10)`
-/

namespace A235659.P7352273791535185562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (A027379 (n + 4) + 10).toNat

end

end A235659.P7352273791535185562

/-! ## A235659.P11894362395699521059

`A235660(eq[6, A002262(n)]+1)`
-/

namespace A235659.P11894362395699521059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235659.P11894362395699521059

/-!
# A235660: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235660, there is no canonical definition to state claims against.
-/

/-! ## A235660.P1441213274981240320

`A236523(n+1)+A064458(A055762(n))`
-/

namespace A235660.P1441213274981240320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (n + 1) + A064458 (A055762 n).toNat

end

end A235660.P1441213274981240320

/-! ## A235660.P9939294073733857899

`A236523(n+1)+A055571(A176627(n))`
-/

namespace A235660.P9939294073733857899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (n + 1) + A055571 (A176627 n).toNat

end

end A235660.P9939294073733857899

/-! ## A235660.P17021167779345477916

`A236523(n+1)+A125007(A188646(n))`
-/

namespace A235660.P17021167779345477916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (n + 1) + A125007 (A188646 n).toNat

end

end A235660.P17021167779345477916

/-!
# A235661: Primes p with p*(p+1) - prime(p) prime.

The programs for A235661, there is no canonical definition to state claims against.
-/

/-! ## A235661.P4962281946880152459

`p?[A235592(n+1)]`
-/

namespace A235661.P4962281946880152459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235661.P4962281946880152459

/-! ## A235661.P5691897160546394102

`filter[A235592(n+1), A010051(#)]`
-/

namespace A235661.P5691897160546394102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A235661.P5691897160546394102

/-! ## A235661.P559698513057016484

`∩[A000040(n+1), A235592(n+1)]`
-/

namespace A235661.P559698513057016484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P559698513057016484

/-! ## A235661.P8567145586264121392

`∩[A008578(n+1), A235592(n+1)]`
-/

namespace A235661.P8567145586264121392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P8567145586264121392

/-! ## A235661.P12921801525052718163

`∩[A158611(n+1), A235592(n+1)]`
-/

namespace A235661.P12921801525052718163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P12921801525052718163

/-! ## A235661.P13567563811740535838

`∩[A182986(n+1), A235592(n+1)]`
-/

namespace A235661.P13567563811740535838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P13567563811740535838

/-! ## A235661.P1190202377498406230

`record[A020639(A235592(A324347(n)))]`
-/

namespace A235661.P1190202377498406230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235592 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235661.P1190202377498406230

/-! ## A235661.P16144290572738154561

`record[A020639(A235592(n+1)%A002476(n+1))]`
-/

namespace A235661.P16144290572738154561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A235592 (n + 1)) (A002476 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235661.P16144290572738154561

/-! ## A235661.P10299944291385210019

`record[A006530(2*A235592(n+1))]`
-/

namespace A235661.P10299944291385210019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A235592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235661.P10299944291385210019

/-! ## A235661.P10362203198106113621

`∩[A235592(n+1), A372059(n+1)]`
-/

namespace A235661.P10362203198106113621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P10362203198106113621

/-! ## A235661.P5701912131547803679

`filter[A235592(n+1), A080339(#)]`
-/

namespace A235661.P5701912131547803679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A235661.P5701912131547803679

/-! ## A235661.P12452236715674149395

`record[A014963(A235592(A008619(n)))]`
-/

namespace A235661.P12452236715674149395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A235592 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235661.P12452236715674149395

/-! ## A235661.P5233919070221714682

`A014963(record[A014963(A235592(n+1))])`
-/

namespace A235661.P5233919070221714682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A235592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A235661.P5233919070221714682

/-! ## A235661.P17072443600979949175

`∩[A005180(n+1), A235592(n+1)]`
-/

namespace A235661.P17072443600979949175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235661.P17072443600979949175

/-!
# A235662: Number of (n+1)X(2+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235662, there is no canonical definition to state claims against.
-/

/-! ## A235662.P8679666031635239521

`A235665(∑[n+2])`
-/

namespace A235662.P8679666031635239521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235662.P8679666031635239521

/-! ## A235662.P11743637754987831143

`record[A235665(abs(A201163(n)))]`
-/

namespace A235662.P11743637754987831143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235662.P11743637754987831143

/-! ## A235662.P1623491457068776408

`record[A235665(record[A198453(n+1)])]`
-/

namespace A235662.P1623491457068776408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198453 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235662.P1623491457068776408

/-! ## A235662.P5267243414062489311

`record[A010054(n+3)*A235665(n+2)]`
-/

namespace A235662.P5267243414062489311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A235665 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235662.P5267243414062489311

/-!
# A235663: Number of (n+1)X(3+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235663, there is no canonical definition to state claims against.
-/

/-! ## A235663.P2417312660787614539

`A235665(∑[n+3]+1)`
-/

namespace A235663.P2417312660787614539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235663.P2417312660787614539

/-!
# A235664: Number of (n+1)X(4+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235664, there is no canonical definition to state claims against.
-/

/-! ## A235664.P15662019553756840929

`A235665(A141214(n+1))`
-/

namespace A235664.P15662019553756840929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (A141214 (n + 1)).toNat

end

end A235664.P15662019553756840929

/-! ## A235664.P10506941209337023117

`A235665(A056000(n)+7)`
-/

namespace A235664.P10506941209337023117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (A056000 n + 7).toNat

end

end A235664.P10506941209337023117

/-!
# A235666: Number of (2+1) X (n+1) 0..3 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235666, there is no canonical definition to state claims against.
-/

/-! ## A235666.P7915147004444121539

`A235665(∑[n+1]+2)`
-/

namespace A235666.P7915147004444121539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235666.P7915147004444121539

/-! ## A235666.P13741775011747012086

`record[root(A235665(n+3), A235670(n))]`
-/

namespace A235666.P13741775011747012086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235665 (n + 3) : ℝ) ^ (1 / (A235670 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235666.P13741775011747012086

/-! ## A235666.P6614377593582160353

`record[A235665(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A235666.P6614377593582160353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235666.P6614377593582160353

/-! ## A235666.P13181325629373015182

`A326682(n)+A235665(A133263(n+1))`
-/

namespace A235666.P13181325629373015182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A235665 (A133263 (n + 1)).toNat

end

end A235666.P13181325629373015182

/-! ## A235666.P15994123505652504978

`A235665(A133263(n+1))+A180995(n+1)`
-/

namespace A235666.P15994123505652504978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (A133263 (n + 1)).toNat + A180995 (n + 1)

end

end A235666.P15994123505652504978

/-!
# A235667: Number of (3+1)X(n+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235667, there is no canonical definition to state claims against.
-/

/-! ## A235667.P3072348491359870667

`A235665(∑[n+2]+4)`
-/

namespace A235667.P3072348491359870667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235667.P3072348491359870667

/-!
# A235668: Number of (4+1)X(n+1) 0..3 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235668, there is no canonical definition to state claims against.
-/

/-! ## A235668.P2256131785004317750

`A235665(A141214(n)+7)`
-/

namespace A235668.P2256131785004317750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (A141214 n + 7).toNat

end

end A235668.P2256131785004317750

/-! ## A235668.P9500561276777115284

`A235665(eq[3, A002262(n)]+1)`
-/

namespace A235668.P9500561276777115284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235668.P9500561276777115284

/-!
# A235669: Sum of parts of the form 10...0 and 20...0 with nonnegative number of zeros in ternary representation of n as the corresponding numbers 3^n and 2*3^n.

The programs for A235669, there is no canonical definition to state claims against.
-/

/-! ## A235669.P14504448116046601594

`A118088(A077593(A185254(n))+n)`
-/

namespace A235669.P14504448116046601594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A077593 (A185254 n).toNat + (n : ℤ)).toNat

end

end A235669.P14504448116046601594

/-! ## A235669.P12694817319293581232

`A118088(A010894(A347799(n))+n)`
-/

namespace A235669.P12694817319293581232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A010894 ((A347799 n).toNat + 21) + (n : ℤ)).toNat

end

end A235669.P12694817319293581232

/-! ## A235669.P1017253062711301373

`A118088(n)-A010894(A347799(n))`
-/

namespace A235669.P1017253062711301373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 n - A010894 ((A347799 n).toNat + 21)

end

end A235669.P1017253062711301373

/-! ## A235669.P11415004798451455194

`A118088(A004884(n+1)%A141214(n))`
-/

namespace A235669.P11415004798451455194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (Int.tmod (A004884 (n + 1)) (A141214 n)).toNat

end

end A235669.P11415004798451455194

/-!
# A235670: Square array read by antidiagonals upwards in which the n-th column gives the partial sums of the n-th column of A211970.

The programs for A235670, there is no canonical definition to state claims against.
-/

/-! ## A235670.P17564670679998813348

`A130321(n)-A046660(A082614(n))`
-/

namespace A235670.P17564670679998813348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A046660 (A082614 n).toNat

end

end A235670.P17564670679998813348

/-! ## A235670.P12101280076213204076

`A182747(A004736(n+1))-A241972(A019505(n+1))`
-/

namespace A235670.P12101280076213204076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 (A004736 (n + 1)).toNat - A241972 (A019505 (n + 1)).toNat

end

end A235670.P12101280076213204076

/-! ## A235670.P13790392016981921019

`A130321(n)-A297240(A084188(n))`
-/

namespace A235670.P13790392016981921019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A297240 (A084188 n).toNat

end

end A235670.P13790392016981921019

/-! ## A235670.P2600437263028746412

`A101508(n)-A055641(A097813(n))`
-/

namespace A235670.P2600437263028746412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 n - A055641 (A097813 n).toNat

end

end A235670.P2600437263028746412

/-!
# A235671: Triangle read by rows in which row n lists the proper divisors of n in increasing order, 2n, and the proper divisors of n in decreasing order.

The programs for A235671, there is no canonical definition to state claims against.
-/

/-! ## A235671.P17079982207783740680

`A138121(A341660(n+1)+A198442(n+1))`
-/

namespace A235671.P17079982207783740680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (A341660 (n + 1) + A198442 (n + 1)).toNat

end

end A235671.P17079982207783740680

/-! ## A235671.P13651308340871729050

`A010783(n+1)*A102005(A239802(n+1))`
-/

namespace A235671.P13651308340871729050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A102005 (A239802 (n + 1)).toNat

end

end A235671.P13651308340871729050

/-! ## A235671.P18040658531458066237

`A146292(A106284(n+1))+Δ[A003056(n)²]`
-/

namespace A235671.P18040658531458066237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (A106284 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A235671.P18040658531458066237

/-! ## A235671.P6088067789768940575

`A064894(4*A225467(n))`
-/

namespace A235671.P6088067789768940575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (4 * A225467 n).toNat

end

end A235671.P6088067789768940575

/-!
# A235672: Number of (n+1)X(n+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235672, there is no canonical definition to state claims against.
-/

/-! ## A235672.P13778672276987364770

`A235679((n+1)²+n²)`
-/

namespace A235672.P13778672276987364770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 ((n + 1) ^ 2 + n ^ 2)

end

end A235672.P13778672276987364770

/-!
# A235673: Number of (n+1) X (2+1) 0..1 arrays with the difference between each 2 X 2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235673, there is no canonical definition to state claims against.
-/

/-! ## A235673.P15584570267222343366

`A235679(∑[n+1]+2)`
-/

namespace A235673.P15584570267222343366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235673.P15584570267222343366

/-! ## A235673.P9642122943494821546

`lcm(2, A235679(A000096(n)+3))`
-/

namespace A235673.P9642122943494821546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235679 (A000096 n + 3).toNat)

end

end A235673.P9642122943494821546

/-! ## A235673.P16614777641479134850

`A000041(C(2, n+2))*A235679(A000096(n+1))`
-/

namespace A235673.P16614777641479134850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A235679 (A000096 (n + 1)).toNat

end

end A235673.P16614777641479134850

/-! ## A235673.P1660940450575136911

`A007318(C(2, n+2))*A235679(A000096(n+1))`
-/

namespace A235673.P1660940450575136911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A235679 (A000096 (n + 1)).toNat

end

end A235673.P1660940450575136911

/-! ## A235673.P220717871558459937

`A007318(A000096(2*n))*A235679(A000096(n+1))`
-/

namespace A235673.P220717871558459937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (2 * n)).toNat * A235679 (A000096 (n + 1)).toNat

end

end A235673.P220717871558459937

/-!
# A235674: Number of (n+1)X(3+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235674, there is no canonical definition to state claims against.
-/

/-! ## A235674.P14821303399243831416

`A235679(∑[n+2]+4)`
-/

namespace A235674.P14821303399243831416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235674.P14821303399243831416

/-! ## A235674.P1841766464332743534

`lcm(2, A235679(A167614(n+1)))`
-/

namespace A235674.P1841766464332743534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235679 (A167614 (n + 1)).toNat)

end

end A235674.P1841766464332743534

/-! ## A235674.P12055390098054567615

`A235679(A167614(n+1))+A185284(n)`
-/

namespace A235674.P12055390098054567615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167614 (n + 1)).toNat + A185284 n

end

end A235674.P12055390098054567615

/-! ## A235674.P6102516919252423947

`A235679(A167614(n+1))*A284562(n)`
-/

namespace A235674.P6102516919252423947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167614 (n + 1)).toNat * A284562 n

end

end A235674.P6102516919252423947

/-! ## A235674.P5213816562859862737

`A235679(A167614(n+1))+A034521(n+1)`
-/

namespace A235674.P5213816562859862737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167614 (n + 1)).toNat + A034521 (n + 1)

end

end A235674.P5213816562859862737

/-!
# A235675: Number of (n+1)X(4+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235675, there is no canonical definition to state claims against.
-/

/-! ## A235675.P9249390993251425918

`A235679(A374004(n+1))`
-/

namespace A235675.P9249390993251425918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A374004 (n + 1)).toNat

end

end A235675.P9249390993251425918

/-! ## A235675.P7588104755746316048

`A235679(A052905(n)+9)`
-/

namespace A235675.P7588104755746316048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A052905 n + 9).toNat

end

end A235675.P7588104755746316048

/-! ## A235675.P11383578944565186326

`A235679(A055999(n)+10)`
-/

namespace A235675.P11383578944565186326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A055999 n + 10).toNat

end

end A235675.P11383578944565186326

/-! ## A235675.P10977885320981284775

`A235679(A167614(n+2)+1)`
-/

namespace A235675.P10977885320981284775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167614 (n + 2) + 1).toNat

end

end A235675.P10977885320981284775

/-! ## A235675.P17208827885824194750

`A235679(eq[3, A002262(n)]+1)`
-/

namespace A235675.P17208827885824194750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235675.P17208827885824194750

/-!
# A235676: Number of (n+1)X(5+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235676, there is no canonical definition to state claims against.
-/

/-! ## A235676.P6729450633945127436

`A235679(A374005(n+1))`
-/

namespace A235676.P6729450633945127436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A374005 (n + 1)).toNat

end

end A235676.P6729450633945127436

/-! ## A235676.P10774911476910381856

`A235679(A167499(n+3))`
-/

namespace A235676.P10774911476910381856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167499 (n + 3)).toNat

end

end A235676.P10774911476910381856

/-! ## A235676.P6524026346974103180

`A235679(eq[4, A002262(n)]+1)`
-/

namespace A235676.P6524026346974103180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235676.P6524026346974103180

/-! ## A235676.P17819077156865879171

`A235679(A173036(n)+A016825(n))`
-/

namespace A235676.P17819077156865879171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A173036 n + A016825 n).toNat

end

end A235676.P17819077156865879171

/-! ## A235676.P13498430749167276502

`A235679(Δ[A264443(n)])`
-/

namespace A235676.P13498430749167276502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (f1 (n + 1) - f1 n).toNat

end

end A235676.P13498430749167276502

/-!
# A235677: Number of (n+1)X(6+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235677, there is no canonical definition to state claims against.
-/

/-! ## A235677.P17986752781094817324

`A235679(A374007(n+1))`
-/

namespace A235677.P17986752781094817324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A374007 (n + 1)).toNat

end

end A235677.P17986752781094817324

/-! ## A235677.P8190497998918869636

`A235679(Δ[A264443(n)]+10)`
-/

namespace A235677.P8190497998918869636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (f1 (n + 1) - f1 n + 10).toNat

end

end A235677.P8190497998918869636

/-! ## A235677.P13991912327550838763

`A235679(A167499(n+4)+1)`
-/

namespace A235677.P13991912327550838763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A167499 (n + 4) + 1).toNat

end

end A235677.P13991912327550838763

/-! ## A235677.P11599370326068725662

`A235679(eq[7, A131818(n+1)])`
-/

namespace A235677.P11599370326068725662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235677.P11599370326068725662

/-! ## A235677.P10889827511538431716

`A235679(eq[10, A185782(n+1)]-(2*n+1))`
-/

namespace A235677.P10889827511538431716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A235677.P10889827511538431716

/-!
# A235678: Number of (n+1)X(7+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235678, there is no canonical definition to state claims against.
-/

/-! ## A235678.P3706220779967816337

`A235679(A374008(n+1))`
-/

namespace A235678.P3706220779967816337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A374008 (n + 1)).toNat

end

end A235678.P3706220779967816337

/-! ## A235678.P3462506362380309289

`A235679(A055999(n+4))`
-/

namespace A235678.P3462506362380309289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (A055999 (n + 4)).toNat

end

end A235678.P3462506362380309289

/-! ## A235678.P7886441390540314427

`A235679(eq[6, A193592(n)])`
-/

namespace A235678.P7886441390540314427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235678.P7886441390540314427

/-! ## A235678.P12094063476367261753

`A235679(eq[7, A200370(n+1)])`
-/

namespace A235678.P12094063476367261753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235678.P12094063476367261753

/-!
# A235679: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A235679, there is no canonical definition to state claims against.
-/

/-! ## A235679.P16569442242908302518

`A233583(A235449(n+1)+A015109(n))`
-/

namespace A235679.P16569442242908302518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A235449 (n + 1) + A015109 n).toNat

end

end A235679.P16569442242908302518

/-! ## A235679.P12291609435296273355

`A246950(A076044(n))+A235449(n+1)`
-/

namespace A235679.P12291609435296273355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246950 (A076044 n).toNat + A235449 (n + 1)

end

end A235679.P12291609435296273355

/-! ## A235679.P13598676394058743072

`A235449(n+1)-A392705(A001006(n))`
-/

namespace A235679.P13598676394058743072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235449 (n + 1) - A392705 (A001006 n).toNat

end

end A235679.P13598676394058743072

/-!
# A235681: Primes p with prime(p) - p + 1 and p*(p+1) - prime(p) both prime.

The programs for A235681, there is no canonical definition to state claims against.
-/

/-! ## A235681.P5807198965153682552

`∩[A234695(n+1), A235661(n+1)]`
-/

namespace A235681.P5807198965153682552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235681.P5807198965153682552

/-! ## A235681.P11242295560188741964

`∩[A234851(n+1), A235661(n+1)]`
-/

namespace A235681.P11242295560188741964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235681.P11242295560188741964

/-! ## A235681.P9374904189373456610

`∩[A234695(n+1), A235592(n+1)]`
-/

namespace A235681.P9374904189373456610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235681.P9374904189373456610

/-! ## A235681.P12388904829150015311

`p?[∩[A234851(n+1), A235592(n+1)]]`
-/

namespace A235681.P12388904829150015311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235681.P12388904829150015311

/-! ## A235681.P58340525994345921

`∩[A234851(A234853(n+1)), A235592(n+1)]`
-/

namespace A235681.P58340525994345921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (A234853 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235681.P58340525994345921

/-!
# A235682: Number of ways to write n = k + m with k > 0 and m > 2 such that p = phi(k) + phi(m)/2 + 1, prime(p) - p + 1 and p*(p+1) - prime(p) are all prime, where phi(.) is Euler's totient function.

The programs for A235682, there is no canonical definition to state claims against.
-/

/-! ## A235682.P13564542900554245269

`A307598(A090696(n+1)-A281113(2*n+5))`
-/

namespace A235682.P13564542900554245269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A090696 (n + 1) - A281113 (2 * n + 5)).toNat

end

end A235682.P13564542900554245269

/-! ## A235682.P10734789625397189652

`∑{e}[∑[A227696(A191417(n+1))], #]`
-/

namespace A235682.P10734789625397189652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 (A191417 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A235682.P10734789625397189652

/-! ## A235682.P17583276633023554069

`A341970(A183091(n+1))-A187036(n)`
-/

namespace A235682.P17583276633023554069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (A183091 (n + 1)).toNat - A187036 n

end

end A235682.P17583276633023554069

/-! ## A235682.P2428192594025090923

`A103863(xor(A136125(n+1), A315050(n)))`
-/

namespace A235682.P2428192594025090923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (Int.xor (A136125 (n + 1)) (A315050 n)).toNat

end

end A235682.P2428192594025090923

/-! ## A235682.P14071256340363787398

`A001222(or(A145805(2*n+1), A238872(n)))`
-/

namespace A235682.P14071256340363787398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A145805 (2 * n + 1)) (A238872 n)).toNat

end

end A235682.P14071256340363787398

/-!
# A235683: Numbers n such that (46^n + 1)/47 is prime.

The programs for A235683, there is no canonical definition to state claims against.
-/

/-! ## A235683.P9535895718333012817

`A354200(A240029(n+1)+A000975(n))`
-/

namespace A235683.P9535895718333012817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354200 (A240029 (n + 1) + A000975 n).toNat

end

end A235683.P9535895718333012817

/-!
# A235684: Number of compositions of n into powers of 3 and doubled powers of 3.

The programs for A235684, there is no canonical definition to state claims against.
-/

/-! ## A235684.P11297780253289274538

`A224341(A055645(n))-Δ[A079958(n)]`
-/

namespace A235684.P11297780253289274538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224341 (A055645 n).toNat - (f1 (n + 1) - f1 n)

end

end A235684.P11297780253289274538

/-! ## A235684.P10067603820561470706

`A224341(A055646(n))-Δ[A079958(n)]`
-/

namespace A235684.P10067603820561470706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224341 (A055646 n).toNat - (f1 (n + 1) - f1 n)

end

end A235684.P10067603820561470706

/-! ## A235684.P8754744389463621010

`A224341(n)-A060065(Δ[A005907(n+1)])`
-/

namespace A235684.P8754744389463621010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224341 n - A060065 (f1 (n + 1) - f1 n).toNat

end

end A235684.P8754744389463621010

/-! ## A235684.P6085333316412154774

`A079977(A224811(n))+A001462(A299166(n))`
-/

namespace A235684.P6085333316412154774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A224811 n).toNat + A001462 (A299166 n).toNat

end

end A235684.P6085333316412154774

/-! ## A235684.P12003461881349937140

`A055086(A201969(n))`
-/

namespace A235684.P12003461881349937140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A201969 n).toNat

end

end A235684.P12003461881349937140

/-!
# A235685: E.g.f.: exp( Sum_{n>=1} H(n) * x^(2*n)/(2*n) ) where H(n) is the n-th harmonic number.

The programs for A235685, there is no canonical definition to state claims against.
-/

/-! ## A235685.P16004330375763610734

`A091223(A261594(n))*A261594(n)`
-/

namespace A235685.P16004330375763610734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091223 (A261594 n).toNat * A261594 n

end

end A235685.P16004330375763610734

/-!
# A235686: Small gaps between primes - refinement of the GPY sieve method.

The programs for A235686, there is no canonical definition to state claims against.
-/

/-! ## A235686.P4993908106920300948

`2*A244368(n)`
-/

namespace A235686.P4993908106920300948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244368 n

end

end A235686.P4993908106920300948

/-! ## A235686.P2393511848294872043

`A005843(A244368(n))`
-/

namespace A235686.P2393511848294872043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A244368 n).toNat

end

end A235686.P2393511848294872043

/-! ## A235686.P4559020863578117642

`A047231(A244368(n)+1)`
-/

namespace A235686.P4559020863578117642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (A244368 n + 1).toNat

end

end A235686.P4559020863578117642

/-! ## A235686.P4181522184097403178

`A004273(A244368(n)+1)-1`
-/

namespace A235686.P4181522184097403178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A244368 n + 1).toNat - 1

end

end A235686.P4181522184097403178

/-! ## A235686.P5488042794562552532

`A005408(A244368(n)+1)-3`
-/

namespace A235686.P5488042794562552532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A244368 n + 1).toNat - 3

end

end A235686.P5488042794562552532

/-! ## A235686.P8075615935767088395

`A244368(n)+A244368(n)%A143336(n)`
-/

namespace A235686.P8075615935767088395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244368 n + Int.tmod (A244368 n) (A143336 n)

end

end A235686.P8075615935767088395

/-! ## A235686.P11316300703578962066

`A008683(A007918(n))+A005408(A244368(n))`
-/

namespace A235686.P11316300703578962066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + A005408 (A244368 n).toNat

end

end A235686.P11316300703578962066

/-!
# A235687: Semiprimes which remain semiprimes when the rightmost digit is removed.

The programs for A235687, there is no canonical definition to state claims against.
-/

/-! ## A235687.P13124942455934345063

`A085733(n+4)%A101100(A236809(n+1))`
-/

namespace A235687.P13124942455934345063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085733 (n + 4)) (A101100 (A236809 (n + 1)).toNat)

end

end A235687.P13124942455934345063

/-! ## A235687.P17677471602645470872

`A000196(A085733(n+4)²)`
-/

namespace A235687.P17677471602645470872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A085733 (n + 4) ^ 2).toNat

end

end A235687.P17677471602645470872

/-! ## A235687.P7233269439084715190

`A003059(A085733(n+4)²)`
-/

namespace A235687.P7233269439084715190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A085733 (n + 4) ^ 2).toNat

end

end A235687.P7233269439084715190

/-! ## A235687.P6985953457760358772

`A085733(A032559(n+1)+3)`
-/

namespace A235687.P6985953457760358772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (A032559 (n + 1) + 3).toNat

end

end A235687.P6985953457760358772

/-! ## A235687.P174492310206104900

`filter[A085733(n+1), A377191(#)]`
-/

namespace A235687.P174492310206104900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A235687.P174492310206104900

/-!
# A235688: Semiprimes which remain semiprimes when the leftmost digit is removed.

The programs for A235688, there is no canonical definition to state claims against.
-/

/-! ## A235688.P13900403549996763243

`A086697(A087051(n)+4)`
-/

namespace A235688.P13900403549996763243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (A087051 n + 4).toNat

end

end A235688.P13900403549996763243

/-! ## A235688.P11462204953265708804

`A003059(A086697(n+4)²)`
-/

namespace A235688.P11462204953265708804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A086697 (n + 4) ^ 2).toNat

end

end A235688.P11462204953265708804

/-! ## A235688.P11407595160158438536

`A137735(A086697(n+4)²)`
-/

namespace A235688.P11407595160158438536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A086697 (n + 4) ^ 2).toNat

end

end A235688.P11407595160158438536

/-! ## A235688.P17793549288680539972

`A086697(A227549(n+1)+4)`
-/

namespace A235688.P17793549288680539972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (A227549 (n + 1) + 4).toNat

end

end A235688.P17793549288680539972

/-! ## A235688.P8515057934797047913

`filter[A086697(n+1), A377191(#)]`
-/

namespace A235688.P8515057934797047913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A235688.P8515057934797047913

/-!
# A235689: Semiprimes which remain semiprimes when the leftmost and rightmost digits are removed.

The programs for A235689, there is no canonical definition to state claims against.
-/

/-! ## A235689.P18039172160931941830

`A339561(A007091(n)+48)`
-/

namespace A235689.P18039172160931941830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339561 (A007091 n + 48).toNat

end

end A235689.P18039172160931941830

/-! ## A235689.P12490652083506304165

`A339561(lt[A006094(n+1), A303016(n+1)])`
-/

namespace A235689.P12490652083506304165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A235689.P12490652083506304165

/-!
# A235690: Semiprimes which have one or more occurrences of exactly two different digits.

The programs for A235690, there is no canonical definition to state claims against.
-/

/-! ## A235690.P16873874147777184057

`record[A179312(A031955(n+1))]`
-/

namespace A235690.P16873874147777184057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A031955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235690.P16873874147777184057

/-! ## A235690.P1144851512563039945

`filter[A031955(n+1), A064911(#)]`
-/

namespace A235690.P1144851512563039945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235690.P1144851512563039945

/-! ## A235690.P9047581662521327186

`∩[A001358(n+1), A031955(n+1)]`
-/

namespace A235690.P9047581662521327186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P9047581662521327186

/-! ## A235690.P5359318132216542536

`∩[A031955(n+1), A176540(n+1)]`
-/

namespace A235690.P5359318132216542536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P5359318132216542536

/-! ## A235690.P8909234361942867450

`∩[A031955(n+1), A186621(n+1)+1]`
-/

namespace A235690.P8909234361942867450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P8909234361942867450

/-! ## A235690.P16145621958570279679

`∩[A031955(n+1), A088707(n+1)-1]`
-/

namespace A235690.P16145621958570279679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P16145621958570279679

/-! ## A235690.P17097132829861592831

`∩[A031955(n+1), A175708(n+1)+1+n]`
-/

namespace A235690.P17097132829861592831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P17097132829861592831

/-! ## A235690.P4515164264180649560

`∩[A031955(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A235690.P4515164264180649560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235690.P4515164264180649560

/-!
# A235691: Semiprimes which have one or more occurrences of exactly three different digits.

The programs for A235691, there is no canonical definition to state claims against.
-/

/-! ## A235691.P5928370296465552612

`A320969(n+31)`
-/

namespace A235691.P5928370296465552612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 31)

end

end A235691.P5928370296465552612

/-! ## A235691.P5918227424064627398

`filter[A031962(n+1), A064911(#)]`
-/

namespace A235691.P5918227424064627398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235691.P5918227424064627398

/-! ## A235691.P11943956960386217604

`∩[A001358(n+1), A031962(n+1)]`
-/

namespace A235691.P11943956960386217604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235691.P11943956960386217604

/-! ## A235691.P16322938180533272202

`∩[A031962(n+1), A176540(n+1)]`
-/

namespace A235691.P16322938180533272202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235691.P16322938180533272202

/-!
# A235692: Semiprimes which have one or more occurrences of exactly four different digits.

The programs for A235692, there is no canonical definition to state claims against.
-/

/-! ## A235692.P11468137208074992824

`A320969(214+n)`
-/

namespace A235692.P11468137208074992824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (214 + n)

end

end A235692.P11468137208074992824

/-! ## A235692.P15171182670589985793

`filter[A031969(n+1), A064911(#)]`
-/

namespace A235692.P15171182670589985793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235692.P15171182670589985793

/-!
# A235693: Semiprimes which have one or more occurrences of exactly five different digits.

The programs for A235693, there is no canonical definition to state claims against.
-/

/-! ## A235693.P15670505233698860557

`filter[A031987(n+1), A064911(#)]`
-/

namespace A235693.P15670505233698860557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235693.P15670505233698860557

/-!
# A235698: a(n+1) = a(n) + (smallest digit of a(n)) + 1, a(0)=0.

The programs for A235698, the canonical program `A235698.P16093469187567191101` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235698 has offset 0).

The definition of A235698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235698.P16093469187567191101

`a(n-1)+A054054(a(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235698

/-- `a(n-1)+A054054(a(n-1))+1` -/
def P16093469187567191101.Spec : Prop :=
  ∀ n, P16093469187567191101.a n = A235698 n

theorem P16093469187567191101.correct : P16093469187567191101.Spec := by
  intro n
  simp only [A235698]

end A235698

/-!
# A235699: a(n+1) = a(n) + (a(n) mod 10) + 1, a(0) = 0.

The programs for A235699, the canonical program `A235699.P13832280691224517413` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235699 has offset 0).

The definition of A235699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235699.P13832280691224517413

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235699

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P13832280691224517413.Spec : Prop :=
  ∀ n, P13832280691224517413.a n = A235699 n

theorem P13832280691224517413.correct : P13832280691224517413.Spec := by
  intro n
  simp only [A235699]

end A235699

/-! ## A235699.P14421058873115575686

`∑[10-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A235699.P14421058873115575686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235699.P14421058873115575686

namespace A235699

/-- `∑[10-a(n-2)]` -/
def P14421058873115575686.Spec : Prop :=
  ∀ n, P14421058873115575686.a n = A235699 n

end A235699

/-! ## A235699.P1696486428499145171

`a(n-1)%10+a(n-1)+1` with `a(0)=0`
-/

namespace A235699.P1696486428499145171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) % 10 + (a (n - 1) + 1)

end

end A235699.P1696486428499145171

namespace A235699

/-- `a(n-1)%10+a(n-1)+1` -/
def P1696486428499145171.Spec : Prop :=
  ∀ n, (P1696486428499145171.a n : ℤ) = A235699 n

end A235699

/-! ## A235699.P9607121180225050801

`A102039(n+1)-1`
-/

namespace A235699.P9607121180225050801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) - 1

end

end A235699.P9607121180225050801

namespace A235699

/-- `A102039(n+1)-1` -/
def P9607121180225050801.Spec : Prop :=
  ∀ n, P9607121180225050801.a n = A235699 n

end A235699

/-! ## A235699.P8478974830985766402

`(∑[A095915(n+1)]-1)/2`
-/

namespace A235699.P8478974830985766402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A235699.P8478974830985766402

namespace A235699

/-- `(∑[A095915(n+1)]-1)/2` -/
def P8478974830985766402.Spec : Prop :=
  ∀ n, P8478974830985766402.a n = (A235699 n : ℚ)

end A235699

/-! ## A235699.P15045891109918208160

`∑[A000689(n)]-A000689(n)`
-/

namespace A235699.P15045891109918208160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000689 n

end

end A235699.P15045891109918208160

namespace A235699

/-- `∑[A000689(n)]-A000689(n)` -/
def P15045891109918208160.Spec : Prop :=
  ∀ n, P15045891109918208160.a n = A235699 n

end A235699

/-! ## A235699.P9567596057065363028

`A002081(n)-(A000689(n)+1)`
-/

namespace A235699.P9567596057065363028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - (A000689 n + 1)

end

end A235699.P9567596057065363028

namespace A235699

/-- `A002081(n)-(A000689(n)+1)` -/
def P9567596057065363028.Spec : Prop :=
  ∀ n, P9567596057065363028.a n = A235699 n

end A235699

/-! ## A235699.P17987370812316256584

`A017377(n)-A102042(n+1)`
-/

namespace A235699.P17987370812316256584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A102042 (n + 1)

end

end A235699.P17987370812316256584

namespace A235699

/-- `A017377(n)-A102042(n+1)` -/
def P17987370812316256584.Spec : Prop :=
  ∀ n, P17987370812316256584.a n = A235699 n

end A235699

/-! ## A235699.P8076156832108907614

`∪[A002081(n), A008416(n)]-1`
-/

namespace A235699.P8076156832108907614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P8076156832108907614

namespace A235699

/-- `∪[A002081(n), A008416(n)]-1` -/
def P8076156832108907614.Spec : Prop :=
  ∀ n, P8076156832108907614.a n = A235699 n

end A235699

/-! ## A235699.P3155500581592309519

`∪[A002081(n), A010010(n)]-1`
-/

namespace A235699.P3155500581592309519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P3155500581592309519

namespace A235699

/-- `∪[A002081(n), A010010(n)]-1` -/
def P3155500581592309519.Spec : Prop :=
  ∀ n, P3155500581592309519.a n = A235699 n

end A235699

/-! ## A235699.P4126965604300138833

`∪[A002081(n), A010022(n)]-1`
-/

namespace A235699.P4126965604300138833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010022 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P4126965604300138833

namespace A235699

/-- `∪[A002081(n), A010022(n)]-1` -/
def P4126965604300138833.Spec : Prop :=
  ∀ n, P4126965604300138833.a n = A235699 n

end A235699

/-! ## A235699.P2608085208260163088

`∪[A002081(n), A010968(n)]-1`
-/

namespace A235699.P2608085208260163088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 15)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P2608085208260163088

namespace A235699

/-- `∪[A002081(n), A010968(n)]-1` -/
def P2608085208260163088.Spec : Prop :=
  ∀ n, P2608085208260163088.a n = A235699 n

end A235699

/-! ## A235699.P424231748711798782

`∪[A002081(n), A016996(n)]-1`
-/

namespace A235699.P424231748711798782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P424231748711798782

namespace A235699

/-- `∪[A002081(n), A016996(n)]-1` -/
def P424231748711798782.Spec : Prop :=
  ∀ n, P424231748711798782.a n = A235699 n

end A235699

/-! ## A235699.P8156169739178631036

`∪[A002081(n), A017177(n)]-1`
-/

namespace A235699.P8156169739178631036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A235699.P8156169739178631036

namespace A235699

/-- `∪[A002081(n), A017177(n)]-1` -/
def P8156169739178631036.Spec : Prop :=
  ∀ n, P8156169739178631036.a n = A235699 n

end A235699

/-! ## A235699.P7120020709720380795

`∑[2*A091084(n)]-A091084(n)`
-/

namespace A235699.P7120020709720380795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091084 n

end

end A235699.P7120020709720380795

namespace A235699

/-- `∑[2*A091084(n)]-A091084(n)` -/
def P7120020709720380795.Spec : Prop :=
  ∀ n, P7120020709720380795.a n = A235699 n

end A235699

/-! ## A235699.P6288305052453846225

`∑[A267317(n)]+n-A267317(n)`
-/

namespace A235699.P6288305052453846225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A267317 n)

end

end A235699.P6288305052453846225

namespace A235699

/-- `∑[A267317(n)]+n-A267317(n)` -/
def P6288305052453846225.Spec : Prop :=
  ∀ n, P6288305052453846225.a n = A235699 n

end A235699

/-! ## A235699.P5852734069238989835

`∑[A014391(3*n)]-A014391(3*n)`
-/

namespace A235699.P5852734069238989835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014391 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014391 (3 * n)

end

end A235699.P5852734069238989835

namespace A235699

/-- `∑[A014391(3*n)]-A014391(3*n)` -/
def P5852734069238989835.Spec : Prop :=
  ∀ n, P5852734069238989835.a n = A235699 n

end A235699

/-! ## A235699.P11567609597715526063

`2*A081596(a(n-1))+1` with `a(0)=0`
-/

namespace A235699.P11567609597715526063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A081596 (a (n - 1)).toNat + 1

end

end A235699.P11567609597715526063

namespace A235699

/-- `2*A081596(a(n-1))+1` -/
def P11567609597715526063.Spec : Prop :=
  ∀ n, P11567609597715526063.a n = A235699 n

end A235699

/-! ## A235699.P5097998313185191317

`A010879(a(n-1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A235699.P5097998313185191317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010879 (a (n - 1) + 1).toNat + a (n - 1)

end

end A235699.P5097998313185191317

namespace A235699

/-- `A010879(a(n-1)+1)+a(n-1)` -/
def P5097998313185191317.Spec : Prop :=
  ∀ n, P5097998313185191317.a n = A235699 n

end A235699

/-! ## A235699.P14690324194764702526

`A023443(A102039(n+1))`
-/

namespace A235699.P14690324194764702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A102039 (n + 1)).toNat

end

end A235699.P14690324194764702526

namespace A235699

/-- `A023443(A102039(n+1))` -/
def P14690324194764702526.Spec : Prop :=
  ∀ n, P14690324194764702526.a n = A235699 n

end A235699

