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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
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
import Seq.B001.C009
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
# A324201: 

The programs for A324201, there is no canonical definition to state claims against.
-/

/-! ## A324201.P16249008471054514704

`A062457(A000043(n+1))`
-/

namespace A324201.P16249008471054514704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (A000043 (n + 1)).toNat

end

end A324201.P16249008471054514704

/-! ## A324201.P17575707638344939810

`A000040(A237057(n))^A237057(n)`
-/

namespace A324201.P17575707638344939810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A237057 n).toNat : ℚ) ^ (A237057 n : ℤ)

end

end A324201.P17575707638344939810

/-! ## A324201.P10157135019375837395

`A000040(A215799(n+1))^A215799(n+1)`
-/

namespace A324201.P10157135019375837395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A215799 (n + 1)).toNat : ℚ) ^ (A215799 (n + 1) : ℤ)

end

end A324201.P10157135019375837395

/-! ## A324201.P5343680059339439759

`A000040(eq[0, A127587(n)])^A000043(n+1)`
-/

namespace A324201.P5343680059339439759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) ^ (A000043 (n + 1) : ℤ)

end

end A324201.P5343680059339439759

/-!
# A324202: a(n) = A046523(A332461(n)), where A332461(n) = Product_{d|n, d>1} prime(1+A297167(d)).

The programs for A324202, there is no canonical definition to state claims against.
-/

/-! ## A324202.P155316715141609367

`A046523(A332461(n+1))`
-/

namespace A324202.P155316715141609367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A332461 (n + 1)).toNat

end

end A324202.P155316715141609367

/-! ## A324202.P10947550962727974204

`A007947(A037019(n+1))*A324537(A071364(n+1))`
-/

namespace A324202.P10947550962727974204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A037019 (n + 1)).toNat * A324537 (A071364 (n + 1)).toNat

end

end A324202.P10947550962727974204

/-! ## A324202.P2424569004338832628

`A324209(2*A324203(n+1)²)`
-/

namespace A324202.P2424569004338832628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324209 (2 * A324203 (n + 1) ^ 2).toNat

end

end A324202.P2424569004338832628

/-! ## A324202.P988698495407205652

`A046523(C(A083262(n+1), ∏{e}[n+1, #]))`
-/

namespace A324202.P988698495407205652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (A083262 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A324202.P988698495407205652

/-! ## A324202.P9625794041704070266

`A055238(A082588(n+1))*A101296(n+1)`
-/

namespace A324202.P9625794041704070266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055238 (A082588 (n + 1)).toNat * A101296 (n + 1)

end

end A324202.P9625794041704070266

/-!
# A324204: a(n) is the smallest denominator D of the fraction N/D with 1 <= D < 2^n which is closest to (3/2)^n.

The programs for A324204, there is no canonical definition to state claims against.
-/

/-! ## A324204.P16927705471441474557

`ceil(A063528(n+1)/3^(n+1))`
-/

namespace A324204.P16927705471441474557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063528 (n + 1) : ℚ) / (3 ^ (n + 1) : ℚ)⌉

end

end A324204.P16927705471441474557

/-! ## A324204.P2581291093727638058

`ceil(A069022(n+1)/3^(n+1))`
-/

namespace A324204.P2581291093727638058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069022 (n + 1) : ℚ) / (3 ^ (n + 1) : ℚ)⌉

end

end A324204.P2581291093727638058

/-!
# A324209: T(n, k) is the largest number of permutations of a partition of n in k parts. T(n, k) read by antidiagonals, for n >= 1 and 1 <= k <= n.

The programs for A324209, there is no canonical definition to state claims against.
-/

/-! ## A324209.P5117523892833868278

`A102351(A122016(n)+3)`
-/

namespace A324209.P5117523892833868278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (A122016 n + 3).toNat

end

end A324209.P5117523892833868278

/-! ## A324209.P7680357930851128281

`A348687(A048993(n))+A023532(n)`
-/

namespace A324209.P7680357930851128281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 (A048993 n).toNat + A023532 n

end

end A324209.P7680357930851128281

/-! ## A324209.P11181112116247540281

`A003987(A321312(n)+A027935(n))`
-/

namespace A324209.P11181112116247540281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A321312 n + A027935 n).toNat

end

end A324209.P11181112116247540281

/-! ## A324209.P2762394318737947184

`gcd(A140401(A322264(n+1)), A213999(n))`
-/

namespace A324209.P2762394318737947184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140401 (A322264 (n + 1)).toNat) (A213999 n)

end

end A324209.P2762394318737947184

/-!
# A324210: Squarefree numbers k such that the sum of the distinct prime factors of k is twice the difference between the largest and the smallest prime factors of k.

The programs for A324210, there is no canonical definition to state claims against.
-/

/-! ## A324210.P7617373274794580893

`record[A007913(A200070(n+1))]`
-/

namespace A324210.P7617373274794580893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A200070 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324210.P7617373274794580893

/-! ## A324210.P4790083050876981473

`filter[A200070(n+1), A008966(#)]`
-/

namespace A324210.P4790083050876981473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A324210.P4790083050876981473

/-! ## A324210.P16749999857295737875

`filter[A200070(n+1), A354819(#)]`
-/

namespace A324210.P16749999857295737875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A324210.P16749999857295737875

/-! ## A324210.P3379879907323876150

`filter[A200070(n+1), A380469(#)]`
-/

namespace A324210.P3379879907323876150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A324210.P3379879907323876150

/-! ## A324210.P7632244392513803709

`filter[A200070(n+1), A323154(#)]`
-/

namespace A324210.P7632244392513803709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A324210.P7632244392513803709

/-! ## A324210.P2072665622348339014

`filter[A200070(n+1), A353559(#)]`
-/

namespace A324210.P2072665622348339014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A324210.P2072665622348339014

/-!
# A324211: Numbers k such that the sum of the binary digits of the exponents of the prime factorization of k is odd and k is a product of primorials.

The programs for A324211, there is no canonical definition to state claims against.
-/

/-! ## A324211.P5352659321071956650

`∩[A000028(n+1), A025487(n+1)]`
-/

namespace A324211.P5352659321071956650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324211.P5352659321071956650

/-! ## A324211.P17206030281218451306

`∩[A000028(n+1), A178799(n)+a(n-1)]` with `a(0)=1`
-/

namespace A324211.P17206030281218451306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A178799 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324211.P17206030281218451306

/-! ## A324211.P14795263195164874442

`∩[A000028(n+1), A051466(A329898(n+1))]`
-/

namespace A324211.P14795263195164874442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324211.P14795263195164874442

/-! ## A324211.P6209407401334210208

`record[A046523(A000028(n+1))]`
-/

namespace A324211.P6209407401334210208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324211.P6209407401334210208

/-! ## A324211.P1254627145589592627

`record[A083260(A000028(n+2))]`
-/

namespace A324211.P1254627145589592627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (A000028 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324211.P1254627145589592627

/-!
# A324212: Numbers k such that the sum of the binary digits of the exponents of the prime factorization of k is even and k is a product of primorials.

The programs for A324212, there is no canonical definition to state claims against.
-/

/-! ## A324212.P2125759085543253415

`filter[A025487(n+1), A359464(#)]`
-/

namespace A324212.P2125759085543253415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A324212.P2125759085543253415

/-! ## A324212.P7205634795710628732

`record[A064179(A329899(n+1))*A329899(n+1)]`
-/

namespace A324212.P7205634795710628732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A329899 (n + 1)).toNat * A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324212.P7205634795710628732

/-! ## A324212.P18341937023084779805

`record[A051466(n+2)*A064179(A051466(n+2))]`
-/

namespace A324212.P18341937023084779805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2) * A064179 (A051466 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324212.P18341937023084779805

/-! ## A324212.P1731610155742607409

`∩[A000379(n+1), A025487(n+1)]`
-/

namespace A324212.P1731610155742607409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324212.P1731610155742607409

/-! ## A324212.P5298411857566683320

`record[A046523(A000379(n+1))]`
-/

namespace A324212.P5298411857566683320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324212.P5298411857566683320

/-!
# A324213: Number of k with 0 <= k <= sigma(n) such that n-k and 2n-sigma(n) are relatively prime.

The programs for A324213, there is no canonical definition to state claims against.
-/

/-! ## A324213.P4549260360174339155

`A325815(n+1)+A034444(n+1)`
-/

namespace A324213.P4549260360174339155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325815 (n + 1) + A034444 (n + 1)

end

end A324213.P4549260360174339155

/-! ## A324213.P1555154709821627433

`1+A000203(n+1)-A325816(n+1)`
-/

namespace A324213.P1555154709821627433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) - A325816 (n + 1)

end

end A324213.P1555154709821627433

/-! ## A324213.P16810617327261938417

`A088580(n+1)-A325816(n+1)`
-/

namespace A324213.P16810617327261938417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A325816 (n + 1)

end

end A324213.P16810617327261938417

/-! ## A324213.P128437053641555234

`A325815(n+1)+2^A001221(n+1)`
-/

namespace A324213.P128437053641555234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325815 (n + 1) : ℚ) + (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A324213.P128437053641555234

/-! ## A324213.P18221995061452439289

`A325815(n+1)+A000005(A007947(n+1))`
-/

namespace A324213.P18221995061452439289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325815 (n + 1) + A000005 (A007947 (n + 1)).toNat

end

end A324213.P18221995061452439289

/-!
# A324217: Number of connected 2n-regular loopless multigraphs on seven unlabeled nodes.

The programs for A324217, there is no canonical definition to state claims against.
-/

/-! ## A324217.P15866363673570252360

`A328682(A100039(n+2))`
-/

namespace A324217.P15866363673570252360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A100039 (n + 2)).toNat

end

end A324217.P15866363673570252360

/-! ## A324217.P11096555990052714089

`record[Δ[A328682(A167487(n))]]`
-/

namespace A324217.P11096555990052714089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167487 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324217.P11096555990052714089

/-! ## A324217.P1521443583451735167

`record[A328682(A167487(n+2))]`
-/

namespace A324217.P1521443583451735167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167487 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324217.P1521443583451735167

/-! ## A324217.P13425908140589170389

`record[A328682(A000124(n)+6)]`
-/

namespace A324217.P13425908140589170389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A000124 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324217.P13425908140589170389

/-! ## A324217.P13975031765472810854

`A328682(eq[8, A140756(n+1)])`
-/

namespace A324217.P13975031765472810854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324217.P13975031765472810854

/-!
# A324218: Number of connected n-regular loopless multigraphs on six unlabeled nodes.

The programs for A324218, there is no canonical definition to state claims against.
-/

/-! ## A324218.P11589283575320446852

`A328682(eq[6, A002262(n)])`
-/

namespace A324218.P11589283575320446852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324218.P11589283575320446852

/-! ## A324218.P17006448524757475127

`A328682(eq[64, A059268(n)])`
-/

namespace A324218.P17006448524757475127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324218.P17006448524757475127

/-! ## A324218.P3174748792176490606

`A328682(A167499(n+5)+1)`
-/

namespace A324218.P3174748792176490606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167499 (n + 5) + 1).toNat

end

end A324218.P3174748792176490606

/-! ## A324218.P16851040271142648047

`A328682(eq[7, A002260(n+1)])`
-/

namespace A324218.P16851040271142648047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324218.P16851040271142648047

/-! ## A324218.P12208756274140774250

`A328682(eq[13, A104763(n+1)])`
-/

namespace A324218.P12208756274140774250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324218.P12208756274140774250

/-!
# A324221: Number of connected 2n-regular loopless multigraphs with five nodes.

The programs for A324221, there is no canonical definition to state claims against.
-/

/-! ## A324221.P11983777649466994499

`A328682(A100038(n+2))`
-/

namespace A324221.P11983777649466994499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A100038 (n + 2)).toNat

end

end A324221.P11983777649466994499

/-! ## A324221.P2281096722413769669

`record[Δ[A328682(A077169(n))]]`
-/

namespace A324221.P2281096722413769669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A077169 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324221.P2281096722413769669

/-! ## A324221.P8065328307422519202

`record[Δ[A328682(A167499(n))]]`
-/

namespace A324221.P8065328307422519202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167499 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324221.P8065328307422519202

/-! ## A324221.P9144116637880226050

`record[A328682(A077169(n+2))]`
-/

namespace A324221.P9144116637880226050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A077169 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324221.P9144116637880226050

/-! ## A324221.P15695051589838747087

`record[A328682(A167499(n+2))]`
-/

namespace A324221.P15695051589838747087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167499 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324221.P15695051589838747087

/-!
# A324222: a(n) is defined by the condition that the decimal expansion of Sum_{n>0} 1/a(n)^n = 1/a(1)^1 + 1/a(2)^2 + 1/a(3)^3 + ... begins with the concatenation of these numbers; also a(1) = 3 and a(n) > a(n-1).

The programs for A324222, there is no canonical definition to state claims against.
-/

/-! ## A324222.P16096794490125902941

`A219839(A236914(3*(n+1)))+3`
-/

namespace A324222.P16096794490125902941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A236914 (3 * (n + 1))).toNat + 3

end

end A324222.P16096794490125902941

/-!
# A324223: a(n) is defined by the condition that the decimal expansion of Sum_{n>0} 1/a(n)^n = 1/a(1)^1 - 1/a(2)^2 + 1/a(3)^3 - ... begins with the concatenation of these numbers; also a(1) = 3 and a(n) > a(n-1).

The programs for A324223, there is no canonical definition to state claims against.
-/

/-! ## A324223.P6865455820739217593

`a(n-1)` with `a(0)=3, a(1)=32, a(2)=37, a(3)=64, a(4)=533, a(5)=960`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324223.P6865455820739217593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 32, 37, 64, 533, 960] fun n a =>
  a (n - 1)

end

end A324223.P6865455820739217593

/-!
# A324224: Total number T(n,k) of 1's in falling diagonals with index k in all n X n permutation matrices divided by |k|!; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

The programs for A324224, the canonical program `A324224.P10288800048815807789` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324224 has offset 1).

The definition of A324224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324224.P10288800048815807789

`A004737(n+1)/A000142(A053615(n))*A214080(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324224

/-- `A004737(n+1)/A000142(A053615(n))*A214080(n)` -/
def P10288800048815807789.Spec : Prop :=
  ∀ n, P10288800048815807789.a n = (A324224 (n + 1) : ℚ)

end A324224

/-! ## A324224.P5554917975328990648

`A324225(n+1)/A053615(n)!`
-/

namespace A324224.P5554917975328990648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324225 (n + 1) : ℚ) / (Nat.factorial (A053615 n).toNat : ℚ)

end

end A324224.P5554917975328990648

namespace A324224

/-- `A324225(n+1)/A053615(n)!` -/
def P5554917975328990648.Spec : Prop :=
  ∀ n, P5554917975328990648.a n = (A324224 (n + 1) : ℚ)

end A324224

/-! ## A324224.P9178934691050105449

`A306234(n+1)/A306461(n+1)*A324225(n+1)`
-/

namespace A324224.P9178934691050105449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306234 (n + 1) : ℚ) / (A306461 (n + 1) : ℚ) * (A324225 (n + 1) : ℚ)

end

end A324224.P9178934691050105449

namespace A324224

/-- `A306234(n+1)/A306461(n+1)*A324225(n+1)` -/
def P9178934691050105449.Spec : Prop :=
  ∀ n, P9178934691050105449.a n = (A324224 (n + 1) : ℚ)

end A324224

/-! ## A324224.P17003209498139685297

`A000196(n)!*A004737(n+1)/A000142(A053615(n))`
-/

namespace A324224.P17003209498139685297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A000196 n).toNat : ℤ) * A004737 (n + 1) : ℚ) / (A000142 (A053615 n).toNat : ℚ)

end

end A324224.P17003209498139685297

namespace A324224

/-- `A000196(n)!*A004737(n+1)/A000142(A053615(n))` -/
def P17003209498139685297.Spec : Prop :=
  ∀ n, P17003209498139685297.a n = (A324224 (n + 1) : ℚ)

end A324224

/-! ## A324224.P3227205131291375741

`A004737(n+1)*A081123(A000267(n))/A053615(n)!`
-/

namespace A324224.P3227205131291375741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) * A081123 (A000267 n).toNat : ℚ) / (Nat.factorial (A053615 n).toNat : ℚ)

end

end A324224.P3227205131291375741

namespace A324224

/-- `A004737(n+1)*A081123(A000267(n))/A053615(n)!` -/
def P3227205131291375741.Spec : Prop :=
  ∀ n, P3227205131291375741.a n = (A324224 (n + 1) : ℚ)

end A324224

/-! ## A324224.P13352858733886456923

`A004737(n+1)*A081123(A001650(n+1))/A053615(n)!`
-/

namespace A324224.P13352858733886456923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) * A081123 (A001650 (n + 1)).toNat : ℚ) / (Nat.factorial (A053615 n).toNat : ℚ)

end

end A324224.P13352858733886456923

namespace A324224

/-- `A004737(n+1)*A081123(A001650(n+1))/A053615(n)!` -/
def P13352858733886456923.Spec : Prop :=
  ∀ n, P13352858733886456923.a n = (A324224 (n + 1) : ℚ)

end A324224

/-!
# A324225: Total number T(n,k) of 1's in falling diagonals with index k in all n X n permutation matrices; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

The programs for A324225, the canonical program `A324225.P13327303718062342744` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324225 has offset 1).

The definition of A324225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324225.P13327303718062342744

`A004737(n+1)*A214080(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324225

/-- `A004737(n+1)*A214080(n)` -/
def P13327303718062342744.Spec : Prop :=
  ∀ n, P13327303718062342744.a n = A324225 (n + 1)

theorem P13327303718062342744.correct : P13327303718062342744.Spec := by
  intro n
  simp only [A324225, Nat.add_sub_cancel]

end A324225

/-! ## A324225.P10072488269798710936

`A000196(n)!*A004737(n+1)`
-/

namespace A324225.P10072488269798710936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000196 n).toNat : ℤ) * A004737 (n + 1)

