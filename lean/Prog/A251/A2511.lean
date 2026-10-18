import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A251100: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251100, there is no canonical definition to state claims against.
-/

/-! ## A251100.P16003142846735917765

`A105709(A273845(n))-A353314(3*n+1)`
-/

namespace A251100.P16003142846735917765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105709 (A273845 n).toNat - A353314 (3 * n + 1)

end

end A251100.P16003142846735917765

/-!
# A251101: Smallest prime factor of A098550(n).

The programs for A251101, there is no canonical definition to state claims against.
-/

/-! ## A251101.P6062227577747410630

`A020639(A098550(n+1))`
-/

namespace A251101.P6062227577747410630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098550 (n + 1)).toNat

end

end A251101.P6062227577747410630

/-! ## A251101.P9614902140408975853

`A020639(A251089(n+1))`
-/

namespace A251101.P9614902140408975853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A251089 (n + 1)).toNat

end

end A251101.P9614902140408975853

/-! ## A251101.P6197033671809749305

`A020639(A098552(A098551(n+1)))`
-/

namespace A251101.P6197033671809749305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098552 (A098551 (n + 1)).toNat).toNat

end

end A251101.P6197033671809749305

/-! ## A251101.P1633534490494416065

`A014673(2*A098550(n+1))`
-/

namespace A251101.P1633534490494416065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A098550 (n + 1)).toNat

end

end A251101.P1633534490494416065

/-! ## A251101.P5572319786354920891

`A014673(A098550(n+1)+A098550(n+1))`
-/

namespace A251101.P5572319786354920891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A098550 (n + 1) + A098550 (n + 1)).toNat

end

end A251101.P5572319786354920891

/-! ## A251101.P5713434296965476921

`A115561(4*A098550(n+1))`
-/

namespace A251101.P5713434296965476921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (4 * A098550 (n + 1)).toNat

end

end A251101.P5713434296965476921

/-! ## A251101.P15956607418036166779

`A107286(A098550(n+1)²)`
-/

namespace A251101.P15956607418036166779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A098550 (n + 1) ^ 2).toNat

end

end A251101.P15956607418036166779

/-! ## A251101.P7624997053721792815

`A107286(A098550(n+1)*A098550(n+1))`
-/

namespace A251101.P7624997053721792815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A098550 (n + 1) * A098550 (n + 1)).toNat

end

end A251101.P7624997053721792815

/-! ## A251101.P10067974623454714934

`A014673(A098550(n+1)²)`
-/

namespace A251101.P10067974623454714934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A098550 (n + 1) ^ 2).toNat

end

end A251101.P10067974623454714934

/-!
# A251102: a(n) = gcd(A098550(n+2), A098550(n)).

The programs for A251102, there is no canonical definition to state claims against.
-/

/-! ## A251102.P376243004501062208

`gcd(A098550(n+1), A098550(n+3))`
-/

namespace A251102.P376243004501062208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098550 (n + 1)) (A098550 (n + 3))

end

end A251102.P376243004501062208

/-! ## A251102.P16468677495426604108

`gcd(A098552(A098551(n+1)), A098552(A098551(n+3)))`
-/

namespace A251102.P16468677495426604108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098552 (A098551 (n + 1)).toNat) (A098552 (A098551 (n + 3)).toNat)

end

end A251102.P16468677495426604108

/-!
# A251103: Largest prime factor of A098550(n).

The programs for A251103, there is no canonical definition to state claims against.
-/

/-! ## A251103.P251982835598649834

`A006530(A098550(n+1))`
-/

namespace A251103.P251982835598649834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098550 (n + 1)).toNat

end

end A251103.P251982835598649834

/-! ## A251103.P2436023941673197471

`A006530(A251089(n+1))`
-/

namespace A251103.P2436023941673197471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A251089 (n + 1)).toNat

end

end A251103.P2436023941673197471

/-! ## A251103.P10362609843535186385

`A034699(∏{p}[A098550(n+1), #])`
-/

namespace A251103.P10362609843535186385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251103.P10362609843535186385

/-! ## A251103.P10646523917288777380

`A088387(A251089(n+1)%A017186(n))`
-/

namespace A251103.P10646523917288777380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Int.tmod (A251089 (n + 1)) (A017186 n)).toNat

end

end A251103.P10646523917288777380

/-! ## A251103.P11426627208691311254

`A088387(A251089(n+1))%A028815(n)`
-/

namespace A251103.P11426627208691311254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088387 (A251089 (n + 1)).toNat) (A028815 n)

end

end A251103.P11426627208691311254

/-! ## A251103.P16740097548560755786

`A006530(A098552(A098551(n+1)))`
-/

namespace A251103.P16740097548560755786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098552 (A098551 (n + 1)).toNat).toNat

end

end A251103.P16740097548560755786

/-! ## A251103.P11479239969531124341

`A223491(∏{p}[A098550(n+1), #])`
-/

namespace A251103.P11479239969531124341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251103.P11479239969531124341

/-! ## A251103.P7301548849359339855

`A217581(A098550(n+1)²)`
-/

namespace A251103.P7301548849359339855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A098550 (n + 1) ^ 2).toNat

end

end A251103.P7301548849359339855

/-!
# A251104: Largest prime factor of A098548(n).

The programs for A251104, there is no canonical definition to state claims against.
-/

/-! ## A251104.P9811409822108796841

`A006530(A098548(n+1))`
-/

namespace A251104.P9811409822108796841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098548 (n + 1)).toNat

end

end A251104.P9811409822108796841

/-! ## A251104.P6861185330173835603

`A006530(A251090(n+1))`
-/

namespace A251104.P6861185330173835603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A251090 (n + 1)).toNat

end

end A251104.P6861185330173835603

/-! ## A251104.P1715519070633481369

`A034699(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P1715519070633481369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P1715519070633481369

/-! ## A251104.P13560391757979731403

`A002034(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P13560391757979731403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P13560391757979731403

/-! ## A251104.P15281379682894682364

`A025492(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P15281379682894682364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P15281379682894682364

/-! ## A251104.P18013349534232781149

`A053585(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P18013349534232781149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P18013349534232781149

/-!
# A251105: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251105, there is no canonical definition to state claims against.
-/

/-! ## A251105.P6171832074646232075

`A251113(∑[4*n]+1)`
-/

namespace A251105.P6171832074646232075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251105.P6171832074646232075

/-! ## A251105.P562534071047428932

`record[gcd(A114327(n), A251113(n+1))]`
-/

namespace A251105.P562534071047428932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251113 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251105.P562534071047428932

/-! ## A251105.P14375064672651056913

`A167852(n+1)*A251113(A001844(n))`
-/

namespace A251105.P14375064672651056913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167852 (n + 1) * A251113 (A001844 n).toNat

end

end A251105.P14375064672651056913

/-! ## A251105.P8857783993704446826

`ceil(2/A000040(n+1))*A251113(A001844(n))`
-/

namespace A251105.P8857783993704446826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A000040 (n + 1) : ℚ)⌉ * A251113 (A001844 n).toNat

end

end A251105.P8857783993704446826

/-! ## A251105.P12739507710904972464

`A251113(A001844(n))+n%2*A003056(A079981(n))`
-/

namespace A251105.P12739507710904972464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A001844 n).toNat + ((n % 2 : ℕ) : ℤ) * A003056 (A079981 n).toNat

end

end A251105.P12739507710904972464

/-!
# A251106: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251106, there is no canonical definition to state claims against.
-/

/-! ## A251106.P18269631864842966646

`A251113(∑[n]+1)`
-/

namespace A251106.P18269631864842966646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251106.P18269631864842966646

/-! ## A251106.P18307290352513551871

`tan(acot(1))*A251113(A000124(n))`
-/

namespace A251106.P18307290352513551871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) * (A251113 (A000124 n).toNat : ℝ)

end

end A251106.P18307290352513551871

/-! ## A251106.P7080445955943144266

`record[A010054(n)*A251113(n+1)]`
-/

namespace A251106.P7080445955943144266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251106.P7080445955943144266

/-! ## A251106.P17455833665728913544

`record[root(A251113(n+1), A008459(n))]`
-/

namespace A251106.P17455833665728913544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251113 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251106.P17455833665728913544

/-! ## A251106.P4179990269388456657

`record[root(A251113(n+1), A130595(n))]`
-/

namespace A251106.P4179990269388456657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251113 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251106.P4179990269388456657

/-!
# A251107: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251107, there is no canonical definition to state claims against.
-/

/-! ## A251107.P4449805467571854262

`A251113(∑[n+1]+2)`
-/

namespace A251107.P4449805467571854262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251107.P4449805467571854262

/-! ## A251107.P5351628624184958120

`record[A010054(n)*A251113(n+2)]`
-/

namespace A251107.P5351628624184958120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P5351628624184958120

/-! ## A251107.P6843308692992367084

`record[A251113(n+3)/A164855(n)]`
-/

namespace A251107.P6843308692992367084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251113 (n + 3) : ℚ) / (A164855 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P6843308692992367084

/-! ## A251107.P17114159818143560803

`record[gcd(A002262(n), A251113(n+2))]`
-/

namespace A251107.P17114159818143560803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251113 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P17114159818143560803

/-! ## A251107.P8664365238336862481

`record[A251113(A133263(A008624(n)))]`
-/

namespace A251107.P8664365238336862481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P8664365238336862481

/-!
# A251108: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251108, there is no canonical definition to state claims against.
-/

/-! ## A251108.P2121563908576537486

`A251113(∑[n+2]+4)`
-/

namespace A251108.P2121563908576537486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251108.P2121563908576537486

/-! ## A251108.P2755794167839400372

`A251113(A167614(n+1))+A185284(n)`
-/

namespace A251108.P2755794167839400372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A167614 (n + 1)).toNat + A185284 n

end

end A251108.P2755794167839400372

/-! ## A251108.P7559971257740704463

`or(A000038(n), A251113(A167614(n+1)))`
-/

namespace A251108.P7559971257740704463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251113 (A167614 (n + 1)).toNat)

end

end A251108.P7559971257740704463

/-! ## A251108.P15691442139177103611

`or(A186748(n), A251113(A167614(n+1)))`
-/

namespace A251108.P15691442139177103611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186748 n) (A251113 (A167614 (n + 1)).toNat)

end

end A251108.P15691442139177103611

/-! ## A251108.P6583365585318268361

`A251113(A167614(n+1))%A250508(n+1)`
-/

namespace A251108.P6583365585318268361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251113 (A167614 (n + 1)).toNat) (A250508 (n + 1))

end

end A251108.P6583365585318268361

/-!
# A251109: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251109, there is no canonical definition to state claims against.
-/

/-! ## A251109.P469890375167801343

`A251113(A374004(n+1))`
-/

namespace A251109.P469890375167801343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374004 (n + 1)).toNat

end

end A251109.P469890375167801343

/-! ## A251109.P9984220337742895521

`A251113(A141214(n)+7)`
-/

namespace A251109.P9984220337742895521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A141214 n + 7).toNat

end

end A251109.P9984220337742895521

/-! ## A251109.P16561860746936472851

`A251113(A052905(n)+9)`
-/

namespace A251109.P16561860746936472851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A052905 n + 9).toNat

end

end A251109.P16561860746936472851

/-! ## A251109.P17516051912713420813

`A251113(A167614(n+2)+1)`
-/

namespace A251109.P17516051912713420813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A167614 (n + 2) + 1).toNat

end

end A251109.P17516051912713420813

/-! ## A251109.P18212265860205545137

`A251113(Δ[A264443(n)-n²])`
-/

namespace A251109.P18212265860205545137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (f1 (n + 1) - f1 n).toNat

end

end A251109.P18212265860205545137

/-!
# A251110: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251110, there is no canonical definition to state claims against.
-/

/-! ## A251110.P16872123939408841577

`A251113(A374005(n+1))`
-/

namespace A251110.P16872123939408841577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374005 (n + 1)).toNat

end

end A251110.P16872123939408841577

/-! ## A251110.P4537766942569724383

`A251113(A167499(n+3))`
-/

namespace A251110.P4537766942569724383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A167499 (n + 3)).toNat

end

end A251110.P4537766942569724383

/-! ## A251110.P11613981076456147749

`A251113(Δ[A264443(n)])`
-/

namespace A251110.P11613981076456147749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (f1 (n + 1) - f1 n).toNat

end

end A251110.P11613981076456147749

/-! ## A251110.P9211101128648325016

