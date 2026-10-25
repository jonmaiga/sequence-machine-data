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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210500: Number of even solutions to phi(k) = prime(n) - 1.

The programs for A210500, there is no canonical definition to state claims against.
-/

/-! ## A210500.P9516292190885648992

`A058339(n+1)-A210501(n+1)`
-/

namespace A210500.P9516292190885648992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058339 (n + 1) - A210501 (n + 1)

end

end A210500.P9516292190885648992

/-! ## A210500.P7725602629174325414

`A014197(A006093(n+1))-A210501(n+1)`
-/

namespace A210500.P7725602629174325414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A006093 (n + 1)).toNat - A210501 (n + 1)

end

end A210500.P7725602629174325414

/-! ## A210500.P715452993882744944

`A066412(A006005(n+1))-A210501(n+1)`
-/

namespace A210500.P715452993882744944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A006005 (n + 1)).toNat - A210501 (n + 1)

end

end A210500.P715452993882744944

/-! ## A210500.P342411488762143038

`A014197(A086801(n+1)+2)-(A210502(n+1)+A057427(n))`
-/

namespace A210500.P342411488762143038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A086801 (n + 1) + 2).toNat - (A210502 (n + 1) + A057427 n)

end

end A210500.P342411488762143038

/-! ## A210500.P9154391734937981036

`A066412(A140141(n+1))-A210501(n+1)`
-/

namespace A210500.P9154391734937981036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A140141 (n + 1)).toNat - A210501 (n + 1)

end

end A210500.P9154391734937981036

/-! ## A210500.P12092798870902466647

`A066412(A066080(n+1))-A210501(n+1)`
-/

namespace A210500.P12092798870902466647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A066080 (n + 1)).toNat - A210501 (n + 1)

end

end A210500.P12092798870902466647

/-!
# A210501: Number of odd solutions to phi(k) = prime(n) - 1.

The programs for A210501, there is no canonical definition to state claims against.
-/

/-! ## A210501.P5462674068816318601

`A058339(n+1)-A210500(n+1)`
-/

namespace A210501.P5462674068816318601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058339 (n + 1) - A210500 (n + 1)

end

end A210501.P5462674068816318601

/-! ## A210501.P7847562531136569819

`A210502(abs(1-n)+2)+1`
-/

namespace A210501.P7847562531136569819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210502 (|1 - (n : ℤ)| + 2).toNat + 1

end

end A210501.P7847562531136569819

/-! ## A210501.P647264019300984075

`A246277(A020639(n+1))+A210502(n+1)`
-/

namespace A210501.P647264019300984075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A020639 (n + 1)).toNat + A210502 (n + 1)

end

end A210501.P647264019300984075

/-! ## A210501.P6637359298982736784

`A215887(A109129(n+1))+A210502(n+1)`
-/

namespace A210501.P6637359298982736784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A109129 (n + 1)).toNat + A210502 (n + 1)

end

end A210501.P6637359298982736784

/-! ## A210501.P6960807059827967832

`A263109(a(A210502(n+1)))+A210502(n+1)` with `a(0)=1`
-/

namespace A210501.P6960807059827967832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263109 (a (A210502 (n + 1)).toNat).toNat + A210502 (n + 1)

end

end A210501.P6960807059827967832

/-!
# A210502: a(1) = 1, a(n) = A210501(n) - 1.

The programs for A210502, there is no canonical definition to state claims against.
-/

/-! ## A210502.P10504425536943634619

`A210501(n+1)+A057428(n)`
-/

namespace A210502.P10504425536943634619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) + A057428 n

end

end A210502.P10504425536943634619

/-! ## A210502.P8596884775065162873

`A210501(n+1)-A057427(n)`
-/

namespace A210502.P8596884775065162873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - A057427 n

end

end A210502.P8596884775065162873

/-! ## A210502.P3318635333794976246

`A210501(n+1)-char[A014681(n+1)]`
-/

namespace A210502.P3318635333794976246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210502.P3318635333794976246

/-! ## A210502.P4436710520861364678

`A210501(n+1)-and(1, A057448(n+1))`
-/

namespace A210502.P4436710520861364678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - Int.land 1 (A057448 (n + 1))

end

end A210502.P4436710520861364678

/-! ## A210502.P13193234800885244242

`A210501(n+1)-A001221(A049108(A049108(n+1)))`
-/

namespace A210502.P13193234800885244242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - A001221 (A049108 (A049108 (n + 1)).toNat).toNat

end

end A210502.P13193234800885244242

/-! ## A210502.P13929860519138993032

`A210501(n+1)-char[A028900(n+1)]`
-/

namespace A210502.P13929860519138993032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210502.P13929860519138993032

/-! ## A210502.P14564675120825096722

`A210501(n+1)-char[A123246(n+1)]`
-/

namespace A210502.P14564675120825096722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210502.P14564675120825096722

/-! ## A210502.P11739230446001608067

`A210501(n+1)-and(1, A083575(n))`
-/

namespace A210502.P11739230446001608067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (n + 1) - Int.land 1 (A083575 n)

end

end A210502.P11739230446001608067

/-! ## A210502.P3730025561583909896

`A210501(n+1)-A284001(a(A124764(n)))` with `a(0)=1`
-/

namespace A210502.P3730025561583909896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210501 (n + 1) - A284001 (a (A124764 n).toNat).toNat

end

end A210502.P3730025561583909896

/-!
# A210503: Numbers k that form a primitive Pythagorean triple with k' and sqrt(k^2 + k'^2), where k' is the arithmetic derivative of k.

The programs for A210503, there is no canonical definition to state claims against.
-/

/-! ## A210503.P3956956964843467189

`filter[A365850(n+2), A380469(#)]`
-/

namespace A210503.P3956956964843467189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A210503.P3956956964843467189

/-! ## A210503.P610728710166644909

`filter[A365850(n+3), A008966(#)]`
-/

namespace A210503.P610728710166644909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365850 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A210503.P610728710166644909

/-! ## A210503.P17873505352467790732

`filter[A365850(n+3), A354819(#)]`
-/

namespace A210503.P17873505352467790732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365850 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A210503.P17873505352467790732

/-! ## A210503.P6943253968951798288

`filter[A365850(n+3), A359156(#)]`
-/

namespace A210503.P6943253968951798288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365850 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A210503.P6943253968951798288

/-! ## A210503.P15345541841926490107

`filter[A365850(n+3), A359465(#)]`
-/

namespace A210503.P15345541841926490107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365850 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A210503.P15345541841926490107

/-!
# A210505: Numbers k for which 2*k+7, 4*k+7, 6*k+7, 8*k+7, 10*k+7 and 12*k+7 are primes.

The programs for A210505, there is no canonical definition to state claims against.
-/

/-! ## A210505.P17973785334166058920

`A078898(∪[A329756(3*n), A206041(n+1)])`
-/

namespace A210505.P17973785334166058920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329756 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206041 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A210505.P17973785334166058920

/-!
# A210506: Numbers k such that (11^k - 2^k)/9 is prime.

The programs for A210506, there is no canonical definition to state claims against.
-/

/-! ## A210506.P13352707692495169130

`A125766((n+1)*∑[n]+1)`
-/

namespace A210506.P13352707692495169130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A210506.P13352707692495169130

/-!
# A210509: x(n+1) = x(n)*Pi/3 with x(0) = Pi, and a(n) = floor(x(n)).

The programs for A210509, there is no canonical definition to state claims against.
-/

/-! ## A210509.P2266562854480059846

`floor(π*(π/3)^n)`
-/

namespace A210509.P2266562854480059846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Real.pi / 3) ^ n⌋

end

end A210509.P2266562854480059846

/-! ## A210509.P1927853677381444875

`ceil(π*(π/3)^n-A057427(n+1))`
-/

namespace A210509.P1927853677381444875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Real.pi / 3) ^ n - (A057427 (n + 1) : ℝ)⌉

end

end A210509.P1927853677381444875

/-! ## A210509.P15177257331724887963

`ceil(π*(π/3)^n-A000108(gcd(n, n+1)))`
-/

namespace A210509.P15177257331724887963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Real.pi / 3) ^ n - (A000108 (Nat.gcd n (n + 1)) : ℝ)⌉

end

end A210509.P15177257331724887963

/-! ## A210509.P3877534454677230023

`ceil(A008683(A020484(n))+π*(π/3)^n)`
-/

namespace A210509.P3877534454677230023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A020484 n).toNat : ℝ) + Real.pi * (Real.pi / 3) ^ n⌉

end

end A210509.P3877534454677230023

/-! ## A210509.P11698667236502812622

`ceil(π*(π/3)^n-A001222(A007510(n+1)))`
-/

namespace A210509.P11698667236502812622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Real.pi / 3) ^ n - (A001222 (A007510 (n + 1)).toNat : ℝ)⌉

end

end A210509.P11698667236502812622

/-! ## A210509.P3842620963174815450

`ceil(π*(π/3)^n-A014963(A000217(n+6)))`
-/

namespace A210509.P3842620963174815450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Real.pi / 3) ^ n - (A014963 (A000217 (n + 6)).toNat : ℝ)⌉

end

end A210509.P3842620963174815450

/-! ## A210509.P2488747303120243586

`ceil(π*(π/3)^n-A000041(A052409(n²+1)))`
-/

namespace A210509.P2488747303120243586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Real.pi / 3) ^ n - (A000041 (A052409 (n ^ 2 + 1)).toNat : ℝ)⌉

end

end A210509.P2488747303120243586

/-!
# A210510: Numbers not in the range of the sum of deficient divisors function.

The programs for A210510, there is no canonical definition to state claims against.
-/

/-! ## A210510.P4530241807818079579

`eq[A008683(6*(n+1)²), char[A187793(n+1)]]`
-/

namespace A210510.P4530241807818079579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * (n + 1) ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A210510.P4530241807818079579

/-! ## A210510.P7021962811436018446

`eq[char[A187793(n+1)], A151933(n)]`
-/

namespace A210510.P7021962811436018446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A210510.P7021962811436018446

/-! ## A210510.P1359248210564775506

`eq[char[A274829(n+1)], A151933(n)]`
-/

namespace A210510.P1359248210564775506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A210510.P1359248210564775506

/-!
# A210511: Primes formed by concatenating k, k, and 1 for k >= 1.

The programs for A210511, there is no canonical definition to state claims against.
-/

/-! ## A210511.P7310139979177269413

`p?[10*(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))+1]`
-/

namespace A210511.P7310139979177269413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210511.P7310139979177269413

/-! ## A210511.P6950521208415554769

`p?[10*A020338(n+1)+1]`
-/

namespace A210511.P6950521208415554769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A020338 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210511.P6950521208415554769

/-! ## A210511.P2392882085133818338

`p?[A017281(A020338(n+1))]`
-/

namespace A210511.P2392882085133818338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210511.P2392882085133818338

/-! ## A210511.P9960388498011353073

`p?[A279211(A000124(n))+A009474(n+1)]`
-/

namespace A210511.P9960388498011353073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A000124 n).toNat + A009474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210511.P9960388498011353073

/-!
# A210512: Primes formed by concatenating k, k and 3 for k >= 1.

The programs for A210512, there is no canonical definition to state claims against.
-/

/-! ## A210512.P12281870445211980650

`p?[10*A020338(n+1)+3]`
-/

namespace A210512.P12281870445211980650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A020338 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210512.P12281870445211980650

/-! ## A210512.P11225542922343389663

`p?[A017305(A020338(n+1))]`
-/

namespace A210512.P11225542922343389663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210512.P11225542922343389663

/-! ## A210512.P6009480202565084535

`p?[A017305(A239019(n+1))]`
-/

namespace A210512.P6009480202565084535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A239019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210512.P6009480202565084535

/-! ## A210512.P3284891125299350856

`p?[A017305(A001704(n+1)-1)]`
-/

namespace A210512.P3284891125299350856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A001704 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210512.P3284891125299350856

/-! ## A210512.P14479515507831236011

`p?[A019428(A004273(A127421(n+1)))]`
-/

namespace A210512.P14479515507831236011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A004273 (A127421 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210512.P14479515507831236011

/-!
# A210513: Primes formed by concatenating k, k, and 7.

The programs for A210513, there is no canonical definition to state claims against.
-/

/-! ## A210513.P8600366541091529914

`p?[A017353(A020338(n+1))]`
-/

namespace A210513.P8600366541091529914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210513.P8600366541091529914

/-! ## A210513.P2333537190784197402

`∩[A044866(n+1), A090147(n+1)]`
-/

namespace A210513.P2333537190784197402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210513.P2333537190784197402

/-!
# A210514: Prime numbers generated by concatenating k, k, and 9.

The programs for A210514, there is no canonical definition to state claims against.
-/

/-! ## A210514.P9637795774703980287

`p?[A017377(A020338(n+1))]`
-/

namespace A210514.P9637795774703980287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210514.P9637795774703980287

/-! ## A210514.P2101574010128211264

`p?[A017377(A239019(n+1))]`
-/

namespace A210514.P2101574010128211264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A239019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210514.P2101574010128211264

/-! ## A210514.P3208996246526097247

`p?[record[A268488(A001704(n+1))]]`
-/

namespace A210514.P3208996246526097247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (A001704 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210514.P3208996246526097247

/-! ## A210514.P7804193653731889260

`p?[record[A268488(A127421(n+1))]]`
-/

namespace A210514.P7804193653731889260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (A127421 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210514.P7804193653731889260

/-! ## A210514.P17291102464919468393

`p?[A017305(A001704(n+1)-1)+6]`
-/

namespace A210514.P17291102464919468393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A001704 (n + 1) - 1).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210514.P17291102464919468393

/-!
# A210516: The length-1 of the Collatz (3k+1) sequence for all odd fractions and integers.

The programs for A210516, there is no canonical definition to state claims against.
-/

/-! ## A210516.P822673984960914839

`A210688(n+1)-1`
-/

namespace A210516.P822673984960914839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (n + 1) - 1

end

end A210516.P822673984960914839

/-! ## A210516.P5708462235516199533

`A023443(A210688(n+1))`
-/

namespace A210516.P5708462235516199533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A210688 (n + 1)).toNat

end

end A210516.P5708462235516199533

/-! ## A210516.P536123640919171678

`A023444(A210688(n+1)+1)`
-/

namespace A210516.P536123640919171678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A210688 (n + 1) + 1).toNat

end

end A210516.P536123640919171678

/-! ## A210516.P7060954143300510339

`A289207(A210688(n+1)+1)`
-/

namespace A210516.P7060954143300510339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A210688 (n + 1) + 1).toNat

end

end A210516.P7060954143300510339

/-! ## A210516.P5968946652422545979

`A256983(ceil(2/A000040(n+1)))+A210688(n+1)`
-/

namespace A210516.P5968946652422545979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256983 ⌈2 / (A000040 (n + 1) : ℚ)⌉.toNat + A210688 (n + 1)

end

end A210516.P5968946652422545979

/-! ## A210516.P13074085914775131567

`A033999(A288713(n+1))+A028310(A210688(n+1))`
-/

namespace A210516.P13074085914775131567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A288713 (n + 1)).toNat + A028310 (A210688 (n + 1)).toNat

end

end A210516.P13074085914775131567

/-! ## A210516.P565342827786960883

`A157914(A210688(n+1)²)%A210688(n+1)`
-/

namespace A210516.P565342827786960883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157914 (A210688 (n + 1) ^ 2).toNat) (A210688 (n + 1))

end

end A210516.P565342827786960883

/-! ## A210516.P13251100070505747119

`A070198(n+5)%A210688(n+1)`
-/

namespace A210516.P13251100070505747119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 (n + 5)) (A210688 (n + 1))

end

end A210516.P13251100070505747119

/-! ## A210516.P16665523295109422392

`A002837(A210688(n+1)%A146992(n+1))`
-/

namespace A210516.P16665523295109422392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (Int.tmod (A210688 (n + 1)) (A146992 (n + 1))).toNat

end

end A210516.P16665523295109422392

/-!
# A210517: Number of rectangles dissectible into n squares, unique up to aspect ratio.

The programs for A210517, there is no canonical definition to state claims against.
-/

/-! ## A210517.P2530437797182891793

`round((sqrt((n+3)!)-(n+1))/(n+2))`
-/

namespace A210517.P2530437797182891793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (Nat.factorial (n + 3) : ℝ) - (n + 1 : ℝ)) / (n + 2 : ℝ))

end

end A210517.P2530437797182891793

/-! ## A210517.P2789362470836529136

`floor(sqrt(A030876(n+1)))`
-/

namespace A210517.P2789362470836529136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030876 (n + 1))

end

end A210517.P2789362470836529136

/-! ## A210517.P5976642249853792835

`floor(sqrt(A030951(n+1)))`
-/

namespace A210517.P5976642249853792835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030951 (n + 1))

end

end A210517.P5976642249853792835

/-! ## A210517.P16787916785243726329

`round(sqrt(A030850(n+1)))`
-/

namespace A210517.P16787916785243726329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A030850 (n + 1) : ℝ))

end

end A210517.P16787916785243726329

/-!
# A210518: Number of primes up to 10^(n/4).

The programs for A210518, the canonical program `A210518.P1998245345614669449` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210518 has offset 0).