end

end A324225.P10072488269798710936

namespace A324225

/-- `A000196(n)!*A004737(n+1)` -/
def P10072488269798710936.Spec : Prop :=
  ∀ n, P10072488269798710936.a n = A324225 (n + 1)

end A324225

/-! ## A324225.P4901734959155153314

`A053615(n)!*A324224(n+1)`
-/

namespace A324225.P4901734959155153314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A053615 n).toNat : ℤ) * A324224 (n + 1)

end

end A324225.P4901734959155153314

namespace A324225

/-- `A053615(n)!*A324224(n+1)` -/
def P4901734959155153314.Spec : Prop :=
  ∀ n, P4901734959155153314.a n = A324225 (n + 1)

end A324225

/-! ## A324225.P16557931381637257207

`A004737(n+1)*A081123(A000267(n))`
-/

namespace A324225.P16557931381637257207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A081123 (A000267 n).toNat

end

end A324225.P16557931381637257207

namespace A324225

/-- `A004737(n+1)*A081123(A000267(n))` -/
def P16557931381637257207.Spec : Prop :=
  ∀ n, P16557931381637257207.a n = A324225 (n + 1)

end A324225

/-! ## A324225.P6051341358150215300

`A004737(n+1)*A214078(A083479(n))`
-/

namespace A324225.P6051341358150215300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A214078 (A083479 n).toNat

end

end A324225.P6051341358150215300

namespace A324225

/-- `A004737(n+1)*A214078(A083479(n))` -/
def P6051341358150215300.Spec : Prop :=
  ∀ n, P6051341358150215300.a n = A324225 (n + 1)

end A324225

/-! ## A324225.P2180255567178509585

`A004737(n+1)*A081123(A001650(n+1))`
-/

namespace A324225.P2180255567178509585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A081123 (A001650 (n + 1)).toNat

end

end A324225.P2180255567178509585

namespace A324225

/-- `A004737(n+1)*A081123(A001650(n+1))` -/
def P2180255567178509585.Spec : Prop :=
  ∀ n, P2180255567178509585.a n = A324225 (n + 1)

end A324225

/-! ## A324225.P13313743479100364263

`A306461(n+1)/A306234(n+1)*A324224(n+1)`
-/

namespace A324225.P13313743479100364263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306461 (n + 1) : ℚ) / (A306234 (n + 1) : ℚ) * (A324224 (n + 1) : ℚ)

end

end A324225.P13313743479100364263

namespace A324225

/-- `A306461(n+1)/A306234(n+1)*A324224(n+1)` -/
def P13313743479100364263.Spec : Prop :=
  ∀ n, P13313743479100364263.a n = (A324225 (n + 1) : ℚ)

end A324225

/-!
# A324226: Number of simple 3-edge-connected non-isomorphic n-vertex graphs.

The programs for A324226, there is no canonical definition to state claims against.
-/

/-! ## A324226.P16019850793053227584

`A324227(n+1)+A052448(n+1)`
-/

namespace A324226.P16019850793053227584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324227 (n + 1) + A052448 (n + 1)

end

end A324226.P16019850793053227584

/-! ## A324226.P1306137636378807214

`A007146(A233583(n+2))-A052447(n+1)`
-/

namespace A324226.P1306137636378807214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (A233583 (n + 2)).toNat - A052447 (n + 1)

end

end A324226.P1306137636378807214

/-! ## A324226.P4974387693066706187

`A052448(n+1)+A324228(n+1)+A241703(n+1)`
-/

namespace A324226.P4974387693066706187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052448 (n + 1) + (A324228 (n + 1) + A241703 (n + 1))

end

end A324226.P4974387693066706187

/-! ## A324226.P13881695363540153680

`(A007146(n+1)-A052447(n+1))%A263914(n+1)`
-/

namespace A324226.P13881695363540153680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007146 (n + 1) - A052447 (n + 1)) (A263914 (n + 1))

end

end A324226.P13881695363540153680

/-! ## A324226.P10901814319816133262

`A052448(n+1)+A025426(A380138(2*(n+1)))*A380127(n+1)`
-/

namespace A324226.P10901814319816133262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052448 (n + 1) + A025426 (A380138 (2 * (n + 1))).toNat * A380127 (n + 1)

end

end A324226.P10901814319816133262

/-!
# A324227: Number of simple 4-edge-connected non-isomorphic n-vertex graphs.

The programs for A324227, there is no canonical definition to state claims against.
-/

/-! ## A324227.P7197057408088219724

`A324228(n+1)+A241703(n+1)`
-/

namespace A324227.P7197057408088219724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324228 (n + 1) + A241703 (n + 1)

end

end A324227.P7197057408088219724

/-! ## A324227.P6181152052920277507

`A324226(n+1)-A052448(n+1)`
-/

namespace A324227.P6181152052920277507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (n + 1) - A052448 (n + 1)

end

end A324227.P6181152052920277507

/-! ## A324227.P15260721523509840535

`A007146(A233583(n+2))-A052447(n+1)-A052448(n+1)`
-/

namespace A324227.P15260721523509840535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (A233583 (n + 2)).toNat - A052447 (n + 1) - A052448 (n + 1)

end

end A324227.P15260721523509840535

/-! ## A324227.P10869120452196960731

`(A007146(n+1)-A052447(n+1))%A263914(n+1)-A052448(n+1)`
-/

namespace A324227.P10869120452196960731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007146 (n + 1) - A052447 (n + 1)) (A263914 (n + 1)) - A052448 (n + 1)

end

end A324227.P10869120452196960731

/-!
# A324228: Number of simple 5-edge-connected non-isomorphic n-vertex graphs.

The programs for A324228, there is no canonical definition to state claims against.
-/

/-! ## A324228.P3445877516068451415

`A324229(n+1)+A241704(n+1)`
-/

namespace A324228.P3445877516068451415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) + A241704 (n + 1)

end

end A324228.P3445877516068451415

/-!
# A324229: Number of simple 6-edge-connected non-isomorphic n-vertex graphs.

The programs for A324229, there is no canonical definition to state claims against.
-/

/-! ## A324229.P14928811915480096618

`A324230(n+1)+A241705(n+1)`
-/

namespace A324229.P14928811915480096618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) + A241705 (n + 1)

end

end A324229.P14928811915480096618

/-! ## A324229.P15854637957641126119

`A241705(n+1)+A324231(n+1)+A324096(n+1)`
-/

namespace A324229.P15854637957641126119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241705 (n + 1) + (A324231 (n + 1) + A324096 (n + 1))

end

end A324229.P15854637957641126119

/-! ## A324229.P2337743264670880795

`A324228(n+1)-A241704(n+1)`
-/

namespace A324229.P2337743264670880795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324228 (n + 1) - A241704 (n + 1)

end

end A324229.P2337743264670880795

/-! ## A324229.P1756358820407986810

`A241705(n+1)+A126210(C(n, 7)²)`
-/

namespace A324229.P1756358820407986810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241705 (n + 1) + A126210 (Nat.choose n 7 ^ 2)

end

end A324229.P1756358820407986810

/-! ## A324229.P1062016128322005058

`A241705(n+1)+A111449(C(n+1, 8))`
-/

namespace A324229.P1062016128322005058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241705 (n + 1) + A111449 (Nat.choose (n + 1) 8)

end

end A324229.P1062016128322005058

/-!
# A324230: Number of simple 7-edge-connected non-isomorphic n-vertex graphs.

The programs for A324230, there is no canonical definition to state claims against.
-/

/-! ## A324230.P4964526644436151882

`A324231(n+1)+A324096(n+1)`
-/

namespace A324230.P4964526644436151882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (n + 1) + A324096 (n + 1)

end

end A324230.P4964526644436151882

/-! ## A324230.P4207592300742055304

`A324229(n+1)-A241705(n+1)`
-/

namespace A324230.P4207592300742055304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) - A241705 (n + 1)

end

end A324230.P4207592300742055304

/-! ## A324230.P8367682829533497976

`A324096(n+1)+A324232(n+1)+A324097(n+1)`
-/

namespace A324230.P8367682829533497976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324096 (n + 1) + (A324232 (n + 1) + A324097 (n + 1))

end

end A324230.P8367682829533497976

/-! ## A324230.P7898106579439750015

`A126210(C(n, 7)²)`
-/

namespace A324230.P7898106579439750015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126210 (Nat.choose n 7 ^ 2)

end

end A324230.P7898106579439750015

/-! ## A324230.P9981653169112980954

`A111449(C(n+1, 8))`
-/

namespace A324230.P9981653169112980954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 (Nat.choose (n + 1) 8)

end

end A324230.P9981653169112980954

/-!
# A324231: Number of simple 8-edge-connected non-isomorphic n-vertex graphs.

The programs for A324231, there is no canonical definition to state claims against.
-/

/-! ## A324231.P16428309846713837668

`A324232(n+1)+A324097(n+1)`
-/

namespace A324231.P16428309846713837668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (n + 1) + A324097 (n + 1)

end

end A324231.P16428309846713837668

/-! ## A324231.P6614387739253724251

`A324230(n+1)-A324096(n+1)`
-/

namespace A324231.P6614387739253724251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - A324096 (n + 1)

end

end A324231.P6614387739253724251

/-! ## A324231.P21846373634680864

`A324229(n+1)-(A324096(n+1)+A241705(n+1))`
-/

namespace A324231.P21846373634680864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) - (A324096 (n + 1) + A241705 (n + 1))

end

end A324231.P21846373634680864

/-! ## A324231.P15247149795956006081

`A324097(n+1)+A122639(A338708(n+1))`
-/

namespace A324231.P15247149795956006081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324097 (n + 1) + A122639 (A338708 (n + 1)).toNat

end

end A324231.P15247149795956006081

/-! ## A324231.P3742112197808503898

`∑[A185215(C(round((n+3)*(n+6)/30), 4))]`
-/

namespace A324231.P3742112197808503898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (Nat.choose (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 6 : ℚ) / 30))).toNat 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324231.P3742112197808503898

/-!
# A324232: Number of simple 9-edge-connected non-isomorphic n-vertex graphs.

The programs for A324232, there is no canonical definition to state claims against.
-/

/-! ## A324232.P6573692788315217740

`A324233(n+1)+A324098(n+1)`
-/

namespace A324232.P6573692788315217740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324233 (n + 1) + A324098 (n + 1)

end

end A324232.P6573692788315217740

/-! ## A324232.P413626415274956755

`A324231(n+1)-A324097(n+1)`
-/

namespace A324232.P413626415274956755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (n + 1) - A324097 (n + 1)

end

end A324232.P413626415274956755

/-! ## A324232.P8601872914426989586

`A122639(A338708(n+1))`
-/

namespace A324232.P8601872914426989586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122639 (A338708 (n + 1)).toNat

end

end A324232.P8601872914426989586

/-! ## A324232.P3785523584157755275

`A262038(∑[A324098(n+1)])`
-/

namespace A324232.P3785523584157755275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324232.P3785523584157755275

/-! ## A324232.P17701644004109262363

`∑[C(n, 2)+1]%A213074(A231515(n+1))`
-/

namespace A324232.P17701644004109262363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A213074 (A231515 (n + 1)).toNat)

end

end A324232.P17701644004109262363

/-!
# A324233: Number of simple 10-edge-connected non-isomorphic n-vertex graphs.

The programs for A324233, there is no canonical definition to state claims against.
-/

/-! ## A324233.P3387864681001586771

`A324232(n+1)-A324098(n+1)`
-/

namespace A324233.P3387864681001586771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (n + 1) - A324098 (n + 1)

end

end A324233.P3387864681001586771

/-! ## A324233.P3521134517265046576

`A241091(2*A011855(n))`
-/

namespace A324233.P3521134517265046576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (2 * A011855 n).toNat

end

end A324233.P3521134517265046576

/-! ## A324233.P546765166570803949

`A089038(A205303(n+1)!)`
-/

namespace A324233.P546765166570803949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (Nat.factorial (A205303 (n + 1)).toNat)

end

end A324233.P546765166570803949

/-! ## A324233.P6082415710920989537

`A004183(∑[A324099(n+1)])`
-/

namespace A324233.P6082415710920989537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324233.P6082415710920989537

/-! ## A324233.P745452306504161427

`∑[A324099(A043318(n+1))]`
-/

namespace A324233.P745452306504161427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324099 (A043318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324233.P745452306504161427

/-!
# A324234: Number of simple non-isomorphic n-vertex graphs of connectivity 5.

The programs for A324234, there is no canonical definition to state claims against.
-/

/-! ## A324234.P4809851540159426406

`A086217(n+1)-A324240(n+1)`
-/

namespace A324234.P4809851540159426406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - A324240 (n + 1)

end

end A324234.P4809851540159426406

/-! ## A324234.P95960976481510386

`A086217(n+1)-A327805(∑[A327144(n+3)+n+1]+1)`
-/

namespace A324234.P95960976481510386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (n + 3) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - A327805 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A324234.P95960976481510386

/-! ## A324234.P6405441029680946050

`A086217(n+1)-(A331924(A068039(n))+A324235(n+1))`
-/

namespace A324234.P6405441029680946050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - (A331924 (A068039 n).toNat + A324235 (n + 1))

end

end A324234.P6405441029680946050

/-! ## A324234.P2327454889839391423

`A086217(n+1)-A243588(n+1)%A243552(A089299(n))`
-/

namespace A324234.P2327454889839391423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - Int.tmod (A243588 (n + 1)) (A243552 (A089299 n).toNat)

end

end A324234.P2327454889839391423

/-! ## A324234.P11510674643680483780

`A086217(n+1)-A093077(n+1)%A006318(A185044(2*(n+2)))`
-/

namespace A324234.P11510674643680483780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - Int.tmod (A093077 (n + 1)) (A006318 (A185044 (2 * (n + 2))).toNat)

end

end A324234.P11510674643680483780

/-!
# A324235: Number of simple non-isomorphic n-vertex graphs of connectivity 6.

The programs for A324235, there is no canonical definition to state claims against.
-/

/-! ## A324235.P14853993187820399481

`A324240(n+1)-A324092(n+1)`
-/

namespace A324235.P14853993187820399481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - A324092 (n + 1)

end

end A324235.P14853993187820399481

/-! ## A324235.P17445176154971875466

`A324240(n+1)-A331924(A068039(n))`
-/

namespace A324235.P17445176154971875466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - A331924 (A068039 n).toNat

end

end A324235.P17445176154971875466

/-! ## A324235.P266386857182435075

`A122327(C(n, 6))`
-/

namespace A324235.P266386857182435075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122327 (Nat.choose n 6)

end

end A324235.P266386857182435075

/-! ## A324235.P6452720020594668956

`A122328(C(n, 6))`
-/

namespace A324235.P6452720020594668956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122328 (Nat.choose n 6)

end

end A324235.P6452720020594668956

/-! ## A324235.P6068824557546282212

`A122330(C(n, 6))`
-/

namespace A324235.P6068824557546282212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122330 (Nat.choose n 6)

end

end A324235.P6068824557546282212

/-!
# A324236: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} p(k)*x^k/k!), where p(k) = number of partitions of k (A000041).

The programs for A324236, there is no canonical definition to state claims against.
-/

/-! ## A324236.P12322326640153896682

`A346430(n)+A025456(A000166(n))`
-/

namespace A324236.P12322326640153896682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n + A025456 (A000166 n).toNat

end

end A324236.P12322326640153896682

/-! ## A324236.P2865366134644543845

`A346430(n)+A025466(A001096(n))`
-/

namespace A324236.P2865366134644543845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n + A025466 (A001096 n).toNat

end

end A324236.P2865366134644543845

/-! ## A324236.P12957533864322168854

`A346430(n)+A025466(A001710(n))`
-/

namespace A324236.P12957533864322168854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n + A025466 (A001710 n).toNat

end

end A324236.P12957533864322168854

/-! ## A324236.P3366674647889731589

`A346430(n)+A151755(A035079(n))`
-/

namespace A324236.P3366674647889731589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n + A151755 (A035079 n).toNat

end

end A324236.P3366674647889731589

/-!
# A324237: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} q(k)*x^k/k!), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A324237, there is no canonical definition to state claims against.
-/

/-! ## A324237.P9302309725972485820

`A171896(A030735(n!))`
-/

namespace A324237.P9302309725972485820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A030735 (Nat.factorial n)).toNat

