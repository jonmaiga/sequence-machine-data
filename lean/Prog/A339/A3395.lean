import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A339500: Maximum length of sequences of prime numbers that start with prime(n) and are arithmetic progressions of common difference less than prime(n).

The programs for A339500, there is no canonical definition to state claims against.
-/

/-! ## A339500.P13017968420565780172

`A261461(∑[A343750(A144351(n+1))])`
-/

namespace A339500.P13017968420565780172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (A144351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339500.P13017968420565780172

/-! ## A339500.P3172498976692637126

`A257079(A309520(n+1))`
-/

namespace A339500.P3172498976692637126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (A309520 (n + 1)).toNat

end

end A339500.P3172498976692637126

/-! ## A339500.P9212335530685836203

`A001221(A003340(n+1)*A032931(n+1))`
-/

namespace A339500.P9212335530685836203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003340 (n + 1) * A032931 (n + 1)).toNat

end

end A339500.P9212335530685836203

/-! ## A339500.P6555388703347061105

`A001221(A001358(n+1)*A181330(3*n+4))`
-/

namespace A339500.P6555388703347061105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001358 (n + 1) * A181330 (3 * n + 4)).toNat

end

end A339500.P6555388703347061105

/-!
# A339501: a(n) = smallest prime number between prime(n) and 2*prime(n) such that the arithmetic progression (prime(n), a(n), ...) and which contains only primes has the maximum length.

The programs for A339501, there is no canonical definition to state claims against.
-/

/-! ## A339501.P11188145057122633867

`p?[xor(A061579(n+1), A108466(2*n+1))]`
-/

namespace A339501.P11188145057122633867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061579 (n + 1)) (A108466 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339501.P11188145057122633867

/-!
# A339502: Number of non-isomorphic connected cubic cyclic Haar graphs on 2n vertices.

The programs for A339502, there is no canonical definition to state claims against.
-/

/-! ## A339502.P2075300305448304506

`A003050(n+3)-1`
-/

namespace A339502.P2075300305448304506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (n + 3) - 1

end

end A339502.P2075300305448304506

/-! ## A339502.P10222700671240717521

`A023443(A003050(n+3))`
-/

namespace A339502.P10222700671240717521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003050 (n + 3)).toNat

end

end A339502.P10222700671240717521

/-! ## A339502.P1230509518768851483

`A003987(C(A003050(n+3), 2))`
-/

namespace A339502.P1230509518768851483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Nat.choose (A003050 (n + 3)).toNat 2)

end

end A339502.P1230509518768851483

/-! ## A339502.P13911595284266877746

`A348998(n)+A339505(n+3)`
-/

namespace A339502.P13911595284266877746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348998 n + A339505 (n + 3)

end

end A339502.P13911595284266877746

/-! ## A339502.P10227661718135935352

`A028310(A003050(n+3)+log2(1/2))`
-/

namespace A339502.P10227661718135935352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A003050 (n + 3) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A339502.P10227661718135935352

/-!
# A339503: Lesser p of twin primes p,q such that (p*q-2)/3 is prime.

The programs for A339503, there is no canonical definition to state claims against.
-/

/-! ## A339503.P6655669473767806782

`floor(sqrt(3*A339504(n+1)))`
-/

namespace A339503.P6655669473767806782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A339504 (n + 1))

end

end A339503.P6655669473767806782

/-! ## A339503.P18057996525843381000

`A262689(3*A339504(n+1))`
-/

namespace A339503.P18057996525843381000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (3 * A339504 (n + 1)).toNat

end

end A339503.P18057996525843381000

/-! ## A339503.P7389443292712500127

`A262689(lcm(3, A339504(n+1)))`
-/

namespace A339503.P7389443292712500127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lcm 3 (A339504 (n + 1)))

end

end A339503.P7389443292712500127

/-! ## A339503.P7199909162925458078

`A020639(3*A339504(n+1)+2)`
-/

namespace A339503.P7199909162925458078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A339504 (n + 1) + 2).toNat

end

end A339503.P7199909162925458078

/-!
# A339504: Primes (p*(p+2)-2)/3 for p in A339503.

The programs for A339504, there is no canonical definition to state claims against.
-/

/-! ## A339504.P6032300515136381236

`∩[A089682(n+1), A124670(n+1)]`
-/

namespace A339504.P6032300515136381236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P6032300515136381236

/-! ## A339504.P7468694791542532005

`∩[A124670(n+1), A143830(n+1)]`
-/

namespace A339504.P7468694791542532005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P7468694791542532005

/-! ## A339504.P4803944157139437529

`A032765(A339503(n+1))`
-/

namespace A339504.P4803944157139437529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A339503 (n + 1)).toNat

end

end A339504.P4803944157139437529

/-! ## A339504.P6110143464309107776

`∩[A032765(A001359(n+1)), A124670(n+1)]`
-/

namespace A339504.P6110143464309107776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P6110143464309107776

/-! ## A339504.P7373207588812686565

`∩[A032765(A111166(n+1)), A124670(n+1)]`
-/

namespace A339504.P7373207588812686565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A111166 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P7373207588812686565

/-! ## A339504.P7254426594240602932

`∩[A032765(A014574(n+1)-1), A124670(n+1)]`
-/

namespace A339504.P7254426594240602932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A014574 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P7254426594240602932

/-! ## A339504.P7860231343986865689

`∩[A124670(n+1), A032765(A006512(n+1)-2)]`
-/

namespace A339504.P7860231343986865689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A006512 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P7860231343986865689

/-! ## A339504.P12159710470769293202

`∩[A032765(A054735(n+1)/2-1), A124670(n+1)]`
-/

namespace A339504.P12159710470769293202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2 - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339504.P12159710470769293202

/-!
# A339505: Number of non-isomorphic connected cubic cyclic Haar graphs of girth 6 on 2n vertices.

The programs for A339505, there is no canonical definition to state claims against.
-/

/-! ## A339505.P9721684912606423435

`A339502(n+3)-A348998(n)`
-/

namespace A339505.P9721684912606423435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339502 (n + 3) - A348998 n

end

end A339505.P9721684912606423435

/-! ## A339505.P14593503989265033918

`A003050(n+3)-1-A348998(n)`
-/

namespace A339505.P14593503989265033918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (n + 3) - 1 - A348998 n

end

end A339505.P14593503989265033918

/-! ## A339505.P4752743325377744785

`A339502(n+3)-A040001(xor(1, n))`
-/

namespace A339505.P4752743325377744785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339502 (n + 3) - A040001 (Nat.xor 1 n)

end

end A339505.P4752743325377744785

/-! ## A339505.P2480951680515338966

`A339502(n+3)-A040001(abs(1-n))`
-/

namespace A339505.P2480951680515338966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339502 (n + 3) - A040001 |1 - (n : ℤ)|.toNat

end

end A339505.P2480951680515338966

/-! ## A339505.P11333286467837712027

`A023443(A003050(n+3))-A348998(n)`
-/

namespace A339505.P11333286467837712027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003050 (n + 3)).toNat - A348998 n

end

end A339505.P11333286467837712027

/-!
# A339506: Numbers surviving a repeated sieving process for pseudo-lucky numbers (A249876).

The programs for A339506, there is no canonical definition to state claims against.
-/

/-! ## A339506.P6418877572030109711

`eq[A001221(A222947(2*n+1)), A000035(n)]`
-/

namespace A339506.P6418877572030109711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A222947 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339506.P6418877572030109711

/-! ## A339506.P12531779359052000846

`record[or(A261770(n), A327127(n))]`
-/

