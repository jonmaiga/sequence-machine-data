import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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

/-!
# A357300: a(n) is the smallest number m with exactly n divisors whose first digit equals the first digit of m.

The programs for A357300, there is no canonical definition to state claims against.
-/

/-! ## A357300.P17123185767256106296

`A355592((n-5)*n*((n-1-(2-n)²)²-1)-xor(n, -1))`
-/

namespace A357300.P17123185767256106296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355592 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1)) - Int.xor (n : ℤ) (-1)).toNat

end

end A357300.P17123185767256106296

/-! ## A357300.P18233986093846284504

`((n-5)*n*((n-1-(2-n)²)²-1))!*A355592(n+1)`
-/

namespace A357300.P18233986093846284504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1))).toNat : ℤ) * A355592 (n + 1)

end

end A357300.P18233986093846284504

/-!
# A357301: a(n) is the number of distinct radii of circles passing through at least three points in a square grid of n X n points.

The programs for A357301, there is no canonical definition to state claims against.
-/

/-! ## A357301.P17150904703173315606

`A218913(2*n)-A048673(A186020(n))`
-/

namespace A357301.P17150904703173315606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218913 (2 * n) - A048673 (A186020 n).toNat

end

end A357301.P17150904703173315606

/-! ## A357301.P13072658132182664067

`A218913(2*n)-A237593(A062365(n+1))`
-/

namespace A357301.P13072658132182664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218913 (2 * n) - A237593 (A062365 (n + 1)).toNat

end

end A357301.P13072658132182664067

/-!
# A357302: Numbers k such that k^2 can be represented as x^2 + x*y + y^2 in more ways than for any smaller k.

The programs for A357302, there is no canonical definition to state claims against.
-/

/-! ## A357302.P6932039815065645398

`A343771(A029744(n+1))`
-/

namespace A357302.P6932039815065645398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343771 (A029744 (n + 1)).toNat

end

end A357302.P6932039815065645398

/-! ## A357302.P17064175248495690017

`A343771(record[A232559(n+1)])`
-/

namespace A357302.P17064175248495690017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A357302.P17064175248495690017

/-! ## A357302.P15677831173233960436

`A166669(A188597(n+1))`
-/

namespace A357302.P15677831173233960436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166669 (A188597 (n + 1)).toNat

end

end A357302.P15677831173233960436

/-! ## A357302.P5576838212177014015

`filter[A344473(n+1), A359471(#)]`
-/

namespace A357302.P5576838212177014015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A357302.P5576838212177014015

/-!
# A357304: Records of the Hamming weight of squares.

The programs for A357304, there is no canonical definition to state claims against.
-/

/-! ## A357304.P5234796352445704144

`comp[A084193(A084810(3*n+4))]`
-/

namespace A357304.P5234796352445704144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (A084810 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357304.P5234796352445704144

/-! ## A357304.P14791088148560315473

`comp[A332206(2*n+3)-A064169(n+1)]`
-/

namespace A357304.P14791088148560315473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (2 * n + 3) - A064169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357304.P14791088148560315473

/-! ## A357304.P7434292729880341889

`lt[A035199(A353426(n)), A067280(n+5)]`
-/

namespace A357304.P7434292729880341889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A353426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357304.P7434292729880341889

/-! ## A357304.P11354830537790297263

`lt[A126310(2*n+1), A137921(A000125(n))]`
-/

namespace A357304.P11354830537790297263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126310 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (A000125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357304.P11354830537790297263

/-! ## A357304.P2647324309738517278

`lt[(-1)^∑[n], A036579(A095842(3*n+2))]`
-/

namespace A357304.P2647324309738517278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (A095842 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A357304.P2647324309738517278

/-!
# A357305: Numbers k > 1 such that the ratio (numbers of zeros)/(total length) in the binary representation of k^2 is a new minimum.

The programs for A357305, there is no canonical definition to state claims against.
-/

/-! ## A357305.P1066860106643518834

`A095805(a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A357305.P1066860106643518834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A095805 (a (n - 2) + 1).toNat

end

end A357305.P1066860106643518834

/-! ## A357305.P14430496642879948061

`A127240(A029651(n)+1)`
-/

namespace A357305.P14430496642879948061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127240 (A029651 n + 1).toNat

end

end A357305.P14430496642879948061

/-!
# A357307: a(0) = 1, a(1) = 0, a(2) = 1; a(n) = a(n-1) + Sum_{k=0..n-3} a(k) * a(n-k-3).

The programs for A357307, there is no canonical definition to state claims against.
-/

/-! ## A357307.P7406107277729725234

`A098357(A342335(3*(n+1))+A172311(2*(n+2)))`
-/

namespace A357307.P7406107277729725234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A342335 (3 * (n + 1)) + A172311 (2 * (n + 2))).toNat

end

end A357307.P7406107277729725234

/-!
# A357309: Number of ascent sequences of length 2n with n zeros.

The programs for A357309, there is no canonical definition to state claims against.
-/

/-! ## A357309.P17722855829199621262

`A175579(A004277(n²))`
-/

namespace A357309.P17722855829199621262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (A004277 (n ^ 2)).toNat

end

end A357309.P17722855829199621262

/-! ## A357309.P8030209749222463672

`A175579(A028310(2*n²))`
-/

namespace A357309.P8030209749222463672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (A028310 (2 * n ^ 2)).toNat

end

end A357309.P8030209749222463672

/-! ## A357309.P14170538407858483248

`A175579(A028310(n)+abs(n*(1-2*n)))`
-/

namespace A357309.P14170538407858483248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (A028310 n + |(n : ℤ) * (1 - (2 * n : ℤ))|).toNat

end

end A357309.P14170538407858483248

/-! ## A357309.P14215435907736379983

`A175579(A004277(n)*A028310(n))`
-/

namespace A357309.P14215435907736379983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (A004277 n * A028310 n).toNat

end

end A357309.P14215435907736379983

/-! ## A357309.P13347532941342309411

`A175579(A175567(3*n+2)+A001105(n))`
-/

namespace A357309.P13347532941342309411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (A175567 (3 * n + 2) + A001105 n).toNat

end

end A357309.P13347532941342309411

/-!
# A357310: a(n) is the number of j in the range 1 <= j <= n with the same maximal exponent in prime factorization as n.

The programs for A357310, there is no canonical definition to state claims against.
-/

/-! ## A357310.P9890191032889832864

`A005361(lcm(A000041(n), A308328(n+1)))`
-/

namespace A357310.P9890191032889832864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.lcm (A000041 n) (A308328 (n + 1)))

end

end A357310.P9890191032889832864

/-! ## A357310.P10460847698484754236

`A285329(n+1)+A014669(A289220(3*(n+1)))`
-/

namespace A357310.P10460847698484754236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285329 (n + 1) + A014669 (A289220 (3 * (n + 1))).toNat

end

end A357310.P10460847698484754236

/-! ## A357310.P15042303045963473723

`A295876(n+1)-A088388(A000712(2*n))`
-/

namespace A357310.P15042303045963473723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295876 (n + 1) - A088388 (A000712 (2 * n)).toNat

end

end A357310.P15042303045963473723

/-! ## A357310.P8006479954643939731

`A084532(lt[A349814(n), A002487(3*(n+1))])`
-/

namespace A357310.P8006479954643939731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357310.P8006479954643939731

/-!
# A357312: Number of compositions (ordered partitions) of n into divisors of n that are smaller than sqrt(n).

The programs for A357312, there is no canonical definition to state claims against.
-/

/-! ## A357312.P7413218800142817761

`A342689(A280251(n+1))`
-/

namespace A357312.P7413218800142817761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342689 (A280251 (n + 1)).toNat

end

end A357312.P7413218800142817761

/-! ## A357312.P9072590580535264345

`A320341(A005625(n+2))`
-/

namespace A357312.P9072590580535264345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320341 (A005625 (n + 2)).toNat

end

end A357312.P9072590580535264345

/-! ## A357312.P13549362602677169738

`A001519(A348963((n-1)!+n*a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A357312.P13549362602677169738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A001519 (A348963 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)).toNat).toNat

end

end A357312.P13549362602677169738

/-! ## A357312.P11884745687687090334

`A000045(A210442(n)^A282892(n))`
-/

namespace A357312.P11884745687687090334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A210442 n : ℚ) ^ (A282892 n : ℤ))).toNat