end

end A324237.P9302309725972485820

/-! ## A324237.P12192367784380197094

`A077026(or(1, A330538(n)))`
-/

namespace A324237.P12192367784380197094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077026 (Int.lor 1 (A330538 n)).toNat

end

end A324237.P12192367784380197094

/-!
# A324238: Number of set partitions of [n] where all subsets are partitioned into the same number of nonempty subsets.

The programs for A324238, there is no canonical definition to state claims against.
-/

/-! ## A324238.P7512863525124190348

`A256180(n)+A055930(A256180(n))`
-/

namespace A324238.P7512863525124190348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256180 n + A055930 (A256180 n).toNat

end

end A324238.P7512863525124190348

/-! ## A324238.P5052762811228122474

`A320249(A346158(A151818(n)+n))`
-/

namespace A324238.P5052762811228122474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320249 (A346158 (A151818 n + (n : ℤ)).toNat).toNat

end

end A324238.P5052762811228122474

/-! ## A324238.P5261411347860680803

`A320249(A346158(n^A178489(n)))`
-/

namespace A324238.P5261411347860680803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320249 (A346158 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178489 n : ℤ))).toNat).toNat

end

end A324238.P5261411347860680803

/-!
# A324240: Number of simple 6-connected non-isomorphic n-vertex graphs.

The programs for A324240, there is no canonical definition to state claims against.
-/

/-! ## A324240.P10645711661689187427

`A324092(n+1)+A324235(n+1)`
-/

namespace A324240.P10645711661689187427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) + A324235 (n + 1)

end

end A324240.P10645711661689187427

/-! ## A324240.P1752718195034950201

`A086217(n+1)-A324234(n+1)`
-/

namespace A324240.P1752718195034950201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - A324234 (n + 1)

end

end A324240.P1752718195034950201

/-! ## A324240.P9568444371763449167

`A327365(∑[A217538(3*n+5)])`
-/

namespace A324240.P9568444371763449167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324240.P9568444371763449167

/-! ## A324240.P15775861641112826041

`A327805(∑[A217538(3*n+5)])`
-/

namespace A324240.P15775861641112826041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324240.P15775861641112826041

/-! ## A324240.P2501782758529540591

`A327805(∑[A327144(n+3)+n+1]+1)`
-/

namespace A324240.P2501782758529540591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (n + 3) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A324240.P2501782758529540591

/-!
# A324241: Number of set partitions of [2n] where each subset is again partitioned into n nonempty subsets.

The programs for A324241, there is no canonical definition to state claims against.
-/

/-! ## A324241.P8676160797404380125

`A007820(n)+A088218(n)%A001700(n)`
-/

namespace A324241.P8676160797404380125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n + Int.tmod (A088218 n) (A001700 n)

end

end A324241.P8676160797404380125

/-! ## A324241.P11016906796450139466

`A293926(∑[n])+record[A138364(n)]`
-/

namespace A324241.P11016906796450139466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293926 (∑ j ∈ Finset.range (n + 1), f1 j) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A324241.P11016906796450139466

/-! ## A324241.P15298139613140960996

`A324162(∑[4*n])`
-/

namespace A324241.P15298139613140960996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324241.P15298139613140960996

/-! ## A324241.P13435163982359466016

`record[A324162(∑[A266724(n)])]`
-/

namespace A324241.P13435163982359466016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324241.P13435163982359466016

/-! ## A324241.P4685037454714868395

`A324162(A106232(n+1))-A000007(n)`
-/

namespace A324241.P4685037454714868395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A106232 (n + 1)).toNat - A000007 n

end

end A324241.P4685037454714868395

/-!
# A324242: Incomplete Lucas numbers: irregular triangular array L(n,k) = Sum_{j = 0..k} (n/(n-j)) * binomial(n-j, j), read by rows, with n >= 1 and 0 <= k <= floor(n/2).

The programs for A324242, there is no canonical definition to state claims against.
-/

/-! ## A324242.P7978658384297955178

`A052509(lt[A024537(n), A113108(n)])`
-/

namespace A324242.P7978658384297955178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324242.P7978658384297955178

/-! ## A324242.P15137775288550532978

`A187200(A305838(n+1))`
-/

namespace A324242.P15137775288550532978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187200 (A305838 (n + 1)).toNat

end

end A324242.P15137775288550532978

/-! ## A324242.P12637597086277251048

`A132735(lt[A079501(n+1), A038243(n)])`
-/

namespace A324242.P12637597086277251048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324242.P12637597086277251048

/-! ## A324242.P11941189448816722389

`A363349(lt[A000712(n), A093447(n+1)])`
-/

namespace A324242.P11941189448816722389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324242.P11941189448816722389

/-!
# A324243: Rotkiewicz numbers: numbers k such that a^sigma(k) == b^sigma(k) (mod k) for all pairs of numbers a, b such that gcd(a*b, k) = 1, where sigma(k) is the sum of divisors of k (A000203).

The programs for A324243, there is no canonical definition to state claims against.
-/

/-! ## A324243.P10150071879938410940

`lt[A000203(n+1)%A002322(n+1), 1]+1`
-/

namespace A324243.P10150071879938410940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A002322 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324243.P10150071879938410940

/-! ## A324243.P10155640978082238100

`record[gcd(n+1, A079612(∑{d}[n+1, #]))]`
-/

namespace A324243.P10155640978082238100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079612 (∑ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324243.P10155640978082238100

/-! ## A324243.P9952274504860992319

`record[gcd(n+1, A079612(A000203(n+1)))]`
-/

namespace A324243.P9952274504860992319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079612 (A000203 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324243.P9952274504860992319

/-! ## A324243.P16450405414790198507

`record[(n+1)%A351119(A351113(n+1))]`
-/

namespace A324243.P16450405414790198507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A351119 (A351113 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324243.P16450405414790198507

/-! ## A324243.P18091187416552750877

`∩[A341257(n+1), A108377(n)]`
-/

namespace A324243.P18091187416552750877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324243.P18091187416552750877

/-!
# A324244: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes with k peripheral nodes.

The programs for A324244, there is no canonical definition to state claims against.
-/

/-! ## A324244.P16802972486840164465

`A000120(A087127(n+1)*A244136(n))`
-/

namespace A324244.P16802972486840164465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A087127 (n + 1) * A244136 n).toNat

end

end A324244.P16802972486840164465

/-! ## A324244.P13857142000399026247

`A238750(n)+A011738(A213683(n))`
-/

namespace A324244.P13857142000399026247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238750 n + A011738 (A213683 n).toNat

end

end A324244.P13857142000399026247

/-! ## A324244.P13491090631790934364

`A357638(A023423(n))+A357638(n)`
-/

namespace A324244.P13491090631790934364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357638 (A023423 n).toNat + A357638 n

end

end A324244.P13491090631790934364

/-! ## A324244.P9617902996823465942

`A353846(n)+A326016(A277102(n))`
-/

namespace A324244.P9617902996823465942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 n + A326016 (A277102 n).toNat

end

end A324244.P9617902996823465942

/-! ## A324244.P4257638826404392959

`A339887(A262947(n))*A344612(n)`
-/

namespace A324244.P4257638826404392959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (A262947 n).toNat * A344612 n

end

end A324244.P4257638826404392959

/-!
# A324245: The modified Collatz map considered by Vaillant and Delarue.

The programs for A324245, the canonical program `A324245.P9435010914356498556` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324245 has offset 0).

The definition of A324245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324245.P13760264358565367372

`A349414(n)+n`
-/

namespace A324245.P13760264358565367372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349414 n + (n : ℤ)

end

end A324245.P13760264358565367372

namespace A324245

/-- `A349414(n)+n` -/
def P13760264358565367372.Spec : Prop :=
  ∀ n, P13760264358565367372.a n = A324245 n

end A324245

/-! ## A324245.P9869975450887076484

`(A324036(n)-1)/2`
-/

namespace A324245.P9869975450887076484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324036 n - 1 : ℚ) / 2

end

end A324245.P9869975450887076484

namespace A324245

/-- `(A324036(n)-1)/2` -/
def P9869975450887076484.Spec : Prop :=
  ∀ n, P9869975450887076484.a n = (A324245 n : ℚ)

end A324245

/-! ## A324245.P9435010914356498556

`A342131(n)%A324036(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A324245

/-- `A342131(n)%A324036(n)` -/
def P9435010914356498556.Spec : Prop :=
  ∀ n, P9435010914356498556.a n = A324245 n

theorem P9435010914356498556.correct : P9435010914356498556.Spec := by
  intro n
  simp only [A324245]

end A324245

/-! ## A324245.P10782178656952350389

`A256328(n)%A080512(n+1)`
-/

namespace A324245.P10782178656952350389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256328 n) (A080512 (n + 1))

end

end A324245.P10782178656952350389

namespace A324245

/-- `A256328(n)%A080512(n+1)` -/
def P10782178656952350389.Spec : Prop :=
  ∀ n, P10782178656952350389.a n = A324245 n

end A324245

/-! ## A324245.P8889170333031076309

`2*A014682(n)-A014682(A006370(n))`
-/

namespace A324245.P8889170333031076309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014682 n - A014682 (A006370 n).toNat

end

end A324245.P8889170333031076309

namespace A324245

/-- `2*A014682(n)-A014682(A006370(n))` -/
def P8889170333031076309.Spec : Prop :=
  ∀ n, P8889170333031076309.a n = A324245 n

end A324245

/-! ## A324245.P10694072415202651736

`2*A014682(n)-A014682(A026741(n))`
-/

namespace A324245.P10694072415202651736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014682 n - A014682 (A026741 n).toNat

end

end A324245.P10694072415202651736

namespace A324245

/-- `2*A014682(n)-A014682(A026741(n))` -/
def P10694072415202651736.Spec : Prop :=
  ∀ n, P10694072415202651736.a n = A324245 n

end A324245

/-! ## A324245.P16877579660794294344

`A001057(n)+n-A001057(A142150(n))`
-/

namespace A324245.P16877579660794294344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + ((n : ℤ) - A001057 (A142150 n).toNat)

end

end A324245.P16877579660794294344

namespace A324245

/-- `A001057(n)+n-A001057(A142150(n))` -/
def P16877579660794294344.Spec : Prop :=
  ∀ n, P16877579660794294344.a n = A324245 n

end A324245

/-! ## A324245.P15610981234545086764

`n*A000034(n)-A014682(A029578(n))`
-/

namespace A324245.P15610981234545086764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000034 n - A014682 (A029578 n).toNat

end

end A324245.P15610981234545086764

namespace A324245

/-- `n*A000034(n)-A014682(A029578(n))` -/
def P15610981234545086764.Spec : Prop :=
  ∀ n, P15610981234545086764.a n = A324245 n

end A324245

/-! ## A324245.P2582973907300900194

`A062157(n)*A065033(A186813(n))+n`
-/

namespace A324245.P2582973907300900194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A065033 (A186813 n).toNat + (n : ℤ)

end

end A324245.P2582973907300900194

namespace A324245

/-- `A062157(n)*A065033(A186813(n))+n` -/
def P2582973907300900194.Spec : Prop :=
  ∀ n, P2582973907300900194.a n = A324245 n

end A324245

/-! ## A324245.P592576475430552479

`floor(A160016(A059029(n))/2)`
-/

namespace A324245.P592576475430552479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160016 (A059029 n).toNat : ℚ) / 2⌋

end

end A324245.P592576475430552479

namespace A324245

/-- `floor(A160016(A059029(n))/2)` -/
def P592576475430552479.Spec : Prop :=
  ∀ n, P592576475430552479.a n = A324245 n

end A324245

/-! ## A324245.P11289992599291139593

`A130472(A064680(n))+∑[n%2]`
-/

namespace A324245.P11289992599291139593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A324245.P11289992599291139593

namespace A324245

/-- `A130472(A064680(n))+∑[n%2]` -/
def P11289992599291139593.Spec : Prop :=
  ∀ n, P11289992599291139593.a n = A324245 n

end A324245

/-! ## A324245.P9912442007029270419

`A130472(A064680(n))+A004526(n+1)`
-/

namespace A324245.P9912442007029270419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat + A004526 (n + 1)

end

end A324245.P9912442007029270419

namespace A324245

/-- `A130472(A064680(n))+A004526(n+1)` -/
def P9912442007029270419.Spec : Prop :=
  ∀ n, P9912442007029270419.a n = A324245 n

end A324245

/-! ## A324245.P1881915429606207488

`n-(A004526(n)-A130472(A064680(n)))`
-/

namespace A324245.P1881915429606207488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004526 n - A130472 (A064680 n).toNat)

end

end A324245.P1881915429606207488

namespace A324245

/-- `n-(A004526(n)-A130472(A064680(n)))` -/
def P1881915429606207488.Spec : Prop :=
  ∀ n, P1881915429606207488.a n = A324245 n

end A324245

/-! ## A324245.P16736176219893004069

`A130472(A064680(n))+Δ[A099392(n+1)]/2`
-/

namespace A324245.P16736176219893004069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130472 (A064680 n).toNat : ℚ) + (f1 (n + 1) - f1 n : ℚ) / 2

end

end A324245.P16736176219893004069

namespace A324245

/-- `A130472(A064680(n))+Δ[A099392(n+1)]/2` -/
def P16736176219893004069.Spec : Prop :=
  ∀ n, P16736176219893004069.a n = (A324245 n : ℚ)

end A324245

/-! ## A324245.P15566963460710153239

`(A139391(A047544(n+1))-1)/2`
-/

namespace A324245.P15566963460710153239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139391 (A047544 (n + 1)).toNat - 1 : ℚ) / 2

end

end A324245.P15566963460710153239

namespace A324245

/-- `(A139391(A047544(n+1))-1)/2` -/
def P15566963460710153239.Spec : Prop :=
  ∀ n, P15566963460710153239.a n = (A324245 n : ℚ)

end A324245

/-! ## A324245.P10363826064670771784

`A130472(A064680(n))+A002265(2*(n+1))`
-/

namespace A324245.P10363826064670771784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat + A002265 (2 * (n + 1))

end

end A324245.P10363826064670771784

namespace A324245

/-- `A130472(A064680(n))+A002265(2*(n+1))` -/
def P10363826064670771784.Spec : Prop :=
  ∀ n, P10363826064670771784.a n = A324245 n

end A324245

/-! ## A324245.P16455135644863007453

`A025480(A065171(n+1)-1+n)`
-/

namespace A324245.P16455135644863007453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A065171 (n + 1) - 1 + (n : ℤ)).toNat

end

end A324245.P16455135644863007453

namespace A324245

/-- `A025480(A065171(n+1)-1+n)` -/
def P16455135644863007453.Spec : Prop :=
  ∀ n, P16455135644863007453.a n = A324245 n

end A324245

/-! ## A324245.P14089315498630674249

`A004524(A324036(n))`
-/

namespace A324245.P14089315498630674249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A324036 n).toNat

end

end A324245.P14089315498630674249

namespace A324245

/-- `A004524(A324036(n))` -/
def P14089315498630674249.Spec : Prop :=
  ∀ n, P14089315498630674249.a n = A324245 n

end A324245

/-! ## A324245.P4993781687141292581

`A130472(A006370(n))+n-A026741(n)`
-/

namespace A324245.P4993781687141292581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A006370 n).toNat + ((n : ℤ) - A026741 n)

end

end A324245.P4993781687141292581

namespace A324245

/-- `A130472(A006370(n))+n-A026741(n)` -/
def P4993781687141292581.Spec : Prop :=
  ∀ n, P4993781687141292581.a n = A324245 n

end A324245

/-!
# A324246: Irregular triangle T read by rows: T(n, k) = (A324038(n, k) - 1)/2.

The programs for A324246, there is no canonical definition to state claims against.
-/

/-! ## A324246.P5904493175475404088

`floor(A324038(n)/2)`
-/

namespace A324246.P5904493175475404088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324038 n : ℚ) / 2⌋

end

end A324246.P5904493175475404088

/-! ## A324246.P6629370540851010489

`(A324038(-xor(n-1, -1))-1)/2`
-/

namespace A324246.P6629370540851010489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324038 (-Int.xor ((n : ℤ) - 1) (-1)).toNat - 1 : ℚ) / 2

end

end A324246.P6629370540851010489

/-! ## A324246.P14955541431462494306

`A014682(A324038(n)-1)`
-/

namespace A324246.P14955541431462494306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A324038 n - 1).toNat

end

end A324246.P14955541431462494306

/-! ## A324246.P17911936052910652742

`A273943(A324038(n)-1)`
-/

namespace A324246.P17911936052910652742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A324038 n - 1).toNat

end

end A324246.P17911936052910652742

/-! ## A324246.P5031722038987867609

`A014682(xor(1, A324038(n)))`
-/

namespace A324246.P5031722038987867609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A324038 n)).toNat

end

end A324246.P5031722038987867609

/-! ## A324246.P8674270617733211265

`A273943(xor(1, A324038(n)))`
-/

namespace A324246.P8674270617733211265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.xor 1 (A324038 n)).toNat

end

end A324246.P8674270617733211265

/-! ## A324246.P14997375826279569897

`(A324038(n)-1)/A000122(n²)`
-/

namespace A324246.P14997375826279569897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324038 n - 1 : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A324246.P14997375826279569897

/-! ## A324246.P8401811546160071420

`(A324038(n)-1)/A020639(2*(n+1))`
-/

namespace A324246.P8401811546160071420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324038 n - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A324246.P8401811546160071420

/-! ## A324246.P5979718709722861335

`(A324038(n)-1)/A000032(C(2, n+2))`
-/

namespace A324246.P5979718709722861335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324038 n - 1 : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A324246.P5979718709722861335

/-! ## A324246.P9048125328360739498

`(A324038(n)-1)/A000040(ceil(1/(n+1)))`
-/

namespace A324246.P9048125328360739498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324038 n - 1 : ℚ) / (A000040 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A324246.P9048125328360739498

/-!
# A324247: Partition array giving in row n, for n >= 1, the coefficients of the Witt symmetric function w_n in terms of the elementary symmetric functions (using partitions in the Abramowitz-Stegun order).

The programs for A324247, there is no canonical definition to state claims against.
-/

/-! ## A324247.P4183201571405345032

`A008683(∑[A213361(A092976(n))])`
-/

namespace A324247.P4183201571405345032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213361 (A092976 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324247.P4183201571405345032

/-! ## A324247.P61294566681891769

`A008683(record[A258215(A101278(n))])`
-/

namespace A324247.P61294566681891769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (A101278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324247.P61294566681891769

/-! ## A324247.P10072942226124525140

`A008683(C(A314916(n), A257462(n)))`
-/

namespace A324247.P10072942226124525140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (A314916 n).toNat (A257462 n).toNat)

end

end A324247.P10072942226124525140

/-! ## A324247.P4947738050123881360

`A170960(n)-A170956(A317552(n+1))`
-/

namespace A324247.P4947738050123881360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170960 n - A170956 (A317552 (n + 1)).toNat

end

end A324247.P4947738050123881360

/-! ## A324247.P3227072604548202005

`A008683(A072871(n+1)+A054845(n))`
-/

namespace A324247.P3227072604548202005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072871 (n + 1) + A054845 n).toNat

end

end A324247.P3227072604548202005

/-!
# A324248: Odd numbers with dropping time of the reduced Collatz iteration (A122458) exceeding 5.

The programs for A324248, there is no canonical definition to state claims against.
-/

/-! ## A324248.P597812826290198492

`lt[8, A126241(round(acot(n)+n))]`
-/

namespace A324248.P597812826290198492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324248.P597812826290198492

/-! ## A324248.P14990934479918999340

`lt[14, A074473(round(acot(n)+n))]`
-/

namespace A324248.P14990934479918999340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324248.P14990934479918999340

/-! ## A324248.P5321958022172990994

`lt[5, A122458(gcd(1-n, floor(n/2)))]`
-/

namespace A324248.P5321958022172990994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324248.P5321958022172990994

/-! ## A324248.P15167074167834798118

`lt[5, A122458(A004524(n))]`
-/

namespace A324248.P15167074167834798118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A004524 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324248.P15167074167834798118

/-! ## A324248.P16531363688543712555

`A141310(lt[8, A126241(n+1)])`
-/

namespace A324248.P16531363688543712555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324248.P16531363688543712555

/-! ## A324248.P1944131484272873451

`lt[8, A126241(A233583(n+1))]`
-/

namespace A324248.P1944131484272873451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324248.P1944131484272873451

/-!
# A324249: Dropping times (A122458) exceeding 5 for odd numbers under reduced Collatz iteration corresponding to A324248.

The programs for A324249, there is no canonical definition to state claims against.
-/

/-! ## A324249.P13143354768964488278

`A122458((A324248(n+1)-1)/2)`
-/

namespace A324249.P13143354768964488278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (SequenceMachineLib.roundAway ((A324248 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A324249.P13143354768964488278

/-! ## A324249.P16092133953186625605

`A122458(lt[5, A122458(n)])`
-/

namespace A324249.P16092133953186625605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324249.P16092133953186625605

/-! ## A324249.P14499688818576036211

`A122458(floor(A324248(n+1)/2))`
-/

namespace A324249.P14499688818576036211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 ⌊(A324248 (n + 1) : ℚ) / 2⌋.toNat

end

end A324249.P14499688818576036211

/-! ## A324249.P13720253650371206

`A122458(xor(1, A324248(n+1))/2)`
-/

namespace A324249.P13720253650371206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (SequenceMachineLib.roundAway ((Int.xor 1 (A324248 (n + 1)) : ℚ) / 2)).toNat

end

end A324249.P13720253650371206

/-! ## A324249.P10952642419675126276

`A122458(A000265(A324248(n+1)-1))`
-/

namespace A324249.P10952642419675126276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A000265 (A324248 (n + 1) - 1).toNat).toNat

end

end A324249.P10952642419675126276

/-! ## A324249.P3464828524347854210

`A122458(A003602(A324248(n+1))-1)`
-/

namespace A324249.P3464828524347854210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A003602 (A324248 (n + 1)).toNat - 1).toNat

end

end A324249.P3464828524347854210

/-! ## A324249.P13775523842934222270

`A122458(A000265(xor(1, A324248(n+1))))`
-/

namespace A324249.P13775523842934222270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A000265 (Int.xor 1 (A324248 (n + 1))).toNat).toNat

end

end A324249.P13775523842934222270

/-! ## A324249.P8916983853832017288

`A122458(A003602(xor(2, A324248(n+1))))`
-/

namespace A324249.P8916983853832017288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A003602 (Int.xor 2 (A324248 (n + 1))).toNat).toNat

end

end A324249.P8916983853832017288

/-!
# A324250: Sequence a(n) = 3*A002559(n) - 2 determining the principal reduced indefinite binary quadratic form [1, a(n), -a(n)] for Markoff triples.

The programs for A324250, there is no canonical definition to state claims against.
-/

/-! ## A324250.P18328281493199703030

`3*A002559(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324250.P18328281493199703030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002559 (n + 1) - 2

end

end A324250.P18328281493199703030

/-! ## A324250.P9047304650743763211

`lcm(3, A002559(C(n+1, n)))-2`
-/

namespace A324250.P9047304650743763211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A002559 (Nat.choose (n + 1) n)) : ℤ) - 2