`A251113(A046691(n+3))`
-/

namespace A251110.P9211101128648325016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A046691 (n + 3)).toNat

end

end A251110.P9211101128648325016

/-! ## A251110.P12493690275100809814

`A251113(eq[4, A193592(n)])`
-/

namespace A251110.P12493690275100809814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251110.P12493690275100809814

/-!
# A251111: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251111, there is no canonical definition to state claims against.
-/

/-! ## A251111.P15409501632209574960

`A251113(A374007(n+1))`
-/

namespace A251111.P15409501632209574960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374007 (n + 1)).toNat

end

end A251111.P15409501632209574960

/-! ## A251111.P10737550541951912912

`A251113(Δ[A264443(n)]+10)`
-/

namespace A251111.P10737550541951912912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (f1 (n + 1) - f1 n + 10).toNat

end

end A251111.P10737550541951912912

/-! ## A251111.P13118791637988367030

`A251113(eq[3, A219347(n)])`
-/

namespace A251111.P13118791637988367030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251111.P13118791637988367030

/-! ## A251111.P18434748066321814337

`A251113(eq[5, A193592(n)])`
-/

namespace A251111.P18434748066321814337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251111.P18434748066321814337

/-! ## A251111.P4084259247151503347

`A251113(eq[7, A049286(n+1)])`
-/

namespace A251111.P4084259247151503347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251111.P4084259247151503347

/-!
# A251112: Number of (n+1)X(7+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251112, there is no canonical definition to state claims against.
-/

/-! ## A251112.P7383805304906844970

`A251113(A374008(n+1))`
-/

namespace A251112.P7383805304906844970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374008 (n + 1)).toNat

end

end A251112.P7383805304906844970

/-! ## A251112.P11132158849462831412

`A251113(eq[8, A131818(n+1)])`
-/

namespace A251112.P11132158849462831412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251112.P11132158849462831412

/-! ## A251112.P16791012960818006471

`A251113(A055999(n+4))`
-/

namespace A251112.P16791012960818006471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A055999 (n + 4)).toNat

end

end A251112.P16791012960818006471

/-! ## A251112.P15535204760579620224

`A251113(eq[4, A219347(n)])`
-/

namespace A251112.P15535204760579620224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251112.P15535204760579620224

/-! ## A251112.P12463605534965300751

`A251113(eq[6, A193592(n)])`
-/

namespace A251112.P12463605534965300751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251112.P12463605534965300751

/-!
# A251114: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251114, there is no canonical definition to state claims against.
-/

/-! ## A251114.P17129599454214323767

`A251120(∑[n]+1)`
-/

namespace A251114.P17129599454214323767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251114.P17129599454214323767

/-! ## A251114.P16611530986210123426

`record[root(A251120(n+1), A109128(n))]`
-/

namespace A251114.P16611530986210123426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A109128 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P16611530986210123426

/-! ## A251114.P11497910213465764946

`record[gcd(A002262(n), A251120(n+1))]`
-/

namespace A251114.P11497910213465764946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P11497910213465764946

/-! ## A251114.P3759078450433344782

`record[root(A251120(n+1), A141696(n+1))]`
-/

namespace A251114.P3759078450433344782
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A141696 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P3759078450433344782

/-! ## A251114.P5925643928094771006

`record[root(A251120(n+1), A200329(n+1))]`
-/

namespace A251114.P5925643928094771006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A200329 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P5925643928094771006

/-!
# A251115: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251115, there is no canonical definition to state claims against.
-/

/-! ## A251115.P11995334263983329837

`A251120(∑[n+1]+2)`
-/

namespace A251115.P11995334263983329837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251115.P11995334263983329837

/-! ## A251115.P4958338229916591172

`record[gcd(A002262(n), A251120(n+2))]`
-/

namespace A251115.P4958338229916591172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251120 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P4958338229916591172

/-! ## A251115.P3813635814537962670

`record[A251120(gcd(n, A341279(n))+2)]`
-/

namespace A251115.P3813635814537962670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (Int.gcd (n : ℤ) (A341279 n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P3813635814537962670

/-! ## A251115.P924925379963623461

`record[A251120(lt[A141696(n+1), n])]`
-/

namespace A251115.P924925379963623461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P924925379963623461

/-! ## A251115.P2098140508264216090

`record[A251120(A198453(n+1))]`
-/

namespace A251115.P2098140508264216090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P2098140508264216090

/-!
# A251116: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251116, there is no canonical definition to state claims against.
-/

/-! ## A251116.P2737992197143523825

`A251120(∑[n+2]+4)`
-/

namespace A251116.P2737992197143523825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251116.P2737992197143523825

/-! ## A251116.P6029697995660088966

`A251120(A167614(n+1))+A084904(n)`
-/

namespace A251116.P6029697995660088966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A167614 (n + 1)).toNat + A084904 n

end

end A251116.P6029697995660088966

/-! ## A251116.P6715013490245676837

`A251120(A167614(n+1))+A165656(n)`
-/

namespace A251116.P6715013490245676837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A167614 (n + 1)).toNat + A165656 n

end

end A251116.P6715013490245676837

/-! ## A251116.P6788227874472763288

`A139551(n)*A251120(A167614(n+1))`
-/

namespace A251116.P6788227874472763288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A251120 (A167614 (n + 1)).toNat

end

end A251116.P6788227874472763288

/-! ## A251116.P15783729223724938666

`A251120(A167614(n+1))*A303929(n)`
-/

namespace A251116.P15783729223724938666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A167614 (n + 1)).toNat * A303929 n

end

end A251116.P15783729223724938666

/-!
# A251117: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251117, there is no canonical definition to state claims against.
-/

/-! ## A251117.P16366480099411798486

`A251120(A167614(n+2)+1)`
-/

namespace A251117.P16366480099411798486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A167614 (n + 2) + 1).toNat

end

end A251117.P16366480099411798486

/-! ## A251117.P7473879019163332719

`A251120(eq[4, A200329(n+1)])`
-/

namespace A251117.P7473879019163332719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251117.P7473879019163332719

/-!
# A251118: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251118, there is no canonical definition to state claims against.
-/

/-! ## A251118.P11936111017861105753

`A251120(A374005(n+1))`
-/

namespace A251118.P11936111017861105753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A374005 (n + 1)).toNat

end

end A251118.P11936111017861105753

/-! ## A251118.P4216326692770466526

`A251120(eq[5, A200329(n+1)])`
-/

namespace A251118.P4216326692770466526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251118.P4216326692770466526

/-!
# A251119: 

The programs for A251119, there is no canonical definition to state claims against.
-/

/-! ## A251119.P10238246518123675659

`A251120(abs(A166136(n+4)-1)+1)`
-/

namespace A251119.P10238246518123675659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (|A166136 (n + 4) - 1| + 1).toNat

end

end A251119.P10238246518123675659

/-!
# A251121: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251121, there is no canonical definition to state claims against.
-/

/-! ## A251121.P408977155468553186

`A251128(∑[4*n]+1)`
-/

namespace A251121.P408977155468553186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251121.P408977155468553186

/-! ## A251121.P5498638720869590839

`lcm(2, A251128(A001844(n)))`
-/

namespace A251121.P5498638720869590839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251128 (A001844 n).toNat)

end

end A251121.P5498638720869590839

/-! ## A251121.P2038332646904549688

`record[A251128(A003602((n+1)²))]`
-/

namespace A251121.P2038332646904549688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251121.P2038332646904549688

/-! ## A251121.P10831077800683961999

`abs(4-A251128(A099392(2*(n+1))))+4`
-/

namespace A251121.P10831077800683961999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A251128 (A099392 (2 * (n + 1))).toNat| + 4

end

end A251121.P10831077800683961999

/-! ## A251121.P6457418842758083499

`A251128(A001844(n))+A137579(n)`
-/

namespace A251121.P6457418842758083499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A001844 n).toNat + A137579 n

end

end A251121.P6457418842758083499

/-!
# A251122: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251122, the canonical program `A251122.P1468921088716064169` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251122 has offset 1).

The definition of A251122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251122.P1468921088716064169

`∑[n]+3*A111314(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251122

/-- `∑[n]+3*A111314(n+3)` -/
def P1468921088716064169.Spec : Prop :=
  ∀ n, P1468921088716064169.a n = A251122 (n + 1)

theorem P1468921088716064169.correct : P1468921088716064169.Spec := by
  intro n
  simp only [A251122, Nat.add_sub_cancel]

end A251122

/-! ## A251122.P8436978645172465434

`3*A111314(n+3)+A000124(n)-1`
-/

namespace A251122.P8436978645172465434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (A000124 n - 1)

end

end A251122.P8436978645172465434

namespace A251122

/-- `3*A111314(n+3)+A000124(n)-1` -/
def P8436978645172465434.Spec : Prop :=
  ∀ n, P8436978645172465434.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P7273678835184438

`3*A111314(n+3)+Δ[A000292(n)]-(n+1)`
-/

namespace A251122.P7273678835184438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A251122.P7273678835184438

namespace A251122

/-- `3*A111314(n+3)+Δ[A000292(n)]-(n+1)` -/
def P7273678835184438.Spec : Prop :=
  ∀ n, P7273678835184438.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P1652822609444203206

`A000217(n+1)+3*A111314(n+3)-(n+1)`
-/

namespace A251122.P1652822609444203206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 3 * A111314 (n + 3) - (n + 1 : ℤ)

end

end A251122.P1652822609444203206

namespace A251122

/-- `A000217(n+1)+3*A111314(n+3)-(n+1)` -/
def P1652822609444203206.Spec : Prop :=
  ∀ n, P1652822609444203206.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P2168532744105586175

`3*A111314(n+3)+A133263(n+1)-(n+3)`
-/

namespace A251122.P2168532744105586175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (A133263 (n + 1) - (n + 3 : ℤ))

end

end A251122.P2168532744105586175

namespace A251122

/-- `3*A111314(n+3)+A133263(n+1)-(n+3)` -/
def P2168532744105586175.Spec : Prop :=
  ∀ n, P2168532744105586175.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P290310084548491925

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=21, a(1)=40, a(2)=69, a(3)=117, a(4)=193`
-/

namespace A251122.P290310084548491925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 40, 69, 117, 193] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A251122.P290310084548491925

namespace A251122

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P290310084548491925.Spec : Prop :=
  ∀ n, P290310084548491925.a n = A251122 (n + 1)

end A251122

/-!
# A251123: Number of (n+1) X (3+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251123, the canonical program `A251123.P11772369171925110912` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251123 has offset 1).

The definition of A251123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251123.P11772369171925110912

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=40, a(1)=69, a(2)=108, a(3)=173, a(4)=272, a(5)=430`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251123

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P11772369171925110912.Spec : Prop :=
  ∀ n, P11772369171925110912.a n = A251123 (n + 1)

theorem P11772369171925110912.correct : P11772369171925110912.Spec := by
  intro n
  simp only [A251123, Nat.add_sub_cancel]

end A251123

/-! ## A251123.P16308514490826245918

`A251128(∑[n+2]+4)`
-/

namespace A251123.P16308514490826245918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251123.P16308514490826245918

namespace A251123

/-- `A251128(∑[n+2]+4)` -/
def P16308514490826245918.Spec : Prop :=
  ∀ n, P16308514490826245918.a n = A251123 (n + 1)

end A251123

/-! ## A251123.P4721273119197405450

`or(char[1], A251128(A167614(n+1)))`
-/

namespace A251123.P4721273119197405450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251128 (A167614 (n + 1)).toNat)

end

end A251123.P4721273119197405450

namespace A251123

/-- `or(char[1], A251128(A167614(n+1)))` -/
def P4721273119197405450.Spec : Prop :=
  ∀ n, P4721273119197405450.a n = A251123 (n + 1)

end A251123

/-! ## A251123.P2104383703026189528

`or(char[1], A251128(A055998(n)+6))`
-/

namespace A251123.P2104383703026189528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251128 (A055998 n + 6).toNat)

end

end A251123.P2104383703026189528

namespace A251123

/-- `or(char[1], A251128(A055998(n)+6))` -/
def P2104383703026189528.Spec : Prop :=
  ∀ n, P2104383703026189528.a n = A251123 (n + 1)

end A251123

/-! ## A251123.P13457957919480014101

`A251128(A167614(n+1))%A251126(n+1)`
-/

namespace A251123.P13457957919480014101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251128 (A167614 (n + 1)).toNat) (A251126 (n + 1))

end

end A251123.P13457957919480014101

namespace A251123

/-- `A251128(A167614(n+1))%A251126(n+1)` -/
def P13457957919480014101.Spec : Prop :=
  ∀ n, P13457957919480014101.a n = A251123 (n + 1)

end A251123

/-!
# A251124: Number of (n+1) X (4+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251124, the canonical program `A251124.P5170746775999109981` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251124 has offset 1).

The definition of A251124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251124.P5170746775999109981

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=72, a(1)=117, a(2)=173, a(3)=266, a(4)=401, a(5)=612`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251124

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5170746775999109981.Spec : Prop :=
  ∀ n, P5170746775999109981.a n = A251124 (n + 1)