The definition of A210518 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018072, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210518.P1998245345614669449

`A000720(A018072(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210518

/-- `A000720(A018072(n))` -/
def P1998245345614669449.Spec : Prop :=
  ∀ n, P1998245345614669449.a n = A210518 n

theorem P1998245345614669449.correct : P1998245345614669449.Spec := by
  intro n
  simp only [A210518]

end A210518

/-! ## A210518.P16077214694683886508

`∑[A379568(n+1)]-A379568(n+1)`
-/

namespace A210518.P16077214694683886508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A379568 (n + 1)

end

end A210518.P16077214694683886508

namespace A210518

/-- `∑[A379568(n+1)]-A379568(n+1)` -/
def P16077214694683886508.Spec : Prop :=
  ∀ n, P16077214694683886508.a n = A210518 n

end A210518

/-! ## A210518.P10982032795913615435

`A000720(floor(10^(n/4)))`
-/

namespace A210518.P10982032795913615435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat

end

end A210518.P10982032795913615435

namespace A210518

/-- `A000720(floor(10^(n/4)))` -/
def P10982032795913615435.Spec : Prop :=
  ∀ n, P10982032795913615435.a n = A210518 n

end A210518

/-! ## A210518.P7156588827848319448

`A036234(floor(10^(n/4)))-1`
-/

namespace A210518.P7156588827848319448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ⌊(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat - 1

end

end A210518.P7156588827848319448

namespace A210518

/-- `A036234(floor(10^(n/4)))-1` -/
def P7156588827848319448.Spec : Prop :=
  ∀ n, P7156588827848319448.a n = A210518 n

theorem P7156588827848319448.correct : P7156588827848319448.Spec := by
  intro n
  simp only [A210518, Nat.add_sub_cancel, A210518.P7156588827848319448.a, A210518.P1998245345614669449.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A018072, A018072.P17045503792565000917.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210518

/-! ## A210518.P17590248926303415494

`A064427(A018074(n))-A018074(n)`
-/

namespace A210518.P17590248926303415494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (A018074 n).toNat - A018074 n

end

end A210518.P17590248926303415494

namespace A210518

/-- `A064427(A018074(n))-A018074(n)` -/
def P17590248926303415494.Spec : Prop :=
  ∀ n, P17590248926303415494.a n = A210518 n

end A210518

/-!
# A210519: a(n) = floor(volume of 4-sphere of radius n).

The programs for A210519, the canonical program `A210519.P6151199537053073864` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210519 has offset 0).

The definition of A210519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210519.P6151199537053073864

`floor(π²*n^4/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210519

/-- `floor(π²*n^4/2)` -/
def P6151199537053073864.Spec : Prop :=
  ∀ n, P6151199537053073864.a n = A210519 n

theorem P6151199537053073864.correct : P6151199537053073864.Spec := by
  intro n
  simp only [A210519]

end A210519

/-! ## A210519.P1083664574700890925

`ceil((π*n²)²/2-A178334(n))`
-/

namespace A210519.P1083664574700890925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi * (n ^ 2 : ℝ)) ^ 2 / 2 - (A178334 n : ℝ)⌉

end

end A210519.P1083664574700890925

namespace A210519

/-- `ceil((π*n²)²/2-A178334(n))` -/
def P1083664574700890925.Spec : Prop :=
  ∀ n, P1083664574700890925.a n = A210519 n

end A210519

/-!
# A210520: Number of cuban primes < 10^(n/2).

The programs for A210520, there is no canonical definition to state claims against.
-/

/-! ## A210520.P17465032837760720959

`floor(A103128((∑[n]-n)*A059966(n+1)+1)/2)`
-/

namespace A210520.P17465032837760720959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103128 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A059966 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A210520.P17465032837760720959

/-! ## A210520.P10159169455494807674

`A002024(A088305(n))-A000016(n)`
-/

namespace A210520.P10159169455494807674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A088305 n).toNat - A000016 n

end

end A210520.P10159169455494807674

/-! ## A210520.P5207319719479567028

`A123068(A003410(n))-A110654(n)`
-/

namespace A210520.P5207319719479567028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A003410 n).toNat - A110654 n

end

end A210520.P5207319719479567028

/-! ## A210520.P1167149050384960442

`A259361(A006463(n)*A319755(n))`
-/

namespace A210520.P1167149050384960442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A006463 n * A319755 n).toNat

end

end A210520.P1167149050384960442

/-! ## A210520.P17965342715170989179

`A000196(A106472(n))-A287864(n+1)`
-/

namespace A210520.P17965342715170989179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A106472 n).toNat - A287864 (n + 1)

end

end A210520.P17965342715170989179

/-!
# A210521: Array read by downward antidiagonals: T(n,k) = (n+k-1)*(n+k-2) + n + floor((n+k)/2)*(1-2*floor((n+k)/2)), for n, k > 0.

The programs for A210521, the canonical program `A210521.P726807856343337777` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210521 has offset 1).

The definition of A210521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210521.P726807856343337777

`2*A000027(n+1)+A204164(n+1)*(1-2*A204164(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210521

/-- `2*A000027(n+1)+A204164(n+1)*(1-2*A204164(n+1))` -/
def P726807856343337777.Spec : Prop :=
  ∀ n, P726807856343337777.a n = A210521 (n + 1)

theorem P726807856343337777.correct : P726807856343337777.Spec := by
  intro n
  simp only [A210521, Nat.add_sub_cancel]

end A210521

/-! ## A210521.P15126448584283670124

`∑[2-A198954(n)*A239473(n)]`
-/

namespace A210521.P15126448584283670124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A198954 n * A239473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210521.P15126448584283670124

namespace A210521

/-- `∑[2-A198954(n)*A239473(n)]` -/
def P15126448584283670124.Spec : Prop :=
  ∀ n, P15126448584283670124.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P9001767955616639743

`A005408(n)-A266440(A003056(n))`
-/

namespace A210521.P9001767955616639743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A266440 (A003056 n).toNat

end

end A210521.P9001767955616639743

namespace A210521

/-- `A005408(n)-A266440(A003056(n))` -/
def P9001767955616639743.Spec : Prop :=
  ∀ n, P9001767955616639743.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P17535937484117656681

`A074147(n+1)+A001057(A003056(n))`
-/

namespace A210521.P17535937484117656681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) + A001057 (A003056 n).toNat

end

end A210521.P17535937484117656681

namespace A210521

/-- `A074147(n+1)+A001057(A003056(n))` -/
def P17535937484117656681.Spec : Prop :=
  ∀ n, P17535937484117656681.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P10889337959603227603

`A004273(n+1)-A266440(A003056(n))`
-/

namespace A210521.P10889337959603227603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A266440 (A003056 n).toNat

end

end A210521.P10889337959603227603

namespace A210521

/-- `A004273(n+1)-A266440(A003056(n))` -/
def P10889337959603227603.Spec : Prop :=
  ∀ n, P10889337959603227603.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P13156755303198727330

`A213171(A213196(A213205(n+1)))`
-/

namespace A210521.P13156755303198727330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213171 (A213196 (A213205 (n + 1)).toNat).toNat

end

end A210521.P13156755303198727330

namespace A210521

/-- `A213171(A213196(A213205(n+1)))` -/
def P13156755303198727330.Spec : Prop :=
  ∀ n, P13156755303198727330.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P453946518473057317

`A211377(A199855(A211377(n+1)))`
-/

namespace A210521.P453946518473057317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A199855 (A211377 (n + 1)).toNat).toNat

end

end A210521.P453946518473057317

namespace A210521

/-- `A211377(A199855(A211377(n+1)))` -/
def P453946518473057317.Spec : Prop :=
  ∀ n, P453946518473057317.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P6855481082158830145

`A213171(A199855(A213171(n+1)))`
-/

namespace A210521.P6855481082158830145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213171 (A199855 (A213171 (n + 1)).toNat).toNat

end

end A210521.P6855481082158830145

namespace A210521

/-- `A213171(A199855(A213171(n+1)))` -/
def P6855481082158830145.Spec : Prop :=
  ∀ n, P6855481082158830145.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P12831792732084655870

`A216249(A199855(A216249(A199855(A216249(n+1)))))`
-/

namespace A210521.P12831792732084655870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A199855 (A216249 (A199855 (A216249 (n + 1)).toNat).toNat).toNat).toNat

end

end A210521.P12831792732084655870

namespace A210521

/-- `A216249(A199855(A216249(A199855(A216249(n+1)))))` -/
def P12831792732084655870.Spec : Prop :=
  ∀ n, P12831792732084655870.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P7516168464283283252

`A381664(A185180(n+1))`
-/

namespace A210521.P7516168464283283252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A185180 (n + 1)).toNat

end

end A210521.P7516168464283283252

namespace A210521

/-- `A381664(A185180(n+1))` -/
def P7516168464283283252.Spec : Prop :=
  ∀ n, P7516168464283283252.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P1288054398980018868

`A213205(A380200(n+1))`
-/

namespace A210521.P1288054398980018868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (A380200 (n + 1)).toNat

end

end A210521.P1288054398980018868

namespace A210521

/-- `A213205(A380200(n+1))` -/
def P1288054398980018868.Spec : Prop :=
  ∀ n, P1288054398980018868.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P17070450293140798457

`A216248(A199855(A216248(n+1)))`
-/

namespace A210521.P17070450293140798457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216248 (A199855 (A216248 (n + 1)).toNat).toNat

end

end A210521.P17070450293140798457

namespace A210521

/-- `A216248(A199855(A216248(n+1)))` -/
def P17070450293140798457.Spec : Prop :=
  ∀ n, P17070450293140798457.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P4511615695203371309

`A216250(A199855(A216250(A199855(A216250(n+1)))))`
-/

namespace A210521.P4511615695203371309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216250 (A199855 (A216250 (A199855 (A216250 (n + 1)).toNat).toNat).toNat).toNat

end

end A210521.P4511615695203371309

namespace A210521

/-- `A216250(A199855(A216250(A199855(A216250(n+1)))))` -/
def P4511615695203371309.Spec : Prop :=
  ∀ n, P4511615695203371309.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P6066139653558981351

`3*(n+1)-eq[1, A266982(n+1)]`
-/

namespace A210521.P6066139653558981351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A210521.P6066139653558981351

namespace A210521

/-- `3*(n+1)-eq[1, A266982(n+1)]` -/
def P6066139653558981351.Spec : Prop :=
  ∀ n, P6066139653558981351.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P17208839500417055235

`A280682(n+1)+1-A061579(n)`
-/

namespace A210521.P17208839500417055235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280682 (n + 1) + (1 - A061579 n)

end

end A210521.P17208839500417055235

namespace A210521

/-- `A280682(n+1)+1-A061579(n)` -/
def P17208839500417055235.Spec : Prop :=
  ∀ n, P17208839500417055235.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P12872211680531005536

`A280682(n+1)+A024000(A061579(n))`
-/

namespace A210521.P12872211680531005536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280682 (n + 1) + A024000 (A061579 n).toNat

end

end A210521.P12872211680531005536

namespace A210521

/-- `A280682(n+1)+A024000(A061579(n))` -/
def P12872211680531005536.Spec : Prop :=
  ∀ n, P12872211680531005536.a n = A210521 (n + 1)

end A210521

/-! ## A210521.P3360295428701698394

`∑[A155124(2*A128217(n+1))]`
-/

namespace A210521.P3360295428701698394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 (2 * A128217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210521.P3360295428701698394

namespace A210521

/-- `∑[A155124(2*A128217(n+1))]` -/
def P3360295428701698394.Spec : Prop :=
  ∀ n, P3360295428701698394.a n = A210521 (n + 1)

end A210521

/-!
# A210522: Decimal expansion of 10^(3/4).

The programs for A210522, the canonical program `A210522.P1764428426793375343` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210522 has offset 1).

The definition of A210522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210522.P1764428426793375343

`A018072(4*n+3)%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210522

/-- `A018072(4*n+3)%10` -/
def P1764428426793375343.Spec : Prop :=
  ∀ n, P1764428426793375343.a n = A210522 (n + 1)

theorem P1764428426793375343.correct : P1764428426793375343.Spec := by
  intro n
  simp only [A210522, Nat.add_sub_cancel]

end A210522

/-! ## A210522.P14991754081631522451

`A114322(4*n+3)%10`
-/

namespace A210522.P14991754081631522451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114322 (4 * n + 3)) 10

end

end A210522.P14991754081631522451

namespace A210522

/-- `A114322(4*n+3)%10` -/
def P14991754081631522451.Spec : Prop :=
  ∀ n, P14991754081631522451.a n = A210522 (n + 1)

end A210522

/-!
# A210523: Record values of Dedekind psi function.

The programs for A210523, there is no canonical definition to state claims against.
-/

/-! ## A210523.P2209470127528312508

`A001615(A330006(n+1))`
-/

namespace A210523.P2209470127528312508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A330006 (n + 1)).toNat

end

end A210523.P2209470127528312508

/-! ## A210523.P1267766534925092704

`record[abs(A158523(n+1))]`
-/

namespace A210523.P1267766534925092704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P1267766534925092704

/-! ## A210523.P1451808790151347785

`record[A160890(n+1)/7]`
-/

namespace A210523.P1451808790151347785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160890 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P1451808790151347785

/-! ## A210523.P8949382952297789348

`record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]]`
-/

namespace A210523.P8949382952297789348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P8949382952297789348

/-! ## A210523.P16335446536403563546

`record[A001615(n+1)]`
-/

namespace A210523.P16335446536403563546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P16335446536403563546

/-! ## A210523.P10914356691861866402

`record[∑{d}[n+1, A063659(#)]]`
-/

namespace A210523.P10914356691861866402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A063659 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P10914356691861866402

/-! ## A210523.P4132172598749900029

`record[A306927(n+1)+1+n]`
-/

namespace A210523.P4132172598749900029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P4132172598749900029

/-! ## A210523.P18362067384349706695

`record[A000082(n+1)/(n+1)]`
-/

namespace A210523.P18362067384349706695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210523.P18362067384349706695

/-!
# A210524: a(n) = n - sum of even digits of n.

The programs for A210524, there is no canonical definition to state claims against.
-/

/-! ## A210524.P3580439874310458977

`n-∑{digits}[n, #%or(1, #)]`
-/

namespace A210524.P3580439874310458977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.lor 1 x).sum : ℕ) : ℤ)

end

end A210524.P3580439874310458977

/-! ## A210524.P9440506621966698941

`n-A001613(n)%18`
-/

namespace A210524.P9440506621966698941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A001613 n) 18

end

end A210524.P9440506621966698941

/-! ## A210524.P16002839043866609798

`n-∑{digits}[n, A001613(#)]`
-/

namespace A210524.P16002839043866609798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001613 x).sum

end

end A210524.P16002839043866609798

/-! ## A210524.P8835724806157436743

`n-∑{digits}[n, A237420(#)]`
-/

namespace A210524.P8835724806157436743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A237420 x).sum

end

end A210524.P8835724806157436743

/-! ## A210524.P14483423994333452551

`n-A071648(10*n+1)`
-/

namespace A210524.P14483423994333452551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071648 (10 * n + 1)

end

end A210524.P14483423994333452551

/-! ## A210524.P4825622742108405962

`n-A007953(A001613(n))`
-/

namespace A210524.P4825622742108405962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (A001613 n).toNat

end

end A210524.P4825622742108405962

/-!
# A210525: G.f.: A(x) = Sum_{n>=0} x^n * A(n*x) * A(-n*x).

The programs for A210525, there is no canonical definition to state claims against.
-/

/-! ## A210525.P12055115906038258161

`A274693(∏[round(sqrt(n))!])`
-/

namespace A210525.P12055115906038258161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274693 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A210525.P12055115906038258161

/-! ## A210525.P1196207690374614534

`A155706(C(floor((n/2)²), 2))`
-/

namespace A210525.P1196207690374614534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155706 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat 2)

end

end A210525.P1196207690374614534

/-! ## A210525.P10275245764069291469