namespace A339506.P12531779359052000846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261770 n) (A327127 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339506.P12531779359052000846

/-! ## A339506.P8008439080464524581

`record[A318871(n+1)/A296086(n+1)]`
-/

namespace A339506.P8008439080464524581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318871 (n + 1) : ℚ) / (A296086 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339506.P8008439080464524581

/-!
# A339507: Number of subsets of {1..n} whose sum is a decimal palindrome.

The programs for A339507, there is no canonical definition to state claims against.
-/

/-! ## A339507.P3962380380044450668

`A218767(A003094(n))+A000217(n)`
-/

namespace A339507.P3962380380044450668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (A003094 n).toNat + A000217 n

end

end A339507.P3962380380044450668

/-! ## A339507.P3296203772877620727

`A160160(n)+A156348(A032555(n+1))`
-/

namespace A339507.P3296203772877620727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n + A156348 (A032555 (n + 1)).toNat

end

end A339507.P3296203772877620727

/-! ## A339507.P9335761517627788205

`A264034(A018321(2*n+1))+A160160(n)`
-/

namespace A339507.P9335761517627788205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264034 (A018321 (2 * n + 1)).toNat + A160160 n

end

end A339507.P9335761517627788205

/-! ## A339507.P7967227232281321246

`A157416(n+2)+A000122(n)-(A147861(n+1)-1)`
-/

namespace A339507.P7967227232281321246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157416 (n + 2) + A000122 n - (A147861 (n + 1) - 1)

end

end A339507.P7967227232281321246

/-!
# A339509: Number of subsets of {1..n} whose elements have the same greatest prime factor.

The programs for A339509, there is no canonical definition to state claims against.
-/

/-! ## A339509.P7153635285880472741

`A011782(A078899(n))+a(n-1)` with `a(0)=1`
-/

namespace A339509.P7153635285880472741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (A078899 n).toNat + a (n - 1)

end

end A339509.P7153635285880472741

/-! ## A339509.P3043253722086820763

`∑[A011782(A078899(abs(1-n)+1))]`
-/

namespace A339509.P3043253722086820763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A078899 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339509.P3043253722086820763

/-! ## A339509.P16501218706301817753

`∑[A134478(A032741(A002530(n)))]`
-/

namespace A339509.P16501218706301817753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A032741 (A002530 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339509.P16501218706301817753

/-! ## A339509.P11209365221872207966

`∑[A000005(A298342(A003415(n)))]`
-/

namespace A339509.P11209365221872207966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A298342 (A003415 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339509.P11209365221872207966

/-!
# A339510: Number of subsets of {1..n} whose elements have the same smallest prime factor.

The programs for A339510, there is no canonical definition to state claims against.
-/

/-! ## A339510.P11370787947442654565

`∑[A011782(A078898(n))]`
-/

namespace A339510.P11370787947442654565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339510.P11370787947442654565

/-! ## A339510.P9016851355759194834

`∑[A166444(A078898(n)+1)]`
-/

namespace A339510.P9016851355759194834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A078898 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339510.P9016851355759194834

/-! ## A339510.P9262904097466317154

`∑[A000079((A078898(n)-1)%(n+1))]`
-/

namespace A339510.P9262904097466317154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A078898 n - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339510.P9262904097466317154

/-! ## A339510.P11203008202330262073

`∑[A049063(A078898(n)²)]`
-/

namespace A339510.P11203008202330262073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A078898 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339510.P11203008202330262073

/-! ## A339510.P4404310385622171357

`∑[A059268(A078898(n)+A000096(n))]`
-/

namespace A339510.P4404310385622171357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A078898 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339510.P4404310385622171357

/-!
# A339511: Number of subsets of {1..n} whose elements have the same number of prime factors, counted with multiplicity.

The programs for A339511, there is no canonical definition to state claims against.
-/

/-! ## A339511.P10102815784456565359

`∑[2^A335097(A028310(n))]`
-/

namespace A339511.P10102815784456565359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A335097 (A028310 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339511.P10102815784456565359

/-! ## A339511.P3086560479226933727

`A011782(A058933(n))+a(n-1)` with `a(0)=1`
-/

namespace A339511.P3086560479226933727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (A058933 n).toNat + a (n - 1)

end

end A339511.P3086560479226933727

/-! ## A339511.P7269754172776974694

`∑[A011782(A058933(floor(1/(n+1))+n))]`
-/

namespace A339511.P7269754172776974694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A058933 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339511.P7269754172776974694

/-! ## A339511.P4001793208649127778

`A011782(A058933(n))-A001489(a(n-1))` with `a(0)=1`
-/

namespace A339511.P4001793208649127778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (A058933 n).toNat - A001489 (a (n - 1)).toNat

end

end A339511.P4001793208649127778

/-! ## A339511.P16457210812157194922

`∑[A068068(A011371(n^4)+1)]`
-/

namespace A339511.P16457210812157194922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A011371 (n ^ 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339511.P16457210812157194922

/-!
# A339512: Number of subsets of {1..n} whose elements have the same number of distinct prime factors.

The programs for A339512, there is no canonical definition to state claims against.
-/

/-! ## A339512.P4311748029202124731

`A011782(A067003(n))+a(n-1)` with `a(0)=1`
-/

namespace A339512.P4311748029202124731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (A067003 n).toNat + a (n - 1)

end

end A339512.P4311748029202124731

/-! ## A339512.P5153697625046761684

`∑[A011782(A067003(A028310(n)))]`
-/

namespace A339512.P5153697625046761684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A067003 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339512.P5153697625046761684

/-! ## A339512.P5080020837572856192

`∑[A011782(A067003(A233583(n+1)))]`
-/

namespace A339512.P5080020837572856192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A067003 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339512.P5080020837572856192

/-! ## A339512.P4265969498643062902

`∑[A307662(∏[A179651(n+1)])]`
-/

namespace A339512.P4265969498643062902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339512.P4265969498643062902

/-! ## A339512.P15357029825529692294

`record[A331309(record[A181819(n+1)])]`
-/

namespace A339512.P15357029825529692294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339512.P15357029825529692294

/-!
# A339514: Number of subsets of {1..n} whose elements have the same number of divisors.

The programs for A339514, there is no canonical definition to state claims against.
-/

/-! ## A339514.P8979690117197675701

`a(n-1)+2^A047983(n)` with `a(0)=1`
-/

namespace A339514.P8979690117197675701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A047983 n : ℤ)

end

end A339514.P8979690117197675701

/-! ## A339514.P8866867267055354690

`A000079(A047983(n))+a(n-1)` with `a(0)=1`
-/

namespace A339514.P8866867267055354690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A047983 n).toNat + a (n - 1)

end

end A339514.P8866867267055354690

/-! ## A339514.P10930542571939884390

`∑[A000079(A047983(abs(1-n)+1))]`
-/

namespace A339514.P10930542571939884390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A047983 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339514.P10930542571939884390

/-! ## A339514.P10481992003271696866

`∑[2^A047983(n-A057427(n)+1)]`
-/

namespace A339514.P10481992003271696866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047983 ((n : ℤ) - A057427 n + 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339514.P10481992003271696866

/-! ## A339514.P2198066870222031398

`∑[2^A047983(A233583(n+1))]`
-/

namespace A339514.P2198066870222031398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047983 (A233583 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339514.P2198066870222031398

/-!
# A339515: a(n) = Sum_{k=0..floor(n/3)} k! * (n - 3*k)!.

The programs for A339515, there is no canonical definition to state claims against.
-/

/-! ## A339515.P1265533759717506687

`A358498(n)+A005614(A358446(n))`
-/

namespace A339515.P1265533759717506687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358498 n + A005614 (A358446 n).toNat

end

end A339515.P1265533759717506687

/-! ## A339515.P1128588023179414334

`A358498(n)+A333382(A371796(n))`
-/

namespace A339515.P1128588023179414334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358498 n + A333382 (A371796 n).toNat

end

end A339515.P1128588023179414334

/-! ## A339515.P1217913054217270098

`A304034(2*n+1)+A065883(A358498(n))`
-/

namespace A339515.P1217913054217270098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304034 (2 * n + 1) + A065883 (A358498 n).toNat

end

end A339515.P1217913054217270098

/-!
# A339516: a(n+1) = (a(n) - 2*(n-1)) * (2*n-1), where a(1)=1.

The programs for A339516, the canonical program `A339516.P7060302373978878842` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339516 has offset 1).

The definition of A339516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339516.P7060302373978878842

`(a(n-1)-2*(n-1))*(2*(n+1)-3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A339516

/-- `(a(n-1)-2*(n-1))*(2*(n+1)-3)` -/
def P7060302373978878842.Spec : Prop :=
  ∀ n, P7060302373978878842.a n = A339516 (n + 1)

theorem P7060302373978878842.correct : P7060302373978878842.Spec := by
  intro n
  simp only [A339516, Nat.add_sub_cancel]

end A339516

/-! ## A339516.P13841003525892776293

`A047907(2*n+1)+2*n`
-/

namespace A339516.P13841003525892776293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (2 * n + 1) + (2 * n : ℤ)

end

end A339516.P13841003525892776293

namespace A339516

/-- `A047907(2*n+1)+2*n` -/
def P13841003525892776293.Spec : Prop :=
  ∀ n, P13841003525892776293.a n = A339516 (n + 1)

end A339516

/-! ## A339516.P14524361760267563540

`A047907(A004277(n))`
-/

namespace A339516.P14524361760267563540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (A004277 n).toNat

end

end A339516.P14524361760267563540

namespace A339516

/-- `A047907(A004277(n))` -/
def P14524361760267563540.Spec : Prop :=
  ∀ n, P14524361760267563540.a n = A339516 (n + 1)

end A339516

/-! ## A339516.P14168939577927872020

`A047907(A004275(n+1))`
-/

namespace A339516.P14168939577927872020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (A004275 (n + 1)).toNat

end

end A339516.P14168939577927872020

namespace A339516

/-- `A047907(A004275(n+1))` -/
def P14168939577927872020.Spec : Prop :=
  ∀ n, P14168939577927872020.a n = A339516 (n + 1)

end A339516

/-! ## A339516.P821338738011892959

`A047907(A300576(n+2))`
-/

namespace A339516.P821338738011892959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (A300576 (n + 2)).toNat

end

end A339516.P821338738011892959

namespace A339516

/-- `A047907(A300576(n+2))` -/
def P821338738011892959.Spec : Prop :=
  ∀ n, P821338738011892959.a n = A339516 (n + 1)

end A339516

/-! ## A339516.P7497495902471959896

`A047907(A076034(A000124(n)))`
-/

namespace A339516.P7497495902471959896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (A076034 (A000124 n).toNat).toNat

end

end A339516.P7497495902471959896

namespace A339516

/-- `A047907(A076034(A000124(n)))` -/
def P7497495902471959896.Spec : Prop :=
  ∀ n, P7497495902471959896.a n = A339516 (n + 1)

end A339516

/-! ## A339516.P7776662855895977740

`A047907(A123578(A051601(A000124(2*n))))`
-/

namespace A339516.P7776662855895977740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (A123578 (A051601 (A000124 (2 * n)).toNat).toNat).toNat

end

end A339516.P7776662855895977740

namespace A339516

/-- `A047907(A123578(A051601(A000124(2*n))))` -/
def P7776662855895977740.Spec : Prop :=
  ∀ n, P7776662855895977740.a n = A339516 (n + 1)

end A339516

/-!
# A339517: Odd composite integers m such that A000032(2*m-J(m,5)) == J(m,5) (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339517, there is no canonical definition to state claims against.
-/

/-! ## A339517.P18254066263510354470

`A339521(A292125(n+1)+A050023(n+1))`
-/

namespace A339517.P18254066263510354470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339521 (A292125 (n + 1) + A050023 (n + 1)).toNat

end

end A339517.P18254066263510354470

/-!
# A339520: Odd composite integers m such that A086902(2*m-J(m,53)) == 7*J(m,53) (mod m), where J(m,53) is the Jacobi symbol.

The programs for A339520, there is no canonical definition to state claims against.
-/

/-! ## A339520.P2763195024797967177

`A244644(A008365(2*(n+1))+1)+2`
-/

namespace A339520.P2763195024797967177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A008365 (2 * (n + 1)) + 1).toNat + 2

end

end A339520.P2763195024797967177

/-! ## A339520.P3318752675094257789

`A161547(A161594(2*n+1)+A161562(n+1))`
-/

namespace A339520.P3318752675094257789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161547 (A161594 (2 * n + 1) + A161562 (n + 1)).toNat

end

end A339520.P3318752675094257789

/-!
# A339521: Odd composite integers m such that A005248(2*m-J(m,5)) == 3 (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339521, there is no canonical definition to state claims against.
-/

/-! ## A339521.P9658808560642647873

`A339523(n+1)%A177648(n+2)`
-/

namespace A339521.P9658808560642647873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339523 (n + 1)) (A177648 (n + 2))

end

end A339521.P9658808560642647873

/-!
# A339524: Number of unordered pairs of rooted trees with a total of n nodes and an even total of leaves.

The programs for A339524, there is no canonical definition to state claims against.
-/

/-! ## A339524.P3532285225264675617

`A027852(n+1)-A339525(n+1)`
-/

namespace A339524.P3532285225264675617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (n + 1) - A339525 (n + 1)

end

end A339524.P3532285225264675617

/-! ## A339524.P15065799049211649667

`A106234(∑[n+1]+3)-A339525(n+1)`
-/

namespace A339524.P15065799049211649667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - A339525 (n + 1)

end

end A339524.P15065799049211649667

/-! ## A339524.P17703488655236765951

`A027852(n+1)+A057428(n)*A339525(n+1)`
-/

namespace A339524.P17703488655236765951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (n + 1) + A057428 n * A339525 (n + 1)

end

end A339524.P17703488655236765951

/-! ## A339524.P13495555190236335514

`A033185(A133263(n))-(A339525(n+1)+A000007(n))`
-/

namespace A339524.P13495555190236335514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A133263 n).toNat - (A339525 (n + 1) + A000007 n)

end

end A339524.P13495555190236335514

/-! ## A339524.P6277485790785467000

`(A033185(A133263(n))-A339525(n+1))*A178334(n)`
-/

namespace A339524.P6277485790785467000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033185 (A133263 n).toNat - A339525 (n + 1)) * A178334 n

end

end A339524.P6277485790785467000

/-!
# A339525: Number of unordered pairs of rooted trees with a total of n nodes and an odd total of leaves.

The programs for A339525, there is no canonical definition to state claims against.
-/

/-! ## A339525.P16929145916317177669

`A027852(n+1)-A339524(n+1)`
-/

namespace A339525.P16929145916317177669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (n + 1) - A339524 (n + 1)

end

end A339525.P16929145916317177669

/-! ## A339525.P9155581512388940906

`A106234(∑[n+1]+3)-A339524(n+1)`
-/

namespace A339525.P9155581512388940906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - A339524 (n + 1)

end

end A339525.P9155581512388940906

/-! ## A339525.P2368020943028898551

`A027852(n+1)+A057428(n)*A339524(n+1)`
-/

namespace A339525.P2368020943028898551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (n + 1) + A057428 n * A339524 (n + 1)

end

end A339525.P2368020943028898551

/-! ## A339525.P13510393556540282686

`A033185(A133263(n))-(A339524(n+1)+A000007(n))`
-/

namespace A339525.P13510393556540282686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A133263 n).toNat - (A339524 (n + 1) + A000007 n)

end

end A339525.P13510393556540282686

/-! ## A339525.P4112492291103558177

`(A033185(A133263(n))-A339524(n+1))*A178334(n)`
-/

namespace A339525.P4112492291103558177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033185 (A133263 n).toNat - A339524 (n + 1)) * A178334 n

end

end A339525.P4112492291103558177

/-!
# A339526: Number of divisors of n that are adjacent to at least one prime.

The programs for A339526, there is no canonical definition to state claims against.
-/

/-! ## A339526.P16958541727591881980

`∑{d}[n+1, A008966(A103689(#)²)]`
-/

namespace A339526.P16958541727591881980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 (A103689 d ^ 2).toNat

end

end A339526.P16958541727591881980

/-! ## A339526.P6091453167909486314

`∑{d}[n+1, A010051(13*A103689(#))]`
-/

namespace A339526.P6091453167909486314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (13 * A103689 d).toNat

end

end A339526.P6091453167909486314

/-! ## A339526.P9756057667148724248

`∑{d}[n+1, A010051(A103689(#)+A103689(#))]`
-/

namespace A339526.P9756057667148724248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A103689 d + A103689 d).toNat

end

end A339526.P9756057667148724248

/-! ## A339526.P16619442618489747137

`∑{d}[n+1, A008966(2^A103689(#))]`
-/

namespace A339526.P16619442618489747137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A103689 d : ℤ))).toNat

end

end A339526.P16619442618489747137

/-! ## A339526.P11075604705766211719

`A304092(A000045(n+1))+n%2`
-/

namespace A339526.P11075604705766211719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A000045 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A339526.P11075604705766211719

/-!
# A339531: Numbers b > 1 such that the smallest two primes, i.e., 2 and 3 are base-b Wieferich primes.

The programs for A339531, the canonical program `A339531.P14776552302102832523` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339531 has offset 1).

The definition of A339531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339531.P14776552302102832523

`4*floor(9*(n+1)/2)+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A339531

/-- `4*floor(9*(n+1)/2)+1` -/
def P14776552302102832523.Spec : Prop :=
  ∀ n, P14776552302102832523.a n = A339531 (n + 1)

theorem P14776552302102832523.correct : P14776552302102832523.Spec := by
  intro n
  simp only [A339531, Nat.add_sub_cancel]

end A339531

/-! ## A339531.P5972335023894958515

`and(18*n+19, -3)`
-/

namespace A339531.P5972335023894958515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (18 * n + 19 : ℤ) (-3)

end

end A339531.P5972335023894958515

namespace A339531

/-- `and(18*n+19, -3)` -/
def P5972335023894958515.Spec : Prop :=
  ∀ n, P5972335023894958515.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P18425942037510146848

`xor(2, or(3, 18*(n+1)))`
-/

namespace A339531.P18425942037510146848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (18 * (n + 1)))

end

end A339531.P18425942037510146848

namespace A339531

/-- `xor(2, or(3, 18*(n+1)))` -/
def P18425942037510146848.Spec : Prop :=
  ∀ n, (P18425942037510146848.a n : ℤ) = A339531 (n + 1)

end A339531

/-! ## A339531.P15645040497229321824

`∑[abs(a(n-2))]` with `a(0)=17, a(1)=20, a(2)=16`
-/

namespace A339531.P15645040497229321824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 20, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339531.P15645040497229321824

namespace A339531

/-- `∑[abs(a(n-2))]` -/
def P15645040497229321824.Spec : Prop :=
  ∀ n, (P15645040497229321824.a n : ℤ) = A339531 (n + 1)

end A339531

/-! ## A339531.P10819621791294969134

`∑[36-a(n-1)]` with `a(0)=17, a(1)=20`
-/

namespace A339531.P10819621791294969134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 20] fun n f1 =>
  36 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339531.P10819621791294969134

namespace A339531

/-- `∑[36-a(n-1)]` -/
def P10819621791294969134.Spec : Prop :=
  ∀ n, P10819621791294969134.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P45901450890177634

`Δ[(3*n+1)²+or(1, n)+n+n]`
-/

namespace A339531.P45901450890177634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 2 + (Nat.lor 1 n + n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A339531.P45901450890177634

namespace A339531

/-- `Δ[(3*n+1)²+or(1, n)+n+n]` -/
def P45901450890177634.Spec : Prop :=
  ∀ n, P45901450890177634.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P13582456864638321163

`Δ[A090381(2*n+1)-A090381(n+1)]`
-/

namespace A339531.P13582456864638321163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090381 (2 * n + 1) - A090381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339531.P13582456864638321163

namespace A339531

/-- `Δ[A090381(2*n+1)-A090381(n+1)]` -/
def P13582456864638321163.Spec : Prop :=
  ∀ n, P13582456864638321163.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P6890147854752647839

`A087445(3*(n+1)+1)`
-/

namespace A339531.P6890147854752647839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (3 * (n + 1) + 1)

end

end A339531.P6890147854752647839

namespace A339531

/-- `A087445(3*(n+1)+1)` -/
def P6890147854752647839.Spec : Prop :=
  ∀ n, P6890147854752647839.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P12945724967177327344

`A056020(A047461(n+2))`
-/

namespace A339531.P12945724967177327344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A047461 (n + 2)).toNat

end

end A339531.P12945724967177327344

namespace A339531

/-- `A056020(A047461(n+2))` -/
def P12945724967177327344.Spec : Prop :=
  ∀ n, P12945724967177327344.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P8849194394140060495

`A166524(A047468(n+2))`
-/

namespace A339531.P8849194394140060495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (A047468 (n + 2)).toNat

end

end A339531.P8849194394140060495

namespace A339531

/-- `A166524(A047468(n+2))` -/
def P8849194394140060495.Spec : Prop :=
  ∀ n, P8849194394140060495.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P10858868255058834518

`A016813(A193910(n+2)-2)`
-/

namespace A339531.P10858868255058834518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A193910 (n + 2) - 2).toNat

end

end A339531.P10858868255058834518

namespace A339531

/-- `A016813(A193910(n+2)-2)` -/
def P10858868255058834518.Spec : Prop :=
  ∀ n, P10858868255058834518.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P2555752308532269511

`∩[A004766(n+1), A056020(n+1)]`
-/

namespace A339531.P2555752308532269511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339531.P2555752308532269511

namespace A339531

/-- `∩[A004766(n+1), A056020(n+1)]` -/
def P2555752308532269511.Spec : Prop :=
  ∀ n, (P2555752308532269511.a n : ℤ) = A339531 (n + 1)

end A339531

/-! ## A339531.P5993881252976534103

`A016813(A001651(2*(n+1))+A001651(n+2))`
-/

namespace A339531.P5993881252976534103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A001651 (2 * (n + 1)) + A001651 (n + 2)).toNat

end

end A339531.P5993881252976534103

namespace A339531

/-- `A016813(A001651(2*(n+1))+A001651(n+2))` -/
def P5993881252976534103.Spec : Prop :=
  ∀ n, P5993881252976534103.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P647178404010793225

`A166521(A228137(n+2))`
-/

namespace A339531.P647178404010793225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (A228137 (n + 2)).toNat

end

end A339531.P647178404010793225

namespace A339531

/-- `A166521(A228137(n+2))` -/
def P647178404010793225.Spec : Prop :=
  ∀ n, P647178404010793225.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P4220533151469985627

`A080455(6*(n+1))`
-/

namespace A339531.P4220533151469985627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (6 * (n + 1))

end

end A339531.P4220533151469985627

namespace A339531

/-- `A080455(6*(n+1))` -/
def P4220533151469985627.Spec : Prop :=
  ∀ n, P4220533151469985627.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P6393044086127166218

`A174398(A016921(n+1))`
-/

namespace A339531.P6393044086127166218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (A016921 (n + 1)).toNat

end

end A339531.P6393044086127166218

namespace A339531

/-- `A174398(A016921(n+1))` -/
def P6393044086127166218.Spec : Prop :=
  ∀ n, P6393044086127166218.a n = A339531 (n + 1)

end A339531

/-! ## A339531.P9552194222350729044

`A174398(A271114(n+1))`
-/

namespace A339531.P9552194222350729044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (A271114 (n + 1)).toNat

end

end A339531.P9552194222350729044

namespace A339531

/-- `A174398(A271114(n+1))` -/
def P9552194222350729044.Spec : Prop :=
  ∀ n, P9552194222350729044.a n = A339531 (n + 1)

end A339531

/-!
# A339532: Numbers b > 1 such that the smallest three primes, i.e., 2, 3 and 5 are base-b Wieferich primes.

The programs for A339532, the canonical program `A339532.P2271499442616658880` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339532 has offset 1).

The definition of A339532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339532.P2271499442616658880

`∩[A339531(n+1), A376506(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339532

/-- `∩[A339531(n+1), A376506(n+1)]` -/
def P2271499442616658880.Spec : Prop :=
  ∀ n, (P2271499442616658880.a n : ℤ) = A339532 (n + 1)

theorem P2271499442616658880.correct : P2271499442616658880.Spec := by
  intro n
  simp only [A339532, Nat.add_sub_cancel]

end A339532

/-! ## A339532.P9965104977117872464

`∩[A056021(n+1), A339531(n+1)]`
-/

namespace A339532.P9965104977117872464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339532.P9965104977117872464

namespace A339532

/-- `∩[A056021(n+1), A339531(n+1)]` -/
def P9965104977117872464.Spec : Prop :=
  ∀ n, (P9965104977117872464.a n : ℤ) = A339532 (n + 1)

end A339532

/-! ## A339532.P7367859405862465341

`∩[A174398(A016921(n+1)), A376506(n+1)]`
-/

namespace A339532.P7367859405862465341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (A016921 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339532.P7367859405862465341

namespace A339532

/-- `∩[A174398(A016921(n+1)), A376506(n+1)]` -/
def P7367859405862465341.Spec : Prop :=
  ∀ n, (P7367859405862465341.a n : ℤ) = A339532 (n + 1)

end A339532

/-! ## A339532.P4162251440105901869

`A009056(lt[5, A270776(n+2)])`
-/

namespace A339532.P4162251440105901869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339532.P4162251440105901869

namespace A339532

/-- `A009056(lt[5, A270776(n+2)])` -/
def P4162251440105901869.Spec : Prop :=
  ∀ n, P4162251440105901869.a n = A339532 (n + 1)

end A339532

/-! ## A339532.P7811615188731014487

`A243427(lt[5, A270776(n+2)])`
-/

namespace A339532.P7811615188731014487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339532.P7811615188731014487

namespace A339532

/-- `A243427(lt[5, A270776(n+2)])` -/
def P7811615188731014487.Spec : Prop :=
  ∀ n, P7811615188731014487.a n = A339532 (n + 1)

end A339532

/-!
# A339533: Numbers b > 1 such that the smallest four primes, i.e., 2, 3, 5 and 7 are base-b Wieferich primes.

The programs for A339533, there is no canonical definition to state claims against.
-/

/-! ## A339533.P3474445272118486553

`A319061(∑[n]+1)`
-/

namespace A339533.P3474445272118486553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319061 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339533.P3474445272118486553

/-! ## A339533.P2814232179823963597

`or(1, A319061(A000124(n)))`
-/

namespace A339533.P2814232179823963597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319061 (A000124 n).toNat)

end

end A339533.P2814232179823963597

/-! ## A339533.P9161429818925295911

`record[A319061(A000124(val(n+1, 2)))]`
-/

namespace A339533.P9161429818925295911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319061 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339533.P9161429818925295911

/-! ## A339533.P16990639792279774050

`record[A010054(n)*A319061(n+1)]`
-/

namespace A339533.P16990639792279774050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A319061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339533.P16990639792279774050

/-!
# A339534: Numbers b > 1 such that the smallest five primes, i.e., 2, 3, 5, 7 and 11 are base-b Wieferich primes.

The programs for A339534, there is no canonical definition to state claims against.
-/

/-! ## A339534.P9276376180579518904

`A319062(∑[n]+1)`
-/

namespace A339534.P9276376180579518904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339534.P9276376180579518904

/-! ## A339534.P17334534352185964973

`or(1, A319062(A000124(n)))`
-/

namespace A339534.P17334534352185964973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319062 (A000124 n).toNat)

end

end A339534.P17334534352185964973

/-! ## A339534.P1031746684566740706

`record[A319062(A000124(val(n+1, 2)))]`
-/

namespace A339534.P1031746684566740706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319062 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339534.P1031746684566740706

/-! ## A339534.P16660252380343514229

`A319062(A000124(n))+A119537(3*n+2)`
-/

namespace A339534.P16660252380343514229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319062 (A000124 n).toNat + A119537 (3 * n + 2)

end

end A339534.P16660252380343514229

/-!
# A339535: Numbers b > 1 such that the smallest six primes, i.e., 2, 3, 5, 7, 11 and 13 are base-b Wieferich primes.

The programs for A339535, there is no canonical definition to state claims against.
-/

/-! ## A339535.P9492272893028797174

`A319063(∑[n]+1)`
-/

namespace A339535.P9492272893028797174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339535.P9492272893028797174

/-! ## A339535.P11912680276563751096

`or(1, A319063(A000124(n)))`
-/

namespace A339535.P11912680276563751096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319063 (A000124 n).toNat)

end

end A339535.P11912680276563751096

/-! ## A339535.P4427713708434809506

`record[gcd(A319063(n+1), A327618(n))]`
-/

namespace A339535.P4427713708434809506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319063 (n + 1)) (A327618 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339535.P4427713708434809506

/-!
# A339536: Numbers b > 1 such that the smallest seven primes, i.e., 2, 3, 5, 7, 11, 13 and 17 are base-b Wieferich primes.

The programs for A339536, there is no canonical definition to state claims against.
-/

/-! ## A339536.P16921629420344610302

`A319064(∑[n]+1)`
-/

namespace A339536.P16921629420344610302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339536.P16921629420344610302

/-! ## A339536.P12618894087768866034

`or(1, A319064(A000124(n)))`
-/

namespace A339536.P12618894087768866034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319064 (A000124 n).toNat)

end

end A339536.P12618894087768866034

/-! ## A339536.P6989920885843813035

`record[A319064(n+1)/A373036(n+1)]`
-/

namespace A339536.P6989920885843813035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319064 (n + 1) : ℚ) / (A373036 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339536.P6989920885843813035

/-!
# A339537: Numbers b > 1 such that the smallest eight primes, i.e., 2, 3, 5, 7, 11, 13, 17 and 19 are base-b Wieferich primes.

The programs for A339537, there is no canonical definition to state claims against.
-/

/-! ## A339537.P8487278767469775724

`A319065(∑[n]+1)`
-/

namespace A339537.P8487278767469775724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339537.P8487278767469775724

/-! ## A339537.P17826857734567551404

`or(1, A319065(A000124(n)))`
-/

namespace A339537.P17826857734567551404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319065 (A000124 n).toNat)

