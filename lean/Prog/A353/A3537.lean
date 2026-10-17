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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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

/-!
# A353703: Palindromes (A002113) in A157037.

The programs for A353703, there is no canonical definition to state claims against.
-/

/-! ## A353703.P13813982178263790288

`∩[A002113(n+1), A157037(n+1)]`
-/

namespace A353703.P13813982178263790288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P13813982178263790288

/-! ## A353703.P2266149006331979933

`∩[A032350(n+1), A157037(n+1)]`
-/

namespace A353703.P2266149006331979933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P2266149006331979933

/-! ## A353703.P11105345701314098046

`∩[A035134(n+1), A157037(n+1)]`
-/

namespace A353703.P11105345701314098046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P11105345701314098046

/-! ## A353703.P324716079825567031

`∩[A035135(n+1), A157037(n+1)]`
-/

namespace A353703.P324716079825567031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P324716079825567031

/-! ## A353703.P18218291387262257479

`∩[A071251(n+1), A157037(n+1)]`
-/

namespace A353703.P18218291387262257479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P18218291387262257479

/-! ## A353703.P6896776190147816801

`∩[A083158(n+1), A157037(n+1)]`
-/

namespace A353703.P6896776190147816801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P6896776190147816801

/-! ## A353703.P11612015243039316881

`∩[A157037(n+1), A306273(n+1)]`
-/

namespace A353703.P11612015243039316881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353703.P11612015243039316881

/-! ## A353703.P6150496808695422326

`filter[A002113(n+1), A341995(#)]`
-/

namespace A353703.P6150496808695422326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A353703.P6150496808695422326

/-! ## A353703.P13960744327021075064

`filter[A032350(n+1), A341995(#)]`
-/

namespace A353703.P13960744327021075064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A353703.P13960744327021075064

/-! ## A353703.P6419577332198083047

`filter[A035134(n+1), A341995(#)]`
-/

namespace A353703.P6419577332198083047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A353703.P6419577332198083047

/-!
# A353704: Repdigit numbers (A010785) in A157037.

The programs for A353704, there is no canonical definition to state claims against.
-/

/-! ## A353704.P16196787002354238587

`∩[A353703(n+1), A064222(n)]`
-/

namespace A353704.P16196787002354238587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353704.P16196787002354238587

/-! ## A353704.P5361288742992536688

`∩[A095227(n+1), A353703(n+1)]`
-/

namespace A353704.P5361288742992536688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353704.P5361288742992536688

/-! ## A353704.P11890303408124235089

`∩[A353703(n+1), A378949(n+1)]`
-/

namespace A353704.P11890303408124235089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353704.P11890303408124235089

/-! ## A353704.P12900709099575109543

`∩[A353703(n+1), A385298(n+1)]`
-/

namespace A353704.P12900709099575109543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353704.P12900709099575109543

/-! ## A353704.P501037430756381384

`∩[A353703(n+1), A010785(n)]`
-/

namespace A353704.P501037430756381384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353704.P501037430756381384

/-!
# A353706: n appears in A093714 a(n) steps earlier than expected.

The programs for A353706, there is no canonical definition to state claims against.
-/

/-! ## A353706.P5350543434577114231

`1-A093715(n+1)+n`
-/

namespace A353706.P5350543434577114231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A093715 (n + 1) + (n : ℤ)

end

end A353706.P5350543434577114231

/-! ## A353706.P4717967576681404620

`-(A093715(n+1)+A001478(n+1))`
-/

namespace A353706.P4717967576681404620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A093715 (n + 1) + A001478 (n + 1))

end

end A353706.P4717967576681404620

/-! ## A353706.P4584888601361129289

`A352931(A093715(n+1))`
-/

namespace A353706.P4584888601361129289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (A093715 (n + 1)).toNat

end

end A353706.P4584888601361129289

/-! ## A353706.P2456558800614546122

`A001478(A093715(n+1))+A000027(n+1)`
-/

namespace A353706.P2456558800614546122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A093715 (n + 1)).toNat + A000027 (n + 1)

end

end A353706.P2456558800614546122

/-! ## A353706.P13725185635401231092

`A121216(A225047(n+1))+A001478(A093715(n+1))`
-/

namespace A353706.P13725185635401231092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (A225047 (n + 1)).toNat + A001478 (A093715 (n + 1)).toNat

end

end A353706.P13725185635401231092

/-! ## A353706.P10419465001098858703

`A093715(A093714(n+1))+A001478(A093715(n+1))`
-/

namespace A353706.P10419465001098858703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093715 (A093714 (n + 1)).toNat + A001478 (A093715 (n + 1)).toNat

end

end A353706.P10419465001098858703

/-! ## A353706.P2304639884974450080

`A029579(2*n)+A001478(A093715(n+1))`
-/

namespace A353706.P2304639884974450080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) + A001478 (A093715 (n + 1)).toNat

end

end A353706.P2304639884974450080

/-!
# A353707: n appears in A121216 a(n) steps earlier than expected.

The programs for A353707, there is no canonical definition to state claims against.
-/

/-! ## A353707.P9666933285261550926

`1-A225047(n+1)+n`
-/

namespace A353707.P9666933285261550926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A225047 (n + 1) + (n : ℤ)

end

end A353707.P9666933285261550926

/-! ## A353707.P14342978680306471533

`-(A225047(n+1)+A001478(n+1))`
-/

namespace A353707.P14342978680306471533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A225047 (n + 1) + A001478 (n + 1))

end

end A353707.P14342978680306471533

/-! ## A353707.P10808951443896960928

`A352935(A225047(n+1))`
-/

namespace A353707.P10808951443896960928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (A225047 (n + 1)).toNat

end

end A353707.P10808951443896960928

/-! ## A353707.P8333813659623362223

`A001478(A225047(n+1))+A000027(n+1)`
-/

namespace A353707.P8333813659623362223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A225047 (n + 1)).toNat + A000027 (n + 1)

end

end A353707.P8333813659623362223

/-! ## A353707.P9132248890680978966

`A001478(A225047(n+1))+gcd(n+1, A002378(n))`
-/

namespace A353707.P9132248890680978966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A225047 (n + 1)).toNat + (Int.gcd (n + 1 : ℤ) (A002378 n) : ℤ)

end

end A353707.P9132248890680978966

/-! ## A353707.P5729955224959800728

`A093714(A093715(n+1))+A001478(A225047(n+1))`
-/

namespace A353707.P5729955224959800728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (A093715 (n + 1)).toNat + A001478 (A225047 (n + 1)).toNat

end

end A353707.P5729955224959800728

/-! ## A353707.P10221198200919615032

`A225047(A121216(n+1))+A001478(A225047(n+1))`
-/

namespace A353707.P10221198200919615032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A121216 (n + 1)).toNat + A001478 (A225047 (n + 1)).toNat

end

end A353707.P10221198200919615032

/-! ## A353707.P12938798476187206817

`A067856(A164566(n+1))+A001478(A225047(n+1))+n+2`
-/

namespace A353707.P12938798476187206817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A164566 (n + 1)).toNat + (A001478 (A225047 (n + 1)).toNat + (n + 2 : ℤ))

end

end A353707.P12938798476187206817

/-!
# A353709: a(0)=0, a(1)=1; thereafter a(n) = smallest nonnegative integer not among the earlier terms of the sequence such that a(n) and a(n-2) have no common 1-bits in their binary representations and also a(n) and a(n-1) have no common 1-bits in their binary representations.

The programs for A353709, there is no canonical definition to state claims against.
-/

/-! ## A353709.P12950967952076475963

`∑{p}[A353955(n), A048675(#)]`
-/

namespace A353709.P12950967952076475963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A353709.P12950967952076475963

/-! ## A353709.P4247092737536904306

`∑{p}[A353955(n), A248663(#)]`
-/

namespace A353709.P4247092737536904306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A353709.P4247092737536904306

/-! ## A353709.P11774815856771767300

`∑{p}[A353955(n), A285330(#)]`
-/

namespace A353709.P11774815856771767300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A353709.P11774815856771767300

/-! ## A353709.P13513962253869253522

`A048675(A353955(n))`
-/

namespace A353709.P13513962253869253522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A353955 n).toNat

end

end A353709.P13513962253869253522

/-! ## A353709.P9999732612233850882

`A248663(∏{p}[A353955(n), #])`
-/

namespace A353709.P9999732612233850882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353709.P9999732612233850882

/-! ## A353709.P13794050160101924246

`A285330(∏{p}[A353955(n), #])`
-/

namespace A353709.P13794050160101924246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353709.P13794050160101924246

/-! ## A353709.P11141098054682988088

`A285330(A353955(n)%(n+2)²)`
-/

namespace A353709.P11141098054682988088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (Int.tmod (A353955 n) ((n + 2) ^ 2 : ℤ)).toNat

end

end A353709.P11141098054682988088

/-! ## A353709.P12858779548362718411

`A285330(A353955(n))%A002522(n)`
-/

namespace A353709.P12858779548362718411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285330 (A353955 n).toNat) (A002522 n)

end

end A353709.P12858779548362718411

/-! ## A353709.P1977473206890685392

`A285330(2*A353955(n)-A353955(n))`
-/

namespace A353709.P1977473206890685392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (2 * A353955 n - A353955 n).toNat

end

end A353709.P1977473206890685392

/-!
# A353710: Smallest missing number when A353709(n) is being calculated.

The programs for A353710, there is no canonical definition to state claims against.
-/

/-! ## A353710.P2368856230413083427

`A244160(A239903(n)%A117713(n+1))`
-/

namespace A353710.P2368856230413083427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (Int.tmod (A239903 n) (A117713 (n + 1))).toNat

end

end A353710.P2368856230413083427

/-! ## A353710.P15959353148815029047

`A180101(floor(log2(A100784(n+1))))`
-/

namespace A353710.P15959353148815029047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Nat.log 2 (A100784 (n + 1)).toNat)

end

end A353710.P15959353148815029047

/-! ## A353710.P6037760581164159189

`A325858(A130256(n))%A114832(n+1)`
-/

namespace A353710.P6037760581164159189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325858 (A130256 n).toNat) (A114832 (n + 1))

end

end A353710.P6037760581164159189

/-! ## A353710.P15349124993087368831

`A088669(A130256(n))%A271269(n+1)`
-/

namespace A353710.P15349124993087368831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088669 (A130256 n).toNat) (A271269 (n + 1))

end

end A353710.P15349124993087368831

/-! ## A353710.P2110841481818629520

`A180101(floor(log(A128679(n+1))))`
-/

namespace A353710.P2110841481818629520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 ⌊Real.log (A128679 (n + 1) : ℝ)⌋.toNat

end

end A353710.P2110841481818629520

/-!
# A353711: Smallest missing number when A097465(n) is being calculated.

The programs for A353711, there is no canonical definition to state claims against.
-/

/-! ## A353711.P2546626591469206080

`A081604(A008346(n))*A292563(n)`
-/

namespace A353711.P2546626591469206080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A008346 n).toNat * A292563 n

end

end A353711.P2546626591469206080

/-! ## A353711.P1535762415262457819

`A020639(a(n-1))*A081604(A008346(n))` with `a(0)=1, a(1)=2`
-/

namespace A353711.P1535762415262457819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A081604 (A008346 n).toNat

end

end A353711.P1535762415262457819

/-! ## A353711.P7002102780184835158

`A014963(A001316(n))*A081604(A008346(n))`
-/

namespace A353711.P7002102780184835158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A081604 (A008346 n).toNat

end

end A353711.P7002102780184835158

/-! ## A353711.P13592191644367604697

`A020639(A008574(n))*A081604(A008346(n))`
-/

namespace A353711.P13592191644367604697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A081604 (A008346 n).toNat

end

end A353711.P13592191644367604697

/-!
# A353715: a(n) = b(n)+b(n+1), where b is A353709.

The programs for A353715, there is no canonical definition to state claims against.
-/

/-! ## A353715.P7541185365384165683

`A353709(n+1)+A353709(n)`
-/

namespace A353715.P7541185365384165683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 (n + 1) + A353709 n

end

end A353715.P7541185365384165683

/-! ## A353715.P14244781725232774505

`xor(A353709(A008619(2*n)), A353709(n))`
-/

namespace A353715.P14244781725232774505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A353709 (A008619 (2 * n)).toNat) (A353709 n)

end

end A353715.P14244781725232774505

/-! ## A353715.P8180165573602226795

`A048675(A353955(n+1))+A048675(A353955(n))`
-/

namespace A353715.P8180165573602226795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A353955 (n + 1)).toNat + A048675 (A353955 n).toNat

end

end A353715.P8180165573602226795

/-! ## A353715.P16810695909158050297

`A285330(A353955(n)%(n+2)²)+A248663(A353955(n+1))`
-/

namespace A353715.P16810695909158050297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (Int.tmod (A353955 n) ((n + 2) ^ 2 : ℤ)).toNat + A248663 (A353955 (n + 1)).toNat

end

end A353715.P16810695909158050297

/-!
# A353716: The values of b(k)+b(k+1), k >= 0, sorted into increasing order, where b is A353709.

The programs for A353716, there is no canonical definition to state claims against.
-/

/-! ## A353716.P6615596011076644931

`lt[0, char[A353715(n)]]`
-/

namespace A353716.P6615596011076644931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353715 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353716.P6615596011076644931

/-! ## A353716.P15229396786353468409

`eq[char[A353715(n)], A057427(n+3)]`
-/

namespace A353716.P15229396786353468409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353715 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A353716.P15229396786353468409

/-! ## A353716.P6733677291252321260

`eq[1, char[A353709(n+1)+A353709(n)]]`
-/

namespace A353716.P6733677291252321260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 (n + 1) + A353709 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353716.P6733677291252321260

/-! ## A353716.P7993685036564967172

`eq[char[A353715(n)]+1, A020639(2*(n+1))]`
-/

namespace A353716.P7993685036564967172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353715 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A353716.P7993685036564967172

/-! ## A353716.P18205520714868383540

`eq[char[A353715(n)], A178334(2*(n+1))]`
-/

namespace A353716.P18205520714868383540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353715 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A353716.P18205520714868383540

/-!
# A353718: Lengths of runs of identical terms in A353710.

The programs for A353718, there is no canonical definition to state claims against.
-/

/-! ## A353718.P17237058768369688486

`gcd(C(n, n²), Δ[A353722(A028310(n))])`
-/

namespace A353718.P17237058768369688486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (f1 (n + 1) - f1 n)

end

end A353718.P17237058768369688486

/-! ## A353718.P6592261333775369138

`A000007(n)+Δ[A353722(A028310(n))]`
-/

namespace A353718.P6592261333775369138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A353718.P6592261333775369138

/-! ## A353718.P15496198669611194941

`Δ[A353722(A028310(n))+A057427(n)]`
-/

namespace A353718.P15496198669611194941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353718.P15496198669611194941

/-! ## A353718.P13001606063121899224

`Δ[A353722(A028310(n))]+A000038(n)/2`
-/

namespace A353718.P13001606063121899224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000038 n : ℚ) / 2

end

end A353718.P13001606063121899224

/-! ## A353718.P18306992190459014789

`Δ[A353722(A028310(n))]+1-A000040(n+1)%2`
-/

namespace A353718.P18306992190459014789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - Int.tmod (A000040 (n + 1)) 2

end

end A353718.P18306992190459014789

/-! ## A353718.P2984031721973848554

`A353722(A028310(n)+1)-A353722(A028310(n))`
-/

namespace A353718.P2984031721973848554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353722 (A028310 n + 1).toNat - A353722 (A028310 n).toNat

end

end A353718.P2984031721973848554

/-!
# A353719: Index of prime(n) in A353709, or -1 if prime(n) does not appear in A353709.

The programs for A353719, there is no canonical definition to state claims against.
-/

/-! ## A353719.P15246862392390470267

`A353717(A000040(n+1))`
-/

namespace A353719.P15246862392390470267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A000040 (n + 1)).toNat

end

end A353719.P15246862392390470267

/-! ## A353719.P10477864082877450782

`A353717(A008578(n+2))`
-/

namespace A353719.P10477864082877450782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A008578 (n + 2)).toNat

end

end A353719.P10477864082877450782

/-! ## A353719.P3480067644562996688

`A353717(A182986(n+2))`
-/

namespace A353719.P3480067644562996688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A182986 (n + 2)).toNat

end

end A353719.P3480067644562996688

/-! ## A353719.P1780653152019635029

`A353717(record[A006530(n+2)])`
-/

namespace A353719.P1780653152019635029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353719.P1780653152019635029

/-! ## A353719.P4664253632749813694

`A353717(record[A020639(n+2)])`
-/

namespace A353719.P4664253632749813694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353719.P4664253632749813694

/-! ## A353719.P14319620567582367912

`A353717(record[A014963(n+2)])`
-/

namespace A353719.P14319620567582367912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353719.P14319620567582367912

/-!
# A353720: Records in A353709.

The programs for A353720, there is no canonical definition to state claims against.
-/

/-! ## A353720.P14679566347386494103

`record[A353709(n)]`
-/

namespace A353720.P14679566347386494103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353720.P14679566347386494103

/-! ## A353720.P2001926980390155585

`A353709(A353721(n+1))`
-/

namespace A353720.P2001926980390155585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 (A353721 (n + 1)).toNat

end

end A353720.P2001926980390155585

/-! ## A353720.P7898495013656847284

`record[∑{p}[A353955(n), A248663(#)]]`
-/

namespace A353720.P7898495013656847284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A248663 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353720.P7898495013656847284

/-! ## A353720.P7792767366689503234

`record[∑{p}[A353955(n), A285330(#)]]`
-/

namespace A353720.P7792767366689503234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A285330 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353720.P7792767366689503234

/-! ## A353720.P7003242885149170437

`record[A048675(A353955(n))]`
-/

namespace A353720.P7003242885149170437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A353955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353720.P7003242885149170437

/-!
# A353721: Indices of records in A353709.

The programs for A353721, there is no canonical definition to state claims against.
-/

/-! ## A353721.P9139770922640910780

`A353717(record[A353709(n)])`
-/

namespace A353721.P9139770922640910780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353721.P9139770922640910780

/-! ## A353721.P17472879162273634812

`A353717(A353720(n+1))`
-/

namespace A353721.P17472879162273634812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A353720 (n + 1)).toNat

end

end A353721.P17472879162273634812

/-!
# A353722: Records in A353717.

The programs for A353722, there is no canonical definition to state claims against.
-/

/-! ## A353722.P10670668413527248925

`∑[A353718(n+1)]-1`
-/

namespace A353722.P10670668413527248925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A353722.P10670668413527248925

/-! ## A353722.P2535440423379436225

`∑[A057427(n)*A353718(n+1)]`
-/

namespace A353722.P2535440423379436225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P2535440423379436225

/-! ## A353722.P16625525750875695241

`∑[A353718(n+1)%A001753(n)]`
-/

namespace A353722.P16625525750875695241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353718 (n + 1)) (A001753 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P16625525750875695241

/-! ## A353722.P8238674194569252411

`∑[lcm(A062157(n), A353718(n+1))]`
-/

namespace A353722.P8238674194569252411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A353718 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P8238674194569252411

/-! ## A353722.P16662702394594352993

`∑[xor(A000007(n), A353718(n+1))]`
-/

namespace A353722.P16662702394594352993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A353718 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P16662702394594352993

/-! ## A353722.P4452537348709574295

`A115638(2*n+1)+∑[A353718(n+1)]`
-/

namespace A353722.P4452537348709574295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P4452537348709574295

/-! ## A353722.P9780457558328210677

`∑[A000040(n+1)%2*A353718(n+1)]`
-/

namespace A353722.P9780457558328210677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P9780457558328210677

/-! ## A353722.P18007717430268788030

`∑[A353718(n+1)+A008683(2*(n+1)²)]`
-/

namespace A353722.P18007717430268788030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353718 (n + 1) + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P18007717430268788030

/-! ## A353722.P11672236817217699595

`∑[A089309(A089309(n)²)*A353718(n+1)]`
-/

namespace A353722.P11672236817217699595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A089309 n ^ 2).toNat * A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P11672236817217699595

/-! ## A353722.P218412397591914381

`A033999(A007821(n+2))+∑[A353718(n+1)]`
-/

namespace A353722.P218412397591914381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007821 (n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P218412397591914381

/-! ## A353722.P15786164578624595956

`A320836(A020639(2*(n+1)))+∑[A353718(n+1)]`
-/

namespace A353722.P15786164578624595956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A020639 (2 * (n + 1))).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P15786164578624595956

/-! ## A353722.P9372557353652096009

`∑[A089309(n²)*A353718(n+1)]`
-/

namespace A353722.P9372557353652096009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2) * A353718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353722.P9372557353652096009

/-!
# A353723: Indices of records in A353717.

The programs for A353723, there is no canonical definition to state claims against.
-/

/-! ## A353723.P2309580572815960189

`record[A353710(n)^(-1)^val(n+1, 2)]`
-/

namespace A353723.P2309580572815960189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353710 n : ℚ) ^ ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353723.P2309580572815960189

/-! ## A353723.P3666294242807959164

`record[A353710(A265667(n))]`
-/