`A291636(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A210525.P10275245764069291469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A291636 (a (n - 1)).toNat + 1

end

end A210525.P10275245764069291469

/-!
# A210526: E.g.f.: Sum_{n>=0} tan(n*x)^n / n!.

The programs for A210526, there is no canonical definition to state claims against.
-/

/-! ## A210526.P17037168413595028294

`A326186(A221079(n)+1)`
-/

namespace A210526.P17037168413595028294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (A221079 n + 1).toNat

end

end A210526.P17037168413595028294

/-! ## A210526.P6163981712190293313

`A221079(n)-A036860(A020112(n))`
-/

namespace A210526.P6163981712190293313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221079 n - A036860 (A020112 n).toNat

end

end A210526.P6163981712190293313

/-!
# A210527: a(n) = 9*n^2 + 39*n + 83.

The programs for A210527, the canonical program `A210527.P9963786212683603505` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210527 has offset 0).

The definition of A210527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²+39*n+83` (program `A210527.P9963786212683603505`, by `A210527.P9963786212683603505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210527.P9963786212683603505

`9*n²+39*n+83`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210527

/-- `9*n²+39*n+83` -/
def P9963786212683603505.Spec : Prop :=
  ∀ n, (P9963786212683603505.a n : ℤ) = A210527 n

theorem P9963786212683603505.correct : P9963786212683603505.Spec := by
  intro n
  simp only [A210527]

end A210527

/-! ## A210527.P17160451164315945470

`A318791(n+16)`
-/

namespace A210527.P17160451164315945470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318791 (n + 16)

end

end A210527.P17160451164315945470

namespace A210527

/-- `A318791(n+16)` -/
def P17160451164315945470.Spec : Prop :=
  ∀ n, P17160451164315945470.a n = A210527 n

theorem P17160451164315945470.correct : P17160451164315945470.Spec := by
  intro n
  simp only [A210527, Nat.add_sub_cancel, A210527.P17160451164315945470.a, A210527.P9963786212683603505.a, A318791, A318791.P10031734239820775619.a, A060566, A060566.P12467925969216394313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210527

/-! ## A210527.P766654943781154575

`A202018(3*(n+2))`
-/

namespace A210527.P766654943781154575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (3 * (n + 2))

end

end A210527.P766654943781154575

namespace A210527

/-- `A202018(3*(n+2))` -/
def P766654943781154575.Spec : Prop :=
  ∀ n, P766654943781154575.a n = A210527 n

theorem P766654943781154575.correct : P766654943781154575.Spec := by
  intro n
  simp only [A210527, Nat.add_sub_cancel, A210527.P766654943781154575.a, A210527.P9963786212683603505.a, A202018, A202018.P5130107977223247330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210527

/-! ## A210527.P9579360360319827995

`record[A202018(A330396(n)+4)]`
-/

namespace A210527.P9579360360319827995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A330396 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210527.P9579360360319827995

namespace A210527

/-- `record[A202018(A330396(n)+4)]` -/
def P9579360360319827995.Spec : Prop :=
  ∀ n, P9579360360319827995.a n = A210527 n

end A210527

/-! ## A210527.P4524015641002461184

`A342253(3*(n+3)+2)`
-/

namespace A210527.P4524015641002461184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (3 * (n + 3) + 2)

end

end A210527.P4524015641002461184

namespace A210527

/-- `A342253(3*(n+3)+2)` -/
def P4524015641002461184.Spec : Prop :=
  ∀ n, P4524015641002461184.a n = A210527 n

end A210527

/-! ## A210527.P17201161606456785116

`A060566(A008585(n)+46)`
-/

namespace A210527.P17201161606456785116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A008585 n + 46).toNat

end

end A210527.P17201161606456785116

namespace A210527

/-- `A060566(A008585(n)+46)` -/
def P17201161606456785116.Spec : Prop :=
  ∀ n, P17201161606456785116.a n = A210527 n

end A210527

/-! ## A210527.P13580846876778163160

`A016969(Δ[A006002(n+1)]+6)`
-/

namespace A210527.P13580846876778163160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (f1 (n + 1) - f1 n + 6).toNat

end

end A210527.P13580846876778163160

namespace A210527

/-- `A016969(Δ[A006002(n+1)]+6)` -/
def P13580846876778163160.Spec : Prop :=
  ∀ n, P13580846876778163160.a n = A210527 n

end A210527

/-! ## A210527.P8385587781114055681

`A118124(2*(n+2)*(n+3))`
-/

namespace A210527.P8385587781114055681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118124 (2 * ((n + 2) * (n + 3)))

end

end A210527.P8385587781114055681

namespace A210527

/-- `A118124(2*(n+2)*(n+3))` -/
def P8385587781114055681.Spec : Prop :=
  ∀ n, P8385587781114055681.a n = A210527 n

end A210527

/-!
# A210529: a(n) is 1 or the smallest prime that makes |a(n)^2 - prime(n)^2| divisible by all primes smaller than sqrt(prime(n)).

The programs for A210529, there is no canonical definition to state claims against.
-/

/-! ## A210529.P16196080673140909673

`A020639(∏{d}[A210708(n+1), #])`
-/

namespace A210529.P16196080673140909673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A210529.P16196080673140909673

/-! ## A210529.P1111790942135789275

`A051176(∏{d}[A210708(n+1), #])`
-/

namespace A210529.P1111790942135789275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A210529.P1111790942135789275

/-! ## A210529.P7189740638669435324

`A210708(n+1)%A224384(n)²`
-/

namespace A210529.P7189740638669435324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210708 (n + 1)) (A224384 n ^ 2)

end

end A210529.P7189740638669435324

/-! ## A210529.P3852661483284479699

`A210708(n+1)+A185245(A185245(n))`
-/

namespace A210529.P3852661483284479699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210708 (n + 1) + A185245 (A185245 n).toNat

end

end A210529.P3852661483284479699

/-! ## A210529.P18230003969860626561

`A061347(A005897(n))*A210708(n+1)`
-/

namespace A210529.P18230003969860626561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A005897 n).toNat * A210708 (n + 1)

end

end A210529.P18230003969860626561

/-!
# A210530: T(n,k) = (k + 3*n - 2 - (k+n-2)*(-1)^(k+n))/2 n, k > 0, read by antidiagonals.

The programs for A210530, the canonical program `A210530.P1047719518573082448` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210530 has offset 1).

The definition of A210530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210530.P1047719518573082448

`n-A204164(n+1)*(2*A204164(n+1)-3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210530

/-- `n-A204164(n+1)*(2*A204164(n+1)-3)` -/
def P1047719518573082448.Spec : Prop :=
  ∀ n, P1047719518573082448.a n = A210530 (n + 1)

theorem P1047719518573082448.correct : P1047719518573082448.Spec := by
  intro n
  simp only [A210530, Nat.add_sub_cancel]

end A210530

/-! ## A210530.P1745615342525707387

`abs(A076645(n+1))`
-/

namespace A210530.P1745615342525707387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076645 (n + 1)|

end

end A210530.P1745615342525707387

namespace A210530

/-- `abs(A076645(n+1))` -/
def P1745615342525707387.Spec : Prop :=
  ∀ n, P1745615342525707387.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P4465005805038539844

`gcd(A000038(n), A076645(n+1))`
-/

namespace A210530.P4465005805038539844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A076645 (n + 1))

end

end A210530.P4465005805038539844

namespace A210530

/-- `gcd(A000038(n), A076645(n+1))` -/
def P4465005805038539844.Spec : Prop :=
  ∀ n, (P4465005805038539844.a n : ℤ) = A210530 (n + 1)

end A210530

/-! ## A210530.P13308782429192997041

`lcm(A020985(n), A076645(n+1))`
-/

namespace A210530.P13308782429192997041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A076645 (n + 1))

end

end A210530.P13308782429192997041

namespace A210530

/-- `lcm(A020985(n), A076645(n+1))` -/
def P13308782429192997041.Spec : Prop :=
  ∀ n, (P13308782429192997041.a n : ℤ) = A210530 (n + 1)

end A210530

/-! ## A210530.P18136782115304804979

`∑[2-A019425(A130296(n+1))]`
-/

namespace A210530.P18136782115304804979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A019425 (A130296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210530.P18136782115304804979

namespace A210530

/-- `∑[2-A019425(A130296(n+1))]` -/
def P18136782115304804979.Spec : Prop :=
  ∀ n, P18136782115304804979.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P17364901066995023898

`n+1-A014105(∑[char[A014105(n+1)]])`
-/

namespace A210530.P17364901066995023898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210530.P17364901066995023898

namespace A210530

/-- `n+1-A014105(∑[char[A014105(n+1)]])` -/
def P17364901066995023898.Spec : Prop :=
  ∀ n, P17364901066995023898.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P11125395720181252959

`n+1-A000217(A052928(A003056(n)))`
-/

namespace A210530.P11125395720181252959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 (A052928 (A003056 n).toNat).toNat

end

end A210530.P11125395720181252959

namespace A210530

/-- `n+1-A000217(A052928(A003056(n)))` -/
def P11125395720181252959.Spec : Prop :=
  ∀ n, P11125395720181252959.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P788133129009967371

`n-A014107(A110654(A002024(n+1)))`
-/

namespace A210530.P788133129009967371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014107 (A110654 (A002024 (n + 1)).toNat).toNat

end

end A210530.P788133129009967371

namespace A210530

/-- `n-A014107(A110654(A002024(n+1)))` -/
def P788133129009967371.Spec : Prop :=
  ∀ n, P788133129009967371.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P7069837499130326165

`A124625(A003056(n)+2)+A002262(n)`
-/

namespace A210530.P7069837499130326165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A003056 n + 2).toNat + A002262 n

end

end A210530.P7069837499130326165

namespace A210530

/-- `A124625(A003056(n)+2)+A002262(n)` -/
def P7069837499130326165.Spec : Prop :=
  ∀ n, P7069837499130326165.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P18180354830322395010

`A266665(A002024(n+1))-A061579(n)`
-/

namespace A210530.P18180354830322395010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 (A002024 (n + 1)).toNat - A061579 n

end

end A210530.P18180354830322395010

namespace A210530

/-- `A266665(A002024(n+1))-A061579(n)` -/
def P18180354830322395010.Spec : Prop :=
  ∀ n, P18180354830322395010.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P4963020242470620401

`A108872(n+1)-A093178(A002024(n+1))`
-/

namespace A210530.P4963020242470620401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A093178 (A002024 (n + 1)).toNat

end

end A210530.P4963020242470620401

namespace A210530

/-- `A108872(n+1)-A093178(A002024(n+1))` -/
def P4963020242470620401.Spec : Prop :=
  ∀ n, P4963020242470620401.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P5564620630305404737

`A002260(n+1)+A003056(n)%2*A003056(n)`
-/

namespace A210530.P5564620630305404737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (A003056 n) 2 * A003056 n

end

end A210530.P5564620630305404737

namespace A210530

/-- `A002260(n+1)+A003056(n)%2*A003056(n)` -/
def P5564620630305404737.Spec : Prop :=
  ∀ n, P5564620630305404737.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P8996994496697720786

`A060511(lt[1, A060511(n+1)])`
-/

namespace A210530.P8996994496697720786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210530.P8996994496697720786

namespace A210530

/-- `A060511(lt[1, A060511(n+1)])` -/
def P8996994496697720786.Spec : Prop :=
  ∀ n, P8996994496697720786.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P4245778376935260577

`A060511(lt[1, A060511(n)]-1)`
-/

namespace A210530.P4245778376935260577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A210530.P4245778376935260577

namespace A210530

/-- `A060511(lt[1, A060511(n)]-1)` -/
def P4245778376935260577.Spec : Prop :=
  ∀ n, P4245778376935260577.a n = A210530 (n + 1)

end A210530

/-! ## A210530.P14874870400882074100

`A002260(eq[3, and(3, A002024(n+1))]+1)`
-/

namespace A210530.P14874870400882074100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210530.P14874870400882074100

namespace A210530

/-- `A002260(eq[3, and(3, A002024(n+1))]+1)` -/
def P14874870400882074100.Spec : Prop :=
  ∀ n, P14874870400882074100.a n = A210530 (n + 1)

end A210530

/-!
# A210531: Number of nonnegative integers k

The programs for A210531, there is no canonical definition to state claims against.
-/

/-! ## A210531.P3342189797972762655

`A302031(A302033(n+4)+A089977(n))`
-/

namespace A210531.P3342189797972762655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (A302033 (n + 4) + A089977 n).toNat

end

end A210531.P3342189797972762655

/-!
# A210534: Primes formed by concatenating palindromes having even number of digits with 1.

The programs for A210534, there is no canonical definition to state claims against.
-/

/-! ## A210534.P6151106180772803722

`p?[10*A056524(n+1)+1]`
-/

namespace A210534.P6151106180772803722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A056524 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210534.P6151106180772803722

/-! ## A210534.P3146546858032323587

`p?[A017281(A056524(n+1))]`
-/

namespace A210534.P3146546858032323587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A056524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210534.P3146546858032323587

/-! ## A210534.P13225216371075393054

`p?[A017281(11*A066492(n+1))]`
-/

namespace A210534.P13225216371075393054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (11 * A066492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210534.P13225216371075393054

/-!
# A210535: Second inverse function (numbers of columns) for pairing function A209293.

The programs for A210535, the canonical program `A210535.P1061241870078406260` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210535 has offset 1).

The definition of A210535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210535.P1061241870078406260

`A004736(A185180(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210535

/-- `A004736(A185180(n+1))` -/
def P1061241870078406260.Spec : Prop :=
  ∀ n, P1061241870078406260.a n = A210535 (n + 1)

theorem P1061241870078406260.correct : P1061241870078406260.Spec := by
  intro n
  simp only [A210535, Nat.add_sub_cancel]

end A210535

/-! ## A210535.P16394585330644835085

`A194959(A038722(n+1))`
-/

namespace A210535.P16394585330644835085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A038722 (n + 1)).toNat

end

end A210535.P16394585330644835085

namespace A210535

/-- `A194959(A038722(n+1))` -/
def P16394585330644835085.Spec : Prop :=
  ∀ n, P16394585330644835085.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P13517738494051994702

`A157458(n)+A077605(n+1)`
-/

namespace A210535.P13517738494051994702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A077605 (n + 1)

end

end A210535.P13517738494051994702

namespace A210535

/-- `A157458(n)+A077605(n+1)` -/
def P13517738494051994702.Spec : Prop :=
  ∀ n, P13517738494051994702.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P9508156215259457271

`A194959(n+1)-A068344(n)`
-/

namespace A210535.P9508156215259457271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) - A068344 n

end

end A210535.P9508156215259457271

namespace A210535

/-- `A194959(n+1)-A068344(n)` -/
def P9508156215259457271.Spec : Prop :=
  ∀ n, P9508156215259457271.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P13226655665783820540

`A053616(n+1)+A003983(n+1)`
-/

namespace A210535.P13226655665783820540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n + 1) + A003983 (n + 1)

end

end A210535.P13226655665783820540

namespace A210535

/-- `A053616(n+1)+A003983(n+1)` -/
def P13226655665783820540.Spec : Prop :=
  ∀ n, P13226655665783820540.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P8892396846398921927

`A003057(n+2)-A220073(n+1)`
-/

namespace A210535.P8892396846398921927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A220073 (n + 1)

end

end A210535.P8892396846398921927

namespace A210535

/-- `A003057(n+2)-A220073(n+1)` -/
def P8892396846398921927.Spec : Prop :=
  ∀ n, P8892396846398921927.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P12463974334372173060

`A003056(n)+2-A220073(n+1)`
-/

namespace A210535.P12463974334372173060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A220073 (n + 1))

end

end A210535.P12463974334372173060

namespace A210535

/-- `A003056(n)+2-A220073(n+1)` -/
def P12463974334372173060.Spec : Prop :=
  ∀ n, P12463974334372173060.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P3503255410123168086

`∑[A010054(n)]+1-A220073(n+1)`
-/

namespace A210535.P3503255410123168086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A220073 (n + 1))

end

end A210535.P3503255410123168086

namespace A210535

/-- `∑[A010054(n)]+1-A220073(n+1)` -/
def P3503255410123168086.Spec : Prop :=
  ∀ n, P3503255410123168086.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P11099127640299144964

`A194959(A064578(A057028(n+1)))`
-/

namespace A210535.P11099127640299144964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A064578 (A057028 (n + 1)).toNat).toNat

end

end A210535.P11099127640299144964

namespace A210535

/-- `A194959(A064578(A057028(n+1)))` -/
def P11099127640299144964.Spec : Prop :=
  ∀ n, P11099127640299144964.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P6361806322460217542

`A194959(A064789(A057027(n+1)))`
-/

namespace A210535.P6361806322460217542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A064789 (A057027 (n + 1)).toNat).toNat

end

end A210535.P6361806322460217542

namespace A210535

/-- `A194959(A064789(A057027(n+1)))` -/
def P6361806322460217542.Spec : Prop :=
  ∀ n, P6361806322460217542.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P9544488916035374569

`A000124(A123578(n+1))-A185180(n+1)`
-/

namespace A210535.P9544488916035374569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A123578 (n + 1)).toNat - A185180 (n + 1)

end

end A210535.P9544488916035374569

namespace A210535

/-- `A000124(A123578(n+1))-A185180(n+1)` -/
def P9544488916035374569.Spec : Prop :=
  ∀ n, P9544488916035374569.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P10009808973845188799

`A002024(n+1)-A141387(n-A141387(n))`
-/

namespace A210535.P10009808973845188799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A141387 ((n : ℤ) - A141387 n).toNat

end

end A210535.P10009808973845188799

namespace A210535

/-- `A002024(n+1)-A141387(n-A141387(n))` -/
def P10009808973845188799.Spec : Prop :=
  ∀ n, P10009808973845188799.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P12246309425271681747

`A056023(n+1)+A092543(n+1)-A185180(n+1)`
-/

namespace A210535.P12246309425271681747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A185180 (n + 1))

end

end A210535.P12246309425271681747

namespace A210535

/-- `A056023(n+1)+A092543(n+1)-A185180(n+1)` -/
def P12246309425271681747.Spec : Prop :=
  ∀ n, P12246309425271681747.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P16994705204427888558

`A188568(n+1)+A208234(n+1)-A185180(n+1)`
-/

namespace A210535.P16994705204427888558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 1) + (A208234 (n + 1) - A185180 (n + 1))

