import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A359900: Number of strict odd-length integer partitions of n whose parts do not have the same mean as median.

The programs for A359900, there is no canonical definition to state claims against.
-/

/-! ## A359900.P1623649911384081343

`A067659(n)-A359899(n)`
-/

namespace A359900.P1623649911384081343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A359899 n

end

end A359900.P1623649911384081343

/-!
# A359901: Triangle read by rows where T(n,k) is the number of integer partitions of n with median k = 1..n.

The programs for A359901, there is no canonical definition to state claims against.
-/

/-! ## A359901.P17817613946350335925

`A359893(∑[2-char[∑[n]]])`
-/

namespace A359901.P17817613946350335925
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359901.P17817613946350335925

/-! ## A359901.P16773320007047414610

`and(-1, A359893(A001614(n+1)))`
-/

namespace A359901.P16773320007047414610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A359893 (A001614 (n + 1)).toNat)

end

end A359901.P16773320007047414610

/-! ## A359901.P13730167496813987611

`A359893(A001614(n+1))+A063524(n+3)`
-/

namespace A359901.P13730167496813987611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A001614 (n + 1)).toNat + A063524 (n + 3)

end

end A359901.P13730167496813987611

/-! ## A359901.P11782393735073890798

`A359893(A001614(n+1))+A133513(3*n)`
-/

namespace A359901.P11782393735073890798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A001614 (n + 1)).toNat + A133513 (3 * n)

end

end A359901.P11782393735073890798

/-! ## A359901.P15905678761417215489

`A359893(A001614(n+1))%A000040(n+1)`
-/

namespace A359901.P15905678761417215489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359893 (A001614 (n + 1)).toNat) (A000040 (n + 1))

end

end A359901.P15905678761417215489

/-!
# A359902: Triangle read by rows where T(n,k) is the number of odd-length integer partitions of n with median k.

The programs for A359902, there is no canonical definition to state claims against.
-/

/-! ## A359902.P11003840447315497902

`A350879(n+1)+A179527(A140734(2*n+1))`
-/

namespace A359902.P11003840447315497902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350879 (n + 1) + A179527 (A140734 (2 * n + 1)).toNat

end

end A359902.P11003840447315497902

/-! ## A359902.P2392201725356474438

`C(A116598(n)%A223066(3*n+4), A135723(n+1))`
-/

namespace A359902.P2392201725356474438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A116598 n) (A223066 (3 * n + 4))).toNat (A135723 (n + 1)).toNat

end

end A359902.P2392201725356474438

/-! ## A359902.P14261009040869156537

`A275806(C(A327127(n), A118340(n)))`
-/

namespace A359902.P14261009040869156537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (Nat.choose (A327127 n).toNat (A118340 n).toNat)

end

end A359902.P14261009040869156537

/-! ## A359902.P9870164268553634502

`A106486(A059882(n+1)^A248213(n+1))`
-/

namespace A359902.P9870164268553634502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (SequenceMachineLib.roundAway ((A059882 (n + 1) : ℚ) ^ (A248213 (n + 1) : ℤ))).toNat

end

end A359902.P9870164268553634502

/-! ## A359902.P14444908390641686887

`A055090(A059882(n+1)^A233793(n+3))`
-/

namespace A359902.P14444908390641686887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (SequenceMachineLib.roundAway ((A059882 (n + 1) : ℚ) ^ (A233793 (n + 3) : ℤ))).toNat

end

end A359902.P14444908390641686887

/-!
# A359904: Numbers whose prime factors and prime signature have the same mean.

The programs for A359904, there is no canonical definition to state claims against.
-/

/-! ## A359904.P15191544059190363600

`A028310(A351600(n+1)^((n+1)/2))`
-/

namespace A359904.P15191544059190363600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A351600 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))).toNat

end

end A359904.P15191544059190363600

/-!
# A359905: Numbers whose prime indices and prime signature both have integer mean.

The programs for A359905, there is no canonical definition to state claims against.
-/

/-! ## A359905.P4440613229134437835

`∩[A067340(n+1), A316413(n+1)]`
-/

namespace A359905.P4440613229134437835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359905.P4440613229134437835

/-!
# A359906: Number of integer partitions of n with integer mean and integer median.

The programs for A359906, there is no canonical definition to state claims against.
-/

/-! ## A359906.P11095988633975517845

`or(A157019(n+1), A342845(A228956(n+1)))`
-/

namespace A359906.P11095988633975517845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157019 (n + 1)) (A342845 (A228956 (n + 1)).toNat)

end

end A359906.P11095988633975517845

/-!
# A359907: Number of strict integer partitions of n with integer median.

The programs for A359907, there is no canonical definition to state claims against.
-/

/-! ## A359907.P6461942268261525950

`A000009(n)-A360952(n)`
-/

namespace A359907.P6461942268261525950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A360952 n

end

end A359907.P6461942268261525950

/-! ## A359907.P6553147931656422594

`∑[A087897(n)]-A360952(n)`
-/

namespace A359907.P6553147931656422594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360952 n

end

end A359907.P6553147931656422594

/-! ## A359907.P7495586949239462394

`A052839(n)+A057428(n)-A360952(n)`
-/

namespace A359907.P7495586949239462394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A057428 n - A360952 n)

end

end A359907.P7495586949239462394

/-! ## A359907.P9858910893994215278

`A052839(n)-(A360952(n)+A057427(n))`
-/

namespace A359907.P9858910893994215278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A360952 n + A057427 n)

end

end A359907.P9858910893994215278

/-! ## A359907.P17585503611182154712

`A096765(n)+A025147(n)-A360952(n)`
-/

namespace A359907.P17585503611182154712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A360952 n

end

end A359907.P17585503611182154712

/-! ## A359907.P16249625189884539701

`A003114(n)+A238708(n)-A360952(n)`
-/

namespace A359907.P16249625189884539701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A360952 n)

end

end A359907.P16249625189884539701

/-! ## A359907.P10951847262819045470

`A033999(n)*A081360(n)-A360952(n)`
-/

namespace A359907.P10951847262819045470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081360 n - A360952 n

end

end A359907.P10951847262819045470

/-! ## A359907.P380209658029107999

`A001489(A360952(n))+A096765(n+1)+A096765(n)`
-/

namespace A359907.P380209658029107999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A360952 n).toNat + (A096765 (n + 1) + A096765 n)

end

end A359907.P380209658029107999

/-!
# A359908: Numbers whose prime indices have integer median.

The programs for A359908, there is no canonical definition to state claims against.
-/

/-! ## A359908.P3445956860534372768

`comp[A359912(n+1)-1]+1`
-/

namespace A359908.P3445956860534372768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359908.P3445956860534372768

/-! ## A359908.P11257687314309415326

`∪[A316413(n+1), A362618(n+1)]`
-/

namespace A359908.P11257687314309415326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359908.P11257687314309415326

/-! ## A359908.P14092316674395927897

`∪[A316413(n+1), A371782(n+1)]`
-/

namespace A359908.P14092316674395927897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359908.P14092316674395927897

/-! ## A359908.P5525284767415533621

`∪[A339618(n+1), A362618(n+1)]`
-/

namespace A359908.P5525284767415533621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359908.P5525284767415533621

/-! ## A359908.P7517210190240606015

`∪[A339620(n+1), A362618(n+1)]`
-/

namespace A359908.P7517210190240606015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359908.P7517210190240606015

/-!
# A359909: Number of integer factorizations of n into factors > 1 with the same mean as median.

The programs for A359909, there is no canonical definition to state claims against.
-/

/-! ## A359909.P15373155447413153964

`A385378(A211776(n+1))`
-/

namespace A359909.P15373155447413153964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385378 (A211776 (n + 1)).toNat

end

end A359909.P15373155447413153964

/-! ## A359909.P2986464492514353508

`A321440(A317141(n+1))%A337270(n)`
-/

namespace A359909.P2986464492514353508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321440 (A317141 (n + 1)).toNat) (A337270 n)

end

end A359909.P2986464492514353508

/-! ## A359909.P2310931455068250428

`A036041(A181819(n+1))%A271269(n+1)`
-/

namespace A359909.P2310931455068250428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036041 (A181819 (n + 1)).toNat) (A271269 (n + 1))

end

end A359909.P2310931455068250428

/-! ## A359909.P7644520752888955752

`A111972(A343511(n+1))`
-/

namespace A359909.P7644520752888955752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A343511 (n + 1)).toNat

end

end A359909.P7644520752888955752

/-! ## A359909.P5073969244144026578

`A065033(A181819(n+1))%A331722(n)`
-/

namespace A359909.P5073969244144026578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A181819 (n + 1)).toNat) (A331722 n)

end

end A359909.P5073969244144026578

/-!
# A359910: Number of odd-length integer factorizations of n into factors > 1 with the same mean as median.

The programs for A359910, there is no canonical definition to state claims against.
-/

/-! ## A359910.P4478323376712487241

`A003056(gcd(A067029(n+1), A326472(3*n+4)))`
-/

namespace A359910.P4478323376712487241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (A067029 (n + 1)) (A326472 (3 * n + 4)))