end

end A339537.P17826857734567551404

/-!
# A339540: Primes p that are the smallest prime congruent to 1 mod k only for k = p - 1.

The programs for A339540, there is no canonical definition to state claims against.
-/

/-! ## A339540.P10848569245615427034

`p?[record[A267758(A116512(n+1))]]`
-/

namespace A339540.P10848569245615427034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A116512 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339540.P10848569245615427034

/-! ## A339540.P6246098447092472897

`p?[record[A267758(n)]]`
-/

namespace A339540.P6246098447092472897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339540.P6246098447092472897

/-! ## A339540.P8295402591101858721

`A056896(A336751((n+1)!))`
-/

namespace A339540.P8295402591101858721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 (A336751 (Nat.factorial (n + 1))).toNat

end

end A339540.P8295402591101858721

/-!
# A339541: a(n) = n + sod(n, sod(n, 10)), where sod(n,b) is the sum of base-b digits of n.

The programs for A339541, there is no canonical definition to state claims against.
-/

/-! ## A339541.P18411838038171448327

`A138530(A007953(n+1)+∑[n])+1+n`
-/

namespace A339541.P18411838038171448327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (A007953 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + 1 + (n : ℤ)

end

end A339541.P18411838038171448327

/-!
# A339542: Primes p such that A339541(p) is prime.

The programs for A339542, there is no canonical definition to state claims against.
-/

/-! ## A339542.P1734149609213312148

`p?[(n+1)*A001222(A339541(n+1))]`
-/

namespace A339542.P1734149609213312148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A339541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339542.P1734149609213312148

/-! ## A339542.P10678397088902127517

`eq[1, A001222(n+1)*A001222(A339541(n+1))]+1`
-/

namespace A339542.P10678397088902127517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (A339541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339542.P10678397088902127517

/-! ## A339542.P15357987981872395179

`record[A020639((n+1)*A339541(n+1))]`
-/

namespace A339542.P15357987981872395179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A339541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339542.P15357987981872395179

/-!
# A339548: 1 - 1/a(n) is the largest resistance value of this form that can be obtained from a resistor network of not more than n one-ohm resistors.

The programs for A339548, there is no canonical definition to state claims against.
-/

/-! ## A339548.P6576976837590336164

`∑{d}[A339808(n+2), A225530(#)]`
-/

namespace A339548.P6576976837590336164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A225530 d

end

end A339548.P6576976837590336164

/-! ## A339548.P15759625765533539609

`(A339808(n+2)+1)%A353141(n+1)`
-/

namespace A339548.P15759625765533539609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339808 (n + 2) + 1) (A353141 (n + 1))

end

end A339548.P15759625765533539609

/-! ## A339548.P13841426401954335343

`A339808(n+2)+A011655(A000085(n))`
-/

namespace A339548.P13841426401954335343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339808 (n + 2) + A011655 (A000085 n).toNat

end

end A339548.P13841426401954335343

/-! ## A339548.P15259478120571556044

`A339808(n+2)+A040001(A002426(n))`
-/

namespace A339548.P15259478120571556044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339808 (n + 2) + A040001 (A002426 n).toNat

end

end A339548.P15259478120571556044

/-! ## A339548.P3430902304727617479

`A339808(n+2)+A000035(A000225(n+3))`
-/

namespace A339548.P3430902304727617479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339808 (n + 2) + A000035 (A000225 (n + 3)).toNat

end

end A339548.P3430902304727617479

/-!
# A339549: a(n) is the product of the binary weights (A000120) of the divisors of n.

The programs for A339549, the canonical program `A339549.P346144717263522426` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339549 has offset 1).

The definition of A339549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339549.P346144717263522426

`∏{d}[n+1, A000120(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339549

/-- `∏{d}[n+1, A000120(#)]` -/
def P346144717263522426.Spec : Prop :=
  ∀ n, P346144717263522426.a n = A339549 (n + 1)

theorem P346144717263522426.correct : P346144717263522426.Spec := by
  intro n
  simp only [A339549, Nat.add_sub_cancel]

end A339549

/-! ## A339549.P10355787854601436405

`∏{d}[n+1, #-A011371(#)]`
-/

namespace A339549.P10355787854601436405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A011371 d)

end

end A339549.P10355787854601436405

namespace A339549

/-- `∏{d}[n+1, #-A011371(#)]` -/
def P10355787854601436405.Spec : Prop :=
  ∀ n, P10355787854601436405.a n = A339549 (n + 1)

end A339549

/-! ## A339549.P5222665663069876590

`∏{d}[n+1, A092391(#)-#]`
-/

namespace A339549.P5222665663069876590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A092391 d - (d : ℤ))

end

end A339549.P5222665663069876590

namespace A339549

/-- `∏{d}[n+1, A092391(#)-#]` -/
def P5222665663069876590.Spec : Prop :=
  ∀ n, P5222665663069876590.a n = A339549 (n + 1)

end A339549

/-! ## A339549.P7770949590253090603

`∏{d}[n+1, log2(A001316(#+#))]`
-/

namespace A339549.P7770949590253090603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.logb 2 (A001316 (d + d) : ℝ)

end

end A339549.P7770949590253090603

namespace A339549

/-- `∏{d}[n+1, log2(A001316(#+#))]` -/
def P7770949590253090603.Spec : Prop :=
  ∀ n, P7770949590253090603.a n = (A339549 (n + 1) : ℝ)

end A339549

/-! ## A339549.P15227752326227279659

`∏{d}[n+1, A023416(A001316(#))]`
-/

namespace A339549.P15227752326227279659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A023416 (A001316 d).toNat

end

end A339549.P15227752326227279659

namespace A339549

/-- `∏{d}[n+1, A023416(A001316(#))]` -/
def P15227752326227279659.Spec : Prop :=
  ∀ n, P15227752326227279659.a n = A339549 (n + 1)

end A339549

/-! ## A339549.P2256278594847372168

`∏{d}[n+1, A001222(A001316(A001316(#)-1))]`
-/

namespace A339549.P2256278594847372168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001222 (A001316 (A001316 d - 1).toNat).toNat

end

end A339549.P2256278594847372168

namespace A339549

