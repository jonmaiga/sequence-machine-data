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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A249800: a(n) is the smallest prime q such that n(q+1)+1 is prime, that is, the smallest prime q such that n = (p-1)/(q+1) with p prime; or a(n) = -1 if no such q exists.

The programs for A249800, there is no canonical definition to state claims against.
-/

/-! ## A249800.P14730682218160477024

`(A249801(n+1)-(n+2))/(n+1)`
-/

namespace A249800.P14730682218160477024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249801 (n + 1) - (n + 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A249800.P14730682218160477024

/-! ## A249800.P17569818280364382474

`A233583((A249801(n+1)-1)/(n+1))`
-/

namespace A249800.P17569818280364382474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway ((A249801 (n + 1) - 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A249800.P17569818280364382474

/-! ## A249800.P8725735174998759055

`floor(A049820(A249801(n+1))/(n+1))`
-/

namespace A249800.P8725735174998759055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049820 (A249801 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A249800.P8725735174998759055

/-! ## A249800.P4824275780491741308

`A007913((n+1)*(A249801(n+1)-(n+1))-(n+1))`
-/

namespace A249800.P4824275780491741308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * (A249801 (n + 1) - (n + 1 : ℤ)) - (n + 1 : ℤ)).toNat

end

end A249800.P4824275780491741308

/-! ## A249800.P1585660267908879401

`A112047(A079267(n+3)*A112047(n+5))`
-/

namespace A249800.P1585660267908879401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112047 (A079267 (n + 3) * A112047 (n + 5)).toNat

end

end A249800.P1585660267908879401

/-!
# A249801: Take smallest prime q such that n*(q+1)+1 is prime (A249800), that is, the smallest prime q so that n = (p-1)/(q+1) with p prime; sequence gives values of p; or -1 if A249800(n) = -1.

The programs for A249801, there is no canonical definition to state claims against.
-/

/-! ## A249801.P1319431581426928961

`(A249800(n+1)+1)*(n+1)+1`
-/

namespace A249801.P1319431581426928961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249800 (n + 1) + 1) * (n + 1 : ℤ) + 1

end

end A249801.P1319431581426928961

/-! ## A249801.P11358232094595819318

`(n+1)*A000203(A249800(n+1))+1`
-/

namespace A249801.P11358232094595819318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A249800 (n + 1)).toNat + 1

end

end A249801.P11358232094595819318

/-! ## A249801.P10298598260216970961

`A034694((n+1)*(A249800(n+1)+1))`
-/

namespace A249801.P10298598260216970961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * (A249800 (n + 1) + 1)).toNat

end

end A249801.P10298598260216970961

/-! ## A249801.P9386713267593547294

`A064632((n+1)*(A249800(n+1)+1))`
-/

namespace A249801.P9386713267593547294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 ((n + 1 : ℤ) * (A249800 (n + 1) + 1)).toNat

end

end A249801.P9386713267593547294

/-! ## A249801.P15273455681798672942

`A165998((A249800(n+1)+1)*(n+1))`
-/

namespace A249801.P15273455681798672942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 ((A249800 (n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A249801.P15273455681798672942

/-!
# A249802: a(n) is the smallest prime q such that n(q-1)-1 is prime, that is, the smallest prime q so that n = (p+1)/(q-1) with p prime; or a(n) = -1 if no such q exists.

The programs for A249802, there is no canonical definition to state claims against.
-/

/-! ## A249802.P17654592640169487792

`(A249803(n+1)+1)/(n+1)+1`
-/

namespace A249802.P17654592640169487792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249803 (n + 1) + 1 : ℚ) / (n + 1 : ℚ) + 1

end

end A249802.P17654592640169487792

/-! ## A249802.P14935302951664613072

`ceil(A088580(A249803(n+1))/(n+1))`
-/

namespace A249802.P14935302951664613072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088580 (A249803 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A249802.P14935302951664613072

/-! ## A249802.P14272237276133220734

`A004768(A249803(n+1))%A004771(n)`
-/

namespace A249802.P14272237276133220734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004768 (A249803 (n + 1)).toNat) (A004771 n)

end

end A249802.P14272237276133220734

/-! ## A249802.P6819696114287334809

`A065854(3^A040081(n+1))`
-/

namespace A249802.P6819696114287334809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065854 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A040081 (n + 1) : ℤ))).toNat

end

end A249802.P6819696114287334809

/-! ## A249802.P4362867395105362192

`A283273(17^A040081(n+1))`
-/

namespace A249802.P4362867395105362192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283273 (SequenceMachineLib.roundAway ((17 : ℚ) ^ (A040081 (n + 1) : ℤ))).toNat

end

end A249802.P4362867395105362192

/-!
# A249803: Take smallest prime q such that n(q-1)-1 is prime (A249802), that is, the smallest prime q so that n = (p+1)/(q-1) with p prime; sequence gives values of p; or -1 if A249802(n) = -1.

The programs for A249803, there is no canonical definition to state claims against.
-/

/-! ## A249803.P9604078670758993218

`(n+1)*A249802(n+1)-(n+2)`
-/

namespace A249803.P9604078670758993218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A249802 (n + 1) - (n + 2 : ℤ)

end

end A249803.P9604078670758993218

/-! ## A249803.P6525341314124030767

`(n+1)*A049820(A249802(n+1))+n`
-/

namespace A249803.P6525341314124030767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049820 (A249802 (n + 1)).toNat + (n : ℤ)

end

end A249803.P6525341314124030767

/-! ## A249803.P11086926433517260764

`A038700(lcm(A003589(n), A187829(n+1)))`
-/

namespace A249803.P11086926433517260764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Int.lcm (A003589 n) (A187829 (n + 1)))

end

end A249803.P11086926433517260764

/-! ## A249803.P9841206732051455603

`A038700(lcm(A003589(n), A077168(n)))`
-/

namespace A249803.P9841206732051455603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (Int.lcm (A003589 n) (A077168 n))

end

end A249803.P9841206732051455603

/-! ## A249803.P9226618008315738713

`A038699(lcm(n+1, A293724(n)))`
-/

namespace A249803.P9226618008315738713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (Int.lcm (n + 1 : ℤ) (A293724 n))

end

end A249803.P9226618008315738713

/-!
# A249806: Smallest odd number k>1 such that k*2^prime(n)-1 is also prime.

The programs for A249806, there is no canonical definition to state claims against.
-/

/-! ## A249806.P1848808519015479695

`A247202(p?[comp[n²]])`
-/

namespace A249806.P1848808519015479695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A249806.P1848808519015479695

/-! ## A249806.P7395595608241650348

`A247202(A000040(n+1))`
-/

namespace A249806.P7395595608241650348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A000040 (n + 1)).toNat

end

end A249806.P7395595608241650348

/-! ## A249806.P10878671736889686124

`A247202(A006005(n+1))`
-/

namespace A249806.P10878671736889686124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A006005 (n + 1)).toNat

end

end A249806.P10878671736889686124

/-! ## A249806.P1867518888897514779

`A247202(A008578(n+2))`
-/

namespace A249806.P1867518888897514779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A008578 (n + 2)).toNat

end

end A249806.P1867518888897514779

/-! ## A249806.P14805174316514046206

`A247202(A075643(n+2))`
-/

namespace A249806.P14805174316514046206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A075643 (n + 2)).toNat

end

end A249806.P14805174316514046206

/-! ## A249806.P8294802622343693900

`A247202(A171525(n+2))`
-/

namespace A249806.P8294802622343693900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A171525 (n + 2)).toNat

end

end A249806.P8294802622343693900

/-! ## A249806.P6142686623984204882

`A247202(A175787(n+2))`
-/

namespace A249806.P6142686623984204882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A175787 (n + 2)).toNat

end

end A249806.P6142686623984204882

/-! ## A249806.P16105803123538867273

`A247202(A182986(n+2))`
-/

namespace A249806.P16105803123538867273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (A182986 (n + 2)).toNat

end

end A249806.P16105803123538867273

/-! ## A249806.P6264430996060258419

`A247202(record[A006530(n+2)])`
-/

namespace A249806.P6264430996060258419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249806.P6264430996060258419

/-! ## A249806.P3984145262276213927

`A247202(record[A014963(n+2)])`
-/

namespace A249806.P3984145262276213927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249806.P3984145262276213927

/-! ## A249806.P12856610645839713400

`A247202(record[A020639(n+2)])`
-/

namespace A249806.P12856610645839713400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249806.P12856610645839713400

/-!
# A249807: a(0) = 1; afterwards a(n) is the smallest positive square that added to all previous terms produces a prime.

The programs for A249807, there is no canonical definition to state claims against.
-/

/-! ## A249807.P14459626886526187989

`A179478(floor(n-atan(n)))²`
-/

namespace A249807.P14459626886526187989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179478 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat ^ 2

end

end A249807.P14459626886526187989

/-! ## A249807.P15385209397190411526

`A179478(A289207(n))²`
-/

namespace A249807.P15385209397190411526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179478 (A289207 n).toNat ^ 2

end

end A249807.P15385209397190411526

/-! ## A249807.P17570633317762848073

`A179478(A289207(n))^A000040(gcd(n, n+1))`
-/

namespace A249807.P17570633317762848073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A249807.P17570633317762848073

/-! ## A249807.P6723336589318843509

`A179478(A289207(n))^A006530((-1)^n+3)`
-/

namespace A249807.P6723336589318843509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A006530 ((-1) ^ n + 3).toNat : ℤ)

end

end A249807.P6723336589318843509

/-! ## A249807.P9436927970913163974

`A179478(A289207(n))^A000040((-1)^(2*n))`
-/

namespace A249807.P9436927970913163974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ)

end

end A249807.P9436927970913163974

/-! ## A249807.P5120880773913685009

`A179478(A289207(n))^A000005(A002145(n+1))`
-/

namespace A249807.P5120880773913685009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000005 (A002145 (n + 1)).toNat : ℤ)

end

end A249807.P5120880773913685009

/-! ## A249807.P12066385611526586566

`A179478(A289207(n))^A000005(A002385(n+1))`
-/

namespace A249807.P12066385611526586566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000005 (A002385 (n + 1)).toNat : ℤ)

end

end A249807.P12066385611526586566

/-! ## A249807.P14255262844832560467

`A179478(A289207(n))^A000005(A071698(n+1))`
-/

namespace A249807.P14255262844832560467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000005 (A071698 (n + 1)).toNat : ℤ)

end

end A249807.P14255262844832560467

/-! ## A249807.P8148088898286807802

`A179478(A289207(n))^A001222(A108574(n+1))`
-/

namespace A249807.P8148088898286807802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A001222 (A108574 (n + 1)).toNat : ℤ)

end

end A249807.P8148088898286807802

/-! ## A249807.P14599716674187292045

`A179478(A289207(n))^A000005(A065384(n+2))`
-/

namespace A249807.P14599716674187292045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179478 (A289207 n).toNat : ℚ) ^ (A000005 (A065384 (n + 2)).toNat : ℤ)

end

end A249807.P14599716674187292045

/-!
# A249808: Triangular table read by rows, a lower right triangular region of square array A(n,k) is the number of times prime p_k has occurred as the smallest prime factor of numbers 1..n.

The programs for A249808, there is no canonical definition to state claims against.
-/

/-! ## A249808.P9245296871514146987

`A005206(A085604(n+1))^A155495(n)`
-/

namespace A249808.P9245296871514146987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A085604 (n + 1)).toNat : ℚ) ^ (A155495 n : ℤ)

end

end A249808.P9245296871514146987

/-! ## A249808.P4629745982196619731

`A005206(A085604(n+1))^A173917(n)`
-/

namespace A249808.P4629745982196619731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A085604 (n + 1)).toNat : ℚ) ^ (A173917 n : ℤ)

end

end A249808.P4629745982196619731

/-! ## A249808.P14897252885035710909

`A005206(A085604(n+1))^A176286(n)`
-/

namespace A249808.P14897252885035710909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A085604 (n + 1)).toNat : ℚ) ^ (A176286 n : ℤ)

end

end A249808.P14897252885035710909

/-! ## A249808.P14618560515963152364

`A005206(A085604(n+1))^A176561(n)`
-/

namespace A249808.P14618560515963152364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A085604 (n + 1)).toNat : ℚ) ^ (A176561 n : ℤ)

end

end A249808.P14618560515963152364

/-! ## A249808.P2265509551379357759

`A005206(A085604(n+1))^A014963(∑[n+1]+2)`
-/

namespace A249808.P2265509551379357759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A085604 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ)

end

end A249808.P2265509551379357759

/-!
# A249809: Irregular table read by rows: T(n, k) is the number of times prime p_k has occurred as the smallest prime factor of numbers 1 .. n. (T(1,1) = 0, and for each n > 1, k = 1 .. A000720(n)).

The programs for A249809, there is no canonical definition to state claims against.
-/

/-! ## A249809.P17853019115334132153

`ceil(A000194(n)/A331852(A128099(n)))`
-/

namespace A249809.P17853019115334132153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000194 n : ℚ) / (A331852 (A128099 n).toNat : ℚ)⌉

end

end A249809.P17853019115334132153

/-! ## A249809.P4958884721067745681

`floor(sqrt(n))^A271102(A136394(n))`
-/

namespace A249809.P4958884721067745681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) ^ (A271102 (A136394 n).toNat : ℤ)

end

end A249809.P4958884721067745681

/-! ## A249809.P3378082593778630210

`floor(sqrt(A257022(n)%A257041(n+1)))`
-/

namespace A249809.P3378082593778630210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A257022 n) (A257041 (n + 1)))

end

end A249809.P3378082593778630210

/-! ## A249809.P1920070384406325748

`A394052(n+1)%∑[A319420(3*n+1)]`
-/

namespace A249809.P1920070384406325748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394052 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249809.P1920070384406325748

/-! ## A249809.P2413429883139971654

`floor(log2(A257022(n)+1))%A154493(2*n+1)`
-/

namespace A249809.P2413429883139971654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.log 2 (A257022 n + 1).toNat : ℤ) (A154493 (2 * n + 1))

end

end A249809.P2413429883139971654

/-!
# A249810: a(1) = 0, a(n) = A078898(A003961(n)).

The programs for A249810, there is no canonical definition to state claims against.
-/

/-! ## A249810.P1953113067865986248

`A078898(A003961(n+1)-floor(acot(n)))`
-/

namespace A249810.P1953113067865986248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A249810.P1953113067865986248

/-! ## A249810.P701024235204063747

`A078898(A003961(n+1)-A000007(n))`
-/

namespace A249810.P701024235204063747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (n + 1) - A000007 n).toNat

end

end A249810.P701024235204063747

/-! ## A249810.P1909967291823578808

`A078898(A003961(n+1))%A000118(n)`
-/

namespace A249810.P1909967291823578808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A003961 (n + 1)).toNat) (A000118 n)

end

end A249810.P1909967291823578808

/-! ## A249810.P18311278892053072229

`A078898(A003961(n+1)%A154323(n))`
-/

namespace A249810.P18311278892053072229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A003961 (n + 1)) (A154323 n)).toNat

end

end A249810.P18311278892053072229

/-! ## A249810.P9100465600745795127

`A246277(n+1)-A280492(A003961(n+1))`
-/

namespace A249810.P9100465600745795127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) - A280492 (A003961 (n + 1)).toNat

end

end A249810.P9100465600745795127

/-! ## A249810.P18028584421013584882

`A078898((A253885(n)+1)%A292384(n+1))`
-/

namespace A249810.P18028584421013584882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A253885 n + 1) (A292384 (n + 1))).toNat

end

end A249810.P18028584421013584882

/-! ## A249810.P17749002725154300383

`A078898(A297166(2*(n+1))%A270710(n))`
-/

namespace A249810.P17749002725154300383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A297166 (2 * (n + 1))) (A270710 n)).toNat

end

end A249810.P17749002725154300383

/-! ## A249810.P9678579609012141932

`A078898(char[A249816(n+1)]*A003961(n+1))`
-/

namespace A249810.P9678579609012141932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003961 (n + 1)).toNat

end

end A249810.P9678579609012141932

/-! ## A249810.P5755158511506000694

`A078898(char[A055396(n+2)]*A003961(n+1))`
-/

namespace A249810.P5755158511506000694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003961 (n + 1)).toNat

end

end A249810.P5755158511506000694

/-! ## A249810.P7409243072204480963

`A078898((2*A048673(n+1)-1)%A292384(n+1))`
-/

namespace A249810.P7409243072204480963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (2 * A048673 (n + 1) - 1) (A292384 (n + 1))).toNat

end

end A249810.P7409243072204480963

/-! ## A249810.P2734823291067585260

`A055396(A030101(n)+1)*A078898(A003961(n+1))`
-/

namespace A249810.P2734823291067585260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A030101 n + 1).toNat * A078898 (A003961 (n + 1)).toNat

end

end A249810.P2734823291067585260

/-! ## A249810.P3268186333611714280

`A249820(n+1)+A246277(A249818(n+1))`
-/

namespace A249810.P3268186333611714280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (n + 1) + A246277 (A249818 (n + 1)).toNat

end

end A249810.P3268186333611714280

/-! ## A249810.P13761853556251044571

`A246277(A249818(A266646(n+1)))`
-/

namespace A249810.P13761853556251044571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249818 (A266646 (n + 1)).toNat).toNat

end

end A249810.P13761853556251044571

/-! ## A249810.P13963201093232393333

`A246277(A249818(A003961(n+1)))`
-/

namespace A249810.P13963201093232393333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249818 (A003961 (n + 1)).toNat).toNat

end

end A249810.P13963201093232393333

/-! ## A249810.P4385411923622458896

`A246277(A249818(A249818(A250469(A249817(n+1)))))`
-/

namespace A249810.P4385411923622458896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249818 (A249818 (A250469 (A249817 (n + 1)).toNat).toNat).toNat).toNat

end

end A249810.P4385411923622458896

/-!
# A249811: Permutation of natural numbers: a(n) = A249741(A001511(n), A003602(n)).

The programs for A249811, there is no canonical definition to state claims against.
-/

/-! ## A249811.P18398962963584004655

`A249815(A246676(n+1))`
-/

namespace A249811.P18398962963584004655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A246676 (n + 1)).toNat

end

end A249811.P18398962963584004655

/-! ## A249811.P16224836007810061708

`A249741(A249725(n+1))`
-/

namespace A249811.P16224836007810061708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (A249725 (n + 1)).toNat

end

end A249811.P16224836007810061708

/-! ## A249811.P640455225170665087

`A114881(A209268(n+1))`
-/

namespace A249811.P640455225170665087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114881 (A209268 (n + 1)).toNat

end

end A249811.P640455225170665087

/-! ## A249811.P16517380216759030358

`A207801(n+2)-1`
-/

namespace A249811.P16517380216759030358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (n + 2) - 1

end

end A249811.P16517380216759030358

/-! ## A249811.P504467005973905672

`∑[-Δ[-A207801(n+1)]]`
-/

namespace A249811.P504467005973905672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A207801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249811.P504467005973905672

/-! ## A249811.P1348824441431379324

`∑{d}[A207801(n+2), A000010(#)%#]`
-/

namespace A249811.P1348824441431379324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000010 d) (d : ℤ)

end

end A249811.P1348824441431379324

/-! ## A249811.P12126608362971247650

`∑[Δ[A207801(n+1)]%A264961(n+1)]`
-/

namespace A249811.P12126608362971247650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A264961 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249811.P12126608362971247650

/-! ## A249811.P2436286421320549392

`A023443(A207801(n+2))`
-/

namespace A249811.P2436286421320549392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A207801 (n + 2)).toNat

end

end A249811.P2436286421320549392

/-! ## A249811.P17954362605660689619

`A065190(A207801(A065190(n+1)))`
-/

namespace A249811.P17954362605660689619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A207801 (A065190 (n + 1)).toNat).toNat

end

end A249811.P17954362605660689619

/-! ## A249811.P6458059470678410159

`A260196(A249818(2*(n+1)))+A207801(n+2)`
-/

namespace A249811.P6458059470678410159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A249818 (2 * (n + 1))).toNat + A207801 (n + 2)

end

end A249811.P6458059470678410159

/-! ## A249811.P3438331941678766940

`A260196(A207801(2*(n+1)))+A207801(n+2)`
-/

namespace A249811.P3438331941678766940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A207801 (2 * (n + 1))).toNat + A207801 (n + 2)

end

end A249811.P3438331941678766940

/-!
# A249812: Permutation of natural numbers: a(n) = A000079(A055396(n+1)-1) * ((2*A078898(n+1))-1).

The programs for A249812, there is no canonical definition to state claims against.
-/

/-! ## A249812.P14933469865790616040