theorem P5170746775999109981.correct : P5170746775999109981.Spec := by
  intro n
  simp only [A251124, Nat.add_sub_cancel]

end A251124

/-! ## A251124.P17140054957820844932

`A251128(∑[n+3]+7)`
-/

namespace A251124.P17140054957820844932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251124.P17140054957820844932

namespace A251124

/-- `A251128(∑[n+3]+7)` -/
def P17140054957820844932.Spec : Prop :=
  ∀ n, P17140054957820844932.a n = A251124 (n + 1)

end A251124

/-! ## A251124.P15383867450350190251

`(A251128(A055999(n)+10)^(1/2))²`
-/

namespace A251124.P15383867450350190251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A251128 (A055999 n + 10).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A251124.P15383867450350190251

namespace A251124

/-- `(A251128(A055999(n)+10)^(1/2))²` -/
def P15383867450350190251.Spec : Prop :=
  ∀ n, P15383867450350190251.a n = (A251124 (n + 1) : ℝ)

end A251124

/-! ## A251124.P5804466651146716031

`or(char[1], A251128(A167614(n+2)+1))`
-/

namespace A251124.P5804466651146716031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251128 (A167614 (n + 2) + 1).toNat)

end

end A251124.P5804466651146716031

namespace A251124

/-- `or(char[1], A251128(A167614(n+2)+1))` -/
def P5804466651146716031.Spec : Prop :=
  ∀ n, P5804466651146716031.a n = A251124 (n + 1)

end A251124

/-! ## A251124.P7806941208956091753

`A007318(C(n, 2))*A251128(A055999(n)+10)`
-/

namespace A251124.P7806941208956091753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A251128 (A055999 n + 10).toNat

end

end A251124.P7806941208956091753

namespace A251124

/-- `A007318(C(n, 2))*A251128(A055999(n)+10)` -/
def P7806941208956091753.Spec : Prop :=
  ∀ n, P7806941208956091753.a n = A251124 (n + 1)

end A251124

/-!
# A251125: Number of (n+1) X (5+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251125, the canonical program `A251125.P4630244346486421024` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251125 has offset 1).

The definition of A251125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251125.P4630244346486421024

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=125, a(1)=193, a(2)=272, a(3)=401, a(4)=580, a(5)=854`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251125

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4630244346486421024.Spec : Prop :=
  ∀ n, P4630244346486421024.a n = A251125 (n + 1)

theorem P4630244346486421024.correct : P4630244346486421024.Spec := by
  intro n
  simp only [A251125, Nat.add_sub_cancel]

end A251125

/-! ## A251125.P7688703649372061282

`A251128(A374005(n+1))`
-/

namespace A251125.P7688703649372061282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374005 (n + 1)).toNat

end

end A251125.P7688703649372061282

namespace A251125

/-- `A251128(A374005(n+1))` -/
def P7688703649372061282.Spec : Prop :=
  ∀ n, P7688703649372061282.a n = A251125 (n + 1)

end A251125

/-! ## A251125.P15593012052066294522

`A251128(A167499(n+3))`
-/

namespace A251125.P15593012052066294522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A167499 (n + 3)).toNat

end

end A251125.P15593012052066294522

namespace A251125

/-- `A251128(A167499(n+3))` -/
def P15593012052066294522.Spec : Prop :=
  ∀ n, P15593012052066294522.a n = A251125 (n + 1)

end A251125

/-! ## A251125.P657546382009510633

`A251128(A077169(n+5))`
-/

namespace A251125.P657546382009510633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A077169 (n + 5)).toNat

end

end A251125.P657546382009510633

namespace A251125

/-- `A251128(A077169(n+5))` -/
def P657546382009510633.Spec : Prop :=
  ∀ n, P657546382009510633.a n = A251125 (n + 1)

end A251125

/-! ## A251125.P6017490769924830708

`A251128(A155212(n)+13)`
-/

namespace A251125.P6017490769924830708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A155212 n + 13).toNat

end

end A251125.P6017490769924830708

namespace A251125

/-- `A251128(A155212(n)+13)` -/
def P6017490769924830708.Spec : Prop :=
  ∀ n, P6017490769924830708.a n = A251125 (n + 1)

end A251125

/-!
# A251126: Number of (n+1) X (6+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251126, there is no canonical definition to state claims against.
-/

/-! ## A251126.P9396464831228215263

`A251128(A374007(n+1))`
-/

namespace A251126.P9396464831228215263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374007 (n + 1)).toNat

end

end A251126.P9396464831228215263

/-! ## A251126.P1598721272539194177

`A251128(A056115(n)+21)`
-/

namespace A251126.P1598721272539194177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A056115 n + 21).toNat

end

end A251126.P1598721272539194177

/-! ## A251126.P16463668002825113819

`A251128(Δ[A264443(n)]+10)`
-/

namespace A251126.P16463668002825113819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (f1 (n + 1) - f1 n + 10).toNat

end

end A251126.P16463668002825113819

/-! ## A251126.P8977219837512857540

`A251128(A167499(n+4)+1)`
-/

namespace A251126.P8977219837512857540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A167499 (n + 4) + 1).toNat

end

end A251126.P8977219837512857540

/-! ## A251126.P10322057265669049270

`A251128(A167614(n+4)+3)`
-/

namespace A251126.P10322057265669049270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A167614 (n + 4) + 3).toNat

end

end A251126.P10322057265669049270

/-!
# A251127: Number of (n+1) X (7+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251127, there is no canonical definition to state claims against.
-/

/-! ## A251127.P1727154930555990232

`A251128(A374008(n+1))`
-/

namespace A251127.P1727154930555990232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374008 (n + 1)).toNat

end

end A251127.P1727154930555990232

/-! ## A251127.P6876930025286987374

`A251128(A056119(n)+28)`
-/

namespace A251127.P6876930025286987374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A056119 n + 28).toNat

end

end A251127.P6876930025286987374

/-! ## A251127.P13754811984458077231

`A251128(A166136(n+5)+1)`
-/

namespace A251127.P13754811984458077231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A166136 (n + 5) + 1).toNat

end

end A251127.P13754811984458077231

/-! ## A251127.P17335092914554019932

`A251128(A167614(n+5)+4)`
-/

namespace A251127.P17335092914554019932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A167614 (n + 5) + 4).toNat

end

end A251127.P17335092914554019932

/-! ## A251127.P3586652231370949854

`A251128(A000124(n+6)+6)`
-/

namespace A251127.P3586652231370949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A000124 (n + 6) + 6).toNat

end

end A251127.P3586652231370949854

/-!
# A251129: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251129, there is no canonical definition to state claims against.
-/

/-! ## A251129.P11771802648105533932

`A251137(∑[4*n]+1)`
-/

namespace A251129.P11771802648105533932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251129.P11771802648105533932

/-! ## A251129.P11498108569843372985

`A251137(A001844(n))+char[16]`
-/

namespace A251129.P11498108569843372985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251129.P11498108569843372985

/-! ## A251129.P11871423154646951059

`record[A003982(n)*A251137(n+1)]`
-/

namespace A251129.P11871423154646951059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P11871423154646951059

/-! ## A251129.P15285314433815017873

`record[root(A251137(n+1), A143182(n))]`
-/

namespace A251129.P15285314433815017873
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251137 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P15285314433815017873

/-! ## A251129.P8937118251064674903

`record[gcd(A251137(n+1), A285721(n+1))]`
-/

namespace A251129.P8937118251064674903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251137 (n + 1)) (A285721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P8937118251064674903

/-!
# A251130: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251130, there is no canonical definition to state claims against.
-/

/-! ## A251130.P3885583378285362862

`A251137(∑[n]+1)`
-/

namespace A251130.P3885583378285362862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251130.P3885583378285362862

/-! ## A251130.P3224904682082530032

`record[A251137(A056534(n+1))]`
-/

namespace A251130.P3224904682082530032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P3224904682082530032

/-! ## A251130.P9867580257207284593

`record[A251137(A056536(n+1))]`
-/

namespace A251130.P9867580257207284593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P9867580257207284593

/-! ## A251130.P13693578817522939423

`record[A251137(A114091(n+1))]`
-/

namespace A251130.P13693578817522939423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P13693578817522939423

/-! ## A251130.P337857909595107163

`record[A251137(A226387(n+1))]`
-/

namespace A251130.P337857909595107163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P337857909595107163

/-!
# A251131: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251131, there is no canonical definition to state claims against.
-/

/-! ## A251131.P9280677121608966684

`A251137(∑[n+1]+2)`
-/

namespace A251131.P9280677121608966684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251131.P9280677121608966684

/-! ## A251131.P15014192475914974079

`record[A251137(A008795(n)+2)]`
-/

namespace A251131.P15014192475914974079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P15014192475914974079

/-! ## A251131.P5345566334891119899

`record[A251137(A056536(n+1)+1)]`
-/

namespace A251131.P5345566334891119899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P5345566334891119899

/-! ## A251131.P690928616578332004

`record[A251137(A114091(n+1)+1)]`
-/

namespace A251131.P690928616578332004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P690928616578332004

/-! ## A251131.P17952054381307346801

`A251137(A000096(n)+3)+char[33]`
-/

namespace A251131.P17952054381307346801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251131.P17952054381307346801

/-!
# A251132: Number of (n+1) X (3+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251132, there is no canonical definition to state claims against.
-/

/-! ## A251132.P12430620369265329495

`A251137(∑[n+2]+4)`
-/

namespace A251132.P12430620369265329495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251132.P12430620369265329495

/-! ## A251132.P8815862246310970034

`record[A251137(A008795(n)+3)]`
-/

namespace A251132.P8815862246310970034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251132.P8815862246310970034

/-! ## A251132.P13029269904946041704

`or(char[2], A251137(A167614(n+1)))`
-/

namespace A251132.P13029269904946041704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251137 (A167614 (n + 1)).toNat)

end

end A251132.P13029269904946041704

/-! ## A251132.P12260161958227042055

`lcm(A033999(n), A251137(A167614(n+1)))`
-/

namespace A251132.P12260161958227042055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251137 (A167614 (n + 1)).toNat)

end

end A251132.P12260161958227042055

/-! ## A251132.P2746479628956184313

`A320742(n+1)+A251137(A167614(n+1))`
-/

namespace A251132.P2746479628956184313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A251137 (A167614 (n + 1)).toNat

end

end A251132.P2746479628956184313

/-!
# A251133: Number of (n+1) X (4+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251133, there is no canonical definition to state claims against.
-/

/-! ## A251133.P6257433912583937365

`A251137(∑[n+3]+7)`
-/

namespace A251133.P6257433912583937365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251133.P6257433912583937365

/-! ## A251133.P2047262433403848524

`A251137(A055999(n)+10)+char[31]`
-/

namespace A251133.P2047262433403848524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251133.P2047262433403848524

/-! ## A251133.P18427114622656095274

`or(char[4], A251137(A166136(n+2)-2))`
-/

namespace A251133.P18427114622656095274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251137 (A166136 (n + 2) - 2).toNat)

end

end A251133.P18427114622656095274

/-! ## A251133.P7313330197867471076

`A000041(C(n, 64))*A251137(A055999(n)+10)`
-/

namespace A251133.P7313330197867471076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A251137 (A055999 n + 10).toNat

end

end A251133.P7313330197867471076

/-! ## A251133.P15513068759532972464

`A007318(C(2, n+2))*A251137(A055999(n)+10)`
-/

namespace A251133.P15513068759532972464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A251137 (A055999 n + 10).toNat

end

end A251133.P15513068759532972464

/-!
# A251134: Number of (n+1) X (5+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251134, there is no canonical definition to state claims against.
-/

/-! ## A251134.P13147432143042400793

`A251137(∑[n+4]+11)`
-/

namespace A251134.P13147432143042400793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251134.P13147432143042400793

/-! ## A251134.P9743473761133279632

`A007318(C(3, n))*A251137(A046691(n+2)+9)`
-/

namespace A251134.P9743473761133279632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A251137 (A046691 (n + 2) + 9).toNat

end

end A251134.P9743473761133279632

/-! ## A251134.P9656095396256455935

`A251137(A046691(n+2)+9)+A008683(4*(n+1))`
-/

namespace A251134.P9656095396256455935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A046691 (n + 2) + 9).toNat + A008683 (4 * (n + 1))

end

end A251134.P9656095396256455935

/-! ## A251134.P15902433635795536250

`A000041(C(2, n+2))*A251137(A046691(n+2)+9)`
-/

namespace A251134.P15902433635795536250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251137 (A046691 (n + 2) + 9).toNat

end

end A251134.P15902433635795536250

/-! ## A251134.P16795240906926084941

`A000041(val(n+1, 12))*A251137(A046691(n+2)+9)`
-/

namespace A251134.P16795240906926084941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 12) * A251137 (A046691 (n + 2) + 9).toNat

end

end A251134.P16795240906926084941

/-!
# A251135: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251135, there is no canonical definition to state claims against.
-/

/-! ## A251135.P14988067395604165014

`A251137(A374007(n+1))`
-/

namespace A251135.P14988067395604165014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A374007 (n + 1)).toNat

end

end A251135.P14988067395604165014

/-! ## A251135.P16251960025280667249

`A251137(A166136(n+4))`
-/

namespace A251135.P16251960025280667249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A166136 (n + 4)).toNat

end

end A251135.P16251960025280667249

/-! ## A251135.P14408284813095048633

`A251137(A167487(n+4)-1)`
-/

namespace A251135.P14408284813095048633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A167487 (n + 4) - 1).toNat

end

end A251135.P14408284813095048633

/-! ## A251135.P10216072557599755640

`A251137(A077169(n+6)+1)`
-/

namespace A251135.P10216072557599755640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A077169 (n + 6) + 1).toNat

end

end A251135.P10216072557599755640

/-! ## A251135.P4553727392268538779

`A251137(A167614(n+4)+3)`
-/

namespace A251135.P4553727392268538779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A167614 (n + 4) + 3).toNat

end

end A251135.P4553727392268538779

/-!
# A251136: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251136, there is no canonical definition to state claims against.
-/

/-! ## A251136.P9360369467462857880

`A251137(A374008(n+1))`
-/

namespace A251136.P9360369467462857880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A374008 (n + 1)).toNat

end

end A251136.P9360369467462857880

/-! ## A251136.P10320277717125200054

`A251137(A056119(n)+28)`
-/

namespace A251136.P10320277717125200054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056119 n + 28).toNat

end

end A251136.P10320277717125200054

/-! ## A251136.P3458933318298327194

`A251137(A166136(n+5)+1)`
-/

namespace A251136.P3458933318298327194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A166136 (n + 5) + 1).toNat

end

end A251136.P3458933318298327194

/-! ## A251136.P820008006961622342

`A251137(A077169(n+7)+2)`
-/

namespace A251136.P820008006961622342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A077169 (n + 7) + 2).toNat

end

end A251136.P820008006961622342

/-! ## A251136.P7550243666733978561

`A251137(A167614(n+5)+4)`
-/

namespace A251136.P7550243666733978561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A167614 (n + 5) + 4).toNat

end

end A251136.P7550243666733978561

/-!
# A251138: Number of distinct prime factors of A098550(n).

The programs for A251138, there is no canonical definition to state claims against.
-/

/-! ## A251138.P16867049138132778497

`∑{e}[A251089(n+1), #]`
-/

namespace A251138.P16867049138132778497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251138.P16867049138132778497

/-! ## A251138.P16300612103159314302

`A001221(A098550(n+1))`
-/

namespace A251138.P16300612103159314302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098550 (n + 1)).toNat