end

end A357312.P11884745687687090334

/-! ## A357312.P10521894734458092488

`A356327(A167865(n)^A356331(n))`
-/

namespace A357312.P10521894734458092488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (SequenceMachineLib.roundAway ((A167865 n : ℚ) ^ (A356331 n : ℤ))).toNat

end

end A357312.P10521894734458092488

/-!
# A357313: a(n) is the unique number m such that A001065(m) = A057709(n).

The programs for A357313, there is no canonical definition to state claims against.
-/

/-! ## A357313.P13229859954543982664

`A070015(A057709(n+1))`
-/

namespace A357313.P13229859954543982664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A057709 (n + 1)).toNat

end

end A357313.P13229859954543982664

/-! ## A357313.P8509149729022992219

`A135244(A057709(2*n+1-n))`
-/

namespace A357313.P8509149729022992219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (A057709 (2 * n + 1 - n)).toNat

end

end A357313.P8509149729022992219

/-!
# A357315: Numbers m such that for all k < m, at least one of m*k - 1 and m*k + 1 is squarefree.

The programs for A357315, there is no canonical definition to state claims against.
-/

/-! ## A357315.P11597751672281666013

`lt[A240177(n), A070528(n+1)]+1`
-/

namespace A357315.P11597751672281666013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357315.P11597751672281666013

/-! ## A357315.P7737043913876591004

`lt[A270716(A098743(n)), A000070(n)]`
-/

namespace A357315.P7737043913876591004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (A098743 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357315.P7737043913876591004

/-! ## A357315.P4806267917483012970

`lt[A033833(n+1), A074206(n)*A076496(n+1)]`
-/

namespace A357315.P4806267917483012970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n * A076496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357315.P4806267917483012970

/-! ## A357315.P9244786626248514632

`lt[A225972(3*n+1), A365314(A274978(2*n+1))]`
-/

namespace A357315.P9244786626248514632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365314 (A274978 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357315.P9244786626248514632

/-! ## A357315.P11939930095446514369

`lt[A067661(n), A320124(A003415(n))]`
-/

namespace A357315.P11939930095446514369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320124 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357315.P11939930095446514369

/-!
# A357321: Expansion of e.g.f. -LambertW(log(1 - 2*x)/2).

The programs for A357321, there is no canonical definition to state claims against.
-/

/-! ## A357321.P8967473550203806800

`A364839(∑[∑[n+1]]-n)`
-/

namespace A357321.P8967473550203806800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A357321.P8967473550203806800

/-!
# A357322: Expansion of e.g.f. -LambertW(log(1 - 3*x)/3).

The programs for A357322, there is no canonical definition to state claims against.
-/

/-! ## A357322.P13129087088417276558

`A255072(A383233(n))`
-/

namespace A357322.P13129087088417276558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A383233 n).toNat

end

end A357322.P13129087088417276558

/-!
# A357324: Numbers k such that there is a unique m for which the sum of the aliquot unitary divisors of m (A034460) is k.

The programs for A357324, there is no canonical definition to state claims against.
-/

/-! ## A357324.P13709860694540692271

`A034460(A357325(n+1))`
-/

namespace A357324.P13709860694540692271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A357325 (n + 1)).toNat

end

end A357324.P13709860694540692271

/-! ## A357324.P1657336908790448737

`A063919(and(-1, A357325(n+1)))`
-/

namespace A357324.P1657336908790448737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (Int.land (-1) (A357325 (n + 1))).toNat

end

end A357324.P1657336908790448737

/-! ## A357324.P11469388966627564855

`A063919(A357325(2*n+1-n))`
-/

namespace A357324.P11469388966627564855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A357325 (2 * n + 1 - n)).toNat

end

end A357324.P11469388966627564855

/-! ## A357324.P7027651704661980872

`record[A063919(A357325(floor(n/(n%2+2))+1))]`
-/

namespace A357324.P7027651704661980872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A357325 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357324.P7027651704661980872

/-! ## A357324.P6622388340714227271

`A063919(lcm((-1)^∑{e}[n+1, #], A357325(n+1)))`
-/

namespace A357324.P6622388340714227271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A357325 (n + 1)))

end

end A357324.P6622388340714227271

/-!
# A357325: a(n) is the unique number m such that A034460(m) = A357324(n).

The programs for A357325, there is no canonical definition to state claims against.
-/

/-! ## A357325.P11335033529020004550

`A196083(A196069(n))+A081706(n+2)`
-/

namespace A357325.P11335033529020004550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196083 (A196069 n).toNat + A081706 (n + 2)

end

end A357325.P11335033529020004550

/-!
# A357327: a(n) is the unique nonnegative integer k <= A058084(n)/2 such that binomial(A058084(n),k) = n.

The programs for A357327, there is no canonical definition to state claims against.
-/

/-! ## A357327.P6304558103665920861

`A374691(n+1)-A058084(n+1)`
-/

namespace A357327.P6304558103665920861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374691 (n + 1) - A058084 (n + 1)

end

end A357327.P6304558103665920861

/-! ## A357327.P2908684696220851676

`A001221(gcd(A303555(n+1), A355391(n+1)))`
-/

namespace A357327.P2908684696220851676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A303555 (n + 1)) (A355391 (n + 1)))

end

end A357327.P2908684696220851676

/-! ## A357327.P11777634134796231330

`A384876(n+1)%A293444(n+1)`
-/

namespace A357327.P11777634134796231330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384876 (n + 1)) (A293444 (n + 1))

end

end A357327.P11777634134796231330

/-! ## A357327.P5270783385866852888

`gcd(∑{e}[n+1, #], A286469(A193799(n+2)))`
-/

namespace A357327.P5270783385866852888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A286469 (A193799 (n + 2)).toNat)

end

end A357327.P5270783385866852888

/-! ## A357327.P5085868888417112888

`gcd(comp[A346871(2*n+3)], A303838(n+1))`
-/