namespace A353723.P3666294242807959164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353710 (A265667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353723.P3666294242807959164

/-! ## A353723.P4138177149366312828

`record[A353710(A161096(n+1))]`
-/

namespace A353723.P4138177149366312828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353710 (A161096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353723.P4138177149366312828

/-! ## A353723.P15475346336674671603

`record[A353710(A244306(n+1))]`
-/

namespace A353723.P15475346336674671603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353710 (A244306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353723.P15475346336674671603

/-! ## A353723.P356447393987893797

`record[A353710(n-A004247(n))]`
-/

namespace A353723.P356447393987893797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353710 ((n : ℤ) - A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353723.P356447393987893797

/-!
# A353724: a(n) = exponent of highest power of 2 that divides A353715(n).

The programs for A353724, there is no canonical definition to state claims against.
-/

/-! ## A353724.P17963193771140496401

`val(A353715(n), 2)`
-/

namespace A353724.P17963193771140496401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353715 n).toNat 2

end

end A353724.P17963193771140496401

/-! ## A353724.P16679051326739641950

`val(abs(Δ[A353709(n)]), 2)`
-/

namespace A353724.P16679051326739641950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |f1 (n + 1) - f1 n|.toNat 2

end

end A353724.P16679051326739641950

/-! ## A353724.P6995204232449559506

`A007814(A353715(n))`
-/

namespace A353724.P6995204232449559506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A353715 n).toNat

end

end A353724.P6995204232449559506

/-! ## A353724.P15695056580982057559

`A089263(6*A353715(n))`
-/

namespace A353724.P15695056580982057559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (6 * A353715 n).toNat

end

end A353724.P15695056580982057559

/-! ## A353724.P18017503973774833087

`A007814(abs(Δ[A353709(n)]))`
-/

namespace A353724.P18017503973774833087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 |f1 (n + 1) - f1 n|.toNat

end

end A353724.P18017503973774833087

/-! ## A353724.P13992943541458402380

`log2(gcd(A102376(n), A353715(n)))`
-/

namespace A353724.P13992943541458402380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A102376 n) (A353715 n) : ℝ)

end

end A353724.P13992943541458402380

/-! ## A353724.P4157120501760810888

`val(A353709(n+1)+A353709(n), 2)`
-/

namespace A353724.P4157120501760810888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353709 (n + 1) + A353709 n).toNat 2

end

end A353724.P4157120501760810888

/-! ## A353724.P9455745063453019766

`A007814(A353709(n+1)+A353709(n))`
-/

namespace A353724.P9455745063453019766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A353709 (n + 1) + A353709 n).toNat

end

end A353724.P9455745063453019766

/-!
# A353726: Indices of records in A353724.

The programs for A353726, there is no canonical definition to state claims against.
-/

/-! ## A353726.P12916193340187101874

`A353727(A353725(n+1))`
-/

namespace A353726.P12916193340187101874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 (A353725 (n + 1)).toNat

end

end A353726.P12916193340187101874

/-! ## A353726.P944109710588543123

`A353727(lt[A353727(n), A000045(2*(n+1))])`
-/

namespace A353726.P944109710588543123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353726.P944109710588543123

/-! ## A353726.P14544068760056482294

`A353727(lt[A284490(n+1), A133500(n+4)])`
-/

namespace A353726.P14544068760056482294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353726.P14544068760056482294

/-! ## A353726.P14190853072241299453

`A353727(lt[A353727(n), A361831(3*(n+2))])`
-/

namespace A353726.P14190853072241299453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361831 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353726.P14190853072241299453

/-! ## A353726.P5472196669137210457

`record[A353727(val(A353715(n), 2))]`
-/

namespace A353726.P5472196669137210457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353727 (SequenceMachineLib.valuation (A353715 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353726.P5472196669137210457

/-!
# A353728: A115510(n) written in base 2.

The programs for A353728, there is no canonical definition to state claims against.
-/

/-! ## A353728.P7839171783321498164

`A007088(A115510(n+1))`
-/

namespace A353728.P7839171783321498164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115510 (n + 1)).toNat

end

end A353728.P7839171783321498164

/-! ## A353728.P6638170460288016574

`A185544(2*A115510(n+1))`
-/

namespace A353728.P6638170460288016574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115510 (n + 1)).toNat

end

end A353728.P6638170460288016574

/-! ## A353728.P8326315544730601836

`A185544(A115510(n+1)+A115510(n+1))`
-/

namespace A353728.P8326315544730601836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115510 (n + 1) + A115510 (n + 1)).toNat

end

end A353728.P8326315544730601836

/-!
# A353729: Numbers with property that if any digit is deleted then the result is divisible by that digit.

The programs for A353729, there is no canonical definition to state claims against.
-/

/-! ## A353729.P9401458193370094902

`∩[A061362(n+1), A346217(n+1)]`
-/

namespace A353729.P9401458193370094902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353729.P9401458193370094902

/-! ## A353729.P10257280304388765128

`∩[A052382(n+1), A061362(n+1)]`
-/

namespace A353729.P10257280304388765128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353729.P10257280304388765128

/-! ## A353729.P16084568235295911505

`filter[A061362(n+1), A168046(#)]`
-/

namespace A353729.P16084568235295911505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A353729.P16084568235295911505

/-! ## A353729.P17273258329170649572

`A346217(n+1)%A260084(3*n+2)`
-/

namespace A353729.P17273258329170649572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346217 (n + 1)) (A260084 (3 * n + 2))

end

end A353729.P17273258329170649572

/-! ## A353729.P14695853959435508571

`A346217(n+1)%A346206(A005384(n+1))`
-/

namespace A353729.P14695853959435508571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346217 (n + 1)) (A346206 (A005384 (n + 1)).toNat)

end

end A353729.P14695853959435508571

/-!
# A353731: a(n) = index where prime(n) appears in A352808.

The programs for A353731, there is no canonical definition to state claims against.
-/

/-! ## A353731.P7007394545125503166

`A353732(p?[comp[n²]])`
-/

namespace A353731.P7007394545125503166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A353731.P7007394545125503166

/-! ## A353731.P18142389283349826192

`A353732(A000040(n+1))`
-/

namespace A353731.P18142389283349826192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A000040 (n + 1)).toNat

end

end A353731.P18142389283349826192

/-! ## A353731.P7101874842631011567

`A353732(A008578(n+2))`
-/

namespace A353731.P7101874842631011567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A008578 (n + 2)).toNat

end

end A353731.P7101874842631011567

/-! ## A353731.P8295443778046674459

`A353732(A182986(n+2))`
-/

namespace A353731.P8295443778046674459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A182986 (n + 2)).toNat

end

end A353731.P8295443778046674459

/-! ## A353731.P14690835480779297054

`A353732(record[A006530(n+2)])`
-/

namespace A353731.P14690835480779297054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353731.P14690835480779297054

/-! ## A353731.P152822621177620925

`A353732(record[A014963(n+2)])`
-/

namespace A353731.P152822621177620925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353731.P152822621177620925

/-! ## A353731.P10418582257153663207

`A353732(record[A020639(n+2)])`
-/

namespace A353731.P10418582257153663207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353731.P10418582257153663207

/-!
# A353734: Indices of terms in A353730 that are powers of 2.

The programs for A353734, there is no canonical definition to state claims against.
-/

/-! ## A353734.P1106727650329398339

`A047201(2^A338031(n+1))`
-/

namespace A353734.P1106727650329398339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A338031 (n + 1) : ℤ))).toNat

end

end A353734.P1106727650329398339

/-! ## A353734.P7250517034708961467

`eq[1, A003963(A353730(n+1))]+1`
-/

namespace A353734.P7250517034708961467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A353730 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353734.P7250517034708961467

/-! ## A353734.P16864274369959070096

`A293881(lt[A303362(n+2), A213999(n)])`
-/

namespace A353734.P16864274369959070096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353734.P16864274369959070096

/-! ## A353734.P8857747547034895279

`A246347(lt[A341951(3*(n+3)), A246314(n)])`
-/

namespace A353734.P8857747547034895279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341951 (3 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353734.P8857747547034895279

/-!
# A353735: Number of n-digit terms in A333369.

The programs for A353735, there is no canonical definition to state claims against.
-/

/-! ## A353735.P14648526774302268311

`A189629(A213103(n)+A118356(n+2))`
-/

namespace A353735.P14648526774302268311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (A213103 n + A118356 (n + 2)).toNat

end

end A353735.P14648526774302268311

/-!
# A353739: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} 2^n * (exp(n*x) - A(x))^n / n!.

The programs for A353739, there is no canonical definition to state claims against.
-/

/-! ## A353739.P7625310781146364049

`A323646(a(n-1)+5)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A353739.P7625310781146364049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A323646 (a (n - 1) + 5).toNat

end

end A353739.P7625310781146364049

/-!
# A353740: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} 3^n * (exp(n*x) - A(x))^n / n!.

The programs for A353740, there is no canonical definition to state claims against.
-/

/-! ## A353740.P11074783328313351886

`∏{p}[A348468(2*n), A094339(#)]`
-/

namespace A353740.P11074783328313351886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A094339 p

end

end A353740.P11074783328313351886

/-!
# A353741: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with product k, all zeros removed.

The programs for A353741, there is no canonical definition to state claims against.
-/

/-! ## A353741.P13816082078216871606

`A339095(lt[0, A339095(n)])`
-/

namespace A353741.P13816082078216871606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353741.P13816082078216871606

/-! ## A353741.P9353107976098342526

`filter[A339095(n), A011558(#)]`
-/

namespace A353741.P9353107976098342526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A353741.P9353107976098342526

/-! ## A353741.P11210437170301502723

`filter[A339095(n), A022932(#)]`
-/

namespace A353741.P11210437170301502723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A353741.P11210437170301502723

/-! ## A353741.P883932743936501238

`filter[A339095(n), A075897(#)]`
-/

namespace A353741.P883932743936501238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A353741.P883932743936501238

/-! ## A353741.P9119601386540480929

`filter[A339095(n), A079421(#)]`
-/

namespace A353741.P9119601386540480929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A353741.P9119601386540480929

/-! ## A353741.P679535038919767049

`filter[A339095(n), A097325(#)]`
-/

namespace A353741.P679535038919767049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A353741.P679535038919767049

/-! ## A353741.P17184822087776081833

`filter[A339095(n), A102460(#)]`
-/

namespace A353741.P17184822087776081833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102460 (f1 j).toNat = 1) n)

end

end A353741.P17184822087776081833

/-! ## A353741.P2626766003068554595

`filter[A339095(n), A109720(#)]`
-/

namespace A353741.P2626766003068554595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A353741.P2626766003068554595

/-! ## A353741.P326237649883949944

`filter[A339095(n), A112713(#)]`
-/

namespace A353741.P326237649883949944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A353741.P326237649883949944

/-! ## A353741.P11400486307268353755

`filter[A339095(n), A131719(#)]`
-/

namespace A353741.P11400486307268353755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A353741.P11400486307268353755

/-!
# A353743: Least number with run-sum trajectory of length k; a(0) = 1.

The programs for A353743, there is no canonical definition to state claims against.
-/

/-! ## A353743.P16856805675696263075

`a(n-1)*A000040(2^(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A353743.P16856805675696263075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A000040 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A353743.P16856805675696263075

/-! ## A353743.P7032513058844810098

`∏[A073846(A263997(2^n))]`
-/

namespace A353743.P7032513058844810098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A263997 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A353743.P7032513058844810098

/-! ## A353743.P13167588586830202380

`A318836(A077552(n))`
-/

namespace A353743.P13167588586830202380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318836 (A077552 n).toNat

end

end A353743.P13167588586830202380

/-! ## A353743.P13487618957302580710

`A318836(A046055(n+1))`
-/

namespace A353743.P13487618957302580710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318836 (A046055 (n + 1)).toNat

end

end A353743.P13487618957302580710

/-! ## A353743.P8014664155967054741

`A318836(A151821(n+1))`
-/

namespace A353743.P8014664155967054741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318836 (A151821 (n + 1)).toNat

end

end A353743.P8014664155967054741

/-!
# A353744: Numbers k such that the k-th composition in standard order has all equal run-lengths.

The programs for A353744, there is no canonical definition to state claims against.
-/

/-! ## A353744.P3755842489102209730

`lt[A354579(n), 2]`
-/

namespace A353744.P3755842489102209730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353744.P3755842489102209730

/-! ## A353744.P5996135174328779048

`eq[1, A354579(C(7, n)%2+n)]`
-/

namespace A353744.P5996135174328779048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (Nat.choose 7 n % 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353744.P5996135174328779048

/-! ## A353744.P12064942721821335529

`eq[1, A354579(A028310(n))]`
-/

namespace A353744.P12064942721821335529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353744.P12064942721821335529

/-! ## A353744.P18280897082248648080

`eq[A057427(n), A354579(n)]`
-/

namespace A353744.P18280897082248648080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P18280897082248648080

/-! ## A353744.P8690542051636292297

`eq[A178334(n), A354579(n)]`
-/

namespace A353744.P8690542051636292297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P8690542051636292297

/-! ## A353744.P366886131010275598

`eq[A357137(n), A357138(n)]`
-/

namespace A353744.P366886131010275598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P366886131010275598

/-! ## A353744.P2214359187850207391

`eq[A211666(n+1), A354579(n)]`
-/

namespace A353744.P2214359187850207391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P2214359187850207391

/-! ## A353744.P6204862968306617432

`eq[A354579(A000120(n)), A354579(n)]`
-/

namespace A353744.P6204862968306617432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P6204862968306617432

/-! ## A353744.P15940136665885559398

`eq[A124765(n)*A354579(n), A124765(n)]`
-/

namespace A353744.P15940136665885559398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n * A354579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353744.P15940136665885559398

/-! ## A353744.P17003627893061615175

`lt[A351014(A333627(n)), 2]`
-/

namespace A353744.P17003627893061615175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A333627 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353744.P17003627893061615175

/-!
# A353745: Number of runs in the ordered prime signature of n.

The programs for A353745, there is no canonical definition to state claims against.
-/

/-! ## A353745.P9137354827566698905

`A124767(∑{p}[A329607(n+1), A233249(#)])`
-/

namespace A353745.P9137354827566698905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p).toNat

end

end A353745.P9137354827566698905

/-! ## A353745.P11756939160559057347

`A124767(∑{p}[A329607(n+1), A248663(#)])`
-/

namespace A353745.P11756939160559057347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p).toNat

end

end A353745.P11756939160559057347

/-!
# A353747: a(n) = phi(n) + A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353747, there is no canonical definition to state claims against.
-/

/-! ## A353747.P3016860989461656940

`A000010(n+1)+A064989(n+1)`
-/

namespace A353747.P3016860989461656940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A064989 (n + 1)

end

end A353747.P3016860989461656940

/-! ## A353747.P5323013099458391035

`A064989(n+1)+Δ[A002088(n)]`
-/

namespace A353747.P5323013099458391035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (f1 (n + 1) - f1 n)

end

end A353747.P5323013099458391035

/-! ## A353747.P9950054128686891455

`A064989(n+1)+Δ[A005728(n)]`
-/

namespace A353747.P9950054128686891455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (f1 (n + 1) - f1 n)

end

end A353747.P9950054128686891455

/-! ## A353747.P5682944055654513272

`Δ[A002088(n)]+abs(A290099(n+1))`
-/

namespace A353747.P5682944055654513272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |A290099 (n + 1)|

end

end A353747.P5682944055654513272

/-! ## A353747.P3619446444592751609

`A349137(Δ[n²])+A064989(n+1)`
-/

namespace A353747.P3619446444592751609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A064989 (n + 1)

end

end A353747.P3619446444592751609

/-! ## A353747.P1335798742220387589

`A000010(n+1)+abs(A290099(n+1))`
-/

namespace A353747.P1335798742220387589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + |A290099 (n + 1)|

end

end A353747.P1335798742220387589

/-! ## A353747.P5064892385226784506

`A064989(n+1)+sqrt(A127473(n+1))`
-/

namespace A353747.P5064892385226784506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ)

end

end A353747.P5064892385226784506

/-! ## A353747.P15261949758751324672

`A064989(n+1)+Δ[A100449(n)/4]`
-/

namespace A353747.P15261949758751324672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A353747.P15261949758751324672

/-! ## A353747.P13227665875846160187

`A064989(n+1)+A109606(n+1)+1`
-/

namespace A353747.P13227665875846160187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (A109606 (n + 1) + 1)

end

end A353747.P13227665875846160187

/-! ## A353747.P929000172923648805

`A039649(n+1)+A064989(n+1)-1`
-/

namespace A353747.P929000172923648805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A064989 (n + 1) - 1)

end

end A353747.P929000172923648805

/-! ## A353747.P5398051349213504661

`A353748(n+1)+2*A064989(n+1)`
-/

namespace A353747.P5398051349213504661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353748 (n + 1) + 2 * A064989 (n + 1)

end

end A353747.P5398051349213504661

/-! ## A353747.P14617650441445210440

`2*A000010(n+1)-A353748(n+1)`
-/

namespace A353747.P14617650441445210440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A353748 (n + 1)

end

end A353747.P14617650441445210440

/-! ## A353747.P13083547564024483372

`A319998(2*(n+1))-A353748(n+1)`
-/

namespace A353747.P13083547564024483372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1)) - A353748 (n + 1)

end

end A353747.P13083547564024483372

/-! ## A353747.P12490459993874795528

`A064989(n+1)-A219428(n+1)+n`
-/

namespace A353747.P12490459993874795528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A219428 (n + 1) + (n : ℤ)

end

end A353747.P12490459993874795528

/-! ## A353747.P11976288503229993792

`A064989(n+1)+1-A051953(n+1)+n`
-/

namespace A353747.P11976288503229993792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (1 - A051953 (n + 1) + (n : ℤ))

end

end A353747.P11976288503229993792

/-! ## A353747.P11621056337523169814

`A064216(A003602(n+1))+A000010(n+1)`
-/

namespace A353747.P11621056337523169814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A003602 (n + 1)).toNat + A000010 (n + 1)

end

end A353747.P11621056337523169814

/-! ## A353747.P6631004593527073385

`A064989(n+1)+A285709(n+1)+A285699(n+1)`
-/

namespace A353747.P6631004593527073385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (A285709 (n + 1) + A285699 (n + 1))

end

end A353747.P6631004593527073385

/-! ## A353747.P8560703684949371161

`A064989(n+1)+A300822(n+1)+A300821(n+1)`
-/

namespace A353747.P8560703684949371161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + (A300822 (n + 1) + A300821 (n + 1))

end

end A353747.P8560703684949371161

/-! ## A353747.P16678601667165203712

`A000203(n+1)+A064989(n+1)-A051612(n+1)`
-/

namespace A353747.P16678601667165203712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A064989 (n + 1) - A051612 (n + 1))

end

end A353747.P16678601667165203712

/-! ## A353747.P7207335417879071175

`A003968(n+1)+A064989(n+1)-A348971(n+1)`
-/

namespace A353747.P7207335417879071175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) + (A064989 (n + 1) - A348971 (n + 1))

end

end A353747.P7207335417879071175

/-!
# A353748: a(n) = phi(n) - A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353748, there is no canonical definition to state claims against.
-/

/-! ## A353748.P1336225986400836670

`A000010(n+1)-A064989(n+1)`
-/

namespace A353748.P1336225986400836670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A064989 (n + 1)

end

end A353748.P1336225986400836670

/-! ## A353748.P7273129774292182912

`Δ[A002088(n)]-A064989(n+1)`
-/

namespace A353748.P7273129774292182912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064989 (n + 1)

end

end A353748.P7273129774292182912

/-! ## A353748.P947380594819635350

`Δ[A005728(n)]-A064989(n+1)`
-/

namespace A353748.P947380594819635350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064989 (n + 1)

end

end A353748.P947380594819635350

/-! ## A353748.P1981033814793782415

`Δ[A002088(n)]-abs(A290099(n+1))`
-/

namespace A353748.P1981033814793782415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A290099 (n + 1)|

end

end A353748.P1981033814793782415

/-! ## A353748.P81852753721524550

`A349137(Δ[n²])-A064989(n+1)`
-/

namespace A353748.P81852753721524550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A064989 (n + 1)

end

end A353748.P81852753721524550

/-! ## A353748.P18290169560373806734

`A000010(n+1)-abs(A290099(n+1))`
-/

namespace A353748.P18290169560373806734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - |A290099 (n + 1)|

end

end A353748.P18290169560373806734

/-! ## A353748.P5001883285789600446

`sqrt(A127473(n+1))-A064989(n+1)`
-/

namespace A353748.P5001883285789600446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A064989 (n + 1) : ℝ)

end

end A353748.P5001883285789600446

/-! ## A353748.P14649693264434173626

`A039649(n+1)-(A064989(n+1)+1)`
-/

namespace A353748.P14649693264434173626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A064989 (n + 1) + 1)

end

end A353748.P14649693264434173626

/-! ## A353748.P7525748185173086419

`A109606(n+1)+1-A064989(n+1)`
-/

namespace A353748.P7525748185173086419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A064989 (n + 1))

end

end A353748.P7525748185173086419

/-! ## A353748.P15264695031522551695

`2*A000010(n+1)-A353747(n+1)`
-/

namespace A353748.P15264695031522551695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A353747 (n + 1)

end

end A353748.P15264695031522551695

/-! ## A353748.P9761244861259522968

`A353747(n+1)-2*A064989(n+1)`
-/

namespace A353748.P9761244861259522968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353747 (n + 1) - 2 * A064989 (n + 1)

end

end A353748.P9761244861259522968

/-! ## A353748.P15712851624515272162

`A319998(2*(n+1))-A353747(n+1)`
-/

namespace A353748.P15712851624515272162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1)) - A353747 (n + 1)

end

end A353748.P15712851624515272162

/-! ## A353748.P17852843952104649221

`n-(A219428(n+1)+A064989(n+1))`
-/

namespace A353748.P17852843952104649221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A064989 (n + 1))

end

end A353748.P17852843952104649221

/-! ## A353748.P5736372474572137128

`round(A002246(n+1)/4)-A064989(n+1)`
-/

namespace A353748.P5736372474572137128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002246 (n + 1) : ℚ) / 4) - A064989 (n + 1)

end

end A353748.P5736372474572137128

/-! ## A353748.P8274258149537305007

`1-A051953(n+1)+n-A064989(n+1)`
-/

namespace A353748.P8274258149537305007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A064989 (n + 1)

end

end A353748.P8274258149537305007

/-! ## A353748.P3097773962111986151