`A000079(A055396(n+2)-1)*(2*A078898(n+2)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249812.P14933469865790616040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055396 (n + 2) - 1).toNat * (2 * A078898 (n + 2) - 1)

end

end A249812.P14933469865790616040

/-! ## A249812.P17678016987686671498

`A135764(A249742(n+1))`
-/

namespace A249812.P17678016987686671498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A249742 (n + 1)).toNat

end

end A249812.P17678016987686671498

/-! ## A249812.P4589879559358287209

`A054582(A250252(n+1)-1)`
-/

namespace A249812.P4589879559358287209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A250252 (n + 1) - 1).toNat

end

end A249812.P4589879559358287209

/-! ## A249812.P12410530892570271502

`A246675(A249816(n+1))`
-/

namespace A249812.P12410530892570271502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246675 (A249816 (n + 1)).toNat

end

end A249812.P12410530892570271502

/-! ## A249812.P11705725265599910470

`A135764(A252460(n+2)-1)`
-/

namespace A249812.P11705725265599910470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A252460 (n + 2) - 1).toNat

end

end A249812.P11705725265599910470

/-! ## A249812.P1801335662104765658

`A246675(A246273(A250252(n+1)))`
-/

namespace A249812.P1801335662104765658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246675 (A246273 (A250252 (n + 1)).toNat).toNat

end

end A249812.P1801335662104765658

/-!
# A249813: Permutation of natural numbers: a(1) = 1, a(n) = A000079(A055396(n+1)-1) * ((2 * a(A078898(n+1))) - 1).

The programs for A249813, there is no canonical definition to state claims against.
-/

/-! ## A249813.P11000864156693775912

`A000079(A055396(n+2)-1)*(2*a(A078898(n+2)-1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249813.P11000864156693775912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A055396 (n + 2) - 1).toNat * (2 * a (A078898 (n + 2) - 1).toNat - 1)

end

end A249813.P11000864156693775912

/-! ## A249813.P15514057075731692288

`A246683(A250243(n+1))`
-/

namespace A249813.P15514057075731692288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246683 (A250243 (n + 1)).toNat

end

end A249813.P15514057075731692288

/-! ## A249813.P18152392241713816037

`A246683(A249816(A249816(A249814(A246683(n+1)))))`
-/

namespace A249813.P18152392241713816037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246683 (A249816 (A249816 (A249814 (A246683 (n + 1)).toNat).toNat).toNat).toNat

end

end A249813.P18152392241713816037

/-! ## A249813.P17854984012707390223

`A246683(A249815(n+1)%A089827(n+1))`
-/

namespace A249813.P17854984012707390223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246683 (Int.tmod (A249815 (n + 1)) (A089827 (n + 1))).toNat

end

end A249813.P17854984012707390223

/-! ## A249813.P13792944908510699357

`A246684(A246683(A246683(A250244(n+1))))`
-/

namespace A249813.P13792944908510699357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246684 (A246683 (A246683 (A250244 (n + 1)).toNat).toNat).toNat

end

end A249813.P13792944908510699357

/-!
# A249814: "Mountains of Eratosthenes" permutation: a(1) = 1, a(n) = A249741(A001511(n), a(A003602(n))).

The programs for A249814, there is no canonical definition to state claims against.
-/

/-! ## A249814.P6450200014209274984

`A250244(A246684(n+1))`
-/

namespace A249814.P6450200014209274984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (A246684 (n + 1)).toNat

end

end A249814.P6450200014209274984

/-! ## A249814.P9323573856274571430

`A249815(A246684(n+1))+A248394(Δ[(14*n)²]-2)`
-/

namespace A249814.P9323573856274571430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A246684 (n + 1)).toNat + A248394 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat

end

end A249814.P9323573856274571430

/-! ## A249814.P14876963769971562653

`A249815(A246684(n+1))+A248395(Δ[(14*n)²]-2)`
-/

namespace A249814.P14876963769971562653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A246684 (n + 1)).toNat + A248395 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat

end

end A249814.P14876963769971562653

/-! ## A249814.P10150686869816926828

`A014963(A141214(n+9))*A249815(A246684(n+1))`
-/

namespace A249814.P10150686869816926828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A141214 (n + 9)).toNat * A249815 (A246684 (n + 1)).toNat

end

end A249814.P10150686869816926828

/-! ## A249814.P14438645356398942876

`A249816(A246684(n+1)%A114016(n+1))`
-/

namespace A249814.P14438645356398942876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (Int.tmod (A246684 (n + 1)) (A114016 (n + 1))).toNat

end

end A249814.P14438645356398942876

/-!
# A249815: Permutation of natural numbers: a(n) = A249741(A055396(n+1), A246277(n+1)).

The programs for A249815, there is no canonical definition to state claims against.
-/

/-! ## A249815.P13514387098565084764

`A249817(n+2)-1`
-/

namespace A249815.P13514387098565084764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (n + 2) - 1

end

end A249815.P13514387098565084764

/-! ## A249815.P408442362730884488

`A249811(A246675(n+1))`
-/

namespace A249815.P408442362730884488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A246675 (n + 1)).toNat

end

end A249815.P408442362730884488

/-! ## A249815.P16200036254346182912

`A020639(n+2)*A280497(n+2)-1`
-/

namespace A249815.P16200036254346182912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A280497 (n + 2) - 1

end

end A249815.P16200036254346182912

/-! ## A249815.P14143044297215266056

`A023443(A249817(n+2))`
-/

namespace A249815.P14143044297215266056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249817 (n + 2)).toNat

end

end A249815.P14143044297215266056

/-! ## A249815.P10159315292514244704

`A249738(2*A249817(n+2))`
-/

namespace A249815.P10159315292514244704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A249817 (n + 2)).toNat

end

end A249815.P10159315292514244704

/-! ## A249815.P4944691737778549592

`A078898(∑[2*Δ[A249817(n+1)]])`
-/

namespace A249815.P4944691737778549592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249815.P4944691737778549592

/-! ## A249815.P9218359978261514789

`A249738(A249817(n+2)+A249817(n+2))`
-/

namespace A249815.P9218359978261514789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A249817 (n + 2) + A249817 (n + 2)).toNat

end

end A249815.P9218359978261514789

/-! ## A249815.P17235250220253976881

`A083221(A252752(n+2))-1`
-/

namespace A249815.P17235250220253976881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (A252752 (n + 2)).toNat - 1

end

end A249815.P17235250220253976881

/-! ## A249815.P1917521889537677633

`A250479(A003961(n+2))-1`
-/

namespace A249815.P1917521889537677633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A003961 (n + 2)).toNat - 1

end

end A249815.P1917521889537677633

/-! ## A249815.P15706299182983039294

`A250479(A045965(n+2))-1`
-/

namespace A249815.P15706299182983039294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A045965 (n + 2)).toNat - 1

end

end A249815.P15706299182983039294

/-! ## A249815.P17239491823130409526

`A249741(A246276(n+1))`
-/

namespace A249815.P17239491823130409526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (A246276 (n + 1)).toNat

end

end A249815.P17239491823130409526

/-!
# A249816: Permutation of natural numbers: a(n) = A246275(A055396(n+1), A078898(n+1)).

The programs for A249816, there is no canonical definition to state claims against.
-/

/-! ## A249816.P15873796875910511566

`A249818(n+2)-1`
-/

namespace A249816.P15873796875910511566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 2) - 1

end

end A249816.P15873796875910511566

/-! ## A249816.P2007299247703653400

`A246676(A249812(n+1))`
-/

namespace A249816.P2007299247703653400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A249812 (n + 1)).toNat

end

end A249816.P2007299247703653400

/-! ## A249816.P13909730651896522683

`∑[2*Δ[A249818(n+1)/2]]`
-/

namespace A249816.P13909730651896522683
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249816.P13909730651896522683

/-! ## A249816.P17235774680738769221

`A020639(n+2)*A280498(n+2)-1`
-/

namespace A249816.P17235774680738769221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A280498 (n + 2) - 1

end

end A249816.P17235774680738769221

/-! ## A249816.P9152229386130382288

`A260196(A207801(n+2))+A249818(n+2)`
-/

namespace A249816.P9152229386130382288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A207801 (n + 2)).toNat + A249818 (n + 2)

end

end A249816.P9152229386130382288

/-! ## A249816.P4327895809740596299

`A260196(A249818(2*(n+1)))+A249818(n+2)`
-/

namespace A249816.P4327895809740596299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A249818 (2 * (n + 1))).toNat + A249818 (n + 2)

end

end A249816.P4327895809740596299

/-! ## A249816.P7719346898872925521

`A023443(A249818(n+2))`
-/

namespace A249816.P7719346898872925521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249818 (n + 2)).toNat

end

end A249816.P7719346898872925521

/-! ## A249816.P1827629454222269838

`A249738(2*A249818(n+2))`
-/

namespace A249816.P1827629454222269838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A249818 (n + 2)).toNat

end

end A249816.P1827629454222269838

/-! ## A249816.P2221225991122159343

`A078898(∑[2*Δ[A249818(n+1)]])`
-/

namespace A249816.P2221225991122159343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249816.P2221225991122159343

/-! ## A249816.P10301083842413119428

`A249738(A249818(n+2)+A249818(n+2))`
-/

namespace A249816.P10301083842413119428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A249818 (n + 2) + A249818 (n + 2)).toNat

end

end A249816.P10301083842413119428

/-! ## A249816.P8948355008662463039

`and(A249818(n+2)+A126646(n+1), A126646(n+1))`
-/

namespace A249816.P8948355008662463039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249818 (n + 2) + A126646 (n + 1)) (A126646 (n + 1))

end

end A249816.P8948355008662463039

/-! ## A249816.P15393101030686151989

`A246275(A249742(n+1))`
-/

namespace A249816.P15393101030686151989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (A249742 (n + 1)).toNat

end

end A249816.P15393101030686151989

/-! ## A249816.P12014607081787610829

`A246273(A250252(n+1))`
-/

namespace A249816.P12014607081787610829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A250252 (n + 1)).toNat

end

end A249816.P12014607081787610829

/-! ## A249816.P2246077334240377270

`A246278(A252460(n+2))-1`
-/

namespace A249816.P2246077334240377270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (A252460 (n + 2)).toNat - 1

end

end A249816.P2246077334240377270

/-!
# A249817: Permutation of natural numbers: a(1) = 1, a(n) = A083221(A055396(n),A246277(n)).

The programs for A249817, there is no canonical definition to state claims against.
-/

/-! ## A249817.P8577698116819152994

`A020639(n+1)*A280497(n+1)`
-/

namespace A249817.P8577698116819152994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A280497 (n + 1)

end

end A249817.P8577698116819152994

/-! ## A249817.P10447051367363553804

`∏{p}[A028233(n+1), #*A280497(n+1)]`
-/

namespace A249817.P10447051367363553804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A280497 (n + 1)

end

end A249817.P10447051367363553804

/-! ## A249817.P14306930269188203967

`(n+1)/A032742(n+1)*A280497(n+1)`
-/

namespace A249817.P14306930269188203967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A249817.P14306930269188203967

/-! ## A249817.P10352708043288782183

`A006530(A028233(n+1))*A280497(n+1)`
-/

namespace A249817.P10352708043288782183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A280497 (n + 1)

end

end A249817.P10352708043288782183

/-! ## A249817.P3473139458116887323

`A249818(n+1)*A280497(n+1)/A280498(n+1)`
-/

namespace A249817.P3473139458116887323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (n + 1) * A280497 (n + 1) : ℚ) / (A280498 (n + 1) : ℚ)

end

end A249817.P3473139458116887323

/-! ## A249817.P15054952724152306297

`A250245(n+1)/A280495(n+1)*A280497(n+1)`
-/

namespace A249817.P15054952724152306297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A249817.P15054952724152306297

/-! ## A249817.P180130397234543874

`A250246(n+1)/A280496(n+1)*A280497(n+1)`
-/

namespace A249817.P180130397234543874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A249817.P180130397234543874

/-! ## A249817.P18393344555481466235

`A266645(n+1)*A280497(n+1)/A283463(n+1)`
-/

namespace A249817.P18393344555481466235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) * A280497 (n + 1) : ℚ) / (A283463 (n + 1) : ℚ)

end

end A249817.P18393344555481466235

/-! ## A249817.P15175201543691872651

`A020639(n+1)+A250247(n+1)-A250247(A020639(n+1))`
-/

namespace A249817.P15175201543691872651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A250247 (n + 1) - A250247 (A020639 (n + 1)).toNat)

end

end A249817.P15175201543691872651

/-! ## A249817.P15796609479373921211

`A266646(n+1)*A280497(n+1)/A283464(n+1)`
-/

namespace A249817.P15796609479373921211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) * A280497 (n + 1) : ℚ) / (A283464 (n + 1) : ℚ)

end

end A249817.P15796609479373921211

/-! ## A249817.P11175114962940768879

`A250479(A003961(n+1))`
-/

namespace A249817.P11175114962940768879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A003961 (n + 1)).toNat

end

end A249817.P11175114962940768879

/-! ## A249817.P18209308625592615138

`A250479(A045965(n+1))`
-/

namespace A249817.P18209308625592615138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A045965 (n + 1)).toNat

end

end A249817.P18209308625592615138

/-! ## A249817.P937253026694868082

`A250479(A253885(n)+1)`
-/

namespace A249817.P937253026694868082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A253885 n + 1).toNat

end

end A249817.P937253026694868082

/-! ## A249817.P17852295834062631579

`A250470(2*A003961(n+1))`
-/

namespace A249817.P17852295834062631579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A003961 (n + 1)).toNat

end

end A249817.P17852295834062631579

/-! ## A249817.P867165859924935584

`A250470(2*A045965(n+1))`
-/

namespace A249817.P867165859924935584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A045965 (n + 1)).toNat

end

end A249817.P867165859924935584

/-! ## A249817.P12065214084506154981

`A250470(2*(A253885(n)+1))`
-/

namespace A249817.P12065214084506154981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * (A253885 n + 1)).toNat

end

end A249817.P12065214084506154981

/-! ## A249817.P12484872132776838163

`A250470(2*or(1, A253885(n)))`
-/

namespace A249817.P12484872132776838163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * Int.lor 1 (A253885 n)).toNat

end

end A249817.P12484872132776838163

/-! ## A249817.P2757404487317339554

`A250470(2*xor(1, A253885(n)))`
-/

namespace A249817.P2757404487317339554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * Int.xor 1 (A253885 n)).toNat

end

end A249817.P2757404487317339554

/-! ## A249817.P1340114377415355846

`A250479(A266646(2*(n+1))-1)`
-/

namespace A249817.P1340114377415355846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A266646 (2 * (n + 1)) - 1).toNat

end

end A249817.P1340114377415355846

/-! ## A249817.P11655811703585010808

`A250470(2*A297166(2*(n+1)))`
-/

namespace A249817.P11655811703585010808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A297166 (2 * (n + 1))).toNat

end

end A249817.P11655811703585010808

/-!
# A249818: Permutation of natural numbers: a(1) = 1, a(n) = A246278(A055396(n),A078898(n)).

The programs for A249818, there is no canonical definition to state claims against.
-/

/-! ## A249818.P8382363420407875492

`A249816(n)+a(A007814(A000265(n)))` with `a(0)=1`
-/

namespace A249818.P8382363420407875492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249816 n + a (A007814 (A000265 n).toNat).toNat

end

end A249818.P8382363420407875492

/-! ## A249818.P2031229767794952169

`A020639(n+1)*A280498(n+1)`
-/

namespace A249818.P2031229767794952169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A280498 (n + 1)

end

end A249818.P2031229767794952169

/-! ## A249818.P2895858377775812982

`A006530(A074828(n+1))*A280498(n+1)`
-/

namespace A249818.P2895858377775812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat * A280498 (n + 1)

end

end A249818.P2895858377775812982

/-! ## A249818.P13321483017249838152

`A249817(n+1)/A280497(n+1)*A280498(n+1)`
-/

namespace A249818.P13321483017249838152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ)

end

end A249818.P13321483017249838152

/-! ## A249818.P16506510862685750188

`A250245(n+1)/A280495(n+1)*A280498(n+1)`
-/

namespace A249818.P16506510862685750188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ)

end

end A249818.P16506510862685750188

/-! ## A249818.P10652598010061779055

`A250246(n+1)/A280496(n+1)*A280498(n+1)`
-/

namespace A249818.P10652598010061779055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ)

end

end A249818.P10652598010061779055

/-! ## A249818.P15676668949448948637

`A020639(n+1)+A250248(n+1)-A250248(A020639(n+1))`
-/

namespace A249818.P15676668949448948637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A250248 (n + 1) - A250248 (A020639 (n + 1)).toNat)

end

end A249818.P15676668949448948637

/-! ## A249818.P13820141113142389260

`A249816(n)+a(A007814(A003961(n)))` with `a(0)=1`
-/

namespace A249818.P13820141113142389260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249816 n + a (A007814 (A003961 n).toNat).toNat

end

end A249818.P13820141113142389260

/-! ## A249818.P12583313398185500445

`A074828((n+1)²)*A280498(n+1)`
-/

namespace A249818.P12583313398185500445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 ((n + 1) ^ 2) * A280498 (n + 1)

end

end A249818.P12583313398185500445

/-! ## A249818.P8021104689702037115

`A250248(n+1)+A000038(A127518(n+1))`
-/

namespace A249818.P8021104689702037115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (n + 1) + A000038 (A127518 (n + 1)).toNat

end

end A249818.P8021104689702037115

/-!
# A249819: Composite natural numbers n for which there are exactly two distinct 0 < k < n^2 such that 2^k - 1 is divisible by n^2.

The programs for A249819, there is no canonical definition to state claims against.
-/

/-! ## A249819.P15212294603288498684

`filter[A246717(n+1), A005171(#)]`
-/

namespace A249819.P15212294603288498684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A249819.P15212294603288498684

/-! ## A249819.P15683184430595503588

`filter[A246717(n+1), A066247(#)]`
-/

namespace A249819.P15683184430595503588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A249819.P15683184430595503588

/-! ## A249819.P17473228872407715083

`filter[A246717(n+1), A202238(#)]`
-/

namespace A249819.P17473228872407715083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A249819.P17473228872407715083

/-! ## A249819.P2930378847535109122

`filter[A246717(n+1), A292438(#)]`
-/

namespace A249819.P2930378847535109122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A249819.P2930378847535109122

/-! ## A249819.P2872042774169893283

`filter[A246717(n+1), A323162(#)]`
-/

namespace A249819.P2872042774169893283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A249819.P2872042774169893283

/-!
# A249820: a(1) = 0 and for n > 1: a(n) = A249810(n) - A078898(n) = A078898(A003961(n)) - A078898(n).

The programs for A249820, there is no canonical definition to state claims against.
-/

/-! ## A249820.P5286480225488908621