namespace A357327.P5085868888417112888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346871 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A303838 (n + 1))

end

end A357327.P5085868888417112888

/-!
# A357328: Number of permutations p of [n] such that p(i) divides p(j) if i divides j for 1 <= i <= j <= n.

The programs for A357328, there is no canonical definition to state claims against.
-/

/-! ## A357328.P13829112867138996335

`∏{e}[A325508(n), #!]`
-/

namespace A357328.P13829112867138996335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A357328.P13829112867138996335

/-! ## A357328.P4096623671532804521

`∏{e}[A325508(n), A000142(#)]`
-/

namespace A357328.P4096623671532804521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A357328.P4096623671532804521

/-! ## A357328.P16326189366041224418

`∏{e}[A325508(n), A072133(#)]`
-/

namespace A357328.P16326189366041224418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072133 (Nat.factorization (f1 n).natAbs p)

end

end A357328.P16326189366041224418

/-! ## A357328.P7641022089882100280

`∏{e}[A325508(n), A154657(#)]`
-/

namespace A357328.P7641022089882100280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A154657 (Nat.factorization (f1 n).natAbs p)

end

end A357328.P7641022089882100280

/-! ## A357328.P561068495879251973

`∏{e}[A325508(n), A174702(#)]`
-/

namespace A357328.P561068495879251973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A174702 (Nat.factorization (f1 n).natAbs p)

end

end A357328.P561068495879251973

/-!
# A357329: Triangular array read by rows: T(n, k) = number of occurrences of 2k as a sum |1 - p(1)| + |2 - p(2)| + ... + |n - p(n)|, where (p(1), p(2), ..., p(n)) ranges through the permutations of (1,2,...,n), for n >= 1, 0 <= k <= n-1.

The programs for A357329, there is no canonical definition to state claims against.
-/

/-! ## A357329.P2994306830268190266

`A062869(∑[A230730(n+2)!])`
-/

namespace A357329.P2994306830268190266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230730 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357329.P2994306830268190266

/-!
# A357332: 2-adic valuation of A000793(n).

The programs for A357332, there is no canonical definition to state claims against.
-/

/-! ## A357332.P4229802206490664957

`val(A000793(n+1), 2)`
-/

namespace A357332.P4229802206490664957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000793 (n + 1)).toNat 2

end

end A357332.P4229802206490664957

/-! ## A357332.P5749401726340088727

`A023416(gcd(A000079(n), A000793(n+1)))`
-/

namespace A357332.P5749401726340088727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.gcd (A000079 n) (A000793 (n + 1)))

end

end A357332.P5749401726340088727

/-! ## A357332.P8124709666896273881

`A191255(A000793(n+1))`
-/

namespace A357332.P8124709666896273881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A000793 (n + 1)).toNat

end

end A357332.P8124709666896273881

/-! ## A357332.P3226282219369140389

`A007814(A000793(n+1)+A000038(n))`
-/

namespace A357332.P3226282219369140389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000793 (n + 1) + A000038 n).toNat

end

end A357332.P3226282219369140389

/-! ## A357332.P2583841595451980275

`A007814(A000793(n+1))%A084849(n)`
-/

namespace A357332.P2583841595451980275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A000793 (n + 1)).toNat) (A084849 n)

end

end A357332.P2583841595451980275

/-!
# A357333: E.g.f. satisfies A(x) = -log(1 - x) * exp(2 * A(x)).

The programs for A357333, there is no canonical definition to state claims against.
-/

/-! ## A357333.P11945210506872472264

`A261221(A050488(∑[n]))`
-/

namespace A357333.P11945210506872472264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A050488 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A357333.P11945210506872472264

/-!
# A357334: E.g.f. satisfies A(x) = -log(1 - x) * exp(3 * A(x)).

The programs for A357334, there is no canonical definition to state claims against.
-/

/-! ## A357334.P1452977100519680930

`A083920(A099703(n))+n`
-/

namespace A357334.P1452977100519680930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A099703 n).toNat + (n : ℤ)

end

end A357334.P1452977100519680930

/-!
# A357335: E.g.f. satisfies A(x) = (exp(x) - 1) * exp(2 * A(x)).

The programs for A357335, there is no canonical definition to state claims against.
-/

/-! ## A357335.P1964200383431722311

`A028391(∑[A052750(n)])`
-/

namespace A357335.P1964200383431722311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357335.P1964200383431722311

/-!
# A357336: E.g.f. satisfies A(x) = (exp(x) - 1) * exp(3 * A(x)).

The programs for A357336, there is no canonical definition to state claims against.
-/

/-! ## A357336.P8368566739252316771

`A257705(A241997(n))+A147562(n)`
-/

namespace A357336.P8368566739252316771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (A241997 n).toNat + A147562 n

end

end A357336.P8368566739252316771

/-!
# A357337: E.g.f. satisfies A(x) = log(1 + x) * exp(2 * A(x)).

The programs for A357337, there is no canonical definition to state claims against.
-/

/-! ## A357337.P15029234739701412743

`A352129(Δ[n^3]-n)`
-/

namespace A357337.P15029234739701412743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A357337.P15029234739701412743

/-!
# A357338: E.g.f. satisfies A(x) = log(1 + x) * exp(3 * A(x)).

The programs for A357338, there is no canonical definition to state claims against.
-/

/-! ## A357338.P2617225421772120627

`A106249(A362776(n)+A000196(n))`
-/

namespace A357338.P2617225421772120627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A362776 n + A000196 n).toNat

end

end A357338.P2617225421772120627

/-!
# A357341: a(n) = Sum_{k=0..n} (-1)^(n - k) * A357340(n, k).

The programs for A357341, there is no canonical definition to state claims against.
-/

/-! ## A357341.P8358365519317679117

`A364548(A285571(n+1))`
-/

namespace A357341.P8358365519317679117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364548 (A285571 (n + 1)).toNat

end

end A357341.P8358365519317679117

/-! ## A357341.P5696418188589552829

`A306020(n)+A025443(A306020(n))`
-/

namespace A357341.P5696418188589552829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n + A025443 (A306020 n).toNat

end

end A357341.P5696418188589552829

/-!
# A357343: E.g.f. satisfies A(x) = -log(1 - x * exp(A(x))) * exp(A(x)).

The programs for A357343, there is no canonical definition to state claims against.
-/

/-! ## A357343.P15941666730423607460

`A057354(∑[A251663(n)])`
-/

namespace A357343.P15941666730423607460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357343.P15941666730423607460

/-!
# A357344: E.g.f. satisfies A(x) = -log(1 - x * exp(A(x))) * exp(2 * A(x)).

The programs for A357344, there is no canonical definition to state claims against.
-/

/-! ## A357344.P18098863678165537947

`A013928(A006905(n))+A013241(n)`
-/

namespace A357344.P18098863678165537947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A006905 n).toNat + A013241 n

end

end A357344.P18098863678165537947

/-!
# A357345: E.g.f. satisfies A(x) = -log(1 - x * exp(A(x))) * exp(3 * A(x)).

The programs for A357345, there is no canonical definition to state claims against.
-/

/-! ## A357345.P15391074225354649200