`abs(A064989(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1))`
-/

namespace A353748.P3097773962111986151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A064989 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ)|

end

end A353748.P3097773962111986151

/-! ## A353748.P16273029440259800719

`A000010(n+1)-A064216(A003602(n+1))`
-/

namespace A353748.P16273029440259800719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A064216 (A003602 (n + 1)).toNat

end

end A353748.P16273029440259800719

/-! ## A353748.P17018177251640945543

`A000203(n+1)-(A064989(n+1)+A051612(n+1))`
-/

namespace A353748.P17018177251640945543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A064989 (n + 1) + A051612 (n + 1))

end

end A353748.P17018177251640945543

/-! ## A353748.P5681031140123791364

`A003968(n+1)-(A348971(n+1)+A064989(n+1))`
-/

namespace A353748.P5681031140123791364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (A348971 (n + 1) + A064989 (n + 1))

end

end A353748.P5681031140123791364

/-! ## A353748.P3012903794154778373

`A285699(n+1)+A285709(n+1)-A064989(n+1)`
-/

namespace A353748.P3012903794154778373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1) + (A285709 (n + 1) - A064989 (n + 1))

end

end A353748.P3012903794154778373

/-!
# A353749: a(n) = phi(n) * A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353749, there is no canonical definition to state claims against.
-/

/-! ## A353749.P17113213992478630795

`A000010(n+1)*A064989(n+1)`
-/

namespace A353749.P17113213992478630795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A064989 (n + 1)

end

end A353749.P17113213992478630795

/-! ## A353749.P2871264507136505931

`Δ[A002088(n)]*A064989(n+1)`
-/

namespace A353749.P2871264507136505931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064989 (n + 1)

end

end A353749.P2871264507136505931

/-! ## A353749.P7971121432290057517

`Δ[A005728(n)]*A064989(n+1)`
-/

namespace A353749.P7971121432290057517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064989 (n + 1)

end

end A353749.P7971121432290057517

/-! ## A353749.P3828291744734399397

`A353750(n+1)-A353757(n+1)`
-/

namespace A353749.P3828291744734399397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1) - A353757 (n + 1)

end

end A353749.P3828291744734399397

/-! ## A353749.P3826779053555599830

`A353761(n+1)*A353762(n+1)`
-/

namespace A353749.P3826779053555599830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (n + 1) * A353762 (n + 1)

end

end A353749.P3826779053555599830

/-! ## A353749.P5975392098299317733

`abs(A290099(n+1))*Δ[A002088(n)]`
-/

namespace A353749.P5975392098299317733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290099 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A353749.P5975392098299317733

/-! ## A353749.P14521590577725421304

`abs(A000010(n+1)*A290099(n+1))`
-/

namespace A353749.P14521590577725421304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) * A290099 (n + 1)|

end

end A353749.P14521590577725421304

/-! ## A353749.P4706929286476565537

`sqrt(A127473(n+1))*A064989(n+1)`
-/

namespace A353749.P4706929286476565537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A064989 (n + 1) : ℝ)

end

end A353749.P4706929286476565537

/-! ## A353749.P15573389466587825452

`(A109606(n+1)+1)*A064989(n+1)`
-/

namespace A353749.P15573389466587825452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A064989 (n + 1)

end

end A353749.P15573389466587825452

/-! ## A353749.P8227215850379280473

`(A039649(n+1)-1)*A064989(n+1)`
-/

namespace A353749.P8227215850379280473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A064989 (n + 1)

end

end A353749.P8227215850379280473

/-! ## A353749.P5820676184255376839

`A064989(n+1)*A349137(2*n+1)`
-/

namespace A353749.P5820676184255376839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A349137 (2 * n + 1)

end

end A353749.P5820676184255376839

/-! ## A353749.P6833862260861489459

`(n-A219428(n+1))*A064989(n+1)`
-/

namespace A353749.P6833862260861489459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A064989 (n + 1)

end

end A353749.P6833862260861489459

/-! ## A353749.P9923048623472020721

`ceil(A002246(n+1)/4)*A064989(n+1)`
-/

namespace A353749.P9923048623472020721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002246 (n + 1) : ℚ) / 4⌉ * A064989 (n + 1)

end

end A353749.P9923048623472020721

/-! ## A353749.P16386079223322181694

`(1-A051953(n+1)+n)*A064989(n+1)`
-/

namespace A353749.P16386079223322181694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ)) * A064989 (n + 1)

end

end A353749.P16386079223322181694

/-! ## A353749.P3762029474468862930

`∑{d}[n+1, A200746(#)*A349125((n+1)/#)]`
-/

namespace A353749.P3762029474468862930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A200746 d * A349125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353749.P3762029474468862930

/-! ## A353749.P11139745968469047078

`A000010(n+1)*A064216(A003602(n+1))`
-/

namespace A353749.P11139745968469047078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A064216 (A003602 (n + 1)).toNat

end

end A353749.P11139745968469047078

/-! ## A353749.P1323954385440912647

`(A353748(n+1)+A064989(n+1))*A064989(n+1)`
-/

namespace A353749.P1323954385440912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353748 (n + 1) + A064989 (n + 1)) * A064989 (n + 1)

end

end A353749.P1323954385440912647

/-! ## A353749.P1415657911444728630

`(A285709(n+1)+A285699(n+1))*A064989(n+1)`
-/

namespace A353749.P1415657911444728630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285709 (n + 1) + A285699 (n + 1)) * A064989 (n + 1)

end

end A353749.P1415657911444728630

/-! ## A353749.P7333535846457736652

`(A300822(n+1)+A300821(n+1))*A064989(n+1)`
-/

namespace A353749.P7333535846457736652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300822 (n + 1) + A300821 (n + 1)) * A064989 (n + 1)

end

end A353749.P7333535846457736652

/-! ## A353749.P5038644835215401428

`(A000203(n+1)-A051612(n+1))*A064989(n+1)`
-/

namespace A353749.P5038644835215401428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A051612 (n + 1)) * A064989 (n + 1)

end

end A353749.P5038644835215401428

/-!
# A353750: a(n) = phi(sigma(n)) * A064989(sigma(n)), where A064989 shifts the prime factorization one step towards lower primes.

The programs for A353750, there is no canonical definition to state claims against.
-/

/-! ## A353750.P7178282520535516225

`A353749(n+1)+A353757(n+1)`
-/

namespace A353750.P7178282520535516225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (n + 1) + A353757 (n + 1)

end

end A353750.P7178282520535516225

/-! ## A353750.P18171335203404284494

`A062401(n+1)*A350073(n+1)`
-/

namespace A353750.P18171335203404284494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) * A350073 (n + 1)

end

end A353750.P18171335203404284494

/-! ## A353750.P4212224616505355376

`A353761(n+1)*A353763(n+1)`
-/

namespace A353750.P4212224616505355376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (n + 1) * A353763 (n + 1)

end

end A353750.P4212224616505355376

/-! ## A353750.P16311682616190734638

`A000010(A000203(n+1))*A350073(n+1)`
-/

namespace A353750.P16311682616190734638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat * A350073 (n + 1)

end

end A353750.P16311682616190734638

/-! ## A353750.P7416068504692799574

`A353757(n+1)+A353761(n+1)*A353762(n+1)`
-/

namespace A353750.P7416068504692799574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (n + 1) + A353761 (n + 1) * A353762 (n + 1)

end

end A353750.P7416068504692799574

/-! ## A353750.P1306658549434573163

`A353749(∑{d}[n+1, #])`
-/

namespace A353750.P1306658549434573163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A353750.P1306658549434573163

/-! ## A353750.P12757360565700105553

`A353749(A000203(n+1))`
-/

namespace A353750.P12757360565700105553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A000203 (n + 1)).toNat

end

end A353750.P12757360565700105553

/-! ## A353750.P10112306951613960757

`A353749(A088580(n+1)-1)`
-/

namespace A353750.P10112306951613960757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A088580 (n + 1) - 1).toNat

end

end A353750.P10112306951613960757

/-! ## A353750.P16671387897162833837

`A353749(A001065(n+1)+1+n)`
-/

namespace A353750.P16671387897162833837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A353750.P16671387897162833837

/-! ## A353750.P13333176534723239513

`A353749(A051612(n+1)+A000010(n+1))`
-/

namespace A353750.P13333176534723239513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A353750.P13333176534723239513

/-! ## A353750.P2304661627769265975

`A353749(A048146(n+1)+A034448(n+1))`
-/

namespace A353750.P2304661627769265975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A353750.P2304661627769265975

/-! ## A353750.P862548242731844262

`A353749(A146076(n+1)+A000593(n+1))`
-/

namespace A353750.P862548242731844262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A353750.P862548242731844262

/-! ## A353750.P245030693410480333

`A353749(A324122(n+1)+A324121(n+1))`
-/

namespace A353750.P245030693410480333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A324122 (n + 1) + A324121 (n + 1)).toNat

end

end A353750.P245030693410480333

/-! ## A353750.P944100021817825795

`A353749(A325966(n+1)+A325965(n+1))`
-/

namespace A353750.P944100021817825795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325966 (n + 1) + A325965 (n + 1)).toNat

end

end A353750.P944100021817825795

/-! ## A353750.P17651512514398844031

`A353749(A325968(n+1)+A325967(n+1))`
-/

namespace A353750.P17651512514398844031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325968 (n + 1) + A325967 (n + 1)).toNat

end

end A353750.P17651512514398844031

/-! ## A353750.P16038921060766707669

`A353749(A325972(n+1)+A325971(n+1))`
-/

namespace A353750.P16038921060766707669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325972 (n + 1) + A325971 (n + 1)).toNat

end

end A353750.P16038921060766707669

/-! ## A353750.P5438299124045692052

`A353749(A146076(2*(n+1))/2)`
-/

namespace A353750.P5438299124045692052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A353750.P5438299124045692052

/-!
# A353751: a(n) = gcd(n, sigma(sigma(n))), where sigma is the sum of divisors function.

The programs for A353751, the canonical program `A353751.P11484978270227039797` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353751 has offset 1).

The definition of A353751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, A318059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353751.P11484978270227039797

`A051027(n+1)/A318059(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A353751

/-- `A051027(n+1)/A318059(n+1)` -/
def P11484978270227039797.Spec : Prop :=
  ∀ n, P11484978270227039797.a n = (A353751 (n + 1) : ℚ)

end A353751

/-! ## A353751.P9025156841913267448

`gcd(n+1, ∑{d}[∑{d}[n+1, #], #])`
-/

namespace A353751.P9025156841913267448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A353751.P9025156841913267448

namespace A353751

/-- `gcd(n+1, ∑{d}[∑{d}[n+1, #], #])` -/
def P9025156841913267448.Spec : Prop :=
  ∀ n, (P9025156841913267448.a n : ℤ) = A353751 (n + 1)

end A353751

/-! ## A353751.P16631133543726368023

`gcd(n+1, ∑[A111408(n)])`
-/

namespace A353751.P16631133543726368023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353751.P16631133543726368023

namespace A353751

/-- `gcd(n+1, ∑[A111408(n)])` -/
def P16631133543726368023.Spec : Prop :=
  ∀ n, (P16631133543726368023.a n : ℤ) = A353751 (n + 1)

end A353751

/-! ## A353751.P9653216950513921870

`(n+1)/A318060(n+1)`
-/

namespace A353751.P9653216950513921870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A318060 (n + 1) : ℚ)

end

end A353751.P9653216950513921870

namespace A353751

/-- `(n+1)/A318060(n+1)` -/
def P9653216950513921870.Spec : Prop :=
  ∀ n, P9653216950513921870.a n = (A353751 (n + 1) : ℚ)

end A353751

/-! ## A353751.P1457492082176195389

`gcd(xor(n, -1), A051027(n+1))`
-/

namespace A353751.P1457492082176195389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A051027 (n + 1))

end

end A353751.P1457492082176195389

namespace A353751

/-- `gcd(xor(n, -1), A051027(n+1))` -/
def P1457492082176195389.Spec : Prop :=
  ∀ n, (P1457492082176195389.a n : ℤ) = A353751 (n + 1)

end A353751

/-! ## A353751.P3487974164043502781

`gcd(Δ[n²]-n, A000203(∑{d}[n-1-2*n, #]))`
-/

namespace A353751.P3487974164043502781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A000203 (∑ d ∈ Nat.divisors (f2 n).natAbs, d))

end

end A353751.P3487974164043502781

namespace A353751

/-- `gcd(Δ[n²]-n, A000203(∑{d}[n-1-2*n, #]))` -/
def P3487974164043502781.Spec : Prop :=
  ∀ n, (P3487974164043502781.a n : ℤ) = A353751 (n + 1)

end A353751

/-! ## A353751.P10402022741795591833

`gcd(A051027(n+1), A131738(n))`
-/

namespace A353751.P10402022741795591833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051027 (n + 1)) (A131738 n)

end

end A353751.P10402022741795591833

namespace A353751

/-- `gcd(A051027(n+1), A131738(n))` -/
def P10402022741795591833.Spec : Prop :=
  ∀ n, (P10402022741795591833.a n : ℤ) = A353751 (n + 1)

end A353751

/-! ## A353751.P17122181703503644633

`A000203(A000203(n+1))/A318059(n+1)`
-/

namespace A353751.P17122181703503644633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℚ) / (A318059 (n + 1) : ℚ)

end

end A353751.P17122181703503644633

namespace A353751

/-- `A000203(A000203(n+1))/A318059(n+1)` -/
def P17122181703503644633.Spec : Prop :=
  ∀ n, P17122181703503644633.a n = (A353751 (n + 1) : ℚ)

end A353751

/-!
# A353752: Multiplicative with a(p^e) = phi(sigma(p^e)).

The programs for A353752, there is no canonical definition to state claims against.
-/

/-! ## A353752.P8478941993072966562

`A062401(n+1)-A353753(n+1)`
-/

namespace A353752.P8478941993072966562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - A353753 (n + 1)

end

end A353752.P8478941993072966562

/-! ## A353752.P5270911326438121761

`A353754(n+1)*A353756(n+1)`
-/

namespace A353752.P5270911326438121761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353754 (n + 1) * A353756 (n + 1)

end

end A353752.P5270911326438121761

/-! ## A353752.P14171734878691983281

`A000010(A000203(n+1))-A353753(n+1)`
-/

namespace A353752.P14171734878691983281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat - A353753 (n + 1)

end

end A353752.P14171734878691983281

/-! ## A353752.P6815329767583878275

`A353754(n+1)*A353755(n+1)-A353753(n+1)`
-/

namespace A353752.P6815329767583878275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353754 (n + 1) * A353755 (n + 1) - A353753 (n + 1)

end

end A353752.P6815329767583878275

/-! ## A353752.P2115680295760559465

`A062401(n+1)/A353755(n+1)*A353756(n+1)`
-/

namespace A353752.P2115680295760559465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353755 (n + 1) : ℚ) * (A353756 (n + 1) : ℚ)

end

end A353752.P2115680295760559465

/-! ## A353752.P17539116756681771145

`gcd(A062401(n+1), A353753(n+1))*A353756(n+1)`
-/

namespace A353752.P17539116756681771145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A062401 (n + 1)) (A353753 (n + 1)) : ℤ) * A353756 (n + 1)

end

end A353752.P17539116756681771145

/-!
# A353753: a(n) = phi(sigma(n)) - Product_{p^e||n} phi(sigma(p^e)), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353753, there is no canonical definition to state claims against.
-/

/-! ## A353753.P5322019792171302719

`A062401(n+1)-A353752(n+1)`
-/

namespace A353753.P5322019792171302719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - A353752 (n + 1)

end

end A353753.P5322019792171302719

/-! ## A353753.P12843722669771998013

`A000010(∑{d}[n+1, #])-A353752(n+1)`
-/

namespace A353753.P12843722669771998013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d) - A353752 (n + 1)

end

end A353753.P12843722669771998013

/-! ## A353753.P6621884545643096411

`A000010(A000203(n+1))-A353752(n+1)`
-/

namespace A353753.P6621884545643096411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat - A353752 (n + 1)

end

end A353753.P6621884545643096411

/-! ## A353753.P18363754627297575590

`A000010(A039653(n+1)+1)-A353752(n+1)`
-/

namespace A353753.P18363754627297575590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039653 (n + 1) + 1).toNat - A353752 (n + 1)

end

end A353753.P18363754627297575590

/-! ## A353753.P18253348428486179285

`A062401(n+1)-A353754(n+1)*A353756(n+1)`
-/

namespace A353753.P18253348428486179285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - A353754 (n + 1) * A353756 (n + 1)

end

end A353753.P18253348428486179285

/-! ## A353753.P667945494505954045

`A353754(n+1)*A353755(n+1)-A353752(n+1)`
-/

namespace A353753.P667945494505954045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353754 (n + 1) * A353755 (n + 1) - A353752 (n + 1)

end

end A353753.P667945494505954045

/-! ## A353753.P13146310301852010715

`(A353755(n+1)-A353756(n+1))*A353754(n+1)`
-/

namespace A353753.P13146310301852010715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353755 (n + 1) - A353756 (n + 1)) * A353754 (n + 1)

end

end A353753.P13146310301852010715

/-!
# A353754: Greatest common divisor of phi(sigma(n)) and Product_{p^e||n} phi(sigma(p^e)), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353754, there is no canonical definition to state claims against.
-/

/-! ## A353754.P13257359685196949258

`A062401(n+1)/A353755(n+1)`
-/

namespace A353754.P13257359685196949258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353755 (n + 1) : ℚ)

end

end A353754.P13257359685196949258

/-! ## A353754.P890105021151561444

`A353752(n+1)/A353756(n+1)`
-/

namespace A353754.P890105021151561444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353752 (n + 1) : ℚ) / (A353756 (n + 1) : ℚ)

end

end A353754.P890105021151561444

/-! ## A353754.P17899551573569038062

`gcd(A062401(n+1), A353752(n+1))`
-/

namespace A353754.P17899551573569038062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062401 (n + 1)) (A353752 (n + 1))

end

end A353754.P17899551573569038062

/-! ## A353754.P5233469954049009322

`A000010(A000203(n+1)/A353755(n+1))`
-/

namespace A353754.P5233469954049009322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A353755 (n + 1) : ℚ))).toNat

end

end A353754.P5233469954049009322

/-! ## A353754.P14310724797054203165

`gcd(A000010(A000203(n+1)), A353753(n+1))`
-/

namespace A353754.P14310724797054203165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A000203 (n + 1)).toNat) (A353753 (n + 1))

end

end A353754.P14310724797054203165

/-! ## A353754.P9582861141192870904

`(A353753(n+1)+A353752(n+1))/A353755(n+1)`
-/

namespace A353754.P9582861141192870904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353753 (n + 1) + A353752 (n + 1) : ℚ) / (A353755 (n + 1) : ℚ)

end

end A353754.P9582861141192870904

/-! ## A353754.P9988358197202543532

`(A062401(n+1)-A353753(n+1))/A353756(n+1)`
-/

namespace A353754.P9988358197202543532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) - A353753 (n + 1) : ℚ) / (A353756 (n + 1) : ℚ)

end

end A353754.P9988358197202543532

/-!
# A353755: a(n) = A062401(n) / gcd(A062401(n), A353752(n)), where A062401(n) = phi(sigma(n)), and A353752(n) = Product_{p^e||n} phi(sigma(p^e)).

The programs for A353755, there is no canonical definition to state claims against.
-/

/-! ## A353755.P2980093931441401906

`A062401(n+1)/A353754(n+1)`
-/

namespace A353755.P2980093931441401906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353755.P2980093931441401906

/-! ## A353755.P5890510239399612673

`A000010(A000203(n+1))/A353754(n+1)`
-/

namespace A353755.P5890510239399612673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353755.P5890510239399612673

/-! ## A353755.P6183085740594194230

`(A353753(n+1)+A353752(n+1))/A353754(n+1)`
-/

namespace A353755.P6183085740594194230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353753 (n + 1) + A353752 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353755.P6183085740594194230

/-! ## A353755.P17171158658415455915

`A353756(n+1)+A353753(n+1)/A353754(n+1)`
-/

namespace A353755.P17171158658415455915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353756 (n + 1) : ℚ) + (A353753 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353755.P17171158658415455915

/-! ## A353755.P7844960515562843323

`A062401(n+1)/A353752(n+1)*A353756(n+1)`
-/

namespace A353755.P7844960515562843323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353752 (n + 1) : ℚ) * (A353756 (n + 1) : ℚ)

end

end A353755.P7844960515562843323

/-! ## A353755.P6662427668341891028

`A062401(n+1)/gcd(A062401(n+1), A353753(n+1))`
-/

namespace A353755.P6662427668341891028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (Int.gcd (A062401 (n + 1)) (A353753 (n + 1)) : ℚ)

end

end A353755.P6662427668341891028

/-!
# A353756: a(n) = A353752(n) / gcd(A062401(n), A353752(n)), where A062401(n) = phi(sigma(n)), and A353752(n) = Product_{p^e||n} phi(sigma(p^e)).

The programs for A353756, there is no canonical definition to state claims against.
-/

/-! ## A353756.P13880232508992727603

`A353752(n+1)/A353754(n+1)`
-/

namespace A353756.P13880232508992727603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353752 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353756.P13880232508992727603

/-! ## A353756.P1700988627212081313

`(A062401(n+1)-A353753(n+1))/A353754(n+1)`
-/

namespace A353756.P1700988627212081313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) - A353753 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353756.P1700988627212081313

/-! ## A353756.P7329455699503200131

`A353755(n+1)-A353753(n+1)/A353754(n+1)`
-/

namespace A353756.P7329455699503200131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353755 (n + 1) : ℚ) - (A353753 (n + 1) : ℚ) / (A353754 (n + 1) : ℚ)

end

end A353756.P7329455699503200131

/-! ## A353756.P5989670119149222473