end

end A251138.P16300612103159314302

/-! ## A251138.P13164242713868654079

`A001221(A251089(n+1))`
-/

namespace A251138.P13164242713868654079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A251089 (n + 1)).toNat

end

end A251138.P13164242713868654079

/-! ## A251138.P14870403984730974047

`∑{d}[A098550(n+1), A010051(#)]`
-/

namespace A251138.P14870403984730974047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A251138.P14870403984730974047

/-! ## A251138.P14127328949164983640

`A001222(∏{p}[A098550(n+1), #])`
-/

namespace A251138.P14127328949164983640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251138.P14127328949164983640

/-! ## A251138.P9082675704719613984

`∑{e}[A098550(n+1), A309873(#²)]`
-/

namespace A251138.P9082675704719613984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A309873 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A251138.P9082675704719613984

/-! ## A251138.P10165779541616802989

`∑{e}[A098550(n+1), #-A004907(#)]`
-/

namespace A251138.P10165779541616802989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A004907 (Nat.factorization (f1 n).natAbs p))

end

end A251138.P10165779541616802989

/-! ## A251138.P6824550082620240114

`∑{e}[A098550(n+1), #/A090108(#)]`
-/

namespace A251138.P6824550082620240114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A090108 (Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A251138.P6824550082620240114

/-! ## A251138.P9847601309230425666

`A001221(A098552(A098551(n+1)))`
-/

namespace A251138.P9847601309230425666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098552 (A098551 (n + 1)).toNat).toNat

end

end A251138.P9847601309230425666

/-! ## A251138.P5470516204147952385

`A001222(A251089(n+1)²)/2`
-/

namespace A251138.P5470516204147952385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A251089 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A251138.P5470516204147952385

/-!
# A251139: Number of distinct prime factors of A098548(n).

The programs for A251139, there is no canonical definition to state claims against.
-/

/-! ## A251139.P4054116139680380129

`∑{e}[A251090(n+1), #]`
-/

namespace A251139.P4054116139680380129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251139.P4054116139680380129

/-! ## A251139.P1249435647525208270

`A001221(A098548(n+1))`
-/

namespace A251139.P1249435647525208270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098548 (n + 1)).toNat

end

end A251139.P1249435647525208270

/-! ## A251139.P9305568149969063140

`A001221(A251090(n+1))`
-/

namespace A251139.P9305568149969063140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A251090 (n + 1)).toNat

end

end A251139.P9305568149969063140

/-! ## A251139.P10383409706742406467

`∑{p}[A098548(n+1), A001222(#)]`
-/

namespace A251139.P10383409706742406467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A251139.P10383409706742406467

/-! ## A251139.P10856951340077437820

`∑{e}[A098548(n+1), A085860(#)+1]`
-/

namespace A251139.P10856951340077437820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A085860 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A251139.P10856951340077437820

/-! ## A251139.P4338541861559717129

`∑{e}[A098548(n+1), #/A055643(#)]`
-/

namespace A251139.P4338541861559717129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A055643 (Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A251139.P4338541861559717129

/-! ## A251139.P16225628244447866215

`∑{e}[A098548(n+1), A008683(A005117(#))²]`
-/

namespace A251139.P16225628244447866215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A005117 (Nat.factorization (f1 n).natAbs p)).toNat ^ 2

end

end A251139.P16225628244447866215

/-! ## A251139.P13010587551190413625

`∑{e}[A098548(n+1), A008683(A253052(#+1))]`
-/

namespace A251139.P13010587551190413625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253052 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A251139.P13010587551190413625

/-! ## A251139.P5017898485959644726

`∑{e}[A098548(n+1), A008683(A253053(#+1))]`
-/

namespace A251139.P5017898485959644726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253053 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A251139.P5017898485959644726

/-! ## A251139.P6292551285873931379

`∑{e}[A098548(n+1)², A008683(A253052(#))]`
-/

namespace A251139.P6292551285873931379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253052 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A251139.P6292551285873931379

/-! ## A251139.P13423031472484136849

`∑{e}[A098548(n+1)², A008683(A253053(#))]`
-/

namespace A251139.P13423031472484136849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253053 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A251139.P13423031472484136849

/-!
# A251140: Total number of prime factors of A098550(n).

The programs for A251140, there is no canonical definition to state claims against.
-/

/-! ## A251140.P15070605530882260930

`∑{e}[A098550(n+1), #]`
-/

namespace A251140.P15070605530882260930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251140.P15070605530882260930

/-! ## A251140.P1896547016718139499

`A001222(A098550(n+1))`
-/

namespace A251140.P1896547016718139499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098550 (n + 1)).toNat

end

end A251140.P1896547016718139499

/-! ## A251140.P2323300287791188409

`∑{e}[A098552(A098551(n+1)), #]`
-/

namespace A251140.P2323300287791188409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251140.P2323300287791188409

/-! ## A251140.P11068968552790218194

`A001222(A098552(A098551(n+1)))`
-/

namespace A251140.P11068968552790218194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098552 (A098551 (n + 1)).toNat).toNat

end

end A251140.P11068968552790218194

/-! ## A251140.P8456693053732560069

`A073093(A098550(n+1))-A060680(2*(n+2))`
-/

namespace A251140.P8456693053732560069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A098550 (n + 1)).toNat - A060680 (2 * (n + 2))

end

end A251140.P8456693053732560069

/-!
# A251141: Total number of prime factors of A098548(n).

The programs for A251141, there is no canonical definition to state claims against.
-/

/-! ## A251141.P10419191195333638326

`∑{e}[A098548(n+1), #]`
-/

namespace A251141.P10419191195333638326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P10419191195333638326

/-! ## A251141.P5889886378105230633

`A001222(A098548(n+1))`
-/

namespace A251141.P5889886378105230633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098548 (n + 1)).toNat

end

end A251141.P5889886378105230633

/-! ## A251141.P14937866649022121226

`A001222(∪[A251535(n)+1, A251535(n)])`
-/

namespace A251141.P14937866649022121226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A251141.P14937866649022121226

/-! ## A251141.P5433287968792360884

`∑{e}[record[A098548(A126759(n))], #]`
-/

namespace A251141.P5433287968792360884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P5433287968792360884

/-! ## A251141.P6430127839740164701

`∑{d}[A098548(n+1), A001221(A014963(#))]`
-/

namespace A251141.P6430127839740164701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A251141.P6430127839740164701

/-! ## A251141.P13477017853769170203

`∑{e}[record[A098548(A335421(n))], #]`
-/

namespace A251141.P13477017853769170203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A335421 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P13477017853769170203

/-!
# A251142: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251142, there is no canonical definition to state claims against.
-/

/-! ## A251142.P900035768797579120

`A251149(∑[4*n]+1)`
-/

namespace A251142.P900035768797579120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251142.P900035768797579120

/-! ## A251142.P16819226228847379551

`or(1, A251149(A001844(n)))`
-/

namespace A251142.P16819226228847379551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A001844 n).toNat)

end

end A251142.P16819226228847379551

/-! ## A251142.P1381085505177593583

`record[A003982(n)*A251149(n+1)]`
-/

namespace A251142.P1381085505177593583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251142.P1381085505177593583

/-! ## A251142.P6307098940935614078

`record[gcd(A003987(n), A251149(n+1))]`
-/

namespace A251142.P6307098940935614078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251142.P6307098940935614078

/-! ## A251142.P114336039884756978

`A251149(A001844(n))%A048936(n+1)`
-/

namespace A251142.P114336039884756978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251149 (A001844 n).toNat) (A048936 (n + 1))

end

end A251142.P114336039884756978

/-!
# A251143: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251143, the canonical program `A251143.P13679606666865714444` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251143 has offset 1).