`A371737(A000142(n))+A357348(n)`
-/

namespace A357345.P15391074225354649200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371737 (A000142 n).toNat + A357348 n

end

end A357345.P15391074225354649200

/-!
# A357346: E.g.f. satisfies A(x) = (exp(x * exp(A(x))) - 1) * exp(A(x)).

The programs for A357346, there is no canonical definition to state claims against.
-/

/-! ## A357346.P12513324074217037251

`A233583(n-2+(-2)^n+4*n*a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A357346.P12513324074217037251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A233583 ((n : ℤ) - 2 + ((-2) ^ n + (4 * n : ℤ) * a (n - 1))).toNat

end

end A357346.P12513324074217037251

/-!
# A357347: E.g.f. satisfies A(x) = (exp(x * exp(A(x))) - 1) * exp(2 * A(x)).

The programs for A357347, there is no canonical definition to state claims against.
-/

/-! ## A357347.P1556193668803783265

`A242112(A047859(∑[n]))-(n+1)`
-/

namespace A357347.P1556193668803783265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A047859 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n + 1 : ℤ)

end

end A357347.P1556193668803783265

/-!
# A357348: E.g.f. satisfies A(x) = (exp(x * exp(A(x))) - 1) * exp(3 * A(x)).

The programs for A357348, there is no canonical definition to state claims against.
-/

/-! ## A357348.P9856804914090766057

`A161674(A220181(n)+A000045(n))`
-/

namespace A357348.P9856804914090766057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (A220181 n + A000045 n).toNat

end

end A357348.P9856804914090766057

/-!
# A357349: E.g.f. satisfies A(x) = log(1 + x * exp(A(x))) * exp(A(x)).

The programs for A357349, there is no canonical definition to state claims against.
-/

/-! ## A357349.P8396074016298126997

`A345912(a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A357349.P8396074016298126997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A345912 (a (n - 1)).toNat

end

end A357349.P8396074016298126997

/-!
# A357350: E.g.f. satisfies A(x) = log(1 + x * exp(A(x))) * exp(2 * A(x)).

The programs for A357350, there is no canonical definition to state claims against.
-/

/-! ## A357350.P5008033632504217037

`A004526(A360547(n)+n)`
-/

namespace A357350.P5008033632504217037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A360547 n + (n : ℤ)).toNat

end

end A357350.P5008033632504217037

/-!
# A357351: E.g.f. satisfies A(x) = log(1 + x * exp(A(x))) * exp(3 * A(x)).

The programs for A357351, there is no canonical definition to state claims against.
-/

/-! ## A357351.P224938692490326383

`lcm(A264985(A015589(n)), A295213(n+1))`
-/

namespace A357351.P224938692490326383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A264985 (A015589 n).toNat) (A295213 (n + 1))

end

end A357351.P224938692490326383

/-!
# A357352: Number of partitions of n into distinct positive triangular numbers such that the number of parts is a triangular number.

The programs for A357352, there is no canonical definition to state claims against.
-/

/-! ## A357352.P16866755008558894013

`A307598(n)+A073424(A122881(n+1))`
-/

namespace A357352.P16866755008558894013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A073424 (A122881 (n + 1)).toNat

end

end A357352.P16866755008558894013

/-! ## A357352.P7629036992890538069

`A307598(n)+A209229(A013620(n))`
-/

namespace A357352.P7629036992890538069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A209229 (A013620 n).toNat

end

end A357352.P7629036992890538069

/-! ## A357352.P1121814282063826879

`A307598(n)+A209229(A182944(n+1))`
-/

namespace A357352.P1121814282063826879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A209229 (A182944 (n + 1)).toNat

end

end A357352.P1121814282063826879

/-! ## A357352.P8027652105691568330

`A339376(n)+A000035(A317087(n+1))`
-/

namespace A357352.P8027652105691568330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 n + A000035 (A317087 (n + 1)).toNat

end

end A357352.P8027652105691568330

/-! ## A357352.P7180001652424022917

`A339376(n)+A254379(A178762(n+1))`
-/

namespace A357352.P7180001652424022917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 n + A254379 (A178762 (n + 1)).toNat

end

end A357352.P7180001652424022917

/-!
# A357354: Number of partitions of n into distinct positive squares such that the number of parts is a square.

The programs for A357354, there is no canonical definition to state claims against.
-/

/-! ## A357354.P11952166702534557520

`A025443(n)^A077116(n)`
-/

namespace A357354.P11952166702534557520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025443 n : ℚ) ^ (A077116 n : ℤ)

end

end A357354.P11952166702534557520

/-! ## A357354.P5196636051148647184

`(A342495(n)+A025443(n))%2`
-/

namespace A357354.P5196636051148647184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342495 n + A025443 n) 2

end

end A357354.P5196636051148647184

/-! ## A357354.P4185452839232030579

`A025443(n)^A007814(A342495(n))`
-/

namespace A357354.P4185452839232030579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025443 n : ℚ) ^ (A007814 (A342495 n).toNat : ℤ)

end

end A357354.P4185452839232030579

/-! ## A357354.P12919501003136563641

`A061479(A331844(n))%2`
-/

namespace A357354.P12919501003136563641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061479 (A331844 n).toNat) 2

end

end A357354.P12919501003136563641

/-! ## A357354.P4367501452953496421

`A379678(2*n+1)+char[1]`
-/

namespace A357354.P4367501452953496421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A357354.P4367501452953496421

/-!
# A357355: Number of nonempty subsets of {1..n} whose elements have an odd average.

The programs for A357355, there is no canonical definition to state claims against.
-/

/-! ## A357355.P4509229262459837886

`A051293(n+1)-A357356(n+1)`
-/

namespace A357355.P4509229262459837886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051293 (n + 1) - A357356 (n + 1)

end

end A357355.P4509229262459837886

/-! ## A357355.P3711488886925549112

`∑[A082550(n+1)]-A357356(n+1)`
-/

namespace A357355.P3711488886925549112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357356 (n + 1)

end

end A357355.P3711488886925549112

/-! ## A357355.P9821964160369563221

`A327475(n+1)-1-A357356(n+1)`
-/

namespace A357355.P9821964160369563221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 (n + 1) - 1 - A357356 (n + 1)

end

end A357355.P9821964160369563221

/-! ## A357355.P265504320377780452

`∑[∑[A147980(n+1)]]-A357356(n+1)`
-/

namespace A357355.P265504320377780452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357356 (n + 1)

end

end A357355.P265504320377780452

/-! ## A357355.P3714720940054436921

`∑[A063776(n+1)-1]-A357356(n+1)`
-/

namespace A357355.P3714720940054436921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357356 (n + 1)

end

end A357355.P3714720940054436921

/-!
# A357356: Number of nonempty subsets of {1..n} whose elements have an even average.

The programs for A357356, there is no canonical definition to state claims against.
-/

/-! ## A357356.P16221239671461001677

`A051293(n+1)-A357355(n+1)`
-/

namespace A357356.P16221239671461001677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051293 (n + 1) - A357355 (n + 1)

end

end A357356.P16221239671461001677

/-! ## A357356.P16463319180932584153