end

end A210535.P16994705204427888558

namespace A210535

/-- `A188568(n+1)+A208234(n+1)-A185180(n+1)` -/
def P16994705204427888558.Spec : Prop :=
  ∀ n, P16994705204427888558.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P8845235629606742983

`A092543(A056023(A185180(A056023(A056023(n+1)))))`
-/

namespace A210535.P8845235629606742983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A056023 (A185180 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A210535.P8845235629606742983

namespace A210535

/-- `A092543(A056023(A185180(A056023(A056023(n+1)))))` -/
def P8845235629606742983.Spec : Prop :=
  ∀ n, P8845235629606742983.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P15796914144118654988

`A194959(A278818(n))`
-/

namespace A210535.P15796914144118654988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A278818 n).toNat

end

end A210535.P15796914144118654988

namespace A210535

/-- `A194959(A278818(n))` -/
def P15796914144118654988.Spec : Prop :=
  ∀ n, P15796914144118654988.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P6023951536593093299

`A194959(A101776(n)²-n)`
-/

namespace A210535.P6023951536593093299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A101776 n ^ 2 - (n : ℤ)).toNat

end

end A210535.P6023951536593093299

namespace A210535

/-- `A194959(A101776(n)²-n)` -/
def P6023951536593093299.Spec : Prop :=
  ∀ n, P6023951536593093299.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P18352428587269737037

`2*A051125(n+1)-A253146(n+1)`
-/

namespace A210535.P18352428587269737037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051125 (n + 1) - A253146 (n + 1)

end

end A210535.P18352428587269737037

namespace A210535

/-- `2*A051125(n+1)-A253146(n+1)` -/
def P18352428587269737037.Spec : Prop :=
  ∀ n, P18352428587269737037.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P1984969168755303510

`A008619(A253580(2*n+1))`
-/

namespace A210535.P1984969168755303510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253580 (2 * n + 1)).toNat

end

end A210535.P1984969168755303510

namespace A210535

/-- `A008619(A253580(2*n+1))` -/
def P1984969168755303510.Spec : Prop :=
  ∀ n, P1984969168755303510.a n = A210535 (n + 1)

end A210535

/-! ## A210535.P13577362241114577653

`A110654(A253580(2*n+1)+1)`
-/

namespace A210535.P13577362241114577653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A253580 (2 * n + 1) + 1).toNat

end

end A210535.P13577362241114577653

namespace A210535

/-- `A110654(A253580(2*n+1)+1)` -/
def P13577362241114577653.Spec : Prop :=
  ∀ n, P13577362241114577653.a n = A210535 (n + 1)

end A210535

/-!
# A210537: a(1)=3; for n>1, a(n)>a(n-1) is the minimal for which the set {a(1),a(2),...,a(n)} lacks at least one residue mod 2, 3, ....

The programs for A210537, there is no canonical definition to state claims against.
-/

/-! ## A210537.P13342176363624811524

`A020498(n+1)+2`
-/

namespace A210537.P13342176363624811524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020498 (n + 1) + 2

end

end A210537.P13342176363624811524

/-! ## A210537.P1949148409944874125

`A135311(n+1)+3`
-/

namespace A210537.P1949148409944874125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135311 (n + 1) + 3

end

end A210537.P1949148409944874125

/-! ## A210537.P14910275411783173166

`A007479(A020498(n+1))`
-/

namespace A210537.P14910275411783173166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007479 (A020498 (n + 1)).toNat

end

end A210537.P14910275411783173166

/-! ## A210537.P4852020852933680821

`A165754(A135311(n+1))`
-/

namespace A210537.P4852020852933680821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A135311 (n + 1)).toNat

end

end A210537.P4852020852933680821

/-! ## A210537.P2110565583362436806

`A285327(A020498(2*n-(n-1)))`
-/

namespace A210537.P2110565583362436806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 (A020498 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A210537.P2110565583362436806

/-!
# A210540: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 3 times.

The programs for A210540, there is no canonical definition to state claims against.
-/

/-! ## A210540.P7891933088529679713

`A346050(n)+A000996(n)`
-/

namespace A210540.P7891933088529679713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346050 n + A000996 n

end

end A210540.P7891933088529679713

/-! ## A210540.P17484208062320359088

`A346051(n)+A000997(n)`
-/

namespace A210540.P17484208062320359088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 n + A000997 n

end

end A210540.P17484208062320359088

/-! ## A210540.P8009578038799259354

`A346050(n)+A346052(n)-A000997(n)`
-/

namespace A210540.P8009578038799259354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346050 n + (A346052 n - A000997 n)

end

end A210540.P8009578038799259354

/-! ## A210540.P9271171128111484127

`A346051(n)+A346052(n)-A000996(n)`
-/

namespace A210540.P9271171128111484127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 n + (A346052 n - A000996 n)

end

end A210540.P9271171128111484127

/-! ## A210540.P6001482869524437360

`A210545(∑[n+2]-1)`
-/

namespace A210540.P6001482869524437360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A210540.P6001482869524437360

/-!
# A210541: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 4 times.

The programs for A210541, there is no canonical definition to state claims against.
-/

/-! ## A210541.P5703061651170376610

`A210545(A027379(n+2))`
-/

namespace A210541.P5703061651170376610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A027379 (n + 2)).toNat

end

end A210541.P5703061651170376610

/-! ## A210541.P17453946800136454184

`A210545(A055998(n+2))`
-/

namespace A210541.P17453946800136454184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A055998 (n + 2)).toNat

end

end A210541.P17453946800136454184

/-! ## A210541.P18367071936682647870

`A210545(A155212(n)+5)`
-/

namespace A210541.P18367071936682647870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A155212 n + 5).toNat

end

end A210541.P18367071936682647870

/-! ## A210541.P6054710222546901311

`A210545(eq[3, A193592(n)])`
-/

namespace A210541.P6054710222546901311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210541.P6054710222546901311

/-! ## A210541.P2018429555619328246

`A210545(A052905(n+1)+2)`
-/

namespace A210541.P2018429555619328246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A052905 (n + 1) + 2).toNat

end

end A210541.P2018429555619328246

/-! ## A210541.P7424076237917235803

`A210545(A000124(n+4)-4)`
-/

namespace A210541.P7424076237917235803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000124 (n + 4) - 4).toNat

end

end A210541.P7424076237917235803

/-! ## A210541.P11431049517312163769

`A210545(Δ[A005286(n+1)]-2)`
-/

namespace A210541.P11431049517312163769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n - 2).toNat

end

end A210541.P11431049517312163769

/-! ## A210541.P18102612893658599052

`A210545(∑[A028310(n)+4]+2)`
-/

namespace A210541.P18102612893658599052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A210541.P18102612893658599052

/-! ## A210541.P15612734740620037199

`A210545(eq[2, A185782(n+1)-2])`
-/

namespace A210541.P15612734740620037199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210541.P15612734740620037199

/-! ## A210541.P15788509622358108666

`A210545(eq[2, A185782(n+1)/2])`
-/

namespace A210541.P15788509622358108666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A210541.P15788509622358108666

/-!
# A210542: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 5 times.

The programs for A210542, there is no canonical definition to state claims against.
-/

/-! ## A210542.P10400744840324323846

`A210545(A046691(n+3))`
-/

namespace A210542.P10400744840324323846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A046691 (n + 3)).toNat

end

end A210542.P10400744840324323846

/-! ## A210542.P7764956960029260543

`A210545(eq[4, A193592(n)])`
-/

namespace A210542.P7764956960029260543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210542.P7764956960029260543

/-! ## A210542.P1896308406069665011

`A210545(Δ[A023545(n+1)])`
-/

namespace A210542.P1896308406069665011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n).toNat

end

end A210542.P1896308406069665011

/-! ## A210542.P16583367247254955361

`A210545(A000217(n+5)-4)`
-/

namespace A210542.P16583367247254955361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000217 (n + 5) - 4).toNat

end

end A210542.P16583367247254955361

/-! ## A210542.P15160649092268353850

`A210545(A000124(n+5)-5)`
-/

namespace A210542.P15160649092268353850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000124 (n + 5) - 5).toNat

end

end A210542.P15160649092268353850

/-! ## A210542.P13555506508621182262

`A210545((n+8)²-A034856(n+9))`
-/

namespace A210542.P13555506508621182262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (((n + 8) ^ 2 : ℤ) - A034856 (n + 9)).toNat

end

end A210542.P13555506508621182262

/-! ## A210542.P7534798991021426869

`A210545(Δ[A005286(n+1)]+n+2)`
-/

namespace A210542.P7534798991021426869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n + (n + 2 : ℤ)).toNat

end

end A210542.P7534798991021426869

/-!
# A210543: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 6 times.

The programs for A210543, there is no canonical definition to state claims against.
-/

/-! ## A210543.P684710485756898918

`A210545(A052905(n+3))`
-/

namespace A210543.P684710485756898918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A052905 (n + 3)).toNat

end

end A210543.P684710485756898918

/-! ## A210543.P8437274923963928163

`A210545(eq[3, A219347(n)])`
-/

namespace A210543.P8437274923963928163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210543.P8437274923963928163

/-! ## A210543.P15600953027263067412

`A210545(A046691(n+4)-1)`
-/

namespace A210543.P15600953027263067412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A046691 (n + 4) - 1).toNat

end

end A210543.P15600953027263067412

/-! ## A210543.P1744272278496755333

`A210545(A000217(n+6)-5)`
-/

namespace A210543.P1744272278496755333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000217 (n + 6) - 5).toNat

end

end A210543.P1744272278496755333

/-! ## A210543.P16292992348514454163

`A210545(A000124(n+6)-6)`
-/

namespace A210543.P16292992348514454163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000124 (n + 6) - 6).toNat

end

end A210543.P16292992348514454163

/-! ## A210543.P7339130660119374981

`A210545(Δ[A023551(n+1)]+1)`
-/

namespace A210543.P7339130660119374981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n + 1).toNat

end

end A210543.P7339130660119374981

/-! ## A210543.P1948828119548320970

`A210545(Δ[A023545(n+2)]-1)`
-/

namespace A210543.P1948828119548320970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n - 1).toNat

end

end A210543.P1948828119548320970

/-! ## A210543.P14197529903058003451

`A210545(A034856(n+4)+n+3)`
-/

namespace A210543.P14197529903058003451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A034856 (n + 4) + (n + 3 : ℤ)).toNat

end

end A210543.P14197529903058003451

/-! ## A210543.P11532745769271099942

`A210545(A153152(Δ[A023551(n+1)]))`
-/

namespace A210543.P11532745769271099942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A153152 (f1 (n + 1) - f1 n).toNat).toNat

end

end A210543.P11532745769271099942

/-!
# A210544: Number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least 7 times.

The programs for A210544, there is no canonical definition to state claims against.
-/

/-! ## A210544.P16875894558133745647

`A210545(eq[4, A219347(n)])`
-/

namespace A210544.P16875894558133745647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210544.P16875894558133745647

/-! ## A210544.P17415134682398656049

`A210545(eq[6, A193592(n)])`
-/

namespace A210544.P17415134682398656049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210544.P17415134682398656049

/-! ## A210544.P4677490878831833546

`A210545(Δ[A023551(n+2)])`
-/

namespace A210544.P4677490878831833546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (f1 (n + 1) - f1 n).toNat

end

end A210544.P4677490878831833546

/-! ## A210544.P11024052170385251684

`A210545(A052905(n+4)-1)`
-/

namespace A210544.P11024052170385251684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A052905 (n + 4) - 1).toNat

end

end A210544.P11024052170385251684

/-! ## A210544.P1524978682765833733

`A210545(eq[10, A185782(n+1)])`
-/

namespace A210544.P1524978682765833733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210544.P1524978682765833733

/-!
# A210545: T(n,k) = number of arrays of n nonnegative integers with value i>0 appearing only after i-1 has appeared at least k times.

The programs for A210545, there is no canonical definition to state claims against.
-/

/-! ## A210545.P5662496118573517618

`A137734((A211700(n+1)-A286653(n))²)`
-/

namespace A210545.P5662496118573517618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((A211700 (n + 1) - A286653 n) ^ 2).toNat

end

end A210545.P5662496118573517618

/-! ## A210545.P13770070834029884763

`A275069(eq[A103451(n), A185238(n)])`
-/

namespace A210545.P13770070834029884763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210545.P13770070834029884763

/-! ## A210545.P17466354481727426738

`A275069(eq[A103452(n), A185238(n)])`
-/

namespace A210545.P17466354481727426738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210545.P17466354481727426738

/-! ## A210545.P14607749531762255269

`A275069(lt[n, A034368(n+1)²²])`
-/

namespace A210545.P14607749531762255269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034368 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210545.P14607749531762255269

/-! ## A210545.P9247426298172189611

`A275069(lt[A352517(3*n+2), A050446(n)])`
-/

namespace A210545.P9247426298172189611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210545.P9247426298172189611

/-!
# A210546: Emirps whose products of digits are prime.

The programs for A210546, there is no canonical definition to state claims against.
-/

/-! ## A210546.P17501420446667800100

`∪[A210547(n+1), A210548(n+1)]`
-/

namespace A210546.P17501420446667800100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210546.P17501420446667800100

/-! ## A210546.P10985759908966098358

`∩[A028842(n+1), A159614(n+1)]`
-/

namespace A210546.P10985759908966098358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210546.P10985759908966098358

/-! ## A210546.P12744767076853061798

`∩[A046703(n+1), A159614(n+1)]`
-/

namespace A210546.P12744767076853061798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210546.P12744767076853061798

/-! ## A210546.P13348653102790638812

`∩[A117159(n+1), A159614(n+1)]`
-/

namespace A210546.P13348653102790638812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210546.P13348653102790638812

/-! ## A210546.P7184845493333665589

`∩[A117835(n+1), A159614(n+1)]`
-/

namespace A210546.P7184845493333665589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210546.P7184845493333665589

/-!
# A210547: Lesser of emirp pairs whose members have prime digital products.

The programs for A210547, there is no canonical definition to state claims against.
-/

/-! ## A210547.P17007372818446787585

`∏{p}[A210546(A246795(2*(n+1))), #]`
-/

namespace A210547.P17007372818446787585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210546 (A246795 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A210547.P17007372818446787585

/-!
# A210548: Larger of emirp pairs whose members have prime digital products.

The programs for A210548, there is no canonical definition to state claims against.
-/

/-! ## A210548.P16724440701874860234

`A210546(A015989(n)+2*(n+1))`
-/

namespace A210548.P16724440701874860234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210546 (A015989 n + (2 * (n + 1) : ℤ)).toNat

end

end A210548.P16724440701874860234

/-! ## A210548.P12640955334005640629

`A210546((A114171(n+1)+1)*(n+1))`
-/

namespace A210548.P12640955334005640629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210546 ((A114171 (n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A210548.P12640955334005640629

/-!
# A210549: Triangle of coefficients of polynomials u(n,x) jointly generated with A210550; see the Formula section.

The programs for A210549, there is no canonical definition to state claims against.
-/

/-! ## A210549.P4867797941190644858

`A210217(n+2)-Δ[A210550(n+1)]`
-/

namespace A210549.P4867797941190644858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210217 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210549.P4867797941190644858

/-! ## A210549.P1194426640603099735

`A203647(n+1)+A001222(A137855(n+1)!)`
-/

namespace A210549.P1194426640603099735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) + A001222 (Nat.factorial (A137855 (n + 1)).toNat)

end

end A210549.P1194426640603099735

/-! ## A210549.P15599100032230174331

`A058224(A210228(n+1))`
-/

namespace A210549.P15599100032230174331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A210228 (n + 1)).toNat

end

end A210549.P15599100032230174331

/-! ## A210549.P9587247776726156447

`A062575(A209996(n+1)+1)-A001055(A203647(n+1))`
-/

namespace A210549.P9587247776726156447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A209996 (n + 1) + 1).toNat - A001055 (A203647 (n + 1)).toNat

end

end A210549.P9587247776726156447

/-! ## A210549.P12418252463916789656

`A165024(A181543(n))^A002262(n)`
-/

namespace A210549.P12418252463916789656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165024 (A181543 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210549.P12418252463916789656

/-!
# A210550: Triangle of coefficients of polynomials v(n,x) jointly generated with A210549; see the Formula section.

The programs for A210550, there is no canonical definition to state claims against.
-/

/-! ## A210550.P9591354856778957257

`A210549(lt[1, A210549(n+1)]+1)-A210549(n+1)`
-/

namespace A210550.P9591354856778957257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A210549 (n + 1)

end

end A210550.P9591354856778957257

/-! ## A210550.P5582873068615855620

`A055570(A210549(n+1)+A112367(n))+Δ[A203647(n+1)]`
-/

namespace A210550.P5582873068615855620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A210549 (n + 1) + A112367 n).toNat + (f1 (n + 1) - f1 n)

end

end A210550.P5582873068615855620

/-!
# A210551: Triangle of coefficients of polynomials v(n,x) jointly generated with A172431; see the Formula section.

The programs for A210551, the canonical program `A210551.P10369202010321151337` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210551 has offset 1).

The definition of A210551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210551.P5538444956436439450

`2*A210219(n+1)-A071922(n)`
-/