`A078898(A003961(n+1))-A078898(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249820.P5286480225488908621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (n + 1)).toNat - A078898 (n + 1)

end

end A249820.P5286480225488908621

/-! ## A249820.P13914314905608756406

`A249810(n+1)-A249810(A266645(n+1))`
-/

namespace A249820.P13914314905608756406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (n + 1) - A249810 (A266645 (n + 1)).toNat

end

end A249820.P13914314905608756406

/-! ## A249820.P17748984698513749336

`A078898(A266646(n+1))-A078898(n+1)`
-/

namespace A249820.P17748984698513749336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266646 (n + 1)).toNat - A078898 (n + 1)

end

end A249820.P17748984698513749336

/-! ## A249820.P15313428257725329281

`A280492(n+1)-A280492(A003961(n+1))`
-/

namespace A249820.P15313428257725329281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280492 (n + 1) - A280492 (A003961 (n + 1)).toNat

end

end A249820.P15313428257725329281

/-! ## A249820.P11344354688765541296

`A280492(n+1)-A280492(A045965(n+1))`
-/

namespace A249820.P11344354688765541296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280492 (n + 1) - A280492 (A045965 (n + 1)).toNat

end

end A249820.P11344354688765541296

/-! ## A249820.P12384157458002507166

`A078898(A297166(2*(n+1)))-A078898(n+1)`
-/

namespace A249820.P12384157458002507166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A297166 (2 * (n + 1))).toNat - A078898 (n + 1)

end

end A249820.P12384157458002507166

/-! ## A249820.P14771323365847990174

`A249810(n+1)-A246277(A249818(n+1))`
-/

namespace A249820.P14771323365847990174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (n + 1) - A246277 (A249818 (n + 1)).toNat

end

end A249820.P14771323365847990174

/-! ## A249820.P5566728908321226300

`A249810(n+1)-A246277(A250248(n+1))`
-/

namespace A249820.P5566728908321226300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (n + 1) - A246277 (A250248 (n + 1)).toNat

end

end A249820.P5566728908321226300

/-!
# A249821: Square array of permutations: A(row,col) = A246277(A083221(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ... .

The programs for A249821, there is no canonical definition to state claims against.
-/

/-! ## A249821.P13739801265443556894

`A246277(A083221(n+2))`
-/

namespace A249821.P13739801265443556894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A083221 (n + 2)).toNat

end

end A249821.P13739801265443556894

/-! ## A249821.P556672482325269198

`A246277(A249741(n+1)+1)`
-/

namespace A249821.P556672482325269198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249741 (n + 1) + 1).toNat

end

end A249821.P556672482325269198

/-! ## A249821.P6343691521019919598

`A305897(A249741(n+1)+1)-1`
-/

namespace A249821.P6343691521019919598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A249741 (n + 1) + 1).toNat - 1

end

end A249821.P6343691521019919598

/-! ## A249821.P1060542559262122206

`A348717(A249741(n+1)+1)/2`
-/

namespace A249821.P1060542559262122206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348717 (A249741 (n + 1) + 1).toNat : ℚ) / 2

end

end A249821.P1060542559262122206

/-! ## A249821.P8340145300210428601

`A246277(A255408(A255127(n+2)))`
-/

namespace A249821.P8340145300210428601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A255408 (A255127 (n + 2)).toNat).toNat

end

end A249821.P8340145300210428601

/-! ## A249821.P7469611703513822858

`A078898(A249817(A249741(n+1)+1))`
-/

namespace A249821.P7469611703513822858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249817 (A249741 (n + 1) + 1).toNat).toNat

end

end A249821.P7469611703513822858

/-! ## A249821.P4228412729114834227

`A078898(A249815(A249741(n+1))+1)`
-/

namespace A249821.P4228412729114834227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249815 (A249741 (n + 1)).toNat + 1).toNat

end

end A249821.P4228412729114834227

/-! ## A249821.P6453294165642262803

`A078898(A250245(A249741(n+1)+1))`
-/

namespace A249821.P6453294165642262803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A250245 (A249741 (n + 1) + 1).toNat).toNat

end

end A249821.P6453294165642262803

/-! ## A249821.P12860722661656369805

`A252759(A083221(n+2))-A002262(n)`
-/

namespace A249821.P12860722661656369805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A083221 (n + 2)).toNat - A002262 n

end

end A249821.P12860722661656369805

/-! ## A249821.P12652026778542402068

`A305897(A083221(n+2))-A007318(C(2, n))`
-/

namespace A249821.P12652026778542402068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A007318 (Nat.choose 2 n)

end

end A249821.P12652026778542402068

/-! ## A249821.P7119133389747922981

`A305897(A083221(n+2))-(A000041(n)%2)!`
-/

namespace A249821.P7119133389747922981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A249821.P7119133389747922981

/-! ## A249821.P16381259545342803383

`A305897(A083221(n+2))-A014963(6*(n+1))`
-/

namespace A249821.P16381259545342803383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A014963 (6 * (n + 1))

end

end A249821.P16381259545342803383

/-! ## A249821.P8317134169127494979

`(A305897(A083221(n+2))-1)%A000040(n+1)`
-/

namespace A249821.P8317134169127494979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305897 (A083221 (n + 2)).toNat - 1) (A000040 (n + 1))

end

end A249821.P8317134169127494979

/-! ## A249821.P17319237604006253872

`A305897(A083221(n+2))-A000108(C(2, n+2))`
-/

namespace A249821.P17319237604006253872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A249821.P17319237604006253872

/-! ## A249821.P11474135699209504282

`A305897(A083221(n+2))-A007318(val(n+1, 5))`
-/

namespace A249821.P11474135699209504282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A007318 (SequenceMachineLib.valuation (n + 1) 5)

end

end A249821.P11474135699209504282

/-! ## A249821.P3147828663830117225

`A305897(A083221(n+2))-A000041(gcd(n, n+1))`
-/

namespace A249821.P3147828663830117225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A249821.P3147828663830117225

/-! ## A249821.P17567916949570797786

`A305897(A083221(n+2))-A008683(n+1)²!`
-/

namespace A249821.P17567916949570797786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ)

end

end A249821.P17567916949570797786

/-! ## A249821.P5629369509180667803

`A305897(A083221(n+2))-A008683(A005117(n+1))²`
-/

namespace A249821.P5629369509180667803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A008683 (A005117 (n + 1)).toNat ^ 2

end

end A249821.P5629369509180667803

/-! ## A249821.P12498559447969459892

`A305897(A083221(n+2))-A007318(A020639(2*(n+7)))`
-/

namespace A249821.P12498559447969459892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A083221 (n + 2)).toNat - A007318 (A020639 (2 * (n + 7))).toNat

end

end A249821.P12498559447969459892

/-!
# A249822: Square array of permutations: A(row,col) = A078898(A246278(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A249822, there is no canonical definition to state claims against.
-/

/-! ## A249822.P10761280288708774684

`∑{d}[A246278(n+2), A305804(#)]`
-/

namespace A249822.P10761280288708774684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P10761280288708774684

/-! ## A249822.P3491788603521868287

`∑{d}[A246275(n+1)+1, A305804(#)]`
-/

namespace A249822.P3491788603521868287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P3491788603521868287

/-! ## A249822.P6585859799431445848

`∑{d}[A249818(A083221(n+2)), A305804(#)]`
-/

namespace A249822.P6585859799431445848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083221 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P6585859799431445848

/-! ## A249822.P6353899170530467124

`∑{d}[A279336(A256997(n+2)), A305804(#)]`
-/

namespace A249822.P6353899170530467124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256997 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P6353899170530467124

/-! ## A249822.P279129761497287196

`∑{d}[A005940(A253551(n+1)+1), A305804(#)]`
-/

namespace A249822.P279129761497287196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A253551 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P279129761497287196

/-! ## A249822.P354098712967302119

`∑{d}[A246273(A038722(n+1))+1, A305804(#)]`
-/

namespace A249822.P354098712967302119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A038722 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P354098712967302119

/-! ## A249822.P12872737271815522361

`∑{d}[A246676(A135764(n+1))+1, A305804(#)]`
-/

namespace A249822.P12872737271815522361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A135764 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P12872737271815522361

/-! ## A249822.P2233546431097461410

`∑{d}[A249816(A083221(n+2)-1)+1, A305804(#)]`
-/

namespace A249822.P2233546431097461410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A083221 (n + 2) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A249822.P2233546431097461410

/-! ## A249822.P1187601995086087834

`A078898(A246278(n+2))`
-/

namespace A249822.P1187601995086087834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A246278 (n + 2)).toNat

end

end A249822.P1187601995086087834

/-! ## A249822.P202527315368201255

`A078898(A246275(n+1)+1)`
-/

namespace A249822.P202527315368201255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A246275 (n + 1) + 1).toNat

end

end A249822.P202527315368201255

/-!
# A249823: Permutation of natural numbers: a(n) = A246277(A084967(n)).

The programs for A249823, the canonical program `A249823.P164886389371184768` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249823 has offset 1).

The definition of A249823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A249745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249823.P164886389371184768

`A064216(A249745(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A249823

/-- `A064216(A249745(n+1))` -/
def P164886389371184768.Spec : Prop :=
  ∀ n, P164886389371184768.a n = A249823 (n + 1)

theorem P164886389371184768.correct : P164886389371184768.Spec := by
  intro n
  simp only [A249823, Nat.add_sub_cancel]

end A249823

/-! ## A249823.P17767486889704963751

`A249825(A250476(n+1))`
-/

namespace A249823.P17767486889704963751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249825 (A250476 (n + 1)).toNat

end

end A249823.P17767486889704963751

namespace A249823

/-- `A249825(A250476(n+1))` -/
def P17767486889704963751.Spec : Prop :=
  ∀ n, P17767486889704963751.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P12401899726312017611

`A246277(A084967(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249823.P12401899726312017611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A084967 (n + 1)).toNat

end

end A249823.P12401899726312017611

namespace A249823

/-- `A246277(A084967(n+1))` -/
def P12401899726312017611.Spec : Prop :=
  ∀ n, P12401899726312017611.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P16474514295923041161

`A064989(A254050(n+1))`
-/

namespace A249823.P16474514295923041161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A254050 (n + 1)).toNat

end

end A249823.P16474514295923041161

namespace A249823

/-- `A064989(A254050(n+1))` -/
def P16474514295923041161.Spec : Prop :=
  ∀ n, P16474514295923041161.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P15856272815994295231

`A283463(A254050(n+1)+1)`
-/

namespace A249823.P15856272815994295231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A254050 (n + 1) + 1).toNat

end

end A249823.P15856272815994295231

namespace A249823

/-- `A283463(A254050(n+1)+1)` -/
def P15856272815994295231.Spec : Prop :=
  ∀ n, P15856272815994295231.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P5735442553960600090

`A064989(A064216(A032766(n+1)))`
-/

namespace A249823.P5735442553960600090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064216 (A032766 (n + 1)).toNat).toNat

end

end A249823.P5735442553960600090

namespace A249823

/-- `A064989(A064216(A032766(n+1)))` -/
def P5735442553960600090.Spec : Prop :=
  ∀ n, P5735442553960600090.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P2126923430705685100

`A064989(A064216(A004526(n+1)+n+1))`
-/

namespace A249823.P2126923430705685100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064216 (A004526 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A249823.P2126923430705685100

namespace A249823

/-- `A064989(A064216(A004526(n+1)+n+1))` -/
def P2126923430705685100.Spec : Prop :=
  ∀ n, P2126923430705685100.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P12075651687941643555

`A064989(A064989(A007310(n+1)))`
-/

namespace A249823.P12075651687941643555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A007310 (n + 1)).toNat).toNat

end

end A249823.P12075651687941643555

namespace A249823

/-- `A064989(A064989(A007310(n+1)))` -/
def P12075651687941643555.Spec : Prop :=
  ∀ n, P12075651687941643555.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P15222596664963562718

`A064989(A064989(A038179(n+2)))`
-/

namespace A249823.P15222596664963562718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A038179 (n + 2)).toNat).toNat

end

end A249823.P15222596664963562718

namespace A249823

/-- `A064989(A064989(A038179(n+2)))` -/
def P15222596664963562718.Spec : Prop :=
  ∀ n, P15222596664963562718.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P7277351955842127908

`A285727(A038179(n+2))`
-/

namespace A249823.P7277351955842127908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A038179 (n + 2)).toNat

end

end A249823.P7277351955842127908

namespace A249823

/-- `A285727(A038179(n+2))` -/
def P7277351955842127908.Spec : Prop :=
  ∀ n, P7277351955842127908.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P9906678668050062617

`A064989(A283463(6*n+3))`
-/

namespace A249823.P9906678668050062617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A283463 (6 * n + 3)).toNat

end

end A249823.P9906678668050062617

namespace A249823

/-- `A064989(A283463(6*n+3))` -/
def P9906678668050062617.Spec : Prop :=
  ∀ n, P9906678668050062617.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P13096988555006894417

`A064989(A064989(A273669(n+1)+n))`
-/

namespace A249823.P13096988555006894417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A273669 (n + 1) + (n : ℤ)).toNat).toNat

end

end A249823.P13096988555006894417

namespace A249823

/-- `A064989(A064989(A273669(n+1)+n))` -/
def P13096988555006894417.Spec : Prop :=
  ∀ n, P13096988555006894417.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P16350073265221860892

`A064989(A064989(A306277(n+1)+n+1))`
-/

namespace A249823.P16350073265221860892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A306277 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A249823.P16350073265221860892

namespace A249823

/-- `A064989(A064989(A306277(n+1)+n+1))` -/
def P16350073265221860892.Spec : Prop :=
  ∀ n, P16350073265221860892.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P1640013592795544270

`A285728(A306771(n+1))`
-/

namespace A249823.P1640013592795544270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (A306771 (n + 1)).toNat

end

end A249823.P1640013592795544270

namespace A249823

/-- `A285728(A306771(n+1))` -/
def P1640013592795544270.Spec : Prop :=
  ∀ n, P1640013592795544270.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P12994381555988239579

`A064989(A064989(A259755(n+1)))`
-/

namespace A249823.P12994381555988239579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A259755 (n + 1)).toNat).toNat

end

end A249823.P12994381555988239579

namespace A249823

/-- `A064989(A064989(A259755(n+1)))` -/
def P12994381555988239579.Spec : Prop :=
  ∀ n, P12994381555988239579.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P681902484466487423

`A246277(A250469(6*n+3))`
-/

namespace A249823.P681902484466487423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A250469 (6 * n + 3)).toNat

end

end A249823.P681902484466487423

namespace A249823

/-- `A246277(A250469(6*n+3))` -/
def P681902484466487423.Spec : Prop :=
  ∀ n, P681902484466487423.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P17628568535539783347

`A064989(A064989(A032742(A250469(A016945(n)))))`
-/

namespace A249823.P17628568535539783347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A032742 (A250469 (A016945 n).toNat).toNat).toNat).toNat

end

end A249823.P17628568535539783347

namespace A249823

/-- `A064989(A064989(A032742(A250469(A016945(n)))))` -/
def P17628568535539783347.Spec : Prop :=
  ∀ n, P17628568535539783347.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P8302466392372760118

`A254116(A254104(A249745(A249745(A249746(n+1)))))`
-/

namespace A249823.P8302466392372760118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (A254104 (A249745 (A249745 (A249746 (n + 1)).toNat).toNat).toNat).toNat

end

end A249823.P8302466392372760118

namespace A249823

/-- `A254116(A254104(A249745(A249745(A249746(n+1)))))` -/
def P8302466392372760118.Spec : Prop :=
  ∀ n, P8302466392372760118.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P17812681254224683604

`A254116(A254104(A249745(A254104(A254103(n+1)))))`
-/

namespace A249823.P17812681254224683604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (A254104 (A249745 (A254104 (A254103 (n + 1)).toNat).toNat).toNat).toNat

end

end A249823.P17812681254224683604

namespace A249823

/-- `A254116(A254104(A249745(A254104(A254103(n+1)))))` -/
def P17812681254224683604.Spec : Prop :=
  ∀ n, P17812681254224683604.a n = A249823 (n + 1)

end A249823

/-! ## A249823.P6015552340154110909

`A254116(A254104(A249745(A254118(A254117(n+1)))))`
-/

namespace A249823.P6015552340154110909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (A254104 (A249745 (A254118 (A254117 (n + 1)).toNat).toNat).toNat).toNat

end

end A249823.P6015552340154110909

namespace A249823

/-- `A254116(A254104(A249745(A254118(A254117(n+1)))))` -/
def P6015552340154110909.Spec : Prop :=
  ∀ n, P6015552340154110909.a n = A249823 (n + 1)

end A249823

/-!
# A249824: Permutation of natural numbers: a(n) = A078898(A003961(A003961(2*n))).

The programs for A249824, the canonical program `A249824.P7083060918856720053` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249824 has offset 1).

The definition of A249824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A275716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249824.P241283732934422950

`A249746(A048673(n+1))`
-/

namespace A249824.P241283732934422950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A048673 (n + 1)).toNat

end

end A249824.P241283732934422950

namespace A249824

/-- `A249746(A048673(n+1))` -/
def P241283732934422950.Spec : Prop :=
  ∀ n, P241283732934422950.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P11955548950236043545

`A250475(A249826(n+1))`
-/

namespace A249824.P11955548950236043545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250475 (A249826 (n + 1)).toNat

end

end A249824.P11955548950236043545

namespace A249824

/-- `A250475(A249826(n+1))` -/
def P11955548950236043545.Spec : Prop :=
  ∀ n, P11955548950236043545.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P7083060918856720053

`A275716(A243071(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A249824

/-- `A275716(A243071(n+1))` -/
def P7083060918856720053.Spec : Prop :=
  ∀ n, P7083060918856720053.a n = A249824 (n + 1)

theorem P7083060918856720053.correct : P7083060918856720053.Spec := by
  intro n
  simp only [A249824, Nat.add_sub_cancel]

end A249824

/-! ## A249824.P15449794337509025449

`A078898(A003961(A249734(n+1)))`
-/

namespace A249824.P15449794337509025449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A249734 (n + 1)).toNat).toNat

end

end A249824.P15449794337509025449

namespace A249824

/-- `A078898(A003961(A249734(n+1)))` -/
def P15449794337509025449.Spec : Prop :=
  ∀ n, P15449794337509025449.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P4088908236146089935

`A078898(A003961(A003961(2*(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249824.P4088908236146089935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A003961 (2 * (n + 1))).toNat).toNat

end

end A249824.P4088908236146089935

namespace A249824

/-- `A078898(A003961(A003961(2*(n+1))))` -/
def P4088908236146089935.Spec : Prop :=
  ∀ n, P4088908236146089935.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P2134041712492452703

`ceil(A045966(n+1)/3)`
-/

namespace A249824.P2134041712492452703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045966 (n + 1) : ℚ) / 3⌉

end

end A249824.P2134041712492452703

namespace A249824

/-- `ceil(A045966(n+1)/3)` -/
def P2134041712492452703.Spec : Prop :=
  ∀ n, P2134041712492452703.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P5168142190661708497

`A353420(A003961(n+1))`
-/

namespace A249824.P5168142190661708497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A003961 (n + 1)).toNat

end

end A249824.P5168142190661708497

namespace A249824

/-- `A353420(A003961(n+1))` -/
def P5168142190661708497.Spec : Prop :=
  ∀ n, P5168142190661708497.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P8728435325612959305

`A353420(A045965(n+1))`
-/

namespace A249824.P8728435325612959305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A045965 (n + 1)).toNat

end

end A249824.P8728435325612959305

namespace A249824

/-- `A353420(A045965(n+1))` -/
def P8728435325612959305.Spec : Prop :=
  ∀ n, P8728435325612959305.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P16002706214322464128

`A249746(A249810(2*(n+1)))`
-/

namespace A249824.P16002706214322464128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A249810 (2 * (n + 1))).toNat

end

end A249824.P16002706214322464128

namespace A249824

/-- `A249746(A249810(2*(n+1)))` -/
def P16002706214322464128.Spec : Prop :=
  ∀ n, P16002706214322464128.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P2286869087630482910

`ceil((A253885(A253885(n))+1)/3)`
-/

namespace A249824.P2286869087630482910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253885 (A253885 n).toNat + 1 : ℚ) / 3⌉

end

end A249824.P2286869087630482910

namespace A249824

/-- `ceil((A253885(A253885(n))+1)/3)` -/
def P2286869087630482910.Spec : Prop :=
  ∀ n, P2286869087630482910.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P3534553261531640567

`A353336(2*2*A003961(n+1))`
-/

namespace A249824.P3534553261531640567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (2 * (2 * A003961 (n + 1))).toNat

end

end A249824.P3534553261531640567

namespace A249824

/-- `A353336(2*2*A003961(n+1))` -/
def P3534553261531640567.Spec : Prop :=
  ∀ n, P3534553261531640567.a n = A249824 (n + 1)

end A249824

/-! ## A249824.P5797386397662830091

`A249746(A254103(A254115(n+1)))`
-/

namespace A249824.P5797386397662830091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A254103 (A254115 (n + 1)).toNat).toNat

end

end A249824.P5797386397662830091

namespace A249824

/-- `A249746(A254103(A254115(n+1)))` -/
def P5797386397662830091.Spec : Prop :=
  ∀ n, P5797386397662830091.a n = A249824 (n + 1)

end A249824

/-!
# A249825: Permutation of natural numbers: a(n) = A246277(A084968(n)).

The programs for A249825, the canonical program `A249825.P17560769283108158928` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249825 has offset 1).

The definition of A249825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249823, A250475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249825.P17560769283108158928

`A249823(A250475(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A249825

/-- `A249823(A250475(n+1))` -/
def P17560769283108158928.Spec : Prop :=
  ∀ n, P17560769283108158928.a n = A249825 (n + 1)

theorem P17560769283108158928.correct : P17560769283108158928.Spec := by
  intro n
  simp only [A249825, Nat.add_sub_cancel]

end A249825

/-! ## A249825.P14909267048199308263

`A246277(A084968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249825.P14909267048199308263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A084968 (n + 1)).toNat

end

end A249825.P14909267048199308263

namespace A249825

/-- `A246277(A084968(n+1))` -/
def P14909267048199308263.Spec : Prop :=
  ∀ n, P14909267048199308263.a n = A249825 (n + 1)

end A249825

/-! ## A249825.P9210367302922827143

`A064989(A064989(A064989(A007775(n+1))))`
-/

namespace A249825.P9210367302922827143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A064989 (A007775 (n + 1)).toNat).toNat).toNat

end

end A249825.P9210367302922827143

namespace A249825

/-- `A064989(A064989(A064989(A007775(n+1))))` -/
def P9210367302922827143.Spec : Prop :=
  ∀ n, P9210367302922827143.a n = A249825 (n + 1)

end A249825

/-! ## A249825.P12581058018772385836

`A064216(A249745(A250475(A064216(A048673(n+1)))))`
-/

namespace A249825.P12581058018772385836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A249745 (A250475 (A064216 (A048673 (n + 1)).toNat).toNat).toNat).toNat

end

end A249825.P12581058018772385836

namespace A249825

/-- `A064216(A249745(A250475(A064216(A048673(n+1)))))` -/
def P12581058018772385836.Spec : Prop :=
  ∀ n, P12581058018772385836.a n = A249825 (n + 1)