end

end A324250.P9047304650743763211

/-! ## A324250.P12409520861739080594

`lcm(3, A002559(A000027(n+1)))-2`
-/

namespace A324250.P12409520861739080594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A002559 (A000027 (n + 1)).toNat) : ℤ) - 2

end

end A324250.P12409520861739080594

/-! ## A324250.P4295238733399699078

`lcm(A002559(n+1), A174971(n))-2`
-/

namespace A324250.P4295238733399699078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002559 (n + 1)) (A174971 n) : ℤ) - 2

end

end A324250.P4295238733399699078

/-! ## A324250.P10125782842833645880

`A086326(n+1)-2`
-/

namespace A324250.P10125782842833645880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086326 (n + 1) - 2

end

end A324250.P10125782842833645880

/-! ## A324250.P8930258755803633862

`and(A086326(n+1), A141725(n))`
-/

namespace A324250.P8930258755803633862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086326 (n + 1)) (A141725 n)

end

end A324250.P8930258755803633862

/-! ## A324250.P7858343815081817159

`and(A086326(n+1), A267921(n))`
-/

namespace A324250.P7858343815081817159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086326 (n + 1)) (A267921 n)

end

end A324250.P7858343815081817159

/-!
# A324252: Triangle T(n, k) read by rows from upwards antidiagonals of array A, where A(n, k) is the number of families (also called classes) of proper solutions of the Pell equation x^2 - D(n)*y^2 = k, for k >= 1.

The programs for A324252, there is no canonical definition to state claims against.
-/

/-! ## A324252.P14738759461319373034

`A337243(3*n+1)%A080426(A215419(n+1))`
-/

namespace A324252.P14738759461319373034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337243 (3 * n + 1)) (A080426 (A215419 (n + 1)).toNat)

end

end A324252.P14738759461319373034

/-! ## A324252.P12924228020094177299

`val(A000005(A058959(n+1)), A349387(3*n+5))`
-/

namespace A324252.P12924228020094177299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A058959 (n + 1)).toNat).toNat (A349387 (3 * n + 5)).toNat

end

end A324252.P12924228020094177299

/-! ## A324252.P1078899370975053969

`A286561(A269537(2*n+1)+A136047(n+1))`
-/

namespace A324252.P1078899370975053969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A269537 (2 * n + 1) + A136047 (n + 1)).toNat

end

end A324252.P1078899370975053969

/-! ## A324252.P3823364129779396487

`A056170(A239235(3*n+5)-A187793(n+1))`
-/

namespace A324252.P3823364129779396487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A239235 (3 * n + 5) - A187793 (n + 1)).toNat

end

end A324252.P3823364129779396487

/-! ## A324252.P15218446064421351136

`A035227(A289868(n+1))`
-/

namespace A324252.P15218446064421351136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (A289868 (n + 1)).toNat

end

end A324252.P15218446064421351136

/-!
# A324254: Signed version of the partition array A036039 (signed M_2 multinomial numbers).

The programs for A324254, there is no canonical definition to state claims against.
-/

/-! ## A324254.P17103233076254923278

`2*A212358(n+1)-A036039(n+1)`
-/

namespace A324254.P17103233076254923278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212358 (n + 1) - A036039 (n + 1)

end

end A324254.P17103233076254923278

/-! ## A324254.P8460318480976384610

`A005843(A212358(n+1))-A036039(n+1)`
-/

namespace A324254.P8460318480976384610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A212358 (n + 1)).toNat - A036039 (n + 1)

end

end A324254.P8460318480976384610

/-! ## A324254.P4410102263230072949

`A036039(n+1)*A048996(n+1)/A111786(n+1)`
-/

namespace A324254.P4410102263230072949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) * A048996 (n + 1) : ℚ) / (A111786 (n + 1) : ℚ)

end

end A324254.P4410102263230072949

/-! ## A324254.P4043184529192656385

`A319191(A185974(n+1))`
-/

namespace A324254.P4043184529192656385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319191 (A185974 (n + 1)).toNat

end

end A324254.P4043184529192656385

/-! ## A324254.P16768336703036624166

`A319191(A334438(n+1))`
-/

namespace A324254.P16768336703036624166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319191 (A334438 (n + 1)).toNat

end

end A324254.P16768336703036624166

/-!
# A324258: Subsequence of A324257 (Conceited Numbers) where the prime factors are concatenated without overlap.

The programs for A324258, there is no canonical definition to state claims against.
-/

/-! ## A324258.P17519247703006987404

`A324257(2*∑{digits}[n, #]-A060054(n+4))`
-/

namespace A324258.P17519247703006987404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324257 (((2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A060054 (n + 4)).toNat

end

end A324258.P17519247703006987404

/-! ## A324258.P549988510264535555

`A324257(∑{digits}[n, #]+n-A060054(n+4))`
-/

namespace A324258.P549988510264535555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324257 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n : ℕ) : ℤ) - A060054 (n + 4)).toNat

end

end A324258.P549988510264535555

/-!
# A324260: Subsequence of A324257 (Conceited Numbers) where the distinct prime factors are concatenated without multiplicity.

The programs for A324260, there is no canonical definition to state claims against.
-/

/-! ## A324260.P8878380177316989458

`A324257(∑[A324294(n+1)^A106619(n+2)])`
-/

namespace A324260.P8878380177316989458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324294 (n + 1) : ℚ) ^ (A106619 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324257 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A324260.P8878380177316989458

/-!
# A324263: Number of simple connected graphs on n unlabeled nodes with exactly two peripheral nodes.

The programs for A324263, there is no canonical definition to state claims against.
-/

/-! ## A324263.P10776112664124011370

`A324244(∑[n]+2)`
-/

namespace A324263.P10776112664124011370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A324263.P10776112664124011370

/-! ## A324263.P16308890372848873403

`A324244(A133263(n))%(2*n)!`
-/

namespace A324263.P16308890372848873403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324244 (A133263 n).toNat) (Nat.factorial (2 * n) : ℤ)

end

end A324263.P16308890372848873403

/-! ## A324263.P3034855027564521812

`A324244(A133263(n))-A000007(n)`
-/

namespace A324263.P3034855027564521812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (A133263 n).toNat - A000007 n

end

end A324263.P3034855027564521812

/-! ## A324263.P15324543450575363170

`A324244(A133263(n))-A028240(n)`
-/

namespace A324263.P15324543450575363170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (A133263 n).toNat - A028240 n

end

end A324263.P15324543450575363170

/-! ## A324263.P12201953604605627628

`A324244(A133263(n))-A000045(C(2, n+2))`
-/

namespace A324263.P12201953604605627628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (A133263 n).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A324263.P12201953604605627628

/-!
# A324264: Number of simple connected graphs on n unlabeled nodes with diameter equal to radius.

The programs for A324264, there is no canonical definition to state claims against.
-/

/-! ## A324264.P6344566599498887627

`A294525(∑[n+1])`
-/

namespace A324264.P6344566599498887627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324264.P6344566599498887627

/-! ## A324264.P6731719744423512094

`A324244(∑[n+1])`
-/

namespace A324264.P6731719744423512094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324264.P6731719744423512094

/-! ## A324264.P17585937765210922266

`or(char[1], A324244(A025747(n)))`
-/

namespace A324264.P17585937765210922266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A324244 (A025747 n).toNat)

end

end A324264.P17585937765210922266

/-! ## A324264.P17186916125978774516

`A294525(A025747(n))+A011738(n)`
-/

namespace A324264.P17186916125978774516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294525 (A025747 n).toNat + A011738 n

end

end A324264.P17186916125978774516

/-! ## A324264.P17943340657522754148

`A294525(A025747(n))+A107846(n)`
-/

namespace A324264.P17943340657522754148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294525 (A025747 n).toNat + A107846 n

end

end A324264.P17943340657522754148

/-!
# A324265: a(n) = 5*343^n.

The programs for A324265, the canonical program `A324265.P6738543184117288855` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324265 has offset 0).

The definition of A324265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*343^n` (program `A324265.P6738543184117288855`, by `A324265.P6738543184117288855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324265.P6738543184117288855

`5*343^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A324265

/-- `5*343^n` -/
def P6738543184117288855.Spec : Prop :=
  ∀ n, (P6738543184117288855.a n : ℤ) = A324265 n

theorem P6738543184117288855.correct : P6738543184117288855.Spec := by
  intro n
  simp only [A324265]

end A324265

/-!
# A324266: a(n) = 2*49^n.

The programs for A324266, the canonical program `A324266.P3327979408643587796` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324266 has offset 0).

The definition of A324266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*49^n` (program `A324266.P3327979408643587796`, by `A324266.P3327979408643587796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324266.P3327979408643587796

`2*49^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A324266

/-- `2*49^n` -/
def P3327979408643587796.Spec : Prop :=
  ∀ n, (P3327979408643587796.a n : ℤ) = A324266 n

theorem P3327979408643587796.correct : P3327979408643587796.Spec := by
  intro n
  simp only [A324266]

end A324266

/-!
# A324267: 

The programs for A324267, there is no canonical definition to state claims against.
-/

/-! ## A324267.P7362226182427913437

`11*7^(5*n)`
-/

namespace A324267.P7362226182427913437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * 7 ^ (5 * n)

end

end A324267.P7362226182427913437

/-! ## A324267.P16402654541071323857

`lcm(11, A017925(A008592(n)))`
-/

namespace A324267.P16402654541071323857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (A017925 (A008592 n).toNat)

end

end A324267.P16402654541071323857

/-!
# A324268: 

The programs for A324268, there is no canonical definition to state claims against.
-/

/-! ## A324268.P13173469959759091414

`31*11^(5*n)`
-/

namespace A324268.P13173469959759091414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * 11 ^ (5 * n)

end

end A324268.P13173469959759091414

/-!
# A324269: a(n) = 3*11^(2*n).

The programs for A324269, the canonical program `A324269.P7995192948248998769` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324269 has offset 0).