The definition of A251143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251143.P13679606666865714444

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=27, a(1)=49, a(2)=87, a(3)=161, a(4)=299`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251143

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13679606666865714444.Spec : Prop :=
  ∀ n, P13679606666865714444.a n = A251143 (n + 1)

theorem P13679606666865714444.correct : P13679606666865714444.Spec := by
  intro n
  simp only [A251143, Nat.add_sub_cancel]

end A251143

/-! ## A251143.P6251344932937087190

`A251149(∑[n+1]+2)`
-/

namespace A251143.P6251344932937087190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251143.P6251344932937087190

namespace A251143

/-- `A251149(∑[n+1]+2)` -/
def P6251344932937087190.Spec : Prop :=
  ∀ n, P6251344932937087190.a n = A251143 (n + 1)

end A251143

/-! ## A251143.P13284886716400622110

`or(1, A251149(A133263(n+1)))`
-/

namespace A251143.P13284886716400622110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A133263 (n + 1)).toNat)

end

end A251143.P13284886716400622110

namespace A251143

/-- `or(1, A251149(A133263(n+1)))` -/
def P13284886716400622110.Spec : Prop :=
  ∀ n, P13284886716400622110.a n = A251143 (n + 1)

end A251143

/-! ## A251143.P9488298870079988443

`record[A251149(A133263(abs(1-n)))]`
-/

namespace A251143.P9488298870079988443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251143.P9488298870079988443

namespace A251143

/-- `record[A251149(A133263(abs(1-n)))]` -/
def P9488298870079988443.Spec : Prop :=
  ∀ n, P9488298870079988443.a n = A251143 (n + 1)

end A251143

/-! ## A251143.P14350627573368607287

`record[A251149(n+2)/A002260(n+1)]`
-/

namespace A251143.P14350627573368607287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251149 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251143.P14350627573368607287

namespace A251143

/-- `record[A251149(n+2)/A002260(n+1)]` -/
def P14350627573368607287.Spec : Prop :=
  ∀ n, P14350627573368607287.a n = (A251143 (n + 1) : ℚ)

end A251143

/-!
# A251144: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251144, the canonical program `A251144.P13420610324036702685` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251144 has offset 1).

The definition of A251144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251144.P13420610324036702685

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=53, a(1)=87, a(2)=143, a(3)=247, a(4)=433`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251144

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13420610324036702685.Spec : Prop :=
  ∀ n, P13420610324036702685.a n = A251144 (n + 1)

theorem P13420610324036702685.correct : P13420610324036702685.Spec := by
  intro n
  simp only [A251144, Nat.add_sub_cancel]

end A251144

/-! ## A251144.P7079438434915475815

`A251149(∑[n+2]+4)`
-/

namespace A251144.P7079438434915475815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251144.P7079438434915475815

namespace A251144

/-- `A251149(∑[n+2]+4)` -/
def P7079438434915475815.Spec : Prop :=
  ∀ n, P7079438434915475815.a n = A251144 (n + 1)

end A251144

/-! ## A251144.P11346843314805616646

`or(1, A251149(A167614(n+1)))`
-/

namespace A251144.P11346843314805616646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A167614 (n + 1)).toNat)

end

end A251144.P11346843314805616646

namespace A251144

/-- `or(1, A251149(A167614(n+1)))` -/
def P11346843314805616646.Spec : Prop :=
  ∀ n, P11346843314805616646.a n = A251144 (n + 1)

end A251144

/-! ## A251144.P15802926274803548726

`or(1, A251149(A000096(n+1)+4))`
-/

namespace A251144.P15802926274803548726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A000096 (n + 1) + 4).toNat)

end

end A251144.P15802926274803548726

namespace A251144

/-- `or(1, A251149(A000096(n+1)+4))` -/
def P15802926274803548726.Spec : Prop :=
  ∀ n, P15802926274803548726.a n = A251144 (n + 1)

end A251144

/-! ## A251144.P7487461115189575227

`A251149(A167614(n+1))+A025469(n)`
-/

namespace A251144.P7487461115189575227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A167614 (n + 1)).toNat + A025469 n

end

end A251144.P7487461115189575227

namespace A251144

/-- `A251149(A167614(n+1))+A025469(n)` -/
def P7487461115189575227.Spec : Prop :=
  ∀ n, P7487461115189575227.a n = A251144 (n + 1)

end A251144

/-!
# A251145: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251145, the canonical program `A251145.P13330059832845496157` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251145 has offset 1).