end A249825

/-! ## A249825.P1385546789178027288

`A285728(5*A007775(n+1))`
-/

namespace A249825.P1385546789178027288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (5 * A007775 (n + 1)).toNat

end

end A249825.P1385546789178027288

namespace A249825

/-- `A285728(5*A007775(n+1))` -/
def P1385546789178027288.Spec : Prop :=
  ∀ n, P1385546789178027288.a n = A249825 (n + 1)

end A249825

/-! ## A249825.P10378910075311518666

`A285728(lcm(5, A007775(n+1)))`
-/

namespace A249825.P10378910075311518666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (Int.lcm 5 (A007775 (n + 1)))

end

end A249825.P10378910075311518666

namespace A249825

/-- `A285728(lcm(5, A007775(n+1)))` -/
def P10378910075311518666.Spec : Prop :=
  ∀ n, P10378910075311518666.a n = A249825 (n + 1)

end A249825

/-! ## A249825.P13278392900385569041

`A246277(7*A007775(n+1))`
-/

namespace A249825.P13278392900385569041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (7 * A007775 (n + 1)).toNat

end

end A249825.P13278392900385569041

namespace A249825

/-- `A246277(7*A007775(n+1))` -/
def P13278392900385569041.Spec : Prop :=
  ∀ n, P13278392900385569041.a n = A249825 (n + 1)

end A249825

/-!
# A249826: Permutation of natural numbers: a(n) = A078898(A003961(A003961(A003961(2*n)))).

The programs for A249826, there is no canonical definition to state claims against.
-/

/-! ## A249826.P1094415431109539570

`A250476(A249824(n+1))`
-/

namespace A249826.P1094415431109539570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A249824 (n + 1)).toNat

end

end A249826.P1094415431109539570

/-! ## A249826.P17523900666884314616

`A250476(A249746(A048673(n+1)))`
-/

namespace A249826.P17523900666884314616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A249746 (A048673 (n + 1)).toNat).toNat

end

end A249826.P17523900666884314616

/-! ## A249826.P8817996402006755376

`A078898(A003961(A003961(A003961(2*(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249826.P8817996402006755376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A003961 (A003961 (2 * (n + 1))).toNat).toNat).toNat

end

end A249826.P8817996402006755376

/-! ## A249826.P1361044525808624354

`A379006(A045968(n+1))`
-/

namespace A249826.P1361044525808624354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A045968 (n + 1)).toNat

end

end A249826.P1361044525808624354

/-! ## A249826.P2602013378948569902

`A249810(A249827(n+1))`
-/

namespace A249826.P2602013378948569902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A249827 (n + 1)).toNat

end

end A249826.P2602013378948569902

/-!
# A249827: Row 3 of A246278: replace in 2n each prime factor p(k) with prime p(k+2).

The programs for A249827, the canonical program `A249827.P16919169426164711209` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249827 has offset 1).

The definition of A249827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249827.P7928673562404690782

`A003961(A249734(n+1))`
-/

namespace A249827.P7928673562404690782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A249734 (n + 1)).toNat

end

end A249827.P7928673562404690782

namespace A249827

/-- `A003961(A249734(n+1))` -/
def P7928673562404690782.Spec : Prop :=
  ∀ n, P7928673562404690782.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P14793825697894184789

`A003961(A016945(A048673(n+1)-1))`
-/

namespace A249827.P14793825697894184789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A016945 (A048673 (n + 1) - 1).toNat).toNat

end

end A249827.P14793825697894184789

namespace A249827

/-- `A003961(A016945(A048673(n+1)-1))` -/
def P14793825697894184789.Spec : Prop :=
  ∀ n, P14793825697894184789.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P16919169426164711209

`A084967(A249824(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A249827

/-- `A084967(A249824(n+1))` -/
def P16919169426164711209.Spec : Prop :=
  ∀ n, P16919169426164711209.a n = A249827 (n + 1)

theorem P16919169426164711209.correct : P16919169426164711209.Spec := by
  intro n
  simp only [A249827, Nat.add_sub_cancel]

end A249827

/-! ## A249827.P2411376007500193553

`A045966(2*(n+1))`
-/

namespace A249827.P2411376007500193553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (2 * (n + 1))

end

end A249827.P2411376007500193553

namespace A249827

/-- `A045966(2*(n+1))` -/
def P2411376007500193553.Spec : Prop :=
  ∀ n, P2411376007500193553.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P3841135735364803905

`A357852(2*(n+1))`
-/

namespace A249827.P3841135735364803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (2 * (n + 1))

end

end A249827.P3841135735364803905

namespace A249827

/-- `A357852(2*(n+1))` -/
def P3841135735364803905.Spec : Prop :=
  ∀ n, P3841135735364803905.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P849521906467370027

`A279336(A005187(A005187(A055938(n+1))))`
-/

namespace A249827.P849521906467370027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A005187 (A005187 (A055938 (n + 1)).toNat).toNat).toNat

end

end A249827.P849521906467370027

namespace A249827

/-- `A279336(A005187(A005187(A055938(n+1))))` -/
def P849521906467370027.Spec : Prop :=
  ∀ n, P849521906467370027.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P8661774815263773753

`A246676(8*n+4)+1`
-/

namespace A249827.P8661774815263773753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (8 * n + 4) + 1

end

end A249827.P8661774815263773753

namespace A249827

/-- `A246676(8*n+4)+1` -/
def P8661774815263773753.Spec : Prop :=
  ∀ n, P8661774815263773753.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P2240197080253735571

`A249818(A084967(n+1))`
-/

namespace A249827.P2240197080253735571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A084967 (n + 1)).toNat

end

end A249827.P2240197080253735571

namespace A249827

/-- `A249818(A084967(n+1))` -/
def P2240197080253735571.Spec : Prop :=
  ∀ n, P2240197080253735571.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P8129934176540355024

`A249818(A250469(6*n+3))`
-/

namespace A249827.P8129934176540355024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A250469 (6 * n + 3)).toNat

end

end A249827.P8129934176540355024

namespace A249827

/-- `A249818(A250469(6*n+3))` -/
def P8129934176540355024.Spec : Prop :=
  ∀ n, P8129934176540355024.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P14997989649494515055

`A249735(A048673(2*(n+1)))`
-/

namespace A249827.P14997989649494515055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249735 (A048673 (2 * (n + 1))).toNat

end

end A249827.P14997989649494515055

namespace A249827

/-- `A249735(A048673(2*(n+1)))` -/
def P14997989649494515055.Spec : Prop :=
  ∀ n, P14997989649494515055.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P7900042752334085478

`5*A003961(A003961(n+1))`
-/

namespace A249827.P7900042752334085478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003961 (A003961 (n + 1)).toNat

end

end A249827.P7900042752334085478

namespace A249827

/-- `5*A003961(A003961(n+1))` -/
def P7900042752334085478.Spec : Prop :=
  ∀ n, P7900042752334085478.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P16994371249673754794

`A249735(A243501(2*(n+1))/2)`
-/

namespace A249827.P16994371249673754794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249735 (SequenceMachineLib.roundAway ((A243501 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A249827.P16994371249673754794

namespace A249827

/-- `A249735(A243501(2*(n+1))/2)` -/
def P16994371249673754794.Spec : Prop :=
  ∀ n, P16994371249673754794.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P7181041344457050153

`sqrt(A379481(sqrt(A379481(2*(n+1)))))`
-/

namespace A249827.P7181041344457050153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (SequenceMachineLib.roundAway (Real.sqrt (A379481 (2 * (n + 1)) : ℝ))).toNat : ℝ)

end

end A249827.P7181041344457050153

namespace A249827

/-- `sqrt(A379481(sqrt(A379481(2*(n+1)))))` -/
def P7181041344457050153.Spec : Prop :=
  ∀ n, P7181041344457050153.a n = (A249827 (n + 1) : ℝ)

end A249827

/-! ## A249827.P154370361018142569

`A249735(A048673(n+1)+A003961(n+1))`
-/

namespace A249827.P154370361018142569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249735 (A048673 (n + 1) + A003961 (n + 1)).toNat

end

end A249827.P154370361018142569

namespace A249827

/-- `A249735(A048673(n+1)+A003961(n+1))` -/
def P154370361018142569.Spec : Prop :=
  ∀ n, P154370361018142569.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P1142239742300043929

`A280498(A084967(2*(n+1)))`
-/

namespace A249827.P1142239742300043929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A084967 (2 * (n + 1))).toNat

end

end A249827.P1142239742300043929

namespace A249827

/-- `A280498(A084967(2*(n+1)))` -/
def P1142239742300043929.Spec : Prop :=
  ∀ n, P1142239742300043929.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P7591328868540867301

`A045965(A045965(2*(n+1)))`
-/

namespace A249827.P7591328868540867301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A045965 (2 * (n + 1))).toNat

end

end A249827.P7591328868540867301

namespace A249827

/-- `A045965(A045965(2*(n+1)))` -/
def P7591328868540867301.Spec : Prop :=
  ∀ n, P7591328868540867301.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P16338702271744202445

`A003961(A003961(n+2+n))`
-/

namespace A249827.P16338702271744202445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (n + 2 + n)).toNat

end

end A249827.P16338702271744202445

namespace A249827

/-- `A003961(A003961(n+2+n))` -/
def P16338702271744202445.Spec : Prop :=
  ∀ n, P16338702271744202445.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P3729325510088115352

`A253885(A249734(n+1)-1)+1`
-/

namespace A249827.P3729325510088115352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A249734 (n + 1) - 1).toNat + 1

end

end A249827.P3729325510088115352

namespace A249827

/-- `A253885(A249734(n+1)-1)+1` -/
def P3729325510088115352.Spec : Prop :=
  ∀ n, P3729325510088115352.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P12375908434625424008

`A253885(A253885(2*n+1))+1`
-/

namespace A249827.P12375908434625424008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A253885 (2 * n + 1)).toNat + 1

end

end A249827.P12375908434625424008

namespace A249827

/-- `A253885(A253885(2*n+1))+1` -/
def P12375908434625424008.Spec : Prop :=
  ∀ n, P12375908434625424008.a n = A249827 (n + 1)

end A249827

/-! ## A249827.P5992587300447171174

`A003961(A008585(A003961(n+1)))`
-/

namespace A249827.P5992587300447171174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A008585 (A003961 (n + 1)).toNat).toNat

end

end A249827.P5992587300447171174

namespace A249827

/-- `A003961(A008585(A003961(n+1)))` -/
def P5992587300447171174.Spec : Prop :=
  ∀ n, P5992587300447171174.a n = A249827 (n + 1)

end A249827

/-!
# A249830: Natural numbers having no valid Luhn mod 10 check digit.

The programs for A249830, there is no canonical definition to state claims against.
-/

/-! ## A249830.P1765810762537956754

`comp[A093018(n)]`
-/

namespace A249830.P1765810762537956754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249830.P1765810762537956754

/-! ## A249830.P4126471591959754078

`eq[0, A249832(n)]`
-/

namespace A249830.P4126471591959754078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249830.P4126471591959754078

/-! ## A249830.P1863156367441019467

`record[(n+1)*(1-A249832(n+1))]`
-/

namespace A249830.P1863156367441019467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A249832 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249830.P1863156367441019467

/-! ## A249830.P4869339082330464424

`lt[A028552(n*A249832(n)), n]`
-/

namespace A249830.P4869339082330464424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 ((n : ℤ) * A249832 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P4869339082330464424

/-! ## A249830.P6762129184564330195

`lt[A249832(n), n/A004277(n)²]`
-/

namespace A249830.P6762129184564330195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A249830.P6762129184564330195

/-! ## A249830.P748461087961732135

`lt[A249832(n), n/A028310(n)²]`
-/

namespace A249830.P748461087961732135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A249830.P748461087961732135

/-! ## A249830.P8733884724318349670

`lt[A249832(n)*A296119(n+1), 1]`
-/

namespace A249830.P8733884724318349670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n * A296119 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P8733884724318349670

/-! ## A249830.P11835525447925951309

`lt[A249832(n), 1/A020639(n+1)]`
-/

namespace A249830.P11835525447925951309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A020639 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A249830.P11835525447925951309

/-! ## A249830.P4651252124261258648

`record[(n+1)*A249832(n*A249832(n+1))]`
-/

namespace A249830.P4651252124261258648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A249832 ((n : ℤ) * A249832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249830.P4651252124261258648

/-! ## A249830.P15264860824912815673

`lt[A249832(n), char[A249873(n)]]`
-/

namespace A249830.P15264860824912815673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P15264860824912815673

/-! ## A249830.P15599100872261323340

`lt[A131740(n+1)*A249832(n), 1]`
-/

namespace A249830.P15599100872261323340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) * A249832 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P15599100872261323340

/-! ## A249830.P10533193759559697045

`lt[A249832(n), 1/A080427(n+1)]`
-/

namespace A249830.P10533193759559697045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A080427 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A249830.P10533193759559697045

/-! ## A249830.P4330192237439402272

`lt[A130520(n+1)*A249832(n), n]`
-/

namespace A249830.P4330192237439402272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 1) * A249832 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P4330192237439402272

/-! ## A249830.P12335409528007261723

`lt[A249832(n), n/A000040(n+1)]`
-/

namespace A249830.P12335409528007261723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A249830.P12335409528007261723

/-! ## A249830.P14804996964634858521

`lt[A000040(n+2)*A249832(n), 1]`
-/

namespace A249830.P14804996964634858521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A249832 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249830.P14804996964634858521

/-! ## A249830.P15538214378406149929

`record[A249832(A028242(n))+A028242(n)]`
-/

namespace A249830.P15538214378406149929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A028242 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249830.P15538214378406149929

/-! ## A249830.P3536076184594388147

`record[A249832(A055396(n+1))+A055396(n+1)]`
-/

namespace A249830.P3536076184594388147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A055396 (n + 1)).toNat + A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249830.P3536076184594388147

/-!
# A249832: Characteristic function of numbers having a valid Luhn mod 10 check digit.

The programs for A249832, there is no canonical definition to state claims against.
-/

/-! ## A249832.P15745410191050651388

`char[A093018(n)]`
-/

namespace A249832.P15745410191050651388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A249832.P15745410191050651388

/-! ## A249832.P14796887564840015701

`char[A249854(n+1)]`
-/

namespace A249832.P14796887564840015701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A249832.P14796887564840015701

/-! ## A249832.P9015467374641251517

`char[A249855(n+1)]`
-/

namespace A249832.P9015467374641251517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A249832.P9015467374641251517

/-! ## A249832.P5298009644916503991

`1-char[A249830(n+1)]`
-/

namespace A249832.P5298009644916503991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249830 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A249832.P5298009644916503991

/-! ## A249832.P5912897723959247147

`1-A168184(A093017(n))`
-/

namespace A249832.P5912897723959247147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168184 (A093017 n).toNat

end

end A249832.P5912897723959247147

/-! ## A249832.P7807374298629975467

`∑{digits}[A093017(n), A018843(#)]`
-/

namespace A249832.P7807374298629975467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A018843 x).sum

end

end A249832.P7807374298629975467

/-! ## A249832.P598158672503915643

`A093028(n+1)%gcd(5, A093029(n+1))`
-/

namespace A249832.P598158672503915643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093028 (n + 1)) (Int.gcd 5 (A093029 (n + 1)) : ℤ)

end

end A249832.P598158672503915643

/-! ## A249832.P18336280425977416907

`A000007(A093029(n+1)%A005408(n))`
-/

namespace A249832.P18336280425977416907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A093029 (n + 1)) (A005408 n)).toNat

end

end A249832.P18336280425977416907

/-! ## A249832.P11701513830160883187

`A010054(A095320(A330240(2*n+3))+n)`
-/

namespace A249832.P11701513830160883187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A095320 (A330240 (2 * n + 3)).toNat + (n : ℤ)).toNat

end

end A249832.P11701513830160883187

/-! ## A249832.P14054987025405604165

`A001221(A122458((n+1)*(A084395(n+1)+n)))`
-/

namespace A249832.P14054987025405604165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A122458 ((n + 1 : ℤ) * (A084395 (n + 1) + (n : ℤ))).toNat).toNat

end

end A249832.P14054987025405604165

/-!
# A249833: E.g.f. satisfies: A(x) = 1 + Integral A(x) + A(x)^2*log(A(x)) dx.

The programs for A249833, there is no canonical definition to state claims against.
-/

/-! ## A249833.P10397373042090878880

`A370382(A212342(n))`
-/

namespace A249833.P10397373042090878880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370382 (A212342 n).toNat

end

end A249833.P10397373042090878880

/-! ## A249833.P11854511882129803269

`A370382(eq[1, A274570(n)])`
-/

namespace A249833.P11854511882129803269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249833.P11854511882129803269

/-! ## A249833.P14401465315184311816

`A370382(eq[1, A162663(n+1)])`
-/

namespace A249833.P14401465315184311816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249833.P14401465315184311816

/-! ## A249833.P3232864860409086001

`A370382(lt[A162663(n+1), 2])`
-/

namespace A249833.P3232864860409086001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370382 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A249833.P3232864860409086001

/-! ## A249833.P3813472422855589192

`A370382(lt[A370398(n+1), A373565(n)])`
-/

namespace A249833.P3813472422855589192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249833.P3813472422855589192

/-!
# A249835: Coefficients related to admissible r-tuples (see Link).

The programs for A249835, there is no canonical definition to state claims against.
-/

/-! ## A249835.P11359208060032539771

`A162147(n)+A001222(A006963(n+1))`
-/

namespace A249835.P11359208060032539771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n + A001222 (A006963 (n + 1)).toNat

end

end A249835.P11359208060032539771

/-! ## A249835.P12030997121809457526

`A057353(A006918(3*n)^A008284(n+1))`
-/

namespace A249835.P12030997121809457526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (SequenceMachineLib.roundAway ((A006918 (3 * n) : ℚ) ^ (A008284 (n + 1) : ℤ))).toNat

end

end A249835.P12030997121809457526

/-! ## A249835.P10459613522315851899

`A057353(C(A006918(3*n), A008284(n+1)))`
-/

namespace A249835.P10459613522315851899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Nat.choose (A006918 (3 * n)).toNat (A008284 (n + 1)).toNat)

end

end A249835.P10459613522315851899

/-!
# A249836: Numbers n for which tan(n) > n.

The programs for A249836, there is no canonical definition to state claims against.
-/

/-! ## A249836.P16413881817983825395

`record[A088306(n+1)]`
-/

namespace A249836.P16413881817983825395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249836.P16413881817983825395

/-! ## A249836.P12157594965530060015

`abs(record[A088306(A008619(n))])`
-/

namespace A249836.P12157594965530060015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088306 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A249836.P12157594965530060015

/-! ## A249836.P501878229043891602

`abs(record[A088306(A126759(n))])`
-/

namespace A249836.P501878229043891602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088306 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A249836.P501878229043891602

/-! ## A249836.P12012911705655295758

`abs(record[A088306(A324346(n))])`
-/

namespace A249836.P12012911705655295758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088306 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A249836.P12012911705655295758

/-! ## A249836.P7417490762190299683

`abs(record[A088306(A336320(n))])`
-/

namespace A249836.P7417490762190299683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088306 (A336320 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A249836.P7417490762190299683

/-!
# A249838: Number of length n+4 0..2 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249838, there is no canonical definition to state claims against.
-/

/-! ## A249838.P10324840923870037665

`A249844(∑[n+2])`
-/

namespace A249838.P10324840923870037665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249838.P10324840923870037665

/-! ## A249838.P13632272479246088189

`record[A249844(A000096(A133310(n)))]`
-/

namespace A249838.P13632272479246088189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P13632272479246088189

/-! ## A249838.P5060069496800365470

`record[A249844(A000096(A054531(n+1)))]`
-/

namespace A249838.P5060069496800365470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A054531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P5060069496800365470

/-! ## A249838.P17760935400189699454

`record[A249844(A000096(A164306(n+1)))]`
-/

namespace A249838.P17760935400189699454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A164306 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P17760935400189699454

/-! ## A249838.P7647359669640261349

`record[A249844(A000096(A273824(n+1)))]`
-/

namespace A249838.P7647359669640261349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A273824 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P7647359669640261349

/-! ## A249838.P4311815279783080419

`record[A249844(A000096(A322826(n+1)))]`
-/

namespace A249838.P4311815279783080419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A322826 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P4311815279783080419

/-! ## A249838.P13677988247545767443

`record[A249844(A000096(A336472(n+1)))]`
-/

namespace A249838.P13677988247545767443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (A336472 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249838.P13677988247545767443

/-!
# A249839: Number of length n+4 0..3 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249839, there is no canonical definition to state claims against.
-/

/-! ## A249839.P12103368722322952933

`A249844(∑[n+3]+1)`
-/

namespace A249839.P12103368722322952933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249839.P12103368722322952933

/-! ## A249839.P1358101423394355563

`A249844(A034856(n+2))%A249840(n+1)`
-/

namespace A249839.P1358101423394355563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249844 (A034856 (n + 2)).toNat) (A249840 (n + 1))

end

end A249839.P1358101423394355563

/-! ## A249839.P13039312312397841008

`lcm(A000007(n)+1, A249844(A034856(n+2)))`
-/

namespace A249839.P13039312312397841008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A249844 (A034856 (n + 2)).toNat)