`A353752(n+1)/A062401(n+1)*A353755(n+1)`
-/

namespace A353756.P5989670119149222473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353752 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ) * (A353755 (n + 1) : ℚ)

end

end A353756.P5989670119149222473

/-! ## A353756.P4543665401211923107

`A332448(2^A353784(n+1))!`
-/

namespace A353756.P4543665401211923107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A332448 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A353784 (n + 1) : ℤ))).toNat).toNat

end

end A353756.P4543665401211923107

/-! ## A353756.P14853167725208896528

`gcd(dr(ceil(2^(n-1))), A171900(2*(n+2)))`
-/

namespace A353756.P14853167725208896528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℤ) (A171900 (2 * (n + 2)))

end

end A353756.P14853167725208896528

/-! ## A353756.P6245731614155033821

`A353762(A353784(n+1))!!`
-/

namespace A353756.P6245731614155033821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A353762 (A353784 (n + 1)).toNat).toNat)

end

end A353756.P6245731614155033821

/-! ## A353756.P11074560209516511451

`gcd(A000002(or(1, n)), A171900(2*(n+2)))`
-/

namespace A353756.P11074560209516511451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000002 (Nat.lor 1 n)) (A171900 (2 * (n + 2)))

end

end A353756.P11074560209516511451

/-! ## A353756.P491869244440951229

`gcd(A001511(n+1), A334926(A004277(n)))`
-/

namespace A353756.P491869244440951229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (n + 1)) (A334926 (A004277 n).toNat)

end

end A353756.P491869244440951229

/-! ## A353756.P3830808322689575179

`gcd(A000361(n), A010125(n))`
-/

namespace A353756.P3830808322689575179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000361 n) (A010125 n)

end

end A353756.P3830808322689575179

/-!
# A353757: a(n) = A353750(n) - A353749(n).

The programs for A353757, there is no canonical definition to state claims against.
-/

/-! ## A353757.P13524578433679972256

`A353750(n+1)-A353749(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353757.P13524578433679972256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1) - A353749 (n + 1)

end

end A353757.P13524578433679972256

/-! ## A353757.P2446104591135591117

`A353750(n+1)-A000010(n+1)*A064989(n+1)`
-/

namespace A353757.P2446104591135591117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1) - A000010 (n + 1) * A064989 (n + 1)

end

end A353757.P2446104591135591117

/-! ## A353757.P12745401746338861221

`A353750(n+1)-A353761(n+1)*A353762(n+1)`
-/

namespace A353757.P12745401746338861221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1) - A353761 (n + 1) * A353762 (n + 1)

end

end A353757.P12745401746338861221

/-! ## A353757.P2936729308175756112

`A353761(n+1)*A353763(n+1)-A353749(n+1)`
-/

namespace A353757.P2936729308175756112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (n + 1) * A353763 (n + 1) - A353749 (n + 1)

end

end A353757.P2936729308175756112

/-! ## A353757.P8741326371790032589

`(A353763(n+1)-A353762(n+1))*A353761(n+1)`
-/

namespace A353757.P8741326371790032589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353763 (n + 1) - A353762 (n + 1)) * A353761 (n + 1)

end

end A353757.P8741326371790032589

/-! ## A353757.P10981922685377115479

`A353749(∑{d}[n+1, #])-A353749(n+1)`
-/

namespace A353757.P10981922685377115479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (∑ d ∈ Nat.divisors (f1 n), d) - A353749 (n + 1)

end

end A353757.P10981922685377115479

/-! ## A353757.P950245035795817112

`A353749(A000203(n+1))-A353749(n+1)`
-/

namespace A353757.P950245035795817112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A000203 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P950245035795817112

/-! ## A353757.P16914807972574462727

`A353749(A088580(n+1)-1)-A353749(n+1)`
-/

namespace A353757.P16914807972574462727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A088580 (n + 1) - 1).toNat - A353749 (n + 1)

end

end A353757.P16914807972574462727

/-! ## A353757.P16278215334176964814

`A353749(A001065(n+1)+1+n)-A353749(n+1)`
-/

namespace A353757.P16278215334176964814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A001065 (n + 1) + 1 + (n : ℤ)).toNat - A353749 (n + 1)

end

end A353757.P16278215334176964814

/-! ## A353757.P1364020360693312204

`A353749(A033880(n+1)+2*(n+1))-A353749(n+1)`
-/

namespace A353757.P1364020360693312204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A033880 (n + 1) + (2 * (n + 1) : ℤ)).toNat - A353749 (n + 1)

end

end A353757.P1364020360693312204

/-! ## A353757.P606759106854088922

`A353749(A051612(n+1)+A000010(n+1))-A353749(n+1)`
-/

namespace A353757.P606759106854088922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A051612 (n + 1) + A000010 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P606759106854088922

/-! ## A353757.P13220871680767346621

`A353749(A048146(n+1)+A034448(n+1))-A353749(n+1)`
-/

namespace A353757.P13220871680767346621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A048146 (n + 1) + A034448 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P13220871680767346621

/-! ## A353757.P14989684984242489177

`A353749(A146076(n+1)+A000593(n+1))-A353749(n+1)`
-/

namespace A353757.P14989684984242489177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A146076 (n + 1) + A000593 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P14989684984242489177

/-! ## A353757.P14220363512812731929

`A353749(A324122(n+1)+A324121(n+1))-A353749(n+1)`
-/

namespace A353757.P14220363512812731929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A324122 (n + 1) + A324121 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P14220363512812731929

/-! ## A353757.P1212028862078001915

`A353749(A325966(n+1)+A325965(n+1))-A353749(n+1)`
-/

namespace A353757.P1212028862078001915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325966 (n + 1) + A325965 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P1212028862078001915

/-! ## A353757.P16498916556361409242

`A353749(A325968(n+1)+A325967(n+1))-A353749(n+1)`
-/

namespace A353757.P16498916556361409242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325968 (n + 1) + A325967 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P16498916556361409242

/-! ## A353757.P14718994077690516749

`A353749(A325972(n+1)+A325971(n+1))-A353749(n+1)`
-/

namespace A353757.P14718994077690516749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A325972 (n + 1) + A325971 (n + 1)).toNat - A353749 (n + 1)

end

end A353757.P14718994077690516749

/-!
# A353758: Numbers k for which A353749(k) > A353749(sigma(k)), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353758, there is no canonical definition to state claims against.
-/

/-! ## A353758.P5298995653326453930

`lt[0, A353760(n+1)]+1`
-/

namespace A353758.P5298995653326453930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353758.P5298995653326453930

/-! ## A353758.P8322486061188874389

`record[(n+3)*A353760(n+3)]`
-/

namespace A353758.P8322486061188874389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A353760 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353758.P8322486061188874389

/-! ## A353758.P13622139007138472317

`lt[A353750(n+1), A353749(n+1)]+1`
-/

namespace A353758.P13622139007138472317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353758.P13622139007138472317

/-! ## A353758.P15488086074948387400

`filter[A067715(n+1), A353760(#)]`
-/

namespace A353758.P15488086074948387400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P15488086074948387400

/-! ## A353758.P10103974752880865282

`filter[A183300(n+1), A353760(#)]`
-/

namespace A353758.P10103974752880865282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P10103974752880865282

/-! ## A353758.P13140108968673714361

`filter[A379851(n+1), A353760(#)]`
-/

namespace A353758.P13140108968673714361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P13140108968673714361

/-! ## A353758.P10371038515906991984

`filter[A093373(n+1), A353760(#)]`
-/

namespace A353758.P10371038515906991984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P10371038515906991984

/-! ## A353758.P2770445107798450799

`filter[A131903(n+1), A353760(#)]`
-/

namespace A353758.P2770445107798450799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P2770445107798450799

/-! ## A353758.P15197751760367949818

`filter[A057716(n+1), A353760(#)]`
-/

namespace A353758.P15197751760367949818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P15197751760367949818

/-! ## A353758.P10987486540615718059

`filter[A163162(n+1), A353760(#)]`
-/

namespace A353758.P10987486540615718059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P10987486540615718059

/-! ## A353758.P1025806663123560840

`filter[A138591(n+1), A353760(#)]`
-/

namespace A353758.P1025806663123560840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P1025806663123560840

/-! ## A353758.P14634866048890489274

`filter[A054027(n+1), A353760(#)]`
-/

namespace A353758.P14634866048890489274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P14634866048890489274

/-! ## A353758.P11870552939481971579

`filter[A063992(n+1), A353760(#)]`
-/

namespace A353758.P11870552939481971579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P11870552939481971579

/-! ## A353758.P15132699316785956541

`filter[A057717(n+1), A353760(#)]`
-/

namespace A353758.P15132699316785956541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P15132699316785956541

/-! ## A353758.P7308602801856497968

`filter[A132999(n+1), A353760(#)]`
-/

namespace A353758.P7308602801856497968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A353758.P7308602801856497968

/-! ## A353758.P14002277892472641983

`filter[n+2, A353760(#)]`
-/

namespace A353758.P14002277892472641983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j) = 1) n)

end

end A353758.P14002277892472641983

/-! ## A353758.P15025455935350884934

`A020725(lt[0, A353760(n+1)])`
-/

namespace A353758.P15025455935350884934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353758.P15025455935350884934

/-! ## A353758.P7987258318205849326

`lt[A353757(n+1), 0]+1`
-/

namespace A353758.P7987258318205849326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353758.P7987258318205849326

/-! ## A353758.P11336834587725596263

`lt[A353757(or(n, C(n, n²))), 0]`
-/

namespace A353758.P11336834587725596263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (Nat.lor n (Nat.choose n (n ^ 2)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353758.P11336834587725596263

/-!
# A353759: Numbers k for which A353749(k) <= A353749(sigma(k)), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353759, there is no canonical definition to state claims against.
-/

/-! ## A353759.P10739916536790847937

`lt[A353760(n+1), 1]+1`
-/

namespace A353759.P10739916536790847937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353759.P10739916536790847937

/-! ## A353759.P10264612145507027524

`lt[A353760(A028310(n)), A057427(n)]`
-/

namespace A353759.P10264612145507027524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353759.P10264612145507027524

/-! ## A353759.P1162174542232470842

`lt[A353760(A028310(n)), A158388(n)]`
-/

namespace A353759.P1162174542232470842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353759.P1162174542232470842

/-! ## A353759.P3876785225435673548

`lt[A353760(A028310(n)), A294619(n)]`
-/

namespace A353759.P3876785225435673548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353759.P3876785225435673548

/-! ## A353759.P12149948818298760268

`eq[A000007(2*n+3), A353760(n+1)]+1`
-/

namespace A353759.P12149948818298760268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353759.P12149948818298760268

/-!
# A353760: a(n) = 1 if A353749(n) > A353749(sigma(n)), otherwise 0. Here A353749(n) = phi(n)*A064989(n), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353760, there is no canonical definition to state claims against.
-/

/-! ## A353760.P494995901648703522

`char[lt[A353757(n+1), 0]]`
-/

namespace A353760.P494995901648703522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353760.P494995901648703522

/-! ## A353760.P1200932843221159499

`char[lt[A353750(n+1), A353749(n+1)]]`
-/

namespace A353760.P1200932843221159499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353760.P1200932843221159499

/-! ## A353760.P18213814829751488429

`char[lt[A353763(n+1), A353762(n+1)]]`
-/

namespace A353760.P18213814829751488429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353763 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353762 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353760.P18213814829751488429

/-! ## A353760.P13593697575652746866

`char[lt[A353750(n+1)-A353761(n+1)*A353762(n+1), 0]]`
-/

namespace A353760.P13593697575652746866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (n + 1) - A353761 (n + 1) * A353762 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353760.P13593697575652746866

/-! ## A353760.P9018216021501064701

`floor(A353757(n+1)/A183845(n+1))²`
-/

namespace A353760.P9018216021501064701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353757 (n + 1) : ℚ) / (A183845 (n + 1) : ℚ)⌋ ^ 2

end

end A353760.P9018216021501064701

/-! ## A353760.P4758785262710367369

`floor(A353757(n+1)/A091287(n+1))²`
-/

namespace A353760.P4758785262710367369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353757 (n + 1) : ℚ) / (A091287 (n + 1) : ℚ)⌋ ^ 2

end

end A353760.P4758785262710367369

/-! ## A353760.P5668421899763946499

`floor(A353757(n+1)/A067171(n+1))²`
-/

namespace A353760.P5668421899763946499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353757 (n + 1) : ℚ) / (A067171 (n + 1) : ℚ)⌋ ^ 2

end

end A353760.P5668421899763946499

/-!
# A353761: a(n) = gcd(A353749(n), A353750(n)), where A353749(n) = phi(n)*A064989(n), and A353750(n) = A353749(sigma(n)).

The programs for A353761, there is no canonical definition to state claims against.
-/

/-! ## A353761.P11392826055003875166

`A353749(n+1)/A353762(n+1)`
-/

namespace A353761.P11392826055003875166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (A353762 (n + 1) : ℚ)

end

end A353761.P11392826055003875166

/-! ## A353761.P9743699159586961679

`A353750(n+1)/A353763(n+1)`
-/

namespace A353761.P9743699159586961679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A353763 (n + 1) : ℚ)

end

end A353761.P9743699159586961679

/-! ## A353761.P17280150444905660532

`gcd(A353749(n+1), A353750(n+1))`
-/

namespace A353761.P17280150444905660532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353749 (n + 1)) (A353750 (n + 1))

end

end A353761.P17280150444905660532

/-! ## A353761.P13588327361366188743

`(A353757(n+1)+A353749(n+1))/A353763(n+1)`
-/

namespace A353761.P13588327361366188743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353757 (n + 1) + A353749 (n + 1) : ℚ) / (A353763 (n + 1) : ℚ)

end

end A353761.P13588327361366188743

/-! ## A353761.P1265056278159168510

`(A353750(n+1)-A353757(n+1))/A353762(n+1)`
-/

namespace A353761.P1265056278159168510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) - A353757 (n + 1) : ℚ) / (A353762 (n + 1) : ℚ)

end

end A353761.P1265056278159168510

/-! ## A353761.P13902286107519422124

`A353749(∑{d}[n+1, #])/A353763(n+1)`
-/

namespace A353761.P13902286107519422124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (A353763 (n + 1) : ℚ)

end

end A353761.P13902286107519422124

/-! ## A353761.P11989431228098506906

`gcd(A353749(∑{d}[n+1, #]), A353757(n+1))`
-/

namespace A353761.P11989431228098506906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353749 (∑ d ∈ Nat.divisors (f1 n), d)) (A353757 (n + 1))

end

end A353761.P11989431228098506906

/-! ## A353761.P11291381052649862663

`gcd(A009531(A353749(n+1)), A353757(n+1))`
-/

namespace A353761.P11291381052649862663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009531 (A353749 (n + 1)).toNat) (A353757 (n + 1))

end

end A353761.P11291381052649862663

/-!
# A353762: a(n) = A353749(n) / gcd(A353749(n), A353750(n)).

The programs for A353762, there is no canonical definition to state claims against.
-/

/-! ## A353762.P17104672852573275809

`A353749(n+1)/A353761(n+1)`
-/

namespace A353762.P17104672852573275809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353762.P17104672852573275809

/-! ## A353762.P14223430132482941901

`(A353750(n+1)-A353757(n+1))/A353761(n+1)`
-/

namespace A353762.P14223430132482941901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) - A353757 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353762.P14223430132482941901

/-! ## A353762.P13046141823078295774

`A353763(n+1)-A353757(n+1)/A353761(n+1)`
-/

namespace A353762.P13046141823078295774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353763 (n + 1) : ℚ) - (A353757 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353762.P13046141823078295774

/-! ## A353762.P7059318834698787894

`A353749(n+1)/A353750(n+1)*A353763(n+1)`
-/

namespace A353762.P7059318834698787894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (A353750 (n + 1) : ℚ) * (A353763 (n + 1) : ℚ)

end

end A353762.P7059318834698787894

/-! ## A353762.P13926614602048738171

`A353749(n+1)/gcd(A353749(n+1), A353757(n+1))`
-/

namespace A353762.P13926614602048738171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (Int.gcd (A353749 (n + 1)) (A353757 (n + 1)) : ℚ)

end

end A353762.P13926614602048738171

/-!
# A353763: a(n) = A353750(n) / gcd(A353749(n), A353750(n)).

The programs for A353763, there is no canonical definition to state claims against.
-/

/-! ## A353763.P12682200873650253050

`A353750(n+1)/A353761(n+1)`
-/

namespace A353763.P12682200873650253050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353763.P12682200873650253050

/-! ## A353763.P10481196744486255023

`(A353757(n+1)+A353749(n+1))/A353761(n+1)`
-/

namespace A353763.P10481196744486255023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353757 (n + 1) + A353749 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353763.P10481196744486255023

/-! ## A353763.P7131211615477731210

`A353762(n+1)+A353757(n+1)/A353761(n+1)`
-/

namespace A353763.P7131211615477731210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353762 (n + 1) : ℚ) + (A353757 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353763.P7131211615477731210

/-! ## A353763.P16153246713747612682

`A353750(n+1)/A353749(n+1)*A353762(n+1)`
-/

namespace A353763.P16153246713747612682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A353749 (n + 1) : ℚ) * (A353762 (n + 1) : ℚ)

end

end A353763.P16153246713747612682

/-! ## A353763.P436355158847562137

`A353750(n+1)/gcd(A353749(n+1), A353757(n+1))`
-/

namespace A353763.P436355158847562137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (Int.gcd (A353749 (n + 1)) (A353757 (n + 1)) : ℚ)

end

end A353763.P436355158847562137

/-! ## A353763.P9251662765828876368

`A353749(∑{d}[n+1, #])/A353761(n+1)`
-/

namespace A353763.P9251662765828876368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353763.P9251662765828876368

/-!
# A353764: Numbers k for which A353749(sigma(k)) is a multiple of A353749(k), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353764, there is no canonical definition to state claims against.
-/

/-! ## A353764.P11112198904707755408

`record[(n+1)*A353766(n+1)]`
-/

namespace A353764.P11112198904707755408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353764.P11112198904707755408

/-! ## A353764.P9388931957583019553

`filter[A093891(n+1), A353766(#)]`
-/

namespace A353764.P9388931957583019553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P9388931957583019553

/-! ## A353764.P3141199090967379129

`filter[A279029(n+1), A353766(#)]`
-/

namespace A353764.P3141199090967379129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P3141199090967379129

/-! ## A353764.P14789720667610307605

`filter[A353759(n+1), A353766(#)]`
-/

namespace A353764.P14789720667610307605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P14789720667610307605

/-! ## A353764.P3783138967329130836

`filter[A196149(n+1), A353766(#)]`
-/

namespace A353764.P3783138967329130836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P3783138967329130836

/-! ## A353764.P6848422672626597183

`eq[1, A353766(n+1)]+1`
-/

namespace A353764.P6848422672626597183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353764.P6848422672626597183

/-! ## A353764.P12326869879418997048

`filter[A051178(n+1), A353766(#)]`
-/

namespace A353764.P12326869879418997048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P12326869879418997048

/-! ## A353764.P4436349764358302665

`filter[A175495(n+1), A353766(#)]`
-/

namespace A353764.P4436349764358302665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P4436349764358302665

/-! ## A353764.P2899560998272897937

`filter[A094229(n+1), A353766(#)]`
-/

namespace A353764.P2899560998272897937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P2899560998272897937

/-! ## A353764.P7822673196916322831

`filter[A004277(n), A353766(#)]`
-/

namespace A353764.P7822673196916322831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353766 (f1 j).toNat = 1) n)

end

end A353764.P7822673196916322831

/-!
# A353765: Numbers k for which A353749(k) is a multiple of A353749(sigma(k)), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353765, there is no canonical definition to state claims against.
-/

/-! ## A353765.P8176035255241851620

`record[root(or(1, n), A353763(n+1))]`
-/

namespace A353765.P8176035255241851620
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℝ) ^ (1 / (A353763 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353765.P8176035255241851620

/-! ## A353765.P10513411395701198170

`A004442(eq[1, A353763(n+1)])`
-/

namespace A353765.P10513411395701198170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353765.P10513411395701198170

/-! ## A353765.P8152724448859238633

`record[root(A000265(n+1), A353763(n+1))]`
-/

namespace A353765.P8152724448859238633
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℝ) ^ (1 / (A353763 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353765.P8152724448859238633

/-! ## A353765.P3484297867712440570

`lt[A353763(A028310(n)), A036453(n+1)]`
-/

namespace A353765.P3484297867712440570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353763 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353765.P3484297867712440570

/-!
# A353766: a(n) = 1 if A353749(n) divides A353749(sigma(n)), and 0 otherwise. Here A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

The programs for A353766, there is no canonical definition to state claims against.
-/

/-! ## A353766.P5039660900513005583

`floor(1/A353762(n+1))`
-/

namespace A353766.P5039660900513005583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353762 (n + 1) : ℚ)⌋

end

end A353766.P5039660900513005583

/-! ## A353766.P13273338726572282816

`char[A353764(n+1)-1]`
-/

namespace A353766.P13273338726572282816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353764 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353766.P13273338726572282816

/-! ## A353766.P15777210602461034282

`A152525(C(2, A353762(n+1)))`
-/

namespace A353766.P15777210602461034282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152525 (Nat.choose 2 (A353762 (n + 1)).toNat)

end

end A353766.P15777210602461034282

/-! ## A353766.P14721220678850020569

`A074206(C(2, A353762(n+1)²))`
-/

namespace A353766.P14721220678850020569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Nat.choose 2 (A353762 (n + 1) ^ 2).toNat)

end

end A353766.P14721220678850020569

/-! ## A353766.P11238279121475793225

`C(A353761(n+1), A353749(n+1))`
-/

namespace A353766.P11238279121475793225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353761 (n + 1)).toNat (A353749 (n + 1)).toNat

end