The definition of A251145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251145.P13330059832845496157

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=107, a(1)=161, a(2)=247, a(3)=401, a(4)=667`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251145

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13330059832845496157.Spec : Prop :=
  ∀ n, P13330059832845496157.a n = A251145 (n + 1)

theorem P13330059832845496157.correct : P13330059832845496157.Spec := by
  intro n
  simp only [A251145, Nat.add_sub_cancel]

end A251145

/-! ## A251145.P14969555722586958810

`A251149(∑[n+3]+7)`
-/

namespace A251145.P14969555722586958810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251145.P14969555722586958810

namespace A251145

/-- `A251149(∑[n+3]+7)` -/
def P14969555722586958810.Spec : Prop :=
  ∀ n, P14969555722586958810.a n = A251145 (n + 1)

end A251145

/-! ## A251145.P429938641869330796

`or(1, A251149(A141214(n)+7))`
-/

namespace A251145.P429938641869330796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A141214 n + 7).toNat)

end

end A251145.P429938641869330796

namespace A251145

/-- `or(1, A251149(A141214(n)+7))` -/
def P429938641869330796.Spec : Prop :=
  ∀ n, P429938641869330796.a n = A251145 (n + 1)

end A251145

/-! ## A251145.P1684160499297682938

`or(1, A251149(A055999(n)+10))`
-/

namespace A251145.P1684160499297682938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A055999 n + 10).toNat)

end

end A251145.P1684160499297682938

namespace A251145

/-- `or(1, A251149(A055999(n)+10))` -/
def P1684160499297682938.Spec : Prop :=
  ∀ n, P1684160499297682938.a n = A251145 (n + 1)

end A251145

/-! ## A251145.P8649388848194118107

`or(1, A251149(A167499(n+2)-1))`
-/

namespace A251145.P8649388848194118107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A167499 (n + 2) - 1).toNat)

end

end A251145.P8649388848194118107

namespace A251145

/-- `or(1, A251149(A167499(n+2)-1))` -/
def P8649388848194118107.Spec : Prop :=
  ∀ n, P8649388848194118107.a n = A251145 (n + 1)

end A251145

/-!
# A251146: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251146, there is no canonical definition to state claims against.
-/

/-! ## A251146.P7915132232934971124

`A251149(A374005(n+1))`
-/

namespace A251146.P7915132232934971124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A374005 (n + 1)).toNat

end

end A251146.P7915132232934971124

/-! ## A251146.P1353716321400780011

`A251149(A155212(n)+13)`
-/

namespace A251146.P1353716321400780011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A155212 n + 13).toNat

end

end A251146.P1353716321400780011

/-! ## A251146.P12218598396608195400

`A251149(A056000(n)+15)`
-/

namespace A251146.P12218598396608195400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A056000 n + 15).toNat

end

end A251146.P12218598396608195400

/-! ## A251146.P819123304260574857

`A251149(eq[7, A066657(n)])`
-/

namespace A251146.P819123304260574857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251146.P819123304260574857

/-! ## A251146.P11138273915886958040

`A251149(A167614(n+3)+2)`
-/

namespace A251146.P11138273915886958040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A167614 (n + 3) + 2).toNat

end

end A251146.P11138273915886958040

/-!
# A251147: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251147, there is no canonical definition to state claims against.
-/

/-! ## A251147.P15607828400772612374

`A251149(∑[n+5]+16)`
-/

namespace A251147.P15607828400772612374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251147.P15607828400772612374

/-! ## A251147.P12197789794774194372

`or(1, A251149(A056115(n)+21))`
-/

namespace A251147.P12197789794774194372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (A056115 n + 21).toNat)

end

end A251147.P12197789794774194372

/-! ## A251147.P4472260512335250440

`or(1, A251149(Δ[A023545(n+1)]+10))`
-/

namespace A251147.P4472260512335250440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251149 (f1 (n + 1) - f1 n + 10).toNat)

end

end A251147.P4472260512335250440

/-! ## A251147.P1818822748622846411

`A251149(A000217(n+5)+6)%A251148(n+1)`
-/

namespace A251147.P1818822748622846411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251149 (A000217 (n + 5) + 6).toNat) (A251148 (n + 1))

end

end A251147.P1818822748622846411

/-! ## A251147.P13923373513413212878

`A000041(C(2, n+2))*A251149(A056115(n)+21)`
-/

namespace A251147.P13923373513413212878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251149 (A056115 n + 21).toNat

end

end A251147.P13923373513413212878

/-!
# A251148: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251148, there is no canonical definition to state claims against.
-/

/-! ## A251148.P6289105442021532331

`A251149(A374008(n+1))`
-/

namespace A251148.P6289105442021532331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A374008 (n + 1)).toNat

end

end A251148.P6289105442021532331

/-! ## A251148.P1181674124683270079

`A251149(A056119(n)+28)`
-/

namespace A251148.P1181674124683270079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A056119 n + 28).toNat

end

end A251148.P1181674124683270079

/-! ## A251148.P10689153446094898813

`A251149(eq[11, A066657(n)])`
-/

namespace A251148.P10689153446094898813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251148.P10689153446094898813

/-! ## A251148.P6226746726500195248

`A251149(A167614(n+5)+4)`
-/

namespace A251148.P6226746726500195248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A167614 (n + 5) + 4).toNat

end

end A251148.P6226746726500195248

/-! ## A251148.P6379717093832308199

`A251149(A133263(n+6)+5)`
-/

namespace A251148.P6379717093832308199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A133263 (n + 6) + 5).toNat

end

end A251148.P6379717093832308199

/-!
# A251149: T(n,k) = Number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251149, there is no canonical definition to state claims against.
-/

/-! ## A251149.P494410584805193933

`A375295(A222444(n+1))/A001055(2*n+1)`
-/

namespace A251149.P494410584805193933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375295 (A222444 (n + 1)).toNat : ℚ) / (A001055 (2 * n + 1) : ℚ)

end

end A251149.P494410584805193933

/-!
# A251150: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251150, there is no canonical definition to state claims against.
-/

/-! ## A251150.P2465782805315918526

`A251158((n+1)²+n²)`
-/

namespace A251150.P2465782805315918526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 ((n + 1) ^ 2 + n ^ 2)

end

end A251150.P2465782805315918526

/-!
# A251151: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251151, there is no canonical definition to state claims against.
-/

/-! ## A251151.P6749342446031271696

`A251158(∑[n]+1)`
-/

namespace A251151.P6749342446031271696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251151.P6749342446031271696

/-! ## A251151.P14840678657247534472

`record[A251158(n+1)/A022173(n)]`
-/

namespace A251151.P14840678657247534472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℚ) / (A022173 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P14840678657247534472

/-! ## A251151.P13723530975674323470

`record[A251158(n+1)/A118180(n)]`
-/

namespace A251151.P13723530975674323470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℚ) / (A118180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P13723530975674323470

/-! ## A251151.P2400755621009186292

`record[root(A251158(n+1), A008288(n))]`
-/

namespace A251151.P2400755621009186292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P2400755621009186292

/-! ## A251151.P4903128994314355399

`record[root(A251158(n+1), A013610(n))]`
-/

namespace A251151.P4903128994314355399
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P4903128994314355399

/-!
# A251152: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251152, there is no canonical definition to state claims against.
-/

/-! ## A251152.P6179932291791806630

`A251158(∑[n+1]+2)`
-/

namespace A251152.P6179932291791806630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251152.P6179932291791806630

/-! ## A251152.P429319195916401221

`record[root(A251158(n+2), A013610(n))]`
-/

namespace A251152.P429319195916401221
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251152.P429319195916401221

/-! ## A251152.P18271290094788795700

`record[gcd(A097805(n+1), A251158(n+3))]`
-/

namespace A251152.P18271290094788795700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 1)) (A251158 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251152.P18271290094788795700

/-! ## A251152.P14238629010510886212

`A251158(A133263(n+1))+A185284(n)`
-/

namespace A251152.P14238629010510886212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A133263 (n + 1)).toNat + A185284 n

end

end A251152.P14238629010510886212

/-! ## A251152.P3240981030656612607

`A251158(A133263(n+1))%A251165(n+1)`
-/

namespace A251152.P3240981030656612607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251158 (A133263 (n + 1)).toNat) (A251165 (n + 1))

end

end A251152.P3240981030656612607

/-!
# A251153: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251153, there is no canonical definition to state claims against.
-/

/-! ## A251153.P1915065665083922856

`A251158(∑[n+2]+4)`
-/

namespace A251153.P1915065665083922856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251153.P1915065665083922856

/-! ## A251153.P12321540996272976611

`A251158(A167614(n+1))+A025466(n)`
-/

namespace A251153.P12321540996272976611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A167614 (n + 1)).toNat + A025466 n

end

end A251153.P12321540996272976611

/-! ## A251153.P9506349505515443093

`lcm(A033999(n), A251158(A167614(n+1)))`
-/

namespace A251153.P9506349505515443093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251158 (A167614 (n + 1)).toNat)

end

end A251153.P9506349505515443093

/-! ## A251153.P15007153672901152730

`A251158(A167614(n+1))-A263787(n+1)`
-/

namespace A251153.P15007153672901152730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A167614 (n + 1)).toNat - A263787 (n + 1)

end

end A251153.P15007153672901152730

/-! ## A251153.P4496073052328289709

`A001222(A094343(n+1))*A251158(A052905(n)+3)`
-/

namespace A251153.P4496073052328289709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A094343 (n + 1)).toNat * A251158 (A052905 n + 3).toNat

end

end A251153.P4496073052328289709

/-!
# A251154: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251154, there is no canonical definition to state claims against.
-/

/-! ## A251154.P14670685246091320888

`A251158(A141214(n)+7)`
-/

namespace A251154.P14670685246091320888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A141214 n + 7).toNat

end

end A251154.P14670685246091320888

/-! ## A251154.P9972096970864790480

`A251158(A055999(n)+10)`
-/

namespace A251154.P9972096970864790480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A055999 n + 10).toNat

end

end A251154.P9972096970864790480

/-! ## A251154.P11083806513848402434

`A251158(A167614(n+2)+1)`
-/

namespace A251154.P11083806513848402434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A167614 (n + 2) + 1).toNat

end

end A251154.P11083806513848402434

/-! ## A251154.P12861154284961926509

`A251158(A052905(n+2)-2*n)`
-/

namespace A251154.P12861154284961926509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A251154.P12861154284961926509

/-! ## A251154.P3159865159059798631

`A251158(A080036(A167614(n+1)))`
-/

namespace A251154.P3159865159059798631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A251154.P3159865159059798631

/-!
# A251155: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251155, there is no canonical definition to state claims against.
-/

/-! ## A251155.P14241731203322617587

`A251158(A374005(n+1))`
-/

namespace A251155.P14241731203322617587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A374005 (n + 1)).toNat

end

end A251155.P14241731203322617587

/-! ## A251155.P6431057290473667668

`A251158(A167499(n+3))`
-/

namespace A251155.P6431057290473667668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A167499 (n + 3)).toNat

end

end A251155.P6431057290473667668

/-! ## A251155.P2933651792778989393

`A251158(A000217(n+5)-n)`
-/

namespace A251155.P2933651792778989393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A251155.P2933651792778989393

/-! ## A251155.P13267703381179853037

`A251158(A052905(n+2)+1)`
-/

namespace A251155.P13267703381179853037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A052905 (n + 2) + 1).toNat

end

end A251155.P13267703381179853037

/-! ## A251155.P16585890192627891448

`A251158(A155212(n+1)+4)`
-/

namespace A251155.P16585890192627891448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A155212 (n + 1) + 4).toNat

end

end A251155.P16585890192627891448

/-!
# A251156: 

The programs for A251156, there is no canonical definition to state claims against.
-/

/-! ## A251156.P2341277361497341383

`A251158(A000124(n+5)+5)`
-/

namespace A251156.P2341277361497341383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A000124 (n + 5) + 5).toNat

end

end A251156.P2341277361497341383

/-! ## A251156.P4115023413194939181

`A251158(A000217(n+5)+n+1)`
-/

namespace A251156.P4115023413194939181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A251156.P4115023413194939181

/-!
# A251159: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251159, there is no canonical definition to state claims against.
-/

/-! ## A251159.P1931675908655010079

`A251167(∑[4*n]+1)`
-/

namespace A251159.P1931675908655010079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251159.P1931675908655010079

/-! ## A251159.P11865731523723851098

`record[gcd(A114327(n), A251167(n+1))]`
-/

namespace A251159.P11865731523723851098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251159.P11865731523723851098

/-! ## A251159.P15995468515968384691

`A326682(n)+A251167(A001844(n))`
-/

namespace A251159.P15995468515968384691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A251167 (A001844 n).toNat

end

end A251159.P15995468515968384691

/-! ## A251159.P10170334368979687460

`A294937(n+1)+A251167(A001844(n))`
-/

namespace A251159.P10170334368979687460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) + A251167 (A001844 n).toNat

end

end A251159.P10170334368979687460

/-! ## A251159.P1752478620252009273

`A007318(A007318(n))*A251167(A001844(n))`
-/

namespace A251159.P1752478620252009273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A251167 (A001844 n).toNat

end

end A251159.P1752478620252009273

/-!
# A251160: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251160, there is no canonical definition to state claims against.
-/

/-! ## A251160.P9524989339605841547

`A251167(∑[n]+1)`
-/

namespace A251160.P9524989339605841547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251160.P9524989339605841547

/-! ## A251160.P6831574878595746651

`record[A103451(n)*A251167(n+1)]`
-/

namespace A251160.P6831574878595746651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A251167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P6831574878595746651

/-! ## A251160.P18389250370128415941

`record[root(A251167(n+1), A089688(n))]`
-/

namespace A251160.P18389250370128415941
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 1) : ℝ) ^ (1 / (A089688 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P18389250370128415941

/-! ## A251160.P3639134472712094837

`record[gcd(A002262(n), A251167(n+1))]`
-/

namespace A251160.P3639134472712094837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P3639134472712094837

/-! ## A251160.P5521051226587903510

`record[A251167(n+1)/A008292(n+1)]`
-/

namespace A251160.P5521051226587903510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P5521051226587903510

/-!
# A251161: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251161, there is no canonical definition to state claims against.
-/

/-! ## A251161.P10272469640630951639

`A251167(∑[n+1]+2)`
-/

namespace A251161.P10272469640630951639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251161.P10272469640630951639

/-! ## A251161.P5374107425669555061

`record[gcd(A002262(n), A251167(n+2))]`
-/

namespace A251161.P5374107425669555061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251167 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251161.P5374107425669555061

/-! ## A251161.P14722707408380263150

`record[root(A251167(n+2), A002260(n+1))]`
-/

namespace A251161.P14722707408380263150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251161.P14722707408380263150

/-! ## A251161.P5830970891311873185

`A000010(C(2, n)!)*A251167(A000096(n+1))`
-/

namespace A251161.P5830970891311873185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A251167 (A000096 (n + 1)).toNat

end

end A251161.P5830970891311873185

/-! ## A251161.P7631622896641825541

`A000005(gcd(n, n+1))*A251167(A000096(n+1))`
-/

namespace A251161.P7631622896641825541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A251167 (A000096 (n + 1)).toNat

end

end A251161.P7631622896641825541

/-!
# A251162: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251162, there is no canonical definition to state claims against.
-/

/-! ## A251162.P1613699585503559711

`A251167(∑[n+2]+4)`
-/

namespace A251162.P1613699585503559711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251162.P1613699585503559711

/-! ## A251162.P4285136974105741751

`lcm(A033999(n), A251167(A167614(n+1)))`
-/

namespace A251162.P4285136974105741751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251167 (A167614 (n + 1)).toNat)

end

end A251162.P4285136974105741751

/-! ## A251162.P11915389775307214600

`or(A251167(A167614(n+1)), A321538(n))`
-/

namespace A251162.P11915389775307214600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251167 (A167614 (n + 1)).toNat) (A321538 n)

end

end A251162.P11915389775307214600

/-! ## A251162.P11924665533407938124

`A251167(A167614(n+1))+A151810(n+1)`
-/

namespace A251162.P11924665533407938124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A167614 (n + 1)).toNat + A151810 (n + 1)

end

end A251162.P11924665533407938124

/-! ## A251162.P18437074545956626652

`or(A166260(n+1), A251167(A167614(n+1)))`
-/

namespace A251162.P18437074545956626652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166260 (n + 1)) (A251167 (A167614 (n + 1)).toNat)

end

end A251162.P18437074545956626652

/-!
# A251163: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251163, there is no canonical definition to state claims against.
-/

/-! ## A251163.P12342180954936659148

`A251167(A374004(n+1))`
-/

namespace A251163.P12342180954936659148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374004 (n + 1)).toNat

end

end A251163.P12342180954936659148

/-! ## A251163.P12316802306041193292

`A251167(A141214(n)+7)`
-/

namespace A251163.P12316802306041193292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A141214 n + 7).toNat

end

end A251163.P12316802306041193292

/-! ## A251163.P3022981518051189159

`A251167(A052905(n)+9)`
-/

namespace A251163.P3022981518051189159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A052905 n + 9).toNat

end

end A251163.P3022981518051189159

/-! ## A251163.P12041142117156779183

`A251167(A055999(n)+10)`
-/

namespace A251163.P12041142117156779183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A055999 n + 10).toNat

end

end A251163.P12041142117156779183

/-! ## A251163.P14556164449171986515

`A251167(A167614(n+2)+1)`
-/

namespace A251163.P14556164449171986515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A167614 (n + 2) + 1).toNat

end

end A251163.P14556164449171986515

/-!
# A251164: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251164, there is no canonical definition to state claims against.
-/

/-! ## A251164.P16246685792440248300

`A251167(A374005(n+1))`
-/

namespace A251164.P16246685792440248300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374005 (n + 1)).toNat

end

end A251164.P16246685792440248300

/-! ## A251164.P14166938662804798008

`A251167(A155212(n)+13)`
-/

namespace A251164.P14166938662804798008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A155212 n + 13).toNat

end

end A251164.P14166938662804798008

/-! ## A251164.P7171475006876750575

`A251167(eq[7, A066657(n)])`
-/

namespace A251164.P7171475006876750575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251164.P7171475006876750575

/-! ## A251164.P2781384530533977015

`A251167(A060577(n+4))`
-/

namespace A251164.P2781384530533977015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A060577 (n + 4)).toNat

end

end A251164.P2781384530533977015

/-! ## A251164.P14508162012426204685

`A251167(eq[4, A193592(n)])`
-/

namespace A251164.P14508162012426204685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251164.P14508162012426204685

/-!
# A251165: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251165, there is no canonical definition to state claims against.
-/

/-! ## A251165.P3532950290397258677

`A251167(A374007(n+1))`
-/

namespace A251165.P3532950290397258677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374007 (n + 1)).toNat

end

end A251165.P3532950290397258677

/-! ## A251165.P15841956315372667708

`A251167(A167614(n+4)+3)`
-/

namespace A251165.P15841956315372667708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A167614 (n + 4) + 3).toNat

end

end A251165.P15841956315372667708

/-! ## A251165.P7053389112278306445

`A251167(eq[7, A131818(n+1)])`
-/

namespace A251165.P7053389112278306445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251165.P7053389112278306445

/-! ## A251165.P1298345275618422361

`A251167(eq[5, A193592(n)])`
-/

namespace A251165.P1298345275618422361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251165.P1298345275618422361

/-! ## A251165.P11326329059825227403

`A251167(A000124(n+6)-6)`
-/

namespace A251165.P11326329059825227403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A000124 (n + 6) - 6).toNat

end

end A251165.P11326329059825227403

/-!
# A251166: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251166, there is no canonical definition to state claims against.
-/

/-! ## A251166.P16659326176910424020

`A251167(A374008(n+1))`
-/

namespace A251166.P16659326176910424020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374008 (n + 1)).toNat

end

end A251166.P16659326176910424020

/-! ## A251166.P16573179815022780692

`A251167(eq[8, A131818(n+1)])`
-/

namespace A251166.P16573179815022780692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251166.P16573179815022780692

/-! ## A251166.P3019172814569496477

`A251167(A055999(n+4))`
-/

namespace A251166.P3019172814569496477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A055999 (n + 4)).toNat

end

end A251166.P3019172814569496477

/-! ## A251166.P4257658716584246271

`A251167(eq[6, A193592(n)])`
-/

namespace A251166.P4257658716584246271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251166.P4257658716584246271

/-! ## A251166.P17617603034610759606

`A251167(eq[7, A200370(n+1)])`
-/

namespace A251166.P17617603034610759606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251166.P17617603034610759606

/-!
# A251168: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251168, there is no canonical definition to state claims against.
-/

/-! ## A251168.P10855104904302459702

`A251175(∑[n]+1)`
-/

namespace A251168.P10855104904302459702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251168.P10855104904302459702

/-! ## A251168.P11088610177098028210

`record[gcd(A251175(n+1), A322699(n))]`
-/

namespace A251168.P11088610177098028210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251175 (n + 1)) (A322699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251168.P11088610177098028210

/-! ## A251168.P3929679785787967099

`record[root(A251175(n+1), A002260(n+1))]`
-/

namespace A251168.P3929679785787967099
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251175 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251168.P3929679785787967099

/-! ## A251168.P17728220278552209419

`lcm(A033999(n), A251175(A000124(n)))`
-/

namespace A251168.P17728220278552209419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251175 (A000124 n).toNat)

end

end A251168.P17728220278552209419

/-! ## A251168.P15183080290916185213

`A010052(n²)*A251175(A000124(n))`
-/

namespace A251168.P15183080290916185213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A251175 (A000124 n).toNat

end

end A251168.P15183080290916185213

/-!
# A251169: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251169, there is no canonical definition to state claims against.
-/

/-! ## A251169.P13813490696950367703

`A251175(∑[n+1]+2)`
-/

namespace A251169.P13813490696950367703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251169.P13813490696950367703

/-! ## A251169.P10910604066615824711

`A251175(A000096(n+1))+A025466(n)`
-/

namespace A251169.P10910604066615824711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A000096 (n + 1)).toNat + A025466 n

end

end A251169.P10910604066615824711

/-! ## A251169.P14563443936466076887

`A251175(A000096(n+1))%A251166(n+1)`
-/

namespace A251169.P14563443936466076887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251175 (A000096 (n + 1)).toNat) (A251166 (n + 1))

end

end A251169.P14563443936466076887

/-! ## A251169.P847886228513087512

`A251175(A000096(n+1))*A252233(A000040(n+1))`
-/

namespace A251169.P847886228513087512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A000096 (n + 1)).toNat * A252233 (A000040 (n + 1)).toNat

end

end A251169.P847886228513087512

/-! ## A251169.P3104587242010791038

`A252233(A129194(n+3))+A251175(A000096(n+1))`
-/

namespace A251169.P3104587242010791038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (A129194 (n + 3)).toNat + A251175 (A000096 (n + 1)).toNat

end

end A251169.P3104587242010791038

/-!
# A251170: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251170, there is no canonical definition to state claims against.
-/

/-! ## A251170.P991116221543554256

`A251175(∑[n+2]+4)`
-/

namespace A251170.P991116221543554256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251170.P991116221543554256

/-! ## A251170.P17886620713286302577

`A251175(A167614(n+1))+A011736(n)`
-/

namespace A251170.P17886620713286302577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A167614 (n + 1)).toNat + A011736 n

end

end A251170.P17886620713286302577

/-! ## A251170.P16228328081987003949

`A251175(A167614(n+1))+A025466(n)`
-/

namespace A251170.P16228328081987003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A167614 (n + 1)).toNat + A025466 n

end

end A251170.P16228328081987003949

/-! ## A251170.P11059124175135136085

`or(A000038(n), A251175(A167614(n+1)))`
-/

namespace A251170.P11059124175135136085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251175 (A167614 (n + 1)).toNat)

end

end A251170.P11059124175135136085

/-! ## A251170.P4517637713644233894

`A251175(A167614(n+1))+A034503(n+1)`
-/

namespace A251170.P4517637713644233894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A167614 (n + 1)).toNat + A034503 (n + 1)

end

end A251170.P4517637713644233894

/-!
# A251171: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251171, there is no canonical definition to state claims against.
-/

/-! ## A251171.P493750577005865878

`A251175(A141214(n)+7)`
-/

namespace A251171.P493750577005865878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A141214 n + 7).toNat

end

end A251171.P493750577005865878

/-!
# A251176: G.f. A(x) satisfies A(x) = 1 + x/(1-9*x^3)^(1/3) * A( x/sqrt(1-9*x^3)^(1/3) ).

The programs for A251176, there is no canonical definition to state claims against.
-/

/-! ## A251176.P930191271843511279

`A001156(A378274(2*(n+1))+A118207(n))`
-/

namespace A251176.P930191271843511279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A378274 (2 * (n + 1)) + A118207 n).toNat

end

end A251176.P930191271843511279

/-!
# A251177: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n - 1)^n * x^n / (1-x)^(n+1).

The programs for A251177, there is no canonical definition to state claims against.
-/

/-! ## A251177.P1994974840330283803

`A226190(A349970(n))`
-/

namespace A251177.P1994974840330283803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A349970 n).toNat

end

end A251177.P1994974840330283803

/-! ## A251177.P10626575061647926209

`A049093(A242275(n+1))`
-/

namespace A251177.P10626575061647926209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A242275 (n + 1)).toNat

end

end A251177.P10626575061647926209

/-! ## A251177.P6500304855734324936

`A364350(∑[∑[A121443(n+1)]])`
-/

namespace A251177.P6500304855734324936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251177.P6500304855734324936

/-!
# A251178: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 1)^n * x^n / (1+x)^(n+1).

The programs for A251178, there is no canonical definition to state claims against.
-/

/-! ## A251178.P6847436915190651192

`A305194(∑[∑[or(1, n)]])`
-/

namespace A251178.P6847436915190651192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251178.P6847436915190651192

/-! ## A251178.P3336875706298078493

`A024417(A000309(n))`
-/

namespace A251178.P3336875706298078493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A000309 n).toNat

end

end A251178.P3336875706298078493

/-!
# A251179: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 1)^n * x^n / (1-2*x)^(n+1).

The programs for A251179, there is no canonical definition to state claims against.
-/

/-! ## A251179.P11396810354787757511

`A304365(∑[n^n])`
-/

namespace A251179.P11396810354787757511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251179.P11396810354787757511

/-!
# A251180: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 2)^n * x^n / (1+2*x)^(n+1).

The programs for A251180, there is no canonical definition to state claims against.
-/

/-! ## A251180.P8691927868276204733

`A185545(∑[A186762(n)])`
-/

namespace A251180.P8691927868276204733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251180.P8691927868276204733

/-! ## A251180.P8266785659791311047

`A248008(lcm(7, A328345(n)))`
-/

namespace A251180.P8266785659791311047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248008 (Int.lcm 7 (A328345 n))

end

end A251180.P8266785659791311047

/-!
# A251181: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n - 1)^n * x^n / (1-2*x)^(n+1).

The programs for A251181, there is no canonical definition to state claims against.
-/

/-! ## A251181.P2790635610399721213

`∏{p}[round(∑[(n+1)*a(n-1)]/3)², #]` with `a(0)=2`
-/

namespace A251181.P2790635610399721213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251181.P2790635610399721213

/-! ## A251181.P13027976590363195158

`A322314(a(n-1)²)+n` with `a(0)=1`
-/

namespace A251181.P13027976590363195158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322314 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A251181.P13027976590363195158

/-!
# A251185: E.g.f. satisfies: A(x) = x + x*A( -log(2-exp(x)) ).

The programs for A251185, there is no canonical definition to state claims against.
-/

/-! ## A251185.P7833057887005061125

`A328106(a(n-1)*∑[n+1])` with `a(0)=1`
-/

namespace A251185.P7833057887005061125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328106 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A251185.P7833057887005061125

/-!
# A251186: Number of (n+2)X(n+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251186, there is no canonical definition to state claims against.
-/

/-! ## A251186.P6955600594027946298

`A251192((n+1)²+n²)`
-/

namespace A251186.P6955600594027946298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251192 ((n + 1) ^ 2 + n ^ 2)

end

end A251186.P6955600594027946298

/-! ## A251186.P9211224094014983050

`lcm(2, A251192(A001844(n)))`
-/

namespace A251186.P9211224094014983050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251192 (A001844 n).toNat)