`∑[A082550(n+1)]-A357355(n+1)`
-/

namespace A357356.P16463319180932584153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357355 (n + 1)

end

end A357356.P16463319180932584153

/-! ## A357356.P14988489410155482550

`A327475(n+1)-1-A357355(n+1)`
-/

namespace A357356.P14988489410155482550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 (n + 1) - 1 - A357355 (n + 1)

end

end A357356.P14988489410155482550

/-! ## A357356.P13299800872538671943

`∑[∑[A147980(n+1)]]-A357355(n+1)`
-/

namespace A357356.P13299800872538671943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357355 (n + 1)

end

end A357356.P13299800872538671943

/-! ## A357356.P3728496834747692985

`∑[A063776(n+1)-1]-A357355(n+1)`
-/

namespace A357356.P3728496834747692985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357355 (n + 1)

end

end A357356.P3728496834747692985

/-!
# A357357: Length of the longest induced cycle in the n X n grid graph.

The programs for A357357, there is no canonical definition to state claims against.
-/

/-! ## A357357.P10848041014981075234

`record[and(A003416(n+1), A010848(n+1))]`
-/

namespace A357357.P10848041014981075234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003416 (n + 1)) (A010848 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357357.P10848041014981075234

/-!
# A357364: Primes p such that either p^(q-1) == 1 (mod q^2) or q^(p-1) == 1 (mod p^2), where q = A151800(A151800(A151800(p))).

The programs for A357364, there is no canonical definition to state claims against.
-/

/-! ## A357364.P2669847808646170239

`A244029(A038944(n+1))`
-/

namespace A357364.P2669847808646170239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244029 (A038944 (n + 1)).toNat

end

end A357364.P2669847808646170239

/-!
# A357367: Triangle read by rows. T(n, k) = binomial(n - 1, k - 1)*(n + k)! / k!.

The programs for A357367, the canonical program `A357367.P4873515078796916862` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357367 has offset 0).

The definition of A357367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357367.P9735121742734625214

`∑[char[∑[n]]]!*A086810(n)`
-/

namespace A357367.P9735121742734625214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A086810 n

end

end A357367.P9735121742734625214

namespace A357367

/-- `∑[char[∑[n]]]!*A086810(n)` -/
def P9735121742734625214.Spec : Prop :=
  ∀ n, P9735121742734625214.a n = A357367 n

end A357367

/-! ## A357367.P4873515078796916862

`A086810(n)*A130493(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A357367

/-- `A086810(n)*A130493(n+1)` -/
def P4873515078796916862.Spec : Prop :=
  ∀ n, P4873515078796916862.a n = A357367 n

theorem P4873515078796916862.correct : P4873515078796916862.Spec := by
  intro n
  simp only [A357367]

end A357367

/-! ## A357367.P3790085259138608296

`A000142(A000194(2*n+2))*A086810(n)`
-/

namespace A357367.P3790085259138608296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000194 (2 * n + 2)).toNat * A086810 n

end

end A357367.P3790085259138608296

namespace A357367

/-- `A000142(A000194(2*n+2))*A086810(n)` -/
def P3790085259138608296.Spec : Prop :=
  ∀ n, P3790085259138608296.a n = A357367 n

end A357367

/-! ## A357367.P12177873256376438736

`A008279(A245300(n))*A271703(n)`
-/

namespace A357367.P12177873256376438736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A245300 n).toNat * A271703 n

end

end A357367.P12177873256376438736

namespace A357367

/-- `A008279(A245300(n))*A271703(n)` -/
def P12177873256376438736.Spec : Prop :=
  ∀ n, P12177873256376438736.a n = A357367 n

end A357367

/-! ## A357367.P13273551374038366529

`A094587(A245300(n))*A097805(n)`
-/

namespace A357367.P13273551374038366529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A245300 n).toNat * A097805 n

end

end A357367.P13273551374038366529

namespace A357367

/-- `A094587(A245300(n))*A097805(n)` -/
def P13273551374038366529.Spec : Prop :=
  ∀ n, P13273551374038366529.a n = A357367 n

end A357367

/-! ## A357367.P18226113226431399194

`A367267(n)*A377660(n)`
-/

namespace A357367.P18226113226431399194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367267 n * A377660 n

end

end A357367.P18226113226431399194

namespace A357367

/-- `A367267(n)*A377660(n)` -/
def P18226113226431399194.Spec : Prop :=
  ∀ n, P18226113226431399194.a n = A357367 n

end A357367

/-!
# A357368: Triangle read by rows. Convolution triangle of the prime indicator sequence A089026.

The programs for A357368, there is no canonical definition to state claims against.
-/

/-! ## A357368.P4377541266048161403

`A128908(n)^A005131(A091967(n+1))`
-/

namespace A357368.P4377541266048161403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128908 n : ℚ) ^ (A005131 (A091967 (n + 1)).toNat : ℤ)

end

end A357368.P4377541266048161403

/-! ## A357368.P13082980853126570310

`A128908(n)%A128925(A132885(2*(n+1)))`
-/

namespace A357368.P13082980853126570310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128908 n) (A128925 (A132885 (2 * (n + 1))).toNat)

end

end A357368.P13082980853126570310

/-! ## A357368.P5231957758782215442

`A128908(n)%A144280(3*n+2)`
-/

namespace A357368.P5231957758782215442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128908 n) (A144280 (3 * n + 2))

end

end A357368.P5231957758782215442

/-! ## A357368.P18069965085243948034

`A220399(n-A010893(A142589(n)))`
-/

namespace A357368.P18069965085243948034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 ((n : ℤ) - A010893 ((A142589 n).toNat + 13)).toNat

end

end A357368.P18069965085243948034

/-! ## A357368.P7157978183143413484

`A220399(n)%A220402(A344725(n+5))`
-/

namespace A357368.P7157978183143413484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220399 n) (A220402 (A344725 (n + 5)).toNat)

end

end A357368.P7157978183143413484

/-!
# A357370: Positions of 0's in A355917.

The programs for A357370, there is no canonical definition to state claims against.
-/

/-! ## A357370.P12618260282917579023

`∑[A357371(n+1)]`
-/

namespace A357370.P12618260282917579023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357370.P12618260282917579023

/-! ## A357370.P13157348130453057970

`∑[A355918(n+1)+1]`
-/

namespace A357370.P13157348130453057970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355918 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357370.P13157348130453057970

/-! ## A357370.P16814409915865316976

`eq[0, A355917(n+1)]+1`
-/

namespace A357370.P16814409915865316976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357370.P16814409915865316976

/-! ## A357370.P8884791344608779618

`A357371(n+1)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A357370.P8884791344608779618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A357371 (n + 1) - A001489 (a (n - 1)).toNat

end

end A357370.P8884791344608779618

/-! ## A357370.P9159979434627412243

`lt[A355917(n+1), A080111(A355917(n+1)+1)]+1`
-/