end

end A359910.P4478323376712487241

/-! ## A359910.P15410081551667906938

`A119889(n+1)%(A055090(n)+1)`
-/

namespace A359910.P15410081551667906938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119889 (n + 1)) (A055090 n + 1)

end

end A359910.P15410081551667906938

/-! ## A359910.P9916056471724558491

`A001221(or(A225637(2*n), A280292(n+1)))`
-/

namespace A359910.P9916056471724558491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A225637 (2 * n)) (A280292 (n + 1))).toNat

end

end A359910.P9916056471724558491

/-! ## A359910.P8514116110899483958

`A056924(or(A225637(2*n), A280292(n+1)))`
-/

namespace A359910.P8514116110899483958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (Int.lor (A225637 (2 * n)) (A280292 (n + 1))).toNat

end

end A359910.P8514116110899483958

/-!
# A359911: Number of integer factorizations of n into factors > 1 without the same mean as median.

The programs for A359911, there is no canonical definition to state claims against.
-/

/-! ## A359911.P17737041303172660065

`round(A349143(n+1)/A336568(n+1))`
-/

namespace A359911.P17737041303172660065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A349143 (n + 1) : ℚ) / (A336568 (n + 1) : ℚ))

end

end A359911.P17737041303172660065

/-! ## A359911.P17188566894513311702

`A368749(n)%A317145(n+1)`
-/

namespace A359911.P17188566894513311702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368749 n) (A317145 (n + 1))

end

end A359911.P17188566894513311702

/-! ## A359911.P16506975784307956610

`A140633(A125011(n+1))%A317145(n+1)`
-/

namespace A359911.P16506975784307956610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140633 (A125011 (n + 1)).toNat) (A317145 (n + 1))

end

end A359911.P16506975784307956610

/-! ## A359911.P15878975009281074987

`A032741(A062463(n+1))%A317145(n+1)`
-/

namespace A359911.P15878975009281074987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A062463 (n + 1)).toNat) (A317145 (n + 1))

end

end A359911.P15878975009281074987

/-! ## A359911.P6411994860276437120

`A074742(A002350(n+1))%A317145(n+1)`
-/

namespace A359911.P6411994860276437120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074742 (A002350 (n + 1)).toNat) (A317145 (n + 1))

end

end A359911.P6411994860276437120

/-!
# A359913: Numbers whose multiset of prime factors has integer median.

The programs for A359913, there is no canonical definition to state claims against.
-/

/-! ## A359913.P11980331537701911963

`comp[2^∑{e}[n+1, #]*C(xor(1, n), n)]`
-/

namespace A359913.P11980331537701911963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) * Nat.choose (Nat.xor 1 n) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359913.P11980331537701911963

/-! ## A359913.P1834733586498737471

`eq[0, A356170(n+1)]+1`
-/

namespace A359913.P1834733586498737471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359913.P1834733586498737471

/-! ## A359913.P13810490218474033400

`eq[1, A361633(n+2)]+2`
-/

namespace A359913.P13810490218474033400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361633 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A359913.P13810490218474033400

/-! ## A359913.P12586235990638653864

`∑[Δ[comp[A072978(n+1)]]!]`
-/

namespace A359913.P12586235990638653864
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072978 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359913.P12586235990638653864

/-! ## A359913.P3027421893898903397

`eq[0, A356170(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A359913.P3027421893898903397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A356170 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359913.P3027421893898903397

/-! ## A359913.P10723001327612259900

`A020725(lt[A356170(n+1), 1])`
-/

namespace A359913.P10723001327612259900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A359913.P10723001327612259900

/-! ## A359913.P11368155407876653688

`∪[A362618(n+1), A020742(n)]`
-/

namespace A359913.P11368155407876653688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359913.P11368155407876653688

/-! ## A359913.P8527986333558226993

`∪[A371782(n+1), A020742(n)]`
-/

namespace A359913.P8527986333558226993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359913.P8527986333558226993

/-!
# A359914: a(n) = coefficient of x^n in A(x) such that 2 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(3*n-1)/2) * A(x)^(3*n) * (1 + x^n*A(x)).

The programs for A359914, there is no canonical definition to state claims against.
-/

/-! ## A359914.P3866063986199309453

`A216680(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A359914.P3866063986199309453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A216680 (a (n - 1)).toNat

end

end A359914.P3866063986199309453

/-!
# A359915: a(n) = coefficient of x^n in A(x) such that A(x) = Sum_{n=-oo..+oo} (x*A(x))^(n*(3*n+1)/2) * (1/x^(3*n) - x^(3*n+1)).

The programs for A359915, there is no canonical definition to state claims against.
-/

/-! ## A359915.P1082296871777773683

`A260803(A002110(n))+A108447(n)`
-/

namespace A359915.P1082296871777773683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 (A002110 n).toNat + A108447 n

end

end A359915.P1082296871777773683

/-! ## A359915.P736008095294072917

`A367237(n)+A000523(A054382(n))`
-/

namespace A359915.P736008095294072917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367237 n + A000523 (A054382 n).toNat

end

end A359915.P736008095294072917

/-!
# A359916: a(n) = coefficient of x^n in A(x) such that A(x) = 1 + Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (1/A(x)^(3*n) - A(x)^(3*n+1)).

The programs for A359916, there is no canonical definition to state claims against.
-/

/-! ## A359916.P10962940716019682314

`A277191(6*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A359916.P10962940716019682314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277191 (6 * a (n - 1)).toNat

end

end A359916.P10962940716019682314

/-!
# A359918: a(n) = coefficient of x^n*y^(n+1)/n! in (1/2) * log( Sum_{n>=0} (n^2 + n*y + 2*y^2)^n * x^n/n! ).

The programs for A359918, there is no canonical definition to state claims against.
-/

/-! ## A359918.P4751489396429700227

`A370940(n)+A352047(A266482(n))`
-/

namespace A359918.P4751489396429700227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370940 n + A352047 (A266482 n).toNat

end

end A359918.P4751489396429700227

/-!
# A359919: a(n) = coefficient of x^n in A(x) such that x^2 = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A359919, there is no canonical definition to state claims against.
-/

/-! ## A359919.P8774187683911670490

`A151898(A114623(2*n+3))-n`
-/

namespace A359919.P8774187683911670490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A114623 (2 * n + 3)).toNat - (n : ℤ)

end

end A359919.P8774187683911670490

/-! ## A359919.P3657156663843183780

`A325102(floor(2^(n-1)))+1-floor(2^(n-1))`
-/

namespace A359919.P3657156663843183780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + 1 - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A359919.P3657156663843183780

/-! ## A359919.P7832356370919461424

`A385178(A006482(n+2))`
-/

namespace A359919.P7832356370919461424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385178 (A006482 (n + 2)).toNat

end

end A359919.P7832356370919461424

/-!
# A359920: a(n) = coefficient of x^n in A(x) such that x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A359920, there is no canonical definition to state claims against.
-/

/-! ## A359920.P9848819112412332821

`A087163(A002426(n))+A001678(3*n)`
-/

namespace A359920.P9848819112412332821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (A002426 n).toNat + A001678 (3 * n)

end

end A359920.P9848819112412332821

/-! ## A359920.P15381527124600048740

`A108954(A157012(n+4)+A026587(2*(n+1)))`
-/

namespace A359920.P15381527124600048740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A157012 (n + 4) + A026587 (2 * (n + 1))).toNat

end

end A359920.P15381527124600048740

/-!
# A359921: a(n) = coefficient of x^n in A(x) such that 1/x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A359921, there is no canonical definition to state claims against.
-/

/-! ## A359921.P17184419974367747210

`A008621(A316983(3*n)-1)`
-/

namespace A359921.P17184419974367747210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A316983 (3 * n) - 1).toNat

end

end A359921.P17184419974367747210

/-!
# A359922: a(n) = coefficient of x^n in A(x) where x = Sum_{n=-oo..+oo} (-1)^(n-1) * x^n * (2 + x^n*A(x)^n)^n.

The programs for A359922, there is no canonical definition to state claims against.
-/

/-! ## A359922.P17874831318611082157

`A335382(A148382(n))`
-/

namespace A359922.P17874831318611082157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335382 (A148382 n).toNat

end

end A359922.P17874831318611082157

/-! ## A359922.P7703375995916367570

`A116406(n)*A121900(A124529(n))`
-/

namespace A359922.P7703375995916367570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n * A121900 (A124529 n).toNat

end

end A359922.P7703375995916367570

/-!
# A359923: a(n) = coefficient of x^n in A(x) where x = Sum_{n=-oo..+oo} (-1)^(n-1) * x^n * (3 + x^n*A(x)^n)^n.

The programs for A359923, there is no canonical definition to state claims against.
-/

/-! ## A359923.P13996381240383713070

`A166246(A334272(n))-A347586(n)`
-/

namespace A359923.P13996381240383713070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166246 (A334272 n).toNat - A347586 n

end

end A359923.P13996381240383713070

/-! ## A359923.P540796336424855624

`A294222(A097931(n+1))+A068527(n)`
-/

namespace A359923.P540796336424855624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294222 (A097931 (n + 1)).toNat + A068527 n

end

end A359923.P540796336424855624

/-!
# A359924: a(n) = coefficient of x^n in A(x) such that 2/x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A359924, there is no canonical definition to state claims against.
-/

/-! ## A359924.P4185532303460076285

`floor(A031215(floor(A226740(n)/4)+1)/4)+1`
-/

namespace A359924.P4185532303460076285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031215 (⌊(A226740 n : ℚ) / 4⌋ + 1).toNat : ℚ) / 4⌋ + 1

end

end A359924.P4185532303460076285

/-!
# A359925: Numbers with easy multiplication table - the first 9 multiples of these numbers can be derived by either incrementing or decrementing the corresponding digits from the previous multiple.

The programs for A359925, the canonical program `A359925.P12258298689355997822` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359925 has offset 1).

The definition of A359925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359925.P12258298689355997822

`xor(10*a(floor((n-1)/2)), A010684(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359925

/-- `xor(10*a(floor((n-1)/2)), A010684(n))` -/
def P12258298689355997822.Spec : Prop :=
  ∀ n, P12258298689355997822.a n = A359925 (n + 1)

theorem P12258298689355997822.correct : P12258298689355997822.Spec := by
  intro n
  simp only [A359925, Nat.add_sub_cancel]

end A359925

/-! ## A359925.P7572787392733103384

`A007088(n+1)-A256078(n+1)`
-/

namespace A359925.P7572787392733103384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - A256078 (n + 1)

end

end A359925.P7572787392733103384

namespace A359925

/-- `A007088(n+1)-A256078(n+1)` -/
def P7572787392733103384.Spec : Prop :=
  ∀ n, P7572787392733103384.a n = A359925 (n + 1)

end A359925

/-! ## A359925.P13388461856544629196

`A007088(n+1)-A007088(A035327(n+1))`
-/

namespace A359925.P13388461856544629196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - A007088 (A035327 (n + 1)).toNat

end

end A359925.P13388461856544629196

namespace A359925

/-- `A007088(n+1)-A007088(A035327(n+1))` -/
def P13388461856544629196.Spec : Prop :=
  ∀ n, P13388461856544629196.a n = A359925 (n + 1)

end A359925

/-! ## A359925.P13631493228866114488

`A256290(2*(n+1))/5`
-/

namespace A359925.P13631493228866114488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (2 * (n + 1)) : ℚ) / 5

end

end A359925.P13631493228866114488

namespace A359925

/-- `A256290(2*(n+1))/5` -/
def P13631493228866114488.Spec : Prop :=
  ∀ n, P13631493228866114488.a n = (A359925 (n + 1) : ℚ)

end A359925

/-! ## A359925.P9119522450151965842

`A007088(2*(n+1))/5-A256077(2*(n+1))`
-/

namespace A359925.P9119522450151965842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (2 * (n + 1)) : ℚ) / 5 - (A256077 (2 * (n + 1)) : ℚ)

end

end A359925.P9119522450151965842

namespace A359925

/-- `A007088(2*(n+1))/5-A256077(2*(n+1))` -/
def P9119522450151965842.Spec : Prop :=
  ∀ n, P9119522450151965842.a n = (A359925 (n + 1) : ℚ)

end A359925

/-! ## A359925.P3359976468974857473

`record[A284382(n+2)-A284635(n+2)]`
-/

namespace A359925.P3359976468974857473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 2) - A284635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359925.P3359976468974857473