end

end A251186.P9211224094014983050

/-! ## A251186.P14132012714686451595

`record[gcd(A003987(n), A251192(n+1))]`
-/

namespace A251186.P14132012714686451595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251186.P14132012714686451595

/-! ## A251186.P13022694336251513117

`A020985(n)²*A251192(A001844(n))`
-/

namespace A251186.P13022694336251513117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A251192 (A001844 n).toNat

end

end A251186.P13022694336251513117

/-! ## A251186.P10183592462057048937

`A007318(val(n+1, 12))*A251192(A001844(n))`
-/

namespace A251186.P10183592462057048937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 12) * A251192 (A001844 n).toNat

end

end A251186.P10183592462057048937

/-!
# A251187: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251187, the canonical program `A251187.P12829986196269252338` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251187 has offset 1).

The definition of A251187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251187.P3167833154015771587

`A251188(n+1)²/A251189(n+1)`
-/

namespace A251187.P3167833154015771587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) ^ 2 : ℚ) / (A251189 (n + 1) : ℚ)

end

end A251187.P3167833154015771587

namespace A251187

/-- `A251188(n+1)²/A251189(n+1)` -/
def P3167833154015771587.Spec : Prop :=
  ∀ n, P3167833154015771587.a n = (A251187 (n + 1) : ℚ)

end A251187

/-! ## A251187.P7699904020335684680

`A251188(n+1)/A250594(n+1)*A251189(n+1)`
-/

namespace A251187.P7699904020335684680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251189 (n + 1) : ℚ)

end

end A251187.P7699904020335684680

namespace A251187

/-- `A251188(n+1)/A250594(n+1)*A251189(n+1)` -/
def P7699904020335684680.Spec : Prop :=
  ∀ n, P7699904020335684680.a n = (A251187 (n + 1) : ℚ)

end A251187

/-! ## A251187.P12829986196269252338