end

end A249839.P13039312312397841008

/-! ## A249839.P2873327044875337506

`A019425(A015921(n+1))*A249844(A034856(n+2))`
-/

namespace A249839.P2873327044875337506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A015921 (n + 1)).toNat * A249844 (A034856 (n + 2)).toNat

end

end A249839.P2873327044875337506

/-! ## A249839.P11401647211446964183

`A040200(A005117(n+1))*A249844(A034856(n+2))`
-/

namespace A249839.P11401647211446964183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 (A005117 (n + 1)).toNat * A249844 (A034856 (n + 2)).toNat

end

end A249839.P11401647211446964183

/-! ## A249839.P17419868220486336930

`A001065(A098419(n+1))*A249844(A034856(n+2))`
-/

namespace A249839.P17419868220486336930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A098419 (n + 1)).toNat * A249844 (A034856 (n + 2)).toNat

end

end A249839.P17419868220486336930

/-!
# A249840: Number of length n+4 0..4 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249840, there is no canonical definition to state claims against.
-/

/-! ## A249840.P10591359674142093969

`A249844(∑[n+4]+3)`
-/

namespace A249840.P10591359674142093969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249840.P10591359674142093969

/-! ## A249840.P14474548614453268232

`abs(A249844(A027379(n+2))-1)+1`
-/

namespace A249840.P14474548614453268232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249844 (A027379 (n + 2)).toNat - 1| + 1

end

end A249840.P14474548614453268232

/-! ## A249840.P18112365634636039489

`abs(A249844(A055998(n+2))-1)+1`
-/

namespace A249840.P18112365634636039489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249844 (A055998 (n + 2)).toNat - 1| + 1

end

end A249840.P18112365634636039489

/-! ## A249840.P4141392276152093258

`abs(A249844(A056000(n)+7)-1)+1`
-/

namespace A249840.P4141392276152093258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249844 (A056000 n + 7).toNat - 1| + 1

end

end A249840.P4141392276152093258

/-! ## A249840.P6015363821477055955

`A249844(A027379(n+2))+A008683(4*(n+1))`
-/

namespace A249840.P6015363821477055955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A027379 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A249840.P6015363821477055955

/-! ## A249840.P9597441866910710064

`A249844(A056000(n)+7)+A008683(4*(n+1))`
-/

namespace A249840.P9597441866910710064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A056000 n + 7).toNat + A008683 (4 * (n + 1))

end

end A249840.P9597441866910710064

/-! ## A249840.P5778229183534359817

`A249844(A056000(n)+7)²/A249844(A155212(n)+5)`
-/

namespace A249840.P5778229183534359817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249844 (A056000 n + 7).toNat ^ 2 : ℚ) / (A249844 (A155212 n + 5).toNat : ℚ)

end

end A249840.P5778229183534359817

/-!
# A249841: Number of length n+4 0..5 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249841, there is no canonical definition to state claims against.
-/

/-! ## A249841.P11432091669029775595

`A249844(A046691(n+3))`
-/

namespace A249841.P11432091669029775595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A046691 (n + 3)).toNat

end

end A249841.P11432091669029775595

/-! ## A249841.P3443878364290624218

`A249844(A056115(n)+11)`
-/

namespace A249841.P3443878364290624218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A056115 n + 11).toNat

end

end A249841.P3443878364290624218

/-! ## A249841.P15672090502638358617

`A249844(eq[4, A193592(n)])`
-/

namespace A249841.P15672090502638358617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249841.P15672090502638358617

/-! ## A249841.P8573161625058273580

`A249844(Δ[A023545(n+1)])`
-/

namespace A249841.P8573161625058273580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n).toNat

end

end A249841.P8573161625058273580

/-! ## A249841.P8791687899976369401

`A249844(A155212(n+1)+4)`
-/

namespace A249841.P8791687899976369401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A155212 (n + 1) + 4).toNat

end

end A249841.P8791687899976369401

/-! ## A249841.P13374699448215958871

`A249844(A000124(n+5)-5)`
-/

namespace A249841.P13374699448215958871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 5) - 5).toNat

end

end A249841.P13374699448215958871

/-! ## A249841.P8806421338671168913

`A249844(A132337(n+4)+n+2)`
-/

namespace A249841.P8806421338671168913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A132337 (n + 4) + (n + 2 : ℤ)).toNat

end

end A249841.P8806421338671168913

/-! ## A249841.P15981500289188474342

`A249844(A166136(n+1)+A016789(n))`
-/

namespace A249841.P15981500289188474342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A166136 (n + 1) + A016789 n).toNat

end

end A249841.P15981500289188474342

/-!
# A249842: Number of length n+4 0..6 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249842, there is no canonical definition to state claims against.
-/

/-! ## A249842.P9957097775639954070

`A249844(A052905(n+3))`
-/

namespace A249842.P9957097775639954070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A052905 (n + 3)).toNat

end

end A249842.P9957097775639954070

/-! ## A249842.P16869825073374686192

`A249844(eq[3, A219347(n)])`
-/

namespace A249842.P16869825073374686192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249842.P16869825073374686192

/-! ## A249842.P18139634208296849794

`A249844(A056115(n+1)+10)`
-/

namespace A249842.P18139634208296849794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A056115 (n + 1) + 10).toNat

end

end A249842.P18139634208296849794

/-! ## A249842.P15606138095761961561

`A249844(A000217(n+6)-5)`
-/

namespace A249842.P15606138095761961561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000217 (n + 6) - 5).toNat

end

end A249842.P15606138095761961561

/-! ## A249842.P5568338010337995993

`A249844(A000124(n+6)-6)`
-/

namespace A249842.P5568338010337995993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 6) - 6).toNat

end

end A249842.P5568338010337995993

/-! ## A249842.P9653923755558413826

`A249844(Δ[A023545(n+2)]-1)`
-/

namespace A249842.P9653923755558413826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n - 1).toNat

end

end A249842.P9653923755558413826

/-! ## A249842.P1992512927238462907

`A249844(Δ[A026054(n+3)]+1)`
-/

namespace A249842.P1992512927238462907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n + 1).toNat

end

end A249842.P1992512927238462907

/-! ## A249842.P7532144403054208552

`A249844(A167499(n+3)+2*n+1)`
-/

namespace A249842.P7532144403054208552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A249842.P7532144403054208552

/-! ## A249842.P2729297819035121370

`A249844(Δ[A180415(n+9)]-A004277(n+11))`
-/

namespace A249842.P2729297819035121370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n - A004277 (n + 11)).toNat

end

end A249842.P2729297819035121370

/-!
# A249843: Number of length n+4 0..7 arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249843, there is no canonical definition to state claims against.
-/

/-! ## A249843.P15845477973807658176

`A249844(A055999(n+4))`
-/

namespace A249843.P15845477973807658176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A055999 (n + 4)).toNat

end

end A249843.P15845477973807658176

/-! ## A249843.P10900165866319940286

`A249844(eq[4, A219347(n)])`
-/

namespace A249843.P10900165866319940286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249843.P10900165866319940286

/-! ## A249843.P12520197651288866893

`A249844(eq[6, A193592(n)])`
-/

namespace A249843.P12520197651288866893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249843.P12520197651288866893

/-! ## A249843.P14531589236997224731

`A249844(Δ[A026054(n+4)])`
-/

namespace A249843.P14531589236997224731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n).toNat

end

end A249843.P14531589236997224731

/-! ## A249843.P18088047907116089320

`A249844(A000124(n+7)-7)`
-/

namespace A249843.P18088047907116089320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 7) - 7).toNat

end

end A249843.P18088047907116089320

/-!
# A249845: Number of length 1+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249845, the canonical program `A249845.P1237671694739071112` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249845 has offset 1).

The definition of A249845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249845.P1237671694739071112

`Δ[C((n+1)²+1, 3)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249845

/-- `Δ[C((n+1)²+1, 3)]` -/
def P1237671694739071112.Spec : Prop :=
  ∀ n, P1237671694739071112.a n = A249845 (n + 1)

theorem P1237671694739071112.correct : P1237671694739071112.Spec := by
  intro n
  simp only [A249845, Nat.add_sub_cancel]

end A249845

/-! ## A249845.P15833499444268636130

`∑[20*C((n+1)²+1, 2)]/2`
-/

namespace A249845.P15833499444268636130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * Nat.choose ((n + 1) ^ 2 + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A249845.P15833499444268636130

namespace A249845

/-- `∑[20*C((n+1)²+1, 2)]/2` -/
def P15833499444268636130.Spec : Prop :=
  ∀ n, P15833499444268636130.a n = (A249845 (n + 1) : ℚ)

end A249845

/-! ## A249845.P11305169482645586083

`∑[5*((n+1)^4+(n+1)²)]`
-/

namespace A249845.P11305169482645586083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1) ^ 4 + (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249845.P11305169482645586083

namespace A249845

/-- `∑[5*((n+1)^4+(n+1)²)]` -/
def P11305169482645586083.Spec : Prop :=
  ∀ n, (P11305169482645586083.a n : ℤ) = A249845 (n + 1)

end A249845

/-! ## A249845.P6206142418946668032

`10*∑[∑[A005898(n)]]`
-/

namespace A249845.P6206142418946668032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249845.P6206142418946668032

namespace A249845

/-- `10*∑[∑[A005898(n)]]` -/
def P6206142418946668032.Spec : Prop :=
  ∀ n, P6206142418946668032.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P6247103238118783701

`10*A079547(n+2)`
-/

namespace A249845.P6247103238118783701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A079547 (n + 2)

end

end A249845.P6247103238118783701

namespace A249845

/-- `10*A079547(n+2)` -/
def P6247103238118783701.Spec : Prop :=
  ∀ n, P6247103238118783701.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P5158730266410610271

`Δ[A000292(n)*A034262(n+1)]`
-/

namespace A249845.P5158730266410610271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A034262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249845.P5158730266410610271

namespace A249845

/-- `Δ[A000292(n)*A034262(n+1)]` -/
def P5158730266410610271.Spec : Prop :=
  ∀ n, P5158730266410610271.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P12074378755890736117

`A222716(n+1)+A222716(n+2)`
-/

namespace A249845.P12074378755890736117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222716 (n + 1) + A222716 (n + 2)

end

end A249845.P12074378755890736117

namespace A249845

/-- `A222716(n+1)+A222716(n+2)` -/
def P12074378755890736117.Spec : Prop :=
  ∀ n, P12074378755890736117.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P14575926770253937529

`A000330(n+1)+A000217(n+1)*A005898(n+1)`
-/

namespace A249845.P14575926770253937529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A000217 (n + 1) * A005898 (n + 1)

end

end A249845.P14575926770253937529

namespace A249845

/-- `A000330(n+1)+A000217(n+1)*A005898(n+1)` -/
def P14575926770253937529.Spec : Prop :=
  ∀ n, P14575926770253937529.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P15177567373000117579

`A000217(n+1)+A292350(n+2)-A292350(n+1)`
-/

namespace A249845.P15177567373000117579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A292350 (n + 2) - A292350 (n + 1))

end

end A249845.P15177567373000117579

namespace A249845

/-- `A000217(n+1)+A292350(n+2)-A292350(n+1)` -/
def P15177567373000117579.Spec : Prop :=
  ∀ n, P15177567373000117579.a n = A249845 (n + 1)

end A249845

/-! ## A249845.P4335567425153101812

`10*∑[A000217((n+1)²)]`
-/

namespace A249845.P4335567425153101812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249845.P4335567425153101812

namespace A249845

/-- `10*∑[A000217((n+1)²)]` -/
def P4335567425153101812.Spec : Prop :=
  ∀ n, P4335567425153101812.a n = A249845 (n + 1)

end A249845

/-!
# A249846: Number of length 2+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249846, the canonical program `A249846.P16292846192425476922` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249846 has offset 1).

The definition of A249846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249846.P16292846192425476922

`(n+1)^6+9/5*(n+1)^5+3*(n+1)^4+3*(n+1)^3+(n+1)²+1/5*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249846

/-- `(n+1)^6+9/5*(n+1)^5+3*(n+1)^4+3*(n+1)^3+(n+1)²+1/5*(n+1)` -/
def P16292846192425476922.Spec : Prop :=
  ∀ n, P16292846192425476922.a n = (A249846 (n + 1) : ℚ)

end A249846

/-! ## A249846.P7206332426473129619

`A249844(∑[n+1]+2)`
-/

namespace A249846.P7206332426473129619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249846.P7206332426473129619

namespace A249846

/-- `A249844(∑[n+1]+2)` -/
def P7206332426473129619.Spec : Prop :=
  ∀ n, P7206332426473129619.a n = A249846 (n + 1)

end A249846

/-! ## A249846.P16892780941419163211

`lcm(2, A249844(A133263(n+1)))`
-/

namespace A249846.P16892780941419163211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249844 (A133263 (n + 1)).toNat)

end

end A249846.P16892780941419163211

namespace A249846

/-- `lcm(2, A249844(A133263(n+1)))` -/
def P16892780941419163211.Spec : Prop :=
  ∀ n, (P16892780941419163211.a n : ℤ) = A249846 (n + 1)

end A249846

/-! ## A249846.P15234273647218399597

`record[A249844(A133263(A078898(n)))]`
-/

namespace A249846.P15234273647218399597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A133263 (A078898 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249846.P15234273647218399597

namespace A249846

/-- `record[A249844(A133263(A078898(n)))]` -/
def P15234273647218399597.Spec : Prop :=
  ∀ n, P15234273647218399597.a n = A249846 (n + 1)

end A249846

/-! ## A249846.P7814372915473094610

`A249844(A133263(n+1))%A206661(n+1)`
-/

namespace A249846.P7814372915473094610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249844 (A133263 (n + 1)).toNat) (A206661 (n + 1))

end

end A249846.P7814372915473094610

namespace A249846

/-- `A249844(A133263(n+1))%A206661(n+1)` -/
def P7814372915473094610.Spec : Prop :=
  ∀ n, P7814372915473094610.a n = A249846 (n + 1)

end A249846

/-! ## A249846.P12730940589280991784

`A178334(n)^n*A249844(A133263(n+1))`
-/

namespace A249846.P12730940589280991784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ n * A249844 (A133263 (n + 1)).toNat

end

end A249846.P12730940589280991784

namespace A249846

/-- `A178334(n)^n*A249844(A133263(n+1))` -/
def P12730940589280991784.Spec : Prop :=
  ∀ n, P12730940589280991784.a n = A249846 (n + 1)

end A249846

/-!
# A249847: Number of length 3+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249847, there is no canonical definition to state claims against.
-/

/-! ## A249847.P8135732131875914281

`A249844(∑[n+2]+4)`
-/

namespace A249847.P8135732131875914281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249847.P8135732131875914281

/-! ## A249847.P4267155373325811410

`lcm((-1)^n, A249844(A167614(n+1)))`
-/

namespace A249847.P4267155373325811410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A249844 (A167614 (n + 1)).toNat)

end

end A249847.P4267155373325811410

/-! ## A249847.P5572553253224950899

`or(A000038(n), A249844(A167614(n+1)))`
-/

namespace A249847.P5572553253224950899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A249844 (A167614 (n + 1)).toNat)

end

end A249847.P5572553253224950899

/-! ## A249847.P592116336468845355

`A133707(n+1)*A249844(A167614(n+1))`
-/

namespace A249847.P592116336468845355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A249844 (A167614 (n + 1)).toNat

end

end A249847.P592116336468845355

/-! ## A249847.P18429386108165888925

`A249844(A167614(n+1))%A205755(n+1)`
-/

namespace A249847.P18429386108165888925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249844 (A167614 (n + 1)).toNat) (A205755 (n + 1))

end

end A249847.P18429386108165888925

/-! ## A249847.P7142468252982693755

`A249844(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A249847.P7142468252982693755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A249847.P7142468252982693755

/-!
# A249848: Number of length 4+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249848, there is no canonical definition to state claims against.
-/

/-! ## A249848.P7507358750694745816

`A249844(A052905(n)+9)`
-/

namespace A249848.P7507358750694745816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A052905 n + 9).toNat

end

end A249848.P7507358750694745816

/-! ## A249848.P9945101722070407701

`A249844(A055999(n)+10)`
-/

namespace A249848.P9945101722070407701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A055999 n + 10).toNat

end

end A249848.P9945101722070407701

/-! ## A249848.P2115524070745782617

`A249844(A167614(n+2)+1)`
-/

namespace A249848.P2115524070745782617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A167614 (n + 2) + 1).toNat

end

end A249848.P2115524070745782617

/-! ## A249848.P5075544996365690290

`A249844(A152950(n+4)+1)`
-/

namespace A249848.P5075544996365690290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A152950 (n + 4) + 1).toNat

end

end A249848.P5075544996365690290

/-! ## A249848.P14762775322716585767

`A249844(A166136(n+2)-2)`
-/

namespace A249848.P14762775322716585767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A166136 (n + 2) - 2).toNat

end

end A249848.P14762775322716585767

/-! ## A249848.P9396404489763417946

`A249844(A000124(n+3)+3)`
-/

namespace A249848.P9396404489763417946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 3) + 3).toNat

end

end A249848.P9396404489763417946

/-! ## A249848.P1379275975147090644

`A249844(A000096(n+2)+5)`
-/

namespace A249848.P1379275975147090644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (n + 2) + 5).toNat

end

end A249848.P1379275975147090644

/-! ## A249848.P15763120254905367623

`A249844(A000217(n+3)+4)`
-/

namespace A249848.P15763120254905367623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000217 (n + 3) + 4).toNat

end

end A249848.P15763120254905367623

/-! ## A249848.P15433493813939242310

`A249844(A166136(n+1)+1+n)`
-/

namespace A249848.P15433493813939242310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A249848.P15433493813939242310

/-! ## A249848.P7764956228218246914

`A249844(Δ[A023545(n+1)-n²])`
-/

namespace A249848.P7764956228218246914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n).toNat

end

end A249848.P7764956228218246914

/-!
# A249849: Number of length 5+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249849, there is no canonical definition to state claims against.
-/

/-! ## A249849.P14975747569447842383

`A249844(A167499(n+3))`
-/

namespace A249849.P14975747569447842383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A167499 (n + 3)).toNat

end

end A249849.P14975747569447842383

/-! ## A249849.P14045935389596416941

`A249844(A155212(n)+13)`
-/

namespace A249849.P14045935389596416941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A155212 n + 13).toNat

end

end A249849.P14045935389596416941

/-! ## A249849.P15660784137389706156

`A249844(A056000(n)+15)`
-/

namespace A249849.P15660784137389706156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A056000 n + 15).toNat

end

end A249849.P15660784137389706156

/-! ## A249849.P6586948010082984013

`A249844(∑[A020705(n)]+11)`
-/

namespace A249849.P6586948010082984013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A249849.P6586948010082984013

/-! ## A249849.P6754597566320693195

`A249844(A000096(n+3)+6)`
-/

namespace A249849.P6754597566320693195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (n + 3) + 6).toNat

end

end A249849.P6754597566320693195

/-! ## A249849.P10543674224753748510

`A249844(A000217(n+4)+5)`
-/

namespace A249849.P10543674224753748510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000217 (n + 4) + 5).toNat

end

end A249849.P10543674224753748510

/-! ## A249849.P7476394589927351280

`A249844(A038722(Δ[A023545(n+1)]))`
-/

namespace A249849.P7476394589927351280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249849.P7476394589927351280

/-!
# A249850: Number of length 6+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249850, there is no canonical definition to state claims against.
-/

/-! ## A249850.P8396561585157811902

`A249844(A056115(n)+21)`
-/

namespace A249850.P8396561585157811902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A056115 n + 21).toNat

end

end A249850.P8396561585157811902

/-! ## A249850.P15296121543416218154

`A249844(A000096(n+4)+7)`
-/

namespace A249850.P15296121543416218154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (n + 4) + 7).toNat

end

end A249850.P15296121543416218154

/-! ## A249850.P17187240288642972644

`A249844(A000217(n+5)+6)`
-/

namespace A249850.P17187240288642972644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000217 (n + 5) + 6).toNat

end

end A249850.P17187240288642972644

/-! ## A249850.P7039217497547274506

`A249844(Δ[A000292(n+4)]+6)`
-/

namespace A249850.P7039217497547274506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (f1 (n + 1) - f1 n + 6).toNat

end

end A249850.P7039217497547274506

/-! ## A249850.P3121634091861805544

`A249844(A000124(n+6)-(n+1))`
-/

namespace A249850.P3121634091861805544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A249850.P3121634091861805544

/-!
# A249851: Number of length 7+4 0..n arrays with no five consecutive terms having the maximum of any two terms equal to the minimum of the remaining three terms.

The programs for A249851, there is no canonical definition to state claims against.
-/

/-! ## A249851.P12228825384142745318

`A249844(A167499(n+5)+2)`
-/

namespace A249851.P12228825384142745318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A167499 (n + 5) + 2).toNat

end

end A249851.P12228825384142745318

/-! ## A249851.P205108917641696639

`A249844(A000096(n+5)+8)`
-/

namespace A249851.P205108917641696639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000096 (n + 5) + 8).toNat

end

end A249851.P205108917641696639

/-! ## A249851.P4865541380195777086

`A249844(A000217(n+6)+7)`
-/

namespace A249851.P4865541380195777086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000217 (n + 6) + 7).toNat

end

end A249851.P4865541380195777086

/-! ## A249851.P10880898509460078360

`A249844(A046691(n+4)+11)`
-/

namespace A249851.P10880898509460078360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A046691 (n + 4) + 11).toNat

end

end A249851.P10880898509460078360

/-! ## A249851.P11974526538109772482

`A249844(A000124(n+7)-(n+1))`
-/

namespace A249851.P11974526538109772482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249844 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A249851.P11974526538109772482

/-!
# A249852: a(n) is the total number of pentagons on the left or the right of the vertical symmetry axis of a pentagon expansion (vertex to vertex) after n iterations.

The programs for A249852, the canonical program `A249852.P1646210956448613039` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249852 has offset 0).

The definition of A249852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249852.P1646210956448613039

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=23`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249852

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P1646210956448613039.Spec : Prop :=
  ∀ n, P1646210956448613039.a n = A249852 n