namespace A357370.P9159979434627412243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080111 (A355917 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357370.P9159979434627412243

/-! ## A357370.P7765716304482984494

`eq[1, A355916(2*(n+2))]`
-/

namespace A357370.P7765716304482984494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357370.P7765716304482984494

/-!
# A357371: a(1) = 1, thereafter, first differences of A357370.

The programs for A357371, there is no canonical definition to state claims against.
-/

/-! ## A357371.P10424664412810964440

`A355918(n+1)+1`
-/

namespace A357371.P10424664412810964440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355918 (n + 1) + 1

end

end A357371.P10424664412810964440

/-! ## A357371.P10755520347763475061

`A355916(2*A357370(n+1))+1`
-/

namespace A357371.P10755520347763475061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (2 * A357370 (n + 1)).toNat + 1

end

end A357371.P10755520347763475061

/-! ## A357371.P696421208742618574

`Δ[lt[A355916(2*(n+1)), 1]]`
-/

namespace A357371.P696421208742618574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A357371.P696421208742618574

/-! ## A357371.P14409831831706466302

`eq[A014757(n), A353428(n)]+1`
-/

namespace A357371.P14409831831706466302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357371.P14409831831706466302

/-! ## A357371.P9028170049187110559

`eq[A014757(n), A353501(n)]+1`
-/

namespace A357371.P9028170049187110559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357371.P9028170049187110559

/-!
# A357372: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the numerator of 1/n + 1/k.

The programs for A357372, the canonical program `A357372.P4923733421453701218` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357372 has offset 1).

The definition of A357372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357372.P4923733421453701218