namespace A359925

/-- `record[A284382(n+2)-A284635(n+2)]` -/
def P3359976468974857473.Spec : Prop :=
  ∀ n, P3359976468974857473.a n = A359925 (n + 1)

end A359925

/-! ## A359925.P13329371086098460124

`A054047(A153777(n+1))`
-/

namespace A359925.P13329371086098460124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (A153777 (n + 1)).toNat

end

end A359925.P13329371086098460124

namespace A359925

/-- `A054047(A153777(n+1))` -/
def P13329371086098460124.Spec : Prop :=
  ∀ n, P13329371086098460124.a n = A359925 (n + 1)

end A359925

/-!
# A359926: a(n) = coefficient of x^n*y^(n+1)/n! in (1/4) * log( Sum_{n>=0} (n + 2*y)^(2*n) * x^n/n! ).

The programs for A359926, there is no canonical definition to state claims against.
-/

/-! ## A359926.P4419740779895975903

`2^n*A266526(n+1)`
-/

namespace A359926.P4419740779895975903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A266526 (n + 1)

end

end A359926.P4419740779895975903

/-! ## A359926.P9213245852837156147

`A266526(n+1)*A266607(2*n)`
-/

namespace A359926.P9213245852837156147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266526 (n + 1) * A266607 (2 * n)

end

end A359926.P9213245852837156147

/-! ## A359926.P9260649835182006298

`A000079(n)*A266521(∑[n+3])`
-/

namespace A359926.P9260649835182006298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A266521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359926.P9260649835182006298

/-! ## A359926.P17798962464885475178

`A000079(n)*A266488(∑[n+2]-1)`
-/

namespace A359926.P17798962464885475178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A266488 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A359926.P17798962464885475178

/-! ## A359926.P6923462940730330775

`∑[A011782(n)]*A266488(∑[n+2]-1)`
-/

namespace A359926.P6923462940730330775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A266488 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A359926.P6923462940730330775

/-!
# A359927: E.g.f.: lim_{N->oo} [ Sum_{n>=0} (N^2 + 3*N*n + 2*n^2)^n * (x/N)^n/n! ]^(1/N).

The programs for A359927, there is no canonical definition to state claims against.
-/

/-! ## A359927.P7494570651927516281

`A168183(A177574(n))+A101334(n)`
-/

namespace A359927.P7494570651927516281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A177574 n).toNat + A101334 n

end

end A359927.P7494570651927516281

/-!
# A359932: Number of vertices among all distinct circles that can be constructed from an n x n square grid of points using only a compass.

The programs for A359932, there is no canonical definition to state claims against.
-/

/-! ## A359932.P12719989547497605685

`A359934(n+2)-A359933(n+2)+1`
-/

namespace A359932.P12719989547497605685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359934 (n + 2) - A359933 (n + 2) + 1

end

end A359932.P12719989547497605685

/-!
# A359933: Number of regions among all distinct circles that can be constructed from an n X n square grid of points using only a compass.

The programs for A359933, there is no canonical definition to state claims against.
-/

/-! ## A359933.P554869436996354360

`A359934(n+2)-A359932(n+2)+1`
-/

namespace A359933.P554869436996354360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359934 (n + 2) - A359932 (n + 2) + 1

end

end A359933.P554869436996354360

/-!
# A359934: Number of edges among all distinct circles that can be constructed from an n x n square grid of points using only a compass.

The programs for A359934, there is no canonical definition to state claims against.
-/

/-! ## A359934.P3042621599894489465

`A359932(n+2)+A359933(n+2)-1`
-/

namespace A359934.P3042621599894489465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359932 (n + 2) + A359933 (n + 2) - 1

end

end A359934.P3042621599894489465

/-!
# A359935: Irregular table read by rows: T(n,k) is the number of k-gons, k>=2, among all distinct circles that can be constructed from an n x n square grid of points using only a compass.

The programs for A359935, there is no canonical definition to state claims against.
-/

/-! ## A359935.P17046037912271983731

`A282130(2*(n+2))+A048146(A014566(n+2))`
-/

namespace A359935.P17046037912271983731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (2 * (n + 2)) + A048146 (A014566 (n + 2)).toNat

end

end A359935.P17046037912271983731

/-!
# A359936: Expansion of Product_{k>=0} (1 - x^(k^2+1)) in powers of x.

The programs for A359936, there is no canonical definition to state claims against.
-/

/-! ## A359936.P15226580455331536746

`A080891(A008732(n)^gcd(3, A234044(n)))`
-/

namespace A359936.P15226580455331536746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A008732 n ^ Int.gcd 3 (A234044 n)).toNat

end

end A359936.P15226580455331536746

/-! ## A359936.P12441262270765963509

`A080891(A099837(n+1)^8*A008732(n))`
-/

namespace A359936.P12441262270765963509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A099837 (n + 1) ^ 8 * A008732 n).toNat

end

end A359936.P12441262270765963509

/-! ## A359936.P18171005559650735474

`A095130(A078859(n+1))+A080891(A008732(n))`
-/

namespace A359936.P18171005559650735474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095130 (A078859 (n + 1)).toNat + A080891 (A008732 n).toNat

end

end A359936.P18171005559650735474

/-! ## A359936.P786426485058985398

`A080891(∑[A000389(n)+1])`
-/

namespace A359936.P786426485058985398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359936.P786426485058985398

/-! ## A359936.P3293111810000032418

`A100047(2*A165303(n+1))`
-/

namespace A359936.P3293111810000032418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (2 * A165303 (n + 1)).toNat

end

end A359936.P3293111810000032418

/-!
# A359937: a(n) = Sum_{d|n, d-1 is square} d.

The programs for A359937, the canonical program `A359937.P598369541804672827` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359937 has offset 1).