/-- `∏{d}[n+1, A001222(A001316(A001316(#)-1))]` -/
def P2256278594847372168.Spec : Prop :=
  ∀ n, P2256278594847372168.a n = A339549 (n + 1)

end A339549

/-! ## A339549.P2935752282728006784

`∏{d}[n+1, #-val(#!, 2)]`
-/

namespace A339549.P2935752282728006784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (SequenceMachineLib.valuation (Nat.factorial d) 2 : ℤ))

end

end A339549.P2935752282728006784

namespace A339549

/-- `∏{d}[n+1, #-val(#!, 2)]` -/
def P2935752282728006784.Spec : Prop :=
  ∀ n, P2935752282728006784.a n = A339549 (n + 1)

end A339549

/-!
# A339552: Numbers k such that the product of the binary weights of the divisors of k (A339549) sets a new record.

The programs for A339552, there is no canonical definition to state claims against.
-/

/-! ## A339552.P3086243379519715697

`eq[A000045(A080791(n)), A017847(n)]`
-/

namespace A339552.P3086243379519715697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080791 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339552.P3086243379519715697

/-!
# A339553: Number of ordered factorizations of n into perfect powers > 1.

The programs for A339553, there is no canonical definition to state claims against.
-/

/-! ## A339553.P4823880888148499047

`A048766(A294068(n+1)^A000196(n))`
-/

namespace A339553.P4823880888148499047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A000196 n : ℤ))).toNat

end

end A339553.P4823880888148499047

/-! ## A339553.P3449926753969280758

`A103921(A294068(n+1)^A003056(n))`
-/

namespace A339553.P3449926753969280758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A339553.P3449926753969280758

/-! ## A339553.P10836089738875186591

`A103921(A294068(n+1)^A110657(n))`
-/

namespace A339553.P10836089738875186591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A110657 n : ℤ))).toNat

end

end A339553.P10836089738875186591

/-! ## A339553.P10637032469355604617

`A215887(A294068(n+1)^A003056(n))`
-/

namespace A339553.P10637032469355604617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A339553.P10637032469355604617

/-! ## A339553.P1120990932089824376

`A328482(A294068(n+1)^A003056(n))`
-/

namespace A339553.P1120990932089824376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328482 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A339553.P1120990932089824376

/-! ## A339553.P14353962459032385263

`A001221(C(A151800(n), A294068(n+1)))`
-/

namespace A339553.P14353962459032385263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A151800 n).toNat (A294068 (n + 1)).toNat)

end

end A339553.P14353962459032385263

/-! ## A339553.P14449297105376439920

`A319000(A000688(n+1)*A181819(n+1))`
-/

namespace A339553.P14449297105376439920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A000688 (n + 1) * A181819 (n + 1)).toNat

end

end A339553.P14449297105376439920

/-! ## A339553.P505171008136599393

`A103921(A294068(n+1)^A002307(n+1))`
-/

namespace A339553.P505171008136599393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A294068 (n + 1) : ℚ) ^ (A002307 (n + 1) : ℤ))).toNat

end

end A339553.P505171008136599393

/-! ## A339553.P6158866880483362541

`A001221((A294068(n+1)^A003056(n))²+1)`
-/

namespace A339553.P6158866880483362541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((A294068 (n + 1) : ℚ) ^ (A003056 n : ℤ)) ^ 2 + 1)).toNat

end

end A339553.P6158866880483362541

/-!
# A339555: Number of subsets of {2..n} such that the product of the elements is a perfect power.

The programs for A339555, there is no canonical definition to state claims against.
-/

/-! ## A339555.P17534561745661559645

`A141162(A321468(n))`
-/

namespace A339555.P17534561745661559645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A321468 n).toNat

end

end A339555.P17534561745661559645

/-! ## A339555.P1499146473889952672

`A239217(A225229(n+1)-A140576(n+1))`
-/

namespace A339555.P1499146473889952672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A225229 (n + 1) - A140576 (n + 1)).toNat

end

end A339555.P1499146473889952672

/-!
# A339557: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-1) - n if a(n) is nonnegative, not already in the sequence, and gcd(a(n-1),n) > 1 or gcd(a(n-2),n) = 1. Otherwise a(n) = a(n-1) + n.

The programs for A339557, there is no canonical definition to state claims against.
-/

/-! ## A339557.P1803802642078281242

`∑[n*A033999(A010928(n))]`
-/

namespace A339557.P1803802642078281242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A010928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339557.P1803802642078281242

/-! ## A339557.P17701103236215237048

`∑[n*A020985(A051573(n))]`
-/

namespace A339557.P17701103236215237048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020985 (A051573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339557.P17701103236215237048

/-! ## A339557.P14659885629134560114

`∑[n*A033999(A062124(n))]`
-/

namespace A339557.P14659885629134560114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A062124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339557.P14659885629134560114

/-! ## A339557.P16287209280513174875

`lcm(A093178(A069072(n)), A226940(n))`
-/

namespace A339557.P16287209280513174875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093178 (A069072 n).toNat) (A226940 n)

end

end A339557.P16287209280513174875

/-! ## A339557.P5095876833866890540

`∑[n*A165326(A309336(n))]`
-/

namespace A339557.P5095876833866890540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165326 (A309336 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339557.P5095876833866890540

/-!
# A339558: Number of divisors of 2n that are the average of a pair of twin primes.

The programs for A339558, the canonical program `A339558.P13443226626530005965` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339558 has offset 1).

The definition of A339558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339558.P1791533562713904874

`∑{d}[n+1, A353463(A060308(#))]`
-/

namespace A339558.P1791533562713904874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353463 (A060308 d).toNat

end

end A339558.P1791533562713904874

namespace A339558

/-- `∑{d}[n+1, A353463(A060308(#))]` -/
def P1791533562713904874.Spec : Prop :=
  ∀ n, P1791533562713904874.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P13443226626530005965

`∑{d}[n+1, A101264(#-A101264(#))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339558

/-- `∑{d}[n+1, A101264(#-A101264(#))]` -/
def P13443226626530005965.Spec : Prop :=
  ∀ n, P13443226626530005965.a n = A339558 (n + 1)

theorem P13443226626530005965.correct : P13443226626530005965.Spec := by
  intro n
  simp only [A339558, Nat.add_sub_cancel]

end A339558

/-! ## A339558.P13476698642716416800

`∑{d}[n+1, A112448(#-A112448(#)²)²]`
-/

namespace A339558.P13476698642716416800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112448 ((d : ℤ) - A112448 d ^ 2).toNat ^ 2

end

end A339558.P13476698642716416800

namespace A339558

/-- `∑{d}[n+1, A112448(#-A112448(#)²)²]` -/
def P13476698642716416800.Spec : Prop :=
  ∀ n, P13476698642716416800.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P15253086333123524057

`∑{d}[n+1, A245716(2*#)]`
-/

namespace A339558.P15253086333123524057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245716 (2 * d)

end

end A339558.P15253086333123524057

namespace A339558

/-- `∑{d}[n+1, A245716(2*#)]` -/
def P15253086333123524057.Spec : Prop :=
  ∀ n, P15253086333123524057.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P2378452926290898177

`∑{d}[n+1, A241425(#+#)]`
-/

namespace A339558.P2378452926290898177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A241425 (d + d)

end

end A339558.P2378452926290898177

namespace A339558

/-- `∑{d}[n+1, A241425(#+#)]` -/
def P2378452926290898177.Spec : Prop :=
  ∀ n, P2378452926290898177.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P16589742033031344348

`∑{d}[n+1, A242041(A005843(#))]`
-/

namespace A339558.P16589742033031344348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A242041 (A005843 d).toNat

end

end A339558.P16589742033031344348

namespace A339558

/-- `∑{d}[n+1, A242041(A005843(#))]` -/
def P16589742033031344348.Spec : Prop :=
  ∀ n, P16589742033031344348.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P6361643931138691253

`∑{d}[n+1, A064911(A000466(#))]`
-/

namespace A339558.P6361643931138691253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064911 (A000466 d).toNat

end

end A339558.P6361643931138691253

namespace A339558

/-- `∑{d}[n+1, A064911(A000466(#))]` -/
def P6361643931138691253.Spec : Prop :=
  ∀ n, P6361643931138691253.a n = A339558 (n + 1)

end A339558

/-! ## A339558.P5867546060647470046

`∑{d}[n+1, A064911(A085046(2*#))]`
-/

namespace A339558.P5867546060647470046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064911 (A085046 (2 * d)).toNat

end

end A339558.P5867546060647470046

namespace A339558

/-- `∑{d}[n+1, A064911(A085046(2*#))]` -/
def P5867546060647470046.Spec : Prop :=
  ∀ n, P5867546060647470046.a n = A339558 (n + 1)

end A339558

/-!
# A339559: Number of integer partitions of n that have an even number of parts and cannot be partitioned into distinct pairs of distinct parts, i.e., that are not the multiset union of any set of edges.

The programs for A339559, there is no canonical definition to state claims against.
-/

/-! ## A339559.P12126589157868211721

`A027187(n)-A339560(n)`
-/

namespace A339559.P12126589157868211721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A339560 n

end

end A339559.P12126589157868211721

/-! ## A339559.P998788002019677287

`A027185(A000124(n))-A339560(n)`
-/

namespace A339559.P998788002019677287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (A000124 n).toNat - A339560 n

end

end A339559.P998788002019677287

/-! ## A339559.P12938047854907471458

`A000041(n)-(A339560(n)+A027193(n))`
-/

namespace A339559.P12938047854907471458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A339560 n + A027193 n)

end

end A339559.P12938047854907471458

/-! ## A339559.P17023470086658750568

`A027193(n)+A081362(n)-A339560(n)`
-/

namespace A339559.P17023470086658750568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + (A081362 n - A339560 n)

end

end A339559.P17023470086658750568

/-! ## A339559.P7722657091170966981

`A338915(n)+A338916(n)-A339560(n)`
-/

namespace A339559.P7722657091170966981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 n + (A338916 n - A339560 n)

end

end A339559.P7722657091170966981

/-! ## A339559.P6436878180183698841

`∑[A002865(n)]-(A339560(n)+A027193(n))`
-/

namespace A339559.P6436878180183698841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A339560 n + A027193 n)

end

end A339559.P6436878180183698841

/-!
# A339560: Number of integer partitions of n that can be partitioned into distinct pairs of distinct parts, i.e., into a set of edges.

The programs for A339560, there is no canonical definition to state claims against.
-/

/-! ## A339560.P12957976176281681261

`A027187(n)-A339559(n)`
-/

namespace A339560.P12957976176281681261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A339559 n

end

end A339560.P12957976176281681261

/-! ## A339560.P3438480453496936027

`A027193(n)+A081362(n)-A339559(n)`
-/

namespace A339560.P3438480453496936027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + (A081362 n - A339559 n)

end

end A339560.P3438480453496936027

/-! ## A339560.P14379626275850344358

`A338915(n)+A338916(n)-A339559(n)`
-/

namespace A339560.P14379626275850344358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 n + (A338916 n - A339559 n)

end

end A339560.P14379626275850344358

/-! ## A339560.P181423085277787422

`(A081362(n)+A000041(n))/2-A339559(n)`
-/

namespace A339560.P181423085277787422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081362 n + A000041 n : ℚ) / 2 - (A339559 n : ℚ)

end

end A339560.P181423085277787422

/-! ## A339560.P8334485847191718015

`A100824(2*n)-A027193(n)-A339559(n)`
-/

namespace A339560.P8334485847191718015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A027193 n - A339559 n

end

end A339560.P8334485847191718015

/-!
# A339561: Products of distinct squarefree semiprimes.

The programs for A339561, there is no canonical definition to state claims against.
-/

/-! ## A339561.P17289681198217755902

`A320911(comp[∑[12*n]])`
-/

namespace A339561.P17289681198217755902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A339561.P17289681198217755902

/-! ## A339561.P7596308158013916775

`record[A328722(n+4)/4]`
-/

namespace A339561.P7596308158013916775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328722 (n + 4) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339561.P7596308158013916775

/-! ## A339561.P8463896914075890879

`lt[0, A339661(n+1)]+1`
-/

namespace A339561.P8463896914075890879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P8463896914075890879

/-! ## A339561.P8459955330185770909

`lt[n, A378221(n+1)]+1`
-/

namespace A339561.P8459955330185770909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P8459955330185770909

/-! ## A339561.P10470814680692502546

`lt[n, A378523(n+1)]+1`
-/

namespace A339561.P10470814680692502546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P10470814680692502546

/-! ## A339561.P6910074164177888211

`lt[sqrt(n), A341635(n+1)]+1`
-/

namespace A339561.P6910074164177888211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A339561.P6910074164177888211

/-! ## A339561.P12524604585229403220

`lt[2*n, A053822(n+1)]+1`
-/

namespace A339561.P12524604585229403220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P12524604585229403220

/-! ## A339561.P17200795438792092262

`lt[2*n, A328722(n+1)]+1`
-/

namespace A339561.P17200795438792092262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P17200795438792092262

/-! ## A339561.P1650299437770168869

`lt[2*n, A347092(n+1)]+1`
-/

namespace A339561.P1650299437770168869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339561.P1650299437770168869

/-! ## A339561.P17677990538275445664

`eq[4, A007427(C(9, 8*n)+n)]`
-/

namespace A339561.P17677990538275445664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (Nat.choose 9 (8 * n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339561.P17677990538275445664

/-!
# A339562: Squarefree numbers with no prime index dividing all the other prime indices.

The programs for A339562, there is no canonical definition to state claims against.
-/

/-! ## A339562.P9941445223371976682

`record[A316437(n+1)%2*A007913(n+1)]`
-/

namespace A339562.P9941445223371976682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316437 (n + 1)) 2 * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P9941445223371976682

/-! ## A339562.P14855010183875831296

`record[A000026(n+1)*A000035(A316437(n+1))]`
-/

namespace A339562.P14855010183875831296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) * A000035 (A316437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P14855010183875831296

/-! ## A339562.P13027243029345637512

`record[A000035(A316437(n+1))*A007913(n+1)]`
-/

namespace A339562.P13027243029345637512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P13027243029345637512

/-! ## A339562.P15869306885745429513

`record[A000035(A316437(n+1))*A007947(n+1)]`
-/

namespace A339562.P15869306885745429513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P15869306885745429513

/-! ## A339562.P15578543980560956564

`record[A000035(A316437(n+1))*A015053(n+1)]`
-/

namespace A339562.P15578543980560956564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P15578543980560956564

/-! ## A339562.P18328940124947249004

`record[A000035(A316437(n+1))*A019554(n+1)]`
-/

namespace A339562.P18328940124947249004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P18328940124947249004

/-! ## A339562.P9553079395427142551

`record[A000035(A316437(n+1))*A019555(n+1)]`
-/

namespace A339562.P9553079395427142551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P9553079395427142551

/-! ## A339562.P3955416603108136650

`record[A000035(A316437(n+1))*A053166(n+1)]`
-/

namespace A339562.P3955416603108136650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A053166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P3955416603108136650

/-! ## A339562.P16174577224344543002

`record[A000035(A316437(n+1))*A097248(n+1)]`
-/

namespace A339562.P16174577224344543002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316437 (n + 1)).toNat * A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339562.P16174577224344543002