theorem P1646210956448613039.correct : P1646210956448613039.Spec := by
  intro n
  simp only [A249852]

end A249852

/-! ## A249852.P10522927792814470756

`ceil((∑[5*n]-n)/2)`
-/

namespace A249852.P10522927792814470756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A249852.P10522927792814470756

namespace A249852

/-- `ceil((∑[5*n]-n)/2)` -/
def P10522927792814470756.Spec : Prop :=
  ∀ n, P10522927792814470756.a n = A249852 n

end A249852

/-! ## A249852.P3319192269221612047

`∑[∑[∑[n]%2]]+n²`
-/

namespace A249852.P3319192269221612047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A249852.P3319192269221612047

namespace A249852

/-- `∑[∑[∑[n]%2]]+n²` -/
def P3319192269221612047.Spec : Prop :=
  ∀ n, (P3319192269221612047.a n : ℤ) = A249852 n

end A249852

/-! ## A249852.P3338181297862996287

`∑[∑[and(1, ∑[n])]]+n²`
-/

namespace A249852.P3338181297862996287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A249852.P3338181297862996287

namespace A249852

/-- `∑[∑[and(1, ∑[n])]]+n²` -/
def P3338181297862996287.Spec : Prop :=
  ∀ n, (P3338181297862996287.a n : ℤ) = A249852 n

end A249852

/-! ## A249852.P11947049274613463110

`floor(C(n+2, 2)/2)+n²`
-/

namespace A249852.P11947049274613463110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 2⌋ + (n ^ 2 : ℤ)

end

end A249852.P11947049274613463110

namespace A249852

/-- `floor(C(n+2, 2)/2)+n²` -/
def P11947049274613463110.Spec : Prop :=
  ∀ n, P11947049274613463110.a n = A249852 n

end A249852

/-! ## A249852.P15752179027692492724

`∑[2*n]+ceil(C(n, 2)/2)`
-/

namespace A249852.P15752179027692492724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(Nat.choose n 2 : ℚ) / 2⌉

end

end A249852.P15752179027692492724

namespace A249852

/-- `∑[2*n]+ceil(C(n, 2)/2)` -/
def P15752179027692492724.Spec : Prop :=
  ∀ n, P15752179027692492724.a n = A249852 n

end A249852

/-! ## A249852.P1438153674160260362

`∑[∑[5-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A249852.P1438153674160260362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 2] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249852.P1438153674160260362

namespace A249852

/-- `∑[∑[5-a(n-2)]]` -/
def P1438153674160260362.Spec : Prop :=
  ∀ n, P1438153674160260362.a n = A249852 n

end A249852

/-! ## A249852.P13285307485470597493

`A387355(n)+∑[n]`
-/

namespace A249852.P13285307485470597493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387355 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A249852.P13285307485470597493

namespace A249852

/-- `A387355(n)+∑[n]` -/
def P13285307485470597493.Spec : Prop :=
  ∀ n, P13285307485470597493.a n = A249852 n

end A249852

/-! ## A249852.P11233629483331363584

`floor((A147875(n)+1)/2)`
-/

namespace A249852.P11233629483331363584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147875 n + 1 : ℚ) / 2⌋

end

end A249852.P11233629483331363584

namespace A249852

/-- `floor((A147875(n)+1)/2)` -/
def P11233629483331363584.Spec : Prop :=
  ∀ n, P11233629483331363584.a n = A249852 n

end A249852

/-! ## A249852.P18114514849963182206

`floor((A116668(n)+n)/2)`
-/

namespace A249852.P18114514849963182206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116668 n + (n : ℤ) : ℚ) / 2⌋

end

end A249852.P18114514849963182206

namespace A249852

/-- `floor((A116668(n)+n)/2)` -/
def P18114514849963182206.Spec : Prop :=
  ∀ n, P18114514849963182206.a n = A249852 n

end A249852

/-! ## A249852.P11327448634372526155

`floor((A005891(n)-n)/2)`
-/

namespace A249852.P11327448634372526155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005891 n - (n : ℤ) : ℚ) / 2⌋

end

end A249852.P11327448634372526155

namespace A249852

/-- `floor((A005891(n)-n)/2)` -/
def P11327448634372526155.Spec : Prop :=
  ∀ n, P11327448634372526155.a n = A249852 n

end A249852

/-! ## A249852.P13149088634372490693

`A054925(n)+∑[2*n]`
-/

namespace A249852.P13149088634372490693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A249852.P13149088634372490693

namespace A249852

/-- `A054925(n)+∑[2*n]` -/
def P13149088634372490693.Spec : Prop :=
  ∀ n, P13149088634372490693.a n = A249852 n

end A249852

/-! ## A249852.P13490055247257171350

`A039823(n+1)+n²-1`
-/

namespace A249852.P13490055247257171350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A249852.P13490055247257171350

namespace A249852

/-- `A039823(n+1)+n²-1` -/
def P13490055247257171350.Spec : Prop :=
  ∀ n, P13490055247257171350.a n = A249852 n

end A249852

/-! ## A249852.P7560897488238807651

`A039825(n+1)+n²-2`
-/

namespace A249852.P7560897488238807651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039825 (n + 1) + ((n ^ 2 : ℤ) - 2)

end

end A249852.P7560897488238807651

namespace A249852

/-- `A039825(n+1)+n²-2` -/
def P7560897488238807651.Spec : Prop :=
  ∀ n, P7560897488238807651.a n = A249852 n

end A249852

/-! ## A249852.P5457940037590060112

`∑[A047262(n+1)+n]-n`
-/

namespace A249852.P5457940037590060112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A249852.P5457940037590060112

namespace A249852

/-- `∑[A047262(n+1)+n]-n` -/
def P5457940037590060112.Spec : Prop :=
  ∀ n, P5457940037590060112.a n = A249852 n

end A249852

/-! ## A249852.P8686419383803436316

`floor(((n+1)²+∑[A086570(n)]+n-1)/4)`
-/

namespace A249852.P8686419383803436316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((n + 1) ^ 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - 1 : ℤ) : ℚ) / 4⌋

end

end A249852.P8686419383803436316

namespace A249852

/-- `floor(((n+1)²+∑[A086570(n)]+n-1)/4)` -/
def P8686419383803436316.Spec : Prop :=
  ∀ n, P8686419383803436316.a n = A249852 n

end A249852

/-! ## A249852.P3378286885456951190

`A082643(n)+A006578(n)`
-/

namespace A249852.P3378286885456951190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082643 n + A006578 n

end

end A249852.P3378286885456951190

namespace A249852

/-- `A082643(n)+A006578(n)` -/
def P3378286885456951190.Spec : Prop :=
  ∀ n, P3378286885456951190.a n = A249852 n

end A249852

/-! ## A249852.P10302780952685910510

`A281026(n)+A104563(n)`
-/

namespace A249852.P10302780952685910510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A104563 n

end

end A249852.P10302780952685910510

namespace A249852

/-- `A281026(n)+A104563(n)` -/
def P10302780952685910510.Spec : Prop :=
  ∀ n, P10302780952685910510.a n = A249852 n

end A249852

/-! ## A249852.P10114920319076348655

`A340648(n)+A194274(n)`
-/

namespace A249852.P10114920319076348655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + A194274 n

end

end A249852.P10114920319076348655

namespace A249852

/-- `A340648(n)+A194274(n)` -/
def P10114920319076348655.Spec : Prop :=
  ∀ n, P10114920319076348655.a n = A249852 n

end A249852

/-!
# A249856: Let z = A084937: a(n) = number of odd numbers <= z(n) that are != z(k) for k=1..n-1 and not coprime to z(n-1) and z(n-2).

The programs for A249856, there is no canonical definition to state claims against.
-/

/-! ## A249856.P1739664118732380229

`(A249777(n+1)-A249858(n+1))/2`
-/

namespace A249856.P1739664118732380229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249777 (n + 1) - A249858 (n + 1) : ℚ) / 2

end

end A249856.P1739664118732380229

/-! ## A249856.P1656328236710636451

`A001281(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P1656328236710636451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P1656328236710636451

/-! ## A249856.P571805288679635338

`A004525(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P571805288679635338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P571805288679635338

/-! ## A249856.P8978551509273224636

`A004526(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P8978551509273224636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P8978551509273224636

/-! ## A249856.P11175505393961353892

`A014682(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P11175505393961353892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P11175505393961353892

/-! ## A249856.P7834906439522920650

`A100196(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P7834906439522920650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P7834906439522920650

/-! ## A249856.P14471287186573796708

`A110654(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P14471287186573796708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P14471287186573796708

/-! ## A249856.P4172777622228064532

`A115118(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P4172777622228064532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P4172777622228064532

/-! ## A249856.P11939927126122285623

`A328772(A249777(n+1)-A249858(n+1))`
-/

namespace A249856.P11939927126122285623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249856.P11939927126122285623

/-! ## A249856.P12685422310878237388

`A001221((A249777(n+1)-A249858(n+1))!)`
-/

namespace A249856.P12685422310878237388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A249777 (n + 1) - A249858 (n + 1)).toNat)

end

end A249856.P12685422310878237388

/-!
# A249857: Let z = A084937: a(n) = number of even numbers <= z(n) that are != z(k) for k=1..n-1 and not coprime to z(n-1) and z(n-2).

The programs for A249857, there is no canonical definition to state claims against.
-/

/-! ## A249857.P4478450819745405910

`A249858(n+1)+A249856(n+1)`
-/

namespace A249857.P4478450819745405910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (n + 1) + A249856 (n + 1)

end

end A249857.P4478450819745405910

/-! ## A249857.P14750021547860864428

`A249777(n+1)-A249856(n+1)`
-/

namespace A249857.P14750021547860864428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (n + 1) - A249856 (n + 1)

end

end A249857.P14750021547860864428

/-! ## A249857.P10208643466400841986

`(A249858(n+1)+A249777(n+1))/2`
-/

namespace A249857.P10208643466400841986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249858 (n + 1) + A249777 (n + 1) : ℚ) / 2

end

end A249857.P10208643466400841986

/-! ## A249857.P8316083890520197318

`A001281(A249858(n+1)+A249777(n+1))`
-/

namespace A249857.P8316083890520197318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A249858 (n + 1) + A249777 (n + 1)).toNat

end

end A249857.P8316083890520197318

/-! ## A249857.P710371086411392760

`A004525(A249858(n+1)+A249777(n+1))`
-/

namespace A249857.P710371086411392760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A249858 (n + 1) + A249777 (n + 1)).toNat

end

end A249857.P710371086411392760

/-! ## A249857.P5520647706822663873

`A004526(A249858(n+1)+A249777(n+1))`
-/

namespace A249857.P5520647706822663873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249858 (n + 1) + A249777 (n + 1)).toNat

end

end A249857.P5520647706822663873

/-! ## A249857.P6202908154981484557

`A014682(A249858(n+1)+A249777(n+1))`
-/

namespace A249857.P6202908154981484557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A249858 (n + 1) + A249777 (n + 1)).toNat

end

end A249857.P6202908154981484557

/-! ## A249857.P11930211420283665381

`A110654(A249858(n+1)+A249777(n+1))`
-/

namespace A249857.P11930211420283665381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A249858 (n + 1) + A249777 (n + 1)).toNat

end

end A249857.P11930211420283665381

/-! ## A249857.P13818516401642550866

`A000194(A249777(n+1)*A249858(n+1))`
-/

namespace A249857.P13818516401642550866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A249777 (n + 1) * A249858 (n + 1)).toNat

end

end A249857.P13818516401642550866

/-! ## A249857.P15801323760934981697

`A249858(n+1)+A100196(A249777(n+1)-A249858(n+1))`
-/

namespace A249857.P15801323760934981697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (n + 1) + A100196 (A249777 (n + 1) - A249858 (n + 1)).toNat

end

end A249857.P15801323760934981697

/-!
# A249858: a(n) = A249857(n) - A249856(n).

The programs for A249858, there is no canonical definition to state claims against.
-/

/-! ## A249858.P12288802971565346370

`A249857(n+1)-A249856(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249858.P12288802971565346370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249857 (n + 1) - A249856 (n + 1)

end

end A249858.P12288802971565346370

/-! ## A249858.P3893168601835876152

`A249777(n+1)-2*A249856(n+1)`
-/

namespace A249858.P3893168601835876152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (n + 1) - 2 * A249856 (n + 1)

end

end A249858.P3893168601835876152

/-! ## A249858.P8721404366572128497

`A005843(A249777(n+1)-A249856(n+1))-A249777(n+1)`
-/

namespace A249858.P8721404366572128497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249777 (n + 1) - A249856 (n + 1)).toNat - A249777 (n + 1)

end

end A249858.P8721404366572128497

/-! ## A249858.P3305247095101612073

`A249777(n+1)-A249856(n+1)-A249856(A028310(n+1))`
-/

namespace A249858.P3305247095101612073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (n + 1) - A249856 (n + 1) - A249856 (A028310 (n + 1)).toNat

end

end A249858.P3305247095101612073

/-! ## A249858.P16871340865077496270

`2*A249857(n+1)-A249777(n+1)`
-/

namespace A249858.P16871340865077496270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249857 (n + 1) - A249777 (n + 1)

end

end A249858.P16871340865077496270

/-! ## A249858.P17605028205205271769

`A005843(A249857(n+1))-A249777(n+1)`
-/

namespace A249858.P17605028205205271769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249857 (n + 1)).toNat - A249777 (n + 1)

end

end A249858.P17605028205205271769

/-!
# A249859: Least common multiple of n + 2 and n - 2.

The programs for A249859, the canonical program `A249859.P17577229174340160321` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249859 has offset 1).

The definition of A249859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249859.P17577229174340160321

`lcm(n+3, 1-n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249859

/-- `lcm(n+3, 1-n)` -/
def P17577229174340160321.Spec : Prop :=
  ∀ n, (P17577229174340160321.a n : ℤ) = A249859 (n + 1)

theorem P17577229174340160321.correct : P17577229174340160321.Spec := by
  intro n
  simp only [A249859, Nat.add_sub_cancel]

end A249859

/-! ## A249859.P14515757135107209600

`abs((n-1)*(n+3)/gcd(4, 1-n))`
-/

namespace A249859.P14515757135107209600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1 : ℚ) * ((n + 3 : ℚ) / (Int.gcd 4 (1 - (n : ℤ)) : ℚ))|

end

end A249859.P14515757135107209600

namespace A249859

/-- `abs((n-1)*(n+3)/gcd(4, 1-n))` -/
def P14515757135107209600.Spec : Prop :=
  ∀ n, P14515757135107209600.a n = (A249859 (n + 1) : ℚ)

end A249859

/-! ## A249859.P1606784234776512369

`sqrt(lcm((1-n)², (2*n-(n-3))²))`
-/

namespace A249859.P1606784234776512369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm ((1 - (n : ℤ)) ^ 2) (((2 * n : ℤ) - ((n : ℤ) - 3)) ^ 2) : ℝ)

end

end A249859.P1606784234776512369

namespace A249859

/-- `sqrt(lcm((1-n)², (2*n-(n-3))²))` -/
def P1606784234776512369.Spec : Prop :=
  ∀ n, P1606784234776512369.a n = (A249859 (n + 1) : ℝ)

end A249859

/-! ## A249859.P10077782720932902039

`lcm(A009056(n+1), A023443(n))%A160518(n+1)`
-/

namespace A249859.P10077782720932902039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A009056 (n + 1)) (A023443 n) : ℤ) (A160518 (n + 1))

end

end A249859.P10077782720932902039

namespace A249859

/-- `lcm(A009056(n+1), A023443(n))%A160518(n+1)` -/
def P10077782720932902039.Spec : Prop :=
  ∀ n, P10077782720932902039.a n = A249859 (n + 1)

end A249859

/-! ## A249859.P2442094123334342272

`abs((n-1)*A060819(n+3))`
-/

namespace A249859.P2442094123334342272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A060819 (n + 3)|

end

end A249859.P2442094123334342272

namespace A249859

/-- `abs((n-1)*A060819(n+3))` -/
def P2442094123334342272.Spec : Prop :=
  ∀ n, P2442094123334342272.a n = A249859 (n + 1)

end A249859

/-! ## A249859.P10740135066750390958

`abs(A023443(n))*A060819(n+3)`
-/

namespace A249859.P10740135066750390958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n| * A060819 (n + 3)

end

end A249859.P10740135066750390958

namespace A249859

/-- `abs(A023443(n))*A060819(n+3)` -/
def P10740135066750390958.Spec : Prop :=
  ∀ n, P10740135066750390958.a n = A249859 (n + 1)

end A249859

/-! ## A249859.P67559563085813581

`A277384(2*(n+1))/2`
-/

namespace A249859.P67559563085813581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277384 (2 * (n + 1)) : ℚ) / 2

end

end A249859.P67559563085813581

namespace A249859

/-- `A277384(2*(n+1))/2` -/
def P67559563085813581.Spec : Prop :=
  ∀ n, P67559563085813581.a n = (A249859 (n + 1) : ℚ)

end A249859

/-! ## A249859.P9411619041334898011

`A014682(lcm(2*(1-n), A020739(n)))`
-/

namespace A249859.P9411619041334898011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (2 * (1 - (n : ℤ))) (A020739 n))

end

end A249859.P9411619041334898011

namespace A249859

/-- `A014682(lcm(2*(1-n), A020739(n)))` -/
def P9411619041334898011.Spec : Prop :=
  ∀ n, P9411619041334898011.a n = A249859 (n + 1)

end A249859

/-! ## A249859.P12730628427680689628

`lcm(n-1, 2*n-(n-3))*A007318(∑[n])`
-/

namespace A249859.P12730628427680689628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) ((2 * n : ℤ) - ((n : ℤ) - 3)) : ℤ) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249859.P12730628427680689628

namespace A249859

/-- `lcm(n-1, 2*n-(n-3))*A007318(∑[n])` -/
def P12730628427680689628.Spec : Prop :=
  ∀ n, P12730628427680689628.a n = A249859 (n + 1)

end A249859

/-! ## A249859.P13789125744705222103

`gcd(2, n+1)*A231190(2*(n+1)²)`
-/

namespace A249859.P13789125744705222103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A231190 (2 * (n + 1) ^ 2)

end

end A249859.P13789125744705222103

namespace A249859

/-- `gcd(2, n+1)*A231190(2*(n+1)²)` -/
def P13789125744705222103.Spec : Prop :=
  ∀ n, P13789125744705222103.a n = A249859 (n + 1)

end A249859

/-!
# A249860: a(n) = Least common multiple of n + 3 and n - 3.

The programs for A249860, the canonical program `A249860.P7488952475877149256` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249860 has offset 1).

The definition of A249860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249860.P7488952475877149256