The definition of A359937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359937.P598369541804672827

`∑{d}[n+1, #*A010052(#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359937

/-- `∑{d}[n+1, #*A010052(#-1)]` -/
def P598369541804672827.Spec : Prop :=
  ∀ n, P598369541804672827.a n = A359937 (n + 1)

theorem P598369541804672827.correct : P598369541804672827.Spec := by
  intro n
  simp only [A359937, Nat.add_sub_cancel]

end A359937

/-! ## A359937.P5816221635705053840

`A049417(gcd(A007358(n+1), A351517(n+1)))`
-/

namespace A359937.P5816221635705053840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (Int.gcd (A007358 (n + 1)) (A351517 (n + 1)))

end

end A359937.P5816221635705053840

namespace A359937

/-- `A049417(gcd(A007358(n+1), A351517(n+1)))` -/
def P5816221635705053840.Spec : Prop :=
  ∀ n, P5816221635705053840.a n = A359937 (n + 1)

end A359937

/-! ## A359937.P13130613474150520033

`A000203(gcd(n+1, A146201(n+6)))`
-/

namespace A359937.P13130613474150520033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (n + 1 : ℤ) (A146201 (n + 6)))

end

end A359937.P13130613474150520033

namespace A359937

/-- `A000203(gcd(n+1, A146201(n+6)))` -/
def P13130613474150520033.Spec : Prop :=
  ∀ n, P13130613474150520033.a n = A359937 (n + 1)

end A359937

/-!
# A359938: Number of divisors d of n such that d-1 is square.

The programs for A359938, the canonical program `A359938.P2187253484977344488` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359938 has offset 1).

The definition of A359938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359938.P2187253484977344488

`∑{d}[n+1, A010052(#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359938

/-- `∑{d}[n+1, A010052(#-1)]` -/
def P2187253484977344488.Spec : Prop :=
  ∀ n, P2187253484977344488.a n = A359938 (n + 1)

theorem P2187253484977344488.correct : P2187253484977344488.Spec := by
  intro n
  simp only [A359938, Nat.add_sub_cancel]

end A359938

/-! ## A359938.P1256910447592003487

`∑{d}[n+1, A003418(A342797(#))%6]`
-/

namespace A359938.P1256910447592003487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A003418 (A342797 d).toNat) 6

end

end A359938.P1256910447592003487

namespace A359938

/-- `∑{d}[n+1, A003418(A342797(#))%6]` -/
def P1256910447592003487.Spec : Prop :=
  ∀ n, P1256910447592003487.a n = A359938 (n + 1)

end A359938

/-! ## A359938.P8106539787645978020

`∑{d}[n+1, A010054(A342797(#)²)]`
-/

namespace A359938.P8106539787645978020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 (A342797 d ^ 2).toNat

end

end A359938.P8106539787645978020

namespace A359938

/-- `∑{d}[n+1, A010054(A342797(#)²)]` -/
def P8106539787645978020.Spec : Prop :=
  ∀ n, P8106539787645978020.a n = A359938 (n + 1)

end A359938

/-! ## A359938.P1594221253179958468

`A358466(A071086(n+1)+A262079(2*n+5)²)`
-/

namespace A359938.P1594221253179958468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358466 (A071086 (n + 1) + A262079 (2 * n + 5) ^ 2).toNat

end

end A359938.P1594221253179958468

namespace A359938

/-- `A358466(A071086(n+1)+A262079(2*n+5)²)` -/
def P1594221253179958468.Spec : Prop :=
  ∀ n, P1594221253179958468.a n = A359938 (n + 1)

end A359938

/-!
# A359939: Lexicographically earliest strictly increasing sequence of primes whose partial products lie between noncomposite numbers.

The programs for A359939, there is no canonical definition to state claims against.
-/

/-! ## A359939.P8160686662348617903

`p?[∑[A076984(A027423(n))]]`
-/

namespace A359939.P8160686662348617903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A027423 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359939.P8160686662348617903

/-! ## A359939.P5625284125591943294

`A085400(A000070(n)%A134107(n+1))`
-/

namespace A359939.P5625284125591943294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085400 (Int.tmod (A000070 n) (A134107 (n + 1))).toNat

end

end A359939.P5625284125591943294

/-!
# A359941: Irregular triangle read row by row. The k-th row are integers from 0 to 2^k-1 in base 2 ordered in graded reverse lexicographical order.

The programs for A359941, there is no canonical definition to state claims against.
-/

/-! ## A359941.P5740387480141464696

`A209862(n+1)-A053644(n+1)`
-/

namespace A359941.P5740387480141464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (n + 1) - A053644 (n + 1)

end

end A359941.P5740387480141464696

/-! ## A359941.P750607218277302903

`A209862(A171386(n+4)+n+1)%A053644(n+1)`
-/

namespace A359941.P750607218277302903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209862 (A171386 (n + 4) + (n + 1 : ℤ)).toNat) (A053644 (n + 1))

end

end A359941.P750607218277302903

/-! ## A359941.P11557963834954457013

`A053645(A209862(n+1))`
-/

namespace A359941.P11557963834954457013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A209862 (n + 1)).toNat

end

end A359941.P11557963834954457013

/-! ## A359941.P10426620706919736218

`A209862(n+1)-A283472(A062383(2*(n+1)))`
-/

namespace A359941.P10426620706919736218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (n + 1) - A283472 (A062383 (2 * (n + 1))).toNat

end

end A359941.P10426620706919736218

/-! ## A359941.P16163769451501119048

`A209862(A157334(2*(n+2))+n)%A053644(n+1)`
-/

namespace A359941.P16163769451501119048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209862 (A157334 (2 * (n + 2)) + (n : ℤ)).toNat) (A053644 (n + 1))

end

end A359941.P16163769451501119048

/-!
# A359943: a(n) = Sum_{d|n, d-1 is cube} d.

The programs for A359943, the canonical program `A359943.P9077713032475342239` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359943 has offset 1).

The definition of A359943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359943.P9077713032475342239

`∑{d}[n+1, #*A010057(#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359943

/-- `∑{d}[n+1, #*A010057(#-1)]` -/
def P9077713032475342239.Spec : Prop :=
  ∀ n, P9077713032475342239.a n = A359943 (n + 1)

theorem P9077713032475342239.correct : P9077713032475342239.Spec := by
  intro n
  simp only [A359943, Nat.add_sub_cancel]

end A359943

/-! ## A359943.P17995969082650123711

`A331156(A318666(n+1))+A010673(n)`
-/

namespace A359943.P17995969082650123711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331156 (A318666 (n + 1)).toNat + A010673 n

end

end A359943.P17995969082650123711

namespace A359943

/-- `A331156(A318666(n+1))+A010673(n)` -/
def P17995969082650123711.Spec : Prop :=
  ∀ n, P17995969082650123711.a n = A359943 (n + 1)

end A359943

/-! ## A359943.P2253083955995237864

`A065745(A193652(n+1))`
-/

namespace A359943.P2253083955995237864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065745 (A193652 (n + 1)).toNat

end

end A359943.P2253083955995237864

namespace A359943

/-- `A065745(A193652(n+1))` -/
def P2253083955995237864.Spec : Prop :=
  ∀ n, P2253083955995237864.a n = A359943 (n + 1)

end A359943

/-! ## A359943.P11720589078739251371

`floor(A062097(A295295(2*(n+1)))/2)+1`
-/

namespace A359943.P11720589078739251371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062097 (A295295 (2 * (n + 1))).toNat : ℚ) / 2⌋ + 1

end

end A359943.P11720589078739251371

namespace A359943

/-- `floor(A062097(A295295(2*(n+1)))/2)+1` -/
def P11720589078739251371.Spec : Prop :=
  ∀ n, P11720589078739251371.a n = A359943 (n + 1)

end A359943

/-! ## A359943.P7195544914123314440

`A207646(gcd(∏{p}[n+1, #], A160172(3*n+1)))`
-/

namespace A359943.P7195544914123314440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207646 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A160172 (3 * n + 1)))

end

end A359943.P7195544914123314440

namespace A359943

/-- `A207646(gcd(∏{p}[n+1, #], A160172(3*n+1)))` -/
def P7195544914123314440.Spec : Prop :=
  ∀ n, P7195544914123314440.a n = A359943 (n + 1)

end A359943

/-!
# A359944: Number of divisors d of n such that d-1 is a cube.

The programs for A359944, there is no canonical definition to state claims against.
-/

/-! ## A359944.P335159804603674951

`∑{d}[n+1, A010057(#-1)]`
-/

namespace A359944.P335159804603674951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 (d - 1)

end

end A359944.P335159804603674951

/-! ## A359944.P279504209367773544

`A049237(A359943(n+1))`
-/

namespace A359944.P279504209367773544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (A359943 (n + 1)).toNat

end

end A359944.P279504209367773544

/-! ## A359944.P14467423686300287105

`A028334(A359943(n+1)+9)`
-/

namespace A359944.P14467423686300287105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A359943 (n + 1) + 9).toNat

end

end A359944.P14467423686300287105

/-! ## A359944.P17456024815365850189