/-!
# A339563: Squarefree numbers > 1 whose smallest prime index divides all the other prime indices.

The programs for A339563, there is no canonical definition to state claims against.
-/

/-! ## A339563.P4861826602345966902

`∩[A005117(n+1), comp[A342193(n+1)]]`
-/

namespace A339563.P4861826602345966902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342193 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A339563.P4861826602345966902

/-! ## A339563.P9040151241383642103

`record[A079114(n+1)%A257514(A306413(n+1))]`
-/

namespace A339563.P9040151241383642103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079114 (n + 1)) (A257514 (A306413 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339563.P9040151241383642103

/-! ## A339563.P17409658553928602062

`eq[A013584(A013592(n+1)+1), A087049(n)]`
-/

namespace A339563.P17409658553928602062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (A013592 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339563.P17409658553928602062

/-! ## A339563.P3712494118982544592

`eq[A010051(A250236(n+1)), A105570(n)]`
-/

namespace A339563.P3712494118982544592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A250236 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339563.P3712494118982544592

/-! ## A339563.P2864989071944126461

`lt[lcm(n, -1%∏{e}[n, #])+1, A168208(3*n+1)]`
-/

namespace A339563.P2864989071944126461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168208 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A339563.P2864989071944126461

/-!
# A339564: Number of ways to choose a distinct factor in a factorization of n (pointed factorizations).

The programs for A339564, there is no canonical definition to state claims against.
-/

/-! ## A339564.P16397964754216771010

`A057567(n+1)-A001055(n+1)`
-/

namespace A339564.P16397964754216771010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - A001055 (n + 1)

end

end A339564.P16397964754216771010

/-! ## A339564.P17499824281378672644

`A057567(n+1)-Δ[A096276(n)]`
-/

namespace A339564.P17499824281378672644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - (f1 (n + 1) - f1 n)

end

end A339564.P17499824281378672644

/-! ## A339564.P5309934300412591808

`∑{d}[n+1, A001055(#)]-Δ[A096276(n)]`
-/

namespace A339564.P5309934300412591808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d - (f2 (n + 1) - f2 n)

end

end A339564.P5309934300412591808

/-! ## A339564.P6871618563658238154

`A057567(n+1)-(A028422(n+1)+1)`
-/

namespace A339564.P6871618563658238154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - (A028422 (n + 1) + 1)

end

end A339564.P6871618563658238154

/-! ## A339564.P14289538210824417536

`∑{d}[n+1, A057567(#)*A157658((n+1)/#)]`
-/

namespace A339564.P14289538210824417536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057567 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339564.P14289538210824417536

/-! ## A339564.P2842677477401619142

`A057567(n+1)+A096276(n)-A096276(n+1)`
-/

namespace A339564.P2842677477401619142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) + (A096276 n - A096276 (n + 1))

end

end A339564.P2842677477401619142

/-! ## A339564.P13982746522500872902

`A057567(n+1)-(A167688(n+1)+A033273(n+1))`
-/

namespace A339564.P13982746522500872902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - (A167688 (n + 1) + A033273 (n + 1))

end

end A339564.P13982746522500872902

/-! ## A339564.P9747691630752983481

`A000005(n+1)+A363756(n+1)-A001055(n+1)`
-/

namespace A339564.P9747691630752983481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A363756 (n + 1) - A001055 (n + 1))

end

end A339564.P9747691630752983481

/-! ## A339564.P6731300507234443497

`∑{d}[n+1, A050370(A087560(#))]`
-/

namespace A339564.P6731300507234443497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 (A087560 d).toNat

end

end A339564.P6731300507234443497

/-! ## A339564.P10377433408890886386

`A001055(A087560(n+1))-A001055(n+1)`
-/

namespace A339564.P10377433408890886386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A087560 (n + 1)).toNat - A001055 (n + 1)

end

end A339564.P10377433408890886386

/-! ## A339564.P1156971405226288573

`A057567(n+1)+A380219(n+1)-A057568(n+1)`
-/

namespace A339564.P1156971405226288573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) + (A380219 (n + 1) - A057568 (n + 1))

end

end A339564.P1156971405226288573

/-! ## A339564.P3226550924375821291

`A057567(n+1)-A066032(∑[n+1])`
-/

namespace A339564.P3226550924375821291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - A066032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339564.P3226550924375821291

/-! ## A339564.P13895320985784872849

`A108455(∑[n+2])`
-/

namespace A339564.P13895320985784872849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339564.P13895320985784872849

/-! ## A339564.P11490502130801557652

`xor(1, xor(1, A108455(A000096(n+1))))`
-/

namespace A339564.P11490502130801557652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A108455 (A000096 (n + 1)).toNat))

end

end A339564.P11490502130801557652

/-! ## A339564.P17803906026912833409

`A001055(A119416(n+1))-A001055(n+1)`
-/

namespace A339564.P17803906026912833409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A119416 (n + 1)).toNat - A001055 (n + 1)

end

end A339564.P17803906026912833409

/-!
# A339565: Number of lattice paths from (0,0) to (n,n) using steps (0,1), (1,0), (1,1), (1,2), (2,1).

The programs for A339565, there is no canonical definition to state claims against.
-/

/-! ## A339565.P10101125296696985428

`A382436(∑[4*n])`
-/

namespace A339565.P10101125296696985428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339565.P10101125296696985428

/-! ## A339565.P18190326495770040100

`∏{p}[A382436(A007590(2*n+1)), #]`
-/

namespace A339565.P18190326495770040100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382436 (A007590 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A339565.P18190326495770040100

/-!
# A339566: Primes p such that A007088(p) == 1 (mod p).

The programs for A339566, there is no canonical definition to state claims against.
-/

/-! ## A339566.P7272243386796781665

`A339567(or(2, A339554(n+3)))`
-/

namespace A339566.P7272243386796781665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339567 (Int.lor 2 (A339554 (n + 3))).toNat

end

end A339566.P7272243386796781665

/-!
# A339567: Numbers k such that A007088(k) == 1 (mod k).

The programs for A339567, there is no canonical definition to state claims against.
-/

/-! ## A339567.P8172891333983179321

`lt[A007088(n)%(n+1), 1]+1`
-/

namespace A339567.P8172891333983179321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339567.P8172891333983179321

/-! ## A339567.P7857540673108906016

`eq[1, A007088(n)%A004277(n)]`
-/

namespace A339567.P7857540673108906016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339567.P7857540673108906016

/-! ## A339567.P3061553035380920151

`record[gcd(1-A007088(n), A222243(n))]`
-/

namespace A339567.P3061553035380920151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A007088 n) (A222243 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339567.P3061553035380920151

/-! ## A339567.P6574485451765962559

`record[gcd(A007088(2*n), A222243(2*n+1))]`
-/

namespace A339567.P6574485451765962559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (2 * n)) (A222243 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339567.P6574485451765962559

/-! ## A339567.P6256909324332698624

`eq[1, A185544(2*n)%A233583(n+1)]`
-/

namespace A339567.P6256909324332698624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185544 (2 * n)) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339567.P6256909324332698624

/-!
# A339570: Denote the van der Corput sequence of fractions 1/2, 1/4, 3/4, 1/8, 5/8, 3/8, 7/8, 1/16, ... (A030101/A062383) by v(n), n >= 1. Then a(n) = denominator of v(A014486(n)).

The programs for A339570, there is no canonical definition to state claims against.
-/

/-! ## A339570.P13116640513619606773

`4^round(log(record[xor(3, n)]))`
-/

namespace A339570.P13116640513619606773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)) : ℤ)

end

end A339570.P13116640513619606773

/-! ## A339570.P17864841391666886766

`4^round(log(4*(n+1)))`
-/

namespace A339570.P17864841391666886766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (4 * (n + 1) : ℝ)) : ℤ)

end

end A339570.P17864841391666886766

/-! ## A339570.P15724649969633019795

`4*a(floor(n/sqrt(7)))` with `a(0)=4`
-/

namespace A339570.P15724649969633019795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * a ⌊(n : ℝ) / Real.sqrt (7 : ℝ)⌋.toNat

end

end A339570.P15724649969633019795

/-! ## A339570.P17607694755372089336

`∏[2^Δ[A162550(n)]]`
-/

namespace A339570.P17607694755372089336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162550 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339570.P17607694755372089336

/-!
# A339572: If n even, a(n) = A000071(n/2+1); if n odd, a(n) = A001610((n-1)/2).

The programs for A339572, the canonical program `A339572.P16390960090893938892` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339572 has offset 0).

The definition of A339572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339572.P16390960090893938892

`a(n-2)+a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A339572

/-- `a(n-2)+a(n-4)+1` -/
def P16390960090893938892.Spec : Prop :=
  ∀ n, (P16390960090893938892.a n : ℤ) = A339572 n

theorem P16390960090893938892.correct : P16390960090893938892.Spec := by
  intro n
  simp only [A339572]

end A339572

/-! ## A339572.P15825622310962293062

`A115339(n+1)-1`
-/

namespace A339572.P15825622310962293062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (n + 1) - 1

end

end A339572.P15825622310962293062

namespace A339572

/-- `A115339(n+1)-1` -/
def P15825622310962293062.Spec : Prop :=
  ∀ n, P15825622310962293062.a n = A339572 n

end A339572

/-! ## A339572.P6164805769847176015

`abs(Δ[Δ[A053602(n)]])-1`
-/

namespace A339572.P6164805769847176015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A339572.P6164805769847176015

namespace A339572

/-- `abs(Δ[Δ[A053602(n)]])-1` -/
def P6164805769847176015.Spec : Prop :=
  ∀ n, P6164805769847176015.a n = A339572 n

end A339572

/-! ## A339572.P5461144873736723836

`∑[abs(A051792(n+2))]-1`
-/

namespace A339572.P5461144873736723836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051792 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A339572.P5461144873736723836

namespace A339572

/-- `∑[abs(A051792(n+2))]-1` -/
def P5461144873736723836.Spec : Prop :=
  ∀ n, P5461144873736723836.a n = A339572 n

end A339572

/-! ## A339572.P13045506898528297974

`∑[A000045(A047336(n+1)%(n+1))]`
-/

namespace A339572.P13045506898528297974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A047336 (n + 1)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339572.P13045506898528297974

namespace A339572

/-- `∑[A000045(A047336(n+1)%(n+1))]` -/
def P13045506898528297974.Spec : Prop :=
  ∀ n, P13045506898528297974.a n = A339572 n

end A339572

/-! ## A339572.P9999319580290202630

`∑[A000045((2*n+1)%A001057(n+1))]`
-/

namespace A339572.P9999319580290202630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (2 * n + 1 : ℤ) (A001057 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339572.P9999319580290202630

namespace A339572

/-- `∑[A000045((2*n+1)%A001057(n+1))]` -/
def P9999319580290202630.Spec : Prop :=
  ∀ n, P9999319580290202630.a n = A339572 n

end A339572

/-! ## A339572.P7326081644187774373

`1-4/2+A103609(n+3)+A103609(n)`
-/

namespace A339572.P7326081644187774373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A103609 (n + 3) + A103609 n : ℚ)

end

end A339572.P7326081644187774373

namespace A339572

/-- `1-4/2+A103609(n+3)+A103609(n)` -/
def P7326081644187774373.Spec : Prop :=
  ∀ n, P7326081644187774373.a n = (A339572 n : ℚ)

end A339572

/-! ## A339572.P6095984153137615334

`A000045(A028242(n))+A053602(n)-1`
-/

namespace A339572.P6095984153137615334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028242 n).toNat + (A053602 n - 1)

end

end A339572.P6095984153137615334

namespace A339572

/-- `A000045(A028242(n))+A053602(n)-1` -/
def P6095984153137615334.Spec : Prop :=
  ∀ n, P6095984153137615334.a n = A339572 n

end A339572

/-! ## A339572.P5293492918155081677

`A000071(A004526(n+3))+A000045(A004526(n))`
-/

namespace A339572.P5293492918155081677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A004526 (n + 3)).toNat + A000045 (A004526 n).toNat

end

end A339572.P5293492918155081677

namespace A339572

/-- `A000071(A004526(n+3))+A000045(A004526(n))` -/
def P5293492918155081677.Spec : Prop :=
  ∀ n, P5293492918155081677.a n = A339572 n

end A339572

/-! ## A339572.P876782465588176074

`A094707(n)+A103609(n)-A131524(n+1)`
-/

namespace A339572.P876782465588176074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 n + (A103609 n - A131524 (n + 1))

end

end A339572.P876782465588176074

namespace A339572

/-- `A094707(n)+A103609(n)-A131524(n+1)` -/
def P876782465588176074.Spec : Prop :=
  ∀ n, P876782465588176074.a n = A339572 n

end A339572

/-! ## A339572.P12383667959420027780

`A181974(A134519(n+1))-1`
-/

namespace A339572.P12383667959420027780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A134519 (n + 1)).toNat - 1

end

end A339572.P12383667959420027780

namespace A339572

/-- `A181974(A134519(n+1))-1` -/
def P12383667959420027780.Spec : Prop :=
  ∀ n, P12383667959420027780.a n = A339572 n

end A339572

/-! ## A339572.P11362211442617990415

`A059779(A101881(n))-1`
-/

namespace A339572.P11362211442617990415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059779 (A101881 n).toNat - 1

end

end A339572.P11362211442617990415

namespace A339572

/-- `A059779(A101881(n))-1` -/
def P11362211442617990415.Spec : Prop :=
  ∀ n, P11362211442617990415.a n = A339572 n

end A339572

/-! ## A339572.P4488605151543620885

`A039913(A165157(n+1))-1`
-/

namespace A339572.P4488605151543620885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A165157 (n + 1)).toNat - 1

end

end A339572.P4488605151543620885

namespace A339572

/-- `A039913(A165157(n+1))-1` -/
def P4488605151543620885.Spec : Prop :=
  ∀ n, P4488605151543620885.a n = A339572 n

end A339572

/-! ## A339572.P8813654786119196761

`A117501(A101881(n+1))-1`
-/

namespace A339572.P8813654786119196761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 (A101881 (n + 1)).toNat - 1

end

end A339572.P8813654786119196761

namespace A339572

/-- `A117501(A101881(n+1))-1` -/
def P8813654786119196761.Spec : Prop :=
  ∀ n, P8813654786119196761.a n = A339572 n

end A339572

/-! ## A339572.P7610936421797415324

`A094570(A178218(n+1))-1`
-/

namespace A339572.P7610936421797415324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A178218 (n + 1)).toNat - 1

end

end A339572.P7610936421797415324

namespace A339572

/-- `A094570(A178218(n+1))-1` -/
def P7610936421797415324.Spec : Prop :=
  ∀ n, P7610936421797415324.a n = A339572 n

end A339572

/-! ## A339572.P11838045947165884964

`A094570(A047838(n+2))-1`
-/

namespace A339572.P11838045947165884964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A047838 (n + 2)).toNat - 1

end

end A339572.P11838045947165884964

namespace A339572

/-- `A094570(A047838(n+2))-1` -/
def P11838045947165884964.Spec : Prop :=
  ∀ n, P11838045947165884964.a n = A339572 n

end A339572

/-! ## A339572.P16095869670740441162

`A094570(A074148(n+1)+1)-1`
-/

namespace A339572.P16095869670740441162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A074148 (n + 1) + 1).toNat - 1

end

end A339572.P16095869670740441162

namespace A339572

/-- `A094570(A074148(n+1)+1)-1` -/
def P16095869670740441162.Spec : Prop :=
  ∀ n, P16095869670740441162.a n = A339572 n

end A339572

/-!
# A339573: a(n) = floor(n*(n+1)/6) - 1.

The programs for A339573, the canonical program `A339573.P11861546538728133397` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339573 has offset 2).

The definition of A339573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339573.P11861546538728133397

`∑[floor(n/3)]+n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A339573