`A003057(n+2)/gcd(A128227(n)², A003057(n+2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A357372

/-- `A003057(n+2)/gcd(A128227(n)², A003057(n+2))` -/
def P4923733421453701218.Spec : Prop :=
  ∀ n, P4923733421453701218.a n = (A357372 (n + 1) : ℚ)

end A357372

/-! ## A357372.P11471394514167104935

`A106448(n+1)/gcd(A003989(n+1), A106448(n+1))`
-/

namespace A357372.P11471394514167104935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106448 (n + 1) : ℚ) / (Int.gcd (A003989 (n + 1)) (A106448 (n + 1)) : ℚ)

end

end A357372.P11471394514167104935

namespace A357372

/-- `A106448(n+1)/gcd(A003989(n+1), A106448(n+1))` -/
def P11471394514167104935.Spec : Prop :=
  ∀ n, P11471394514167104935.a n = (A357372 (n + 1) : ℚ)

end A357372

/-! ## A357372.P9038993156498888558

`A014410(n+2)/gcd(A003506(n+1), A014410(n+2))`
-/

namespace A357372.P9038993156498888558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) / (Int.gcd (A003506 (n + 1)) (A014410 (n + 2)) : ℚ)

end

end A357372.P9038993156498888558

namespace A357372

/-- `A014410(n+2)/gcd(A003506(n+1), A014410(n+2))` -/
def P9038993156498888558.Spec : Prop :=
  ∀ n, P9038993156498888558.a n = (A357372 (n + 1) : ℚ)

end A357372

/-! ## A357372.P2095084463858779832

`lcm(A003057(n+2), A055461(n+1))/A055461(n+1)`
-/

namespace A357372.P2095084463858779832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003057 (n + 2)) (A055461 (n + 1)) : ℚ) / (A055461 (n + 1) : ℚ)

end

end A357372.P2095084463858779832

namespace A357372

/-- `lcm(A003057(n+2), A055461(n+1))/A055461(n+1)` -/
def P2095084463858779832.Spec : Prop :=
  ∀ n, P2095084463858779832.a n = (A357372 (n + 1) : ℚ)

end A357372

/-! ## A357372.P14953142574112524071

`(A014132(n+1)-n)/A245717(A014132(n+1))`
-/

namespace A357372.P14953142574112524071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n : ℤ) : ℚ) / (A245717 (A014132 (n + 1)).toNat : ℚ)

end

end A357372.P14953142574112524071

namespace A357372

/-- `(A014132(n+1)-n)/A245717(A014132(n+1))` -/
def P14953142574112524071.Spec : Prop :=
  ∀ n, P14953142574112524071.a n = (A357372 (n + 1) : ℚ)

end A357372

/-! ## A357372.P6889470951979814438

`A318573(A098350(n+1))`
-/

namespace A357372.P6889470951979814438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A098350 (n + 1)).toNat

end

end A357372.P6889470951979814438

namespace A357372

/-- `A318573(A098350(n+1))` -/
def P6889470951979814438.Spec : Prop :=
  ∀ n, P6889470951979814438.a n = A357372 (n + 1)

end A357372

/-!
# A357374: Number of ordered factorizations of n into numbers > 1 with an even number of prime divisors (prime factors counted with multiplicity).

The programs for A357374, there is no canonical definition to state claims against.
-/

/-! ## A357374.P11961825479490147503

`A373832(lcm(A001222(2*(n+1)), A103585(3*n+2)))`
-/

namespace A357374.P11961825479490147503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373832 (Int.lcm (A001222 (2 * (n + 1))) (A103585 (3 * n + 2)))

end

end A357374.P11961825479490147503

/-! ## A357374.P725830686350134707

`A381886(A112623(n+1))`
-/

namespace A357374.P725830686350134707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381886 (A112623 (n + 1)).toNat

end

end A357374.P725830686350134707

/-! ## A357374.P13248411223411057076

`A037290(n+1)%A062964(A037290(n+1))`
-/

namespace A357374.P13248411223411057076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037290 (n + 1)) (A062964 (A037290 (n + 1)).toNat)

end

end A357374.P13248411223411057076

/-! ## A357374.P1429909697419081110

`A339535(n+1)%A267633(A001222(3*(n+1)))`
-/

namespace A357374.P1429909697419081110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339535 (n + 1)) (A267633 (A001222 (3 * (n + 1))).toNat)

end

end A357374.P1429909697419081110

/-! ## A357374.P14626585591032967973

`A353337(n+1)+A025469(A341606(3*n+4))`
-/

namespace A357374.P14626585591032967973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353337 (n + 1) + A025469 (A341606 (3 * n + 4)).toNat

end

end A357374.P14626585591032967973

/-!
# A357375: Number of ordered factorizations of n into numbers > 1 with an even number of distinct prime divisors.

The programs for A357375, there is no canonical definition to state claims against.
-/

/-! ## A357375.P9291343087551518796

`A374247(n+1)+A339661(n+1)`
-/

namespace A357375.P9291343087551518796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A339661 (n + 1)

end

end A357375.P9291343087551518796

/-! ## A357375.P7463705357724260014

`A339661(n+1)+A394657(A304779(n+1))^A007318(n)`
-/

namespace A357375.P7463705357724260014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339661 (n + 1) : ℚ) + (A394657 (A304779 (n + 1)).toNat : ℚ) ^ (A007318 n : ℤ)

end

end A357375.P7463705357724260014

/-! ## A357375.P3683930897544962621

`A321090(A050320(n+1))+A000007(A297420(n))`
-/

namespace A357375.P3683930897544962621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A050320 (n + 1)).toNat + A000007 (A297420 n).toNat

end

end A357375.P3683930897544962621

/-! ## A357375.P17729789813262866603

`A321090(A050320(n+1))+A000007(A000695(2*n))`
-/

namespace A357375.P17729789813262866603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A050320 (n + 1)).toNat + A000007 (A000695 (2 * n)).toNat

end

end A357375.P17729789813262866603

/-! ## A357375.P8541448732140395836

`A322452(A325938(n+1)+10)`
-/

namespace A357375.P8541448732140395836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A325938 (n + 1) + 10).toNat

end

end A357375.P8541448732140395836

/-! ## A357375.P14061771409130488522

`A024316(A293900(n+1)+13)`
-/

namespace A357375.P14061771409130488522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A293900 (n + 1) + 13).toNat

end

end A357375.P14061771409130488522

/-! ## A357375.P2113486503192931722

`A347186(A046523(n+1))%4`
-/

namespace A357375.P2113486503192931722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347186 (A046523 (n + 1)).toNat) 4

end

end A357375.P2113486503192931722

/-! ## A357375.P17756058838476894830

`and(A318953(n+1), A320655((n+1)²/∏{p}[n+1, #]))`
-/

namespace A357375.P17756058838476894830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318953 (n + 1)) (A320655 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A357375.P17756058838476894830

/-!
# A357379: a(n) = A357378(floor(n/2)) * A357378(n).

The programs for A357379, there is no canonical definition to state claims against.
-/

/-! ## A357379.P13439788454931292143

`A357378(floor(n/2))*A357378(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357379.P13439788454931292143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357378 ⌊(n : ℚ) / 2⌋.toNat * A357378 n

end

end A357379.P13439788454931292143

/-!
# A357380: Expansion of Product_{k>=1} (1 - x^Fibonacci(k)).

The programs for A357380, there is no canonical definition to state claims against.
-/

/-! ## A357380.P10705018682583879024

`Δ[A060582(A349322(2^xor(1, n)))]`
-/

namespace A357380.P10705018682583879024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 (A349322 (2 ^ Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357380.P10705018682583879024

/-!
# A357381: Expansion of Product_{k>=1} 1 / (1 + x^Fibonacci(k)).

The programs for A357381, there is no canonical definition to state claims against.
-/

/-! ## A357381.P9111234170008962590

`A298949(n)-a(n-1)` with `a(0)=1`
-/

namespace A357381.P9111234170008962590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298949 n - a (n - 1)

end

end A357381.P9111234170008962590

/-! ## A357381.P13683722628408006365

`2*A339371(n)-∑[A238999(n)]-a(n-1)` with `a(0)=1`
-/

namespace A357381.P13683722628408006365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A339371 n - ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A357381.P13683722628408006365

/-! ## A357381.P12616420262176111362

`A005843(A339371(n))-A003107(n)-a(n-1)` with `a(0)=1`
-/

namespace A357381.P12616420262176111362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A339371 n).toNat - A003107 n - a (n - 1)

end

end A357381.P12616420262176111362

/-!
# A357382: Expansion of Product_{k>=1} (1 - x^Lucas(k)).

The programs for A357382, there is no canonical definition to state claims against.
-/

/-! ## A357382.P514364455892315005

`A008683(A067086(Δ[n²]²))`
-/

namespace A357382.P514364455892315005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067086 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat).toNat

end

end A357382.P514364455892315005

/-! ## A357382.P4167858258098062524

`A010891(A000045(n)*A303233(n+1))`
-/

namespace A357382.P4167858258098062524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A000045 n * A303233 (n + 1)).toNat

end

end A357382.P4167858258098062524

/-! ## A357382.P3870971379341876298

`A008683(A123498(n)+A037444(n))`
-/

namespace A357382.P3870971379341876298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123498 n + A037444 n).toNat

end

end A357382.P3870971379341876298

/-! ## A357382.P6279617285583251344

`A008683(A123502(n)+A037444(n))`
-/

namespace A357382.P6279617285583251344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123502 n + A037444 n).toNat

end

end A357382.P6279617285583251344

/-! ## A357382.P3488999983116740562

`A014019(lcm(A004180(2*n), A080134(n+1)))`
-/

namespace A357382.P3488999983116740562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (Int.lcm (A004180 (2 * n)) (A080134 (n + 1)))

end

end A357382.P3488999983116740562

/-!
# A357383: Expansion of Product_{k>=1} 1 / (1 + x^Lucas(k)).

The programs for A357383, there is no canonical definition to state claims against.
-/

/-! ## A357383.P4697866774742780590

`A104408(n)-A010051(A139700(n+1))`
-/

namespace A357383.P4697866774742780590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104408 n - A010051 (A139700 (n + 1)).toNat

end

end A357383.P4697866774742780590

/-!
# A357384: Expansion of 1 / (1 + Sum_{k>=1}(-x)^Lucas(k)).

The programs for A357384, there is no canonical definition to state claims against.
-/

/-! ## A357384.P13210728194585684300

`A121900(A329665(n))`
-/

namespace A357384.P13210728194585684300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A329665 n).toNat

end

end A357384.P13210728194585684300

/-! ## A357384.P18373106769987725907

`A204560(A036610(n+1))`
-/

namespace A357384.P18373106769987725907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A036610 (n + 1)).toNat

end

end A357384.P18373106769987725907

/-! ## A357384.P3210298533035551684

`A105224(A255071(n+2))`
-/

namespace A357384.P3210298533035551684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A255071 (n + 2)).toNat

end

end A357384.P3210298533035551684

/-! ## A357384.P10479224593291392180

`A204560(2*A036610(n))`
-/

namespace A357384.P10479224593291392180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (2 * A036610 n).toNat

end

end A357384.P10479224593291392180

/-! ## A357384.P4878630829959617731

`A319988(A181565(n))+A003269(n)`
-/

namespace A357384.P4878630829959617731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (A181565 n).toNat + A003269 n

end

end A357384.P4878630829959617731

/-!
# A357385: a(n) = A071626(n+1) - A071626(n).

The programs for A357385, there is no canonical definition to state claims against.
-/

/-! ## A357385.P12108948715399860402

`A071626(n+2)-A071626(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357385.P12108948715399860402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 2) - A071626 (n + 1)

end

end A357385.P12108948715399860402

/-! ## A357385.P13841053062709360433

`Δ[A071626(n+1)]`
-/

namespace A357385.P13841053062709360433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357385.P13841053062709360433

/-! ## A357385.P6930028173791803721

`Δ[A000195(A002024(n+1)*A099627(n))]`
-/

namespace A357385.P6930028173791803721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A002024 (n + 1) * A099627 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357385.P6930028173791803721

/-! ## A357385.P10215774727357818681

`Δ[A000195(A317296(n+1)+A020492(n+1))]`
-/

namespace A357385.P10215774727357818681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A317296 (n + 1) + A020492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357385.P10215774727357818681

/-! ## A357385.P2728424235485038766

`val(A119715(n+1), A228629(A224076(n+1)))`
-/

namespace A357385.P2728424235485038766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A119715 (n + 1)).toNat (A228629 (A224076 (n + 1)).toNat).toNat

end

end A357385.P2728424235485038766

/-!
# A357388: Numbers k such that A071626(k) < A071626(k+1).

The programs for A357388, there is no canonical definition to state claims against.
-/

/-! ## A357388.P964327212727882836

`eq[1, A357385(n+1)]+1`
-/

namespace A357388.P964327212727882836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357388.P964327212727882836

/-! ## A357388.P536914221477431937

`eq[1, A357385(A000038(n)+n)]`
-/

namespace A357388.P536914221477431937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357388.P536914221477431937

/-! ## A357388.P18190027948763906592

`record[A000027(n+1)*A357385(n+1)]`
-/

namespace A357388.P18190027948763906592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A357385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357388.P18190027948763906592

/-! ## A357388.P4896851949895049590

`lt[A071626(A028310(n)), A071626(n+1)]`
-/

namespace A357388.P4896851949895049590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357388.P4896851949895049590

/-! ## A357388.P10620564615301154203

`record[A004526(2*n+1)^A357385(A000038(n)+n)]`
-/

namespace A357388.P10620564615301154203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * n + 1) : ℚ) ^ (A357385 (A000038 n + (n : ℤ)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357388.P10620564615301154203

/-!
# A357390: Numbers k such that A071626(k) > A071626(k+1).

The programs for A357390, there is no canonical definition to state claims against.
-/

/-! ## A357390.P7839878737946134893

`eq[-1, A357385(n+1)]+1`
-/

namespace A357390.P7839878737946134893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357390.P7839878737946134893

/-! ## A357390.P1221694222885572563

`lt[A357385(A028310(n)), 0]`
-/

namespace A357390.P1221694222885572563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357390.P1221694222885572563

/-! ## A357390.P13070132986472049383

`lt[A357385(A000038(n)+n)+1, 1]`
-/

namespace A357390.P13070132986472049383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A000038 n + (n : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357390.P13070132986472049383

/-! ## A357390.P13908316344184421285

`lt[A071626(n+2), A071626(n+1)]+1`
-/

namespace A357390.P13908316344184421285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357390.P13908316344184421285

/-! ## A357390.P16012910700667847186

`lt[A071626(n+1), A071626(A028310(n))]`
-/

namespace A357390.P16012910700667847186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357390.P16012910700667847186

/-!
# A357392: E.g.f. satisfies A(x) = -log(1 - x * exp(2 * A(x))).

The programs for A357392, there is no canonical definition to state claims against.
-/

/-! ## A357392.P9283023039789408722

`A242653(A080856(n))`
-/

namespace A357392.P9283023039789408722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242653 (A080856 n).toNat

end

end A357392.P9283023039789408722

/-! ## A357392.P9215580955985004098

`A306015(A022267(n))`
-/

namespace A357392.P9215580955985004098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (A022267 n).toNat

end

end A357392.P9215580955985004098

/-! ## A357392.P2994726609910400458

`A104150(3*n)/record[A133942(n)]`
-/

namespace A357392.P2994726609910400458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (3 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A357392.P2994726609910400458

/-! ## A357392.P11840381559190557658

`A104150(3*n)/A104150(2*n+1)`
-/

namespace A357392.P11840381559190557658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (3 * n) : ℚ) / (A104150 (2 * n + 1) : ℚ)

end

end A357392.P11840381559190557658

/-!
# A357393: E.g.f. satisfies A(x) = -log(1 - x * exp(3 * A(x))).

The programs for A357393, there is no canonical definition to state claims against.
-/

/-! ## A357393.P5557237841801584089

`A306015(A139275(n))`
-/

namespace A357393.P5557237841801584089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (A139275 n).toNat

end

end A357393.P5557237841801584089

/-! ## A357393.P11726755302291516222

`A104150(4*n)/A104150(3*n+1)`
-/

namespace A357393.P11726755302291516222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (4 * n) : ℚ) / (A104150 (3 * n + 1) : ℚ)

end

end A357393.P11726755302291516222

/-! ## A357393.P2781968656699478215

`A094587(A139275(n))-A000007(n)`
-/

namespace A357393.P2781968656699478215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A139275 n).toNat - A000007 n

end

end A357393.P2781968656699478215

/-! ## A357393.P4068077481120684261

`A094587(A139275(n))-A063524(3*n+1)`
-/

namespace A357393.P4068077481120684261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A139275 n).toNat - A063524 (3 * n + 1)