`∑{digits}[A359943(n+1), A359979(#)]`
-/

namespace A359944.P17456024815365850189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A359979 x).sum

end

end A359944.P17456024815365850189

/-! ## A359944.P8063398844979538694

`A001221(∑{d}[A359943(n+1), A005563(#)])`
-/

namespace A359944.P8063398844979538694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n).natAbs, A005563 d).toNat

end

end A359944.P8063398844979538694

/-!
# A359946: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, n XOR a(n) is a prime number (where XOR denotes the bitwise XOR operator).

The programs for A359946, there is no canonical definition to state claims against.
-/

/-! ## A359946.P9418389095830661473

`xor(n+1, A359947(n+1))`
-/

namespace A359946.P9418389095830661473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A359947 (n + 1))

end

end A359946.P9418389095830661473

/-!
# A359947: a(n) = n XOR A359946(n) (where XOR denotes the bitwise XOR operator).

The programs for A359947, there is no canonical definition to state claims against.
-/

/-! ## A359947.P8229120942236262568

`xor(n+1, A359946(n+1))`
-/

namespace A359947.P8229120942236262568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A359946 (n + 1))

end

end A359947.P8229120942236262568

/-!
# A359949: Multiplicative sequence with a(p) = 3*p-1 and a(p^e) = (3*e*(p-1) + 3) * p^(e-1) for e > 1 and prime p.

The programs for A359949, the canonical program `A359949.P7223717125220601482` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359949 has offset 1).

The definition of A359949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359949.P7223717125220601482

`∑{d}[n+1, A029935(#)*A073185((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A359949

/-- `∑{d}[n+1, A029935(#)*A073185((n+1)/#)]` -/
def P7223717125220601482.Spec : Prop :=
  ∀ n, P7223717125220601482.a n = A359949 (n + 1)

theorem P7223717125220601482.correct : P7223717125220601482.Spec := by
  intro n
  simp only [A359949, Nat.add_sub_cancel]

end A359949

/-!
# A359951: Number of permutations of [n] such that the GCD of the cycle lengths is a prime.

The programs for A359951, there is no canonical definition to state claims against.
-/

/-! ## A359951.P10058180757173602255

`A352682(A049905(n+2))`
-/

namespace A359951.P10058180757173602255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352682 (A049905 (n + 2)).toNat

end

end A359951.P10058180757173602255

/-! ## A359951.P9482145545081044001

`Δ[A325132(A227233(n)+1)]`
-/

namespace A359951.P9482145545081044001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 (A227233 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359951.P9482145545081044001

/-! ## A359951.P13329159140667205020

`A065716(A030933(n+1)+n)`
-/

namespace A359951.P13329159140667205020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A030933 (n + 1) + (n : ℤ)).toNat

end

end A359951.P13329159140667205020

/-!
# A359953: a(1) = 0, a(2) = 1. For n >= 3, if the greatest prime dividing n is greater than the greatest prime dividing n-1, then a(n) = a(n-1) + 1. Otherwise a(n) = a(n-1) - 1.

The programs for A359953, there is no canonical definition to state claims against.
-/

/-! ## A359953.P18356554051237382221

`A335465(A292945(2*(n+1)))-A088568(n+1)`
-/

namespace A359953.P18356554051237382221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A292945 (2 * (n + 1))).toNat - A088568 (n + 1)

end

end A359953.P18356554051237382221

/-! ## A359953.P2096933735359811655

`A062756(A359409(3*n+4)+A118600(n+1))`
-/

namespace A359953.P2096933735359811655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A359409 (3 * n + 4) + A118600 (n + 1)).toNat

end

end A359953.P2096933735359811655

/-! ## A359953.P11619576184113565732

`∑[A098417(A052287(n+1))]+1`
-/

namespace A359953.P11619576184113565732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098417 (A052287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359953.P11619576184113565732

/-! ## A359953.P13693832713200807884

`A059261(A163530(n))%A237267(2*(n+1))`
-/

namespace A359953.P13693832713200807884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059261 (A163530 n).toNat) (A237267 (2 * (n + 1)))

end

end A359953.P13693832713200807884

/-! ## A359953.P561555408393048648

`A004074(A243305(n+1)+A004074(n+1))`
-/

namespace A359953.P561555408393048648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A243305 (n + 1) + A004074 (n + 1)).toNat

end

end A359953.P561555408393048648

/-!
# A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

The programs for A359954, the canonical program `A359954.P251505247951898520` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359954 has offset 1).

The definition of A359954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359954.P1586356711444869517

`∑{d}[n+1, A007427(#)*A062949((n+1)/#)]`
-/

namespace A359954.P1586356711444869517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P1586356711444869517

namespace A359954

/-- `∑{d}[n+1, A007427(#)*A062949((n+1)/#)]` -/
def P1586356711444869517.Spec : Prop :=
  ∀ n, P1586356711444869517.a n = A359954 (n + 1)

end A359954

/-! ## A359954.P13819203347584523278

`∑{d}[n+1, A008683(#)*A062355((n+1)/#)]`
-/

namespace A359954.P13819203347584523278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A062355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P13819203347584523278

namespace A359954

/-- `∑{d}[n+1, A008683(#)*A062355((n+1)/#)]` -/
def P13819203347584523278.Spec : Prop :=
  ∀ n, P13819203347584523278.a n = A359954 (n + 1)

end A359954

/-! ## A359954.P251505247951898520

`∑{d}[n+1, A007432(#)*A333645((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A359954

/-- `∑{d}[n+1, A007432(#)*A333645((n+1)/#)]` -/
def P251505247951898520.Spec : Prop :=
  ∀ n, P251505247951898520.a n = A359954 (n + 1)

theorem P251505247951898520.correct : P251505247951898520.Spec := by
  intro n
  simp only [A359954, Nat.add_sub_cancel]

end A359954

/-! ## A359954.P14021496674505379175

`∑{d}[n+1, A007428(#)*A341636((n+1)/#)]`
-/

namespace A359954.P14021496674505379175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A341636 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P14021496674505379175

namespace A359954

/-- `∑{d}[n+1, A007428(#)*A341636((n+1)/#)]` -/
def P14021496674505379175.Spec : Prop :=
  ∀ n, P14021496674505379175.a n = A359954 (n + 1)

end A359954

/-! ## A359954.P13119012419128322850

`∑{d}[n+1, A143275(#)*A396336((n+1)/#)]`
-/

namespace A359954.P13119012419128322850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P13119012419128322850

namespace A359954

/-- `∑{d}[n+1, A143275(#)*A396336((n+1)/#)]` -/
def P13119012419128322850.Spec : Prop :=
  ∀ n, P13119012419128322850.a n = A359954 (n + 1)

end A359954

/-!
# A359957: a(n) is the smallest number with exactly n divisors that are greater than or equal to 6.

The programs for A359957, there is no canonical definition to state claims against.
-/

/-! ## A359957.P10236521609441458551

`∑[A065331(∑[A146892(n+2)])]`
-/

namespace A359957.P10236521609441458551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146892 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359957.P10236521609441458551

/-!
# A359959: a(n) is the least number that has exactly n divisors with the same digit sum.

The programs for A359959, there is no canonical definition to state claims against.
-/

/-! ## A359959.P11424853862433821572

`A005179(n+1)*A299701(A169721(n))`
-/

namespace A359959.P11424853862433821572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) * A299701 (A169721 n).toNat

end

end A359959.P11424853862433821572

/-! ## A359959.P3391595245304319803

`A005179(n+1)*A182816(A277401(n+1))`
-/

namespace A359959.P3391595245304319803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) * A182816 (A277401 (n + 1)).toNat

end

end A359959.P3391595245304319803

/-!
# A359960: Smallest Niven (or Harshad) number (A005349) with exactly n distinct prime factors.

The programs for A359960, there is no canonical definition to state claims against.
-/

/-! ## A359960.P12983274733813905622

`A335069(A029804(n+2))`
-/

namespace A359960.P12983274733813905622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335069 (A029804 (n + 2)).toNat

end

end A359960.P12983274733813905622

/-! ## A359960.P14360541679320471713

`∏[∑[A181819(A350354(n))]]`
-/

namespace A359960.P14360541679320471713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A350354 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359960.P14360541679320471713

/-! ## A359960.P12833970515742758986

`∏[record[A006530(A136462(n))]]`
-/

namespace A359960.P12833970515742758986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136462 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359960.P12833970515742758986

/-! ## A359960.P18325274465950965365

`∏[eq[A085861(n), A132456(n)]]`
-/

namespace A359960.P18325274465950965365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132456 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359960.P18325274465950965365

/-!
# A359961: Smallest Zuckerman number (A007602) with exactly n distinct prime factors.

The programs for A359961, there is no canonical definition to state claims against.
-/

/-! ## A359961.P16489613083006623946

`A115569(n!*A115206(n+3))`
-/

namespace A359961.P16489613083006623946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 ((Nat.factorial n : ℤ) * A115206 (n + 3)).toNat

end

end A359961.P16489613083006623946

/-!
# A359962: Number of multisets of n nonempty words with a total of 2n letters over binary alphabet.