end A353766.P11238279121475793225

/-! ## A353766.P7013727433738622383

`C(A074206(A027746(n+1)), A353762(n+1))`
-/

namespace A353766.P7013727433738622383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074206 (A027746 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P7013727433738622383

/-! ## A353766.P18230777941945825829

`C(A074206(n), A074206(n)*A353762(n+1))`
-/

namespace A353766.P18230777941945825829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074206 n).toNat (A074206 n * A353762 (n + 1)).toNat

end

end A353766.P18230777941945825829

/-! ## A353766.P17382902963904269861

`A064428(A328479(2*n+3)%A353762(n+1))`
-/

namespace A353766.P17382902963904269861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064428 (Int.tmod (A328479 (2 * n + 3)) (A353762 (n + 1))).toNat

end

end A353766.P17382902963904269861

/-! ## A353766.P5467831400392839810

`C(A095133(A001222(2*n+3)), A353762(n+1))`
-/

namespace A353766.P5467831400392839810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095133 (A001222 (2 * n + 3)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P5467831400392839810

/-! ## A353766.P18031211357749750737

`C(A001222(n+1), A001222(n+1)*A353762(n+1))`
-/

namespace A353766.P18031211357749750737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A001222 (n + 1) * A353762 (n + 1)).toNat

end

end A353766.P18031211357749750737

/-! ## A353766.P17264515009116578827

`C(A095133(n+1), A095133(n+1)*A353762(n+1))`
-/

namespace A353766.P17264515009116578827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095133 (n + 1)).toNat (A095133 (n + 1) * A353762 (n + 1)).toNat

end

end A353766.P17264515009116578827

/-! ## A353766.P11123655703164522490

`C(A354992(n+1), A353762(n+1)*A354992(n+1))`
-/

namespace A353766.P11123655703164522490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354992 (n + 1)).toNat (A353762 (n + 1) * A354992 (n + 1)).toNat

end

end A353766.P11123655703164522490

/-! ## A353766.P8366207981071550921

`C(A001222(A000040(n+1)), A353762(n+1))`
-/

namespace A353766.P8366207981071550921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A000040 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P8366207981071550921

/-! ## A353766.P2324160865526631746

`C(A001222(A045319(n+1)), A353762(n+1))`
-/

namespace A353766.P2324160865526631746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A045319 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P2324160865526631746

/-! ## A353766.P16424010234230187217

`C(A001222(A045344(n+1)), A353762(n+1))`
-/

namespace A353766.P16424010234230187217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A045344 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P16424010234230187217

/-! ## A353766.P8413889256110116246

`C(A001222(A065091(n+1)), A353762(n+1))`
-/

namespace A353766.P8413889256110116246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A065091 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P8413889256110116246

/-! ## A353766.P18303192752015774666

`C(A001222(A042993(n+1)), A353762(n+1))`
-/

namespace A353766.P18303192752015774666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A042993 (n + 1)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P18303192752015774666

/-! ## A353766.P14460428418338370370

`C(A354992(A000040(3*n+5)), A353762(n+1))`
-/

namespace A353766.P14460428418338370370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354992 (A000040 (3 * n + 5)).toNat).toNat (A353762 (n + 1)).toNat

end

end A353766.P14460428418338370370

/-! ## A353766.P3357207910142741128

`∏{e}[A353762(n+1), A353753(#)]`
-/

namespace A353766.P3357207910142741128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A353753 (Nat.factorization (f1 n).natAbs p)

end

end A353766.P3357207910142741128

/-! ## A353766.P1882168059818353930

`∑{d}[A353762(n+1), A008683(#)]`
-/

namespace A353766.P1882168059818353930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A353766.P1882168059818353930

/-!
# A353767: a(n) = phi(sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A353767, there is no canonical definition to state claims against.
-/

/-! ## A353767.P1990456515231103794

`A353790(n+1)/A326042(n+1)`
-/

namespace A353767.P1990456515231103794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353790 (n + 1) : ℚ) / (A326042 (n + 1) : ℚ)

end

end A353767.P1990456515231103794

/-! ## A353767.P5840648917502968945

`A351456(n+1)*A353790(n+1)/A353794(n+1)`
-/

namespace A353767.P5840648917502968945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351456 (n + 1) * A353790 (n + 1) : ℚ) / (A353794 (n + 1) : ℚ)

end

end A353767.P5840648917502968945

/-! ## A353767.P5195221622996614514

`A000010(A003973(n+1))`
-/

namespace A353767.P5195221622996614514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003973 (n + 1)).toNat

end

end A353767.P5195221622996614514

/-! ## A353767.P1283861499792866091

`A000010(∑{d}[n+1, A003961(#)])`
-/

namespace A353767.P1283861499792866091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A353767.P1283861499792866091

/-! ## A353767.P6814814141885214609

`A000010(∑{d}[A253885(n)+1, #])`
-/

namespace A353767.P6814814141885214609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353767.P6814814141885214609

/-! ## A353767.P4721330428282222329

`A000010(∑{d}[or(1, A253885(n)), #])`
-/

namespace A353767.P4721330428282222329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253885 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353767.P4721330428282222329

/-! ## A353767.P14767322179524031310

`A000010(A341528(n+1)/(n+1))`
-/

namespace A353767.P14767322179524031310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A341528 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A353767.P14767322179524031310

/-! ## A353767.P3387351036254029978

`A000010(∑{d}[1-A243501(n+1), #])`
-/

namespace A353767.P3387351036254029978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353767.P3387351036254029978

/-! ## A353767.P4025822539638941556

`A000010(∑{d}[2*A048673(n+1)-1, #])`
-/

namespace A353767.P4025822539638941556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353767.P4025822539638941556

/-! ## A353767.P7050124266410233937

`A000010(A000203(A003961(n+1)))`
-/

namespace A353767.P7050124266410233937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353767.P7050124266410233937

/-! ## A353767.P9579902097677065390

`A000010(A000203(A253885(n)+1))`
-/

namespace A353767.P9579902097677065390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A253885 n + 1).toNat).toNat

end

end A353767.P9579902097677065390

/-! ## A353767.P11179750664067142042

`A000010(∑{d}[A297166(2*(n+1)), #])`
-/

namespace A353767.P11179750664067142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353767.P11179750664067142042

/-! ## A353767.P4255356473566105562

`∑{d}[A003973(n+1), A007431(#)]`
-/

namespace A353767.P4255356473566105562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A353767.P4255356473566105562

/-! ## A353767.P16339467245522935472

`A353750(A003961(n+1))/A326042(n+1)`
-/

namespace A353767.P16339467245522935472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (A003961 (n + 1)).toNat : ℚ) / (A326042 (n + 1) : ℚ)

end

end A353767.P16339467245522935472

/-! ## A353767.P14604826857255384875

`A062401(A003961(n+1))`
-/

namespace A353767.P14604826857255384875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A003961 (n + 1)).toNat

end

end A353767.P14604826857255384875

/-! ## A353767.P5118400110877698801

`A353790(n+1)/A064989(A003973(n+1))`
-/

namespace A353767.P5118400110877698801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353790 (n + 1) : ℚ) / (A064989 (A003973 (n + 1)).toNat : ℚ)

end

end A353767.P5118400110877698801

/-! ## A353767.P4341954555116289556

`A000010(A000203(A097246((n+1)²)))`
-/

namespace A353767.P4341954555116289556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A097246 ((n + 1) ^ 2)).toNat).toNat

end

end A353767.P4341954555116289556

/-!
# A353768: a(n) = phi(n) mod 4; Euler totient function reduced modulo 4.

The programs for A353768, the canonical program `A353768.P17938488479660551072` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353768 has offset 1).

The definition of A353768 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353768.P17938488479660551072

`A010873(A000010(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353768

/-- `A010873(A000010(n+1))` -/
def P17938488479660551072.Spec : Prop :=
  ∀ n, P17938488479660551072.a n = A353768 (n + 1)

theorem P17938488479660551072.correct : P17938488479660551072.Spec := by
  intro n
  simp only [A353768, Nat.add_sub_cancel]

end A353768

/-! ## A353768.P11206606982799029792

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%4`
-/

namespace A353768.P11206606982799029792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) 4

end

end A353768.P11206606982799029792

namespace A353768

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%4` -/
def P11206606982799029792.Spec : Prop :=
  ∀ n, P11206606982799029792.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P8775488761927278984

`and(3, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A353768.P8775488761927278984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A353768.P8775488761927278984

namespace A353768

/-- `and(3, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P8775488761927278984.Spec : Prop :=
  ∀ n, P8775488761927278984.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P240449921640290952

`Δ[A002088(n)]%4`
-/

namespace A353768.P240449921640290952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A353768.P240449921640290952

namespace A353768

/-- `Δ[A002088(n)]%4` -/
def P240449921640290952.Spec : Prop :=
  ∀ n, P240449921640290952.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P18054748169675438248

`Δ[A005728(n)]%4`
-/

namespace A353768.P18054748169675438248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A353768.P18054748169675438248

namespace A353768

/-- `Δ[A005728(n)]%4` -/
def P18054748169675438248.Spec : Prop :=
  ∀ n, P18054748169675438248.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P3550170248870307203

`A069177(n+1)%4`
-/

namespace A353768.P3550170248870307203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069177 (n + 1)) 4

end

end A353768.P3550170248870307203

namespace A353768

/-- `A069177(n+1)%4` -/
def P3550170248870307203.Spec : Prop :=
  ∀ n, P3550170248870307203.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P1341752156221226526

`A073103(n+1)%4`
-/

namespace A353768.P1341752156221226526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073103 (n + 1)) 4

end

end A353768.P1341752156221226526

namespace A353768

/-- `A073103(n+1)%4` -/
def P1341752156221226526.Spec : Prop :=
  ∀ n, P1341752156221226526.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P10680925126483877898

`A087692(n+1)%4`
-/

namespace A353768.P10680925126483877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087692 (n + 1)) 4

end

end A353768.P10680925126483877898

namespace A353768

/-- `A087692(n+1)%4` -/
def P10680925126483877898.Spec : Prop :=
  ∀ n, P10680925126483877898.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P6891373138066205181

`A115070(n+1)%4`
-/

namespace A353768.P6891373138066205181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115070 (n + 1)) 4

end

end A353768.P6891373138066205181

namespace A353768

/-- `A115070(n+1)%4` -/
def P6891373138066205181.Spec : Prop :=
  ∀ n, P6891373138066205181.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P12486461082766216071

`A247257(n+1)%4`
-/

namespace A353768.P12486461082766216071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247257 (n + 1)) 4

end

end A353768.P12486461082766216071

namespace A353768

/-- `A247257(n+1)%4` -/
def P12486461082766216071.Spec : Prop :=
  ∀ n, P12486461082766216071.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P7344324484582687448

`A293482(n+1)%4`
-/

namespace A353768.P7344324484582687448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293482 (n + 1)) 4

end

end A353768.P7344324484582687448

namespace A353768

/-- `A293482(n+1)%4` -/
def P7344324484582687448.Spec : Prop :=
  ∀ n, P7344324484582687448.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P8942472804364666385

`A293484(n+1)%4`
-/

namespace A353768.P8942472804364666385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293484 (n + 1)) 4

end

end A353768.P8942472804364666385

namespace A353768

/-- `A293484(n+1)%4` -/
def P8942472804364666385.Spec : Prop :=
  ∀ n, P8942472804364666385.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P7539424625379972502

`A390317(n+1)%4`
-/

namespace A353768.P7539424625379972502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390317 (n + 1)) 4

end

end A353768.P7539424625379972502

namespace A353768

/-- `A390317(n+1)%4` -/
def P7539424625379972502.Spec : Prop :=
  ∀ n, P7539424625379972502.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P15857560171976452765

`and(3, A325596(n+1))`
-/

namespace A353768.P15857560171976452765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A325596 (n + 1))

end

end A353768.P15857560171976452765

namespace A353768

/-- `and(3, A325596(n+1))` -/
def P15857560171976452765.Spec : Prop :=
  ∀ n, P15857560171976452765.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P9512650082846787129

`C(2, A053574(n+1)²)`
-/

namespace A353768.P9512650082846787129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053574 (n + 1) ^ 2).toNat

end

end A353768.P9512650082846787129

namespace A353768

/-- `C(2, A053574(n+1)²)` -/
def P9512650082846787129.Spec : Prop :=
  ∀ n, (P9512650082846787129.a n : ℤ) = A353768 (n + 1)

end A353768

/-! ## A353768.P3670321037888447558

`A349137(2*n+1)%4`
-/

namespace A353768.P3670321037888447558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 (2 * n + 1)) 4

end

end A353768.P3670321037888447558

namespace A353768

/-- `A349137(2*n+1)%4` -/
def P3670321037888447558.Spec : Prop :=
  ∀ n, P3670321037888447558.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P10403275712371313419

`and(3, A000010(lcm(2, n+1)))`
-/

namespace A353768.P10403275712371313419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000010 (Nat.lcm 2 (n + 1)))

end

end A353768.P10403275712371313419

namespace A353768

/-- `and(3, A000010(lcm(2, n+1)))` -/
def P10403275712371313419.Spec : Prop :=
  ∀ n, P10403275712371313419.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P7914583303038414794

`and(3, A000010(C(n+1, n)))`
-/

namespace A353768.P7914583303038414794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000010 (Nat.choose (n + 1) n))

end

end A353768.P7914583303038414794

namespace A353768

/-- `and(3, A000010(C(n+1, n)))` -/
def P7914583303038414794.Spec : Prop :=
  ∀ n, P7914583303038414794.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P9928510335307404712

`and(3, A000010(4/2+n-1))`
-/

namespace A353768.P9928510335307404712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000010 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))).toNat)

end

end A353768.P9928510335307404712

namespace A353768

/-- `and(3, A000010(4/2+n-1))` -/
def P9928510335307404712.Spec : Prop :=
  ∀ n, P9928510335307404712.a n = A353768 (n + 1)

end A353768

/-! ## A353768.P5126560508295099937

`dr(A000010(2*n-(n-1))%4)`
-/

namespace A353768.P5126560508295099937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 4)

end

end A353768.P5126560508295099937

namespace A353768

/-- `dr(A000010(2*n-(n-1))%4)` -/
def P5126560508295099937.Spec : Prop :=
  ∀ n, (P5126560508295099937.a n : ℤ) = A353768 (n + 1)

end A353768

/-!
# A353774: Expansion of e.g.f. 1/(1 - (exp(x) - 1)^3).

The programs for A353774, there is no canonical definition to state claims against.
-/

/-! ## A353774.P17915513051521845612

`A357868(A046691(n+2))`
-/

namespace A353774.P17915513051521845612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (A046691 (n + 2)).toNat

end

end A353774.P17915513051521845612

/-! ## A353774.P8068686568725919237

`A357868(eq[3, A025581(n)])`
-/

namespace A353774.P8068686568725919237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353774.P8068686568725919237

/-! ## A353774.P5247143225384920135

`A357868(A052905(n+1)+1)`
-/

namespace A353774.P5247143225384920135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (A052905 (n + 1) + 1).toNat

end

end A353774.P5247143225384920135

/-! ## A353774.P499429159632108753

`A357868(A000217(n+4)-4)`
-/

namespace A353774.P499429159632108753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (A000217 (n + 4) - 4).toNat

end

end A353774.P499429159632108753

/-! ## A353774.P16583754594218440809

`A357868(A000124(n+4)-5)`
-/

namespace A353774.P16583754594218440809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (A000124 (n + 4) - 5).toNat

end

end A353774.P16583754594218440809

/-!
# A353775: Expansion of e.g.f. 1/(1 - (exp(x) - 1)^4).

The programs for A353775, there is no canonical definition to state claims against.
-/

/-! ## A353775.P17647180185811514257

`A357868(A052905(n+2))`
-/

namespace A353775.P17647180185811514257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (A052905 (n + 2)).toNat

end

end A353775.P17647180185811514257

/-!
# A353776: a(n) = Sum_{d|n} (n/d mod d).

The programs for A353776, the canonical program `A353776.P16100759896957207183` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353776 has offset 1).

The definition of A353776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353776.P16100759896957207183

`∑{d}[n+1, ((n+1)/#)%#]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A353776

/-- `∑{d}[n+1, ((n+1)/#)%#]` -/
def P16100759896957207183.Spec : Prop :=
  ∀ n, P16100759896957207183.a n = A353776 (n + 1)

theorem P16100759896957207183.correct : P16100759896957207183.Spec := by
  intro n
  simp only [A353776, Nat.add_sub_cancel]

end A353776

/-! ## A353776.P5567928141144815474

`A000203(n+1)-∑{d}[n+1, #*floor((n+1)/#²)]`
-/

namespace A353776.P5567928141144815474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ⌊(n + 1 : ℚ) / (d ^ 2 : ℚ)⌋

end

end A353776.P5567928141144815474

namespace A353776

/-- `A000203(n+1)-∑{d}[n+1, #*floor((n+1)/#²)]` -/
def P5567928141144815474.Spec : Prop :=
  ∀ n, P5567928141144815474.a n = A353776 (n + 1)

end A353776

/-! ## A353776.P15621533471631974761

`∑[A340793(n+1)]-∑{d}[n+1, #*floor((n+1)/#²)]`
-/

namespace A353776.P15621533471631974761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ⌊(n + 1 : ℚ) / (d ^ 2 : ℚ)⌋

end

end A353776.P15621533471631974761

namespace A353776

/-- `∑[A340793(n+1)]-∑{d}[n+1, #*floor((n+1)/#²)]` -/
def P15621533471631974761.Spec : Prop :=
  ∀ n, P15621533471631974761.a n = A353776 (n + 1)

end A353776

/-! ## A353776.P4341630041135897215

`Δ[A160664(n)]-A344403(n+1)`
-/

namespace A353776.P4341630041135897215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344403 (n + 1)

end

end A353776.P4341630041135897215

namespace A353776

/-- `Δ[A160664(n)]-A344403(n+1)` -/
def P4341630041135897215.Spec : Prop :=
  ∀ n, P4341630041135897215.a n = A353776 (n + 1)

end A353776

/-! ## A353776.P6978623029343855322

`A000203(n+1)-A344403(n+1)`
-/

namespace A353776.P6978623029343855322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A344403 (n + 1)

end

end A353776.P6978623029343855322

namespace A353776

/-- `A000203(n+1)-A344403(n+1)` -/
def P6978623029343855322.Spec : Prop :=
  ∀ n, P6978623029343855322.a n = A353776 (n + 1)

end A353776

/-! ## A353776.P2479559052041632932

`sqrt(A072861(n+1))-A344403(n+1)`
-/

namespace A353776.P2479559052041632932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A344403 (n + 1) : ℝ)

end

end A353776.P2479559052041632932

namespace A353776

/-- `sqrt(A072861(n+1))-A344403(n+1)` -/
def P2479559052041632932.Spec : Prop :=
  ∀ n, P2479559052041632932.a n = (A353776 (n + 1) : ℝ)

end A353776

/-! ## A353776.P2743668796605748482

`∑[A340793(n+1)]-A344403(n+1)`
-/

namespace A353776.P2743668796605748482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344403 (n + 1)

end

end A353776.P2743668796605748482

namespace A353776

/-- `∑[A340793(n+1)]-A344403(n+1)` -/
def P2743668796605748482.Spec : Prop :=
  ∀ n, P2743668796605748482.a n = A353776 (n + 1)

end A353776

/-! ## A353776.P1533618656916788257

`A074400(n+1)/2-A344403(n+1)`
-/

namespace A353776.P1533618656916788257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A344403 (n + 1) : ℚ)

end

end A353776.P1533618656916788257

namespace A353776

/-- `A074400(n+1)/2-A344403(n+1)` -/
def P1533618656916788257.Spec : Prop :=
  ∀ n, P1533618656916788257.a n = (A353776 (n + 1) : ℚ)

end A353776

/-! ## A353776.P15033740427065433278

`A000203(A000027(n+1))%A344403(n+1)`
-/

namespace A353776.P15033740427065433278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000027 (n + 1)).toNat) (A344403 (n + 1))

end

end A353776.P15033740427065433278

namespace A353776

/-- `A000203(A000027(n+1))%A344403(n+1)` -/
def P15033740427065433278.Spec : Prop :=
  ∀ n, P15033740427065433278.a n = A353776 (n + 1)

end A353776

/-!
# A353777: Number of tilings of an n X n square using dominoes, monominoes and 2 X 2 tiles.

The programs for A353777, there is no canonical definition to state claims against.
-/

/-! ## A353777.P3647355245698730682

`A352589(∑[n]+n)`
-/

namespace A353777.P3647355245698730682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352589 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A353777.P3647355245698730682

/-! ## A353777.P9420622632188310450

`A352589(A000096(n))+A326687(n)`
-/

namespace A353777.P9420622632188310450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352589 (A000096 n).toNat + A326687 n

end

end A353777.P9420622632188310450

/-! ## A353777.P8548893298619759088

`or(A000007(n), A352589(A000096(n)))`
-/

namespace A353777.P8548893298619759088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A352589 (A000096 n).toNat)

end

end A353777.P8548893298619759088

/-! ## A353777.P11579219968281136220

`or(A010054(n), A352589(A000096(n)))`
-/

namespace A353777.P11579219968281136220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A352589 (A000096 n).toNat)

end

end A353777.P11579219968281136220

/-! ## A353777.P5022277464449418291

`A352589(A000096(n))+A285007(n+1)`
-/

namespace A353777.P5022277464449418291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352589 (A000096 n).toNat + A285007 (n + 1)

end

end A353777.P5022277464449418291

/-!
# A353778: a(1)=1. If a(n) is a novel term (seen for first time), a(n+1) = number of prior terms a(j) > a(n), 1 <= j <= n-1. If a(n) is a repeat of a term last seen at a(m), m < n, then a(n+1) = n-m-1.