The definition of A324269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324269.P7995192948248998769

`3*121^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A324269

/-- `3*121^n` -/
def P7995192948248998769.Spec : Prop :=
  ∀ n, (P7995192948248998769.a n : ℤ) = A324269 n

theorem P7995192948248998769.correct : P7995192948248998769.Spec := by
  intro n
  simp only [A324269]

end A324269

/-!
# A324270: 

The programs for A324270, there is no canonical definition to state claims against.
-/

/-! ## A324270.P4081095373706604056

`13*7^(7*n)`
-/

namespace A324270.P4081095373706604056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * 7 ^ (7 * n)

end

end A324270.P4081095373706604056

/-!
# A324272: a(n) = 2*13^(2*n).

The programs for A324272, the canonical program `A324272.P7440597722473459033` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324272 has offset 0).

The definition of A324272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324272.P7440597722473459033

`2*169^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A324272

/-- `2*169^n` -/
def P7440597722473459033.Spec : Prop :=
  ∀ n, (P7440597722473459033.a n : ℤ) = A324272 n

theorem P7440597722473459033.correct : P7440597722473459033.Spec := by
  intro n
  simp only [A324272]

end A324272

/-!
# A324275: Numbers k for which A324274(k) is 0, i.e., starting squares in A324274 that yield a path of infinite length.

The programs for A324275, the canonical program `A324275.P309282359006458569` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324275 has offset 1).

The definition of A324275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324275.P309282359006458569

`A007590(A007494(n+2))-(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A324275

/-- `A007590(A007494(n+2))-(n+2)` -/
def P309282359006458569.Spec : Prop :=
  ∀ n, P309282359006458569.a n = A324275 (n + 1)

theorem P309282359006458569.correct : P309282359006458569.Spec := by
  intro n
  simp only [A324275, Nat.add_sub_cancel]

end A324275

/-! ## A324275.P16725412805771578446

`A110654(n)+A000982(A001651(n+2))`
-/

namespace A324275.P16725412805771578446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A000982 (A001651 (n + 2)).toNat

end

end A324275.P16725412805771578446

namespace A324275

/-- `A110654(n)+A000982(A001651(n+2))` -/
def P16725412805771578446.Spec : Prop :=
  ∀ n, P16725412805771578446.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P4670499978362600860

`A004526(n+1)+A000982(A001651(n+2))`
-/

namespace A324275.P4670499978362600860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A000982 (A001651 (n + 2)).toNat

end

end A324275.P4670499978362600860

namespace A324275

/-- `A004526(n+1)+A000982(A001651(n+2))` -/
def P4670499978362600860.Spec : Prop :=
  ∀ n, P4670499978362600860.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P4971161349381295719

`Δ[A008765(3*n)+A002620(n)]`
-/

namespace A324275.P4971161349381295719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 (3 * n) + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324275.P4971161349381295719

namespace A324275

/-- `Δ[A008765(3*n)+A002620(n)]` -/
def P4971161349381295719.Spec : Prop :=
  ∀ n, P4971161349381295719.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P5091046399150706313

`A001972(A047241(n+2))-(n+2)`
-/

namespace A324275.P5091046399150706313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A047241 (n + 2)).toNat - (n + 2 : ℤ)

end

end A324275.P5091046399150706313

namespace A324275

/-- `A001972(A047241(n+2))-(n+2)` -/
def P5091046399150706313.Spec : Prop :=
  ∀ n, P5091046399150706313.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P2614562922722431660

`A008805(3*(n+1))-A008621(n)`
-/

namespace A324275.P2614562922722431660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (3 * (n + 1)) - A008621 n

end

end A324275.P2614562922722431660

namespace A324275

/-- `A008805(3*(n+1))-A008621(n)` -/
def P2614562922722431660.Spec : Prop :=
  ∀ n, P2614562922722431660.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P8873084364135521075

`∑[A026741(3*n+4)]-A002265(n)`
-/

namespace A324275.P8873084364135521075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002265 n

end

end A324275.P8873084364135521075

namespace A324275

/-- `∑[A026741(3*n+4)]-A002265(n)` -/
def P8873084364135521075.Spec : Prop :=
  ∀ n, P8873084364135521075.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P15167236913363208015

`A000096(A004526(3*(n+1)))-A002265(n)`
-/

namespace A324275.P15167236913363208015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004526 (3 * (n + 1))).toNat - A002265 n

end

end A324275.P15167236913363208015

namespace A324275

/-- `A000096(A004526(3*(n+1)))-A002265(n)` -/
def P15167236913363208015.Spec : Prop :=
  ∀ n, P15167236913363208015.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P1138460600792575687

`A047237(A014255(n+1))-n`
-/

namespace A324275.P1138460600792575687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A014255 (n + 1)).toNat - (n : ℤ)

end

end A324275.P1138460600792575687

namespace A324275

/-- `A047237(A014255(n+1))-n` -/
def P1138460600792575687.Spec : Prop :=
  ∀ n, P1138460600792575687.a n = A324275 (n + 1)

end A324275

/-! ## A324275.P16523935006501852396

`A110654(A001651(n+2)²)+A004526(n+1)`
-/

namespace A324275.P16523935006501852396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001651 (n + 2) ^ 2).toNat + A004526 (n + 1)

end

end A324275.P16523935006501852396

namespace A324275

/-- `A110654(A001651(n+2)²)+A004526(n+1)` -/
def P16523935006501852396.Spec : Prop :=
  ∀ n, P16523935006501852396.a n = A324275 (n + 1)

end A324275

/-!
# A324276: Bi-unitary untouchable numbers: numbers that are not the sum of aliquot bi-unitary divisors of any number.

The programs for A324276, there is no canonical definition to state claims against.
-/

/-! ## A324276.P6286177881840830234

`eq[0, A331971(n+2)]+2`
-/

namespace A324276.P6286177881840830234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331971 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A324276.P6286177881840830234

/-! ## A324276.P10853056088481423935

`record[gcd(A020725(n+1), A331971(n+2))]`
-/

namespace A324276.P10853056088481423935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A331971 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324276.P10853056088481423935

/-! ## A324276.P14819316171040452475

`A000188(comp[A331970(n+1)]²)`
-/

namespace A324276.P14819316171040452475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A324276.P14819316171040452475

/-! ## A324276.P6468744415004972356

`A071974(comp[A331970(n+1)]²)`
-/

namespace A324276.P6468744415004972356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A324276.P6468744415004972356

/-!
# A324277: Infinitary untouchable numbers: numbers that are not the sum of aliquot infinitary divisors of any number.

The programs for A324277, there is no canonical definition to state claims against.
-/

/-! ## A324277.P390885317546935022

`eq[0, A331973(n+2)]+2`
-/

namespace A324277.P390885317546935022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331973 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A324277.P390885317546935022

/-! ## A324277.P6411053466809595044

`record[gcd(A020725(n+1), A331973(n+2))]`
-/

namespace A324277.P6411053466809595044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A331973 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324277.P6411053466809595044

/-! ## A324277.P11697065548228813700

`lt[A052217(n+1)*A331973(n+2), 1]+2`
-/

namespace A324277.P11697065548228813700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1) * A331973 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A324277.P11697065548228813700

/-! ## A324277.P13575240675684655595

`A324276(lt[A141036(n), A128159(3*n+1)])`
-/

namespace A324277.P13575240675684655595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128159 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324277.P13575240675684655595

/-!
# A324278: Exponential untouchable numbers: numbers that are not the sum of aliquot exponential divisors of any number.

The programs for A324278, there is no canonical definition to state claims against.
-/

/-! ## A324278.P14401293259620584299

`∩[A081031(n+1), A372740(n+1)]`
-/

namespace A324278.P14401293259620584299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324278.P14401293259620584299

/-! ## A324278.P11391317753803417570

`A372740(n+1)+A292936(A003393(n+1))`
-/

namespace A324278.P11391317753803417570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372740 (n + 1) + A292936 (A003393 (n + 1)).toNat

end

end A324278.P11391317753803417570

/-! ## A324278.P9420054553217026088

`A372740(n+1)%A359654(n+1)`
-/

namespace A324278.P9420054553217026088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372740 (n + 1)) (A359654 (n + 1))

end

end A324278.P9420054553217026088

/-! ## A324278.P13679673312868997185

`∩[A372740(n+1), comp[A000946(3*n+4)]]`
-/

namespace A324278.P13679673312868997185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372740 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000946 (3 * n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A324278.P13679673312868997185

/-! ## A324278.P4319205120496150686

`A374016(A136305(n))+A372740(n+1)`
-/

namespace A324278.P4319205120496150686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374016 (A136305 n).toNat + A372740 (n + 1)

end

end A324278.P4319205120496150686

/-!
# A324284: a(n) = gcd(n, A324283(n)).

The programs for A324284, there is no canonical definition to state claims against.
-/

/-! ## A324284.P4906904168626438045

`gcd(n+1, A324283(n+1))`
-/

namespace A324284.P4906904168626438045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324283 (n + 1))

end

end A324284.P4906904168626438045

/-! ## A324284.P12397978938309260569

`gcd(n+1, A000203(A101692(n)))`
-/

namespace A324284.P12397978938309260569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (A101692 n).toNat)

end

end A324284.P12397978938309260569

/-! ## A324284.P4769786678171941171

`gcd(A000203(A101692(n)), A153152(n))`
-/

namespace A324284.P4769786678171941171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A101692 n).toNat) (A153152 n)

end

end A324284.P4769786678171941171

/-! ## A324284.P5907329686147093921

`gcd(A109155(A000265(n+1)), A115451(2*n))`
-/

namespace A324284.P5907329686147093921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109155 (A000265 (n + 1)).toNat) (A115451 (2 * n))

end

end A324284.P5907329686147093921

/-! ## A324284.P459360919988672060

`gcd(A000005(2^n), A000957(n))`
-/

namespace A324284.P459360919988672060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 ^ n)) (A000957 n)

end

end A324284.P459360919988672060

/-!
# A324285: a(n) = A002487(A297168(n)).

The programs for A324285, the canonical program `A324285.P10680702769887197060` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324285 has offset 1).

The definition of A324285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A297168, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324285.P10680702769887197060

`A002487(A297168(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324285

/-- `A002487(A297168(n+1))` -/
def P10680702769887197060.Spec : Prop :=
  ∀ n, P10680702769887197060.a n = A324285 (n + 1)

theorem P10680702769887197060.correct : P10680702769887197060.Spec := by
  intro n
  simp only [A324285, Nat.add_sub_cancel]

end A324285

/-! ## A324285.P3839749056639783487

`∑{d}[A297168(n+1), A317839(#)]`
-/

namespace A324285.P3839749056639783487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A324285.P3839749056639783487

namespace A324285

/-- `∑{d}[A297168(n+1), A317839(#)]` -/
def P3839749056639783487.Spec : Prop :=
  ∀ n, P3839749056639783487.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P5725330212483079759

`A002487(A156552(n+1)-A297112(n+1))`
-/

namespace A324285.P5725330212483079759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A156552 (n + 1) - A297112 (n + 1)).toNat

end

end A324285.P5725330212483079759

namespace A324285

/-- `A002487(A156552(n+1)-A297112(n+1))` -/
def P5725330212483079759.Spec : Prop :=
  ∀ n, P5725330212483079759.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P8496377481406889804

`A002487(A005941(n+1)-(A297112(n+1)+1))`
-/

namespace A324285.P8496377481406889804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005941 (n + 1) - (A297112 (n + 1) + 1)).toNat

end

end A324285.P8496377481406889804

namespace A324285

/-- `A002487(A005941(n+1)-(A297112(n+1)+1))` -/
def P8496377481406889804.Spec : Prop :=
  ∀ n, P8496377481406889804.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P4779175939168335876

`A002487((A324815(n+1)+A324716(n+1))/2-A297112(n+1))`
-/

namespace A324285.P4779175939168335876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A324815 (n + 1) + A324716 (n + 1) : ℚ) / 2 - (A297112 (n + 1) : ℚ))).toNat

end

end A324285.P4779175939168335876

namespace A324285

/-- `A002487((A324815(n+1)+A324716(n+1))/2-A297112(n+1))` -/
def P4779175939168335876.Spec : Prop :=
  ∀ n, P4779175939168335876.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P10652919694771255655

`A283976(2*A297168(n+1))`
-/

namespace A324285.P10652919694771255655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A297168 (n + 1)).toNat

end

end A324285.P10652919694771255655

namespace A324285

/-- `A283976(2*A297168(n+1))` -/
def P10652919694771255655.Spec : Prop :=
  ∀ n, P10652919694771255655.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P12406491862137742424

`A283977(2*A297168(n+1))`
-/

namespace A324285.P12406491862137742424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * A297168 (n + 1)).toNat

end

end A324285.P12406491862137742424

namespace A324285

/-- `A283977(2*A297168(n+1))` -/
def P12406491862137742424.Spec : Prop :=
  ∀ n, P12406491862137742424.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P12384844255650007316

`A283976(lcm(2, A297168(n+1)))`
-/

namespace A324285.P12384844255650007316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Int.lcm 2 (A297168 (n + 1)))

end

end A324285.P12384844255650007316

namespace A324285

/-- `A283976(lcm(2, A297168(n+1)))` -/
def P12384844255650007316.Spec : Prop :=
  ∀ n, P12384844255650007316.a n = A324285 (n + 1)

end A324285

/-! ## A324285.P14131663282889573157

`A283977(A297168(n+1)+A297168(n+1))`
-/

namespace A324285.P14131663282889573157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (A297168 (n + 1) + A297168 (n + 1)).toNat

end

end A324285.P14131663282889573157

namespace A324285

/-- `A283977(A297168(n+1)+A297168(n+1))` -/
def P14131663282889573157.Spec : Prop :=
  ∀ n, P14131663282889573157.a n = A324285 (n + 1)

end A324285

/-!
# A324286: a(n) = A002487(A048675(n)).

The programs for A324286, the canonical program `A324286.P15965892089874497265` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324286 has offset 1).

The definition of A324286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324286.P5903073689378581363

`A002487(A322821(n+1))`
-/

namespace A324286.P5903073689378581363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A322821 (n + 1)).toNat

end

end A324286.P5903073689378581363

namespace A324286

/-- `A002487(A322821(n+1))` -/
def P5903073689378581363.Spec : Prop :=
  ∀ n, P5903073689378581363.a n = A324286 (n + 1)

end A324286

/-! ## A324286.P15965892089874497265

`A002487(A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324286

/-- `A002487(A048675(n+1))` -/
def P15965892089874497265.Spec : Prop :=
  ∀ n, P15965892089874497265.a n = A324286 (n + 1)

theorem P15965892089874497265.correct : P15965892089874497265.Spec := by
  intro n
  simp only [A324286, Nat.add_sub_cancel]

end A324286

/-! ## A324286.P18100409298172668544

`∑{d}[A322821(n+1), A317839(#)]`
-/

namespace A324286.P18100409298172668544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A324286.P18100409298172668544

namespace A324286

/-- `∑{d}[A322821(n+1), A317839(#)]` -/
def P18100409298172668544.Spec : Prop :=
  ∀ n, P18100409298172668544.a n = A324286 (n + 1)

end A324286

/-! ## A324286.P853375019880145640

`A002487((A005941(n+1)-1-A323905(n+1))%A175332(n+1))`
-/

namespace A324286.P853375019880145640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (A005941 (n + 1) - 1 - A323905 (n + 1)) (A175332 (n + 1))).toNat

end

end A324286.P853375019880145640

namespace A324286

/-- `A002487((A005941(n+1)-1-A323905(n+1))%A175332(n+1))` -/
def P853375019880145640.Spec : Prop :=
  ∀ n, P853375019880145640.a n = A324286 (n + 1)

end A324286

/-! ## A324286.P2510827389162008252

`A283976(2*A322821(n+1))`
-/

namespace A324286.P2510827389162008252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A322821 (n + 1)).toNat

end

end A324286.P2510827389162008252

namespace A324286

/-- `A283976(2*A322821(n+1))` -/
def P2510827389162008252.Spec : Prop :=
  ∀ n, P2510827389162008252.a n = A324286 (n + 1)

end A324286

/-! ## A324286.P10941745176081758392

`∑{d}[A048675(n+1), A317839(#)]`
-/

namespace A324286.P10941745176081758392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A324286.P10941745176081758392

namespace A324286