/-- `∑[floor(n/3)]+n` -/
def P11861546538728133397.Spec : Prop :=
  ∀ n, P11861546538728133397.a n = A339573 (n + 2)

theorem P11861546538728133397.correct : P11861546538728133397.Spec := by
  intro n
  simp only [A339573, Nat.add_sub_cancel]

end A339573

/-! ## A339573.P15261744347627443247

`floor(C(n, 2)/3+n)`
-/

namespace A339573.P15261744347627443247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 3 + (n : ℚ)⌋

end

end A339573.P15261744347627443247

namespace A339573

/-- `floor(C(n, 2)/3+n)` -/
def P15261744347627443247.Spec : Prop :=
  ∀ n, P15261744347627443247.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P17620327908487908985

`round(C(n, 2)/3+n)`
-/

namespace A339573.P17620327908487908985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 3 + (n : ℚ))

end

end A339573.P17620327908487908985

namespace A339573

/-- `round(C(n, 2)/3+n)` -/
def P17620327908487908985.Spec : Prop :=
  ∀ n, P17620327908487908985.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P15856826549416724243

`∑[ceil(n/(3-acot(n)))]`
-/

namespace A339573.P15856826549416724243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (3 - SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P15856826549416724243

namespace A339573

/-- `∑[ceil(n/(3-acot(n)))]` -/
def P15856826549416724243.Spec : Prop :=
  ∀ n, P15856826549416724243.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P4490078342312998008

`ceil((C(n+3, 2)-4)/3)`
-/

namespace A339573.P4490078342312998008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 3) 2 : ℤ) - 4 : ℚ) / 3⌉

end

end A339573.P4490078342312998008

namespace A339573

/-- `ceil((C(n+3, 2)-4)/3)` -/
def P4490078342312998008.Spec : Prop :=
  ∀ n, P4490078342312998008.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P2393863955417417364

`∑[∑[char[3*n]]%(n+1)]`
-/

namespace A339573.P2393863955417417364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P2393863955417417364

namespace A339573

/-- `∑[∑[char[3*n]]%(n+1)]` -/
def P2393863955417417364.Spec : Prop :=
  ∀ n, (P2393863955417417364.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P10110535830630382786

`∑[a(n-3)+1]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A339573.P10110535830630382786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P10110535830630382786

namespace A339573

/-- `∑[a(n-3)+1]` -/
def P10110535830630382786.Spec : Prop :=
  ∀ n, (P10110535830630382786.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P852061124366131671

`ceil((n+2)/tan(6/(n+3)))`
-/

namespace A339573.P852061124366131671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.tan (6 / (n + 3 : ℚ) : ℝ)⌉

end

end A339573.P852061124366131671

namespace A339573

/-- `ceil((n+2)/tan(6/(n+3)))` -/
def P852061124366131671.Spec : Prop :=
  ∀ n, P852061124366131671.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P3275503438595224205

`floor((n+2)/sinh(6/(n+3)))`
-/

namespace A339573.P3275503438595224205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.sinh (6 / (n + 3 : ℚ) : ℝ)⌋

end

end A339573.P3275503438595224205

namespace A339573

/-- `floor((n+2)/sinh(6/(n+3)))` -/
def P3275503438595224205.Spec : Prop :=
  ∀ n, P3275503438595224205.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P226226745419225519

`ceil((n+2)*cot(6/(n+3)))`
-/

namespace A339573.P226226745419225519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) * Real.cot (6 / (n + 3 : ℚ) : ℝ)⌉

end

end A339573.P226226745419225519

namespace A339573

/-- `ceil((n+2)*cot(6/(n+3)))` -/
def P226226745419225519.Spec : Prop :=
  ∀ n, P226226745419225519.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P13970629840578993206

`round((n+3)/sinh(6/(n+2)))`
-/

namespace A339573.P13970629840578993206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / Real.sinh (6 / (n + 2 : ℚ) : ℝ))

end

end A339573.P13970629840578993206

namespace A339573

/-- `round((n+3)/sinh(6/(n+2)))` -/
def P13970629840578993206.Spec : Prop :=
  ∀ n, P13970629840578993206.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P9730418857467120162

`∑[∑[a(n-3)²]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A339573.P9730418857467120162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P9730418857467120162

namespace A339573

/-- `∑[∑[a(n-3)²]]` -/
def P9730418857467120162.Spec : Prop :=
  ∀ n, (P9730418857467120162.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P2205347810690787654

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A339573.P2205347810690787654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P2205347810690787654

namespace A339573

/-- `∑[∑[floor(a(n-3))]]` -/
def P2205347810690787654.Spec : Prop :=
  ∀ n, (P2205347810690787654.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P7694703305261296109

`abs(a(n-3)+n+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A339573.P7694703305261296109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + (n + 1)

end

end A339573.P7694703305261296109

namespace A339573

/-- `abs(a(n-3)+n+1)` -/
def P7694703305261296109.Spec : Prop :=
  ∀ n, (P7694703305261296109.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P5207698246766674323

`floor(a(n-3)+1+n)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A339573.P5207698246766674323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + 1 + n

end

end A339573.P5207698246766674323

namespace A339573

/-- `floor(a(n-3)+1+n)` -/
def P5207698246766674323.Spec : Prop :=
  ∀ n, (P5207698246766674323.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P5172156116998550745

`ceil(a(n-3)+n+1)` with `a(0)=0, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A339573.P5172156116998550745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + (n + 1)

end

end A339573.P5172156116998550745

namespace A339573

/-- `ceil(a(n-3)+n+1)` -/
def P5172156116998550745.Spec : Prop :=
  ∀ n, (P5172156116998550745.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P10433993019889258128

`round(a(n-3)+n+1)` with `a(0)=0, a(1)=1, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A339573.P10433993019889258128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + (n + 1)

end

end A339573.P10433993019889258128

namespace A339573

/-- `round(a(n-3)+n+1)` -/
def P10433993019889258128.Spec : Prop :=
  ∀ n, (P10433993019889258128.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P18368104115574949035

`∑[∑[a(n-3)^3]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A339573.P18368104115574949035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339573.P18368104115574949035

namespace A339573

/-- `∑[∑[a(n-3)^3]]` -/
def P18368104115574949035.Spec : Prop :=
  ∀ n, (P18368104115574949035.a n : ℤ) = A339573 (n + 2)

end A339573

/-! ## A339573.P3541480678352222500

`floor(a(n-1)-((3-n)/3-2))` with `a(0)=0`
-/

namespace A339573.P3541480678352222500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((3 - (n : ℤ) : ℚ) / 3 - 2)⌋

end

end A339573.P3541480678352222500

namespace A339573

/-- `floor(a(n-1)-((3-n)/3-2))` -/
def P3541480678352222500.Spec : Prop :=
  ∀ n, P3541480678352222500.a n = A339573 (n + 2)

end A339573

/-! ## A339573.P10761294052782322840

`floor(2*n-(n-1-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A339573.P10761294052782322840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 3))

end

end A339573.P10761294052782322840

namespace A339573

/-- `floor(2*n-(n-1-a(n-3)))` -/
def P10761294052782322840.Spec : Prop :=
  ∀ n, P10761294052782322840.a n = A339573 (n + 2)

end A339573

/-!
# A339574: Compound Zeckendorf diagonal sequence in two dimensions, read by antidiagonals.

The programs for A339574, there is no canonical definition to state claims against.
-/

/-! ## A339574.P13837029018093402005

`A175427(A130320(n+1)+1)`
-/

namespace A339574.P13837029018093402005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A130320 (n + 1) + 1).toNat

end

end A339574.P13837029018093402005

/-! ## A339574.P14146438229122223470

`∑[A181819(A361762(n))]`
-/

namespace A339574.P14146438229122223470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A361762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339574.P14146438229122223470

/-! ## A339574.P3039442779093607789

`A182049(A042989(n+1))`
-/

namespace A339574.P3039442779093607789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A042989 (n + 1)).toNat

end

end A339574.P3039442779093607789

/-! ## A339574.P15883444838148626599

`A182049(A188713(n+1))`
-/

namespace A339574.P15883444838148626599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A188713 (n + 1)).toNat

end

end A339574.P15883444838148626599

/-! ## A339574.P13540509023717958816

`A182049(A280996(n+1))`
-/

namespace A339574.P13540509023717958816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A280996 (n + 1)).toNat

end

end A339574.P13540509023717958816

/-!
# A339575: Triangle read by rows: T(n,k) is the number of cells in the k-th row of the diagram constructed in the fourth quadrant with the Dyck path described in the n-th row of A237593, 1 <= k <= n.

The programs for A339575, there is no canonical definition to state claims against.
-/

/-! ## A339575.P10277107373273825265

`∑[char[∑[n]]]-A236109(n+1)`
-/

namespace A339575.P10277107373273825265
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A236109 (n + 1)

end

end A339575.P10277107373273825265

/-! ## A339575.P344739577414899896

`A003056(n)+1-A236109(n+1)`
-/

namespace A339575.P344739577414899896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A236109 (n + 1))

end

end A339575.P344739577414899896

/-! ## A339575.P3817250074239447828

`abs(A236109(n+1)-∑[A010054(n)])`
-/

namespace A339575.P3817250074239447828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236109 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A339575.P3817250074239447828

/-! ## A339575.P10582007046492538941

`abs(A002024(n+1)-A236109(n+1))`
-/

namespace A339575.P10582007046492538941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) - A236109 (n + 1)|

end

end A339575.P10582007046492538941

/-! ## A339575.P5731899410172440434

`A007401(n+1)-(A236109(n+1)+n)`
-/

namespace A339575.P5731899410172440434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - (A236109 (n + 1) + (n : ℤ))

end

end A339575.P5731899410172440434

/-! ## A339575.P16258741921130062695

`A023443(comp[∑[n]]-n-A236109(n+1))`
-/

namespace A339575.P16258741921130062695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A236109 (n + 1)).toNat

end

end A339575.P16258741921130062695

/-! ## A339575.P9922767794256225958

`A014132(n+1)-(A236109(n+1)+n+1)`
-/

namespace A339575.P9922767794256225958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A236109 (n + 1) + (n + 1 : ℤ))

end

end A339575.P9922767794256225958

/-! ## A339575.P5613058045551133821

`A005496(A003056(n)-A236109(n+1))`
-/

namespace A339575.P5613058045551133821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A003056 n - A236109 (n + 1)).toNat

end

end A339575.P5613058045551133821

/-! ## A339575.P1720259477078630756

`(A002024(n+1)-A236109(n+1))%A000040(n+1)`
-/

namespace A339575.P1720259477078630756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) - A236109 (n + 1)) (A000040 (n + 1))

end

end A339575.P1720259477078630756

/-!
# A339576: Row sums of triangle A236104.

The programs for A339576, there is no canonical definition to state claims against.
-/

/-! ## A339576.P2422926632959679382

`∑[A209246(n+1)]`
-/

namespace A339576.P2422926632959679382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339576.P2422926632959679382

/-! ## A339576.P5536541247944164262

`A209246(n+1)+a(A337108(n²))` with `a(0)=1`
-/

namespace A339576.P5536541247944164262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209246 (n + 1) + a (A337108 (n ^ 2)).toNat

end

end A339576.P5536541247944164262

/-! ## A339576.P5013017736787664552

`∑[A353154(n+1)+A353149(n+1)]`
-/

namespace A339576.P5013017736787664552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A353149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339576.P5013017736787664552

/-! ## A339576.P18292601884642271091

`∑[2*A286014(n+1)-A001227(n+1)]`
-/

namespace A339576.P18292601884642271091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286014 (n + 1) - A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339576.P18292601884642271091

/-! ## A339576.P7102522739450408105

`∑[2*A353149(n+1)-A000203(n+1)]`
-/

namespace A339576.P7102522739450408105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353149 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339576.P7102522739450408105

/-!
# A339577: a(n) = product of nonzero entries in row n of A235791.

The programs for A339577, there is no canonical definition to state claims against.
-/

/-! ## A339577.P6301026279167830799

`∏{p}[A348475(n+1), A000720(#)]`
-/

namespace A339577.P6301026279167830799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A339577.P6301026279167830799

/-! ## A339577.P2824740231489995493

`∏{p}[A348475(n+1), A003963(#)]`
-/

namespace A339577.P2824740231489995493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A339577.P2824740231489995493

/-! ## A339577.P5648057273543582909

`∏{p}[A348475(n+1), A049084(#)]`
-/

namespace A339577.P5648057273543582909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p

end

end A339577.P5648057273543582909

/-! ## A339577.P4459555247681554081

`∏{p}[A348475(n+1), A055396(#)]`
-/

namespace A339577.P4459555247681554081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A339577.P4459555247681554081

/-! ## A339577.P10769937366537976224