namespace A210551.P5538444956436439450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210219 (n + 1) - A071922 n

end

end A210551.P5538444956436439450

namespace A210551

/-- `2*A210219(n+1)-A071922(n)` -/
def P5538444956436439450.Spec : Prop :=
  ∀ n, P5538444956436439450.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P10369202010321151337

`C(A128076(n+1), A002262(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A210551

/-- `C(A128076(n+1), A002262(n)+1)` -/
def P10369202010321151337.Spec : Prop :=
  ∀ n, (P10369202010321151337.a n : ℤ) = A210551 (n + 1)

theorem P10369202010321151337.correct : P10369202010321151337.Spec := by
  intro n
  simp only [A210551, Nat.add_sub_cancel]

end A210551

/-! ## A210551.P7698224813899700160

`C(A004736(n+1)+A003056(n), A002260(n+1))`
-/

namespace A210551.P7698224813899700160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) + A003056 n).toNat (A002260 (n + 1)).toNat

end

end A210551.P7698224813899700160

namespace A210551

/-- `C(A004736(n+1)+A003056(n), A002260(n+1))` -/
def P7698224813899700160.Spec : Prop :=
  ∀ n, (P7698224813899700160.a n : ℤ) = A210551 (n + 1)

end A210551

/-! ## A210551.P7438555238465041335

`C(A294317(n+1)+2, A002262(n+1))`
-/

namespace A210551.P7438555238465041335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 (n + 1) + 2).toNat (A002262 (n + 1)).toNat

end

end A210551.P7438555238465041335

namespace A210551

/-- `C(A294317(n+1)+2, A002262(n+1))` -/
def P7438555238465041335.Spec : Prop :=
  ∀ n, (P7438555238465041335.a n : ℤ) = A210551 (n + 1)

end A210551

/-! ## A210551.P11770603031556916456

`A210219(n+1)+A210220(n+2)-A210219(n+2)`
-/

namespace A210551.P11770603031556916456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) + (A210220 (n + 2) - A210219 (n + 2))

end

end A210551.P11770603031556916456

namespace A210551

/-- `A210219(n+1)+A210220(n+2)-A210219(n+2)` -/
def P11770603031556916456.Spec : Prop :=
  ∀ n, P11770603031556916456.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P7264142344902826731

`abs(A076756(comp[∑[n]]))`
-/

namespace A210551.P7264142344902826731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A210551.P7264142344902826731

namespace A210551

/-- `abs(A076756(comp[∑[n]]))` -/
def P7264142344902826731.Spec : Prop :=
  ∀ n, P7264142344902826731.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P10807648079796383956

`A258993(A038722(n+1))`
-/

namespace A210551.P10807648079796383956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A038722 (n + 1)).toNat

end

end A210551.P10807648079796383956

namespace A210551

/-- `A258993(A038722(n+1))` -/
def P10807648079796383956.Spec : Prop :=
  ∀ n, P10807648079796383956.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P15983862520452653962

`A054142(comp[∑[n]])`
-/

namespace A210551.P15983862520452653962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A210551.P15983862520452653962

namespace A210551

/-- `A054142(comp[∑[n]])` -/
def P15983862520452653962.Spec : Prop :=
  ∀ n, P15983862520452653962.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P10417678414160327356

`A210219(A014132(n+2))-A210219(n+2)`
-/

namespace A210551.P10417678414160327356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A014132 (n + 2)).toNat - A210219 (n + 2)

end

end A210551.P10417678414160327356

namespace A210551

/-- `A210219(A014132(n+2))-A210219(n+2)` -/
def P10417678414160327356.Spec : Prop :=
  ∀ n, P10417678414160327356.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P13649836096626488675

`2*A071922(A014132(n+1))-A071922(n)`
-/

namespace A210551.P13649836096626488675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071922 (A014132 (n + 1)).toNat - A071922 n

end

end A210551.P13649836096626488675

namespace A210551

/-- `2*A071922(A014132(n+1))-A071922(n)` -/
def P13649836096626488675.Spec : Prop :=
  ∀ n, P13649836096626488675.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P11389003750432150529

`A085478(A099375(n)+n)`
-/

namespace A210551.P11389003750432150529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A099375 n + (n : ℤ)).toNat

end

end A210551.P11389003750432150529

namespace A210551

/-- `A085478(A099375(n)+n)` -/
def P11389003750432150529.Spec : Prop :=
  ∀ n, P11389003750432150529.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P4078639811328427410

`A121314(comp[eq[1, A007318(n)]]+1)`
-/

namespace A210551.P4078639811328427410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A210551.P4078639811328427410

namespace A210551

/-- `A121314(comp[eq[1, A007318(n)]]+1)` -/
def P4078639811328427410.Spec : Prop :=
  ∀ n, P4078639811328427410.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P16844912748757907190

`A143858(A038722(n+2))`
-/

namespace A210551.P16844912748757907190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A038722 (n + 2)).toNat

end

end A210551.P16844912748757907190

namespace A210551

/-- `A143858(A038722(n+2))` -/
def P16844912748757907190.Spec : Prop :=
  ∀ n, P16844912748757907190.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P11133623177333126996

`A210039(A082156(n+2))`
-/

namespace A210551.P11133623177333126996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210039 (A082156 (n + 2)).toNat

end

end A210551.P11133623177333126996

namespace A210551

/-- `A210039(A082156(n+2))` -/
def P11133623177333126996.Spec : Prop :=
  ∀ n, P11133623177333126996.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P6262874193750277850

`A175990(A004202(n+1))`
-/

namespace A210551.P6262874193750277850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175990 (A004202 (n + 1)).toNat

end

end A210551.P6262874193750277850

namespace A210551

/-- `A175990(A004202(n+1))` -/
def P6262874193750277850.Spec : Prop :=
  ∀ n, P6262874193750277850.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P2493249099348939214

`A011973(A063657(n+1))`
-/

namespace A210551.P2493249099348939214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A063657 (n + 1)).toNat

end

end A210551.P2493249099348939214

namespace A210551

/-- `A011973(A063657(n+1))` -/
def P2493249099348939214.Spec : Prop :=
  ∀ n, P2493249099348939214.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P1492220728261696820

`A011973(eq[1, A023969(n)])`
-/

namespace A210551.P1492220728261696820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210551.P1492220728261696820

namespace A210551

/-- `A011973(eq[1, A023969(n)])` -/
def P1492220728261696820.Spec : Prop :=
  ∀ n, P1492220728261696820.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P8466470565508616680

`A011973(A217575(n+1)+1)`
-/

namespace A210551.P8466470565508616680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A217575 (n + 1) + 1).toNat

end

end A210551.P8466470565508616680

namespace A210551

/-- `A011973(A217575(n+1)+1)` -/
def P8466470565508616680.Spec : Prop :=
  ∀ n, P8466470565508616680.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P8405417821289290320

`A011973(A217575(n+2))`
-/

namespace A210551.P8405417821289290320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A217575 (n + 2)).toNat

end

end A210551.P8405417821289290320

namespace A210551

/-- `A011973(A217575(n+2))` -/
def P8405417821289290320.Spec : Prop :=
  ∀ n, P8405417821289290320.a n = A210551 (n + 1)

end A210551

/-! ## A210551.P3998286219085799040

`A194005(A185869(n+1))`
-/

namespace A210551.P3998286219085799040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A185869 (n + 1)).toNat

end

end A210551.P3998286219085799040

namespace A210551

/-- `A194005(A185869(n+1))` -/
def P3998286219085799040.Spec : Prop :=
  ∀ n, P3998286219085799040.a n = A210551 (n + 1)

end A210551

/-!
# A210552: Triangle of coefficients of polynomials u(n,x) jointly generated with A210553; see the Formula section.

The programs for A210552, there is no canonical definition to state claims against.
-/

/-! ## A210552.P11406578577563423596

`A053538(A099375(n)+n)`
-/

namespace A210552.P11406578577563423596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A099375 n + (n : ℤ)).toNat

end

end A210552.P11406578577563423596

/-! ## A210552.P3848987527317320611

`A053538(2*A025581(n)+n+1)`
-/

namespace A210552.P3848987527317320611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A210552.P3848987527317320611

/-! ## A210552.P18234105997977106048

`A053538(A007401(A038722(n+1)))`
-/

namespace A210552.P18234105997977106048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A210552.P18234105997977106048

/-! ## A210552.P3549483941355104750

`A053538(A061579(n)+∑[A010054(n)])`
-/

namespace A210552.P3549483941355104750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210552.P3549483941355104750

/-! ## A210552.P10366915239716788782

`A053538(A038722(n+1)+A003056(n))`
-/

namespace A210552.P10366915239716788782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A038722 (n + 1) + A003056 n).toNat

end

end A210552.P10366915239716788782

/-! ## A210552.P5902422727046234852

`A053538(A061579(n)+A002024(n+1))`
-/

namespace A210552.P5902422727046234852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 n + A002024 (n + 1)).toNat

end

end A210552.P5902422727046234852

/-! ## A210552.P11717202143558456875

`A053538(A127739(n+1)+A025581(n))`
-/

namespace A210552.P11717202143558456875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A127739 (n + 1) + A025581 n).toNat

end

end A210552.P11717202143558456875

/-! ## A210552.P4849815912821815131

`A208342(A080036(n+1))`
-/

namespace A210552.P4849815912821815131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208342 (A080036 (n + 1)).toNat

end

end A210552.P4849815912821815131

/-! ## A210552.P6364667710333034787

`A053538(A061579(A014132(n+1)))`
-/

namespace A210552.P6364667710333034787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 (A014132 (n + 1)).toNat).toNat

end

end A210552.P6364667710333034787

/-! ## A210552.P13805401782562400336

`A053538(A061579(eq[n, A066182(n+1)]))`
-/

namespace A210552.P13805401782562400336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A210552.P13805401782562400336

/-!
# A210553: Triangle of coefficients of polynomials v(n,x) jointly generated with A210552; see the Formula section.

The programs for A210553, there is no canonical definition to state claims against.
-/

/-! ## A210553.P10621270555381110325

`A139821(A038722(n+1))`
-/

namespace A210553.P10621270555381110325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139821 (A038722 (n + 1)).toNat

end

end A210553.P10621270555381110325

/-! ## A210553.P4296429130532311449

`A139821(A061579(n)+1)`
-/

namespace A210553.P4296429130532311449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139821 (A061579 n + 1).toNat

end

end A210553.P4296429130532311449

/-! ## A210553.P9943179974443538122

`A105422(A140978(n+1)-(n+1))`
-/

namespace A210553.P9943179974443538122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A140978 (n + 1) - (n + 1 : ℤ)).toNat

end

end A210553.P9943179974443538122

/-! ## A210553.P8564038631908292084

`A105422(A003057(n+2)²-(n+1))`
-/

namespace A210553.P8564038631908292084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A210553.P8564038631908292084

/-! ## A210553.P1844462313475187038

`A105422((A002024(n+1)+1)²-(n+1))`
-/

namespace A210553.P1844462313475187038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 ((A002024 (n + 1) + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A210553.P1844462313475187038

/-! ## A210553.P1124451501655654291

`A105422(A099375(n)+A014132(n+1))`
-/

namespace A210553.P1124451501655654291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A099375 n + A014132 (n + 1)).toNat

end

end A210553.P1124451501655654291

/-! ## A210553.P17436129483525444002

`A105422(A185871(n+1)-A016789(n))`
-/

namespace A210553.P17436129483525444002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A185871 (n + 1) - A016789 n).toNat

end

end A210553.P17436129483525444002

/-! ## A210553.P4525830369298448771

`A105422(A212012(n+1)+A007401(n+1))`
-/

namespace A210553.P4525830369298448771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A212012 (n + 1) + A007401 (n + 1)).toNat

end

end A210553.P4525830369298448771

/-! ## A210553.P12053392293352858408

`A105422(A185871(n+1)-A061570(n+1))`
-/

namespace A210553.P12053392293352858408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A185871 (n + 1) - A061570 (n + 1)).toNat

end

end A210553.P12053392293352858408

/-!
# A210554: Triangle of coefficients of polynomials v(n,x) jointly generated with A208341; see the Formula section.

The programs for A210554, there is no canonical definition to state claims against.
-/

/-! ## A210554.P3328515325039195703

`A105306(A099375(n)+1+n)`
-/

namespace A210554.P3328515325039195703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A099375 n + 1 + (n : ℤ)).toNat

end

end A210554.P3328515325039195703

/-! ## A210554.P4852718789284107396

`A105306(2*A004736(n+1)+n)`
-/

namespace A210554.P4852718789284107396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A210554.P4852718789284107396

/-! ## A210554.P5104716628545192641

`A105306(A038722(n+1)+A002024(n+1))`
-/

namespace A210554.P5104716628545192641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A210554.P5104716628545192641

/-! ## A210554.P3830310007299617324

`A105306(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A210554.P3830310007299617324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A210554.P3830310007299617324

/-! ## A210554.P4105706311727860602

`A105306(A080036(A038722(n+1))-1)`
-/

namespace A210554.P4105706311727860602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A080036 (A038722 (n + 1)).toNat - 1).toNat

end

end A210554.P4105706311727860602

/-! ## A210554.P949642850319316418

`A160232(A080036(n+1))`
-/

namespace A210554.P949642850319316418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A080036 (n + 1)).toNat

end

end A210554.P949642850319316418

/-! ## A210554.P6359398609857051628

`A160232(∑[A035214(n)]+1)`
-/

namespace A210554.P6359398609857051628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A210554.P6359398609857051628

/-! ## A210554.P18169533756630530007

`A160232(A007401(n+1)+2)`
-/

namespace A210554.P18169533756630530007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A007401 (n + 1) + 2).toNat

end

end A210554.P18169533756630530007

/-! ## A210554.P6587148364204524356

`A160232(A133196(n+1)+n)`
-/

namespace A210554.P6587148364204524356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A133196 (n + 1) + (n : ℤ)).toNat

end

end A210554.P6587148364204524356

/-! ## A210554.P15623752380774535042

`A160232(A020725(∑[A035214(n)]))`
-/

namespace A210554.P15623752380774535042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A210554.P15623752380774535042

/-! ## A210554.P9224806438182174753

`A208341(∑[A035214(n)])-A208341(n)`
-/

namespace A210554.P9224806438182174753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A208341 n

end

end A210554.P9224806438182174753

/-! ## A210554.P11529178728961184425

`A208341(A014132(n+1))-A208341(n)`
-/

namespace A210554.P11529178728961184425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A014132 (n + 1)).toNat - A208341 n

end

end A210554.P11529178728961184425

/-! ## A210554.P4073166328810100751

`A208341(lt[1, A208341(n)])-A208341(n)`
-/

namespace A210554.P4073166328810100751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A208341 n

end

end A210554.P4073166328810100751

/-!
# A210555: Triangle of coefficients of polynomials u(n,x) jointly generated with A210556; see the Formula section.

The programs for A210555, there is no canonical definition to state claims against.
-/

/-! ## A210555.P18085039291673534627

`(A208907(n+1)+A208755(n+1))/2`
-/

namespace A210555.P18085039291673534627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208907 (n + 1) + A208755 (n + 1) : ℚ) / 2

end

end A210555.P18085039291673534627

/-! ## A210555.P13887797284466967148

`A208755(comp[∑[n]]+1)/2`
-/

namespace A210555.P13887797284466967148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208755 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A210555.P13887797284466967148

/-! ## A210555.P3059507206925700876

`floor(A208755(A080036(n+1))/2)`
-/

namespace A210555.P3059507206925700876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208755 (A080036 (n + 1)).toNat : ℚ) / 2⌋

end

end A210555.P3059507206925700876

/-! ## A210555.P8740522592123859610

`floor(A208755(A014132(n+1)+1)/2)`
-/

namespace A210555.P8740522592123859610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208755 (A014132 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A210555.P8740522592123859610

/-! ## A210555.P13306227422805763223

`(A208907(n+1)+A208756(A080036(n+1))-A208756(n+1))/2`
-/

namespace A210555.P13306227422805763223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208907 (n + 1) + (A208756 (A080036 (n + 1)).toNat - A208756 (n + 1)) : ℚ) / 2

end

end A210555.P13306227422805763223

/-! ## A210555.P2055671793963155119

`A001281(A208755(comp[∑[n]]+1))`
-/

namespace A210555.P2055671793963155119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A208755 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A210555.P2055671793963155119

/-! ## A210555.P5305654856027529922

`A000720(p?[A219606(A208755(n+1))])`
-/

namespace A210555.P5305654856027529922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A208755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A210555.P5305654856027529922

/-! ## A210555.P2006006610111644264

`A004526(A208907(n+1)+A208755(n+1))`
-/

namespace A210555.P2006006610111644264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A208907 (n + 1) + A208755 (n + 1)).toNat

end

end A210555.P2006006610111644264

/-! ## A210555.P9333526921008845782

`A335286(p?[A219606(A208755(n+1))])`
-/

namespace A210555.P9333526921008845782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A208755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A210555.P9333526921008845782

/-!
# A210556: Triangle of coefficients of polynomials v(n,x) jointly generated with A210555; see the Formula section.

The programs for A210556, there is no canonical definition to state claims against.
-/