`lcm(n+4, 2-n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249860

/-- `lcm(n+4, 2-n)` -/
def P7488952475877149256.Spec : Prop :=
  ∀ n, (P7488952475877149256.a n : ℤ) = A249860 (n + 1)

theorem P7488952475877149256.correct : P7488952475877149256.Spec := by
  intro n
  simp only [A249860, Nat.add_sub_cancel]

end A249860

/-! ## A249860.P15707166771658690573

`or(lcm(n-2, A020705(n)), char[1])`
-/

namespace A249860.P15707166771658690573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Int.lcm ((n : ℤ) - 2) (A020705 n)) (if ∃ j, f1 j = n then 1 else 0)

end

end A249860.P15707166771658690573

namespace A249860

/-- `or(lcm(n-2, A020705(n)), char[1])` -/
def P15707166771658690573.Spec : Prop :=
  ∀ n, (P15707166771658690573.a n : ℤ) = A249860 (n + 1)

end A249860

/-! ## A249860.P14976016246140185814

`lcm(A020705(n), A022958(n))%A001538(n)`
-/

namespace A249860.P14976016246140185814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A020705 n) (A022958 n) : ℤ) (A001538 n)

end

end A249860.P14976016246140185814

namespace A249860

/-- `lcm(A020705(n), A022958(n))%A001538(n)` -/
def P14976016246140185814.Spec : Prop :=
  ∀ n, P14976016246140185814.a n = A249860 (n + 1)

end A249860

/-! ## A249860.P4457387430587764709

`abs(2-n)*A060789(n+4)`
-/

namespace A249860.P4457387430587764709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| * A060789 (n + 4)

end

end A249860.P4457387430587764709

namespace A249860

/-- `abs(2-n)*A060789(n+4)` -/
def P4457387430587764709.Spec : Prop :=
  ∀ n, P4457387430587764709.a n = A249860 (n + 1)

end A249860

/-! ## A249860.P13358377448488435679

`abs(A022958(n)*A060789(A020705(n)))`
-/

namespace A249860.P13358377448488435679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022958 n * A060789 (A020705 n).toNat|

end

end A249860.P13358377448488435679

namespace A249860

/-- `abs(A022958(n)*A060789(A020705(n)))` -/
def P13358377448488435679.Spec : Prop :=
  ∀ n, P13358377448488435679.a n = A249860 (n + 1)

end A249860

/-! ## A249860.P7711567028170919693

`A254667(lcm(n-2, A020705(n)))`
-/

namespace A249860.P7711567028170919693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (Int.lcm ((n : ℤ) - 2) (A020705 n))

end

end A249860.P7711567028170919693

namespace A249860

/-- `A254667(lcm(n-2, A020705(n)))` -/
def P7711567028170919693.Spec : Prop :=
  ∀ n, P7711567028170919693.a n = A249860 (n + 1)

end A249860

/-! ## A249860.P13315081866265926905

`A283971(lcm(A020705(n), A022958(n)))`
-/

namespace A249860.P13315081866265926905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (Int.lcm (A020705 n) (A022958 n))

end

end A249860.P13315081866265926905

namespace A249860

/-- `A283971(lcm(A020705(n), A022958(n)))` -/
def P13315081866265926905.Spec : Prop :=
  ∀ n, P13315081866265926905.a n = A249860 (n + 1)

end A249860

/-!
# A249861: a(n) are values of k that yield "record-breaking" integer sequence lengths for the recursion: b(i) = 3*(b(i-1) + b(i-2))/2, with b(0) = 1 and b(1) = k.

The programs for A249861, there is no canonical definition to state claims against.
-/

/-! ## A249861.P2760755266433670053

`∑[A053644(A077207(n+1))]`
-/

namespace A249861.P2760755266433670053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A077207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249861.P2760755266433670053

/-! ## A249861.P2564765202070296380

`∑[record[A006519(A003259(n+1))]]`
-/

namespace A249861.P2564765202070296380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A003259 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249861.P2564765202070296380

/-! ## A249861.P14508823707082340763

`∑[record[A060632(A048208(n+1))]]`
-/

namespace A249861.P14508823707082340763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A048208 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249861.P14508823707082340763

/-! ## A249861.P1066197395905514388

`∑[record[A006519(A190434(n+1))]]`
-/

namespace A249861.P1066197395905514388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A190434 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249861.P1066197395905514388

/-!
# A249862: A special solution of X(n)^2 - 280*Y(n)^2 = 3^(2*n), n >= 0; here the X member.

The programs for A249862, the canonical program `A249862.P5440171634213479569` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249862 has offset 0).

The definition of A249862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249862.P5440171634213479569

`34*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249862

/-- `34*a(n-1)-9*a(n-2)` -/
def P5440171634213479569.Spec : Prop :=
  ∀ n, P5440171634213479569.a n = A249862 n

theorem P5440171634213479569.correct : P5440171634213479569.Spec := by
  intro n
  simp only [A249862]

end A249862

/-! ## A249862.P12209784647143966505

`A249457(n)/5-A000244(n)`
-/

namespace A249862.P12209784647143966505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249457 n : ℚ) / 5 - (A000244 n : ℚ)

end

end A249862.P12209784647143966505

namespace A249862

/-- `A249457(n)/5-A000244(n)` -/
def P12209784647143966505.Spec : Prop :=
  ∀ n, P12209784647143966505.a n = (A249862 n : ℚ)

end A249862

/-! ## A249862.P3865994757257430403

`sqrt(A249457(2*n)/10)`
-/

namespace A249862.P3865994757257430403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A249457 (2 * n) : ℚ) / 10 : ℝ)

end

end A249862.P3865994757257430403

namespace A249862

/-- `sqrt(A249457(2*n)/10)` -/
def P3865994757257430403.Spec : Prop :=
  ∀ n, P3865994757257430403.a n = (A249862 n : ℝ)

end A249862

/-! ## A249862.P14021622998310730635

`(A249457(n)/5)^A167964(A068398(n)+1)-3^n`
-/

namespace A249862.P14021622998310730635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A249457 n : ℚ) / 5) ^ (A167964 (A068398 n + 1).toNat : ℤ) - (3 ^ n : ℚ)

end

end A249862.P14021622998310730635

namespace A249862

/-- `(A249457(n)/5)^A167964(A068398(n)+1)-3^n` -/
def P14021622998310730635.Spec : Prop :=
  ∀ n, P14021622998310730635.a n = (A249862 n : ℚ)

end A249862

/-!
# A249863: Chebyshev S polynomial (A049310) evaluated at x = 26/7 and multiplied by powers of 7 (A000420).

The programs for A249863, the canonical program `A249863.P16675470331352812464` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249863 has offset 0).

The definition of A249863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249863.P16675470331352812464

`26*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249863

/-- `26*a(n-1)-49*a(n-2)` -/
def P16675470331352812464.Spec : Prop :=
  ∀ n, P16675470331352812464.a n = A249863 n

theorem P16675470331352812464.correct : P16675470331352812464.Spec := by
  intro n
  simp only [A249863]

end A249863

/-! ## A249863.P15856165875799859630

`A249864(n)+13*a(n-1)` with `a(0)=1`
-/

namespace A249863.P15856165875799859630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249864 n + 13 * a (n - 1)

end

end A249863.P15856165875799859630

namespace A249863

/-- `A249864(n)+13*a(n-1)` -/
def P15856165875799859630.Spec : Prop :=
  ∀ n, P15856165875799859630.a n = A249863 n

end A249863

/-!
# A249864: A special solution of X(n)^2 - 120*Y(n)^2 = 7^(2*n), n >= 0. The present sequence gives the X values.

The programs for A249864, the canonical program `A249864.P2043006508386548561` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249864 has offset 0).

The definition of A249864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249864.P2043006508386548561

`26*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A249864

/-- `26*a(n-1)-49*a(n-2)` -/
def P2043006508386548561.Spec : Prop :=
  ∀ n, P2043006508386548561.a n = A249864 n

theorem P2043006508386548561.correct : P2043006508386548561.Spec := by
  intro n
  simp only [A249864]

end A249864

/-! ## A249864.P17919147685750388459

`A249458(n)/5-A000420(n)`
-/

namespace A249864.P17919147685750388459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249458 n : ℚ) / 5 - (A000420 n : ℚ)

end

end A249864.P17919147685750388459

namespace A249864

/-- `A249458(n)/5-A000420(n)` -/
def P17919147685750388459.Spec : Prop :=
  ∀ n, P17919147685750388459.a n = (A249864 n : ℚ)

end A249864

/-! ## A249864.P3829696695773377749

`(A249458(n)-A193577(n))/5`
-/

namespace A249864.P3829696695773377749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249458 n - A193577 n : ℚ) / 5

end

end A249864.P3829696695773377749

namespace A249864

/-- `(A249458(n)-A193577(n))/5` -/
def P3829696695773377749.Spec : Prop :=
  ∀ n, P3829696695773377749.a n = (A249864 n : ℚ)

end A249864

/-! ## A249864.P8287094687108689257

`A249458(n)/5+A000420(n)/A134824(n+2)`
-/

namespace A249864.P8287094687108689257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249458 n : ℚ) / 5 + (A000420 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A249864.P8287094687108689257

namespace A249864

/-- `A249458(n)/5+A000420(n)/A134824(n+2)` -/
def P8287094687108689257.Spec : Prop :=
  ∀ n, P8287094687108689257.a n = (A249864 n : ℚ)

end A249864

/-! ## A249864.P6559613854251751460

`(A249458(n)-A193577(n))*5^A089263(2*n+3)`
-/

namespace A249864.P6559613854251751460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249458 n - A193577 n : ℚ) * (5 : ℚ) ^ (A089263 (2 * n + 3) : ℤ)

end

end A249864.P6559613854251751460

namespace A249864

/-- `(A249458(n)-A193577(n))*5^A089263(2*n+3)` -/
def P6559613854251751460.Spec : Prop :=
  ∀ n, P6559613854251751460.a n = (A249864 n : ℚ)

end A249864

/-!
# A249865: Characteristic array for odd divisors of n, n >= 1 (with rows ending in a 1).

The programs for A249865, there is no canonical definition to state claims against.
-/

/-! ## A249865.P2001500961333574280

`A341603(A103609(n+1)%A321352(n+5))`
-/

namespace A249865.P2001500961333574280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341603 (Int.tmod (A103609 (n + 1)) (A321352 (n + 5))).toNat

end

end A249865.P2001500961333574280

/-! ## A249865.P17608995720786962650

`A035263(∑[A269860(n+1)²*A000002(n+1)])`
-/

namespace A249865.P17608995720786962650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269860 (n + 1) ^ 2 * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249865.P17608995720786962650

/-! ## A249865.P14346531103478871485

`and(A163100(n+1), A374748(A326463(n)))`
-/

namespace A249865.P14346531103478871485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163100 (n + 1)) (A374748 (A326463 n).toNat)

end

end A249865.P14346531103478871485

/-! ## A249865.P3407370828433140933

`A110353(A272919(n+1))%2`
-/

namespace A249865.P3407370828433140933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110353 (A272919 (n + 1)).toNat) 2

end

end A249865.P3407370828433140933

/-! ## A249865.P17257624330791989922

`A327482(n+1)^-A103499(n+1)`
-/

namespace A249865.P17257624330791989922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327482 (n + 1) : ℚ) ^ (-A103499 (n + 1) : ℤ)

end

end A249865.P17257624330791989922

/-!
# A249866: Characteristic triangle for primitive Pythagorean triples.

The programs for A249866, the canonical program `A249866.P2760361692551330954` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249866 has offset 2).

The definition of A249866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249866.P17253088439141534941

`lcm(A323378(n+1), A369736(n))`
-/

namespace A249866.P17253088439141534941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A323378 (n + 1)) (A369736 n)

end

end A249866.P17253088439141534941

namespace A249866

/-- `lcm(A323378(n+1), A369736(n))` -/
def P17253088439141534941.Spec : Prop :=
  ∀ n, (P17253088439141534941.a n : ℤ) = A249866 (n + 2)

end A249866

/-! ## A249866.P2760361692551330954