The programs for A359962, there is no canonical definition to state claims against.
-/

/-! ## A359962.P16385131027511434170

`∏{e}[4^n, A209406(n*#)]`
-/

namespace A359962.P16385131027511434170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A209406 (n * Nat.factorization (f1 n) p)

end

end A359962.P16385131027511434170

/-!
# A359963: Arithmetic numbers (A003601) having more divisors than all smaller arithmetic numbers.

The programs for A359963, there is no canonical definition to state claims against.
-/

/-! ## A359963.P12739513869446618918

`A324554(A001013(n+1))`
-/

namespace A359963.P12739513869446618918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (A001013 (n + 1)).toNat

end

end A359963.P12739513869446618918

/-! ## A359963.P3642782486690153715

`A324554(A025610(n+1))`
-/

namespace A359963.P3642782486690153715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (A025610 (n + 1)).toNat

end

end A359963.P3642782486690153715

/-! ## A359963.P17134870034492438752

`A324554(A250270(n+1))`
-/

namespace A359963.P17134870034492438752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (A250270 (n + 1)).toNat

end

end A359963.P17134870034492438752

/-! ## A359963.P13797835981634974900

`A324554(A344181(n+1))`
-/

namespace A359963.P13797835981634974900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (A344181 (n + 1)).toNat

end

end A359963.P13797835981634974900

/-! ## A359963.P8492683475310402048

`A324554(A062847(n+2))`
-/

namespace A359963.P8492683475310402048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (A062847 (n + 2)).toNat

end

end A359963.P8492683475310402048

/-!
# A359964: Refactorable numbers (A033950) having more divisors than all smaller refactorable numbers.

The programs for A359964, there is no canonical definition to state claims against.
-/

/-! ## A359964.P1241180424125301798

`A324553(record[A009191(n+1)])`
-/

namespace A359964.P1241180424125301798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324553 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359964.P1241180424125301798

/-! ## A359964.P11005550416229623277

`A324553(record[A303781(n+1)])`
-/

namespace A359964.P11005550416229623277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324553 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359964.P11005550416229623277

/-! ## A359964.P6242070027549272427

`record[A109066(2*n+1)*A143179(2*n+3)]`
-/

namespace A359964.P6242070027549272427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (2 * n + 1) * A143179 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359964.P6242070027549272427

/-!
# A359965: a(n) is the least arithmetic number (A003601) having exactly n divisors.

The programs for A359965, there is no canonical definition to state claims against.
-/

/-! ## A359965.P15907839845528316666

`A285387(A000079(n))^A035317(2*n)`
-/

namespace A359965.P15907839845528316666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285387 (A000079 n).toNat : ℚ) ^ (A035317 (2 * n) : ℤ)

end

end A359965.P15907839845528316666

/-!
# A359966: Expansion of Product_{k>=2} (1 - x^(k^2-1)) in powers of x.

The programs for A359966, there is no canonical definition to state claims against.
-/

/-! ## A359966.P8876388064789634948

`A304362(∪[A121880(2*n+5), A161949(n+1)])`
-/

namespace A359966.P8876388064789634948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121880 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161949 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A359966.P8876388064789634948

/-! ## A359966.P10624888359362717676

`(-A025441(n+2))^A138390(n+1)`
-/

namespace A359966.P10624888359362717676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A025441 (n + 2) : ℚ) ^ (A138390 (n + 1) : ℤ)

end

end A359966.P10624888359362717676

/-! ## A359966.P4833928928570867534

`A304362(lt[A300605(3*(n+1)), A001844(n)])`
-/

namespace A359966.P4833928928570867534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359966.P4833928928570867534

/-! ## A359966.P10058760563096585305

`A087003(or(A001158(n+1), A326686(2*n+1)))`
-/

namespace A359966.P10058760563096585305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (Int.lor (A001158 (n + 1)) (A326686 (2 * n + 1))).toNat

end

end A359966.P10058760563096585305

/-! ## A359966.P17051317768699370097

`A014177(A351959(n+1))`
-/

namespace A359966.P17051317768699370097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014177 (A351959 (n + 1)).toNat

end

end A359966.P17051317768699370097

/-!
# A359967: a(n) = Sum_{d|n, d+1 is square} d.

The programs for A359967, there is no canonical definition to state claims against.
-/

/-! ## A359967.P867255517266140278

`A284281(n+1)%A070458(2^n+7)`
-/

namespace A359967.P867255517266140278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284281 (n + 1)) (A070458 (2 ^ n + 7))

end

end A359967.P867255517266140278

/-! ## A359967.P15843396497560706690

`A194681(A000079(n))*A284281(n+1)`
-/

namespace A359967.P15843396497560706690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 (A000079 n).toNat * A284281 (n + 1)

end

end A359967.P15843396497560706690

/-! ## A359967.P9375753975090062594

`A284281(n+1)%A002109(A014572(n))`
-/

namespace A359967.P9375753975090062594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284281 (n + 1)) (A002109 (A014572 n).toNat)

end

end A359967.P9375753975090062594

/-! ## A359967.P13047034539371996922

`A010060(A270698(n+1))*A284281(n+1)`
-/

namespace A359967.P13047034539371996922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A270698 (n + 1)).toNat * A284281 (n + 1)

end

end A359967.P13047034539371996922

/-! ## A359967.P14819829253691545428

`and(A194223(A194385(3*n+1)), A284281(n+1))`
-/

namespace A359967.P14819829253691545428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194223 (A194385 (3 * n + 1)).toNat) (A284281 (n + 1))

end

end A359967.P14819829253691545428

/-!
# A359968: Number of vertices formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions equal the Farey series of order n.

The programs for A359968, there is no canonical definition to state claims against.
-/

/-! ## A359968.P6852671761896774414

`A359970(n+1)-A359969(n+1)+1`
-/

namespace A359968.P6852671761896774414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359970 (n + 1) - A359969 (n + 1) + 1

end

end A359968.P6852671761896774414

/-! ## A359968.P12746344122352562688

`A020725(A359970(n+1)-A359969(n+1))`
-/

namespace A359968.P12746344122352562688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A359970 (n + 1) - A359969 (n + 1)).toNat

end

end A359968.P12746344122352562688

/-!
# A359969: Number of regions formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions equal the Farey series of order n.

The programs for A359969, there is no canonical definition to state claims against.
-/

/-! ## A359969.P3470678874539198619

`A359970(n+1)-A359968(n+1)+1`
-/

namespace A359969.P3470678874539198619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359970 (n + 1) - A359968 (n + 1) + 1

end

end A359969.P3470678874539198619

/-!
# A359970: Number of edges formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions equal the Farey series of order n.

The programs for A359970, there is no canonical definition to state claims against.
-/

/-! ## A359970.P16504411717908772056

`A359968(n+1)+A359969(n+1)-1`
-/

namespace A359970.P16504411717908772056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359968 (n + 1) + A359969 (n + 1) - 1

end

end A359970.P16504411717908772056

/-!
# A359971: Irregular table read by rows: T(n,k) is the number of k-gons, k>=3, formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions equal the Farey series of order n.

The programs for A359971, there is no canonical definition to state claims against.
-/

/-! ## A359971.P2627715811104786891

`A167865(A034953((n+1)*∏{p}[n+1, #]))`
-/

namespace A359971.P2627715811104786891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A034953 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat

end

end A359971.P2627715811104786891

/-!
# A359974: Number of vertices formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions on one edge equal the Farey series of order n while on the other they divide its length into n equal segments.

The programs for A359974, there is no canonical definition to state claims against.
-/

/-! ## A359974.P16257844733959824738

`A359976(n+1)-A359975(n+1)+1`
-/

namespace A359974.P16257844733959824738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359976 (n + 1) - A359975 (n + 1) + 1

end

end A359974.P16257844733959824738

/-! ## A359974.P13330437703704451090

`A359976(n+1)-A199969(A359975(n+1))`
-/

namespace A359974.P13330437703704451090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359976 (n + 1) - A199969 (A359975 (n + 1)).toNat

end

end A359974.P13330437703704451090

/-!
# A359975: Number of regions formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions on one edge equal the Farey series of order n while on the other they divide its length into n equal segments.

The programs for A359975, there is no canonical definition to state claims against.
-/

/-! ## A359975.P3508134254857701691

`A359976(n+1)-A359974(n+1)+1`
-/

namespace A359975.P3508134254857701691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359976 (n + 1) - A359974 (n + 1) + 1

end

end A359975.P3508134254857701691

/-! ## A359975.P15007191100251556653

`A359976(n+1)-A199969(A359974(n+1))`
-/

namespace A359975.P15007191100251556653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359976 (n + 1) - A199969 (A359974 (n + 1)).toNat

end

end A359975.P15007191100251556653

/-!
# A359976: Number of edges formed inside a right triangle by the straight line segments mutually connecting all vertices and points on the two shorter edges whose positions on one edge equal the Farey series of order n while on the other they divide its length into n equal segments.

The programs for A359976, there is no canonical definition to state claims against.
-/

/-! ## A359976.P2784719949143886787