The programs for A353778, there is no canonical definition to state claims against.
-/

/-! ## A353778.P2715976642948427119

`A328096(n+1)%A005894(A005894(n))`
-/

namespace A353778.P2715976642948427119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328096 (n + 1)) (A005894 (A005894 n).toNat)

end

end A353778.P2715976642948427119

/-! ## A353778.P4988894890062585917

`A057427(A022859(n+1))*A328096(n+1)`
-/

namespace A353778.P4988894890062585917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A022859 (n + 1)).toNat * A328096 (n + 1)

end

end A353778.P4988894890062585917

/-! ## A353778.P2540426081920587006

`A328096(n+1)-A214263(A328137(n+4))`
-/

namespace A353778.P2540426081920587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328096 (n + 1) - A214263 (A328137 (n + 4)).toNat

end

end A353778.P2540426081920587006

/-! ## A353778.P17901636540945518917

`A328096(n+1)+A154955(A016754(2*n+1))`
-/

namespace A353778.P17901636540945518917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328096 (n + 1) + A154955 (A016754 (2 * n + 1)).toNat

end

end A353778.P17901636540945518917

/-!
# A353779: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + tanh(x).

The programs for A353779, there is no canonical definition to state claims against.
-/

/-! ## A353779.P15834058469252613436

`A076452(A326859(n))*A088994(n+1)`
-/

namespace A353779.P15834058469252613436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076452 (A326859 n).toNat * A088994 (n + 1)

end

end A353779.P15834058469252613436

/-! ## A353779.P92043996910126386

`A122776(record[Δ[A042582(n)]])`
-/

namespace A353779.P92043996910126386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353779.P92043996910126386

/-!
# A353780: a(1) = 1; for n > 1, a(n) is the smallest positive number that has not yet appeared that is coprime to a(n-1), does not equal a(n-1)+1, and has no digit in common with a(n-1).

The programs for A353780, there is no canonical definition to state claims against.
-/

/-! ## A353780.P1455498352021110330

`A353904(n+1)+A185236(A353906(n+1))`
-/

namespace A353780.P1455498352021110330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (n + 1) + A185236 (A353906 (n + 1)).toNat

end

end A353780.P1455498352021110330

/-! ## A353780.P16690621185683822750

`A353904(A077168(n))`
-/

namespace A353780.P16690621185683822750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (A077168 n).toNat

end

end A353780.P16690621185683822750

/-! ## A353780.P17760739025403024106

`A353904(A043319(n+1))`
-/

namespace A353780.P17760739025403024106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (A043319 (n + 1)).toNat

end

end A353780.P17760739025403024106

/-! ## A353780.P16703357421997665522

`A353904(A044916(n+1))`
-/

namespace A353780.P16703357421997665522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (A044916 (n + 1)).toNat

end

end A353780.P16703357421997665522

/-! ## A353780.P920036265118308022

`A353904(A055646(n+1))`
-/

namespace A353780.P920036265118308022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353904 (A055646 (n + 1)).toNat

end

end A353780.P920036265118308022

/-!
# A353782: Number of regions among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes using only a compass.

The programs for A353782, there is no canonical definition to state claims against.
-/

/-! ## A353782.P9071540316512148749

`A356358(n+1)+1-A354605(n+1)`
-/

namespace A353782.P9071540316512148749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356358 (n + 1) + (1 - A354605 (n + 1))

end

end A353782.P9071540316512148749

/-!
# A353783: a(n) = LCM_{p^e||n} sigma(p^e), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353783, there is no canonical definition to state claims against.
-/

/-! ## A353783.P5411072603292202250

`A353785(n+1)*A080398(n+1)`
-/

namespace A353783.P5411072603292202250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353785 (n + 1) * A080398 (n + 1)

end

end A353783.P5411072603292202250

/-! ## A353783.P8383773637152171545

`A000203(n+1)/A353784(n+1)`
-/

namespace A353783.P8383773637152171545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A353784 (n + 1) : ℚ)

end

end A353783.P8383773637152171545

/-! ## A353783.P7928672658785850557

`Δ[A160664(n)]/A353784(n+1)`
-/

namespace A353783.P7928672658785850557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A353784 (n + 1) : ℚ)

end

end A353783.P7928672658785850557

/-! ## A353783.P4636647120408207607

`abs(A143348(n+1)/A353784(n+1))`
-/

namespace A353783.P4636647120408207607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A353784 (n + 1) : ℚ)|

end

end A353783.P4636647120408207607

/-! ## A353783.P6544519739116120409

`sqrt(A072861(n+1))/A353784(n+1)`
-/

namespace A353783.P6544519739116120409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A353784 (n + 1) : ℝ)

end

end A353783.P6544519739116120409

/-!
# A353784: a(n) = sigma(n) / LCM_{p^e||n} sigma(p^e), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353784, there is no canonical definition to state claims against.
-/

/-! ## A353784.P14179984116568114481

`A000203(n+1)/A353783(n+1)`
-/

namespace A353784.P14179984116568114481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A353783 (n + 1) : ℚ)

end

end A353784.P14179984116568114481

/-! ## A353784.P6498378467409207541

`Δ[A160664(n)]/A353783(n+1)`
-/

namespace A353784.P6498378467409207541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A353783 (n + 1) : ℚ)

end

end A353784.P6498378467409207541

/-! ## A353784.P4325588511812378366

`A387156(n+1)/A353785(n+1)`
-/

namespace A353784.P4325588511812378366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387156 (n + 1) : ℚ) / (A353785 (n + 1) : ℚ)

end

end A353784.P4325588511812378366

/-! ## A353784.P6584436866062425545

`∑{d}[n+1, #]/(A080398(n+1)*A353785(n+1))`
-/

namespace A353784.P6584436866062425545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A080398 (n + 1) * A353785 (n + 1) : ℚ)

end

end A353784.P6584436866062425545

/-! ## A353784.P5515107661873416027

`A000203(n+1)/(A080398(n+1)*A353785(n+1))`
-/

namespace A353784.P5515107661873416027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A080398 (n + 1) * A353785 (n + 1) : ℚ)

end

end A353784.P5515107661873416027

/-! ## A353784.P6835999657383282165

`A262610(2*n+1)/A353783(n+1)`
-/

namespace A353784.P6835999657383282165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262610 (2 * n + 1) : ℚ) / (A353783 (n + 1) : ℚ)

end

end A353784.P6835999657383282165

/-!
# A353785: a(n) = A353783(n) / A080398(n).

The programs for A353785, there is no canonical definition to state claims against.
-/

/-! ## A353785.P2776888437105550991

`A353783(n+1)/A080398(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353785.P2776888437105550991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353783 (n + 1) : ℚ) / (A080398 (n + 1) : ℚ)

end

end A353785.P2776888437105550991

/-! ## A353785.P1445716508114803988

`A387156(n+1)/A353784(n+1)`
-/

namespace A353785.P1445716508114803988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387156 (n + 1) : ℚ) / (A353784 (n + 1) : ℚ)

end

end A353785.P1445716508114803988

/-! ## A353785.P16770670344708406548

`A353783(n+1)/A007947(A000203(n+1))`
-/

namespace A353785.P16770670344708406548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353783 (n + 1) : ℚ) / (A007947 (A000203 (n + 1)).toNat : ℚ)

end

end A353785.P16770670344708406548

/-! ## A353785.P3752501163233831700

`A003557(A353783(n+1))`
-/

namespace A353785.P3752501163233831700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A353783 (n + 1)).toNat

end

end A353785.P3752501163233831700

/-! ## A353785.P17117548113636761569

`A217434(A353783(n+1))/A006530(∑{d}[n+1, #])`
-/

namespace A353785.P17117548113636761569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ)

end

end A353785.P17117548113636761569

/-! ## A353785.P11883628958050820371

`A217434(A353783(n+1))/A006530(A057020(n+1))`
-/

namespace A353785.P11883628958050820371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A057020 (n + 1)).toNat : ℚ)

end

end A353785.P11883628958050820371

/-! ## A353785.P14288326773757044597

`A217434(A353783(n+1))/A006530(A295314(n+1))`
-/

namespace A353785.P14288326773757044597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A295314 (n + 1)).toNat : ℚ)

end

end A353785.P14288326773757044597

/-! ## A353785.P5420798198642841451

`A217434(A353783(n+1))/A006530(A245092(2*n+1))`
-/

namespace A353785.P5420798198642841451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A245092 (2 * n + 1)).toNat : ℚ)

end

end A353785.P5420798198642841451

/-! ## A353785.P13851965060690459685

`A217434(A353783(n+1))/A006530(A262610(2*n+1))`
-/

namespace A353785.P13851965060690459685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A262610 (2 * n + 1)).toNat : ℚ)

end

end A353785.P13851965060690459685

/-! ## A353785.P11111976318863449373

`A217434(A353783(n+1))/A006530((A002659(n+1)+1)/2)`
-/

namespace A353785.P11111976318863449373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat : ℚ)

end

end A353785.P11111976318863449373

/-! ## A353785.P8631957330544123815

`A217434(A353783(n+1))/A006530(A309153(n+1))`
-/

namespace A353785.P8631957330544123815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A309153 (n + 1)).toNat : ℚ)

end

end A353785.P8631957330544123815

/-! ## A353785.P1097236213451821372

`A217434(A353783(n+1))/A006530(A009278(n+1))`
-/

namespace A353785.P1097236213451821372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (A353783 (n + 1)).toNat : ℚ) / (A006530 (A009278 (n + 1)).toNat : ℚ)

end

end A353785.P1097236213451821372

/-! ## A353785.P9322462996204685056

`A353783(n+1)/A007947(A353783(n+1)²)`
-/

namespace A353785.P9322462996204685056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353783 (n + 1) : ℚ) / (A007947 (A353783 (n + 1) ^ 2).toNat : ℚ)

end

end A353785.P9322462996204685056

/-!
# A353786: Number of distinct nonprime numbers of the form 2^k - 1 that divide n.

The programs for A353786, the canonical program `A353786.P13595873615884970514` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353786 has offset 1).

The definition of A353786 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147645, A154402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353786.P13595873615884970514

`A154402(n+1)-A147645(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353786

/-- `A154402(n+1)-A147645(n+1)` -/
def P13595873615884970514.Spec : Prop :=
  ∀ n, P13595873615884970514.a n = A353786 (n + 1)

theorem P13595873615884970514.correct : P13595873615884970514.Spec := by
  intro n
  simp only [A353786, Nat.add_sub_cancel]

end A353786

/-! ## A353786.P4776324464760716364

`A305426(2*(n+1))-∑{p}[n+1, A361465(#)]`
-/

namespace A353786.P4776324464760716364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (2 * (n + 1)) - ∑ p ∈ Nat.primeFactors (f1 n), A361465 p

end

end A353786.P4776324464760716364

namespace A353786

/-- `A305426(2*(n+1))-∑{p}[n+1, A361465(#)]` -/
def P4776324464760716364.Spec : Prop :=
  ∀ n, P4776324464760716364.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P12414452055066553737

`A305426(2*(n+1))-∑{p}[n+1, A364251(#)]`
-/

namespace A353786.P12414452055066553737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (2 * (n + 1)) - ∑ p ∈ Nat.primeFactors (f1 n), A364251 p

end

end A353786.P12414452055066553737

namespace A353786

/-- `A305426(2*(n+1))-∑{p}[n+1, A364251(#)]` -/
def P12414452055066553737.Spec : Prop :=
  ∀ n, P12414452055066553737.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P17990301577125414094

`∑{d}[n+1, A036987(#)]-∑{p}[n+1, A361465(#)]`
-/

namespace A353786.P17990301577125414094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d - ∑ p ∈ Nat.primeFactors (f2 n), A361465 p

end

end A353786.P17990301577125414094

namespace A353786

/-- `∑{d}[n+1, A036987(#)]-∑{p}[n+1, A361465(#)]` -/
def P17990301577125414094.Spec : Prop :=
  ∀ n, P17990301577125414094.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P16727303971376064598

`∑{d}[n+1, A036987(#)]-∑{p}[n+1, A364251(#)]`
-/

namespace A353786.P16727303971376064598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d - ∑ p ∈ Nat.primeFactors (f2 n), A364251 p

end

end A353786.P16727303971376064598

namespace A353786

/-- `∑{d}[n+1, A036987(#)]-∑{p}[n+1, A364251(#)]` -/
def P16727303971376064598.Spec : Prop :=
  ∀ n, P16727303971376064598.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P4350026013791293081

`∑{d}[n+1, val(A006530(#+1), 2)]-A147645(n+1)`
-/

namespace A353786.P4350026013791293081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A006530 (d + 1)).toNat 2 : ℕ) : ℤ) - A147645 (n + 1)

end

end A353786.P4350026013791293081

namespace A353786

/-- `∑{d}[n+1, val(A006530(#+1), 2)]-A147645(n+1)` -/
def P4350026013791293081.Spec : Prop :=
  ∀ n, P4350026013791293081.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P16953328525645217365

`∑{d}[n+1, A036987(#)]-∑{p}[n+1, A268340(#+1)]`
-/

namespace A353786.P16953328525645217365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d - ∑ p ∈ Nat.primeFactors (f2 n), A268340 (p + 1)

end

end A353786.P16953328525645217365

namespace A353786

/-- `∑{d}[n+1, A036987(#)]-∑{p}[n+1, A268340(#+1)]` -/
def P16953328525645217365.Spec : Prop :=
  ∀ n, P16953328525645217365.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P10586075412549562235

`round(∑{d}[∏{d}[n+1, #^(#%2)], acot(#)])`
-/

namespace A353786.P10586075412549562235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d ^ (d % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.acot (d : ℝ))

end

end A353786.P10586075412549562235

namespace A353786

/-- `round(∑{d}[∏{d}[n+1, #^(#%2)], acot(#)])` -/
def P10586075412549562235.Spec : Prop :=
  ∀ n, P10586075412549562235.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P13193282703488612073

`A043280(A175665(n+1))*A043288(n+1)`
-/

namespace A353786.P13193282703488612073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A175665 (n + 1)).toNat * A043288 (n + 1)

end

end A353786.P13193282703488612073

namespace A353786

/-- `A043280(A175665(n+1))*A043288(n+1)` -/
def P13193282703488612073.Spec : Prop :=
  ∀ n, P13193282703488612073.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P12878299057909202479

`A018194(A161788(n+1))`
-/

namespace A353786.P12878299057909202479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018194 (A161788 (n + 1)).toNat

end

end A353786.P12878299057909202479

namespace A353786

/-- `A018194(A161788(n+1))` -/
def P12878299057909202479.Spec : Prop :=
  ∀ n, P12878299057909202479.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P1715113338210628536

`A065516(A161788(n+1)+2)`
-/

namespace A353786.P1715113338210628536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A161788 (n + 1) + 2).toNat

end

end A353786.P1715113338210628536

namespace A353786

/-- `A065516(A161788(n+1)+2)` -/
def P1715113338210628536.Spec : Prop :=
  ∀ n, P1715113338210628536.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P5056406652447829795

`A001221(A161788(n+1)+6)`
-/

namespace A353786.P5056406652447829795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A161788 (n + 1) + 6).toNat

end

end A353786.P5056406652447829795

namespace A353786

/-- `A001221(A161788(n+1)+6)` -/
def P5056406652447829795.Spec : Prop :=
  ∀ n, P5056406652447829795.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P18108655036601140710

`A356228(or(2, A161788(n+1)))`
-/

namespace A353786.P18108655036601140710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356228 (Int.lor 2 (A161788 (n + 1))).toNat

end

end A353786.P18108655036601140710

namespace A353786

/-- `A356228(or(2, A161788(n+1)))` -/
def P18108655036601140710.Spec : Prop :=
  ∀ n, P18108655036601140710.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P16047534357835420272

`A356229(or(2, A161788(n+1))-1)`
-/

namespace A353786.P16047534357835420272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (Int.lor 2 (A161788 (n + 1)) - 1).toNat

end

end A353786.P16047534357835420272

namespace A353786

/-- `A356229(or(2, A161788(n+1))-1)` -/
def P16047534357835420272.Spec : Prop :=
  ∀ n, P16047534357835420272.a n = A353786 (n + 1)

end A353786

/-! ## A353786.P446393218107780197

`round(A054008(or(2, A161788(n+1)))^(1/2))`
-/

namespace A353786.P446393218107780197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054008 (Int.lor 2 (A161788 (n + 1))).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ))

end

end A353786.P446393218107780197

namespace A353786

/-- `round(A054008(or(2, A161788(n+1)))^(1/2))` -/
def P446393218107780197.Spec : Prop :=
  ∀ n, P446393218107780197.a n = A353786 (n + 1)

end A353786

/-!
# A353787: a(n) = 1 if A084110(n) is equal to n, otherwise 0.

The programs for A353787, there is no canonical definition to state claims against.
-/

/-! ## A353787.P14502773409838807446

`char[A084111(n+1)-1]`
-/

namespace A353787.P14502773409838807446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353787.P14502773409838807446

/-! ## A353787.P8034215544768160854

`char[eq[n+1, A084110(n+1)]]`
-/

namespace A353787.P8034215544768160854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084110 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353787.P8034215544768160854

/-! ## A353787.P4643789805805864081

`char[A084110(record[(n+1)/(A084110(n+1)-n)])-1]`
-/

namespace A353787.P4643789805805864081
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084110 (n + 1) - (n : ℤ) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084110 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353787.P4643789805805864081

/-! ## A353787.P12625404240070661119

`A293813(A020639(n+1)%(A084110(n+1)-n))`
-/

namespace A353787.P12625404240070661119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 (Int.tmod (A020639 (n + 1)) (A084110 (n + 1) - (n : ℤ))).toNat

end

end A353787.P12625404240070661119

/-! ## A353787.P5201327955863209224

`(A084110(n+1)-n)^(2*A016937(n)*A057428(n))`
-/

namespace A353787.P5201327955863209224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084110 (n + 1) - (n : ℤ) : ℚ) ^ (2 * A016937 n * A057428 n : ℤ)

end

end A353787.P5201327955863209224

/-! ## A353787.P12811475159281232465

`(A084110(n+1)-n)^(A000292(n+9)*A057428(n))`
-/

namespace A353787.P12811475159281232465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084110 (n + 1) - (n : ℤ) : ℚ) ^ (A000292 (n + 9) * A057428 n : ℤ)

end

end A353787.P12811475159281232465

/-! ## A353787.P7090360958342046332

`A354029(A111306(n+1)+2)`
-/

namespace A353787.P7090360958342046332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354029 (A111306 (n + 1) + 2).toNat

end

end A353787.P7090360958342046332

/-! ## A353787.P4830378105627495179

`A014139(A216964(∏{e}[n+1, #+1]))²`
-/

namespace A353787.P4830378105627495179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014139 (A216964 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat ^ 2

end

end A353787.P4830378105627495179

/-! ## A353787.P2257868905223234321

`A244963(A308993(n+1))^A348970(n+1)`
-/

namespace A353787.P2257868905223234321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244963 (A308993 (n + 1)).toNat : ℚ) ^ (A348970 (n + 1) : ℤ)

end

end A353787.P2257868905223234321

/-! ## A353787.P272040311868600318

`A010052(A293234((n+1)²))`
-/

namespace A353787.P272040311868600318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A293234 ((n + 1) ^ 2)).toNat

end

end A353787.P272040311868600318

/-! ## A353787.P3775522586413931831

`val(A000430(n+1), A000430(A084110(n+1)))`
-/

namespace A353787.P3775522586413931831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000430 (n + 1)).toNat (A000430 (A084110 (n + 1)).toNat).toNat

end

end A353787.P3775522586413931831

/-! ## A353787.P17498777991184658525

`val(A001747(A084110(n+1)), A001747(n+1))`
-/

namespace A353787.P17498777991184658525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001747 (A084110 (n + 1)).toNat).toNat (A001747 (n + 1)).toNat

end

end A353787.P17498777991184658525

/-! ## A353787.P12043665037116171978

`val(A002808(A084110(n+1)), A002808(n+1))`
-/

namespace A353787.P12043665037116171978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A084110 (n + 1)).toNat).toNat (A002808 (n + 1)).toNat

end

end A353787.P12043665037116171978

/-! ## A353787.P7904544269501944602

`val(A006037(A084110(n+1)), A006037(n+1))`
-/

namespace A353787.P7904544269501944602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006037 (A084110 (n + 1)).toNat).toNat (A006037 (n + 1)).toNat

end

end A353787.P7904544269501944602

/-! ## A353787.P688627824479926086

`val(A006881(n+1), A006881(A084110(n+1)))`
-/

namespace A353787.P688627824479926086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006881 (n + 1)).toNat (A006881 (A084110 (n + 1)).toNat).toNat

end

end A353787.P688627824479926086

/-! ## A353787.P2300552078022138574

`val(A031215(n+1), A031215(A084110(n+1)))`
-/

namespace A353787.P2300552078022138574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A031215 (n + 1)).toNat (A031215 (A084110 (n + 1)).toNat).toNat

end

end A353787.P2300552078022138574

/-! ## A353787.P14274741096525842543

`val(A045542(A084110(n+1)), A045542(n+1))`
-/

namespace A353787.P14274741096525842543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045542 (A084110 (n + 1)).toNat).toNat (A045542 (n + 1)).toNat

end

end A353787.P14274741096525842543

/-! ## A353787.P502193561504229580

`val(A060939(A084110(n+1)), A060939(n+1))`
-/

namespace A353787.P502193561504229580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060939 (A084110 (n + 1)).toNat).toNat (A060939 (n + 1)).toNat

end

end A353787.P502193561504229580

/-! ## A353787.P2753260161028664571

`val(A084088(A084110(n+1)), A084088(n+1))`
-/

namespace A353787.P2753260161028664571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A084088 (A084110 (n + 1)).toNat).toNat (A084088 (n + 1)).toNat

end

end A353787.P2753260161028664571