`∏{p}[A348475(n+1), A056239(#)]`
-/

namespace A339577.P10769937366537976224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A339577.P10769937366537976224

/-!
# A339579: a(n) = least nonnegative integer k such that n*2^k - 1 is composite.

The programs for A339579, there is no canonical definition to state claims against.
-/

/-! ## A339579.P500114844204928296

`A063377(or(n, and(-(n+2), a(n-1))))` with `a(0)=4, a(1)=3`
-/

namespace A339579.P500114844204928296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  A063377 (Int.lor (n : ℤ) (Int.land (-(n + 2 : ℤ)) (a (n - 1)))).toNat

end

end A339579.P500114844204928296

/-!
# A339580: Indices of records in A339579.

The programs for A339580, there is no canonical definition to state claims against.
-/

/-! ## A339580.P9122683082541539286

`A339581(n+1)+(n+2)%(n+1)`
-/

namespace A339580.P9122683082541539286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (n + 1) + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A339580.P9122683082541539286

/-! ## A339580.P5862740207210353968

`A339581(n+1)+char[A136480(n)]`
-/

namespace A339580.P5862740207210353968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339580.P5862740207210353968

/-! ## A339580.P10630683713192806405

`A339581(n+1)+char[A193592(n)]`
-/

namespace A339580.P10630683713192806405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339580.P10630683713192806405

/-! ## A339580.P5935682164823309776

`A339581(n+1)+A004218(n+1)`
-/

namespace A339580.P5935682164823309776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (n + 1) + A004218 (n + 1)

end

end A339580.P5935682164823309776

/-! ## A339580.P16047111472718606010

`A339581(n+1)+A001221(A000079(n))`
-/

namespace A339580.P16047111472718606010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (n + 1) + A001221 (A000079 n).toNat

end

end A339580.P16047111472718606010

/-!
# A339581: Indices of records in A063377.

The programs for A339581, there is no canonical definition to state claims against.
-/

/-! ## A339581.P17465871166292519916

`record[A057331(n)-A186719(n+1)]`
-/

namespace A339581.P17465871166292519916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057331 n - A186719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339581.P17465871166292519916

/-! ## A339581.P15694191266383330026

`A339580(n+1)-char[A027907(n)]`
-/

namespace A339581.P15694191266383330026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339580 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339581.P15694191266383330026

/-! ## A339581.P7440642731387690056

`A339580(n+1)-char[A101447(n)]`
-/

namespace A339581.P7440642731387690056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339580 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339581.P7440642731387690056

/-! ## A339581.P16571688626271509468

`record[gcd(A005602(n+1), A057331(n))]`
-/

namespace A339581.P16571688626271509468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005602 (n + 1)) (A057331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339581.P16571688626271509468

/-! ## A339581.P15435668129267947016

`A339580(n+1)-A001221(A000079(n))`
-/

namespace A339581.P15435668129267947016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339580 (n + 1) - A001221 (A000079 n).toNat

end

end A339581.P15435668129267947016

/-!
# A339583: Leading term in row 2*n of A237270.

The programs for A339583, there is no canonical definition to state claims against.
-/

/-! ## A339583.P7209396708306351916

`A241838(2*(n+1))`
-/

namespace A339583.P7209396708306351916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241838 (2 * (n + 1))

end

end A339583.P7209396708306351916

/-! ## A339583.P8079339012017192550

`lcm(gcd(3, n), A241838(Δ[n²]+1))`
-/

namespace A339583.P8079339012017192550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 3 n : ℤ) (A241838 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A339583.P8079339012017192550

/-! ## A339583.P10874210894766696432

`A237270(A237590(2*(n+1)))`
-/

namespace A339583.P10874210894766696432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A237590 (2 * (n + 1))).toNat

end

end A339583.P10874210894766696432

/-! ## A339583.P8222884742019640702

`A241838(Δ[n²]+1)%A000041(n+6)`
-/

namespace A339583.P8222884742019640702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241838 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A000041 (n + 6))

end

end A339583.P8222884742019640702

/-! ## A339583.P6391594444727976546

`A237270(∑[A237271(2*n+1)+A237271(2*(n+1))])`
-/

namespace A339583.P6391594444727976546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (2 * n + 1) + A237271 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339583.P6391594444727976546

/-!
# A339584: A ternary sequence: a(n) = 1 if n is in A003156, 2 if n is in A003157, 3 if n is in A003158.

The programs for A339584, the canonical program `A339584.P870826048083044991` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339584 has offset 1).

The definition of A339584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092606, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339584.P870826048083044991

`A092606(n+1)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339584

/-- `A092606(n+1)+1` -/
def P870826048083044991.Spec : Prop :=
  ∀ n, P870826048083044991.a n = A339584 (n + 1)

theorem P870826048083044991.correct : P870826048083044991.Spec := by
  intro n
  simp only [A339584, Nat.add_sub_cancel]

end A339584

/-! ## A339584.P6907187723438517216

`val(A161580(n+1)-1, 2)+1`
-/

namespace A339584.P6907187723438517216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161580 (n + 1) - 1).toNat 2 + 1

end

end A339584.P6907187723438517216

namespace A339584

/-- `val(A161580(n+1)-1, 2)+1` -/
def P6907187723438517216.Spec : Prop :=
  ∀ n, (P6907187723438517216.a n : ℤ) = A339584 (n + 1)

end A339584

/-! ## A339584.P1121581469496083358

`A003156(A003159(n+1)-n)-n`
-/

namespace A339584.P1121581469496083358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (A003159 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A339584.P1121581469496083358

namespace A339584

/-- `A003156(A003159(n+1)-n)-n` -/
def P1121581469496083358.Spec : Prop :=
  ∀ n, P1121581469496083358.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P96804273143411845

`A036554(A003159(n+1)-n)-A003159(n+1)`
-/

namespace A339584.P96804273143411845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (A003159 (n + 1) - (n : ℤ)).toNat - A003159 (n + 1)

end

end A339584.P96804273143411845

namespace A339584

/-- `A036554(A003159(n+1)-n)-A003159(n+1)` -/
def P96804273143411845.Spec : Prop :=
  ∀ n, P96804273143411845.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P3055784247611788163

`A000032(Δ[A286044(n+1)]+1)`
-/

namespace A339584.P3055784247611788163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A339584.P3055784247611788163

namespace A339584

/-- `A000032(Δ[A286044(n+1)]+1)` -/
def P3055784247611788163.Spec : Prop :=
  ∀ n, P3055784247611788163.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P5596292436408862765

`A036989(Δ[or(2, A003159(n+1))])`
-/

namespace A339584.P5596292436408862765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A003159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (f1 (n + 1) - f1 n).toNat

end

end A339584.P5596292436408862765

namespace A339584

/-- `A036989(Δ[or(2, A003159(n+1))])` -/
def P5596292436408862765.Spec : Prop :=
  ∀ n, P5596292436408862765.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P15290293888869662867

`xor(A080426(n+2), A087229(A121539(n+1)))`
-/

namespace A339584.P15290293888869662867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080426 (n + 2)) (A087229 (A121539 (n + 1)).toNat)

end

end A339584.P15290293888869662867

namespace A339584

/-- `xor(A080426(n+2), A087229(A121539(n+1)))` -/
def P15290293888869662867.Spec : Prop :=
  ∀ n, P15290293888869662867.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P8816733088364051638

`A091297(comp[A162648(n+1)])+1`
-/

namespace A339584.P8816733088364051638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A339584.P8816733088364051638

namespace A339584

/-- `A091297(comp[A162648(n+1)])+1` -/
def P8816733088364051638.Spec : Prop :=
  ∀ n, P8816733088364051638.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P6902641112904734642

`A091297(lt[0, A091297(n+1)])+1`
-/

namespace A339584.P6902641112904734642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A339584.P6902641112904734642

namespace A339584

/-- `A091297(lt[0, A091297(n+1)])+1` -/
def P6902641112904734642.Spec : Prop :=
  ∀ n, P6902641112904734642.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P15422677887324718491

`A091297(eq[A007814(n+1)%2, A039963(n)])+1`
-/

namespace A339584.P15422677887324718491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A339584.P15422677887324718491

namespace A339584

/-- `A091297(eq[A007814(n+1)%2, A039963(n)])+1` -/
def P15422677887324718491.Spec : Prop :=
  ∀ n, P15422677887324718491.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P9441228805161595578

`3-A245187(A003159(n+1))`
-/

namespace A339584.P9441228805161595578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A245187 (A003159 (n + 1)).toNat

end

end A339584.P9441228805161595578

namespace A339584

/-- `3-A245187(A003159(n+1))` -/
def P9441228805161595578.Spec : Prop :=
  ∀ n, P9441228805161595578.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P3070365265753690157

`A003160(A284390(n+1))-n`
-/

namespace A339584.P3070365265753690157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A284390 (n + 1)).toNat - (n : ℤ)

end

end A339584.P3070365265753690157

namespace A339584

/-- `A003160(A284390(n+1))-n` -/
def P3070365265753690157.Spec : Prop :=
  ∀ n, P3070365265753690157.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P18270099272145791179

`A003160(A003156(n+1)+2)-n`
-/

namespace A339584.P18270099272145791179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A003156 (n + 1) + 2).toNat - (n : ℤ)

end

end A339584.P18270099272145791179

namespace A339584

/-- `A003160(A003156(n+1)+2)-n` -/
def P18270099272145791179.Spec : Prop :=
  ∀ n, P18270099272145791179.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P10107031423105640236

`A040668(A161580(n+1))`
-/

namespace A339584.P10107031423105640236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040668 (A161580 (n + 1)).toNat

end

end A339584.P10107031423105640236

namespace A339584

/-- `A040668(A161580(n+1))` -/
def P10107031423105640236.Spec : Prop :=
  ∀ n, P10107031423105640236.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P8242857826953676408

`A001511(A161580(n+1)-1)`
-/

namespace A339584.P8242857826953676408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A161580 (n + 1) - 1).toNat

end

end A339584.P8242857826953676408

namespace A339584

/-- `A001511(A161580(n+1)-1)` -/
def P8242857826953676408.Spec : Prop :=
  ∀ n, P8242857826953676408.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P8124918694928226036

`A001511(xor(1, A161580(n+1)))`
-/

namespace A339584.P8124918694928226036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.xor 1 (A161580 (n + 1))).toNat

end

end A339584.P8124918694928226036

namespace A339584

/-- `A001511(xor(1, A161580(n+1)))` -/
def P8124918694928226036.Spec : Prop :=
  ∀ n, P8124918694928226036.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P491010256323940482

`A091297(eq[2, A245187(2*n+3)])+1`
-/

namespace A339584.P491010256323940482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A339584.P491010256323940482

namespace A339584

/-- `A091297(eq[2, A245187(2*n+3)])+1` -/
def P491010256323940482.Spec : Prop :=
  ∀ n, P491010256323940482.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P14808026119938535546

`A070402(Δ[A003159(n+1)²])`
-/

namespace A339584.P14808026119938535546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (f1 (n + 1) - f1 n).toNat

end

end A339584.P14808026119938535546

namespace A339584

/-- `A070402(Δ[A003159(n+1)²])` -/
def P14808026119938535546.Spec : Prop :=
  ∀ n, P14808026119938535546.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P16719530727263758089

`A001511(Δ[A003159(n+1)²]-3)`
-/

namespace A339584.P16719530727263758089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (n + 1) - f1 n - 3).toNat

end

end A339584.P16719530727263758089

namespace A339584

/-- `A001511(Δ[A003159(n+1)²]-3)` -/
def P16719530727263758089.Spec : Prop :=
  ∀ n, P16719530727263758089.a n = A339584 (n + 1)

end A339584

/-! ## A339584.P7123877831197590457

`A130784(A328727(n+1))`
-/

namespace A339584.P7123877831197590457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A328727 (n + 1)).toNat

end

end A339584.P7123877831197590457

namespace A339584

/-- `A130784(A328727(n+1))` -/
def P7123877831197590457.Spec : Prop :=
  ∀ n, P7123877831197590457.a n = A339584 (n + 1)

end A339584

/-!
# A339585: Number of trees with n nodes and Z-domination number gamma_{Zg} = gamma_g.

The programs for A339585, there is no canonical definition to state claims against.
-/

/-! ## A339585.P3142690472743276641

`A111439(A116809(n+1))+1`
-/

namespace A339585.P3142690472743276641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A116809 (n + 1)).toNat + 1

end

end A339585.P3142690472743276641

/-! ## A339585.P12191032783306335128

`A261104(A151282(n+1))+1`
-/

namespace A339585.P12191032783306335128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A151282 (n + 1)).toNat + 1

end

end A339585.P12191032783306335128

/-! ## A339585.P15419121497103250485

`A331535(A195186(n+1))+2`
-/

namespace A339585.P15419121497103250485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (A195186 (n + 1)).toNat + 2

end

end A339585.P15419121497103250485

/-! ## A339585.P2038592129187800784

`A000196(A012261(n))+2^n`
-/

namespace A339585.P2038592129187800784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A012261 n).toNat + (2 ^ n : ℤ)

end

end A339585.P2038592129187800784

/-!
# A339586: Number of trees with n nodes and Z-domination number gamma_{Zg} = gamma_{tg}.

The programs for A339586, there is no canonical definition to state claims against.
-/

/-! ## A339586.P16694770637278487576

`or(A000194(A005001(n)), A187070(n))`
-/

namespace A339586.P16694770637278487576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A005001 n).toNat) (A187070 n)

end

end A339586.P16694770637278487576

/-! ## A339586.P17942078539758202899

`or(A000196(A239230(n)), A166486(n))`
-/

namespace A339586.P17942078539758202899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A239230 n).toNat) (A166486 n)

end

end A339586.P17942078539758202899

/-! ## A339586.P1535520432638661627

`or(A000194(A086828(n+1)), A187070(n))`
-/

namespace A339586.P1535520432638661627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A086828 (n + 1)).toNat) (A187070 n)

end

end A339586.P1535520432638661627

/-! ## A339586.P4433103675055462832

`or(A000194(A086828(n+1)), A257564(n))`
-/

namespace A339586.P4433103675055462832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A086828 (n + 1)).toNat) (A257564 n)

end

end A339586.P4433103675055462832

/-! ## A339586.P6926177508582243599

`A324774(Δ[A324767(n+1)+A339109(n)²]+1)`
-/

namespace A339586.P6926177508582243599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324767 (n + 1) + A339109 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 (f1 (n + 1) - f1 n + 1).toNat

end

end A339586.P6926177508582243599

/-!
# A339587: Number of trees with n nodes and Z-domination number gamma_{Zg} = gamma.

The programs for A339587, there is no canonical definition to state claims against.
-/

/-! ## A339587.P5600166502575239508

`A102096(A102086(n))+A083658(n)`
-/

namespace A339587.P5600166502575239508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A102086 n).toNat + A083658 n

end

end A339587.P5600166502575239508

/-! ## A339587.P3434264478908433194

`A244644(A129853(n))+1`
-/

namespace A339587.P3434264478908433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A129853 n).toNat + 1

end

end A339587.P3434264478908433194

/-! ## A339587.P10608361797699297113

`A057574(n)+A042581(n)`
-/

namespace A339587.P10608361797699297113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n + A042581 n

end

end A339587.P10608361797699297113

/-! ## A339587.P12625908073256776784

`A147660(n)+A057574(n)`
-/

namespace A339587.P12625908073256776784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147660 n + A057574 n

end

end A339587.P12625908073256776784

/-! ## A339587.P1547523612137026673

`A057574(n)+∑[A212804(n)]`
-/

namespace A339587.P1547523612137026673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339587.P1547523612137026673

/-!
# A339588: Number of trees with n nodes and Z-domination number gamma_{Zg} > gamma_{t}.

The programs for A339588, there is no canonical definition to state claims against.
-/

/-! ## A339588.P7148250143086253237

`A235199(C(lt[0, ∏{digits}[n, (1-#)²]], 6))`
-/

namespace A339588.P7148250143086253237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 6)

end

end A339588.P7148250143086253237

/-! ## A339588.P8748105138127350780

`A164836(A005676(n))`
-/

namespace A339588.P8748105138127350780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (A005676 n).toNat

end

end A339588.P8748105138127350780

/-! ## A339588.P17516563232397988611

`A010422(A369434(n))`
-/

namespace A339588.P17516563232397988611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010422 (A369434 n).toNat

end

end A339588.P17516563232397988611

/-! ## A339588.P5347607590408906696

`A164836(A352066(n))`
-/

namespace A339588.P5347607590408906696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (A352066 n).toNat

end

end A339588.P5347607590408906696

/-! ## A339588.P3847063989064385273

`A164836(A365079(n))`
-/

namespace A339588.P3847063989064385273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (A365079 n).toNat

end

end A339588.P3847063989064385273

/-!
# A339589: Number of trees with n nodes and Z-domination number gamma_{Zg} < gamma_{t}.

The programs for A339589, there is no canonical definition to state claims against.
-/

/-! ## A339589.P17969646603159837916

`A091070(A034296(n))`
-/

namespace A339589.P17969646603159837916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091070 (A034296 n).toNat

end

end A339589.P17969646603159837916

/-! ## A339589.P12139092008755531250

`A346288(A220418(n+1))`
-/

namespace A339589.P12139092008755531250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346288 (A220418 (n + 1)).toNat

end

end A339589.P12139092008755531250

/-! ## A339589.P176758149826728429

`A091070(lt[A330422(n), 10])`
-/

namespace A339589.P176758149826728429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330422 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091070 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339589.P176758149826728429

/-! ## A339589.P17822466752344843114

`A091070(lt[A007318(2*n), 6])`
-/

namespace A339589.P17822466752344843114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091070 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339589.P17822466752344843114

/-! ## A339589.P9595092789276220429

`A091070(round((n+3)²/12)*A340812(n))`
-/

namespace A339589.P9595092789276220429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091070 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) * A340812 n).toNat

end

end A339589.P9595092789276220429

/-!
# A339593: Number of independent sets in Catalan graph on n nodes.

The programs for A339593, there is no canonical definition to state claims against.
-/

/-! ## A339593.P11465193087598925701

`eq[A134868(n+5), A140361(A064720(n+1))]`
-/

namespace A339593.P11465193087598925701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A064720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339593.P11465193087598925701

/-!
# A339594: Two-dimensional Kempner (or Kempner-Smarandache) numbers.

The programs for A339594, there is no canonical definition to state claims against.
-/

/-! ## A339594.P16944900578505467891

`A067666(∏{p}[n+1, #^val(n+1, #²)]*A053585(n+1))`
-/

namespace A339594.P16944900578505467891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * A053585 (n + 1)).toNat

end

end A339594.P16944900578505467891

/-! ## A339594.P7796183462228899391

`A071327(n+1)+A067666(A053585(n+1))`
-/

namespace A339594.P7796183462228899391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1) + A067666 (A053585 (n + 1)).toNat