end

end A357393.P4068077481120684261

/-!
# A357394: E.g.f. satisfies A(x) = exp(x * exp(2 * A(x))) - 1.

The programs for A357394, there is no canonical definition to state claims against.
-/

/-! ## A357394.P1724427524158917299

`A042965(A278989(2*n)+1)`
-/

namespace A357394.P1724427524158917299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A278989 (2 * n) + 1).toNat

end

end A357394.P1724427524158917299

/-!
# A357395: E.g.f. satisfies A(x) = exp(x * exp(3 * A(x))) - 1.

The programs for A357395, there is no canonical definition to state claims against.
-/

/-! ## A357395.P16257635026181334608

`A368787(n)+A035930(A368853(n))`
-/

namespace A357395.P16257635026181334608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368787 n + A035930 (A368853 n).toNat

end

end A357395.P16257635026181334608

/-!
# A357397: a(n) = coefficient of x^n, n >= 0, in A(x) such that: 0 = Sum_{n>=1} ((1+x)^n - A(x))^n / (1+x)^(n^2).

The programs for A357397, there is no canonical definition to state claims against.
-/

/-! ## A357397.P12657667457913479358

`A120243(lcm(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A357397.P12657667457913479358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A120243 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A357397.P12657667457913479358

/-! ## A357397.P17649528873661143373

`A141691(A026938(n))`
-/

namespace A357397.P17649528873661143373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141691 (A026938 n).toNat

end

end A357397.P17649528873661143373

/-!
# A357398: a(n) = coefficient of x^n/n!, n >= 0, in A(x) such that: 0 = Sum_{n>=1} exp(-n^2*x) * (exp(n*x) - A(x))^n.

The programs for A357398, there is no canonical definition to state claims against.
-/

/-! ## A357398.P2572815410871417439

`A008289(A092469(n))`
-/

namespace A357398.P2572815410871417439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (A092469 n).toNat

end

end A357398.P2572815410871417439

/-!
# A357399: Coefficients of x^n, n >= 0, in A(x) such that: x = Sum_{n=-oo..+oo} (-x)^n * (1 - (-x)^n)^n * A(x)^n.

The programs for A357399, there is no canonical definition to state claims against.
-/

/-! ## A357399.P10713618985867612935

`ceil(A245094(A062178(2*(n+1)))/21)`
-/

namespace A357399.P10713618985867612935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245094 (A062178 (2 * (n + 1))).toNat : ℚ) / 21⌉

end

end A357399.P10713618985867612935

/-! ## A357399.P16948697563202361805

`ceil(ceil(A005117(A365693(n+4))/8)/8)`
-/

namespace A357399.P16948697563202361805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A005117 (A365693 (n + 4)).toNat : ℚ) / 8⌉ : ℚ) / 8⌉

end

end A357399.P16948697563202361805

/-! ## A357399.P2992655502118724825

`A195174(A246472(n)+A105284(n))`
-/

namespace A357399.P2992655502118724825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A246472 n + A105284 n).toNat

end

end A357399.P2992655502118724825