/-! ## A210556.P2318620815599144118

`A208907(comp[∑[n]]+1)/2`
-/

namespace A210556.P2318620815599144118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A210556.P2318620815599144118

/-! ## A210556.P15498165299501482229

`A210555(comp[∑[n]]+1)-A210555(n+1)`
-/

namespace A210556.P15498165299501482229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210555 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A210555 (n + 1)

end

end A210556.P15498165299501482229

/-! ## A210556.P17029739322923524399

`A107616(A043318(n+1))+A025581(n)`
-/

namespace A210556.P17029739322923524399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107616 (A043318 (n + 1)).toNat + A025581 n

end

end A210556.P17029739322923524399

/-! ## A210556.P13230895081541315969

`A001511(A319511(n))*A004736(n+1)`
-/

namespace A210556.P13230895081541315969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A319511 n).toNat * A004736 (n + 1)

end

end A210556.P13230895081541315969

/-! ## A210556.P5819534535571019961

`A217928(A130128(n+1)^A070914(n))`
-/

namespace A210556.P5819534535571019961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (SequenceMachineLib.roundAway ((A130128 (n + 1) : ℚ) ^ (A070914 n : ℤ))).toNat

end

end A210556.P5819534535571019961

/-!
# A210557: Triangle of coefficients of polynomials u(n,x) jointly generated with A210558; see the Formula section.

The programs for A210557, there is no canonical definition to state claims against.
-/

/-! ## A210557.P15780541385626780752

`(A208339(n+1)+A208338(n+1))/2`
-/

namespace A210557.P15780541385626780752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208339 (n + 1) + A208338 (n + 1) : ℚ) / 2

end

end A210557.P15780541385626780752

/-! ## A210557.P4464202995531816011

`(A209129(n+1)+A209128(n+1))/2`
-/

namespace A210557.P4464202995531816011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209129 (n + 1) + A209128 (n + 1) : ℚ) / 2

end

end A210557.P4464202995531816011

/-! ## A210557.P11932777201812765852

`A164981(∑[char[∑[n]]]²-n)`
-/

namespace A210557.P11932777201812765852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164981 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A210557.P11932777201812765852

/-! ## A210557.P11713705494239548805

`A208338(n+1)+A014682(A208339(n+1)-A208338(n+1))`
-/

namespace A210557.P11713705494239548805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + A014682 (A208339 (n + 1) - A208338 (n + 1)).toNat

end

end A210557.P11713705494239548805

/-! ## A210557.P8162183070757833943

`A014682(A208339(n+1)+A208338(n+1))`
-/

namespace A210557.P8162183070757833943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A208339 (n + 1) + A208338 (n + 1)).toNat

end

end A210557.P8162183070757833943

/-! ## A210557.P3899630076136557970

`A014682(A209129(n+1)+A209128(n+1))`
-/

namespace A210557.P3899630076136557970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209129 (n + 1) + A209128 (n + 1)).toNat

end

end A210557.P3899630076136557970

/-! ## A210557.P14761088080864614133

`A208338(n+1)+A175126(A208339(n+1)-A208338(n+1))`
-/

namespace A210557.P14761088080864614133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + A175126 (A208339 (n + 1) - A208338 (n + 1)).toNat

end

end A210557.P14761088080864614133

/-! ## A210557.P7892786696174057547

`A208338(n+1)+A004525(A208339(n+1)-A208338(n+1))`
-/

namespace A210557.P7892786696174057547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + A004525 (A208339 (n + 1) - A208338 (n + 1)).toNat

end

end A210557.P7892786696174057547

/-! ## A210557.P16733714144826769466

`A208338(n+1)+A026741(A208339(n+1)-A208338(n+1))`
-/

namespace A210557.P16733714144826769466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + A026741 (A208339 (n + 1) - A208338 (n + 1)).toNat

end

end A210557.P16733714144826769466

/-! ## A210557.P8237221299369111924

`A175126(A208339(n+1)+A208338(n+1))`
-/

namespace A210557.P8237221299369111924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A208339 (n + 1) + A208338 (n + 1)).toNat

end

end A210557.P8237221299369111924

/-!
# A210558: Triangle of coefficients of polynomials v(n,x) jointly generated with A210557; see the Formula section.

The programs for A210558, there is no canonical definition to state claims against.
-/

/-! ## A210558.P18327622746123707501

`A208339(n+1)+A209152(n+1)-A208338(n+1)`
-/

namespace A210558.P18327622746123707501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208339 (n + 1) + (A209152 (n + 1) - A208338 (n + 1))

end

end A210558.P18327622746123707501

/-! ## A210558.P1023752929507467187

`A208338(comp[∑[n]]+1)`
-/

namespace A210558.P1023752929507467187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A210558.P1023752929507467187

/-! ## A210558.P5393622809917986202

`abs(1-A208338(A014132(n+1)+1))+1`
-/

namespace A210558.P5393622809917986202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A208338 (A014132 (n + 1) + 1).toNat| + 1

end

end A210558.P5393622809917986202

/-!
# A210559: Triangle of coefficients of polynomials u(n,x) jointly generated with A210560; see the Formula section.

The programs for A210559, there is no canonical definition to state claims against.
-/

/-! ## A210559.P15483149355384832

`A210565(n+1)+A038137(n)-A210595(n+1)`
-/

namespace A210559.P15483149355384832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) + (A038137 n - A210595 (n + 1))

end

end A210559.P15483149355384832

/-! ## A210559.P2314408048032777656

`A209703(n+1)+A209704(n+1)-A209756(n+1)`
-/

namespace A210559.P2314408048032777656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209703 (n + 1) + (A209704 (n + 1) - A209756 (n + 1))

end

end A210559.P2314408048032777656

/-! ## A210559.P6211594554778938819

`A210595(n+2)-Δ[A210565(n+1)]`
-/

namespace A210559.P6211594554778938819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210595 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210559.P6211594554778938819

/-! ## A210559.P9526775974865578348

`A210565(n+1)+A210595(n+2)-A210565(n+2)`
-/

namespace A210559.P9526775974865578348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) + (A210595 (n + 2) - A210565 (n + 2))

end

end A210559.P9526775974865578348

/-! ## A210559.P4193965047851681803

`A208608(n+1)+A155161(A038722(n+1))`
-/

namespace A210559.P4193965047851681803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208608 (n + 1) + A155161 (A038722 (n + 1)).toNat

end

end A210559.P4193965047851681803

/-!
# A210560: Triangle of coefficients of polynomials v(n,x) jointly generated with A210559; see the Formula section.

The programs for A210560, there is no canonical definition to state claims against.
-/

/-! ## A210560.P18037583912474756827

`2*A210595(n+1)-A038137(n)`
-/

namespace A210560.P18037583912474756827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210595 (n + 1) - A038137 n

end

end A210560.P18037583912474756827

/-! ## A210560.P15910527042996643791

`2*A210595(n+1)-A037027(A061579(n))`
-/

namespace A210560.P15910527042996643791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210595 (n + 1) - A037027 (A061579 n).toNat

end

end A210560.P15910527042996643791

/-! ## A210560.P15089256507624143300

`A210565(n+1)+A210595(n+1)-A210559(n+1)`
-/

namespace A210560.P15089256507624143300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) + (A210595 (n + 1) - A210559 (n + 1))

end

end A210560.P15089256507624143300

/-! ## A210560.P6123388403488833033

`A210565(n+2)-Δ[A210595(n+1)]`
-/

namespace A210560.P6123388403488833033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210560.P6123388403488833033

/-! ## A210560.P7308400199803788018

`A210595(n+1)+A210565(n+2)-A210595(n+2)`
-/

namespace A210560.P7308400199803788018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210595 (n + 1) + (A210565 (n + 2) - A210595 (n + 2))

end

end A210560.P7308400199803788018

/-! ## A210560.P7739724824509124246

`A004277(A210595(n+1))-A038137(n)`
-/

namespace A210560.P7739724824509124246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210595 (n + 1)).toNat - A038137 n

end

end A210560.P7739724824509124246

/-!
# A210561: Triangle of coefficients of polynomials u(n,x) jointly generated with A210562; see the Formula section.

The programs for A210561, there is no canonical definition to state claims against.
-/

/-! ## A210561.P14608715768670979283

`(A210562(n+1)+A099089(n))/2`
-/

namespace A210561.P14608715768670979283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210562 (n + 1) + A099089 n : ℚ) / 2

end

end A210561.P14608715768670979283

/-! ## A210561.P9808805149279333509

`A273943(A210562(n+1)-A099089(n))+A099089(n)`
-/

namespace A210561.P9808805149279333509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A210562 (n + 1) - A099089 n).toNat + A099089 n

end

end A210561.P9808805149279333509

/-! ## A210561.P15532238999593779217

`A273943(A210562(n+1)+A099089(n))`
-/

namespace A210561.P15532238999593779217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A210562 (n + 1) + A099089 n).toNat

end

end A210561.P15532238999593779217

/-! ## A210561.P11744705497348091509

`A103391(A210562(n+1)+A099089(n))-1`
-/

namespace A210561.P11744705497348091509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A210562 (n + 1) + A099089 n).toNat - 1

end

end A210561.P11744705497348091509

/-! ## A210561.P2498602507924524115

`A099089(n)+A001281(A210562(n+1)-A099089(n))`
-/

namespace A210561.P2498602507924524115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n + A001281 (A210562 (n + 1) - A099089 n).toNat

end

end A210561.P2498602507924524115

/-! ## A210561.P4537614559188047281

`A099089(n)+A025480(A210562(n+1)-A099089(n))`
-/

namespace A210561.P4537614559188047281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n + A025480 (A210562 (n + 1) - A099089 n).toNat

end

end A210561.P4537614559188047281

/-! ## A210561.P4346431155953978239

`A001281(A210562(n+1)+A099089(n))`
-/

namespace A210561.P4346431155953978239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A210562 (n + 1) + A099089 n).toNat

end

end A210561.P4346431155953978239

/-! ## A210561.P15387347295197624597

`A004526(A210562(n+1)+A099089(n))`
-/

namespace A210561.P15387347295197624597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A210562 (n + 1) + A099089 n).toNat

end

end A210561.P15387347295197624597

/-! ## A210561.P420433779257327859

`A025480(A210562(n+1)+A099089(n))`
-/

namespace A210561.P420433779257327859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A210562 (n + 1) + A099089 n).toNat

end

end A210561.P420433779257327859

/-! ## A210561.P8489995909962574627

`A110654(A210562(n+1)+A099089(n))`
-/

namespace A210561.P8489995909962574627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A210562 (n + 1) + A099089 n).toNat

end

end A210561.P8489995909962574627

/-!
# A210562: Triangle of coefficients of polynomials v(n,x) jointly generated with A210561; see the Formula section.

The programs for A210562, there is no canonical definition to state claims against.
-/

/-! ## A210562.P414691605364749717

`2*A210561(n+1)-A099089(n)`
-/

namespace A210562.P414691605364749717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210561 (n + 1) - A099089 n

end

end A210562.P414691605364749717

/-! ## A210562.P15403146543706650482

`A210561(comp[∑[n]]+1)-A210561(n+1)`
-/

namespace A210562.P15403146543706650482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A210561 (n + 1)

end

end A210562.P15403146543706650482

/-! ## A210562.P9313249418295572747

`A004277(A210561(n+1))-A099089(n)`
-/

namespace A210562.P9313249418295572747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210561 (n + 1)).toNat - A099089 n

end

end A210562.P9313249418295572747

/-!
# A210563: Triangle of coefficients of polynomials u(n,x) jointly generated with A210564; see the Formula section.

The programs for A210563, there is no canonical definition to state claims against.
-/

/-! ## A210563.P17100343719461147678

`A056556(2*A194576(n+1))`
-/

namespace A210563.P17100343719461147678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (2 * A194576 (n + 1)).toNat

end

end A210563.P17100343719461147678

/-! ## A210563.P14710113596855200709

`A033922(A059268(n)²*A113025(n))`
-/

namespace A210563.P14710113596855200709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (A059268 n ^ 2 * A113025 n).toNat

end

end A210563.P14710113596855200709

/-! ## A210563.P6177267767358215488

`A056556(A194576(n+1)+A194576(n+1)+1)`
-/

namespace A210563.P6177267767358215488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A194576 (n + 1) + (A194576 (n + 1) + 1)).toNat

end

end A210563.P6177267767358215488

/-! ## A210563.P209801076589115370

`A033922(A059268(n)*A113025(n)*A059268(n))`
-/

namespace A210563.P209801076589115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (A059268 n * A113025 n * A059268 n).toNat

end

end A210563.P209801076589115370

/-! ## A210563.P1938497959426248591

`A078644(n^A103438(n))`
-/

namespace A210563.P1938497959426248591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A103438 n : ℤ))).toNat

end

end A210563.P1938497959426248591

/-!
# A210564: Triangle of coefficients of polynomials v(n,x) jointly generated with A210563; see the Formula section.

The programs for A210564, there is no canonical definition to state claims against.
-/

/-! ## A210564.P53446694765783991

`A210563(comp[∑[n]]+1)-A210563(n+1)`
-/

namespace A210564.P53446694765783991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A210563 (n + 1)

end

end A210564.P53446694765783991

/-!
# A210565: Triangle of coefficients of polynomials u(n,x) jointly generated with A210595; see the Formula section.

The programs for A210565, there is no canonical definition to state claims against.
-/

/-! ## A210565.P15023332206655173907

`A038137(A014132(n+1))`
-/

namespace A210565.P15023332206655173907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A014132 (n + 1)).toNat

end

end A210565.P15023332206655173907

/-! ## A210565.P13022027830830678095

`A037027(A099375(n)+n)`
-/

namespace A210565.P13022027830830678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A099375 n + (n : ℤ)).toNat

end

end A210565.P13022027830830678095

/-! ## A210565.P7571681271085859545

`A038137(A007401(n+1)+1)`
-/

namespace A210565.P7571681271085859545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A007401 (n + 1) + 1).toNat

end

end A210565.P7571681271085859545

/-! ## A210565.P7065140062184000310

`A038137(A003056(n)+2+n)`
-/

namespace A210565.P7065140062184000310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A003056 n + 2 + (n : ℤ)).toNat

end

end A210565.P7065140062184000310

/-! ## A210565.P7843647565383973111

`A037027(2*A025581(n)+n+1)`
-/

namespace A210565.P7843647565383973111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A210565.P7843647565383973111

/-! ## A210565.P10924865457813591859

`A208337(n+1)+A209151(n+1)-A038137(n)`
-/

namespace A210565.P10924865457813591859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A209151 (n + 1) - A038137 n)

end

end A210565.P10924865457813591859

/-! ## A210565.P15708512868173538390

`A209151(n+1)+A155161(A038722(n+1))`
-/

namespace A210565.P15708512868173538390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (n + 1) + A155161 (A038722 (n + 1)).toNat

end

end A210565.P15708512868173538390

/-! ## A210565.P8932829980907088078

`A038137(lt[char[∑[n]], 1])`
-/

namespace A210565.P8932829980907088078
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
  A038137 (SequenceMachineLib.nth (fun j => f1 j < f4 j) n)

end

end A210565.P8932829980907088078

/-! ## A210565.P7707681913022396011

`A037027(A380649(n+1))`
-/

namespace A210565.P7707681913022396011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A380649 (n + 1)).toNat

end

end A210565.P7707681913022396011

/-!
# A210566: Primes not expressed in form n<+>4, where operation <+> defined in A206853.

The programs for A210566, there is no canonical definition to state claims against.
-/

/-! ## A210566.P1862993882600878085

`p?[comp[A182336(n)]]`
-/

namespace A210566.P1862993882600878085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182336 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210566.P1862993882600878085

/-! ## A210566.P4936424054448868822

`∩[A000040(n+1), comp[A182336(n)]]`
-/

namespace A210566.P4936424054448868822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182336 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A210566.P4936424054448868822

/-! ## A210566.P8530941817733885853

`record[p?[A008618(A209242(n+3))]]`
-/

namespace A210566.P8530941817733885853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A209242 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210566.P8530941817733885853

/-! ## A210566.P16922069254558509090

`∩[A181172(n+1), A368533(n+1)]`
-/

namespace A210566.P16922069254558509090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210566.P16922069254558509090

/-! ## A210566.P17693179999557849261

`A342191(∪[A207472(3*n+1), A184902(n+1)])`
-/

namespace A210566.P17693179999557849261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207472 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A210566.P17693179999557849261

/-!
# A210567: Meandric numbers for a river crossing up to 18 parallel roads at n points.

The programs for A210567, there is no canonical definition to state claims against.
-/

/-! ## A210567.P15839675062351347281

`A210592(n)-A101637(A208728(n+1))`
-/

namespace A210567.P15839675062351347281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A101637 (A208728 (n + 1)).toNat

end

end A210567.P15839675062351347281

/-! ## A210567.P9988475311441495669

`A210592(n)-A241470(A172353(n+4))`
-/

namespace A210567.P9988475311441495669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A241470 (A172353 (n + 4)).toNat

end

end A210567.P9988475311441495669

/-! ## A210567.P9062522194540148499

`A380367(2*n²)-A101637(A208728(n+1))`
-/