/-- `∑{d}[A048675(n+1), A317839(#)]` -/
def P10941745176081758392.Spec : Prop :=
  ∀ n, P10941745176081758392.a n = A324286 (n + 1)

end A324286

/-!
# A324287: a(n) = A002487(A005187(n)).

The programs for A324287, the canonical program `A324287.P5077748736980980379` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324287 has offset 0).

The definition of A324287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324287.P13778017948560024020

`A002487(A324377(n))`
-/

namespace A324287.P13778017948560024020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A324377 n).toNat

end

end A324287.P13778017948560024020

namespace A324287

/-- `A002487(A324377(n))` -/
def P13778017948560024020.Spec : Prop :=
  ∀ n, P13778017948560024020.a n = A324287 n

end A324287

/-! ## A324287.P5077748736980980379

`A002487(A005187(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324287

/-- `A002487(A005187(n))` -/
def P5077748736980980379.Spec : Prop :=
  ∀ n, P5077748736980980379.a n = A324287 n

theorem P5077748736980980379.correct : P5077748736980980379.Spec := by
  intro n
  simp only [A324287]

end A324287

/-! ## A324287.P902200993874455050

`A324286(A283477(n))`
-/

namespace A324287.P902200993874455050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324286 (A283477 n).toNat

end

end A324287.P902200993874455050

namespace A324287

/-- `A324286(A283477(n))` -/
def P902200993874455050.Spec : Prop :=
  ∀ n, P902200993874455050.a n = A324287 n

end A324287

/-! ## A324287.P11113292572542255839

`A002487(∑[val(comp[2*(n+1)]+1, 2)])`
-/

namespace A324287.P11113292572542255839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324287.P11113292572542255839

namespace A324287

/-- `A002487(∑[val(comp[2*(n+1)]+1, 2)])` -/
def P11113292572542255839.Spec : Prop :=
  ∀ n, P11113292572542255839.a n = A324287 n

end A324287

/-! ## A324287.P1580943387623802268

`A002487(∑[val(abs(1-n)+1, 2)+1]-2)`
-/

namespace A324287.P1580943387623802268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A324287.P1580943387623802268

namespace A324287

/-- `A002487(∑[val(abs(1-n)+1, 2)+1]-2)` -/
def P1580943387623802268.Spec : Prop :=
  ∀ n, P1580943387623802268.a n = A324287 n

end A324287

/-! ## A324287.P12662290766764715318

`A002487(A101925(n)-1)`
-/

namespace A324287.P12662290766764715318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A101925 n - 1).toNat

end

end A324287.P12662290766764715318

namespace A324287

/-- `A002487(A101925(n)-1)` -/
def P12662290766764715318.Spec : Prop :=
  ∀ n, P12662290766764715318.a n = A324287 n

end A324287

/-! ## A324287.P7987336789067915629

`A002487(A011371(n)+n)`
-/

namespace A324287.P7987336789067915629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A011371 n + (n : ℤ)).toNat

end

end A324287.P7987336789067915629

namespace A324287

/-- `A002487(A011371(n)+n)` -/
def P7987336789067915629.Spec : Prop :=
  ∀ n, P7987336789067915629.a n = A324287 n

end A324287

/-! ## A324287.P8537820410617951410

`A002487(comp[A055938(n+1)])`
-/

namespace A324287.P8537820410617951410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A324287.P8537820410617951410

namespace A324287

/-- `A002487(comp[A055938(n+1)])` -/
def P8537820410617951410.Spec : Prop :=
  ∀ n, P8537820410617951410.a n = A324287 n

end A324287

/-! ## A324287.P15423519790932243760

`A002487(∑[n-A093049(n)])`
-/

namespace A324287.P15423519790932243760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324287.P15423519790932243760

namespace A324287

/-- `A002487(∑[n-A093049(n)])` -/
def P15423519790932243760.Spec : Prop :=
  ∀ n, P15423519790932243760.a n = A324287 n

end A324287

/-! ## A324287.P13360956514920056398

`A002487(2*n-A000120(n))`
-/

namespace A324287.P13360956514920056398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n : ℤ) - A000120 n).toNat

end

end A324287.P13360956514920056398

namespace A324287

/-- `A002487(2*n-A000120(n))` -/
def P13360956514920056398.Spec : Prop :=
  ∀ n, P13360956514920056398.a n = A324287 n

end A324287

/-! ## A324287.P11693746432947170272

`A002487(n-A000120(n)+n)`
-/

namespace A324287.P11693746432947170272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A000120 n + (n : ℤ)).toNat

end

end A324287.P11693746432947170272

namespace A324287

/-- `A002487(n-A000120(n)+n)` -/
def P11693746432947170272.Spec : Prop :=
  ∀ n, P11693746432947170272.a n = A324287 n

end A324287

/-! ## A324287.P5504491478745969669

`A002487(n-(A000120(n)-n))`
-/

namespace A324287.P5504491478745969669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - (A000120 n - (n : ℤ))).toNat

end

end A324287.P5504491478745969669

namespace A324287

/-- `A002487(n-(A000120(n)-n))` -/
def P5504491478745969669.Spec : Prop :=
  ∀ n, P5504491478745969669.a n = A324287 n

end A324287

/-! ## A324287.P6610019605977212780

`A002487(∑[val(A028310(n), 2)]+n)`
-/

namespace A324287.P6610019605977212780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A324287.P6610019605977212780

namespace A324287

/-- `A002487(∑[val(A028310(n), 2)]+n)` -/
def P6610019605977212780.Spec : Prop :=
  ∀ n, P6610019605977212780.a n = A324287 n

end A324287

/-! ## A324287.P14388863822942374706

`A002487(A233905(n)+A233931(n)+n)`
-/

namespace A324287.P14388863822942374706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A233905 n + (A233931 n + (n : ℤ))).toNat

end

end A324287.P14388863822942374706

namespace A324287

/-- `A002487(A233905(n)+A233931(n)+n)` -/
def P14388863822942374706.Spec : Prop :=
  ∀ n, P14388863822942374706.a n = A324287 n

end A324287

/-! ## A324287.P18390099879076519079

`A002487(∑[A001511(n+1)]-A001511(n+1))`
-/

namespace A324287.P18390099879076519079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - A001511 (n + 1)).toNat

end

end A324287.P18390099879076519079

namespace A324287

/-- `A002487(∑[A001511(n+1)]-A001511(n+1))` -/
def P18390099879076519079.Spec : Prop :=
  ∀ n, P18390099879076519079.a n = A324287 n

end A324287

/-! ## A324287.P12263883448824274318

`A002487(∑[A007814(n+1)+1]-(A007814(n+1)+1))`
-/

namespace A324287.P12263883448824274318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - (A007814 (n + 1) + 1)).toNat

end

end A324287.P12263883448824274318

namespace A324287

/-- `A002487(∑[A007814(n+1)+1]-(A007814(n+1)+1))` -/
def P12263883448824274318.Spec : Prop :=
  ∀ n, P12263883448824274318.a n = A324287 n

end A324287

/-! ## A324287.P2120432173385854606

`A002487(A011371(2*n))`
-/

namespace A324287.P2120432173385854606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A011371 (2 * n)).toNat

end

end A324287.P2120432173385854606

namespace A324287

/-- `A002487(A011371(2*n))` -/
def P2120432173385854606.Spec : Prop :=
  ∀ n, P2120432173385854606.a n = A324287 n

end A324287

/-! ## A324287.P1500565152850263516

`A002487(A327492(2*n)-2*n)`
-/

namespace A324287.P1500565152850263516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A327492 (2 * n) - (2 * n : ℤ)).toNat

end

end A324287.P1500565152850263516

namespace A324287

/-- `A002487(A327492(2*n)-2*n)` -/
def P1500565152850263516.Spec : Prop :=
  ∀ n, P1500565152850263516.a n = A324287 n

end A324287

/-! ## A324287.P10589949976340072555

`A002487(2*n-A048881(2*n))`
-/

namespace A324287.P10589949976340072555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n : ℤ) - A048881 (2 * n)).toNat

end

end A324287.P10589949976340072555

namespace A324287

/-- `A002487(2*n-A048881(2*n))` -/
def P10589949976340072555.Spec : Prop :=
  ∀ n, P10589949976340072555.a n = A324287 n

end A324287

/-! ## A324287.P12463088692715540171

`A002487(2*n+1-A061338(2*n+1))`
-/

namespace A324287.P12463088692715540171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n + 1 : ℤ) - A061338 (2 * n + 1)).toNat

end

end A324287.P12463088692715540171

namespace A324287

/-- `A002487(2*n+1-A061338(2*n+1))` -/
def P12463088692715540171.Spec : Prop :=
  ∀ n, P12463088692715540171.a n = A324287 n

end A324287

/-!
# A324288: a(n) = A002487(1+A005187(n)).

The programs for A324288, the canonical program `A324288.P7931273750628969698` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324288 has offset 0).

The definition of A324288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324288.P7931273750628969698

`A002487(1+A005187(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324288

/-- `A002487(1+A005187(n))` -/
def P7931273750628969698.Spec : Prop :=
  ∀ n, P7931273750628969698.a n = A324288 n

theorem P7931273750628969698.correct : P7931273750628969698.Spec := by
  intro n
  simp only [A324288]

end A324288

/-! ## A324288.P15005362571577380648

`A002487(∑[val(comp[2*(n+1)]+1, 2)]+1)`
-/

namespace A324288.P15005362571577380648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324288.P15005362571577380648

namespace A324288

/-- `A002487(∑[val(comp[2*(n+1)]+1, 2)]+1)` -/
def P15005362571577380648.Spec : Prop :=
  ∀ n, P15005362571577380648.a n = A324288 n

end A324288

/-! ## A324288.P17705795466696211394

`A002487(A101925(n))`
-/

namespace A324288.P17705795466696211394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A101925 n).toNat

end

end A324288.P17705795466696211394

namespace A324288

/-- `A002487(A101925(n))` -/
def P17705795466696211394.Spec : Prop :=
  ∀ n, P17705795466696211394.a n = A324288 n

end A324288

/-! ## A324288.P18191443650771715105

`A002487(A324378(n))`
-/

namespace A324288.P18191443650771715105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A324378 n).toNat

end

end A324288.P18191443650771715105

namespace A324288

/-- `A002487(A324378(n))` -/
def P18191443650771715105.Spec : Prop :=
  ∀ n, P18191443650771715105.a n = A324288 n

end A324288

/-! ## A324288.P7425493452300352956

`A002487(A011371(n)+1+n)`
-/

namespace A324288.P7425493452300352956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A011371 n + 1 + (n : ℤ)).toNat

end

end A324288.P7425493452300352956

namespace A324288

/-- `A002487(A011371(n)+1+n)` -/
def P7425493452300352956.Spec : Prop :=
  ∀ n, P7425493452300352956.a n = A324288 n

end A324288

/-! ## A324288.P18005121253487965915

`A002487(comp[A055938(n+1)]+1)`
-/

namespace A324288.P18005121253487965915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A324288.P18005121253487965915

namespace A324288

/-- `A002487(comp[A055938(n+1)]+1)` -/
def P18005121253487965915.Spec : Prop :=
  ∀ n, P18005121253487965915.a n = A324288 n

end A324288

/-! ## A324288.P7948073216276414793

`A002487(2*n+1-A000120(n))`
-/

namespace A324288.P7948073216276414793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n + 1 : ℤ) - A000120 n).toNat

end

end A324288.P7948073216276414793

namespace A324288

/-- `A002487(2*n+1-A000120(n))` -/
def P7948073216276414793.Spec : Prop :=
  ∀ n, P7948073216276414793.a n = A324288 n

end A324288

/-! ## A324288.P8951007841947466016

`A002487(∑[val(A028310(n), 2)]+n+1)`
-/

namespace A324288.P8951007841947466016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A324288.P8951007841947466016

namespace A324288

/-- `A002487(∑[val(A028310(n), 2)]+n+1)` -/
def P8951007841947466016.Spec : Prop :=
  ∀ n, P8951007841947466016.a n = A324288 n

end A324288

/-! ## A324288.P9907590411448144024

`A002487(∑[A001511(n+1)]-A001511(n+1)+1)`
-/

namespace A324288.P9907590411448144024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - A001511 (n + 1) + 1).toNat

end

end A324288.P9907590411448144024

namespace A324288

/-- `A002487(∑[A001511(n+1)]-A001511(n+1)+1)` -/
def P9907590411448144024.Spec : Prop :=
  ∀ n, P9907590411448144024.a n = A324288 n

end A324288

/-! ## A324288.P1860358251738141402

`A002487(2*n+1-A048881(2*n))`
-/

namespace A324288.P1860358251738141402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n + 1 : ℤ) - A048881 (2 * n)).toNat

end

end A324288.P1860358251738141402

namespace A324288

/-- `A002487(2*n+1-A048881(2*n))` -/
def P1860358251738141402.Spec : Prop :=
  ∀ n, P1860358251738141402.a n = A324288 n

end A324288

/-! ## A324288.P16903449421287055772

`A002487(A327492(2*n+1)-(2*n+1))`
-/

namespace A324288.P16903449421287055772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A327492 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A324288.P16903449421287055772

namespace A324288

/-- `A002487(A327492(2*n+1)-(2*n+1))` -/
def P16903449421287055772.Spec : Prop :=
  ∀ n, P16903449421287055772.a n = A324288 n

end A324288

/-! ## A324288.P15011264426891490557

`A049456(A120511(n+1))`
-/

namespace A324288.P15011264426891490557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A120511 (n + 1)).toNat

end

end A324288.P15011264426891490557

namespace A324288

/-- `A049456(A120511(n+1))` -/
def P15011264426891490557.Spec : Prop :=
  ∀ n, P15011264426891490557.a n = A324288 n

end A324288

/-! ## A324288.P2530461383397397802

`A002487(record[A006257(n)-A000120(n)]+1)`
-/

namespace A324288.P2530461383397397802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A324288.P2530461383397397802

namespace A324288

/-- `A002487(record[A006257(n)-A000120(n)]+1)` -/
def P2530461383397397802.Spec : Prop :=
  ∀ n, P2530461383397397802.a n = A324288 n

end A324288

/-! ## A324288.P23367184498096558

`A288003(A178207(n))`
-/

namespace A324288.P23367184498096558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A178207 n).toNat

end

end A324288.P23367184498096558

namespace A324288

/-- `A288003(A178207(n))` -/
def P23367184498096558.Spec : Prop :=
  ∀ n, P23367184498096558.a n = A324288 n

end A324288

/-! ## A324288.P9797671510977264808

`A295515(A178207(n)+1)`
-/

namespace A324288.P9797671510977264808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A178207 n + 1).toNat

end

end A324288.P9797671510977264808

namespace A324288

/-- `A295515(A178207(n)+1)` -/
def P9797671510977264808.Spec : Prop :=
  ∀ n, P9797671510977264808.a n = A324288 n

end A324288

/-! ## A324288.P6169873508626323213

`A288002(A178207(n)+2)`
-/

namespace A324288.P6169873508626323213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A178207 n + 2).toNat

end

end A324288.P6169873508626323213

namespace A324288

/-- `A288002(A178207(n)+2)` -/
def P6169873508626323213.Spec : Prop :=
  ∀ n, P6169873508626323213.a n = A324288 n

end A324288

/-! ## A324288.P2174141584104905485

`A002487(∑[A007814(A206332(2*n+1))])`
-/

namespace A324288.P2174141584104905485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A206332 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324288.P2174141584104905485

namespace A324288

/-- `A002487(∑[A007814(A206332(2*n+1))])` -/
def P2174141584104905485.Spec : Prop :=
  ∀ n, P2174141584104905485.a n = A324288 n

end A324288

/-! ## A324288.P6410140624797969172

`A070990(4*(∑[val(abs(1-n)+1, 2)+1]-2))`
-/

namespace A324288.P6410140624797969172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A324288.P6410140624797969172

namespace A324288

/-- `A070990(4*(∑[val(abs(1-n)+1, 2)+1]-2))` -/
def P6410140624797969172.Spec : Prop :=
  ∀ n, P6410140624797969172.a n = A324288 n

end A324288

/-! ## A324288.P762783941009702452

`A070990(4*A011371(2*n))`
-/

namespace A324288.P762783941009702452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (4 * A011371 (2 * n)).toNat

end

end A324288.P762783941009702452

namespace A324288

/-- `A070990(4*A011371(2*n))` -/
def P762783941009702452.Spec : Prop :=
  ∀ n, P762783941009702452.a n = A324288 n

end A324288

/-! ## A324288.P3448872006089828788

`A070990(4*comp[A055938(n+1)])`
-/

namespace A324288.P3448872006089828788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A324288.P3448872006089828788

namespace A324288

/-- `A070990(4*comp[A055938(n+1)])` -/
def P3448872006089828788.Spec : Prop :=
  ∀ n, P3448872006089828788.a n = A324288 n