`A006501(n+3)^3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251187

/-- `A006501(n+3)^3` -/
def P12829986196269252338.Spec : Prop :=
  ∀ n, P12829986196269252338.a n = A251187 (n + 1)

theorem P12829986196269252338.correct : P12829986196269252338.Spec := by
  intro n
  simp only [A251187, Nat.add_sub_cancel]

end A251187

/-! ## A251187.P13718545505253895533

`A029000(2*(n+3))^3`
-/

namespace A251187.P13718545505253895533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (2 * (n + 3)) ^ 3

end

end A251187.P13718545505253895533

namespace A251187

/-- `A029000(2*(n+3))^3` -/
def P13718545505253895533.Spec : Prop :=
  ∀ n, P13718545505253895533.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P1678886851681563492

`A009714(3*(n+6))`
-/

namespace A251187.P1678886851681563492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009714 (3 * (n + 6))

end

end A251187.P1678886851681563492

namespace A251187

/-- `A009714(3*(n+6))` -/
def P1678886851681563492.Spec : Prop :=
  ∀ n, P1678886851681563492.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P5436919553102328345

`A152072(A167614(n+4))^3`
-/

namespace A251187.P5436919553102328345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152072 (A167614 (n + 4)).toNat ^ 3

end

end A251187.P5436919553102328345

namespace A251187

/-- `A152072(A167614(n+4))^3` -/
def P5436919553102328345.Spec : Prop :=
  ∀ n, P5436919553102328345.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P369044369428995615

`A000578(A006501(n+3))`
-/

namespace A251187.P369044369428995615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A006501 (n + 3)).toNat

end

end A251187.P369044369428995615

namespace A251187

/-- `A000578(A006501(n+3))` -/
def P369044369428995615.Spec : Prop :=
  ∀ n, P369044369428995615.a n = A251187 (n + 1)

end A251187

/-!
# A251188: Number of (n+2)X(2+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251188, there is no canonical definition to state claims against.
-/

/-! ## A251188.P2357878346837423466

`sqrt(A251187(n+1)*A251189(n+1))`
-/

namespace A251188.P2357878346837423466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A251187 (n + 1) * A251189 (n + 1) : ℝ)

end

end A251188.P2357878346837423466

/-! ## A251188.P13774219533035534228

`A250594(n+1)*A251187(n+1)/A251189(n+1)`
-/

namespace A251188.P13774219533035534228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A251187 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ)

end

end A251188.P13774219533035534228

/-! ## A251188.P14433435907425411699

`A251189(n+1)²/A250594(n+1)`
-/

namespace A251188.P14433435907425411699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251189 (n + 1) ^ 2 : ℚ) / (A250594 (n + 1) : ℚ)

end

end A251188.P14433435907425411699

/-! ## A251188.P4176457175942881313

`A251190(n+1)²/A250596(n+1)`
-/

namespace A251188.P4176457175942881313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A250596 (n + 1) : ℚ)

end

end A251188.P4176457175942881313

/-! ## A251188.P10338255783729500333

`A251192(∑[n+1]+2)`
-/

namespace A251188.P10338255783729500333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251188.P10338255783729500333

/-!
# A251189: Number of (n+2)X(3+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251189, there is no canonical definition to state claims against.
-/

/-! ## A251189.P5867311784812207027

`A251188(n+1)²/A251187(n+1)`
-/

namespace A251189.P5867311784812207027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) ^ 2 : ℚ) / (A251187 (n + 1) : ℚ)

end

end A251189.P5867311784812207027

/-! ## A251189.P10426389261323482345

`A250594(n+1)*A251187(n+1)/A251188(n+1)`
-/

namespace A251189.P10426389261323482345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A251187 (n + 1) : ℚ) / (A251188 (n + 1) : ℚ)

end

end A251189.P10426389261323482345

/-! ## A251189.P2997580729434199194

`sqrt(A250594(n+1)*A251188(n+1))`
-/

namespace A251189.P2997580729434199194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251188 (n + 1) : ℝ)

end

end A251189.P2997580729434199194

/-! ## A251189.P16441779252481984201

`sqrt(A250594(n+1)*A251192(∑[n+1]+2))`
-/

namespace A251189.P16441779252481984201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℝ)

end

end A251189.P16441779252481984201

/-! ## A251189.P17825817266376945933

`A251192(∑[n+1]+2)²/A251187(n+1)`
-/

namespace A251189.P17825817266376945933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 : ℚ) / (A251187 (n + 1) : ℚ)

end

end A251189.P17825817266376945933

/-!
# A251190: Number of (n+2) X (5+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251190, there is no canonical definition to state claims against.
-/

/-! ## A251190.P15418163332715806281

`sqrt(A250594(n+1)*A251191(n+1))`
-/

namespace A251190.P15418163332715806281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251191 (n + 1) : ℝ)

end

end A251190.P15418163332715806281

/-! ## A251190.P15856694769258138220

`A251191(n+1)²/A250861(n+1)`
-/

namespace A251190.P15856694769258138220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251191 (n + 1) ^ 2 : ℚ) / (A250861 (n + 1) : ℚ)

end

end A251190.P15856694769258138220

/-! ## A251190.P9944793042651278557

`A250594(n+1)*A250861(n+1)/A251191(n+1)`
-/

namespace A251190.P9944793042651278557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A250861 (n + 1) : ℚ) / (A251191 (n + 1) : ℚ)

end

end A251190.P9944793042651278557

/-! ## A251190.P15934663157275135749

`sqrt(A250596(n+1)*A251188(n+1))`
-/

namespace A251190.P15934663157275135749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250596 (n + 1) * A251188 (n + 1) : ℝ)

end

end A251190.P15934663157275135749

/-! ## A251190.P3223342862446974605

`(A250596(n+1)/A250594(n+1)*A251188(n+1))²/A250861(n+1)`
-/

namespace A251190.P3223342862446974605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250596 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251188 (n + 1) : ℚ)) ^ 2 / (A250861 (n + 1) : ℚ)

end

end A251190.P3223342862446974605

/-!
# A251191: Number of (n+2)X(6+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251191, there is no canonical definition to state claims against.
-/

/-! ## A251191.P16791167657559794449

`A251190(n+1)²/A250594(n+1)`
-/

namespace A251191.P16791167657559794449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A250594 (n + 1) : ℚ)

end

end A251191.P16791167657559794449

/-! ## A251191.P674828284565633534

`(A251190(n+1)/A251189(n+1))²*A251188(n+1)`
-/

namespace A251191.P674828284565633534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251190 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ)) ^ 2 * (A251188 (n + 1) : ℚ)

end

end A251191.P674828284565633534

/-! ## A251191.P8050870549048071527

`sqrt(A250861(n+1)*A251190(n+1))`
-/

namespace A251191.P8050870549048071527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250861 (n + 1) * A251190 (n + 1) : ℝ)

end

end A251191.P8050870549048071527

/-! ## A251191.P1494608027801212565

`A250594(n+1)*A250861(n+1)/A251190(n+1)`
-/

namespace A251191.P1494608027801212565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A250861 (n + 1) : ℚ) / (A251190 (n + 1) : ℚ)

end

end A251191.P1494608027801212565

/-! ## A251191.P8042298559569663493

`A250596(n+1)/A250594(n+1)*A251188(n+1)`
-/

namespace A251191.P8042298559569663493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250596 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251188 (n + 1) : ℚ)

end

end A251191.P8042298559569663493

/-!
# A251193: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251193, there is no canonical definition to state claims against.
-/

/-! ## A251193.P4602156402678041472

`A251201(∑[4*n]+1)`
-/

namespace A251193.P4602156402678041472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251193.P4602156402678041472

/-! ## A251193.P7155713888602047199

`lcm(2, A251201(A001844(n)))`
-/

namespace A251193.P7155713888602047199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251201 (A001844 n).toNat)

end

end A251193.P7155713888602047199

/-! ## A251193.P3182202129869313556

`record[A003982(n)*A251201(n+1)]`
-/

namespace A251193.P3182202129869313556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P3182202129869313556

/-! ## A251193.P6658694483455985411

`record[gcd(A037012(n), A251201(n+1))]`
-/

namespace A251193.P6658694483455985411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A251201 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P6658694483455985411

/-! ## A251193.P3947519880746171238

`record[A203994(n+1)*A251201(n+1)]`
-/

namespace A251193.P3947519880746171238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A251201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P3947519880746171238

/-!
# A251194: Number of (n+1) X (1+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251194, the canonical program `A251194.P17370084217435329156` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251194 has offset 1).

The definition of A251194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251194.P17370084217435329156

`2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=10, a(1)=25, a(2)=64, a(3)=164`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A251194

/-- `2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P17370084217435329156.Spec : Prop :=
  ∀ n, P17370084217435329156.a n = A251194 (n + 1)

theorem P17370084217435329156.correct : P17370084217435329156.Spec := by
  intro n
  simp only [A251194, Nat.add_sub_cancel]

end A251194

/-! ## A251194.P2772160573113201354

`A123888(n+2)+1`
-/

namespace A251194.P2772160573113201354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123888 (n + 2) + 1

end

end A251194.P2772160573113201354

namespace A251194

/-- `A123888(n+2)+1` -/
def P2772160573113201354.Spec : Prop :=
  ∀ n, P2772160573113201354.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P13222080264198205811

`A052960(n+2)+A052960(n+3)`
-/

namespace A251194.P13222080264198205811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052960 (n + 2) + A052960 (n + 3)

end

end A251194.P13222080264198205811

namespace A251194

/-- `A052960(n+2)+A052960(n+3)` -/
def P13222080264198205811.Spec : Prop :=
  ∀ n, P13222080264198205811.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P1255218691467233655

`A251201(∑[n]+1)`
-/

namespace A251194.P1255218691467233655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251194.P1255218691467233655

namespace A251194

/-- `A251201(∑[n]+1)` -/
def P1255218691467233655.Spec : Prop :=
  ∀ n, P1255218691467233655.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P12917297641980413011

`record[root(A251201(n+1), A007318(n))]`
-/

namespace A251194.P12917297641980413011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251201 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251194.P12917297641980413011

namespace A251194

/-- `record[root(A251201(n+1), A007318(n))]` -/
def P12917297641980413011.Spec : Prop :=
  ∀ n, P12917297641980413011.a n = (A251194 (n + 1) : ℝ)

end A251194

/-!
# A251195: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251195, there is no canonical definition to state claims against.
-/

/-! ## A251195.P13106083009891095637

`A251201(∑[n+1]+2)`
-/

namespace A251195.P13106083009891095637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251195.P13106083009891095637

/-! ## A251195.P4644462043788432667

`record[A251201(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A251195.P4644462043788432667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P4644462043788432667

/-! ## A251195.P6649821796271397379

`record[A251201(A133263(A028242(n)))]`
-/

namespace A251195.P6649821796271397379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P6649821796271397379

/-! ## A251195.P4179366969786557324

`record[A251201(Δ[A003453(n+5)])]`
-/

namespace A251195.P4179366969786557324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P4179366969786557324

/-! ## A251195.P15220175155839639473

`A000034(2*n)*A251201(A000096(n+1))`
-/

namespace A251195.P15220175155839639473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A251201 (A000096 (n + 1)).toNat

end

end A251195.P15220175155839639473

/-!
# A251196: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251196, there is no canonical definition to state claims against.
-/

/-! ## A251196.P13336207016180590134

`A251201(∑[n+2]+4)`
-/

namespace A251196.P13336207016180590134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251196.P13336207016180590134

/-! ## A251196.P17168236754748586061

`lcm(2, A251201(A167614(n+1)))`
-/

namespace A251196.P17168236754748586061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251201 (A167614 (n + 1)).toNat)

end

end A251196.P17168236754748586061

/-! ## A251196.P7938183556070019507

`A251201(A167614(n+1))+A000007(n+1)`
-/

namespace A251196.P7938183556070019507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A251196.P7938183556070019507

/-! ## A251196.P9125704893276905061

`A251201(A167614(n+1))%A251198(n+1)`
-/

namespace A251196.P9125704893276905061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251201 (A167614 (n + 1)).toNat) (A251198 (n + 1))

end

end A251196.P9125704893276905061

/-! ## A251196.P18433931521346957639

`A353528(3*n+2)+A251201(A167614(n+1))`
-/

namespace A251196.P18433931521346957639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (3 * n + 2) + A251201 (A167614 (n + 1)).toNat

end

end A251196.P18433931521346957639

/-!
# A251197: Number of (n+1) X (4+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251197, there is no canonical definition to state claims against.
-/

/-! ## A251197.P4857420293393046028

`A251201(A055999(n)+10)`
-/

namespace A251197.P4857420293393046028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A055999 n + 10).toNat

end

end A251197.P4857420293393046028

/-! ## A251197.P12021480214849701294

`A251201(A167614(n+2)+1)`
-/

namespace A251197.P12021480214849701294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A167614 (n + 2) + 1).toNat

end

end A251197.P12021480214849701294

/-! ## A251197.P18166488746788173049

`A251201(A000124(n+3)+3)`
-/

namespace A251197.P18166488746788173049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A000124 (n + 3) + 3).toNat

end

end A251197.P18166488746788173049

/-! ## A251197.P1407983918412140278

`A251201(A374004(n+1))`
-/

namespace A251197.P1407983918412140278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374004 (n + 1)).toNat

end

end A251197.P1407983918412140278

/-! ## A251197.P559008004914461183

`A251201(A056000(n)+7)`
-/

namespace A251197.P559008004914461183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A056000 n + 7).toNat

end

end A251197.P559008004914461183

/-!
# A251198: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251198, there is no canonical definition to state claims against.
-/

/-! ## A251198.P1379591187717116295

`A251201(A167499(n+3))`
-/

namespace A251198.P1379591187717116295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A167499 (n + 3)).toNat

end

end A251198.P1379591187717116295

/-! ## A251198.P9367598439471371164

`A251201(A056000(n)+15)`
-/

namespace A251198.P9367598439471371164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A056000 n + 15).toNat

end

end A251198.P9367598439471371164

/-! ## A251198.P9066787748103304955

`A251201(A374005(n+1))`
-/

namespace A251198.P9066787748103304955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374005 (n + 1)).toNat

end

end A251198.P9066787748103304955

/-! ## A251198.P7149444003101347702

`A251201(eq[4, A193592(n)])`
-/

namespace A251198.P7149444003101347702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251198.P7149444003101347702

/-! ## A251198.P4153890549295442337

`A251201(eq[10, A239829(n+1)])`
-/

namespace A251198.P4153890549295442337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251198.P4153890549295442337

/-!
# A251199: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251199, there is no canonical definition to state claims against.
-/

/-! ## A251199.P11061945357600562643

`A251201(eq[7, A131818(n+1)])`
-/

namespace A251199.P11061945357600562643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251199.P11061945357600562643

/-! ## A251199.P3218856077499066034

`A251201(A374007(n+1))`
-/

namespace A251199.P3218856077499066034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374007 (n + 1)).toNat

end

end A251199.P3218856077499066034

/-! ## A251199.P12243720295010636556

`A251201(eq[3, A219347(n)])`
-/

namespace A251199.P12243720295010636556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251199.P12243720295010636556

/-! ## A251199.P17355142341338166873

`A251201(eq[5, A193592(n)])`
-/

namespace A251199.P17355142341338166873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251199.P17355142341338166873

/-! ## A251199.P5045849699555791115

`A251201(eq[8, A258709(n)])`
-/

namespace A251199.P5045849699555791115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251199.P5045849699555791115