namespace A210567.P9062522194540148499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (2 * n ^ 2) - A101637 (A208728 (n + 1)).toNat

end

end A210567.P9062522194540148499

/-!
# A210568: Array read by upwards antidiagonals: majority index of "comet" C_{s,t}.

The programs for A210568, there is no canonical definition to state claims against.
-/

/-! ## A210568.P14068593447490217156

`A227177((A061579(n)+2)%A132453(n+1))`
-/

namespace A210568.P14068593447490217156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (Int.tmod (A061579 n + 2) (A132453 (n + 1))).toNat

end

end A210568.P14068593447490217156

/-! ## A210568.P8689915204854033898

`A097944(A300267(n+2)+A028387(n+1))`
-/

namespace A210568.P8689915204854033898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A300267 (n + 2) + A028387 (n + 1)).toNat

end

end A210568.P8689915204854033898

/-! ## A210568.P13394504717308879390

`A000196(A273620(n+1)+A198454(2*n+1))`
-/

namespace A210568.P13394504717308879390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A273620 (n + 1) + A198454 (2 * n + 1)).toNat

end

end A210568.P13394504717308879390

/-! ## A210568.P2266958355782543925

`A125269(A264655(n+2)+3*A005379(n)+1)`
-/

namespace A210568.P2266958355782543925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A264655 (n + 2) + 3 * A005379 n + 1).toNat

end

end A210568.P2266958355782543925

/-!
# A210569: a(n) = (n-3)*(n-2)*(n-1)*n*(n+1)/30.

The programs for A210569, the canonical program `A210569.P2904850707922656817` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210569 has offset 0).

The definition of A210569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*(n-2)*(n-1)*n*(n+1)/30` (program `A210569.P2947319143464576320`, by `A210569.P2947319143464576320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210569.P14607211965645765618

`4*C(n+1, 5)`
-/

namespace A210569.P14607211965645765618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 1) 5

end

end A210569.P14607211965645765618

namespace A210569

/-- `4*C(n+1, 5)` -/
def P14607211965645765618.Spec : Prop :=
  ∀ n, (P14607211965645765618.a n : ℤ) = A210569 n

theorem P14607211965645765618.correct : P14607211965645765618.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P14607211965645765618.a, A210569.P2904850707922656817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P2904850707922656817

`n*C(n, 4)-C(n, 5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210569

/-- `n*C(n, 4)-C(n, 5)` -/
def P2904850707922656817.Spec : Prop :=
  ∀ n, P2904850707922656817.a n = A210569 n

theorem P2904850707922656817.correct : P2904850707922656817.Spec := by
  intro n
  simp only [A210569]

end A210569

/-! ## A210569.P2947319143464576320

`(n-3)*(n-2)*(n-1)*n*(n+1)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210569.P2947319143464576320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3) * ((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) : ℚ) / 30

end

end A210569.P2947319143464576320

namespace A210569

/-- `(n-3)*(n-2)*(n-1)*n*(n+1)/30` -/
def P2947319143464576320.Spec : Prop :=
  ∀ n, P2947319143464576320.a n = (A210569 n : ℚ)

theorem P2947319143464576320.correct : P2947319143464576320.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P2947319143464576320.a, A210569.P2904850707922656817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P11949406200059765381

`4*A000389(n+1)`
-/

namespace A210569.P11949406200059765381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000389 (n + 1)

end

end A210569.P11949406200059765381

namespace A210569

/-- `4*A000389(n+1)` -/
def P11949406200059765381.Spec : Prop :=
  ∀ n, P11949406200059765381.a n = A210569 n

theorem P11949406200059765381.correct : P11949406200059765381.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P11949406200059765381.a, A210569.P2904850707922656817.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P3277549853232173275

`∑[4*C(n, 4)]`
-/

namespace A210569.P3277549853232173275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210569.P3277549853232173275

namespace A210569

/-- `∑[4*C(n, 4)]` -/
def P3277549853232173275.Spec : Prop :=
  ∀ n, (P3277549853232173275.a n : ℤ) = A210569 n

end A210569

/-! ## A210569.P6642804648048908361

`∑[2*A034827(n)]`
-/

namespace A210569.P6642804648048908361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210569.P6642804648048908361

namespace A210569

/-- `∑[2*A034827(n)]` -/
def P6642804648048908361.Spec : Prop :=
  ∀ n, P6642804648048908361.a n = A210569 n

end A210569

/-! ## A210569.P14726259929555127118

`∑[4*A000332(n)]`
-/

namespace A210569.P14726259929555127118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210569.P14726259929555127118

namespace A210569

/-- `∑[4*A000332(n)]` -/
def P14726259929555127118.Spec : Prop :=
  ∀ n, P14726259929555127118.a n = A210569 n

end A210569

/-! ## A210569.P1859964472175393056

`n*A000332(n)-A000389(n)`
-/

namespace A210569.P1859964472175393056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000332 n - A000389 n

end

end A210569.P1859964472175393056

namespace A210569

/-- `n*A000332(n)-A000389(n)` -/
def P1859964472175393056.Spec : Prop :=
  ∀ n, P1859964472175393056.a n = A210569 n

end A210569

/-! ## A210569.P2182524583712446320

`∑[A050534(n)+A000332(n)]-A050534(n)`
-/

namespace A210569.P2182524583712446320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050534 n

end

end A210569.P2182524583712446320

namespace A210569

/-- `∑[A050534(n)+A000332(n)]-A050534(n)` -/
def P2182524583712446320.Spec : Prop :=
  ∀ n, P2182524583712446320.a n = A210569 n

end A210569

/-! ## A210569.P17977015395891135097

`A000389(n+1)+A253942(n+1)-A050534(n)`
-/

namespace A210569.P17977015395891135097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) + (A253942 (n + 1) - A050534 n)

end

end A210569.P17977015395891135097

namespace A210569

/-- `A000389(n+1)+A253942(n+1)-A050534(n)` -/
def P17977015395891135097.Spec : Prop :=
  ∀ n, P17977015395891135097.a n = A210569 n

theorem P17977015395891135097.correct : P17977015395891135097.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P17977015395891135097.a, A210569.P2904850707922656817.a, A000389, A000389.P15450220129395289428.a, A050534, A050534.P12216670126680451922.a, A253942, A253942.P11522209056307406865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P13522241990663589247

`A208536(n+1)-A000217(n)*A007290(n+1)`
-/

namespace A210569.P13522241990663589247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208536 (n + 1) - A000217 n * A007290 (n + 1)

end

end A210569.P13522241990663589247

namespace A210569

/-- `A208536(n+1)-A000217(n)*A007290(n+1)` -/
def P13522241990663589247.Spec : Prop :=
  ∀ n, P13522241990663589247.a n = A210569 n

end A210569

/-! ## A210569.P376510877378908707

`A033488(n+1)/A033486(n+1)*A300847(n+1)`
-/

namespace A210569.P376510877378908707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033488 (n + 1) : ℚ) / (A033486 (n + 1) : ℚ) * (A300847 (n + 1) : ℚ)

end

end A210569.P376510877378908707

namespace A210569

/-- `A033488(n+1)/A033486(n+1)*A300847(n+1)` -/
def P376510877378908707.Spec : Prop :=
  ∀ n, P376510877378908707.a n = (A210569 n : ℚ)

end A210569

/-! ## A210569.P18166490419943351712

`Δ[4*A000579(n+1)]`
-/

namespace A210569.P18166490419943351712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210569.P18166490419943351712

namespace A210569

/-- `Δ[4*A000579(n+1)]` -/
def P18166490419943351712.Spec : Prop :=
  ∀ n, P18166490419943351712.a n = A210569 n

theorem P18166490419943351712.correct : P18166490419943351712.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P18166490419943351712.f1, A210569.P18166490419943351712.a, A210569.P2904850707922656817.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P3677091227679863331

`Δ[A000910(n+1)]-A000389(n+1)`
-/

namespace A210569.P3677091227679863331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000389 (n + 1)

end

end A210569.P3677091227679863331

namespace A210569

/-- `Δ[A000910(n+1)]-A000389(n+1)` -/
def P3677091227679863331.Spec : Prop :=
  ∀ n, P3677091227679863331.a n = A210569 n

theorem P3677091227679863331.correct : P3677091227679863331.Spec := by
  intro n
  simp only [A210569, Nat.add_sub_cancel, A210569.P3677091227679863331.f1, A210569.P3677091227679863331.a, A210569.P2904850707922656817.a, A000389, A000389.P15450220129395289428.a, A000910, A000910.P14640695646812070873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A210569

/-! ## A210569.P14480320742963227897

`∑[A330299(2*n+1)]-A330299(2*n+1)`
-/

namespace A210569.P14480320742963227897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330299 (2 * n + 1)

end

end A210569.P14480320742963227897

namespace A210569

/-- `∑[A330299(2*n+1)]-A330299(2*n+1)` -/
def P14480320742963227897.Spec : Prop :=
  ∀ n, P14480320742963227897.a n = A210569 n

end A210569

/-!
# A210570: Consider all sequences of n distinct positive integers for which no two different elements have a difference which is a square. This sequence gives the smallest maximal integer in such sequences.

The programs for A210570, there is no canonical definition to state claims against.
-/

/-! ## A210570.P8556727599044641870

`eq[A000578(A014586(n)), A260897(n+1)]`
-/

namespace A210570.P8556727599044641870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A014586 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210570.P8556727599044641870

/-! ## A210570.P402233700612429135

`eq[A034476(n+1)!, A014586(n)]`
-/

namespace A210570.P402233700612429135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034476 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210570.P402233700612429135

/-! ## A210570.P1863127368576968234

`eq[1, A014586(A034476(n+1)+n)]`
-/

namespace A210570.P1863127368576968234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 (A034476 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210570.P1863127368576968234

/-! ## A210570.P8631575250593664338

`A014261(n+1)+A001221(A001790(n))`
-/

namespace A210570.P8631575250593664338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1) + A001221 (A001790 n).toNat

end

end A210570.P8631575250593664338

/-! ## A210570.P7943008272566667860

`A224839(n+1)-A198318(A143007(n))`
-/

namespace A210570.P7943008272566667860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (n + 1) - A198318 (A143007 n).toNat

end

end A210570.P7943008272566667860

/-!
# A210572: Triangle read by rows: T(n,k) = number of vertices of eccentricity k in the Lucas cube graph of order n.

The programs for A210572, there is no canonical definition to state claims against.
-/

/-! ## A210572.P1131404829268559261

`A002654(A278688(3*n+1)+∑{d}[n+1, val(#%10+3, 10)])`
-/

namespace A210572.P1131404829268559261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A278688 (3 * n + 1) + ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10 : ℕ) : ℤ)).toNat

end

end A210572.P1131404829268559261

/-! ## A210572.P17492538370059887191

`A117506(n)%A001203(A052103(n+1))`
-/

namespace A210572.P17492538370059887191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117506 n) (A001203 (A052103 (n + 1)).toNat)

end

end A210572.P17492538370059887191

/-! ## A210572.P3532373433176511414

`and(A071975(A014816(n+1)), A321877(n))`
-/

namespace A210572.P3532373433176511414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071975 (A014816 (n + 1)).toNat) (A321877 n)

end

end A210572.P3532373433176511414

/-! ## A210572.P14600703851642010031

`A215879(xor(A215887(n), A215897(n+1)))`
-/

namespace A210572.P14600703851642010031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (Int.xor (A215887 n) (A215897 (n + 1))).toNat

end

end A210572.P14600703851642010031

/-!
# A210573: E.g.f.: (1-x^2)^(-3/2)*exp(-x^2+x/(1-x)).

The programs for A210573, there is no canonical definition to state claims against.
-/

/-! ## A210573.P12549656661534404358

`A302437(A000309(n))`
-/

namespace A210573.P12549656661534404358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302437 (A000309 n).toNat

end

end A210573.P12549656661534404358

/-! ## A210573.P10401119653803275142

`A324588(A058499(n))`
-/

namespace A210573.P10401119653803275142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (A058499 n).toNat

end

end A210573.P10401119653803275142

/-!
# A210574: Lower triangular matrix in the LU-decomposition of the Vandermonde determinants generated by Fibonacci numbers.

The programs for A210574, there is no canonical definition to state claims against.
-/

/-! ## A210574.P11370301907583228266

`A287641(n)!!*A008277(n+1)`
-/

namespace A210574.P11370301907583228266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A287641 n).toNat) : ℤ) * A008277 (n + 1)

end

end A210574.P11370301907583228266

/-! ## A210574.P17725263026753588776

`gcd(A086010(A003945(n)), A163626(n))`
-/

namespace A210574.P17725263026753588776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086010 (A003945 n).toNat) (A163626 n)

end

end A210574.P17725263026753588776

/-! ## A210574.P6209433168342222540

`A005136(A117505(n))*A008277(n+1)`
-/

namespace A210574.P6209433168342222540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A117505 n).toNat * A008277 (n + 1)

end

end A210574.P6209433168342222540

/-! ## A210574.P2516454357009604845

`A000665(A143632(n))*A008277(n+1)`
-/

namespace A210574.P2516454357009604845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000665 (A143632 n).toNat * A008277 (n + 1)

end

end A210574.P2516454357009604845

/-! ## A210574.P1931887450137806777

`A008277(n+1)*A043288(A109192(n))`
-/

namespace A210574.P1931887450137806777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A043288 (A109192 n).toNat

end

end A210574.P1931887450137806777

/-!
# A210575: Row sums of triangle A210574.

The programs for A210575, there is no canonical definition to state claims against.
-/

/-! ## A210575.P2918332330925876112

`∑[A255975(∏[n!])]`
-/

namespace A210575.P2918332330925876112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255975 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210575.P2918332330925876112

/-!
# A210577: Natural numbers equal to the sum of two nontrivial binomial coefficients, sorted, duplicates removed.

The programs for A210577, there is no canonical definition to state claims against.
-/

/-! ## A210577.P12376534037345585132

`lt[A325005(2*(n+2)), A325005(A119620(n))]`
-/

namespace A210577.P12376534037345585132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (A119620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210577.P12376534037345585132

/-! ## A210577.P16288615642052401462

`A068509(6*A106839(n))`
-/

namespace A210577.P16288615642052401462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (6 * A106839 n).toNat

end

end A210577.P16288615642052401462

/-! ## A210577.P1181602880046322419

`A068509(Δ[A068628(n+1)])`
-/

namespace A210577.P1181602880046322419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (f1 (n + 1) - f1 n).toNat

end

end A210577.P1181602880046322419

/-! ## A210577.P3580042355683196694

`A068509(12*A004770(n+1))`
-/

namespace A210577.P3580042355683196694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (12 * A004770 (n + 1)).toNat

end

end A210577.P3580042355683196694

/-! ## A210577.P16140884508848009837

`lt[A162247(n+1), A002635(A217876(n))]`
-/

namespace A210577.P16140884508848009837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A217876 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210577.P16140884508848009837

/-!
# A210578: Natural numbers that can be expressed as the sum of one or two nontrivial binomial coefficients, sorted, duplicates removed.

The programs for A210578, there is no canonical definition to state claims against.
-/

/-! ## A210578.P7672387340194098161

`∪[A006987(n+1), A210577(n+1)]`
-/

namespace A210578.P7672387340194098161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210578.P7672387340194098161

/-! ## A210578.P17018580527206031465

`∪[A182237(n+1), A210577(n+1)]`
-/

namespace A210578.P17018580527206031465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210578.P17018580527206031465

/-! ## A210578.P5341521582859981135

`∪[A210577(n+1), A000217(n+3)]`
-/

namespace A210578.P5341521582859981135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210578.P5341521582859981135

/-!
# A210579: a(1)=2, a(n+1)=a(n)*(n-th digit of the sequence or 10 in case of digit '0').

The programs for A210579, there is no canonical definition to state claims against.
-/

/-! ## A210579.P15140377080136670216

`A337109(n+1)%A337836(n+2)`
-/

namespace A210579.P15140377080136670216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337109 (n + 1)) (A337836 (n + 2))

end

end A210579.P15140377080136670216

/-! ## A210579.P4343484845831363854

`A337109(and(1, A147128(n+1))+n)`
-/

namespace A210579.P4343484845831363854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337109 (Int.land 1 (A147128 (n + 1)) + (n : ℤ)).toNat

end

end A210579.P4343484845831363854

/-! ## A210579.P10353234931460961390

`and(-A018528(n+1), A337109(n+1))`
-/

namespace A210579.P10353234931460961390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A018528 (n + 1)) (A337109 (n + 1))

end

end A210579.P10353234931460961390

/-! ## A210579.P2761591719958147561

`and(-A337114(n+4), A337109(n+1))`
-/

namespace A210579.P2761591719958147561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A337114 (n + 4)) (A337109 (n + 1))

end

end A210579.P2761591719958147561

/-! ## A210579.P15961656156345217797

`A337109(n+1)%A005898(A069778(n))`
-/

namespace A210579.P15961656156345217797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337109 (n + 1)) (A005898 (A069778 n).toNat)

end

end A210579.P15961656156345217797

/-!
# A210580: Concatenation of 1, 2, 3, ... represented in base 3/2 in the spirit of Champernowne's constant.