/-! ## A353787.P12792839245874447653

`A010052(A071325((n+1)²))`
-/

namespace A353787.P12792839245874447653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A071325 ((n + 1) ^ 2)).toNat

end

end A353787.P12792839245874447653

/-!
# A353788: a(n) = 1 if the number of divisors of n is either 2 or 4, otherwise 0.

The programs for A353788, the canonical program `A353788.P17620779825506949345` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353788 has offset 1).

The definition of A353788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353788.P17620779825506949345

`round(val(∏{e}[n+1, #+1], 2)/∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A353788

/-- `round(val(∏{e}[n+1, #+1], 2)/∏{e}[n+1, #+1])` -/
def P17620779825506949345.Spec : Prop :=
  ∀ n, P17620779825506949345.a n = A353788 (n + 1)

theorem P17620779825506949345.correct : P17620779825506949345.Spec := by
  intro n
  simp only [A353788, Nat.add_sub_cancel]

end A353788

/-! ## A353788.P2218304292475676304

`char[A084116(n+1)-1]`
-/

namespace A353788.P2218304292475676304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353788.P2218304292475676304

namespace A353788

/-- `char[A084116(n+1)-1]` -/
def P2218304292475676304.Spec : Prop :=
  ∀ n, (P2218304292475676304.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P6221445781010110961

`char[eq[1, A084115(n+1)]]`
-/

namespace A353788.P6221445781010110961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353788.P6221445781010110961

namespace A353788

/-- `char[eq[1, A084115(n+1)]]` -/
def P6221445781010110961.Spec : Prop :=
  ∀ n, (P6221445781010110961.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P9541774675643566053

`val(A007406(∏{e}[n+1, #+1]), 5)`
-/

namespace A353788.P9541774675643566053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007406 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat 5

end

end A353788.P9541774675643566053

namespace A353788

/-- `val(A007406(∏{e}[n+1, #+1]), 5)` -/
def P9541774675643566053.Spec : Prop :=
  ∀ n, (P9541774675643566053.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P16650154477399183268

`val(A125294(∏{e}[n+1, #+1]), 5)`
-/

namespace A353788.P16650154477399183268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A125294 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat 5

end

end A353788.P16650154477399183268

namespace A353788

/-- `val(A125294(∏{e}[n+1, #+1]), 5)` -/
def P16650154477399183268.Spec : Prop :=
  ∀ n, (P16650154477399183268.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P2537842904963794652

`C(∏{e}[n+1, #+1], A075101(∏{e}[n+1, #+1]))`
-/

namespace A353788.P2537842904963794652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A075101 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

end

end A353788.P2537842904963794652

namespace A353788

/-- `C(∏{e}[n+1, #+1], A075101(∏{e}[n+1, #+1]))` -/
def P2537842904963794652.Spec : Prop :=
  ∀ n, (P2537842904963794652.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P7659418024566253545

`round(∑{e}[n+1, #-val(#!, 2)]/A000005(n+1))`
-/

namespace A353788.P7659418024566253545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) : ℤ) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A353788.P7659418024566253545

namespace A353788

/-- `round(∑{e}[n+1, #-val(#!, 2)]/A000005(n+1))` -/
def P7659418024566253545.Spec : Prop :=
  ∀ n, P7659418024566253545.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P6426593223971855008

`A089012(A062011(n+1))`
-/

namespace A353788.P6426593223971855008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089012 (A062011 (n + 1)).toNat

end

end A353788.P6426593223971855008

namespace A353788

/-- `A089012(A062011(n+1))` -/
def P6426593223971855008.Spec : Prop :=
  ∀ n, P6426593223971855008.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P6415334132033844344

`A008683(A139770(n+1)+8)`
-/

namespace A353788.P6415334132033844344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139770 (n + 1) + 8).toNat

end

end A353788.P6415334132033844344

namespace A353788

/-- `A008683(A139770(n+1)+8)` -/
def P6415334132033844344.Spec : Prop :=
  ∀ n, P6415334132033844344.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P12790834441736847821

`and(A316355(n), A353799(n+1))`
-/

namespace A353788.P12790834441736847821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316355 n) (A353799 (n + 1))

end

end A353788.P12790834441736847821

namespace A353788

/-- `and(A316355(n), A353799(n+1))` -/
def P12790834441736847821.Spec : Prop :=
  ∀ n, P12790834441736847821.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P10817011217986652783

`A372470((3-A372470(n+1))²)`
-/

namespace A353788.P10817011217986652783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372470 ((3 - A372470 (n + 1)) ^ 2).toNat

end

end A353788.P10817011217986652783

namespace A353788

/-- `A372470((3-A372470(n+1))²)` -/
def P10817011217986652783.Spec : Prop :=
  ∀ n, P10817011217986652783.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P17663757169231325727

`and(A072670(n)!, A049240(n+1))`
-/

namespace A353788.P17663757169231325727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A072670 n).toNat : ℤ) (A049240 (n + 1))

end

end A353788.P17663757169231325727

namespace A353788

/-- `and(A072670(n)!, A049240(n+1))` -/
def P17663757169231325727.Spec : Prop :=
  ∀ n, P17663757169231325727.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P14343707623411876739

`A116378(C(6, A000005(n+1))+1)`
-/

namespace A353788.P14343707623411876739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116378 (Nat.choose 6 (A000005 (n + 1)).toNat + 1)

end

end A353788.P14343707623411876739

namespace A353788

/-- `A116378(C(6, A000005(n+1))+1)` -/
def P14343707623411876739.Spec : Prop :=
  ∀ n, P14343707623411876739.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P6343052487722566362

`A049240(n+1)*A353799(n+1)`
-/

namespace A353788.P6343052487722566362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A353799 (n + 1)

end

end A353788.P6343052487722566362

namespace A353788

/-- `A049240(n+1)*A353799(n+1)` -/
def P6343052487722566362.Spec : Prop :=
  ∀ n, P6343052487722566362.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P13921052496222639087

`A306345(n+1)*A353799(n+1)`
-/

namespace A353788.P13921052496222639087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306345 (n + 1) * A353799 (n + 1)

end

end A353788.P13921052496222639087

namespace A353788

/-- `A306345(n+1)*A353799(n+1)` -/
def P13921052496222639087.Spec : Prop :=
  ∀ n, P13921052496222639087.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P18373890114459986036

`A353799(n+1)*A381955(n+1)`
-/

namespace A353788.P18373890114459986036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (n + 1) * A381955 (n + 1)

end

end A353788.P18373890114459986036

namespace A353788

/-- `A353799(n+1)*A381955(n+1)` -/
def P18373890114459986036.Spec : Prop :=
  ∀ n, P18373890114459986036.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P3744181770389589050

`C(A001222(∏{e}[n+1, #+1]), A038548(n+1))`
-/

namespace A353788.P3744181770389589050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat (A038548 (n + 1)).toNat

end

end A353788.P3744181770389589050

namespace A353788

/-- `C(A001222(∏{e}[n+1, #+1]), A038548(n+1))` -/
def P3744181770389589050.Spec : Prop :=
  ∀ n, (P3744181770389589050.a n : ℤ) = A353788 (n + 1)

end A353788

/-! ## A353788.P18215320030164848290

`A063524(A063070(A000005(n+1))²)`
-/

namespace A353788.P18215320030164848290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A063070 (A000005 (n + 1)).toNat ^ 2).toNat

end

end A353788.P18215320030164848290

namespace A353788

/-- `A063524(A063070(A000005(n+1))²)` -/
def P18215320030164848290.Spec : Prop :=
  ∀ n, P18215320030164848290.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P8859115853551305870

`A015933(A000005(n+1)²)`
-/

namespace A353788.P8859115853551305870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (A000005 (n + 1) ^ 2).toNat

end

end A353788.P8859115853551305870

namespace A353788

/-- `A015933(A000005(n+1)²)` -/
def P8859115853551305870.Spec : Prop :=
  ∀ n, P8859115853551305870.a n = A353788 (n + 1)

end A353788

/-! ## A353788.P11671285544080565290

`A014997(A000005(n+1)²)`
-/

namespace A353788.P11671285544080565290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014997 (A000005 (n + 1) ^ 2).toNat

end

end A353788.P11671285544080565290

namespace A353788

/-- `A014997(A000005(n+1)²)` -/
def P11671285544080565290.Spec : Prop :=
  ∀ n, P11671285544080565290.a n = A353788 (n + 1)

end A353788

/-!
# A353789: Multiplicative with a(p^e) = (q - 1) * q^(e-1) * p^e, where q is the least prime greater than p.

The programs for A353789, the canonical program `A353789.P6484004977017047875` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353789 has offset 1).

The definition of A353789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353789.P12522694346514914050

`(n+1)*A003972(n+1)`
-/

namespace A353789.P12522694346514914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003972 (n + 1)

end

end A353789.P12522694346514914050

namespace A353789

/-- `(n+1)*A003972(n+1)` -/
def P12522694346514914050.Spec : Prop :=
  ∀ n, P12522694346514914050.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P6484004977017047875

`(n+1)*(A337549(n+1)+n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353789

/-- `(n+1)*(A337549(n+1)+n+1)` -/
def P6484004977017047875.Spec : Prop :=
  ∀ n, P6484004977017047875.a n = A353789 (n + 1)

theorem P6484004977017047875.correct : P6484004977017047875.Spec := by
  intro n
  simp only [A353789, Nat.add_sub_cancel]

end A353789

/-! ## A353789.P14925158840381030026

`A103517(n)*A378521(n+1)`
-/

namespace A353789.P14925158840381030026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A378521 (n + 1)

end

end A353789.P14925158840381030026

namespace A353789

/-- `A103517(n)*A378521(n+1)` -/
def P14925158840381030026.Spec : Prop :=
  ∀ n, P14925158840381030026.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P3432874252436244204

`∑{d}[n+1, A055615(#)*A191002((n+1)/#)]`
-/

namespace A353789.P3432874252436244204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A191002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353789.P3432874252436244204

namespace A353789

/-- `∑{d}[n+1, A055615(#)*A191002((n+1)/#)]` -/
def P3432874252436244204.Spec : Prop :=
  ∀ n, P3432874252436244204.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P14923690130154514499

`∑{d}[n+1, A101035(#)*A347124((n+1)/#)]`
-/

namespace A353789.P14923690130154514499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A347124 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353789.P14923690130154514499

namespace A353789

/-- `∑{d}[n+1, A101035(#)*A347124((n+1)/#)]` -/
def P14923690130154514499.Spec : Prop :=
  ∀ n, P14923690130154514499.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P9394918429833921652

`∑{d}[n+1, A328722(#)*A341528((n+1)/#)]`
-/

namespace A353789.P9394918429833921652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A341528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353789.P9394918429833921652

namespace A353789

/-- `∑{d}[n+1, A328722(#)*A341528((n+1)/#)]` -/
def P9394918429833921652.Spec : Prop :=
  ∀ n, P9394918429833921652.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P10131268804701968490

`(n+1)*A000010(A003961(n+1))`
-/

namespace A353789.P10131268804701968490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A003961 (n + 1)).toNat

end

end A353789.P10131268804701968490

namespace A353789

/-- `(n+1)*A000010(A003961(n+1))` -/
def P10131268804701968490.Spec : Prop :=
  ∀ n, P10131268804701968490.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P5117310542658266972

`(n+1)*A000010(A045965(n+1))`
-/

namespace A353789.P5117310542658266972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A045965 (n + 1)).toNat

end

end A353789.P5117310542658266972

namespace A353789

/-- `(n+1)*A000010(A045965(n+1))` -/
def P5117310542658266972.Spec : Prop :=
  ∀ n, P5117310542658266972.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P18104476937368038995

`A000010(A253885(n)+1)*(n+1)`
-/

namespace A353789.P18104476937368038995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A253885 n + 1).toNat * (n + 1 : ℤ)

end

end A353789.P18104476937368038995

namespace A353789

/-- `A000010(A253885(n)+1)*(n+1)` -/
def P18104476937368038995.Spec : Prop :=
  ∀ n, P18104476937368038995.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P3210416217063129747

`A000010(2*A048673(n+1)-1)*(n+1)`
-/

namespace A353789.P3210416217063129747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A048673 (n + 1) - 1).toNat * (n + 1 : ℤ)

end

end A353789.P3210416217063129747

namespace A353789

/-- `A000010(2*A048673(n+1)-1)*(n+1)` -/
def P3210416217063129747.Spec : Prop :=
  ∀ n, P3210416217063129747.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P17282281641058841308

`A000010(round(A246676(4*n+2)/3))*(n+1)`
-/

namespace A353789.P17282281641058841308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat * (n + 1 : ℤ)

end

end A353789.P17282281641058841308

namespace A353789

/-- `A000010(round(A246676(4*n+2)/3))*(n+1)` -/
def P17282281641058841308.Spec : Prop :=
  ∀ n, P17282281641058841308.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P2910746701051373388

`A000010(A297166(2*(n+1)))*(n+1)`
-/

namespace A353789.P2910746701051373388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A297166 (2 * (n + 1))).toNat * (n + 1 : ℤ)

end

end A353789.P2910746701051373388

namespace A353789

/-- `A000010(A297166(2*(n+1)))*(n+1)` -/
def P2910746701051373388.Spec : Prop :=
  ∀ n, P2910746701051373388.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P9001460371179515855

`A353749(A003961(n+1))`
-/

namespace A353789.P9001460371179515855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A003961 (n + 1)).toNat

end

end A353789.P9001460371179515855

namespace A353789

/-- `A353749(A003961(n+1))` -/
def P9001460371179515855.Spec : Prop :=
  ∀ n, P9001460371179515855.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P2695205206441089301

`A353749(A045965(n+1))`
-/

namespace A353789.P2695205206441089301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A045965 (n + 1)).toNat

end

end A353789.P2695205206441089301

namespace A353789

/-- `A353749(A045965(n+1))` -/
def P2695205206441089301.Spec : Prop :=
  ∀ n, P2695205206441089301.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P12085399743475154559

`(n+1)*(A039649(A253885(n)+1)-1)`
-/

namespace A353789.P12085399743475154559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (A253885 n + 1).toNat - 1)

end

end A353789.P12085399743475154559

namespace A353789

/-- `(n+1)*(A039649(A253885(n)+1)-1)` -/
def P12085399743475154559.Spec : Prop :=
  ∀ n, P12085399743475154559.a n = A353789 (n + 1)

end A353789

/-! ## A353789.P14686907399908652345

`(n+1)*A000010(A097246((n+1)²))`
-/

namespace A353789.P14686907399908652345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A097246 ((n + 1) ^ 2)).toNat

end

end A353789.P14686907399908652345

namespace A353789

/-- `(n+1)*A000010(A097246((n+1)²))` -/
def P14686907399908652345.Spec : Prop :=
  ∀ n, P14686907399908652345.a n = A353789 (n + 1)

end A353789

/-!
# A353790: a(n) = A353749(sigma(A003961(n))), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes, while A003961 shifts the factorization one step towards higher primes.

The programs for A353790, there is no canonical definition to state claims against.
-/

/-! ## A353790.P12581180585185852123

`A326042(n+1)*A353767(n+1)`
-/

namespace A353790.P12581180585185852123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (n + 1) * A353767 (n + 1)

end

end A353790.P12581180585185852123

/-! ## A353790.P12028873315430159751

`A000010(A003973(n+1))*A326042(n+1)`
-/

namespace A353790.P12028873315430159751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003973 (n + 1)).toNat * A326042 (n + 1)

end

end A353790.P12028873315430159751

/-! ## A353790.P6633491184938516307

`A353750(A003961(n+1))`
-/

namespace A353790.P6633491184938516307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (A003961 (n + 1)).toNat

end

end A353790.P6633491184938516307

/-! ## A353790.P16449086890599734045

`A353750(A045965(n+1)-A000007(n))`
-/

namespace A353790.P16449086890599734045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (A045965 (n + 1) - A000007 n).toNat

end

end A353790.P16449086890599734045

/-! ## A353790.P17922560509070372053

`A353750(A045965(n+1)/(A000007(n)+1))`
-/

namespace A353790.P17922560509070372053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353750 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A353790.P17922560509070372053

/-! ## A353790.P5088187687813202116

`A353749(A003973(n+1))`
-/

namespace A353790.P5088187687813202116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (A003973 (n + 1)).toNat

end

end A353790.P5088187687813202116

/-! ## A353790.P9464501623034921585

`A353749(∑{d}[n+1, A003961(#)])`
-/

namespace A353790.P9464501623034921585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A353790.P9464501623034921585

/-! ## A353790.P9070904502338117860

`A062401(A003961(n+1))*A326042(n+1)`
-/

namespace A353790.P9070904502338117860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A003961 (n + 1)).toNat * A326042 (n + 1)

end

end A353790.P9070904502338117860

/-! ## A353790.P10637701307358767188

`A064989(A003973(n+1))*A353767(n+1)`
-/

namespace A353790.P10637701307358767188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003973 (n + 1)).toNat * A353767 (n + 1)

end

end A353790.P10637701307358767188

/-!
# A353791: Multiplicative with a(p^e) = ((p-1)*q)^e, where q is the largest prime less than p, and 1 if p = 2.

The programs for A353791, there is no canonical definition to state claims against.
-/

/-! ## A353791.P9198040672916687249

`A003958(n+1)*A064989(n+1)`
-/

namespace A353791.P9198040672916687249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A064989 (n + 1)

end

end A353791.P9198040672916687249

/-! ## A353791.P1431893752784170908

`A353793(A064989(n+1))`
-/

namespace A353791.P1431893752784170908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353793 (A064989 (n + 1)).toNat

end

end A353791.P1431893752784170908

/-! ## A353791.P13820432692849516506

`abs(A003958(n+1)*A290099(n+1))`
-/

namespace A353791.P13820432692849516506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003958 (n + 1) * A290099 (n + 1)|

end

end A353791.P13820432692849516506

/-! ## A353791.P4171507914851469356

`A003958(n+1)*A290099(A000265(n+1))`
-/

namespace A353791.P4171507914851469356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A290099 (A000265 (n + 1)).toNat

end

end A353791.P4171507914851469356

/-! ## A353791.P17835515603383786517

`lcm(A064989(n+1)*A125131(n+1), A006466(n))`
-/

namespace A353791.P17835515603383786517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064989 (n + 1) * A125131 (n + 1)) (A006466 n)

end

end A353791.P17835515603383786517

/-! ## A353791.P4918317224872825437

`(A349126(n+1)-A349125(n+1))*A003958(n+1)`
-/

namespace A353791.P4918317224872825437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349126 (n + 1) - A349125 (n + 1)) * A003958 (n + 1)

end

end A353791.P4918317224872825437

/-! ## A353791.P5568675649689085501

`A003958(n+1)/A000010(n+1)*A353749(n+1)`
-/

namespace A353791.P5568675649689085501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A353749 (n + 1) : ℚ)

end

end A353791.P5568675649689085501

/-! ## A353791.P4459130085340110152

`ceil(A353749(n+1)/A039649(n+1))*A003958(n+1)`
-/

namespace A353791.P4459130085340110152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353749 (n + 1) : ℚ) / (A039649 (n + 1) : ℚ)⌉ * A003958 (n + 1)

end

end A353791.P4459130085340110152

/-! ## A353791.P14010110304606197317

`A353749(n+1)/(A109606(n+1)+1)*A003958(n+1)`
-/

namespace A353791.P14010110304606197317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ) * (A003958 (n + 1) : ℚ)

end

end A353791.P14010110304606197317

/-! ## A353791.P1044490797356310704

`A353749(n+1)/ceil(A002246(n+1)/4)*A003958(n+1)`
-/

namespace A353791.P1044490797356310704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (⌈(A002246 (n + 1) : ℚ) / 4⌉ : ℚ) * (A003958 (n + 1) : ℚ)

end

end A353791.P1044490797356310704

/-! ## A353791.P15382944381266567838

`A003958(n+1)*A246277(A166466(n+1))`
-/

namespace A353791.P15382944381266567838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A246277 (A166466 (n + 1)).toNat

end

end A353791.P15382944381266567838

/-! ## A353791.P944372220968801368

`A003958(n+1)*A246277(A000265(3*(n+1)))`
-/

namespace A353791.P944372220968801368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A246277 (A000265 (3 * (n + 1))).toNat

end

end A353791.P944372220968801368

/-!
# A353792: a(n) = A003958(sigma(n)) * A064989(sigma(n)).

The programs for A353792, there is no canonical definition to state claims against.
-/

/-! ## A353792.P11122804567422678810

`A351442(n+1)*A350073(n+1)`
-/

namespace A353792.P11122804567422678810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1) * A350073 (n + 1)

end

end A353792.P11122804567422678810

/-! ## A353792.P2571970661298998727

`A353793(A350073(n+1))`
-/

namespace A353792.P2571970661298998727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353793 (A350073 (n + 1)).toNat

end

end A353792.P2571970661298998727

/-! ## A353792.P6713872039613790290

`A353791(A161942(n+1))`
-/

namespace A353792.P6713872039613790290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A161942 (n + 1)).toNat

end

end A353792.P6713872039613790290

/-! ## A353792.P6893588641668495835

`A353791(∑{d}[n+1, #])`
-/

namespace A353792.P6893588641668495835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A353792.P6893588641668495835

/-! ## A353792.P7414763114772050439

`A353791(A000203(n+1))`
-/

namespace A353792.P7414763114772050439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A000203 (n + 1)).toNat

end

end A353792.P7414763114772050439

/-! ## A353792.P13773344452584850568

`A353791(A074400(n+1)/2)`
-/

namespace A353792.P13773344452584850568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A353792.P13773344452584850568

/-! ## A353792.P15898785999906976769

`A353791(A074400(n+1))`
-/

namespace A353792.P15898785999906976769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A074400 (n + 1)).toNat

end

end A353792.P15898785999906976769