end A324288

/-!
# A324289: a(n) = A276086(A283477(n)).

The programs for A324289, there is no canonical definition to state claims against.
-/

/-! ## A324289.P6241318004705999981

`A276086(A283477(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324289.P6241318004705999981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A283477 n).toNat

end

end A324289.P6241318004705999981

/-! ## A324289.P5375331998352383775

`A342456(A048678(n))`
-/

namespace A324289.P5375331998352383775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342456 (A048678 n).toNat

end

end A324289.P5375331998352383775

/-! ## A324289.P12871865223821442822

`A324886(A019565(n))`
-/

namespace A324289.P12871865223821442822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A019565 n).toNat

end

end A324289.P12871865223821442822

/-! ## A324289.P300581638301646678

`A324886(sqrt(A334110(n)))`
-/

namespace A324289.P300581638301646678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A324289.P300581638301646678

/-! ## A324289.P16793034060552934869

`A324886(A339809(n)+1)`
-/

namespace A324289.P16793034060552934869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A339809 n + 1).toNat

end

end A324289.P16793034060552934869

/-!
# A324290: a(n) = 1 if for every prime divisor p of n, p-1 divides n-1, 0 otherwise; characteristic function of A087441.

The programs for A324290, the canonical program `A324290.P16051344129388341371` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324290 has offset 1).

The definition of A324290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324290.P14787662356740515393

`round(acot(A226040(n)))`
-/

namespace A324290.P14787662356740515393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A226040 n : ℝ))

end

end A324290.P14787662356740515393

namespace A324290

/-- `round(acot(A226040(n)))` -/
def P14787662356740515393.Spec : Prop :=
  ∀ n, P14787662356740515393.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P14918485417470315008

`char[A226038(n+1)]`
-/

namespace A324290.P14918485417470315008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324290.P14918485417470315008

namespace A324290

/-- `char[A226038(n+1)]` -/
def P14918485417470315008.Spec : Prop :=
  ∀ n, (P14918485417470315008.a n : ℤ) = A324290 (n + 1)

end A324290

/-! ## A324290.P16326256598098439609

`char[A087441(n+1)-1]`
-/

namespace A324290.P16326256598098439609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324290.P16326256598098439609

namespace A324290

/-- `char[A087441(n+1)-1]` -/
def P16326256598098439609.Spec : Prop :=
  ∀ n, (P16326256598098439609.a n : ℤ) = A324290 (n + 1)

end A324290

/-! ## A324290.P16051344129388341371

`A004530(A226040(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324290

/-- `A004530(A226040(n))` -/
def P16051344129388341371.Spec : Prop :=
  ∀ n, P16051344129388341371.a n = A324290 (n + 1)

theorem P16051344129388341371.correct : P16051344129388341371.Spec := by
  intro n
  simp only [A324290, Nat.add_sub_cancel]

end A324290

/-! ## A324290.P7361999407254306395

`A000007(A226040(n)-1)`
-/

namespace A324290.P7361999407254306395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A226040 n - 1).toNat

end

end A324290.P7361999407254306395

namespace A324290

/-- `A000007(A226040(n)-1)` -/
def P7361999407254306395.Spec : Prop :=
  ∀ n, P7361999407254306395.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P4907636492106721184

`A000045(C(2, A226040(n)))`
-/

namespace A324290.P4907636492106721184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A226040 n).toNat)

end

end A324290.P4907636492106721184

namespace A324290

/-- `A000045(C(2, A226040(n)))` -/
def P4907636492106721184.Spec : Prop :=
  ∀ n, P4907636492106721184.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P2016624764881267893

`A226060(C(2, A226040(n)))`
-/

namespace A324290.P2016624764881267893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226060 (Nat.choose 2 (A226040 n).toNat)

end

end A324290.P2016624764881267893

namespace A324290

/-- `A226060(C(2, A226040(n)))` -/
def P2016624764881267893.Spec : Prop :=
  ∀ n, P2016624764881267893.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P8032435136390884292

`A000007(xor(1, A226040(n)))`
-/

namespace A324290.P8032435136390884292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A226040 n)).toNat

end

end A324290.P8032435136390884292

namespace A324290

/-- `A000007(xor(1, A226040(n)))` -/
def P8032435136390884292.Spec : Prop :=
  ∀ n, P8032435136390884292.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P7536734445916370293

`1-A019426(A226040(n)-1)`
-/

namespace A324290.P7536734445916370293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019426 (A226040 n - 1).toNat

end

end A324290.P7536734445916370293

namespace A324290

/-- `1-A019426(A226040(n)-1)` -/
def P7536734445916370293.Spec : Prop :=
  ∀ n, P7536734445916370293.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P17284205149073283810

`xor(1, A019426(xor(1, A226040(n))))`
-/

namespace A324290.P17284205149073283810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A019426 (Int.xor 1 (A226040 n)).toNat)

end

end A324290.P17284205149073283810

namespace A324290

/-- `xor(1, A019426(xor(1, A226040(n))))` -/
def P17284205149073283810.Spec : Prop :=
  ∀ n, P17284205149073283810.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P13971877701070160587

`A000045(floor(2/A226040(n)²))`
-/

namespace A324290.P13971877701070160587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊2 / (A226040 n ^ 2 : ℚ)⌋.toNat

end

end A324290.P13971877701070160587

namespace A324290

/-- `A000045(floor(2/A226040(n)²))` -/
def P13971877701070160587.Spec : Prop :=
  ∀ n, P13971877701070160587.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P16258383895624292890

`A005836(floor(1/A226040(n))+1)`
-/

namespace A324290.P16258383895624292890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (⌊1 / (A226040 n : ℚ)⌋ + 1).toNat

end

end A324290.P16258383895624292890

namespace A324290

/-- `A005836(floor(1/A226040(n))+1)` -/
def P16258383895624292890.Spec : Prop :=
  ∀ n, P16258383895624292890.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P9361417206342451772

`A040976(floor(1/A226040(n))+1)`
-/

namespace A324290.P9361417206342451772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (⌊1 / (A226040 n : ℚ)⌋ + 1).toNat

end

end A324290.P9361417206342451772

namespace A324290

/-- `A040976(floor(1/A226040(n))+1)` -/
def P9361417206342451772.Spec : Prop :=
  ∀ n, P9361417206342451772.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P1914480441680684183

`floor(2/A000005(A226040(n)+1))`
-/

namespace A324290.P1914480441680684183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000005 (A226040 n + 1).toNat : ℚ)⌋

end

end A324290.P1914480441680684183

namespace A324290

/-- `floor(2/A000005(A226040(n)+1))` -/
def P1914480441680684183.Spec : Prop :=
  ∀ n, P1914480441680684183.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P10863038153671110113

`floor(2/A039649(A226040(n)+1))`
-/

namespace A324290.P10863038153671110113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A039649 (A226040 n + 1).toNat : ℚ)⌋

end

end A324290.P10863038153671110113

namespace A324290

/-- `floor(2/A039649(A226040(n)+1))` -/
def P10863038153671110113.Spec : Prop :=
  ∀ n, P10863038153671110113.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P10537567617651646395

`floor(2/A320628(A226040(n)+1))`
-/

namespace A324290.P10537567617651646395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A320628 (A226040 n + 1).toNat : ℚ)⌋

end

end A324290.P10537567617651646395

namespace A324290

/-- `floor(2/A320628(A226040(n)+1))` -/
def P10537567617651646395.Spec : Prop :=
  ∀ n, P10537567617651646395.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P259726738263603935

`floor(3/A000203(A226040(n)+1))`
-/

namespace A324290.P259726738263603935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A000203 (A226040 n + 1).toNat : ℚ)⌋

end

end A324290.P259726738263603935

namespace A324290

/-- `floor(3/A000203(A226040(n)+1))` -/
def P259726738263603935.Spec : Prop :=
  ∀ n, P259726738263603935.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P10230471112918397060

`and(1, A226040(n+1)+A019426(A226040(n)))`
-/

namespace A324290.P10230471112918397060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A226040 (n + 1) + A019426 (A226040 n).toNat)

end

end A324290.P10230471112918397060

namespace A324290

/-- `and(1, A226040(n+1)+A019426(A226040(n)))` -/
def P10230471112918397060.Spec : Prop :=
  ∀ n, P10230471112918397060.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P12947408623711232283

`round(A204455(A326584(n+1))/A204455(n+1))`
-/

namespace A324290.P12947408623711232283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A204455 (A326584 (n + 1)).toNat : ℚ) / (A204455 (n + 1) : ℚ))

end

end A324290.P12947408623711232283

namespace A324290

/-- `round(A204455(A326584(n+1))/A204455(n+1))` -/
def P12947408623711232283.Spec : Prop :=
  ∀ n, P12947408623711232283.a n = A324290 (n + 1)

end A324290

/-! ## A324290.P15243786117543166269

`A010055(2*A324291(n+1))`
-/

namespace A324290.P15243786117543166269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (2 * A324291 (n + 1)).toNat

end

end A324290.P15243786117543166269

namespace A324290

/-- `A010055(2*A324291(n+1))` -/
def P15243786117543166269.Spec : Prop :=
  ∀ n, P15243786117543166269.a n = A324290 (n + 1)

end A324290

/-!
# A324291: Product prime(1+((n-1) mod (p-1))), where p ranges over distinct prime divisors of n.

The programs for A324291, the canonical program `A324291.P13103428598125600832` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324291 has offset 1).

The definition of A324291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324291.P13103428598125600832

`∏{p}[n+1, A000040(n%A000010(#)+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324291

/-- `∏{p}[n+1, A000040(n%A000010(#)+1)]` -/
def P13103428598125600832.Spec : Prop :=
  ∀ n, P13103428598125600832.a n = A324291 (n + 1)

theorem P13103428598125600832.correct : P13103428598125600832.Spec := by
  intro n
  simp only [A324291, Nat.add_sub_cancel]

end A324291

/-! ## A324291.P3062643287909588029

`A325248(A292563(n)^A303759(n+1))`
-/

namespace A324291.P3062643287909588029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (SequenceMachineLib.roundAway ((A292563 n : ℚ) ^ (A303759 (n + 1) : ℤ))).toNat

end

end A324291.P3062643287909588029

namespace A324291

/-- `A325248(A292563(n)^A303759(n+1))` -/
def P3062643287909588029.Spec : Prop :=
  ∀ n, P3062643287909588029.a n = A324291 (n + 1)

end A324291

/-! ## A324291.P5909959879337413370

`A260803(9^A324292(n+1))`
-/

namespace A324291.P5909959879337413370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A324292 (n + 1) : ℤ))).toNat

end

end A324291.P5909959879337413370

namespace A324291

/-- `A260803(9^A324292(n+1))` -/
def P5909959879337413370.Spec : Prop :=
  ∀ n, P5909959879337413370.a n = A324291 (n + 1)

end A324291

/-! ## A324291.P15478760038093291646

`∑{d}[A306294(n+1), A306268(#)]`
-/

namespace A324291.P15478760038093291646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A306268 d

end

end A324291.P15478760038093291646

namespace A324291

/-- `∑{d}[A306294(n+1), A306268(#)]` -/
def P15478760038093291646.Spec : Prop :=
  ∀ n, P15478760038093291646.a n = A324291 (n + 1)

end A324291

/-! ## A324291.P11237493468063338886

`A293810(∏{d}[n+1, A105562(#)])`
-/

namespace A324291.P11237493468063338886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (∏ d ∈ Nat.divisors (f1 n), A105562 d).toNat

end

end A324291.P11237493468063338886

namespace A324291

/-- `A293810(∏{d}[n+1, A105562(#)])` -/
def P11237493468063338886.Spec : Prop :=
  ∀ n, P11237493468063338886.a n = A324291 (n + 1)

end A324291

/-!
# A324292: Lexicographically earliest sequence such that a(i) = a(j) => A324291(i) = A324291(j) for all i, j >= 1.

The programs for A324292, there is no canonical definition to state claims against.
-/

/-! ## A324292.P6490270402165982029

`A209082(A324291(n+1))`
-/

namespace A324292.P6490270402165982029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A324291 (n + 1)).toNat

end

end A324292.P6490270402165982029

/-! ## A324292.P9997738688003475418

`A107324(2*A324291(n+1))`
-/

namespace A324292.P9997738688003475418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (2 * A324291 (n + 1)).toNat

end

end A324292.P9997738688003475418

/-! ## A324292.P599466290738927601

`A178487(A324291(n+1)^3)+char[A305979(n+1)]`
-/

namespace A324292.P599466290738927601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A324291 (n + 1) ^ 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A324292.P599466290738927601

/-! ## A324292.P13730767011263763649

`A178487(A324291(n+1)^3)+A001222(A006530(n+1))`
-/

namespace A324292.P13730767011263763649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A324291 (n + 1) ^ 3).toNat + A001222 (A006530 (n + 1)).toNat

end

end A324292.P13730767011263763649

/-! ## A324292.P8652978863820126616

`A303759(n+1)+A267679(A001157(3*n+2))`
-/

namespace A324292.P8652978863820126616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303759 (n + 1) + A267679 (A001157 (3 * n + 2)).toNat

end

end A324292.P8652978863820126616

/-!
# A324293: a(n) = A002487(sigma(n)).

The programs for A324293, the canonical program `A324293.P15321960230669140692` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324293 has offset 1).

The definition of A324293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324293.P15321960230669140692

`A002487(A000203(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324293

/-- `A002487(A000203(n+1))` -/
def P15321960230669140692.Spec : Prop :=
  ∀ n, P15321960230669140692.a n = A324293 (n + 1)

theorem P15321960230669140692.correct : P15321960230669140692.Spec := by
  intro n
  simp only [A324293, Nat.add_sub_cancel]

end A324293

/-! ## A324293.P3708025626632209549

`A002487(A161942(n+1))`
-/

namespace A324293.P3708025626632209549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A161942 (n + 1)).toNat

end

end A324293.P3708025626632209549

namespace A324293

/-- `A002487(A161942(n+1))` -/
def P3708025626632209549.Spec : Prop :=
  ∀ n, P3708025626632209549.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P9999310438381451247

`A002487(∑{d}[n+1, #])`
-/

namespace A324293.P9999310438381451247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A324293.P9999310438381451247

namespace A324293

/-- `A002487(∑{d}[n+1, #])` -/
def P9999310438381451247.Spec : Prop :=
  ∀ n, P9999310438381451247.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P7432754377011366764

`A002487(Δ[A160664(n)])`
-/

namespace A324293.P7432754377011366764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (n + 1) - f1 n).toNat

end

end A324293.P7432754377011366764

namespace A324293

/-- `A002487(Δ[A160664(n)])` -/
def P7432754377011366764.Spec : Prop :=
  ∀ n, P7432754377011366764.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P4992681053645930646

`A002487(abs(Δ[A330725(n)]))`
-/

namespace A324293.P4992681053645930646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |f1 (n + 1) - f1 n|.toNat

end

end A324293.P4992681053645930646

namespace A324293

/-- `A002487(abs(Δ[A330725(n)]))` -/
def P4992681053645930646.Spec : Prop :=
  ∀ n, P4992681053645930646.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P11385841517136789804

`A002487(A245092(Δ[n²]))`
-/

namespace A324293.P11385841517136789804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A324293.P11385841517136789804

namespace A324293

/-- `A002487(A245092(Δ[n²]))` -/
def P11385841517136789804.Spec : Prop :=
  ∀ n, P11385841517136789804.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P12314319170372099703

`A002487(∑[A340793(n+1)])`
-/

namespace A324293.P12314319170372099703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324293.P12314319170372099703

namespace A324293

/-- `A002487(∑[A340793(n+1)])` -/
def P12314319170372099703.Spec : Prop :=
  ∀ n, P12314319170372099703.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P299170866773136083

`A002487(A088580(n+1)-1)`
-/

namespace A324293.P299170866773136083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A088580 (n + 1) - 1).toNat

end

end A324293.P299170866773136083

namespace A324293

/-- `A002487(A088580(n+1)-1)` -/
def P299170866773136083.Spec : Prop :=
  ∀ n, P299170866773136083.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P2097565951020923400

`A002487(A074400(n+1)/2)`
-/

namespace A324293.P2097565951020923400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A324293.P2097565951020923400

namespace A324293

/-- `A002487(A074400(n+1)/2)` -/
def P2097565951020923400.Spec : Prop :=
  ∀ n, P2097565951020923400.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P3213260647209577127

`A002487(A001065(n+1)+1+n)`
-/

namespace A324293.P3213260647209577127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A324293.P3213260647209577127

namespace A324293

/-- `A002487(A001065(n+1)+1+n)` -/
def P3213260647209577127.Spec : Prop :=
  ∀ n, P3213260647209577127.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P3346831935819190010