The programs for A210580, there is no canonical definition to state claims against.
-/

/-! ## A210580.P13482354351246622208

`A285358(A048160(n+1))+A228039(n+1)`
-/

namespace A210580.P13482354351246622208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (A048160 (n + 1)).toNat + A228039 (n + 1)

end

end A210580.P13482354351246622208

/-! ## A210580.P1210840921701502564

`A051699(A122140(n+3)%A128117(n+1))`
-/

namespace A210580.P1210840921701502564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (Int.tmod (A122140 (n + 3)) (A128117 (n + 1))).toNat

end

end A210580.P1210840921701502564

/-! ## A210580.P13571557667668252753

`(A152271(n)*A249444(2*n+3))%3`
-/

namespace A210580.P13571557667668252753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152271 n * A249444 (2 * n + 3)) 3

end

end A210580.P13571557667668252753

/-! ## A210580.P4525183976018876158

`A090193(A113103(A248758(n)))`
-/

namespace A210580.P4525183976018876158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (A113103 (A248758 n).toNat).toNat

end

end A210580.P4525183976018876158

/-! ## A210580.P8406574133685243585

`A036581(or(A064989(n+1), A293335(n)))`
-/

namespace A210580.P8406574133685243585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (Int.lor (A064989 (n + 1)) (A293335 n)).toNat

end

end A210580.P8406574133685243585

/-!
# A210581: Bras-Amorós number f_n for numerical semigroups of genus n.

The programs for A210581, there is no canonical definition to state claims against.
-/

/-! ## A210581.P1809566973525443271

`A023193((n/2+1)*∑[3^n])`
-/

namespace A210581.P1809566973525443271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway (((n : ℚ) / 2 + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A210581.P1809566973525443271

/-! ## A210581.P3304693560001591535

`A293176(3*n²)+round(2*n/3)`
-/

namespace A210581.P3304693560001591535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293176 (3 * n ^ 2) + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A210581.P3304693560001591535

/-!
# A210584: List of Lyndon words on {1,2,3,4} sorted first by length and then lexicographically.

The programs for A210584, there is no canonical definition to state claims against.
-/

/-! ## A210584.P14351023216316788149

`∩[A210585(n+1), A007091(n)]`
-/

namespace A210584.P14351023216316788149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210584.P14351023216316788149

/-! ## A210584.P7322684504033619528

`∩[A084544(n+1), A210585(n+1)]`
-/

namespace A210584.P7322684504033619528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210584.P7322684504033619528

/-! ## A210584.P10037905776432699190

`∩[A135210(n+1), A210585(n+1)]`
-/

namespace A210584.P10037905776432699190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210584.P10037905776432699190

/-! ## A210584.P3231201533815316578

`∩[A084544(n+1), A102823(n)]`
-/

namespace A210584.P3231201533815316578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210584.P3231201533815316578

/-! ## A210584.P15932257372651321021

`eq[A102675(n), A337127(n+1)]`
-/

namespace A210584.P15932257372651321021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210584.P15932257372651321021

/-!
# A210585: List of Lyndon words on {1,...,8} sorted first by length and then lexicographically.

The programs for A210585, there is no canonical definition to state claims against.
-/

/-! ## A210585.P12754999654171351640

`eq[A123895(n), A213217(n+1)]`
-/

namespace A210585.P12754999654171351640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210585.P12754999654171351640

/-! ## A210585.P1533321080510870397

`∩[A102823(n), A214678(n+1)]`
-/

namespace A210585.P1533321080510870397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210585.P1533321080510870397

/-! ## A210585.P5232790750808032120

`lt[A213217(n), A321243(A269667(n))]`
-/

namespace A210585.P5232790750808032120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A269667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210585.P5232790750808032120

/-! ## A210585.P2972308108848130575

`lt[A006530(A139337(n)), A270172(10*n)]`
-/

namespace A210585.P2972308108848130575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210585.P2972308108848130575

/-! ## A210585.P6816598965515949823

`lt[A076313(n+1), -1]`
-/

namespace A210585.P6816598965515949823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210585.P6816598965515949823

/-!
# A210586: Triangle T(n,k) read by rows: T(n,k) is the number of rooted hypertrees on n labeled vertices with k hyperedges, n >= 2, k >= 1.

The programs for A210586, there is no canonical definition to state claims against.
-/

/-! ## A210586.P6429781847398373433

`A003057(n+2)*A210587(n+2)`
-/

namespace A210586.P6429781847398373433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A210587 (n + 2)

end

end A210586.P6429781847398373433

/-! ## A210586.P10333045230919320471

`(A003056(n)+2)*A210587(n+2)`
-/

namespace A210586.P10333045230919320471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A210587 (n + 2)

end

end A210586.P10333045230919320471

/-! ## A210586.P10340841695588729798

`(A002024(n+1)+1)*A210587(n+2)`
-/

namespace A210586.P10340841695588729798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) + 1) * A210587 (n + 2)

end

end A210586.P10340841695588729798

/-! ## A210586.P594417551689892790

`(A014132(n+1)-n)*A210587(n+2)`
-/

namespace A210586.P594417551689892790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n : ℤ)) * A210587 (n + 2)

end

end A210586.P594417551689892790

/-! ## A210586.P2031391402473945154

`A060762(A131507(n))*A210587(n+2)`
-/

namespace A210586.P2031391402473945154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (A131507 n).toNat * A210587 (n + 2)

end

end A210586.P2031391402473945154

/-! ## A210586.P12705933398990562551

`A000005(A140513(n))*A210587(n+2)`
-/

namespace A210586.P12705933398990562551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140513 n).toNat * A210587 (n + 2)

end

end A210586.P12705933398990562551

/-!
# A210587: Triangle T(n,k) read by rows: T(n,k) is the number of unrooted hypertrees on n labeled vertices with k hyperedges, n >= 2, 1 <= k <= n-1.

The programs for A210587, there is no canonical definition to state claims against.
-/

/-! ## A210587.P18401838055090045125

`A210586(n+2)/A003057(n+2)`
-/

namespace A210587.P18401838055090045125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A210587.P18401838055090045125

/-! ## A210587.P583899593592711436

`A210586(n+2)/(A003056(n)+2)`
-/

namespace A210587.P583899593592711436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A003056 n + 2 : ℚ)

end

end A210587.P583899593592711436

/-! ## A210587.P16988008521672242117

`A210586(n+2)/(A002024(n+1)+1)`
-/

namespace A210587.P16988008521672242117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A002024 (n + 1) + 1 : ℚ)

end

end A210587.P16988008521672242117

/-! ## A210587.P2065558191497862771

`A210586(n+2)/(A014132(n+1)-n)`
-/

namespace A210587.P2065558191497862771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A014132 (n + 1) - (n : ℤ) : ℚ)

end

end A210587.P2065558191497862771

/-! ## A210587.P7923905880289655542

`A210586(n+2)/A002024(A014132(n+1))`
-/

namespace A210587.P7923905880289655542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A002024 (A014132 (n + 1)).toNat : ℚ)

end

end A210587.P7923905880289655542

/-! ## A210587.P9141785734347662074

`A003057(n+2)^A002262(n)*A008277(n+1)`
-/

namespace A210587.P9141785734347662074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A002262 n : ℤ) * (A008277 (n + 1) : ℚ)

end

end A210587.P9141785734347662074

/-! ## A210587.P17877876869274763454

`A210586(n+2)/A000005(A140513(n))`
-/

namespace A210587.P17877876869274763454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210586 (n + 2) : ℚ) / (A000005 (A140513 n).toNat : ℚ)

end

end A210587.P17877876869274763454

/-!
# A210590: Triangle of numbers generated by the Nekrasov-Okounkov formula.

The programs for A210590, there is no canonical definition to state claims against.
-/

/-! ## A210590.P8011132685281131276

`abs(A234937(n))`
-/

namespace A210590.P8011132685281131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234937 n|

end

end A210590.P8011132685281131276

/-! ## A210590.P4791564314993779795

`gcd(A000038(n), A234937(n))`
-/

namespace A210590.P4791564314993779795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A234937 n)

end

end A210590.P4791564314993779795

/-! ## A210590.P8857235412819131526

`lcm(A020985(n), A234937(n))`
-/

namespace A210590.P8857235412819131526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A234937 n)

end

end A210590.P8857235412819131526

/-! ## A210590.P17783716520582986451

`lcm(-A234937(n), A033999(n))`
-/

namespace A210590.P17783716520582986451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A234937 n) (A033999 n)

end

end A210590.P17783716520582986451

/-! ## A210590.P12098788386133580517

`gcd(-A234937(n), A004532(A077066(n+1)))`
-/

namespace A210590.P12098788386133580517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A234937 n) (A004532 (A077066 (n + 1)).toNat)

end

end A210590.P12098788386133580517

/-!
# A210591: G.f. satisfies: A(x) = x + (A(x) - A(x)^2) * A(A(x)) where A(0)=0.

The programs for A210591, there is no canonical definition to state claims against.
-/

/-! ## A210591.P9154313471834280931

`A097483(A023919(n)+n)`
-/

namespace A210591.P9154313471834280931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097483 (A023919 n + (n : ℤ)).toNat

end

end A210591.P9154313471834280931

/-! ## A210591.P5658571354660257694

`A097483(n^A085141(n))`
-/

namespace A210591.P5658571354660257694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097483 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A085141 n : ℤ))).toNat

end

end A210591.P5658571354660257694

/-! ## A210591.P7189085394585613437

`A034887(A189839(n+1)-1)`
-/

namespace A210591.P7189085394585613437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A189839 (n + 1) - 1).toNat

end

end A210591.P7189085394585613437

/-!
# A210594: "Factor-dense" numbers: integers n where (# of proper divisors of n) / log(n) sets a new record.

The programs for A210594, there is no canonical definition to state claims against.
-/

/-! ## A210594.P6800580575524745696

`A317839(A060546(n))+A065218(A064598(n+1))`
-/

namespace A210594.P6800580575524745696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (A060546 n).toNat + A065218 (A064598 (n + 1)).toNat

end

end A210594.P6800580575524745696

/-! ## A210594.P14536657297237116177

`A002182(lt[A122201(3*(n+1)), A243071(n+1)])`
-/

namespace A210594.P14536657297237116177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210594.P14536657297237116177

/-! ## A210594.P5518522494007189086

`A002182(lt[A004698(n+2), A227500(n)])`
-/

namespace A210594.P5518522494007189086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210594.P5518522494007189086

/-! ## A210594.P11474363810751407961

`A106832(A351623(n+1))`
-/

namespace A210594.P11474363810751407961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106832 (A351623 (n + 1)).toNat

end

end A210594.P11474363810751407961

/-! ## A210594.P14682622097047135635

`filter[A080780(n+1), A322586(#)]`
-/

namespace A210594.P14682622097047135635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A210594.P14682622097047135635

/-!
# A210595: Triangle of coefficients of polynomials v(n,x) jointly generated with A209999; see the Formula section.

The programs for A210595, there is no canonical definition to state claims against.
-/

/-! ## A210595.P12106783794863913320

`(A210560(n+1)+A038137(n))/2`
-/

namespace A210595.P12106783794863913320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210560 (n + 1) + A038137 n : ℚ) / 2

end

end A210595.P12106783794863913320

/-! ## A210595.P9753580723988217728

`(A209756(n+1)+A209151(n+1))/2`
-/

namespace A210595.P9753580723988217728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209756 (n + 1) + A209151 (n + 1) : ℚ) / 2

end

end A210595.P9753580723988217728

/-! ## A210595.P14289312161866464424

`A210565(n+1)+A038137(n)-A210559(n+1)`
-/

namespace A210595.P14289312161866464424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) + (A038137 n - A210559 (n + 1))

end

end A210595.P14289312161866464424

/-! ## A210595.P10317050582773126822

`A210559(n+1)+A210560(n+1)-A210565(n+1)`
-/

namespace A210595.P10317050582773126822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210559 (n + 1) + (A210560 (n + 1) - A210565 (n + 1))

end

end A210595.P10317050582773126822

/-! ## A210595.P2287497710984363622

`A209756(n+1)+A004525(A209151(n+1)-A209756(n+1))`
-/

namespace A210595.P2287497710984363622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209756 (n + 1) + A004525 (A209151 (n + 1) - A209756 (n + 1)).toNat

end

end A210595.P2287497710984363622

/-! ## A210595.P12683266741064591459

`A038137(n)+A004525(A210560(n+1)-A038137(n))`
-/

namespace A210595.P12683266741064591459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n + A004525 (A210560 (n + 1) - A038137 n).toNat

end

end A210595.P12683266741064591459

/-! ## A210595.P8668053262471949964

`A064680(A210560(n+1)-A038137(n))+A038137(n)`
-/

namespace A210595.P8668053262471949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A210560 (n + 1) - A038137 n).toNat + A038137 n

end

end A210595.P8668053262471949964

/-! ## A210595.P8998795971179155308

`A004525(A210560(n+1)+A038137(n))`
-/

namespace A210595.P8998795971179155308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A210560 (n + 1) + A038137 n).toNat

end

end A210595.P8998795971179155308

/-! ## A210595.P212703273245419575

`A004526(A210560(n+1)+A038137(n))`
-/

namespace A210595.P212703273245419575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A210560 (n + 1) + A038137 n).toNat

end

end A210595.P212703273245419575

/-! ## A210595.P6420273297573308272

`A064680(A210560(n+1)+A038137(n))`
-/

namespace A210595.P6420273297573308272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A210560 (n + 1) + A038137 n).toNat

end

end A210595.P6420273297573308272

/-!
# A210596: Triangle read by rows of coefficients of polynomials v(n,x) jointly generated with A210221; see the Formula section.

The programs for A210596, there is no canonical definition to state claims against.
-/

/-! ## A210596.P8589533026094683676

`A053538(n)*A059268(n)`
-/

namespace A210596.P8589533026094683676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 n * A059268 n

end

end A210596.P8589533026094683676

/-! ## A210596.P15048329688378188549

`A000079(A002262(n))*A053538(n)`
-/

namespace A210596.P15048329688378188549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A053538 n

end

end A210596.P15048329688378188549

/-! ## A210596.P7813973834915531390

`A011782(A002260(n+1))*A053538(n)`
-/

namespace A210596.P7813973834915531390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A053538 n

end

end A210596.P7813973834915531390

/-! ## A210596.P14761755846656036708

`A208747(n+1)/A208342(n+1)*A053538(n)`
-/

namespace A210596.P14761755846656036708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208747 (n + 1) : ℚ) / (A208342 (n + 1) : ℚ) * (A053538 n : ℚ)

end

end A210596.P14761755846656036708

/-! ## A210596.P13499538927913496661

`A053538(n)*A130321(A061579(n))`
-/

namespace A210596.P13499538927913496661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 n * A130321 (A061579 n).toNat

end

end A210596.P13499538927913496661

/-! ## A210596.P8062295825842830878

`A059268(n)*A208342(A038722(n+1))`
-/

namespace A210596.P8062295825842830878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208342 (A038722 (n + 1)).toNat

end

end A210596.P8062295825842830878

/-! ## A210596.P13936357405214800698

`A053538(n)*A130321(A286147(n))`
-/

namespace A210596.P13936357405214800698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 n * A130321 (A286147 n).toNat

end

end A210596.P13936357405214800698

/-!
# A210597: Triangle of coefficients of polynomials u(n,x) jointly generated with A210602; see the Formula section.

The programs for A210597, there is no canonical definition to state claims against.
-/

/-! ## A210597.P458557132965521294

`A207633(n+2)-A209125(n+1)`
-/

namespace A210597.P458557132965521294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207633 (n + 2) - A209125 (n + 1)

end

end A210597.P458557132965521294

/-! ## A210597.P4770199674261311617

`A204560(A259524(n+1))-char[A319498(n)]`
-/

namespace A210597.P4770199674261311617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319498 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A259524 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210597.P4770199674261311617

/-! ## A210597.P1256180898918668207

`A111660(2*A295918(n+1))+A302643(n+1)-1`
-/

namespace A210597.P1256180898918668207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A295918 (n + 1)).toNat + (A302643 (n + 1) - 1)

end

end A210597.P1256180898918668207

/-! ## A210597.P4156779557208649695

`A204560(A259524(n+1))-char[11]+A302643(n+1)-1`
-/

namespace A210597.P4156779557208649695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A259524 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A302643 (n + 1) - 1)

end

end A210597.P4156779557208649695

/-! ## A210597.P9612265799403784

`A219741(n+1)-A016341(A168551(n))+A302643(n+1)-1`
-/

namespace A210597.P9612265799403784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (n + 1) - A016341 (A168551 n).toNat + (A302643 (n + 1) - 1)

end

end A210597.P9612265799403784

/-!
# A210599: Triangle of coefficients of polynomials v(n,x) jointly generated with A210221; see the Formula section.

The programs for A210599, there is no canonical definition to state claims against.
-/

/-! ## A210599.P16264710943794833974

`A209773(n+1)+A209774(n+1)-A209830(n+1)`
-/

namespace A210599.P16264710943794833974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209773 (n + 1) + (A209774 (n + 1) - A209830 (n + 1))

end

end A210599.P16264710943794833974