/-! ## A353792.P16956235211755190666

`A353791(A239050(n+1)/2)`
-/

namespace A353792.P16956235211755190666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A353792.P16956235211755190666

/-! ## A353792.P9564509788527905467

`A353791(A239050(n+1))`
-/

namespace A353792.P9564509788527905467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A239050 (n + 1)).toNat

end

end A353792.P9564509788527905467

/-! ## A353792.P2533891189883480348

`A353791(A319528(n+1)/2)`
-/

namespace A353792.P2533891189883480348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A353792.P2533891189883480348

/-! ## A353792.P17849986879424970772

`A353791(A319528(n+1))`
-/

namespace A353792.P17849986879424970772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A319528 (n + 1)).toNat

end

end A353792.P17849986879424970772

/-!
# A353793: Multiplicative with a(p^e) = ((q-1)*p)^e, where q is the least prime larger than p.

The programs for A353793, there is no canonical definition to state claims against.
-/

/-! ## A353793.P14606764899847862273

`(n+1)*A339905(n+1)`
-/

namespace A353793.P14606764899847862273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (n + 1)

end

end A353793.P14606764899847862273

/-! ## A353793.P7024314362272475188

`(n+1)*A003958(A003961(n+1))`
-/

namespace A353793.P7024314362272475188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (A003961 (n + 1)).toNat

end

end A353793.P7024314362272475188

/-! ## A353793.P14653994628149945901

`(n+1)*A003958(A045965(n+1))`
-/

namespace A353793.P14653994628149945901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (A045965 (n + 1)).toNat

end

end A353793.P14653994628149945901

/-! ## A353793.P5959019585300488098

`(n+1)*A003958(A286385(n+1)+A000203(n+1))`
-/

namespace A353793.P5959019585300488098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A353793.P5959019585300488098

/-! ## A353793.P15399715396571781111

`A353791(A003961(n+1))`
-/

namespace A353793.P15399715396571781111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A003961 (n + 1)).toNat

end

end A353793.P15399715396571781111

/-! ## A353793.P3156448574412720748

`A353791(A045965(n+1))`
-/

namespace A353793.P3156448574412720748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A045965 (n + 1)).toNat

end

end A353793.P3156448574412720748

/-! ## A353793.P16668386319918041253

`(n+1)*A003958(A283980(n+1))`
-/

namespace A353793.P16668386319918041253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (A283980 (n + 1)).toNat

end

end A353793.P16668386319918041253

/-! ## A353793.P1939796754819681742

`A353791(A283980(n+1))`
-/

namespace A353793.P1939796754819681742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A283980 (n + 1)).toNat

end

end A353793.P1939796754819681742

/-!
# A353794: a(n) = A353791(sigma(A003961(n))), where A353791(n) = A003958(n) * A064989(n).

The programs for A353794, there is no canonical definition to state claims against.
-/

/-! ## A353794.P10387814336000304067

`A326042(n+1)*A351456(n+1)`
-/

namespace A353794.P10387814336000304067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (n + 1) * A351456 (n + 1)

end

end A353794.P10387814336000304067

/-! ## A353794.P2324474349141362119

`A003958(A003973(n+1))*A326042(n+1)`
-/

namespace A353794.P2324474349141362119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003973 (n + 1)).toNat * A326042 (n + 1)

end

end A353794.P2324474349141362119

/-! ## A353794.P8890507558480544910

`A326042(n+1)*A351442(A003961(n+1))`
-/

namespace A353794.P8890507558480544910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (n + 1) * A351442 (A003961 (n + 1)).toNat

end

end A353794.P8890507558480544910

/-! ## A353794.P4549304564568533485

`A353793(A326042(n+1))`
-/

namespace A353794.P4549304564568533485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353793 (A326042 (n + 1)).toNat

end

end A353794.P4549304564568533485

/-! ## A353794.P18082766671213727013

`A353792(A003961(n+1))`
-/

namespace A353794.P18082766671213727013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353792 (A003961 (n + 1)).toNat

end

end A353794.P18082766671213727013

/-! ## A353794.P12579760319710773219

`A353792(A253885(n)+1)`
-/

namespace A353794.P12579760319710773219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353792 (A253885 n + 1).toNat

end

end A353794.P12579760319710773219

/-! ## A353794.P16302153025606416996

`A353791(A003973(n+1))`
-/

namespace A353794.P16302153025606416996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A003973 (n + 1)).toNat

end

end A353794.P16302153025606416996

/-!
# A353795: Numbers k such that k divides A353794(k), where A353794(n) = A003958(A003973(n)) * A064989(A003973(n)).

The programs for A353795, there is no canonical definition to state claims against.
-/

/-! ## A353795.P13695800083296379887

`record[gcd(n+1, A353794(n+1))]`
-/

namespace A353795.P13695800083296379887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A353794 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353795.P13695800083296379887

/-! ## A353795.P13044759625715102882

`record[gcd(A326042(n+1)*A351442(A003961(n+1)), A000027(n+1))]`
-/

namespace A353795.P13044759625715102882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326042 (n + 1) * A351442 (A003961 (n + 1)).toNat) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353795.P13044759625715102882

/-! ## A353795.P8913241435743830088

`filter[A353796(n+1), A103583(#)]`
-/

namespace A353795.P8913241435743830088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A353795.P8913241435743830088

/-!
# A353796: Numbers k such that k divides A353790(k), where A353790(n) = phi(A003973(n)) * A064989(A003973(n)).

The programs for A353796, there is no canonical definition to state claims against.
-/

/-! ## A353796.P2952207437788786025

`record[gcd(n+1, A353790(n+1))]`
-/

namespace A353796.P2952207437788786025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A353790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353796.P2952207437788786025

/-! ## A353796.P12882543180198506743

`record[A288966(A232439(n))]`
-/

namespace A353796.P12882543180198506743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288966 (A232439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353796.P12882543180198506743

/-! ## A353796.P14436703355918910677

`record[A000010(n+1)*A287150(3*n+4)]`
-/

namespace A353796.P14436703355918910677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A287150 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353796.P14436703355918910677

/-! ## A353796.P17846727721287289634

`A000005(∏[A014600(n)*A287797(n+1)])`
-/

namespace A353796.P17846727721287289634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 n * A287797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A353796.P17846727721287289634

/-!
# A353797: Numbers k such that k*A003557(A003961(k)) divides A353790(k), where A353790(n) = phi(A003973(n)) * A064989(A003973(n)).

The programs for A353797, there is no canonical definition to state claims against.
-/

/-! ## A353797.P5240192941041319015

`record[A296518(Δ[A003593(n+1)])]`
-/

namespace A353797.P5240192941041319015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296518 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353797.P5240192941041319015

/-! ## A353797.P2025692912958387105

`∑[A067824(A153389(n+1))]`
-/

namespace A353797.P2025692912958387105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A153389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353797.P2025692912958387105

/-!
# A353798: a(n) = 1 if n is either 4th power of a prime (A030514), or product of a prime and the square of a different prime (A054753), otherwise 0.

The programs for A353798, the canonical program `A353798.P2681432505353467180` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353798 has offset 1).

The definition of A353798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353798.P11947627899523583445

`char[eq[8, A002033(n)]]`
-/

namespace A353798.P11947627899523583445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P11947627899523583445

namespace A353798

/-- `char[eq[8, A002033(n)]]` -/
def P11947627899523583445.Spec : Prop :=
  ∀ n, (P11947627899523583445.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P13577215375953002365

`char[A080258(n+1)-1]`
-/

namespace A353798.P13577215375953002365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353798.P13577215375953002365

namespace A353798

/-- `char[A080258(n+1)-1]` -/
def P13577215375953002365.Spec : Prop :=
  ∀ n, (P13577215375953002365.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P3942516334170717023

`char[eq[2, A317145(n+1)]]`
-/

namespace A353798.P3942516334170717023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P3942516334170717023

namespace A353798

/-- `char[eq[2, A317145(n+1)]]` -/
def P3942516334170717023.Spec : Prop :=
  ∀ n, (P3942516334170717023.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P11712265642250287794

`char[eq[3, A055212(n+1)]]`
-/

namespace A353798.P11712265642250287794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P11712265642250287794

namespace A353798

/-- `char[eq[3, A055212(n+1)]]` -/
def P11712265642250287794.Spec : Prop :=
  ∀ n, (P11712265642250287794.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P12940757784300387611

`char[eq[4, A033273(n+1)]]`
-/

namespace A353798.P12940757784300387611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P12940757784300387611

namespace A353798

/-- `char[eq[4, A033273(n+1)]]` -/
def P12940757784300387611.Spec : Prop :=
  ∀ n, (P12940757784300387611.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P9077123492882794583

`char[eq[4, A174725(n+1)]]`
-/

namespace A353798.P9077123492882794583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P9077123492882794583

namespace A353798

/-- `char[eq[4, A174725(n+1)]]` -/
def P9077123492882794583.Spec : Prop :=
  ∀ n, (P9077123492882794583.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P14578360002305971929

`char[eq[5, A080256(n+1)]]`
-/

namespace A353798.P14578360002305971929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P14578360002305971929

namespace A353798

/-- `char[eq[5, A080256(n+1)]]` -/
def P14578360002305971929.Spec : Prop :=
  ∀ n, (P14578360002305971929.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P8370086505374269969

`char[eq[5, A327527(n+1)]]`
-/

namespace A353798.P8370086505374269969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353798.P8370086505374269969

namespace A353798

/-- `char[eq[5, A327527(n+1)]]` -/
def P8370086505374269969.Spec : Prop :=
  ∀ n, (P8370086505374269969.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P2681432505353467180

`val(A000040(A034836(n+1)), 7)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353798

/-- `val(A000040(A034836(n+1)), 7)` -/
def P2681432505353467180.Spec : Prop :=
  ∀ n, (P2681432505353467180.a n : ℤ) = A353798 (n + 1)

theorem P2681432505353467180.correct : P2681432505353467180.Spec := by
  intro n
  simp only [A353798, Nat.add_sub_cancel]

end A353798

/-! ## A353798.P15650730730513513242

`A000007(xor(4, A033273(n+1)))`
-/

namespace A353798.P15650730730513513242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 4 (A033273 (n + 1))).toNat

end

end A353798.P15650730730513513242

namespace A353798

/-- `A000007(xor(4, A033273(n+1)))` -/
def P15650730730513513242.Spec : Prop :=
  ∀ n, P15650730730513513242.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P12269032223010498408

`A259362(A080256(n+1)²+2)`
-/

namespace A353798.P12269032223010498408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (A080256 (n + 1) ^ 2 + 2).toNat

end

end A353798.P12269032223010498408

namespace A353798

/-- `A259362(A080256(n+1)²+2)` -/
def P12269032223010498408.Spec : Prop :=
  ∀ n, P12269032223010498408.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P4640892158610160526

`A294879(A109853(A360661(n+1)))`
-/

namespace A353798.P4640892158610160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294879 (A109853 (A360661 (n + 1)).toNat).toNat

end

end A353798.P4640892158610160526

namespace A353798

/-- `A294879(A109853(A360661(n+1)))` -/
def P4640892158610160526.Spec : Prop :=
  ∀ n, P4640892158610160526.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P5566894798200130302

`A255738(A002033(n)+9)`
-/

namespace A353798.P5566894798200130302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (A002033 n + 9).toNat

end

end A353798.P5566894798200130302

namespace A353798

/-- `A255738(A002033(n)+9)` -/
def P5566894798200130302.Spec : Prop :=
  ∀ n, P5566894798200130302.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P1065644372380355332

`A255738(xor(9, A002033(n)))`
-/

namespace A353798.P1065644372380355332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (Int.xor 9 (A002033 n)).toNat

end

end A353798.P1065644372380355332

namespace A353798

/-- `A255738(xor(9, A002033(n)))` -/
def P1065644372380355332.Spec : Prop :=
  ∀ n, P1065644372380355332.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P11717544041950126215

`val(A014963(A296119(n+1)), 7)`
-/

namespace A353798.P11717544041950126215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (A296119 (n + 1)).toNat).toNat 7

end

end A353798.P11717544041950126215

namespace A353798

/-- `val(A014963(A296119(n+1)), 7)` -/
def P11717544041950126215.Spec : Prop :=
  ∀ n, (P11717544041950126215.a n : ℤ) = A353798 (n + 1)

end A353798

/-! ## A353798.P17882300543668823119

`A052409(A295920(A296118(n+1)))`
-/

namespace A353798.P17882300543668823119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A295920 (A296118 (n + 1)).toNat).toNat

end

end A353798.P17882300543668823119

namespace A353798

/-- `A052409(A295920(A296118(n+1)))` -/
def P17882300543668823119.Spec : Prop :=
  ∀ n, P17882300543668823119.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P8317245555646754055

`A014702(A124511(n+1))`
-/

namespace A353798.P8317245555646754055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 (A124511 (n + 1)).toNat

end

end A353798.P8317245555646754055

namespace A353798

/-- `A014702(A124511(n+1))` -/
def P8317245555646754055.Spec : Prop :=
  ∀ n, P8317245555646754055.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P15997116934489858692

`A037011(A281118(n+1)+1)`
-/

namespace A353798.P15997116934489858692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A281118 (n + 1) + 1).toNat

end

end A353798.P15997116934489858692

namespace A353798

/-- `A037011(A281118(n+1)+1)` -/
def P15997116934489858692.Spec : Prop :=
  ∀ n, P15997116934489858692.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P7265601544745203143

`A160086(A330773(A339564(n+1)²))`
-/

namespace A353798.P7265601544745203143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A330773 (A339564 (n + 1) ^ 2).toNat).toNat

end

end A353798.P7265601544745203143

namespace A353798

/-- `A160086(A330773(A339564(n+1)²))` -/
def P7265601544745203143.Spec : Prop :=
  ∀ n, P7265601544745203143.a n = A353798 (n + 1)

end A353798

/-! ## A353798.P3112217414061474926

`A046660(A327527((n+1)²))`
-/

namespace A353798.P3112217414061474926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A327527 ((n + 1) ^ 2)).toNat

end

end A353798.P3112217414061474926

namespace A353798

/-- `A046660(A327527((n+1)²))` -/
def P3112217414061474926.Spec : Prop :=
  ∀ n, P3112217414061474926.a n = A353798 (n + 1)

end A353798

/-!
# A353799: a(n) = 1 if the number of divisors of n is not larger than 4, otherwise 0.

The programs for A353799, the canonical program `A353799.P9245354239736797125` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353799 has offset 1).

The definition of A353799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353799.P14036799045597173952

`round(∏{e}[n+1, acot(sqrt(#))])`
-/

namespace A353799.P14036799045597173952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (Real.sqrt (Nat.factorization (f1 n) p : ℝ)))

end

end A353799.P14036799045597173952

namespace A353799

/-- `round(∏{e}[n+1, acot(sqrt(#))])` -/
def P14036799045597173952.Spec : Prop :=
  ∀ n, P14036799045597173952.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P9245354239736797125

`round(∏{e}[n+1, 3/(#+3)])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A353799

/-- `round(∏{e}[n+1, 3/(#+3)])` -/
def P9245354239736797125.Spec : Prop :=
  ∀ n, P9245354239736797125.a n = A353799 (n + 1)

theorem P9245354239736797125.correct : P9245354239736797125.Spec := by
  intro n
  simp only [A353799, Nat.add_sub_cancel]

end A353799

/-! ## A353799.P12317174545647811378

`char[lt[∏{e}[n+1, #+1], 5]]`
-/

namespace A353799.P12317174545647811378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353799.P12317174545647811378

namespace A353799

/-- `char[lt[∏{e}[n+1, #+1], 5]]` -/
def P12317174545647811378.Spec : Prop :=
  ∀ n, (P12317174545647811378.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P9873913460773342248

`ceil(cos(log(∏{e}[n+1, #+1])))`
-/

namespace A353799.P9873913460773342248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ))⌉

end

end A353799.P9873913460773342248

namespace A353799

/-- `ceil(cos(log(∏{e}[n+1, #+1])))` -/
def P9873913460773342248.Spec : Prop :=
  ∀ n, P9873913460773342248.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P16839783932765814679

`A072670(n)!%2`
-/

namespace A353799.P16839783932765814679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072670 n).toNat % 2

end

end A353799.P16839783932765814679

namespace A353799

/-- `A072670(n)!%2` -/
def P16839783932765814679.Spec : Prop :=
  ∀ n, (P16839783932765814679.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P5386333455328445697

`C(2, A161840(n+1))`
-/

namespace A353799.P5386333455328445697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A161840 (n + 1)).toNat

end

end A353799.P5386333455328445697

namespace A353799

/-- `C(2, A161840(n+1))` -/
def P5386333455328445697.Spec : Prop :=
  ∀ n, (P5386333455328445697.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P11106051973827856103

`round(1/A038548(n+1))`
-/

namespace A353799.P11106051973827856103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A038548 (n + 1) : ℚ))

end

end A353799.P11106051973827856103

namespace A353799

/-- `round(1/A038548(n+1))` -/
def P11106051973827856103.Spec : Prop :=
  ∀ n, P11106051973827856103.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P12151701711137728036

`round(1/A295279(n+1))`
-/

namespace A353799.P12151701711137728036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A295279 (n + 1) : ℚ))

end

end A353799.P12151701711137728036

namespace A353799

/-- `round(1/A295279(n+1))` -/
def P12151701711137728036.Spec : Prop :=
  ∀ n, P12151701711137728036.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P15570489026082753879

`A333750(n+1)!%2`
-/

namespace A353799.P15570489026082753879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333750 (n + 1)).toNat % 2

end

end A353799.P15570489026082753879

namespace A353799

/-- `A333750(n+1)!%2` -/
def P15570489026082753879.Spec : Prop :=
  ∀ n, (P15570489026082753879.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P16921297947104956714

`char[eq[1, A317145(n+1)]]`
-/

namespace A353799.P16921297947104956714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353799.P16921297947104956714

namespace A353799

/-- `char[eq[1, A317145(n+1)]]` -/
def P16921297947104956714.Spec : Prop :=
  ∀ n, (P16921297947104956714.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P1401045450541478816

`char[lt[A160086(n+1), 2]]`
-/

namespace A353799.P1401045450541478816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353799.P1401045450541478816

namespace A353799

/-- `char[lt[A160086(n+1), 2]]` -/
def P1401045450541478816.Spec : Prop :=
  ∀ n, (P1401045450541478816.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P8767074766671793493

`char[lt[A000005(n+1), 5]]`
-/

namespace A353799.P8767074766671793493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353799.P8767074766671793493

namespace A353799

/-- `char[lt[A000005(n+1), 5]]` -/
def P8767074766671793493.Spec : Prop :=
  ∀ n, (P8767074766671793493.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P196365771332927668

`C(2, 2*A200221(n+1))`
-/

namespace A353799.P196365771332927668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A200221 (n + 1)).toNat

end

end A353799.P196365771332927668

namespace A353799

/-- `C(2, 2*A200221(n+1))` -/
def P196365771332927668.Spec : Prop :=
  ∀ n, (P196365771332927668.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P7543133397476652151

`C(2, 2*A339846(n+1))`
-/

namespace A353799.P7543133397476652151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A339846 (n + 1)).toNat

end

end A353799.P7543133397476652151

namespace A353799

/-- `C(2, 2*A339846(n+1))` -/
def P7543133397476652151.Spec : Prop :=
  ∀ n, (P7543133397476652151.a n : ℤ) = A353799 (n + 1)

end A353799

/-! ## A353799.P1913052326427133854

`round(sqrt(2/A046523(n+1)))`
-/

namespace A353799.P1913052326427133854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 / (A046523 (n + 1) : ℚ) : ℝ))

end

end A353799.P1913052326427133854

namespace A353799

/-- `round(sqrt(2/A046523(n+1)))` -/
def P1913052326427133854.Spec : Prop :=
  ∀ n, P1913052326427133854.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P756032899466990328

`round(sqrt(2/A067824(n+1)))`
-/

namespace A353799.P756032899466990328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 / (A067824 (n + 1) : ℚ) : ℝ))

end

end A353799.P756032899466990328

namespace A353799

/-- `round(sqrt(2/A067824(n+1)))` -/
def P756032899466990328.Spec : Prop :=
  ∀ n, P756032899466990328.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P10681448717103505180

`round(acot(A001055(n+1)/2))`
-/

namespace A353799.P10681448717103505180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((A001055 (n + 1) : ℚ) / 2 : ℝ))

end

end A353799.P10681448717103505180

namespace A353799

/-- `round(acot(A001055(n+1)/2))` -/
def P10681448717103505180.Spec : Prop :=
  ∀ n, P10681448717103505180.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P14372412173252898193

`round(acot(A033273(n+1)/2))`
-/

namespace A353799.P14372412173252898193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((A033273 (n + 1) : ℚ) / 2 : ℝ))

end

end A353799.P14372412173252898193

namespace A353799

/-- `round(acot(A033273(n+1)/2))` -/
def P14372412173252898193.Spec : Prop :=
  ∀ n, P14372412173252898193.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P512852225968443864

`A012245(A050334(n+1))`
-/

namespace A353799.P512852225968443864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A050334 (n + 1)).toNat

end

end A353799.P512852225968443864

namespace A353799

/-- `A012245(A050334(n+1))` -/
def P512852225968443864.Spec : Prop :=
  ∀ n, P512852225968443864.a n = A353799 (n + 1)

end A353799

/-! ## A353799.P1409311015275087444

`and(A243129(n+1), A340369(n+1))`
-/

namespace A353799.P1409311015275087444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243129 (n + 1)) (A340369 (n + 1))

end

end A353799.P1409311015275087444

namespace A353799

/-- `and(A243129(n+1), A340369(n+1))` -/
def P1409311015275087444.Spec : Prop :=
  ∀ n, P1409311015275087444.a n = A353799 (n + 1)

end A353799