`A359974(n+1)+A359975(n+1)-1`
-/

namespace A359976.P2784719949143886787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359974 (n + 1) + A359975 (n + 1) - 1

end

end A359976.P2784719949143886787

/-! ## A359976.P14440875718386542510

`A359974(n+1)+A199969(A359975(n+1))`
-/

namespace A359976.P14440875718386542510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359974 (n + 1) + A199969 (A359975 (n + 1)).toNat

end

end A359976.P14440875718386542510

/-!
# A359978: Prime numbers whose decimal representation can be split into two nonempty parts without leading 0, say x and y (in that order), and such that the concatenation of y and x yields a different prime number.

The programs for A359978, there is no canonical definition to state claims against.
-/

/-! ## A359978.P13227347295521508830

`A083983(n+1)-A058348(A060961(n))`
-/

namespace A359978.P13227347295521508830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 1) - A058348 (A060961 n).toNat

end

end A359978.P13227347295521508830

/-!
# A359979: Irregular table T(n,k), n >= 0 and k >= 0, read by rows with T(n + 3*k,k) = A008619(n).

The programs for A359979, there is no canonical definition to state claims against.
-/

/-! ## A359979.P375343022999419751

`A001817(A025611(n+1))`
-/

namespace A359979.P375343022999419751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A025611 (n + 1)).toNat

end

end A359979.P375343022999419751

/-! ## A359979.P8063937617122458780

`A206441(A173239(n))`
-/

namespace A359979.P8063937617122458780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206441 (A173239 n).toNat

end

end A359979.P8063937617122458780

/-! ## A359979.P6528497824218475357

`A091090(eq[2, A381454(n+1)])`
-/

namespace A359979.P6528497824218475357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359979.P6528497824218475357

/-! ## A359979.P7097033433132052883

`A070939(A173239(n))%A335910(3*n+1)`
-/

namespace A359979.P7097033433132052883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A173239 n).toNat) (A335910 (3 * n + 1))

end

end A359979.P7097033433132052883

/-! ## A359979.P2204495458209892435

`A038548(3^A025639(n+1))`
-/

namespace A359979.P2204495458209892435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A025639 (n + 1) : ℤ))).toNat

end

end A359979.P2204495458209892435

/-!
# A359981: Nonsquares which can be expressed as the product of a number and its digit reversal.

The programs for A359981, there is no canonical definition to state claims against.
-/

/-! ## A359981.P8876310824154083494

`filter[A306830(n+1), A049240(#)]`
-/

namespace A359981.P8876310824154083494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A359981.P8876310824154083494

/-! ## A359981.P6957226627435408538

`filter[A306830(n+1), A267594(#)]`
-/

namespace A359981.P6957226627435408538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A359981.P6957226627435408538

/-! ## A359981.P14354213380646304446

`filter[A306830(n+1), A267612(#)]`
-/

namespace A359981.P14354213380646304446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A359981.P14354213380646304446

/-! ## A359981.P11364307977546438707

`filter[A306830(n+1), A267635(#)]`
-/

namespace A359981.P11364307977546438707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A359981.P11364307977546438707

/-! ## A359981.P8780193255308056967

`filter[A305231(n+2), A049240(#)]`
-/

namespace A359981.P8780193255308056967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A359981.P8780193255308056967

/-!
# A359982: Numbers whose digits are distinct nonprimes and are not a permutation of a smaller such number.

The programs for A359982, there is no canonical definition to state claims against.
-/

/-! ## A359982.P12983346888558053308

`eq[A193238(n), A280727(A280727(n))]`
-/

namespace A359982.P12983346888558053308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280727 (A280727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359982.P12983346888558053308

/-! ## A359982.P8991494164070613766

`A084984(A020660(n+1)%A224063(n+1))`
-/

namespace A359982.P8991494164070613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (Int.tmod (A020660 (n + 1)) (A224063 (n + 1))).toNat

end

end A359982.P8991494164070613766

/-! ## A359982.P4031601356830304456

`A084984(A361395(n+1)%A224063(n+1))`
-/

namespace A359982.P4031601356830304456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (Int.tmod (A361395 (n + 1)) (A224063 (n + 1))).toNat

end

end A359982.P4031601356830304456

/-!
# A359983: Numbers with exactly two nonzero decimal digits and not ending with 0.

The programs for A359983, there is no canonical definition to state claims against.
-/

/-! ## A359983.P529796097893576807

`lt[-A010879(n), A187844(n)]`
-/

namespace A359983.P529796097893576807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359983.P529796097893576807

/-! ## A359983.P18125794752520255077

`eq[A168046(n)+1, A215887(n)]`
-/

namespace A359983.P18125794752520255077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359983.P18125794752520255077

/-! ## A359983.P9302994291802986003

`lt[A106649(abs(2*n%10-n)), A106649(n)]`
-/

namespace A359983.P9302994291802986003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 |((2 * (n % 10) : ℕ) : ℤ) - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359983.P9302994291802986003

/-! ## A359983.P17401992184292562311

`lt[A066568(A088117(n)), A035930(n)]`
-/

namespace A359983.P17401992184292562311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A088117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359983.P17401992184292562311

/-! ## A359983.P7518393285087696570

`eq[A000030(A032762(n+1)), A217657(n)]`
-/

namespace A359983.P7518393285087696570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A032762 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359983.P7518393285087696570

/-! ## A359983.P12754421808494008982

`lt[A000007(n)-A187844(n), A010879(n)]`
-/

namespace A359983.P12754421808494008982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A187844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359983.P12754421808494008982

/-!
# A359984: Number of non-crossing antichain covers of {1,...,n} without singletons.

The programs for A359984, there is no canonical definition to state claims against.
-/

/-! ## A359984.P11834871642544843005

`A103221(A177797(n+1))`
-/

namespace A359984.P11834871642544843005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A177797 (n + 1)).toNat

end

end A359984.P11834871642544843005

/-! ## A359984.P16174422950036832477

`A225090(A206226(n))-n`
-/

namespace A359984.P16174422950036832477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (A206226 n).toNat - (n : ℤ)

end

end A359984.P16174422950036832477

/-!
# A359987: Number of edge cuts in the n-ladder graph P_2 X P_n.

The programs for A359987, the canonical program `A359987.P9713073542485974720` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359987 has offset 1).

The definition of A359987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359987.P9713073542485974720

`13*a(n-1)-42*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=11, a(2)=105`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A359987

/-- `13*a(n-1)-42*a(n-2)+16*a(n-3)` -/
def P9713073542485974720.Spec : Prop :=
  ∀ n, P9713073542485974720.a n = A359987 (n + 1)

theorem P9713073542485974720.correct : P9713073542485974720.Spec := by
  intro n
  simp only [A359987, Nat.add_sub_cancel]

end A359987

/-! ## A359987.P1754293966163480848

`2^(3*(n+1)-2)+(((5-sqrt(17))/2)^(n+1)-((5+sqrt(17))/2)^(n+1))/sqrt(17)`
-/

namespace A359987.P1754293966163480848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((3 * (n + 1) : ℤ) - 2 : ℤ) : ℝ) + (((5 - Real.sqrt (17 : ℝ)) / 2) ^ (n + 1) - ((5 + Real.sqrt (17 : ℝ)) / 2) ^ (n + 1)) / Real.sqrt (17 : ℝ)

end

end A359987.P1754293966163480848

namespace A359987

/-- `2^(3*(n+1)-2)+(((5-sqrt(17))/2)^(n+1)-((5+sqrt(17))/2)^(n+1))/sqrt(17)` -/
def P1754293966163480848.Spec : Prop :=
  ∀ n, P1754293966163480848.a n = (A359987 (n + 1) : ℝ)

end A359987

/-! ## A359987.P8053607461971908797

`A013731(n)%(A107839(n)+A013730(n))`
-/

namespace A359987.P8053607461971908797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013731 n) (A107839 n + A013730 n)

end

end A359987.P8053607461971908797

namespace A359987

/-- `A013731(n)%(A107839(n)+A013730(n))` -/
def P8053607461971908797.Spec : Prop :=
  ∀ n, P8053607461971908797.a n = A359987 (n + 1)

end A359987

/-!
# A359988: Number of edge cuts in the 3 X n grid graph.

The programs for A359988, there is no canonical definition to state claims against.
-/

/-! ## A359988.P16956677956167761577

`A013823(n)-A158453(n+1)`
-/

namespace A359988.P16956677956167761577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013823 n - A158453 (n + 1)

end

end A359988.P16956677956167761577

/-! ## A359988.P1480484427332440959

`4*32^n-A158453(n+1)%A049311(3*n+2)`
-/

namespace A359988.P1480484427332440959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 32 ^ n : ℤ) - Int.tmod (A158453 (n + 1)) (A049311 (3 * n + 2))

end

end A359988.P1480484427332440959

/-! ## A359988.P8152388215572312584

`4*32^n-A359993(A167614(n+1))`
-/

namespace A359988.P8152388215572312584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 32 ^ n : ℤ) - A359993 (A167614 (n + 1)).toNat

end

end A359988.P8152388215572312584