end

end A339594.P7796183462228899391

/-!
# A339595: Three-dimensional Kempner (or Kempner-Smarandache) numbers.

The programs for A339595, there is no canonical definition to state claims against.
-/

/-! ## A339595.P15596292907067001343

`A008475(A033677(n+1)^A013606(n+1))`
-/

namespace A339595.P15596292907067001343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((A033677 (n + 1) : ℚ) ^ (A013606 (n + 1) : ℤ))).toNat

end

end A339595.P15596292907067001343

/-! ## A339595.P18111476815285128327

`A122411(A033677(n+1)^A013606(n+1))`
-/

namespace A339595.P18111476815285128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122411 (SequenceMachineLib.roundAway ((A033677 (n + 1) : ℚ) ^ (A013606 (n + 1) : ℤ))).toNat

end

end A339595.P18111476815285128327

/-!
# A339596: Four-dimensional Kempner (or Kempner-Smarandache) numbers.

The programs for A339596, there is no canonical definition to state claims against.
-/

/-! ## A339596.P7441997176137172414

`∑{d}[n+1, #^4]-A350403(∑{d}[n+1, (#%(n+1))^4])`
-/

namespace A339596.P7441997176137172414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 4 : ℕ) : ℤ) - A350403 (∑ d ∈ Nat.divisors (f2 n), (d % (n + 1)) ^ 4)

end

end A339596.P7441997176137172414

/-!
# A339597: When 2*n+1 first appears in A086799.

The programs for A339597, the canonical program `A339597.P9563907949436141931` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339597 has offset 0).

The definition of A339597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339597.P17963648459658352218

`A129760(n+1)+n+1`
-/

namespace A339597.P17963648459658352218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1) + (n + 1 : ℤ)

end

end A339597.P17963648459658352218

namespace A339597

/-- `A129760(n+1)+n+1` -/
def P17963648459658352218.Spec : Prop :=
  ∀ n, P17963648459658352218.a n = A339597 n

end A339597

/-! ## A339597.P9563907949436141931

`2*(n+1)-A006519(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339597

/-- `2*(n+1)-A006519(n+1)` -/
def P9563907949436141931.Spec : Prop :=
  ∀ n, P9563907949436141931.a n = A339597 n

theorem P9563907949436141931.correct : P9563907949436141931.Spec := by
  intro n
  simp only [A339597]

end A339597

/-! ## A339597.P11446661507131468092

`∑[2-Δ[and(n, -n)]]`
-/

namespace A339597.P11446661507131468092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339597.P11446661507131468092

namespace A339597

/-- `∑[2-Δ[and(n, -n)]]` -/
def P11446661507131468092.Spec : Prop :=
  ∀ n, P11446661507131468092.a n = A339597 n

end A339597

/-! ## A339597.P7842433852630952804

`and(n, n+1)+1+n`
-/

namespace A339597.P7842433852630952804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

end

end A339597.P7842433852630952804

namespace A339597

/-- `and(n, n+1)+1+n` -/
def P7842433852630952804.Spec : Prop :=
  ∀ n, (P7842433852630952804.a n : ℤ) = A339597 n

end A339597

/-! ## A339597.P16317234174011741321

`3*n+2-or(n, n+1)`
-/

namespace A339597.P16317234174011741321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - (Nat.lor n (n + 1) : ℤ))

end

end A339597.P16317234174011741321

namespace A339597

/-- `3*n+2-or(n, n+1)` -/
def P16317234174011741321.Spec : Prop :=
  ∀ n, P16317234174011741321.a n = A339597 n

end A339597

/-! ## A339597.P13776559023474670687

`∑[2-Δ[n-and(n, n-1)]]`
-/

namespace A339597.P13776559023474670687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339597.P13776559023474670687

namespace A339597

/-- `∑[2-Δ[n-and(n, n-1)]]` -/
def P13776559023474670687.Spec : Prop :=
  ∀ n, P13776559023474670687.a n = A339597 n

end A339597

/-! ## A339597.P5912148061799425927

`2*n+or(n, -(n+2))+3`
-/

namespace A339597.P5912148061799425927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (Int.lor (n : ℤ) (-(n + 2 : ℤ)) + 3)

end

end A339597.P5912148061799425927

namespace A339597

/-- `2*n+or(n, -(n+2))+3` -/
def P5912148061799425927.Spec : Prop :=
  ∀ n, P5912148061799425927.a n = A339597 n

end A339597

/-! ## A339597.P2811248414324204089

`2*(n+1)-2^val(n+1, 2)`
-/

namespace A339597.P2811248414324204089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A339597.P2811248414324204089

namespace A339597

/-- `2*(n+1)-2^val(n+1, 2)` -/
def P2811248414324204089.Spec : Prop :=
  ∀ n, P2811248414324204089.a n = A339597 n

end A339597

/-! ## A339597.P9931350705444346487

`Δ[n²]-and(n, n-2-2*n)`
-/

namespace A339597.P9931350705444346487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))

end

end A339597.P9931350705444346487

namespace A339597

/-- `Δ[n²]-and(n, n-2-2*n)` -/
def P9931350705444346487.Spec : Prop :=
  ∀ n, P9931350705444346487.a n = A339597 n

end A339597

/-! ## A339597.P3305608549626779173

`2*n+1-floor(xor(n, n+1)/2)`
-/

namespace A339597.P3305608549626779173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊(Nat.xor n (n + 1) : ℚ) / 2⌋

end

end A339597.P3305608549626779173

namespace A339597

/-- `2*n+1-floor(xor(n, n+1)/2)` -/
def P3305608549626779173.Spec : Prop :=
  ∀ n, P3305608549626779173.a n = A339597 n

end A339597

/-! ## A339597.P17510514824522814088

`ceil(2*n+1-xor(n, n+1)/2)`
-/

namespace A339597.P17510514824522814088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) - (Nat.xor n (n + 1) : ℚ) / 2⌉

end

end A339597.P17510514824522814088

namespace A339597

/-- `ceil(2*n+1-xor(n, n+1)/2)` -/
def P17510514824522814088.Spec : Prop :=
  ∀ n, P17510514824522814088.a n = A339597 n

end A339597

/-! ## A339597.P14940460923848987033

`round(2*n+1-xor(n, n+1)/2)`
-/

namespace A339597.P14940460923848987033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) - (Nat.xor n (n + 1) : ℚ) / 2)

end

end A339597.P14940460923848987033

namespace A339597

/-- `round(2*n+1-xor(n, n+1)/2)` -/
def P14940460923848987033.Spec : Prop :=
  ∀ n, P14940460923848987033.a n = A339597 n

end A339597

/-! ## A339597.P1481156429607963697

`or(n+1, -(n+1))+n+2+n`
-/

namespace A339597.P1481156429607963697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) + (n + 2 + n : ℤ)

end

end A339597.P1481156429607963697

namespace A339597

/-- `or(n+1, -(n+1))+n+2+n` -/
def P1481156429607963697.Spec : Prop :=
  ∀ n, P1481156429607963697.a n = A339597 n

end A339597

/-! ## A339597.P10892605508340241932

`2*(n+1)-(xor(n, n+1)+1)/2`
-/

namespace A339597.P10892605508340241932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) - (Nat.xor n (n + 1) + 1 : ℚ) / 2

end

end A339597.P10892605508340241932

namespace A339597

/-- `2*(n+1)-(xor(n, n+1)+1)/2` -/
def P10892605508340241932.Spec : Prop :=
  ∀ n, P10892605508340241932.a n = (A339597 n : ℚ)

end A339597

/-! ## A339597.P17634096227858997223

`1-(and(n, n-2-2*n)-2*n)`
-/

namespace A339597.P17634096227858997223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.land (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ)) - (2 * n : ℤ))

end

end A339597.P17634096227858997223

namespace A339597

/-- `1-(and(n, n-2-2*n)-2*n)` -/
def P17634096227858997223.Spec : Prop :=
  ∀ n, P17634096227858997223.a n = A339597 n

end A339597

/-! ## A339597.P10621338480495288140

`(2*n+1)%or(n, n+1)+n+1`
-/

namespace A339597.P10621338480495288140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.lor n (n + 1) + (n + 1)

end

end A339597.P10621338480495288140

namespace A339597

/-- `(2*n+1)%or(n, n+1)+n+1` -/
def P10621338480495288140.Spec : Prop :=
  ∀ n, (P10621338480495288140.a n : ℤ) = A339597 n

end A339597

/-! ## A339597.P13148729043438819972

`Δ[n²]-A135481(n)`
-/

namespace A339597.P13148729043438819972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A135481 n

end

end A339597.P13148729043438819972

namespace A339597

/-- `Δ[n²]-A135481(n)` -/
def P13148729043438819972.Spec : Prop :=
  ∀ n, P13148729043438819972.a n = A339597 n

end A339597

/-! ## A339597.P10808576643199817332

`Δ[n²-A136013(n)]`
-/

namespace A339597.P10808576643199817332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A136013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339597.P10808576643199817332

namespace A339597

/-- `Δ[n²-A136013(n)]` -/
def P10808576643199817332.Spec : Prop :=
  ∀ n, P10808576643199817332.a n = A339597 n

end A339597

/-! ## A339597.P6673942137277043146

`Δ[(n+1)²-A159699(n)]`
-/

namespace A339597.P6673942137277043146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A159699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339597.P6673942137277043146

namespace A339597

/-- `Δ[(n+1)²-A159699(n)]` -/
def P6673942137277043146.Spec : Prop :=
  ∀ n, P6673942137277043146.a n = A339597 n

end A339597

/-! ## A339597.P4263215901157154888

`5*(n+1)-A302338(n+1)`
-/

namespace A339597.P4263215901157154888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A302338 (n + 1)

end

end A339597.P4263215901157154888

namespace A339597

/-- `5*(n+1)-A302338(n+1)` -/
def P4263215901157154888.Spec : Prop :=
  ∀ n, P4263215901157154888.a n = A339597 n

end A339597

/-!
# A339598: Numbers k such that k | Sum_{i=1..k} A000045(i) and k+1 | Sum_{i=1..k+1} A000045(i).

The programs for A339598, there is no canonical definition to state claims against.
-/

/-! ## A339598.P5197022883657033199

`A331977(A033495(n))`
-/

namespace A339598.P5197022883657033199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331977 (A033495 n).toNat

end

end A339598.P5197022883657033199