`A002487(A048050(n+1)+n+2)`
-/

namespace A324293.P3346831935819190010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A048050 (n + 1) + (n + 2 : ℤ)).toNat

end

end A324293.P3346831935819190010

namespace A324293

/-- `A002487(A048050(n+1)+n+2)` -/
def P3346831935819190010.Spec : Prop :=
  ∀ n, P3346831935819190010.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P17892591556560093848

`A002487(A155085(n+1)-(n+1))`
-/

namespace A324293.P17892591556560093848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324293.P17892591556560093848

namespace A324293

/-- `A002487(A155085(n+1)-(n+1))` -/
def P17892591556560093848.Spec : Prop :=
  ∀ n, P17892591556560093848.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P10381480140123937957

`A002487(A064987(n+1)/(n+1))`
-/

namespace A324293.P10381480140123937957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A324293.P10381480140123937957

namespace A324293

/-- `A002487(A064987(n+1)/(n+1))` -/
def P10381480140123937957.Spec : Prop :=
  ∀ n, P10381480140123937957.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P14439494419936407654

`A002487(A237588(n+1)+Δ[n²])`
-/

namespace A324293.P14439494419936407654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A324293.P14439494419936407654

namespace A324293

/-- `A002487(A237588(n+1)+Δ[n²])` -/
def P14439494419936407654.Spec : Prop :=
  ∀ n, P14439494419936407654.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P3303762098322254140

`A002487(A070039(n+1)+A070038(n+1))`
-/

namespace A324293.P3303762098322254140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A324293.P3303762098322254140

namespace A324293

/-- `A002487(A070039(n+1)+A070038(n+1))` -/
def P3303762098322254140.Spec : Prop :=
  ∀ n, P3303762098322254140.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P3055655350320989348

`A317840(2*A000203(n+1))`
-/

namespace A324293.P3055655350320989348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * A000203 (n + 1)).toNat

end

end A324293.P3055655350320989348

namespace A324293

/-- `A317840(2*A000203(n+1))` -/
def P3055655350320989348.Spec : Prop :=
  ∀ n, P3055655350320989348.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P14252494448316047957

`A002487(A074400(n+1))`
-/

namespace A324293.P14252494448316047957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A074400 (n + 1)).toNat

end

end A324293.P14252494448316047957

namespace A324293

/-- `A002487(A074400(n+1))` -/
def P14252494448316047957.Spec : Prop :=
  ∀ n, P14252494448316047957.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P12888304986643233144

`A288003(A002659(n+1))`
-/

namespace A324293.P12888304986643233144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A002659 (n + 1)).toNat

end

end A324293.P12888304986643233144

namespace A324293

/-- `A288003(A002659(n+1))` -/
def P12888304986643233144.Spec : Prop :=
  ∀ n, P12888304986643233144.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P13812623540415898293

`A295515(2*A000203(n+1))`
-/

namespace A324293.P13812623540415898293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * A000203 (n + 1)).toNat

end

end A324293.P13812623540415898293

namespace A324293

/-- `A295515(2*A000203(n+1))` -/
def P13812623540415898293.Spec : Prop :=
  ∀ n, P13812623540415898293.a n = A324293 (n + 1)

end A324293

/-! ## A324293.P17870524065376932759

`A002487(A239050(n+1))`
-/

namespace A324293.P17870524065376932759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A239050 (n + 1)).toNat

end

end A324293.P17870524065376932759

namespace A324293

/-- `A002487(A239050(n+1))` -/
def P17870524065376932759.Spec : Prop :=
  ∀ n, P17870524065376932759.a n = A324293 (n + 1)

end A324293

/-!
# A324294: a(n) = A002487(1+sigma(n)).

The programs for A324294, the canonical program `A324294.P11568485074478071538` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324294 has offset 1).

The definition of A324294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324294.P11568485074478071538

`A002487(∑{d}[n+1, #]+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324294

/-- `A002487(∑{d}[n+1, #]+1)` -/
def P11568485074478071538.Spec : Prop :=
  ∀ n, P11568485074478071538.a n = A324294 (n + 1)

theorem P11568485074478071538.correct : P11568485074478071538.Spec := by
  intro n
  simp only [A324294, Nat.add_sub_cancel]

end A324294

/-! ## A324294.P6000193797987957132

`A002487(A088580(n+1))`
-/

namespace A324294.P6000193797987957132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A088580 (n + 1)).toNat

end

end A324294.P6000193797987957132

namespace A324294

/-- `A002487(A088580(n+1))` -/
def P6000193797987957132.Spec : Prop :=
  ∀ n, P6000193797987957132.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P892461554437482245

`A002487(A332459(n+1))`
-/

namespace A324294.P892461554437482245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A332459 (n + 1)).toNat

end

end A324294.P892461554437482245

namespace A324294

/-- `A002487(A332459(n+1))` -/
def P892461554437482245.Spec : Prop :=
  ∀ n, P892461554437482245.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P13643005351886766177

`A002487(Δ[A160664(n)]+1)`
-/

namespace A324294.P13643005351886766177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (n + 1) - f1 n + 1).toNat

end

end A324294.P13643005351886766177

namespace A324294

/-- `A002487(Δ[A160664(n)]+1)` -/
def P13643005351886766177.Spec : Prop :=
  ∀ n, P13643005351886766177.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P17783348428057848664

`A002487(A000203(n+1)+1)`
-/

namespace A324294.P17783348428057848664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000203 (n + 1) + 1).toNat

end

end A324294.P17783348428057848664

namespace A324294

/-- `A002487(A000203(n+1)+1)` -/
def P17783348428057848664.Spec : Prop :=
  ∀ n, P17783348428057848664.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P8360211061213287257

`A002487(A155085(n+1)-n)`
-/

namespace A324294.P8360211061213287257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A324294.P8360211061213287257

namespace A324294

/-- `A002487(A155085(n+1)-n)` -/
def P8360211061213287257.Spec : Prop :=
  ∀ n, P8360211061213287257.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P6866982832656415347

`A324337(A233280(∑{d}[n+1, #]))`
-/

namespace A324294.P6866982832656415347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A233280 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A324294.P6866982832656415347

namespace A324294

/-- `A324337(A233280(∑{d}[n+1, #]))` -/
def P6866982832656415347.Spec : Prop :=
  ∀ n, P6866982832656415347.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P6309278255164302260

`A002487(∑[A340793(n+1)]+1)`
-/

namespace A324294.P6309278255164302260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A324294.P6309278255164302260

namespace A324294

/-- `A002487(∑[A340793(n+1)]+1)` -/
def P6309278255164302260.Spec : Prop :=
  ∀ n, P6309278255164302260.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P9471057581411731600

`A002487(A245092(2*n+1)+1)`
-/

namespace A324294.P9471057581411731600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A245092 (2 * n + 1) + 1).toNat

end

end A324294.P9471057581411731600

namespace A324294

/-- `A002487(A245092(2*n+1)+1)` -/
def P9471057581411731600.Spec : Prop :=
  ∀ n, P9471057581411731600.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P3713320540305972469

`A002487(A074400(n+1)/2+1)`
-/

namespace A324294.P3713320540305972469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A324294.P3713320540305972469

namespace A324294

/-- `A002487(A074400(n+1)/2+1)` -/
def P3713320540305972469.Spec : Prop :=
  ∀ n, P3713320540305972469.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P7464104853125174586

`A002487(A001065(n+1)+2+n)`
-/

namespace A324294.P7464104853125174586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A324294.P7464104853125174586

namespace A324294

/-- `A002487(A001065(n+1)+2+n)` -/
def P7464104853125174586.Spec : Prop :=
  ∀ n, P7464104853125174586.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P8102767719055834558

`A002487(A070038(n+1)+A070039(n+1)+1)`
-/

namespace A324294.P8102767719055834558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A070038 (n + 1) + (A070039 (n + 1) + 1)).toNat

end

end A324294.P8102767719055834558

namespace A324294

/-- `A002487(A070038(n+1)+A070039(n+1)+1)` -/
def P8102767719055834558.Spec : Prop :=
  ∀ n, P8102767719055834558.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P1981339913199660327

`A002487(A054429(∑{d}[n+1, #]))`
-/

namespace A324294.P1981339913199660327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054429 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A324294.P1981339913199660327

namespace A324294

/-- `A002487(A054429(∑{d}[n+1, #]))` -/
def P1981339913199660327.Spec : Prop :=
  ∀ n, P1981339913199660327.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P9232042858409703480

`A317840(2*(A000203(n+1)+1))`
-/

namespace A324294.P9232042858409703480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (A000203 (n + 1) + 1)).toNat

end

end A324294.P9232042858409703480

namespace A324294

/-- `A317840(2*(A000203(n+1)+1))` -/
def P9232042858409703480.Spec : Prop :=
  ∀ n, P9232042858409703480.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P17008975395418571224

`A317840(A000203(n+1)+A000203(n+1)+2)`
-/

namespace A324294.P17008975395418571224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (A000203 (n + 1) + (A000203 (n + 1) + 2)).toNat

end

end A324294.P17008975395418571224

namespace A324294

/-- `A317840(A000203(n+1)+A000203(n+1)+2)` -/
def P17008975395418571224.Spec : Prop :=
  ∀ n, P17008975395418571224.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P828275897096070169

`A002487(A074400(n+1)+2)`
-/

namespace A324294.P828275897096070169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A074400 (n + 1) + 2).toNat

end

end A324294.P828275897096070169

namespace A324294

/-- `A002487(A074400(n+1)+2)` -/
def P828275897096070169.Spec : Prop :=
  ∀ n, P828275897096070169.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P5891241867308809598

`A288003(A002659(n+1)+2)`
-/

namespace A324294.P5891241867308809598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A002659 (n + 1) + 2).toNat

end

end A324294.P5891241867308809598

namespace A324294

/-- `A288003(A002659(n+1)+2)` -/
def P5891241867308809598.Spec : Prop :=
  ∀ n, P5891241867308809598.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P7618024612478110980

`A070990(2*(A000203(n+1)-1))`
-/

namespace A324294.P7618024612478110980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * (A000203 (n + 1) - 1)).toNat

end

end A324294.P7618024612478110980

namespace A324294

/-- `A070990(2*(A000203(n+1)-1))` -/
def P7618024612478110980.Spec : Prop :=
  ∀ n, P7618024612478110980.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P17707859425887520280

`A002487(A239050(n+1)/2+2)`
-/

namespace A324294.P17707859425887520280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A324294.P17707859425887520280

namespace A324294

/-- `A002487(A239050(n+1)/2+2)` -/
def P17707859425887520280.Spec : Prop :=
  ∀ n, P17707859425887520280.a n = A324294 (n + 1)

end A324294

/-! ## A324294.P16865416760195266450

`A070990(A239050(n+1)/2-2)`
-/

namespace A324294.P16865416760195266450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 - 2)).toNat

end

end A324294.P16865416760195266450

namespace A324294

/-- `A070990(A239050(n+1)/2-2)` -/
def P16865416760195266450.Spec : Prop :=
  ∀ n, P16865416760195266450.a n = A324294 (n + 1)

end A324294

/-!
# A324295: Numbers k such that s(k) = s(k+1) where s(k) is the sum of divisors of k that are smaller than sqrt(k) (A070039).

The programs for A324295, there is no canonical definition to state claims against.
-/

/-! ## A324295.P5357345574905860044

`A334020(∑[A115085(n)!])`
-/

namespace A324295.P5357345574905860044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A115085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324295.P5357345574905860044

/-! ## A324295.P14241496777420314072

`A334020(∑[A327801(n)!])`
-/

namespace A324295.P14241496777420314072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324295.P14241496777420314072

/-!
# A324297: Positive integers k that are the product of two integers ending with 6.

The programs for A324297, there is no canonical definition to state claims against.
-/

/-! ## A324297.P316444201237465939

`A017341(A324298(n+1))`
-/

namespace A324297.P316444201237465939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (A324298 (n + 1)).toNat

end

end A324297.P316444201237465939

/-! ## A324297.P2871649714995327859

`A168184(A067251(n+1))+A017329(A324298(n+1))`
-/

namespace A324297.P2871649714995327859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A067251 (n + 1)).toNat + A017329 (A324298 (n + 1)).toNat

end

end A324297.P2871649714995327859

/-! ## A324297.P5406041232887675856

`A016861(A324298(n+1)+1)+A008587(A324298(n+1))`
-/

namespace A324297.P5406041232887675856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A324298 (n + 1) + 1).toNat + A008587 (A324298 (n + 1)).toNat

end

end A324297.P5406041232887675856

/-! ## A324297.P2100718177135183803

`A168184(A016861(n))+A017329(A324298(n+1))`
-/

namespace A324297.P2100718177135183803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A016861 n).toNat + A017329 (A324298 (n + 1)).toNat

end

end A324297.P2100718177135183803

/-! ## A324297.P16841330661977406005

`A016861(2*A324298(n+1)+1)`
-/

namespace A324297.P16841330661977406005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A324298 (n + 1) + 1).toNat

end

end A324297.P16841330661977406005

/-! ## A324297.P17086813746498619110

`A016861(A324298(n+1)+A324298(n+1)+1)`
-/

namespace A324297.P17086813746498619110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A324298 (n + 1) + (A324298 (n + 1) + 1)).toNat

end

end A324297.P17086813746498619110

/-! ## A324297.P14510697825515604492

`A168184(A017329(n))+A017329(A324298(n+1))`
-/

namespace A324297.P14510697825515604492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A017329 n).toNat + A017329 (A324298 (n + 1)).toNat

end

end A324297.P14510697825515604492

/-! ## A324297.P1644592044874232502

`A017329(A324298(n+1))+A014963(A053741(n))`
-/

namespace A324297.P1644592044874232502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (A324298 (n + 1)).toNat + A014963 (A053741 n).toNat

end

end A324297.P1644592044874232502

/-! ## A324297.P7840203690324932960

`A017329(A324298(n+1))+A014963(A053743(n))`
-/

namespace A324297.P7840203690324932960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (A324298 (n + 1)).toNat + A014963 (A053743 n).toNat

end

end A324297.P7840203690324932960

/-!
# A324298: Positive integers k such that 10*k+6 is equal to the product of two integers ending with 6 (A324297).

The programs for A324298, there is no canonical definition to state claims against.
-/

/-! ## A324298.P15376257839402394619

`(A324297(n+1)-6)/10`
-/

namespace A324298.P15376257839402394619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324297 (n + 1) - 6 : ℚ) / 10

end

end A324298.P15376257839402394619

/-! ## A324298.P2323909555357237420

`floor(A324297(n+1)/10)`
-/

namespace A324298.P2323909555357237420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324297 (n + 1) : ℚ) / 10⌋

end

end A324298.P2323909555357237420

/-! ## A324298.P4693995930251628208

`A057354(A324297(n+1)/4)`
-/

namespace A324298.P4693995930251628208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway ((A324297 (n + 1) : ℚ) / 4)).toNat

end

end A324298.P4693995930251628208

/-! ## A324298.P1422980383598617988

`A130497(A324297(n+1)/4)`
-/

namespace A324298.P1422980383598617988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (SequenceMachineLib.roundAway ((A324297 (n + 1) : ℚ) / 4)).toNat

end

end A324298.P1422980383598617988

/-! ## A324298.P12171255180243982399

`A194508(A324297(n+1)/2)`
-/

namespace A324298.P12171255180243982399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (SequenceMachineLib.roundAway ((A324297 (n + 1) : ℚ) / 2)).toNat

end

end A324298.P12171255180243982399

/-! ## A324298.P5420503858617019818

`A059995(A324297(n+1))`
-/

namespace A324298.P5420503858617019818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A324297 (n + 1)).toNat

end

end A324298.P5420503858617019818

/-! ## A324298.P17270852870609485691

`A076309(A324297(n+1)-6)`
-/

namespace A324298.P17270852870609485691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A324297 (n + 1) - 6).toNat

end

end A324298.P17270852870609485691

/-! ## A324298.P17121835930947417814

`A076310(A324297(n+1)-6)`
-/

namespace A324298.P17121835930947417814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (A324297 (n + 1) - 6).toNat

end

end A324298.P17121835930947417814

/-! ## A324298.P3475447644239175164

`A076312(A324297(n+1)-6)`
-/

namespace A324298.P3475447644239175164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A324297 (n + 1) - 6).toNat

end

end A324298.P3475447644239175164

/-! ## A324298.P5678451020234409237

`A106611(A324297(n+1)-6)`
-/

namespace A324298.P5678451020234409237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A324297 (n + 1) - 6).toNat

end

end A324298.P5678451020234409237

/-! ## A324298.P13484176554691748669

`A076313(A324297(n+1)+5)`
-/

namespace A324298.P13484176554691748669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A324297 (n + 1) + 5).toNat

end

end A324298.P13484176554691748669