`and(A054431(n+1), A073216(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A249866

/-- `and(A054431(n+1), A073216(n))` -/
def P2760361692551330954.Spec : Prop :=
  ∀ n, P2760361692551330954.a n = A249866 (n + 2)

theorem P2760361692551330954.correct : P2760361692551330954.Spec := by
  intro n
  simp only [A249866, Nat.add_sub_cancel]

end A249866

/-! ## A249866.P17621519884728013173

`and(A054431(n+1), A082233(n))`
-/

namespace A249866.P17621519884728013173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A082233 n)

end

end A249866.P17621519884728013173

namespace A249866

/-- `and(A054431(n+1), A082233(n))` -/
def P17621519884728013173.Spec : Prop :=
  ∀ n, P17621519884728013173.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P11291363727427784914

`and(A054431(n+1), A101447(n))`
-/

namespace A249866.P11291363727427784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A101447 n)

end

end A249866.P11291363727427784914

namespace A249866

/-- `and(A054431(n+1), A101447(n))` -/
def P11291363727427784914.Spec : Prop :=
  ∀ n, P11291363727427784914.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P11981493011892079964

`and(A054431(n+1), A101492(n))`
-/

namespace A249866.P11981493011892079964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A101492 n)

end

end A249866.P11981493011892079964

namespace A249866

/-- `and(A054431(n+1), A101492(n))` -/
def P11981493011892079964.Spec : Prop :=
  ∀ n, P11981493011892079964.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P924424614342397140

`and(A054431(n+1), A101493(n))`
-/

namespace A249866.P924424614342397140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A101493 n)

end

end A249866.P924424614342397140

namespace A249866

/-- `and(A054431(n+1), A101493(n))` -/
def P924424614342397140.Spec : Prop :=
  ∀ n, P924424614342397140.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P15216303944598744262

`and(A054431(n+1), A101603(n))`
-/

namespace A249866.P15216303944598744262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A101603 n)

end

end A249866.P15216303944598744262

namespace A249866

/-- `and(A054431(n+1), A101603(n))` -/
def P15216303944598744262.Spec : Prop :=
  ∀ n, P15216303944598744262.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P9779767061026163542

`and(A054431(n+1), A103217(n))`
-/

namespace A249866.P9779767061026163542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103217 n)

end

end A249866.P9779767061026163542

namespace A249866

/-- `and(A054431(n+1), A103217(n))` -/
def P9779767061026163542.Spec : Prop :=
  ∀ n, P9779767061026163542.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P8497090841030475548

`and(A054431(n+1), A103218(n))`
-/

namespace A249866.P8497090841030475548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103218 n)

end

end A249866.P8497090841030475548

namespace A249866

/-- `and(A054431(n+1), A103218(n))` -/
def P8497090841030475548.Spec : Prop :=
  ∀ n, P8497090841030475548.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P11342246877735393059

`and(A054431(n+1), A103219(n))`
-/

namespace A249866.P11342246877735393059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103219 n)

end

end A249866.P11342246877735393059

namespace A249866

/-- `and(A054431(n+1), A103219(n))` -/
def P11342246877735393059.Spec : Prop :=
  ∀ n, P11342246877735393059.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P5838712696047779783

`and(A054431(n+1), A104571(n))`
-/

namespace A249866.P5838712696047779783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A104571 n)

end

end A249866.P5838712696047779783

namespace A249866

/-- `and(A054431(n+1), A104571(n))` -/
def P5838712696047779783.Spec : Prop :=
  ∀ n, P5838712696047779783.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P2642490102791712256

`and(A054431(n+1), A112743(n))`
-/

namespace A249866.P2642490102791712256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A112743 n)

end

end A249866.P2642490102791712256

namespace A249866

/-- `and(A054431(n+1), A112743(n))` -/
def P2642490102791712256.Spec : Prop :=
  ∀ n, P2642490102791712256.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P15119857559568691818

`and(A054431(n+1), A131087(n))`
-/

namespace A249866.P15119857559568691818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A131087 n)

end

end A249866.P15119857559568691818

namespace A249866

/-- `and(A054431(n+1), A131087(n))` -/
def P15119857559568691818.Spec : Prop :=
  ∀ n, P15119857559568691818.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P3938040900267895437

`A054431(n+1)*A128174(n+1)`
-/

namespace A249866.P3938040900267895437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) * A128174 (n + 1)

end

end A249866.P3938040900267895437

namespace A249866

/-- `A054431(n+1)*A128174(n+1)` -/
def P3938040900267895437.Spec : Prop :=
  ∀ n, P3938040900267895437.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P4043605406772699799

`and(A054431(n+1), A057105(n+1))`
-/

namespace A249866.P4043605406772699799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A057105 (n + 1))

end

end A249866.P4043605406772699799

namespace A249866

/-- `and(A054431(n+1), A057105(n+1))` -/
def P4043605406772699799.Spec : Prop :=
  ∀ n, P4043605406772699799.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P10013583926956523396

`and(A054431(n+1), A078298(n))`
-/

namespace A249866.P10013583926956523396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A078298 n)

end

end A249866.P10013583926956523396

namespace A249866

/-- `and(A054431(n+1), A078298(n))` -/
def P10013583926956523396.Spec : Prop :=
  ∀ n, P10013583926956523396.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P2750526429785931889

`A222946(n+2)%2`
-/

namespace A249866.P2750526429785931889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222946 (n + 2)) 2

end

end A249866.P2750526429785931889

namespace A249866

/-- `A222946(n+2)%2` -/
def P2750526429785931889.Spec : Prop :=
  ∀ n, P2750526429785931889.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P4663954498732241761

`A222946(n+2)/A055096(n+2)`
-/

namespace A249866.P4663954498732241761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222946 (n + 2) : ℚ) / (A055096 (n + 2) : ℚ)

end

end A249866.P4663954498732241761

namespace A249866

/-- `A222946(n+2)/A055096(n+2)` -/
def P4663954498732241761.Spec : Prop :=
  ∀ n, P4663954498732241761.a n = (A249866 (n + 2) : ℚ)

end A249866

/-! ## A249866.P606150870485289341

`and(A054431(n+1), A073218(n))`
-/

namespace A249866.P606150870485289341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A073218 n)

end

end A249866.P606150870485289341

namespace A249866

/-- `and(A054431(n+1), A073218(n))` -/
def P606150870485289341.Spec : Prop :=
  ∀ n, P606150870485289341.a n = A249866 (n + 2)

end A249866

/-! ## A249866.P17817298096736649703

`and(A054431(n+1), A101124(n))`
-/

namespace A249866.P17817298096736649703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A101124 n)

end

end A249866.P17817298096736649703

namespace A249866

/-- `and(A054431(n+1), A101124(n))` -/
def P17817298096736649703.Spec : Prop :=
  ∀ n, P17817298096736649703.a n = A249866 (n + 2)

end A249866

/-!
# A249867: Number of days between prime dates in a non-leap year; starting with Feb 2 and ending with Feb 2 in the following year.

The programs for A249867, there is no canonical definition to state claims against.
-/

/-! ## A249867.P12606419397515556192

`gcd(A076984(A093788(n+1)), A338286(n))`
-/

namespace A249867.P12606419397515556192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076984 (A093788 (n + 1)).toNat) (A338286 n)

end

end A249867.P12606419397515556192

/-!
# A249868: Number of days between prime dates in a leap year; starting with Feb 2 and ending with Feb 2 in the following year.

The programs for A249868, there is no canonical definition to state claims against.
-/

/-! ## A249868.P2600194731022068465

`A249867(A349315(n)+9)`
-/

namespace A249868.P2600194731022068465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249867 (A349315 n + 9).toNat

end

end A249868.P2600194731022068465

/-! ## A249868.P2608339885554929513

`A001223(A263131(n)^A040790(n))`
-/

namespace A249868.P2608339885554929513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((A263131 n : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A249868.P2608339885554929513

/-! ## A249868.P2440535746830969157

`A075526(A263131(n)^A040790(n))`
-/

namespace A249868.P2440535746830969157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (SequenceMachineLib.roundAway ((A263131 n : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A249868.P2440535746830969157

/-! ## A249868.P17254774383553490078

`A001223(A349315(n)^A040790(n))`
-/

namespace A249868.P17254774383553490078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((A349315 n : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A249868.P17254774383553490078

/-! ## A249868.P4863053249303797259

`A075526(A349315(n)^A040790(n))`
-/

namespace A249868.P4863053249303797259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (SequenceMachineLib.roundAway ((A349315 n : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A249868.P4863053249303797259

/-!
# A249869: Triangle giving the area of primitive Pythagorean triangles, with zero entries for non-primitive triangles.

The programs for A249869, there is no canonical definition to state claims against.
-/

/-! ## A249869.P15936324865989836945

`6*A258150(n+2)`
-/

namespace A249869.P15936324865989836945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A258150 (n + 2)

end

end A249869.P15936324865989836945

/-! ## A249869.P9332634502193358882

`A008588(A258150(n+2))`
-/

namespace A249869.P9332634502193358882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A258150 (n + 2)).toNat

end

end A249869.P9332634502193358882

/-! ## A249869.P13997384687927017860

`A134199(n)*A278712(n+2)`
-/

namespace A249869.P13997384687927017860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n * A278712 (n + 2)

end

end A249869.P13997384687927017860

/-! ## A249869.P34067810537373388

`A002260(n+1)*A278712(n+2)`
-/

namespace A249869.P34067810537373388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A278712 (n + 2)

end

end A249869.P34067810537373388

/-! ## A249869.P4116880283118029007

`(A002262(n)+1)*A278712(n+2)`
-/

namespace A249869.P4116880283118029007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A278712 (n + 2)

end

end A249869.P4116880283118029007

/-! ## A249869.P3901436244047591816

`A112544(n+1)*A278712(n+2)`
-/

namespace A249869.P3901436244047591816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A278712 (n + 2)

end

end A249869.P3901436244047591816

/-! ## A249869.P2112355248489897473

`A123275(n+1)*A278712(n+2)`
-/

namespace A249869.P2112355248489897473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A278712 (n + 2)

end

end A249869.P2112355248489897473

/-! ## A249869.P1331941519964255010

`A128179(n+1)*A278712(n+2)`
-/

namespace A249869.P1331941519964255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128179 (n + 1) * A278712 (n + 2)

end

end A249869.P1331941519964255010

/-! ## A249869.P14589087666369675839

`A128221(n+1)*A278712(n+2)`
-/

namespace A249869.P14589087666369675839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (n + 1) * A278712 (n + 2)

end

end A249869.P14589087666369675839

/-! ## A249869.P14840644070968618336

`A134226(n+1)*A278712(n+2)`
-/

namespace A249869.P14840644070968618336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) * A278712 (n + 2)

end

end A249869.P14840644070968618336

/-!
# A249871: Irrational parts of the Q(sqrt(3)) integers giving the square of the radii for lattice point circles for the Archimedean tiling (3,4,6,4).

The programs for A249871, there is no canonical definition to state claims against.
-/

/-! ## A249871.P48665560181872101

`A087624(lcm(A318795(n+1), A369992(n)))`
-/

namespace A249871.P48665560181872101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (Int.lcm (A318795 (n + 1)) (A369992 n))

end

end A249871.P48665560181872101

/-! ## A249871.P4618934832909691506

`A328615(A001511(n+1)*A332281(3*n+1))`
-/

namespace A249871.P4618934832909691506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A001511 (n + 1) * A332281 (3 * n + 1)).toNat

end

end A249871.P4618934832909691506

/-!
# A249872: Number of iterations to reach a final state for an n X n lattice of sandpiles on a torus according to rules specified in the comment section.

The programs for A249872, there is no canonical definition to state claims against.
-/

/-! ## A249872.P14213659837092002754

`A293452(∑[n+1])`
-/

namespace A249872.P14213659837092002754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249872.P14213659837092002754

/-! ## A249872.P15843911775382103067

`record[A293452(A038722(n+1))]`
-/

namespace A249872.P15843911775382103067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249872.P15843911775382103067

/-! ## A249872.P12799086991367183103

`record[A293452(A066182(n+1))]`
-/

namespace A249872.P12799086991367183103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249872.P12799086991367183103

/-! ## A249872.P10316578073619281602

`xor(1, xor(1, A293452(A000217(n+1))))`
-/

namespace A249872.P10316578073619281602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A293452 (A000217 (n + 1)).toNat))

end

end A249872.P10316578073619281602

/-! ## A249872.P1597272644665744021

`A057427(n)*A293452(A000217(n+1))`
-/

namespace A249872.P1597272644665744021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A293452 (A000217 (n + 1)).toNat

end

end A249872.P1597272644665744021

/-! ## A249872.P4256223268117612193

`A293452(A000217(n+1))%A017464(n)`
-/

namespace A249872.P4256223268117612193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293452 (A000217 (n + 1)).toNat) (A017464 n)

end

end A249872.P4256223268117612193

/-! ## A249872.P5425278789632412401

`record[A293452(n+1)/A009001(A292564(n))]`
-/

namespace A249872.P5425278789632412401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293452 (n + 1) : ℚ) / (A009001 (A292564 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249872.P5425278789632412401

/-! ## A249872.P6665806652574910621

`A000010(C(2, n)!)*A293452(A000217(n+1))`
-/

namespace A249872.P6665806652574910621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A293452 (A000217 (n + 1)).toNat

end

end A249872.P6665806652574910621

/-! ## A249872.P8410301987130510505

`A014963(4*n+2)*A293452(A000217(n+1))`
-/

namespace A249872.P8410301987130510505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A293452 (A000217 (n + 1)).toNat

end

end A249872.P8410301987130510505

/-! ## A249872.P12371276626751529954

`A000108(C(2, n+2))*A293452(A000217(n+1))`
-/

namespace A249872.P12371276626751529954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A293452 (A000217 (n + 1)).toNat

end

end A249872.P12371276626751529954

/-!
# A249873: In decimal representation: replace each even positioned digit with the digit sum of its double.

The programs for A249873, there is no canonical definition to state claims against.
-/

/-! ## A249873.P12049114441950343509

`A169910(A169932(n))+A010879(n)`
-/

namespace A249873.P12049114441950343509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 (A169932 n).toNat + A010879 n

end

end A249873.P12049114441950343509

/-!
# A249875: Numbers that are exactly halfway between the nearest square and the nearest power of 2.

The programs for A249875, there is no canonical definition to state claims against.
-/

/-! ## A249875.P10433856642705050118

`A101880(n)+record[p?[A260876(2*(n+1))]]`
-/

namespace A249875.P10433856642705050118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101880 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249875.P10433856642705050118

/-!
# A249876: Pseudo-lucky numbers.

The programs for A249876, there is no canonical definition to state claims against.
-/

/-! ## A249876.P8845119491311066787

`A130823(A099204(n+1)+1)%A345922(3*(n+1))`
-/

namespace A249876.P8845119491311066787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130823 (A099204 (n + 1) + 1).toNat) (A345922 (3 * (n + 1)))

end

end A249876.P8845119491311066787

/-! ## A249876.P7587736804410441816

`A382019(A099204(n+1))`
-/

namespace A249876.P7587736804410441816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A099204 (n + 1)).toNat

end

end A249876.P7587736804410441816

/-! ## A249876.P592840460438714815

`eq[n%2, A020985(A323093(n))]`
-/

namespace A249876.P592840460438714815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A323093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249876.P592840460438714815

/-! ## A249876.P9777642574660363625

`eq[A000035(n), A020985(A323093(n))]`
-/

namespace A249876.P9777642574660363625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A323093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249876.P9777642574660363625

/-! ## A249876.P16312777976020192088

`eq[A000034(n+1), A020985(A323093(n))]`
-/

namespace A249876.P16312777976020192088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A323093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249876.P16312777976020192088

/-!
# A249877: Number of length n+6 0..2 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249877, there is no canonical definition to state claims against.
-/

/-! ## A249877.P8649610870171970493

`A249883(∑[n+2])`
-/

namespace A249877.P8649610870171970493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249877.P8649610870171970493

/-! ## A249877.P5927940562940054514

`record[A249883(A000096(A133310(n)))]`
-/

namespace A249877.P5927940562940054514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249877.P5927940562940054514

/-! ## A249877.P15425066993936264038

`record[A249883(A000096(A304745(n)))]`
-/

namespace A249877.P15425066993936264038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000096 (A304745 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249877.P15425066993936264038

/-! ## A249877.P2610461638909680033

`record[A249883(A000096(A002260(n+1)))]`
-/

namespace A249877.P2610461638909680033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249877.P2610461638909680033

/-! ## A249877.P7830687237760264787

`record[A249883(A000096(A003963(n+1)))]`
-/

namespace A249877.P7830687237760264787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249877.P7830687237760264787

/-!
# A249878: Number of length n+6 0..3 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249878, there is no canonical definition to state claims against.
-/

/-! ## A249878.P9584359847449927387

`A249883(∑[n+3]+1)`
-/

namespace A249878.P9584359847449927387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249878.P9584359847449927387

/-!
# A249879: Number of length n+6 0..4 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249879, there is no canonical definition to state claims against.
-/

/-! ## A249879.P4140431064695776542

`A249883(A141214(n+1))`
-/

namespace A249879.P4140431064695776542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A141214 (n + 1)).toNat

end

end A249879.P4140431064695776542

/-! ## A249879.P11862941314765318878

`A249883(A027379(n+2))`
-/

namespace A249879.P11862941314765318878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A027379 (n + 2)).toNat

end

end A249879.P11862941314765318878

/-! ## A249879.P8409597502166017925

`A249883(A055998(n+2))`
-/

namespace A249879.P8409597502166017925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055998 (n + 2)).toNat

end

end A249879.P8409597502166017925

/-! ## A249879.P11564854209045204466

`A249883(A155212(n)+5)`
-/

namespace A249879.P11564854209045204466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A155212 n + 5).toNat

end

end A249879.P11564854209045204466

/-! ## A249879.P6629282828092923548

`A249883(A046691(n+2)+1)`
-/

namespace A249879.P6629282828092923548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A046691 (n + 2) + 1).toNat

end

end A249879.P6629282828092923548

/-!
# A249880: Number of length n+6 0..5 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249880, there is no canonical definition to state claims against.
-/

/-! ## A249880.P4219070601053304940

`A249883(A046691(n+3))`
-/

namespace A249880.P4219070601053304940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A046691 (n + 3)).toNat

end

end A249880.P4219070601053304940

/-! ## A249880.P4239752277762688593

`A249883(eq[4, A193592(n)])`
-/

namespace A249880.P4239752277762688593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249880.P4239752277762688593

/-! ## A249880.P11723014254139898761

`A249883(Δ[A023545(n+1)])`
-/

namespace A249880.P11723014254139898761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (f1 (n + 1) - f1 n).toNat

end

end A249880.P11723014254139898761

/-! ## A249880.P12960606683481369992

`A249883(A055999(n+2)+2)`
-/

namespace A249880.P12960606683481369992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055999 (n + 2) + 2).toNat

end

end A249880.P12960606683481369992

/-! ## A249880.P16550063830582442668

`A249883(eq[6, A185782(n+1)])`
-/

namespace A249880.P16550063830582442668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249880.P16550063830582442668

/-!
# A249881: Number of length n+6 0..6 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249881, there is no canonical definition to state claims against.
-/

/-! ## A249881.P12833498973606541932

`A249883(A052905(n+3))`
-/

namespace A249881.P12833498973606541932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A052905 (n + 3)).toNat

end

end A249881.P12833498973606541932

/-! ## A249881.P16784017330753113179

`A249883(eq[3, A219347(n)])`
-/

namespace A249881.P16784017330753113179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249881.P16784017330753113179

/-! ## A249881.P14985034837266116571

`A249883(A000124(n+6)-6)`
-/

namespace A249881.P14985034837266116571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000124 (n + 6) - 6).toNat

end

end A249881.P14985034837266116571

/-! ## A249881.P4311763569297185898

`A249883(Δ[A023545(n+2)]-1)`
-/

namespace A249881.P4311763569297185898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (f1 (n + 1) - f1 n - 1).toNat

end

end A249881.P4311763569297185898

/-! ## A249881.P15185101794749206991

`A249883(Δ[A055999(n+1)+A023545(n+1)])`
-/

namespace A249881.P15185101794749206991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (n + 1) + A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (f1 (n + 1) - f1 n).toNat

end

end A249881.P15185101794749206991

/-!
# A249882: Number of length n+6 0..7 arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249882, there is no canonical definition to state claims against.
-/

/-! ## A249882.P3942214374418990883

`A249883(A055999(n+4))`
-/

namespace A249882.P3942214374418990883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055999 (n + 4)).toNat

end

end A249882.P3942214374418990883

/-! ## A249882.P11557507935888291971

`A249883(eq[4, A219347(n)])`
-/

namespace A249882.P11557507935888291971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249882.P11557507935888291971

/-! ## A249882.P6850109797223810362

`A249883(eq[6, A193592(n)])`
-/

namespace A249882.P6850109797223810362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249882.P6850109797223810362

/-! ## A249882.P14156798510580606088

`A249883(A000124(n+7)-7)`
-/

namespace A249882.P14156798510580606088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000124 (n + 7) - 7).toNat

end

end A249882.P14156798510580606088

/-! ## A249882.P875181061270399941

`A249883(Δ[A023545(n+3)]-2)`
-/

namespace A249882.P875181061270399941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (f1 (n + 1) - f1 n - 2).toNat

end

end A249882.P875181061270399941

/-!
# A249884: Number of length 1+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249884, there is no canonical definition to state claims against.
-/

/-! ## A249884.P3907666916915826888

`A249883(∑[n]+1)`
-/

namespace A249884.P3907666916915826888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249884.P3907666916915826888

/-! ## A249884.P1849507359395756890

`lcm(5, A249883(A000124(n)))`
-/

namespace A249884.P1849507359395756890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A249883 (A000124 n).toNat)

end

end A249884.P1849507359395756890

/-! ## A249884.P3839297510766696531

`record[A249883(A249742(n+1))]`
-/

namespace A249884.P3839297510766696531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249884.P3839297510766696531

/-! ## A249884.P15172181672113974951

`record[A010054(n)*A249883(n+1)]`
-/

namespace A249884.P15172181672113974951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A249883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249884.P15172181672113974951

/-! ## A249884.P12938174434326986431

`record[A249883(n+1)/A008518(n)]`
-/

namespace A249884.P12938174434326986431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249883 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249884.P12938174434326986431

/-!
# A249885: Number of length 2+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249885, there is no canonical definition to state claims against.
-/

/-! ## A249885.P15314767519268999966

`A249883(∑[n+1]+2)`
-/

namespace A249885.P15314767519268999966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249885.P15314767519268999966

/-! ## A249885.P8454151736198405587

`record[root(A249883(n+3), A038231(n))]`
-/

namespace A249885.P8454151736198405587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249883 (n + 3) : ℝ) ^ (1 / (A038231 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249885.P8454151736198405587

/-! ## A249885.P12928303923243918079

`record[root(A249883(n+3), A038303(n))]`
-/

namespace A249885.P12928303923243918079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249883 (n + 3) : ℝ) ^ (1 / (A038303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249885.P12928303923243918079

/-! ## A249885.P8973789113435103147

`record[A010054(n+1)*A249883(n+3)]`
-/

namespace A249885.P8973789113435103147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A249883 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249885.P8973789113435103147

/-! ## A249885.P8755081465405463926

`record[A249883(A249742(2*(n+1)))]`
-/

namespace A249885.P8755081465405463926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A249742 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249885.P8755081465405463926

/-!
# A249886: Number of length 3+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249886, there is no canonical definition to state claims against.
-/

/-! ## A249886.P9387571242977605584

`A249883(∑[n+2]+4)`
-/

namespace A249886.P9387571242977605584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249886.P9387571242977605584

/-! ## A249886.P6907362873760335208

`lcm(5, A249883(A167614(n+1)))`
-/

namespace A249886.P6907362873760335208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A249883 (A167614 (n + 1)).toNat)

end

end A249886.P6907362873760335208

/-! ## A249886.P6672673492278235796

`lcm(A033999(n), A249883(A055998(n)+6))`
-/

namespace A249886.P6672673492278235796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A249883 (A055998 n + 6).toNat)

end

end A249886.P6672673492278235796

/-! ## A249886.P11763612463682593100

`A249883(A167614(n+1))+A008683(8*n+4)`
-/

namespace A249886.P11763612463682593100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A249886.P11763612463682593100

/-! ## A249886.P5155057546689583052

`A007318(and(2, n-2))*A249883(A055998(n)+6)`
-/

namespace A249886.P5155057546689583052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A249883 (A055998 n + 6).toNat

end

end A249886.P5155057546689583052

/-!
# A249887: Number of length 4+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249887, there is no canonical definition to state claims against.
-/

/-! ## A249887.P16379997368914458397

`A249883(A141214(n)+7)`
-/

namespace A249887.P16379997368914458397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A141214 n + 7).toNat

end

end A249887.P16379997368914458397

/-! ## A249887.P10771660735751146258

`A249883(A052905(n)+9)`
-/

namespace A249887.P10771660735751146258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A052905 n + 9).toNat

end

end A249887.P10771660735751146258

/-! ## A249887.P15864935781499473779

`A249883(A055999(n)+10)`
-/

namespace A249887.P15864935781499473779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055999 n + 10).toNat

end

end A249887.P15864935781499473779

/-! ## A249887.P950236229815809275

`A249883(A167614(n+2)+1)`
-/

namespace A249887.P950236229815809275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A167614 (n + 2) + 1).toNat

end

end A249887.P950236229815809275

/-! ## A249887.P7018755217038175706

`A249883(A000096(n+2)+5)`
-/

namespace A249887.P7018755217038175706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000096 (n + 2) + 5).toNat

end

end A249887.P7018755217038175706

/-!
# A249888: Number of length 5+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249888, there is no canonical definition to state claims against.
-/

/-! ## A249888.P14572389124454275073

`A249883(A167499(n+3))`
-/

namespace A249888.P14572389124454275073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A167499 (n + 3)).toNat

end

end A249888.P14572389124454275073

/-! ## A249888.P7173636806295111487

`A249883(A046691(n+2)+9)`
-/

namespace A249888.P7173636806295111487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A046691 (n + 2) + 9).toNat

end

end A249888.P7173636806295111487

/-! ## A249888.P2484997128058416807

`A249883(A055999(n+1)+11)`
-/

namespace A249888.P2484997128058416807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055999 (n + 1) + 11).toNat

end

end A249888.P2484997128058416807

/-! ## A249888.P3872486752309151461

`A249883(A000124(n+5)-(n+1))`
-/

namespace A249888.P3872486752309151461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A249888.P3872486752309151461

/-! ## A249888.P14321302488398452829

`A249883(A038722(Δ[A023545(n+1)]))`
-/

namespace A249888.P14321302488398452829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249888.P14321302488398452829

/-!
# A249889: Number of length 6+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249889, there is no canonical definition to state claims against.
-/

/-! ## A249889.P8546399511795817153

`A249883(eq[6, A256910(n)])`
-/

namespace A249889.P8546399511795817153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249889.P8546399511795817153

/-! ## A249889.P3918067539767214859

`A249883(A055999(n+2)+12)`
-/

namespace A249889.P3918067539767214859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A055999 (n + 2) + 12).toNat

end

end A249889.P3918067539767214859

/-! ## A249889.P12712357303144289293

`A249883(eq[7, A131818(n+1)])`
-/

namespace A249889.P12712357303144289293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249889.P12712357303144289293

/-! ## A249889.P4074825344283676757

`A249883(Δ[A023545(n+1)]+10)`
-/

namespace A249889.P4074825344283676757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (f1 (n + 1) - f1 n + 10).toNat

end

end A249889.P4074825344283676757

/-! ## A249889.P13113259320834715056

`A249883(A000124(n+6)-(n+1))`
-/

namespace A249889.P13113259320834715056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A249889.P13113259320834715056

/-!
# A249890: Number of length 7+6 0..n arrays with no seven consecutive terms having the maximum of any three terms equal to the minimum of the remaining four terms.

The programs for A249890, there is no canonical definition to state claims against.
-/

/-! ## A249890.P15150939236921714978

`A249883(A167487(n+5))`
-/

namespace A249890.P15150939236921714978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A167487 (n + 5)).toNat

end

end A249890.P15150939236921714978

/-! ## A249890.P14908725530646552611

`A249883(A056119(n)+28)`
-/

namespace A249890.P14908725530646552611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A056119 n + 28).toNat

end

end A249890.P14908725530646552611

/-! ## A249890.P10285148783854585182

`A249883(eq[11, A066657(n)])`
-/

namespace A249890.P10285148783854585182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249890.P10285148783854585182

/-! ## A249890.P8580066457296518685

`A249883(A000124(n+6)+6)`
-/

namespace A249890.P8580066457296518685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000124 (n + 6) + 6).toNat

end

end A249890.P8580066457296518685

/-! ## A249890.P280506526425882741

`A249883(A000217(n+6)+7)`
-/

namespace A249890.P280506526425882741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249883 (A000217 (n + 6) + 7).toNat

end

end A249890.P280506526425882741

/-!
# A249891: G.f.: Sum_{n>=0} x^n / (1+x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * (-x)^k].

The programs for A249891, there is no canonical definition to state claims against.
-/

/-! ## A249891.P14806025600947016600

`A336181(n)+A139366(A246571(n))`
-/

namespace A249891.P14806025600947016600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336181 n + A139366 (A246571 n).toNat

end

end A249891.P14806025600947016600

/-!
# A249892: G.f.: Sum_{n>=0} x^n / (1 - n*x - n^2*x^2).

The programs for A249892, there is no canonical definition to state claims against.
-/

/-! ## A249892.P4356290517409734168

`A107589(n)+A025459(A134381(n))`
-/

namespace A249892.P4356290517409734168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 n + A025459 (A134381 n).toNat

end

end A249892.P4356290517409734168

/-! ## A249892.P12830767519039655553

`or(A048733(A048742(n)), A107589(n))`
-/

namespace A249892.P12830767519039655553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048733 (A048742 n).toNat) (A107589 n)

end

end A249892.P12830767519039655553

/-! ## A249892.P13955110490542494430

`or(A107589(n), A107628(A107595(n)))`
-/

namespace A249892.P13955110490542494430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107589 n) (A107628 (A107595 n).toNat)

end

end A249892.P13955110490542494430