/-! ## A359988.P11165467282073208298

`4*32^n-A359993(A034856(n+2))`
-/

namespace A359988.P11165467282073208298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 32 ^ n : ℤ) - A359993 (A034856 (n + 2)).toNat

end

end A359988.P11165467282073208298

/-! ## A359988.P16123327159554335506

`A013823(n)-A359993(A034856(n+2))%A013823(n)`
-/

namespace A359988.P16123327159554335506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013823 n - Int.tmod (A359993 (A034856 (n + 2)).toNat) (A013823 n)

end

end A359988.P16123327159554335506

/-!
# A359989: Number of edge cuts in the n X n grid graph.

The programs for A359989, there is no canonical definition to state claims against.
-/

/-! ## A359989.P4917647356300748874

`A053765(n+1)-A359992(n+1)`
-/

namespace A359989.P4917647356300748874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053765 (n + 1) - A359992 (n + 1)

end

end A359989.P4917647356300748874

/-!
# A359990: Array read by antidiagonals: T(m,n) is the number of edge cuts in the grid graph P_m X P_n.

The programs for A359990, there is no canonical definition to state claims against.
-/

/-! ## A359990.P12763773164663008909

`A228865(A075834(n))%A257612(n)`
-/

namespace A359990.P12763773164663008909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228865 (A075834 n).toNat) (A257612 n)

end

end A359990.P12763773164663008909

/-!
# A359991: Number of connected spanning subgraphs in the 4 X n grid graph.

The programs for A359991, there is no canonical definition to state claims against.
-/

/-! ## A359991.P6374503651165001223

`A359993(A167614(n+2)+1)`
-/

namespace A359991.P6374503651165001223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A167614 (n + 2) + 1).toNat

end

end A359991.P6374503651165001223

/-! ## A359991.P4946540387426047497

`A359993(A000096(n+2)+5)`
-/

namespace A359991.P4946540387426047497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A000096 (n + 2) + 5).toNat

end

end A359991.P4946540387426047497

/-! ## A359991.P441981706818555472

`A359993(A000217(n+3)+4)`
-/

namespace A359991.P441981706818555472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A000217 (n + 3) + 4).toNat

end

end A359991.P441981706818555472

/-! ## A359991.P7965660753239863059

`A359993(∑[n+3]+n+4)`
-/

namespace A359991.P7965660753239863059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A359991.P7965660753239863059

/-! ## A359991.P17390325073725008421

`A359993(A141214(n+1))+A035363(2*n+3)`
-/

namespace A359991.P17390325073725008421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A141214 (n + 1)).toNat + A035363 (2 * n + 3)

end

end A359991.P17390325073725008421

/-!
# A359992: Number of connected spanning subgraphs in the n X n grid graph.

The programs for A359992, there is no canonical definition to state claims against.
-/

/-! ## A359992.P7259296616236051615

`A053765(n+1)-A359989(n+1)`
-/

namespace A359992.P7259296616236051615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053765 (n + 1) - A359989 (n + 1)

end

end A359992.P7259296616236051615

/-! ## A359992.P15457362016517177267

`A359993((n+1)²+n²)`
-/

namespace A359992.P15457362016517177267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 ((n + 1) ^ 2 + n ^ 2)

end

end A359992.P15457362016517177267

/-!
# A359993: Array read by antidiagonals: T(m,n) is the number of connected spanning subgraphs in the grid graph P_m X P_n.

The programs for A359993, there is no canonical definition to state claims against.
-/

/-! ## A359993.P5138251655651750234

`or(1, A035327(A359990(n+1)))`
-/

namespace A359993.P5138251655651750234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035327 (A359990 (n + 1)).toNat)

end

end A359993.P5138251655651750234

/-! ## A359993.P10792066445555030893

`A353157(or(1, A359990(n+1)))`
-/

namespace A359993.P10792066445555030893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353157 (Int.lor 1 (A359990 (n + 1))).toNat

end

end A359993.P10792066445555030893

/-! ## A359993.P17039170067551765626

`A353157(A359990(n+1)+A000007(n))`
-/

namespace A359993.P17039170067551765626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353157 (A359990 (n + 1) + A000007 n).toNat

end

end A359993.P17039170067551765626

/-! ## A359993.P4258392139573562501

`A007078(A045912(n))`
-/

namespace A359993.P4258392139573562501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A045912 n).toNat

end

end A359993.P4258392139573562501

/-! ## A359993.P435505325853878855

`A093873(A022184(n))`
-/

namespace A359993.P435505325853878855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A022184 n).toNat

end

end A359993.P435505325853878855

/-!
# A359994: Independence number of the 2-Fibonacci digraph of order n.

The programs for A359994, there is no canonical definition to state claims against.
-/

/-! ## A359994.P16738155450375188451

`A045774(A304790(n))`
-/

namespace A359994.P16738155450375188451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045774 (A304790 n).toNat

end

end A359994.P16738155450375188451

/-! ## A359994.P14168932702177268499

`A092351(n)-A357288(n)`
-/

namespace A359994.P14168932702177268499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092351 n - A357288 n

end

end A359994.P14168932702177268499

/-! ## A359994.P11970343648038648876

`A218153(n)+A071162(A319473(n))`
-/

namespace A359994.P11970343648038648876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218153 n + A071162 (A319473 n).toNat

end

end A359994.P11970343648038648876

/-! ## A359994.P1458812193896988236

`A118033(n)-A343956(A224808(n))`
-/

namespace A359994.P1458812193896988236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118033 n - A343956 (A224808 n).toNat

end

end A359994.P1458812193896988236

/-! ## A359994.P5928282086357948321

`∑[A241414(A241412(n))+A239946(n)]`
-/

namespace A359994.P5928282086357948321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 (A241412 n).toNat + A239946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359994.P5928282086357948321

/-!
# A359995: Number of maximal independent sets in the 2-Fibonacci digraph of order n.

The programs for A359995, there is no canonical definition to state claims against.
-/

/-! ## A359995.P12766313428338652274

`A060632(A129871(n))+n!`
-/

namespace A359995.P12766313428338652274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A129871 n).toNat + (Nat.factorial n : ℤ)

end

end A359995.P12766313428338652274

/-! ## A359995.P16115164499012159531

`A026819(A160707(n+1))+n+1`
-/

namespace A359995.P16115164499012159531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A160707 (n + 1)).toNat + (n + 1 : ℤ)

end

end A359995.P16115164499012159531

/-!
# A359997: Irregular triangle read by rows: T(n,k) is the number of directed cycles of length k in the 2-Fibonacci digraph of order n.

The programs for A359997, there is no canonical definition to state claims against.
-/

/-! ## A359997.P4151752707998787285

`gcd(A094967(A091890(n+1)), A119034(n+1))`
-/

namespace A359997.P4151752707998787285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094967 (A091890 (n + 1)).toNat) (A119034 (n + 1))

end

end A359997.P4151752707998787285

/-! ## A359997.P4635765520593496478

`A338719(gcd(A046641(n+1), A186116(n+1)))`
-/

namespace A359997.P4635765520593496478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338719 (Int.gcd (A046641 (n + 1)) (A186116 (n + 1)))

end

end A359997.P4635765520593496478

/-! ## A359997.P18020812680954734646

`A296133(lcm(A117546(n), A184257(2*n+1)))`
-/

namespace A359997.P18020812680954734646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (Int.lcm (A117546 n) (A184257 (2 * n + 1)))

end

end A359997.P18020812680954734646

/-! ## A359997.P4178664583325341177

`A322286(A248640(3*n+1)+A014673(n+1))`
-/

namespace A359997.P4178664583325341177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (A248640 (3 * n + 1) + A014673 (n + 1)).toNat

end

end A359997.P4178664583325341177

/-! ## A359997.P1621061425720627599

`A001285(A087112(2*(n+2))*A088564(n))`
-/

namespace A359997.P1621061425720627599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A087112 (2 * (n + 2)) * A088564 n).toNat

end

end A359997.P1621061425720627599

/-!
# A359998: Number of longest directed cycles in the 2-Fibonacci digraph of order n.

The programs for A359998, there is no canonical definition to state claims against.
-/

/-! ## A359998.P8152035852925969494

`A359997(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=2, a(1)=4`
-/

namespace A359998.P8152035852925969494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359997 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A359998.P8152035852925969494

/-! ## A359998.P13071618038546770742

`A359997(A014739(n+1))`
-/

namespace A359998.P13071618038546770742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359997 (A014739 (n + 1)).toNat

end

end A359998.P13071618038546770742

/-! ## A359998.P5407802580708723812

`A359997(A027961(n+1))`
-/

namespace A359998.P5407802580708723812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359997 (A027961 (n + 1)).toNat

end

end A359998.P5407802580708723812

/-! ## A359998.P7497560369428803775

`A359997(∑[record[A000032(n)]])`
-/

namespace A359998.P7497560369428803775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359998.P7497560369428803775

/-! ## A359998.P12212695275858162839

`A359997(∑[A000032(n+1)])`
-/

namespace A359998.P12212695275858162839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359998.P12212695275858162839

