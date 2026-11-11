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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285000: Floor(Gamma(n/4)).

The programs for A285000, there is no canonical definition to state claims against.
-/

/-! ## A285000.P16626590434891422617

`A285001(1+n)-char[A004773(n)]`
-/

namespace A285000.P16626590434891422617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (1 + n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285000.P16626590434891422617

/-! ## A285000.P13370779733430528746

`A285001(n+1)-A000189(n+1)%2`
-/

namespace A285000.P13370779733430528746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) - Int.tmod (A000189 (n + 1)) 2

end

end A285000.P13370779733430528746

/-! ## A285000.P17361977742736160559

`A285001(n+1)-A000035(A000188(n+1))`
-/

namespace A285000.P17361977742736160559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) - A000035 (A000188 (n + 1)).toNat

end

end A285000.P17361977742736160559

/-! ## A285000.P12778191381090658219

`A285001(n+1)-A000035(A032742(n+1))`
-/

namespace A285000.P12778191381090658219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) - A000035 (A032742 (n + 1)).toNat

end

end A285000.P12778191381090658219

/-! ## A285000.P3866429409753874350

`A285001(n+1)-A267813(A014673(n+1))`
-/

namespace A285000.P3866429409753874350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) - A267813 (A014673 (n + 1)).toNat

end

end A285000.P3866429409753874350

/-! ## A285000.P4082762073845344481

`A285001(n+1)+A285002(n+1)-A285003(n+1)`
-/

namespace A285000.P4082762073845344481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) + (A285002 (n + 1) - A285003 (n + 1))

end

end A285000.P4082762073845344481

/-!
# A285001: Ceiling(Gamma(n/4)).

The programs for A285001, there is no canonical definition to state claims against.
-/

/-! ## A285001.P9596942434686160795

`A285000(1+n)+∑[A102560(n)]`
-/

namespace A285001.P9596942434686160795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (1 + n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285001.P9596942434686160795

/-! ## A285001.P8518376269036349458

`A285000(n+1)+char[A004773(n)]`
-/

namespace A285001.P8518376269036349458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285001.P8518376269036349458

/-! ## A285001.P6252425424667337632

`A285000(1+n)+char[A131452(n)]`
-/

namespace A285001.P6252425424667337632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285001.P6252425424667337632

/-! ## A285001.P13812667155161120199

`A285000(n+1)+2-Δ[A001068(n)]`
-/

namespace A285001.P13812667155161120199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A285001.P13812667155161120199

/-! ## A285001.P10118604457557876281

`A285000(n+1)-A112207(Δ[A001068(n)])`
-/

namespace A285001.P10118604457557876281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) - A112207 (f1 (n + 1) - f1 n).toNat

end

end A285001.P10118604457557876281

/-! ## A285001.P4419357201685439657

`A285000(n+1)+A000035(A000188(n+1))`
-/

namespace A285001.P4419357201685439657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + A000035 (A000188 (n + 1)).toNat

end

end A285001.P4419357201685439657

/-! ## A285001.P6700661885166060943

`A285000(n+1)+A000035(A000190(n+1))`
-/

namespace A285001.P6700661885166060943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + A000035 (A000190 (n + 1)).toNat

end

end A285001.P6700661885166060943

/-! ## A285001.P13092117414407245162

`A285000(n+1)+A000035(A008833(n+1))`
-/

namespace A285001.P13092117414407245162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + A000035 (A008833 (n + 1)).toNat

end

end A285001.P13092117414407245162

/-! ## A285001.P3762125958283182623

`A285000(n+1)+A000035(A032742(n+1))`
-/

namespace A285001.P3762125958283182623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + A000035 (A032742 (n + 1)).toNat

end

end A285001.P3762125958283182623

/-! ## A285001.P9834140652714424909

`A285000(n+1)+A000035(A126352(n))`
-/

namespace A285001.P9834140652714424909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + A000035 (A126352 n).toNat

end

end A285001.P9834140652714424909

/-!
# A285002: a(n) = floor(Gamma(3n/4)).

The programs for A285002, there is no canonical definition to state claims against.
-/

/-! ## A285002.P5649012497731479159

`A285000(3*(1+n))`
-/

namespace A285002.P5649012497731479159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (3 * (1 + n))

end

end A285002.P5649012497731479159

/-! ## A285002.P11217608207871671042

`A285003(n+1)-abs(A112299(n+1))`
-/

namespace A285002.P11217608207871671042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285003 (n + 1) - |A112299 (n + 1)|

end

end A285002.P11217608207871671042

/-! ## A285002.P14722543195331946312

`A285003(n+1)+∑[A219977(n+1)]`
-/

namespace A285002.P14722543195331946312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285003 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285002.P14722543195331946312

/-! ## A285002.P14113512341791160730

`A285001(3*(1+n))-char[A004773(n)]`
-/

namespace A285002.P14113512341791160730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (3 * (1 + n)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285002.P14113512341791160730

/-! ## A285002.P16805438898102128931

`A285003(n+1)-and(1, A000188(n+1))`
-/

namespace A285002.P16805438898102128931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285003 (n + 1) - Int.land 1 (A000188 (n + 1))

end

end A285002.P16805438898102128931

/-! ## A285002.P11343420277678078694

`A285000(n+1)+A285003(n+1)-A285001(n+1)`
-/

namespace A285002.P11343420277678078694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (n + 1) + (A285003 (n + 1) - A285001 (n + 1))

end

end A285002.P11343420277678078694

/-!
# A285003: a(n) = ceiling(Gamma(3n/4)).

The programs for A285003, there is no canonical definition to state claims against.
-/

/-! ## A285003.P3411651538995731924

`A285001(3*(1+n))`
-/

namespace A285003.P3411651538995731924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (3 * (1 + n))

end

end A285003.P3411651538995731924

/-! ## A285003.P6108981580513183366

`A285002(n+1)+abs(A112299(n+1))`
-/

namespace A285003.P6108981580513183366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285002 (n + 1) + |A112299 (n + 1)|

end

end A285003.P6108981580513183366

/-! ## A285003.P4871432726260701844

`A285002(n+1)-∑[A219977(n+1)]`
-/

namespace A285003.P4871432726260701844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285002 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285003.P4871432726260701844

/-! ## A285003.P3183252714731653448

`A285000(3*(n+1))+∑[A102560(n)]`
-/

namespace A285003.P3183252714731653448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285003.P3183252714731653448

/-! ## A285003.P8374868260936697659

`A285000(Δ[n²]+n+2)+char[A131452(n)]`
-/

namespace A285003.P8374868260936697659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285003.P8374868260936697659

/-! ## A285003.P538768178166848144

`A285002(n+1)+A000035(A000188(n+1))`
-/

namespace A285003.P538768178166848144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285002 (n + 1) + A000035 (A000188 (n + 1)).toNat

end

end A285003.P538768178166848144

/-! ## A285003.P12995334300521318975

`A285002(n+1)+A000035(A014673(n+1))`
-/

namespace A285003.P12995334300521318975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285002 (n + 1) + A000035 (A014673 (n + 1)).toNat

end

end A285003.P12995334300521318975

/-! ## A285003.P11501722269971783130

`A285001(n+1)+A285002(n+1)-A285000(n+1)`
-/

namespace A285003.P11501722269971783130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (n + 1) + (A285002 (n + 1) - A285000 (n + 1))

end

end A285003.P11501722269971783130

/-!
# A285004: Numbers n that enter a cycle of greater length than that for any k < n in the iteration sequence s(0)=n, s(k+1) = s(k) + (-1)^k*d(s(k)), where d(n) is the number of divisors of n (A000005).

The programs for A285004, there is no canonical definition to state claims against.
-/

/-! ## A285004.P17227830797325027205

`A288070(lt[A252897(n), A290107(n+1)])`
-/

namespace A285004.P17227830797325027205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285004.P17227830797325027205

/-! ## A285004.P17857988787696946341

`A288070(∑[val(A247602(3*(n+1)), 7)+1])`
-/

namespace A285004.P17857988787696946341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247602 (3 * (n + 1))).toNat 7 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285004.P17857988787696946341

/-! ## A285004.P9441234997638721036

`A288070(lt[A185293(n), A323454(n+1)])`
-/

namespace A285004.P9441234997638721036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285004.P9441234997638721036

/-!
# A285005: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 8.

The programs for A285005, there is no canonical definition to state claims against.
-/

/-! ## A285005.P11952397284897217

`lcm(A100063(n), A134667(A034492(n+1)))`
-/

namespace A285005.P11952397284897217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100063 n) (A134667 (A034492 (n + 1)).toNat)

end

end A285005.P11952397284897217

/-! ## A285005.P5266384080037683740

`A014473(A079680(n))%A007318(A005496(n))`
-/

namespace A285005.P5266384080037683740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 (A079680 n).toNat) (A007318 (A005496 n).toNat)

end

end A285005.P5266384080037683740

/-! ## A285005.P11600086612980429557

`A044941(A301413(∑[2^val(n+1, 2)]+1))`
-/

namespace A285005.P11600086612980429557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A301413 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A285005.P11600086612980429557

/-! ## A285005.P16448854852634602085

`A333382(C(A026800(n), A333382(n)))`
-/

namespace A285005.P16448854852634602085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (Nat.choose (A026800 n).toNat (A333382 n).toNat)

end

end A285005.P16448854852634602085

/-! ## A285005.P10096443696520111907

`A181735(n+1)%A007318(A079680(n))`
-/

namespace A285005.P10096443696520111907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181735 (n + 1)) (A007318 (A079680 n).toNat)

end

end A285005.P10096443696520111907

/-!
# A285006: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 9.

The programs for A285006, there is no canonical definition to state claims against.
-/

/-! ## A285006.P11598911239483111821

`A000035(7*A284782(n+1))`
-/

namespace A285006.P11598911239483111821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (7 * A284782 (n + 1)).toNat

end

end A285006.P11598911239483111821

/-! ## A285006.P6295322409408606265

`A000035(lcm(7, A284782(n+1)))`
-/

namespace A285006.P6295322409408606265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm 7 (A284782 (n + 1)))

end

end A285006.P6295322409408606265

/-! ## A285006.P14480118812526683302

`and(A225152(n), A284782(n+1))`
-/

namespace A285006.P14480118812526683302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225152 n) (A284782 (n + 1))

end

end A285006.P14480118812526683302

/-! ## A285006.P18379664267992236983

`A284782(n+1)%A000005(A089682(n+1))`
-/

namespace A285006.P18379664267992236983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284782 (n + 1)) (A000005 (A089682 (n + 1)).toNat)

end

end A285006.P18379664267992236983

/-! ## A285006.P1905609802134017014

`A021913(10*A284782(n+1))`
-/

namespace A285006.P1905609802134017014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (10 * A284782 (n + 1)).toNat

end

end A285006.P1905609802134017014

/-!
# A285007: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 10.

The programs for A285007, there is no canonical definition to state claims against.
-/

/-! ## A285007.P130907652591825282

`val(A054242(A321380(n)), 6)`
-/

namespace A285007.P130907652591825282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054242 (A321380 n).toNat).toNat 6

end

end A285007.P130907652591825282

/-! ## A285007.P9028970905506506414

`and(A157407(n), A346392(n+1))`
-/

namespace A285007.P9028970905506506414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157407 n) (A346392 (n + 1))

end

end A285007.P9028970905506506414

/-! ## A285007.P16485668832629416481

`A133010(A194320(n+2))`
-/

namespace A285007.P16485668832629416481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A194320 (n + 2)).toNat

end

end A285007.P16485668832629416481

/-! ## A285007.P14333600760902924617

`A181837(A396617(n+2))`
-/

namespace A285007.P14333600760902924617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181837 (A396617 (n + 2)).toNat

end

end A285007.P14333600760902924617

/-! ## A285007.P12211827498756786115

`A286562(xor(73, A198318(n)))`
-/

namespace A285007.P12211827498756786115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (Int.xor 73 (A198318 n)).toNat

end

end A285007.P12211827498756786115

/-!
# A285008: Numerator of (3/4)^n * binomial(2*n,n).

The programs for A285008, the canonical program `A285008.P18285019941351917306` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285008 has offset 0).

The definition of A285008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285008.P18285019941351917306

`3^n*C(2*n, n)/A001316(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285008

/-- `3^n*C(2*n, n)/A001316(n)` -/
def P18285019941351917306.Spec : Prop :=
  ∀ n, P18285019941351917306.a n = (A285008 n : ℚ)

end A285008

/-! ## A285008.P2532911531560434714

`3*(2*n-1)*a(n-1)/A000265(n)` with `a(0)=1`
-/

namespace A285008.P2532911531560434714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) / (A000265 n : ℚ)

end

end A285008.P2532911531560434714

namespace A285008

/-- `3*(2*n-1)*a(n-1)/A000265(n)` -/
def P2532911531560434714.Spec : Prop :=
  ∀ n, P2532911531560434714.a n = (A285008 n : ℚ)

end A285008

/-! ## A285008.P8131221249518059490

`3*(2*n-1)*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A285008.P8131221249518059490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)))

end

end A285008.P8131221249518059490

namespace A285008

/-- `3*(2*n-1)*a(n-1)/gcd(n, a(n-1))` -/
def P8131221249518059490.Spec : Prop :=
  ∀ n, P8131221249518059490.a n = (A285008 n : ℚ)

end A285008

/-! ## A285008.P1257106247956015323

`3^n*A001790(n)`
-/

namespace A285008.P1257106247956015323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001790 n

end

end A285008.P1257106247956015323

namespace A285008

/-- `3^n*A001790(n)` -/
def P1257106247956015323.Spec : Prop :=
  ∀ n, P1257106247956015323.a n = A285008 n

end A285008

/-! ## A285008.P13301872028747408178

`A001790(n)*A155734(n+1)`
-/

namespace A285008.P13301872028747408178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A155734 (n + 1)

end

end A285008.P13301872028747408178

namespace A285008

/-- `A001790(n)*A155734(n+1)` -/
def P13301872028747408178.Spec : Prop :=
  ∀ n, P13301872028747408178.a n = A285008 n

end A285008

/-! ## A285008.P14452319773776149213

`A000244(n)*A036069(2*n)`
-/

namespace A285008.P14452319773776149213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A036069 (2 * n)

end

end A285008.P14452319773776149213

namespace A285008

/-- `A000244(n)*A036069(2*n)` -/
def P14452319773776149213.Spec : Prop :=
  ∀ n, P14452319773776149213.a n = A285008 n

end A285008

/-! ## A285008.P17972564276707250875

`A038754(2*n)*A163590(2*n)`
-/

namespace A285008.P17972564276707250875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) * A163590 (2 * n)

end

end A285008.P17972564276707250875

namespace A285008

/-- `A038754(2*n)*A163590(2*n)` -/
def P17972564276707250875.Spec : Prop :=
  ∀ n, P17972564276707250875.a n = A285008 n

end A285008

/-! ## A285008.P15821281460486449075

`A001790(n)*A038220(A000217(n))`
-/

namespace A285008.P15821281460486449075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A038220 (A000217 n).toNat

end

end A285008.P15821281460486449075

namespace A285008

/-- `A001790(n)*A038220(A000217(n))` -/
def P15821281460486449075.Spec : Prop :=
  ∀ n, P15821281460486449075.a n = A285008 n

end A285008

/-! ## A285008.P14603437654599236994

`A098658(n)/A001316(n)`
-/

namespace A285008.P14603437654599236994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098658 n : ℚ) / (A001316 n : ℚ)

end

end A285008.P14603437654599236994

namespace A285008

/-- `A098658(n)/A001316(n)` -/
def P14603437654599236994.Spec : Prop :=
  ∀ n, P14603437654599236994.a n = (A285008 n : ℚ)

end A285008

/-! ## A285008.P9432301689885756108

`A011781(n)/gcd(A000142(n), A011781(n))`
-/

namespace A285008.P9432301689885756108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011781 n : ℚ) / (Int.gcd (A000142 n) (A011781 n) : ℚ)

end

end A285008.P9432301689885756108

namespace A285008

/-- `A011781(n)/gcd(A000142(n), A011781(n))` -/
def P9432301689885756108.Spec : Prop :=
  ∀ n, P9432301689885756108.a n = (A285008 n : ℚ)

end A285008

/-!
# A285009: Subset sums (see Comments).

The programs for A285009, the canonical program `A285009.P12228173054021813490` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285009 has offset 3).

The definition of A285009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285009.P3236985733466665268

`ogf((9-10x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A285009.P3236985733466665268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -10, 4] [1, -3, 3, -1] n

end

end A285009.P3236985733466665268

namespace A285009

/-- `ogf((9-10x+4x^2)/(1-3x+3x^2-x^3))` -/
def P3236985733466665268.Spec : Prop :=
  ∀ n, P3236985733466665268.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P8142791154499851308

`(8+(n+1)*(3*(n+3)+1))/2`
-/

namespace A285009.P8142791154499851308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 + (n + 1) * (3 * (n + 3) + 1) : ℚ) / 2

end

end A285009.P8142791154499851308

namespace A285009

/-- `(8+(n+1)*(3*(n+3)+1))/2` -/
def P8142791154499851308.Spec : Prop :=
  ∀ n, P8142791154499851308.a n = (A285009 (n + 3) : ℚ)

theorem P8142791154499851308.correct : P8142791154499851308.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A285009, Nat.add_sub_cancel, A285009.P8142791154499851308.a, A285009.P12228173054021813490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A285009, Nat.add_sub_cancel, A285009.P8142791154499851308.a, A285009.P12228173054021813490.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A285009

/-! ## A285009.P12228173054021813490

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=17, a(2)=28`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285009

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12228173054021813490.Spec : Prop :=
  ∀ n, P12228173054021813490.a n = A285009 (n + 3)

theorem P12228173054021813490.correct : P12228173054021813490.Spec := by
  intro n
  simp only [A285009, Nat.add_sub_cancel]

end A285009

/-! ## A285009.P14485852924210166660

`A005449(n+2)+2`
-/

namespace A285009.P14485852924210166660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 2) + 2

end

end A285009.P14485852924210166660

namespace A285009

/-- `A005449(n+2)+2` -/
def P14485852924210166660.Spec : Prop :=
  ∀ n, P14485852924210166660.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P8702051483087941607

`record[(n-3)²]+∑[n]`
-/

namespace A285009.P8702051483087941607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A285009.P8702051483087941607

namespace A285009

/-- `record[(n-3)²]+∑[n]` -/
def P8702051483087941607.Spec : Prop :=
  ∀ n, P8702051483087941607.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P16706087533135148366

`∑[3+a(n-1)]` with `a(0)=9, a(1)=8`
-/

namespace A285009.P16706087533135148366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 8] fun n f1 =>
  3 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285009.P16706087533135148366

namespace A285009

/-- `∑[3+a(n-1)]` -/
def P16706087533135148366.Spec : Prop :=
  ∀ n, (P16706087533135148366.a n : ℤ) = A285009 (n + 3)

end A285009

/-! ## A285009.P17410384555615399530

`3*C(n+3, 2)-n`
-/

namespace A285009.P17410384555615399530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 3) 2 : ℤ) - (n : ℤ)

end

end A285009.P17410384555615399530

namespace A285009

/-- `3*C(n+3, 2)-n` -/
def P17410384555615399530.Spec : Prop :=
  ∀ n, P17410384555615399530.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P13455708004426222208

`∑[ogf((9-10x+4x^2)/(1-2x+x^2))]`
-/

namespace A285009.P13455708004426222208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -10, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285009.P13455708004426222208

namespace A285009

/-- `∑[ogf((9-10x+4x^2)/(1-2x+x^2))]` -/
def P13455708004426222208.Spec : Prop :=
  ∀ n, P13455708004426222208.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P3335688276071450659

`Δ[n*(C(n+3, 2)+3)]`
-/

namespace A285009.P3335688276071450659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 3) 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285009.P3335688276071450659

namespace A285009

/-- `Δ[n*(C(n+3, 2)+3)]` -/
def P3335688276071450659.Spec : Prop :=
  ∀ n, P3335688276071450659.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P3942864013921401046

`(n+3)²+lcm(n, n+1)/2`
-/

namespace A285009.P3942864013921401046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℚ) + (Nat.lcm n (n + 1) : ℚ) / 2

end

end A285009.P3942864013921401046

namespace A285009

/-- `(n+3)²+lcm(n, n+1)/2` -/
def P3942864013921401046.Spec : Prop :=
  ∀ n, P3942864013921401046.a n = (A285009 (n + 3) : ℚ)

end A285009

/-! ## A285009.P6526587306308684318

`Δ[lcm(n+2, (n+2)*(∑[n+1]+2))]`
-/

namespace A285009.P6526587306308684318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285009.P6526587306308684318

namespace A285009

/-- `Δ[lcm(n+2, (n+2)*(∑[n+1]+2))]` -/
def P6526587306308684318.Spec : Prop :=
  ∀ n, P6526587306308684318.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P3046964928795674316

`Δ[(n+2)*(∑[n+1]+gcd(2, 2*n))]`
-/

namespace A285009.P3046964928795674316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + Nat.gcd 2 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285009.P3046964928795674316

namespace A285009

/-- `Δ[(n+2)*(∑[n+1]+gcd(2, 2*n))]` -/
def P3046964928795674316.Spec : Prop :=
  ∀ n, P3046964928795674316.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P13275499288507687488

`Δ[and(2*n+1, 2*n)+(n+2)*∑[n+1]]`
-/

namespace A285009.P13275499288507687488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) + (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285009.P13275499288507687488

namespace A285009

/-- `Δ[and(2*n+1, 2*n)+(n+2)*∑[n+1]]` -/
def P13275499288507687488.Spec : Prop :=
  ∀ n, P13275499288507687488.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P15809009525068299830

`A140672(n)+9`
-/

namespace A285009.P15809009525068299830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + 9

end

end A285009.P15809009525068299830

namespace A285009

/-- `A140672(n)+9` -/
def P15809009525068299830.Spec : Prop :=
  ∀ n, P15809009525068299830.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P4059343643146353031

`Δ[A164845(n)]+1`
-/

namespace A285009.P4059343643146353031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A285009.P4059343643146353031

namespace A285009

/-- `Δ[A164845(n)]+1` -/
def P4059343643146353031.Spec : Prop :=
  ∀ n, P4059343643146353031.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P13914384581368152512

`Δ[A393327(n)-n²]`
-/

namespace A285009.P13914384581368152512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393327 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285009.P13914384581368152512

namespace A285009

/-- `Δ[A393327(n)-n²]` -/
def P13914384581368152512.Spec : Prop :=
  ∀ n, P13914384581368152512.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P5612657007692259660

`∑[A016789(n+1)]+4`
-/

namespace A285009.P5612657007692259660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A285009.P5612657007692259660

namespace A285009

/-- `∑[A016789(n+1)]+4` -/
def P5612657007692259660.Spec : Prop :=
  ∀ n, P5612657007692259660.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P18378295377897997818

`∑[A180486(n+1)]+4`
-/

namespace A285009.P18378295377897997818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A285009.P18378295377897997818

namespace A285009

/-- `∑[A180486(n+1)]+4` -/
def P18378295377897997818.Spec : Prop :=
  ∀ n, P18378295377897997818.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P17888662365828103633

`3*A000217(n+2)-n`
-/

namespace A285009.P17888662365828103633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 (n + 2) - (n : ℤ)

end

end A285009.P17888662365828103633

namespace A285009

/-- `3*A000217(n+2)-n` -/
def P17888662365828103633.Spec : Prop :=
  ∀ n, P17888662365828103633.a n = A285009 (n + 3)

end A285009

/-! ## A285009.P7039411941801617738

`Δ[(n+2)*(A000217(n+1)+2)]`
-/

namespace A285009.P7039411941801617738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000217 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285009.P7039411941801617738

namespace A285009

/-- `Δ[(n+2)*(A000217(n+1)+2)]` -/
def P7039411941801617738.Spec : Prop :=
  ∀ n, P7039411941801617738.a n = A285009 (n + 3)

end A285009

/-!
# A285010: a(n+1) = a(n) + p, where p is the largest prime less than a(n); a(1) = 3.

The programs for A285010, there is no canonical definition to state claims against.
-/

/-! ## A285010.P8074109320042180083

`∑[A075058(n)]+2`
-/

namespace A285010.P8074109320042180083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A285010.P8074109320042180083

/-! ## A285010.P10951496668511048213

`A123196(1+n)+1`
-/

namespace A285010.P10951496668511048213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123196 (1 + n) + 1

end

end A285010.P10951496668511048213

/-! ## A285010.P17888141704313621191

`∑[A068524(1+n)]+1`
-/

namespace A285010.P17888141704313621191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A285010.P17888141704313621191

/-! ## A285010.P3170210709019076874

`∑[A075058(or(n, A000038(n)))]`
-/

namespace A285010.P3170210709019076874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285010.P3170210709019076874

/-! ## A285010.P15020582945922975494

`A068524(n+1)-A000007(n)+a(n-1)` with `a(0)=3`
-/

namespace A285010.P15020582945922975494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A068524 (n + 1) - A000007 n + a (n - 1)

end

end A285010.P15020582945922975494

/-! ## A285010.P8991180114478241891

`A068524(n+1)+A054977(n)*a(n-1)` with `a(0)=3`
-/

namespace A285010.P8991180114478241891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A068524 (n + 1) + A054977 n * a (n - 1)

end

end A285010.P8991180114478241891

/-! ## A285010.P9382414195718469174

`A068524(1+n)/A054977(n)+a(n-1)` with `a(0)=3`
-/

namespace A285010.P9382414195718469174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A068524 (1 + n) : ℚ) / (A054977 n : ℚ) + a (n - 1)

end

end A285010.P9382414195718469174

/-! ## A285010.P18388438453982237682

`∑[A075058(A132749(A000124(n)))]`
-/

namespace A285010.P18388438453982237682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A132749 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285010.P18388438453982237682

/-!
# A285011: Numbers with digits 7 and 9 only.

The programs for A285011, the canonical program `A285011.P685992182578055413` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285011 has offset 1).

The definition of A285011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285011.P685992182578055413

`A256292(n+1)+A007931(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A285011

/-- `A256292(n+1)+A007931(n+1)` -/
def P685992182578055413.Spec : Prop :=
  ∀ n, P685992182578055413.a n = A285011 (n + 1)

theorem P685992182578055413.correct : P685992182578055413.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel]

end A285011

/-! ## A285011.P2272498898862714665

`A256291(1+n)+A032810(n+1)`
-/

namespace A285011.P2272498898862714665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (1 + n) + A032810 (n + 1)

end

end A285011.P2272498898862714665

namespace A285011

/-- `A256291(1+n)+A032810(n+1)` -/
def P2272498898862714665.Spec : Prop :=
  ∀ n, P2272498898862714665.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P7719036347256929013

`A256290(1+n)+A032834(n+1)`
-/

namespace A285011.P7719036347256929013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (1 + n) + A032834 (n + 1)

end

end A285011.P7719036347256929013

namespace A285011

/-- `A256290(1+n)+A032834(n+1)` -/
def P7719036347256929013.Spec : Prop :=
  ∀ n, P7719036347256929013.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P2287655584745594473

`A284635(n+1)+A256077(n+1)`
-/

namespace A285011.P2287655584745594473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) + A256077 (n + 1)

end

end A285011.P2287655584745594473

namespace A285011

/-- `A284635(n+1)+A256077(n+1)` -/
def P2287655584745594473.Spec : Prop :=
  ∀ n, P2287655584745594473.a n = A285011 (n + 1)

theorem P2287655584745594473.correct : P2287655584745594473.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P2287655584745594473.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256077, A256077.P10462771814391243740.a, A256292, A256292.P11901007402140861937.a, A284635, A284635.P906447780553104997.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032834, A032834.P5670912099542955886.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A032810, A032810.P1971984483397515625.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P5073634619104702704

`A256077(n+1)+2*A032834(n+1)`
-/

namespace A285011.P5073634619104702704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A032834 (n + 1)

end

end A285011.P5073634619104702704

namespace A285011

/-- `A256077(n+1)+2*A032834(n+1)` -/
def P5073634619104702704.Spec : Prop :=
  ∀ n, P5073634619104702704.a n = A285011 (n + 1)

theorem P5073634619104702704.correct : P5073634619104702704.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P5073634619104702704.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032834, A032834.P5670912099542955886.a, A256077, A256077.P10462771814391243740.a, A256292, A256292.P11901007402140861937.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032810, A032810.P1971984483397515625.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P12760239138601800580

`A284380(n+1)+2*A256077(n+1)`
-/

namespace A285011.P12760239138601800580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) + 2 * A256077 (n + 1)

end

end A285011.P12760239138601800580

namespace A285011

/-- `A284380(n+1)+2*A256077(n+1)` -/
def P12760239138601800580.Spec : Prop :=
  ∀ n, P12760239138601800580.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P9252419109443258183

`2*A284634(n+1)-A032917(n+1)`
-/

namespace A285011.P9252419109443258183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A032917 (n + 1)

end

end A285011.P9252419109443258183

namespace A285011

/-- `2*A284634(n+1)-A032917(n+1)` -/
def P9252419109443258183.Spec : Prop :=
  ∀ n, P9252419109443258183.a n = A285011 (n + 1)

theorem P9252419109443258183.correct : P9252419109443258183.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P9252419109443258183.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032917, A032917.P11895141288278399977.a, A256292, A256292.P11901007402140861937.a, A284634, A284634.P16072127322819909131.a, A032810, A032810.P1971984483397515625.a, A032822, A032822.P12745688592124505838.a, A256077, A256077.P10462771814391243740.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284963, A284963.P4374081168494453790.a, A032834, A032834.P5670912099542955886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P16732398415341649664

`2*A256290(n+1)-A256077(n+1)`
-/

namespace A285011.P16732398415341649664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256290 (n + 1) - A256077 (n + 1)

end

end A285011.P16732398415341649664

namespace A285011

/-- `2*A256290(n+1)-A256077(n+1)` -/
def P16732398415341649664.Spec : Prop :=
  ∀ n, P16732398415341649664.a n = A285011 (n + 1)

theorem P16732398415341649664.correct : P16732398415341649664.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P16732398415341649664.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256077, A256077.P10462771814391243740.a, A256290, A256290.P13901619738662344296.a, A256292, A256292.P11901007402140861937.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032834, A032834.P5670912099542955886.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A032810, A032810.P1971984483397515625.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P6021123222091558254

`A256290(n+1)+A284635(n+1)/2`
-/

namespace A285011.P6021123222091558254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) : ℚ) + (A284635 (n + 1) : ℚ) / 2

end

end A285011.P6021123222091558254

namespace A285011

/-- `A256290(n+1)+A284635(n+1)/2` -/
def P6021123222091558254.Spec : Prop :=
  ∀ n, P6021123222091558254.a n = (A285011 (n + 1) : ℚ)

theorem P6021123222091558254.correct : P6021123222091558254.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P6021123222091558254.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256290, A256290.P13901619738662344296.a, A256292, A256292.P11901007402140861937.a, A284635, A284635.P906447780553104997.a, A032834, A032834.P5670912099542955886.a, A256077, A256077.P10462771814391243740.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032810, A032810.P1971984483397515625.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P11005363607774061215

`A256291(n+1)+A284634(n+1)/2`
-/

namespace A285011.P11005363607774061215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256291 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A285011.P11005363607774061215

namespace A285011

/-- `A256291(n+1)+A284634(n+1)/2` -/
def P11005363607774061215.Spec : Prop :=
  ∀ n, P11005363607774061215.a n = (A285011 (n + 1) : ℚ)

theorem P11005363607774061215.correct : P11005363607774061215.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P11005363607774061215.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256291, A256291.P5196064940769348637.a, A256292, A256292.P11901007402140861937.a, A284634, A284634.P16072127322819909131.a, A032810, A032810.P1971984483397515625.a, A256077, A256077.P10462771814391243740.a, A256290, A256290.P13901619738662344296.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032834, A032834.P5670912099542955886.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P14720765620398695412

`2*A284380(n+1)-A284379(n+1)`
-/

namespace A285011.P14720765620398695412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A284379 (n + 1)

end

end A285011.P14720765620398695412

namespace A285011

/-- `2*A284380(n+1)-A284379(n+1)` -/
def P14720765620398695412.Spec : Prop :=
  ∀ n, P14720765620398695412.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P13757392789541755060

`2*A284635(n+1)-A284380(n+1)`
-/

namespace A285011.P13757392789541755060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284635 (n + 1) - A284380 (n + 1)

end

end A285011.P13757392789541755060

namespace A285011

/-- `2*A284635(n+1)-A284380(n+1)` -/
def P13757392789541755060.Spec : Prop :=
  ∀ n, P13757392789541755060.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P12935521955528086440

`A007931(n+1)+A256291(n+1)+A256077(n+1)`
-/

namespace A285011.P12935521955528086440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A256291 (n + 1) + A256077 (n + 1))

end

end A285011.P12935521955528086440

namespace A285011

/-- `A007931(n+1)+A256291(n+1)+A256077(n+1)` -/
def P12935521955528086440.Spec : Prop :=
  ∀ n, P12935521955528086440.a n = A285011 (n + 1)

theorem P12935521955528086440.correct : P12935521955528086440.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P12935521955528086440.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256077, A256077.P10462771814391243740.a, A256291, A256291.P5196064940769348637.a, A256292, A256292.P11901007402140861937.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A256290, A256290.P13901619738662344296.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A032834, A032834.P5670912099542955886.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A032810, A032810.P1971984483397515625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P5957685346868056475

`A032810(n+1)+A256290(n+1)+A256077(n+1)`
-/

namespace A285011.P5957685346868056475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256290 (n + 1) + A256077 (n + 1))

end

end A285011.P5957685346868056475

namespace A285011

/-- `A032810(n+1)+A256290(n+1)+A256077(n+1)` -/
def P5957685346868056475.Spec : Prop :=
  ∀ n, P5957685346868056475.a n = A285011 (n + 1)

theorem P5957685346868056475.correct : P5957685346868056475.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P5957685346868056475.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032810, A032810.P1971984483397515625.a, A256077, A256077.P10462771814391243740.a, A256290, A256290.P13901619738662344296.a, A256292, A256292.P11901007402140861937.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032834, A032834.P5670912099542955886.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P12360762970093339910

`A032834(n+1)+A284635(n+1)-A032810(n+1)`
-/

namespace A285011.P12360762970093339910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A284635 (n + 1) - A032810 (n + 1))

end

end A285011.P12360762970093339910

namespace A285011

/-- `A032834(n+1)+A284635(n+1)-A032810(n+1)` -/
def P12360762970093339910.Spec : Prop :=
  ∀ n, P12360762970093339910.a n = A285011 (n + 1)

theorem P12360762970093339910.correct : P12360762970093339910.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P12360762970093339910.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032810, A032810.P1971984483397515625.a, A032834, A032834.P5670912099542955886.a, A256292, A256292.P11901007402140861937.a, A284635, A284635.P906447780553104997.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A256077, A256077.P10462771814391243740.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P16447884383520665483

`A007931(n+1)+A256340(n+1)-A256077(n+1)`
-/

namespace A285011.P16447884383520665483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A256340 (n + 1) - A256077 (n + 1))

end

end A285011.P16447884383520665483

namespace A285011

/-- `A007931(n+1)+A256340(n+1)-A256077(n+1)` -/
def P16447884383520665483.Spec : Prop :=
  ∀ n, P16447884383520665483.a n = A285011 (n + 1)

theorem P16447884383520665483.correct : P16447884383520665483.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P16447884383520665483.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A256077, A256077.P10462771814391243740.a, A256292, A256292.P11901007402140861937.a, A256340, A256340.P8311586897668166482.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A032834, A032834.P5670912099542955886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P5502363066714536611

`A256290(n+1)+A284380(n+1)-A032810(n+1)`
-/

namespace A285011.P5502363066714536611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284380 (n + 1) - A032810 (n + 1))

end

end A285011.P5502363066714536611

namespace A285011

/-- `A256290(n+1)+A284380(n+1)-A032810(n+1)` -/
def P5502363066714536611.Spec : Prop :=
  ∀ n, P5502363066714536611.a n = A285011 (n + 1)

end A285011

/-! ## A285011.P1046064002640134498

`A256292(n+1)+A284634(n+1)-A032834(n+1)`
-/

namespace A285011.P1046064002640134498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) + (A284634 (n + 1) - A032834 (n + 1))

end

end A285011.P1046064002640134498

namespace A285011

/-- `A256292(n+1)+A284634(n+1)-A032834(n+1)` -/
def P1046064002640134498.Spec : Prop :=
  ∀ n, P1046064002640134498.a n = A285011 (n + 1)

theorem P1046064002640134498.correct : P1046064002640134498.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P1046064002640134498.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032834, A032834.P5670912099542955886.a, A256292, A256292.P11901007402140861937.a, A284634, A284634.P16072127322819909131.a, A032810, A032810.P1971984483397515625.a, A256077, A256077.P10462771814391243740.a, A256291, A256291.P5196064940769348637.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A256290, A256290.P13901619738662344296.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P7603015028303214691

`A256291(n+1)+A284633(n+1)-A032917(n+1)`
-/

namespace A285011.P7603015028303214691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + (A284633 (n + 1) - A032917 (n + 1))

end

end A285011.P7603015028303214691

namespace A285011

/-- `A256291(n+1)+A284633(n+1)-A032917(n+1)` -/
def P7603015028303214691.Spec : Prop :=
  ∀ n, P7603015028303214691.a n = A285011 (n + 1)

theorem P7603015028303214691.correct : P7603015028303214691.Spec := by
  intro n
  simp only [A285011, Nat.add_sub_cancel, A285011.P7603015028303214691.a, A285011.P685992182578055413.a, A007931, A007931.P11150484303351267694.a, A032917, A032917.P11895141288278399977.a, A256291, A256291.P5196064940769348637.a, A256292, A256292.P11901007402140861937.a, A284633, A284633.P9546244470900534916.a, A032822, A032822.P12745688592124505838.a, A256077, A256077.P10462771814391243740.a, A256290, A256290.P13901619738662344296.a, A276037, A276037.P5174679337069307622.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A032834, A032834.P5670912099542955886.a, A276039, A276039.P8919672290101557242.f1, A276039.P8919672290101557242.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284963, A284963.P4374081168494453790.a, A032810, A032810.P1971984483397515625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285011

/-! ## A285011.P4211863676154463067

`A256290(n+1)+A284972(n+1)-A032822(n+1)`
-/

namespace A285011.P4211863676154463067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284972 (n + 1) - A032822 (n + 1))

end

end A285011.P4211863676154463067

namespace A285011

/-- `A256290(n+1)+A284972(n+1)-A032822(n+1)` -/
def P4211863676154463067.Spec : Prop :=
  ∀ n, P4211863676154463067.a n = A285011 (n + 1)

end A285011

/-!
# A285012: Irregular triangle read by rows: T(n,k) is the number of periodic palindromic structures of length n using exactly k different symbols, 1 <= k <= n/2 + 1.

The programs for A285012, there is no canonical definition to state claims against.
-/

/-! ## A285012.P10470865116450748081

`or(A000120(A285037(n+1)!), A285037(n+1))`
-/

namespace A285012.P10470865116450748081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (Nat.factorial (A285037 (n + 1)).toNat)) (A285037 (n + 1))

end

end A285012.P10470865116450748081

/-!
# A285013: Number of periodic palindromic structures of length n using an infinite alphabet.

The programs for A285013, there is no canonical definition to state claims against.
-/

/-! ## A285013.P10926922573018782897

`∑{d}[A028310(n), A285042(#)]`
-/

namespace A285013.P10926922573018782897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A285042 d

end

end A285013.P10926922573018782897

/-! ## A285013.P4586049733557681464

`A000007(n)+∑{d}[n, A285042(#)]`
-/

namespace A285013.P4586049733557681464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A285042 d

end

end A285013.P4586049733557681464

/-! ## A285013.P10497948927349337737

`∑{d}[n, A285042(#)]^log2(A040000(n))`
-/

namespace A285013.P10497948927349337737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A285042 d : ℤ) : ℝ) ^ (Real.logb 2 (A040000 n : ℝ))

end

end A285013.P10497948927349337737

/-! ## A285013.P11868853297903122626

`∑{d}[n, A285042(#)]^(A071383(n+1)%2)`
-/

namespace A285013.P11868853297903122626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A285042 d : ℤ) : ℚ) ^ (Int.tmod (A071383 (n + 1)) 2 : ℤ)

end

end A285013.P11868853297903122626

/-! ## A285013.P12823669902824699099

`∑{d}[n, A285042(#)]+val(n+3, A167499(n)-3)`
-/

namespace A285013.P12823669902824699099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285042 d + (SequenceMachineLib.valuation (n + 3) (A167499 n - 3).toNat : ℤ)

end

end A285013.P12823669902824699099

/-! ## A285013.P18400242556021065962

`A000035(A028586(n))+∑{d}[n, A285042(#)]`
-/

namespace A285013.P18400242556021065962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028586 n).toNat + ∑ d ∈ Nat.divisors (f1 n), A285042 d

end

end A285013.P18400242556021065962

/-! ## A285013.P5559123030804912100

`∑{d}[n, A285042(#)]^A048766(A000120(n))`
-/

namespace A285013.P5559123030804912100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A285042 d : ℤ) : ℚ) ^ (A048766 (A000120 n).toNat : ℤ)

end

end A285013.P5559123030804912100

/-! ## A285013.P8818577613925400123

`∑{d}[n, A285042(#)]^A048766(A048766(n))`
-/

namespace A285013.P8818577613925400123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A285042 d : ℤ) : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A285013.P8818577613925400123

/-! ## A285013.P16822877749815139605

`A292262(A000040(n+1))+∑{d}[n, A285042(#)]`
-/

namespace A285013.P16822877749815139605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A000040 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A285042 d

end

end A285013.P16822877749815139605

/-! ## A285013.P8552220858611172414

`∑{d}[n, A285042(#)]^A069283(A001749(n+1))`
-/

namespace A285013.P8552220858611172414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A285042 d : ℤ) : ℚ) ^ (A069283 (A001749 (n + 1)).toNat : ℤ)

end

end A285013.P8552220858611172414

/-! ## A285013.P8471425067368721043

`A028586(n²)+∑{d}[n, A285042(#)]`
-/

namespace A285013.P8471425067368721043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (n ^ 2) + ∑ d ∈ Nat.divisors (f1 n), A285042 d

end

end A285013.P8471425067368721043

/-! ## A285013.P2579242875583109535

`A267050(n²)+∑{d}[n, A285042(#)]`
-/

namespace A285013.P2579242875583109535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (n ^ 2) + ∑ d ∈ Nat.divisors (f1 n), A285042 d

end

end A285013.P2579242875583109535

/-!
# A285014: Number of integers b with 1 < b < c such that b^(c-1) == 1 (modulo c), where c is the n-th composite number.

The programs for A285014, there is no canonical definition to state claims against.
-/

/-! ## A285014.P7000294487744647542

`A348259(A002808(1+n))`
-/

namespace A285014.P7000294487744647542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (A002808 (1 + n)).toNat

end

end A285014.P7000294487744647542

/-! ## A285014.P15335427174077895827

`A348259(A056653(1+n))`
-/

namespace A285014.P15335427174077895827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (A056653 (1 + n)).toNat

end

end A285014.P15335427174077895827

/-! ## A285014.P4670811220785060520

`A348259(A018252(n+2))`
-/

namespace A285014.P4670811220785060520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (A018252 (n + 2)).toNat

end

end A285014.P4670811220785060520

/-! ## A285014.P3774702430669378978

`A348259(lt[1, A003415(n)])`
-/

namespace A285014.P3774702430669378978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285014.P3774702430669378978

/-! ## A285014.P15643267813216933203

`A381319(Δ[A053767(n)])-2`
-/

namespace A285014.P15643267813216933203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381319 (f1 (n + 1) - f1 n).toNat - 2

end

end A285014.P15643267813216933203

/-! ## A285014.P15076072224459322087

`A348259(comp[C(A006530(n+1), n)])`
-/

namespace A285014.P15076072224459322087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A285014.P15076072224459322087

/-! ## A285014.P17264483294208298835

`A063994(A073846(2*n+3))-1`
-/

namespace A285014.P17264483294208298835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A073846 (2 * n + 3)).toNat - 1

end

end A285014.P17264483294208298835

/-! ## A285014.P8951440519741321411

`A348259(lt[1, A001222(n+1)]+1)`
-/

namespace A285014.P8951440519741321411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A285014.P8951440519741321411

/-! ## A285014.P6700909236501851626

`A348259(lt[2, A000005(n+1)]+1)`
-/

namespace A285014.P6700909236501851626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A285014.P6700909236501851626

/-! ## A285014.P5799864874422359458

`A348259(lt[A000010(n+1), n]+1)`
-/

namespace A285014.P5799864874422359458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A285014.P5799864874422359458

/-!
# A285015: Primes of the form k * b^b - 1, with b > 1.

The programs for A285015, the canonical program `A285015.P16882226223254200009` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285015 has offset 1).

The definition of A285015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285015.P16882226223254200009

`p?[n*A342023(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285015

/-- `p?[n*A342023(n+1)]` -/
def P16882226223254200009.Spec : Prop :=
  ∀ n, P16882226223254200009.a n = A285015 (n + 1)

theorem P16882226223254200009.correct : P16882226223254200009.Spec := by
  intro n
  simp only [A285015, Nat.add_sub_cancel]

end A285015

/-! ## A285015.P18325305616382550406

`p?[n*(1-A256750(n+1))]`
-/

namespace A285015.P18325305616382550406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A256750 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285015.P18325305616382550406

namespace A285015

/-- `p?[n*(1-A256750(n+1))]` -/
def P18325305616382550406.Spec : Prop :=
  ∀ n, P18325305616382550406.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P7361270906066366656

`record[A000040(n+2)*A342023(A000040(n+2)+1)]`
-/

namespace A285015.P7361270906066366656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A342023 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P7361270906066366656

namespace A285015

/-- `record[A000040(n+2)*A342023(A000040(n+2)+1)]` -/
def P7361270906066366656.Spec : Prop :=
  ∀ n, P7361270906066366656.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P6895570998342586212

`p?[A100716(n+1)-1]`
-/

namespace A285015.P6895570998342586212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285015.P6895570998342586212

namespace A285015

/-- `p?[A100716(n+1)-1]` -/
def P6895570998342586212.Spec : Prop :=
  ∀ n, P6895570998342586212.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P4688702803602996673

`p?[lt[1, A327936(n+1)]]`
-/

namespace A285015.P4688702803602996673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285015.P4688702803602996673

namespace A285015

/-- `p?[lt[1, A327936(n+1)]]` -/
def P4688702803602996673.Spec : Prop :=
  ∀ n, (P4688702803602996673.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P14033580742701746150

`p?[lt[1, A327939(n+1)]]`
-/

namespace A285015.P14033580742701746150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285015.P14033580742701746150

namespace A285015

/-- `p?[lt[1, A327939(n+1)]]` -/
def P14033580742701746150.Spec : Prop :=
  ∀ n, (P14033580742701746150.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P12497184083345303525

`record[A020639(A100716(n+1)-1)]`
-/

namespace A285015.P12497184083345303525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100716 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P12497184083345303525

namespace A285015

/-- `record[A020639(A100716(n+1)-1)]` -/
def P12497184083345303525.Spec : Prop :=
  ∀ n, P12497184083345303525.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P10272944131083170057

`p?[lt[A327937(n+1), n]]`
-/

namespace A285015.P10272944131083170057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285015.P10272944131083170057

namespace A285015

/-- `p?[lt[A327937(n+1), n]]` -/
def P10272944131083170057.Spec : Prop :=
  ∀ n, (P10272944131083170057.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P5223503500324295184

`p?[lt[A327938(n+1), n]]`
-/

namespace A285015.P5223503500324295184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285015.P5223503500324295184

namespace A285015

/-- `p?[lt[A327938(n+1), n]]` -/
def P5223503500324295184.Spec : Prop :=
  ∀ n, (P5223503500324295184.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P10749577800296971663

`record[A006530(lt[A327937(n+1), n])]`
-/

namespace A285015.P10749577800296971663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P10749577800296971663

namespace A285015

/-- `record[A006530(lt[A327937(n+1), n])]` -/
def P10749577800296971663.Spec : Prop :=
  ∀ n, P10749577800296971663.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P14110642187323782839

`record[A020639(lt[A327937(n+1), n])]`
-/

namespace A285015.P14110642187323782839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P14110642187323782839

namespace A285015

/-- `record[A020639(lt[A327937(n+1), n])]` -/
def P14110642187323782839.Spec : Prop :=
  ∀ n, P14110642187323782839.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P16928211274478437084

`p?[fp[A129253(n+1)]]`
-/

namespace A285015.P16928211274478437084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129253 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285015.P16928211274478437084

namespace A285015

/-- `p?[fp[A129253(n+1)]]` -/
def P16928211274478437084.Spec : Prop :=
  ∀ n, (P16928211274478437084.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P12388103177378247764

`eq[A086134(n), A359550(n+1)]`
-/

namespace A285015.P12388103177378247764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285015.P12388103177378247764

namespace A285015

/-- `eq[A086134(n), A359550(n+1)]` -/
def P12388103177378247764.Spec : Prop :=
  ∀ n, (P12388103177378247764.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P16316591591839901487

`eq[A143862(n), A342023(n+1)]`
-/

namespace A285015.P16316591591839901487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285015.P16316591591839901487

namespace A285015

/-- `eq[A143862(n), A342023(n+1)]` -/
def P16316591591839901487.Spec : Prop :=
  ∀ n, (P16316591591839901487.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P10301880610411314923

`record[A014963(A100716(n+1)-1)]`
-/

namespace A285015.P10301880610411314923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A100716 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P10301880610411314923

namespace A285015

/-- `record[A014963(A100716(n+1)-1)]` -/
def P10301880610411314923.Spec : Prop :=
  ∀ n, P10301880610411314923.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P470313925462703415

`lt[A003415(n), log2(A327939(n+1))]`
-/

namespace A285015.P470313925462703415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A327939 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A285015.P470313925462703415

namespace A285015

/-- `lt[A003415(n), log2(A327939(n+1))]` -/
def P470313925462703415.Spec : Prop :=
  ∀ n, (P470313925462703415.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P5374412468791523361

`record[A014963(lt[A327937(n+1), n])]`
-/

namespace A285015.P5374412468791523361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285015.P5374412468791523361

namespace A285015

/-- `record[A014963(lt[A327937(n+1), n])]` -/
def P5374412468791523361.Spec : Prop :=
  ∀ n, P5374412468791523361.a n = A285015 (n + 1)

end A285015

/-! ## A285015.P6690204057140191374

`eq[A053989(n+1), A342023(n+1)]`
-/

namespace A285015.P6690204057140191374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285015.P6690204057140191374

namespace A285015

/-- `eq[A053989(n+1), A342023(n+1)]` -/
def P6690204057140191374.Spec : Prop :=
  ∀ n, (P6690204057140191374.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P2243998123949064420

`eq[A068108(n+1), A342023(n+1)]`
-/

namespace A285015.P2243998123949064420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285015.P2243998123949064420

namespace A285015

/-- `eq[A068108(n+1), A342023(n+1)]` -/
def P2243998123949064420.Spec : Prop :=
  ∀ n, (P2243998123949064420.a n : ℤ) = A285015 (n + 1)

end A285015

/-! ## A285015.P9392745058832324705

`eq[A003415(A003415(n)), A256750(n+1)]`
-/

namespace A285015.P9392745058832324705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285015.P9392745058832324705

namespace A285015

/-- `eq[A003415(A003415(n)), A256750(n+1)]` -/
def P9392745058832324705.Spec : Prop :=
  ∀ n, (P9392745058832324705.a n : ℤ) = A285015 (n + 1)

end A285015

/-!
# A285016: Primes of the form p*b^b - 1, where p is a prime and b>1.

The programs for A285016, there is no canonical definition to state claims against.
-/

/-! ## A285016.P13970558147639696584

`p?[eq[A122857(n), A216601(n+1)]]`
-/

namespace A285016.P13970558147639696584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216601 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285016.P13970558147639696584

/-! ## A285016.P14709784078099789957

`∪[A000040(A381517(n)), A003173(n+5)]`
-/

namespace A285016.P14709784078099789957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A381517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003173 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285016.P14709784078099789957

/-!
# A285017: Primes of the form 1 + n + n^2 + n^3 + ... + n^k, n > 1, k > 1 where n is not prime.

The programs for A285017, there is no canonical definition to state claims against.
-/

/-! ## A285017.P11919301140433272257

`A392879(A185632(n+2))`
-/

namespace A285017.P11919301140433272257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392879 (A185632 (n + 2)).toNat

end

end A285017.P11919301140433272257

/-! ## A285017.P13746164001128749259

`A034699(3*A185632(n+2))`
-/

namespace A285017.P13746164001128749259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (3 * A185632 (n + 2)).toNat

end

end A285017.P13746164001128749259

/-! ## A285017.P876158096045653510

`A088387(3*A185632(n+2))`
-/

namespace A285017.P876158096045653510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (3 * A185632 (n + 2)).toNat

end

end A285017.P876158096045653510

/-! ## A285017.P8592947790993616713

`filter[A185632(n+1), A123110(#)]`
-/

namespace A285017.P8592947790993616713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A285017.P8592947790993616713

/-! ## A285017.P9960683126690785285

`∩[A038187(n+1), A185632(n+1)]`
-/

namespace A285017.P9960683126690785285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285017.P9960683126690785285

/-!
# A285018: Denominator of (-1/3)^n*sqrt(Pi)/(Gamma(1/2 - n)*Gamma(1 + n)).

The programs for A285018, there is no canonical definition to state claims against.
-/

/-! ## A285018.P8687631168809899970

`A060507(n)/A001021(n)`
-/

namespace A285018.P8687631168809899970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060507 n : ℚ) / (A001021 n : ℚ)

end

end A285018.P8687631168809899970

/-! ## A285018.P11363573775021489497

`A001021(n)/gcd(A000984(n), A001021(n))`
-/

namespace A285018.P11363573775021489497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n : ℚ) / (Int.gcd (A000984 n) (A001021 n) : ℚ)

end

end A285018.P11363573775021489497

/-! ## A285018.P5287397649991472985

`A060507(n)/A167351(A000079(n))`
-/

namespace A285018.P5287397649991472985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060507 n : ℚ) / (A167351 (A000079 n).toNat : ℚ)

end

end A285018.P5287397649991472985

/-! ## A285018.P11743672722651320289

`A001021(n)/A284255(A000984(n))`
-/

namespace A285018.P11743672722651320289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n : ℚ) / (A284255 (A000984 n).toNat : ℚ)

end

end A285018.P11743672722651320289

/-!
# A285019: Numerator of (-1/3)^n*sqrt(Pi)/(Gamma(1/2 - n)*Gamma(1 + n)).

The programs for A285019, there is no canonical definition to state claims against.
-/

/-! ## A285019.P16431172807868475447

`lcm(27, A001790(n))/27`
-/

namespace A285019.P16431172807868475447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 27 (A001790 n) : ℚ) / 27

end

end A285019.P16431172807868475447

/-! ## A285019.P14496470671564164836

`A001790(n)/A190906(2*n)`
-/

namespace A285019.P14496470671564164836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A190906 (2 * n) : ℚ)

end

end A285019.P14496470671564164836

/-! ## A285019.P12253201973290616357

`A001790(n)/3^A000989(n)`
-/

namespace A285019.P12253201973290616357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (3 : ℚ) ^ (A000989 n : ℤ)

end

end A285019.P12253201973290616357

/-! ## A285019.P13501617668275723437

`A001790(n)/gcd(27, A000984(n))`
-/

namespace A285019.P13501617668275723437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (Int.gcd 27 (A000984 n) : ℚ)

end

end A285019.P13501617668275723437

/-! ## A285019.P6449762660838465345

`gcd((n+1)*A000108(n), ∏[A007310(n+1)])`
-/

namespace A285019.P6449762660838465345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000108 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A285019.P6449762660838465345

/-!
# A285020: Numerator of binomial(2*n,n)/20^n.

The programs for A285020, the canonical program `A285020.P2019826248152179802` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285020 has offset 0).

The definition of A285020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285020.P2019826248152179802

`A000984(n)/gcd(A000984(n), A004643(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285020

/-- `A000984(n)/gcd(A000984(n), A004643(n))` -/
def P2019826248152179802.Spec : Prop :=
  ∀ n, P2019826248152179802.a n = (A285020 n : ℚ)

end A285020

/-! ## A285020.P1702801406884683377

`A001790(n)/A254609(A046092(n))`
-/

namespace A285020.P1702801406884683377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A254609 (A046092 n).toNat : ℚ)

end

end A285020.P1702801406884683377

namespace A285020

/-- `A001790(n)/A254609(A046092(n))` -/
def P1702801406884683377.Spec : Prop :=
  ∀ n, P1702801406884683377.a n = (A285020 n : ℚ)

end A285020

/-! ## A285020.P17792158747747655915

`gcd(A240530(n), A240533(2*n))`
-/

namespace A285020.P17792158747747655915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240530 n) (A240533 (2 * n))

end

end A285020.P17792158747747655915

namespace A285020

/-- `gcd(A240530(n), A240533(2*n))` -/
def P17792158747747655915.Spec : Prop :=
  ∀ n, (P17792158747747655915.a n : ℤ) = A285020 n

end A285020

/-! ## A285020.P8311058148937495974

`A240533(2*n)/A240533(n)²`
-/

namespace A285020.P8311058148937495974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240533 (2 * n) : ℚ) / (A240533 n ^ 2 : ℚ)

end

end A285020.P8311058148937495974

namespace A285020

/-- `A240533(2*n)/A240533(n)²` -/
def P8311058148937495974.Spec : Prop :=
  ∀ n, P8311058148937495974.a n = (A285020 n : ℚ)

end A285020

/-! ## A285020.P13438396730509149882

`lcm(A001147(n), A052562(n))/A052562(n)`
-/

namespace A285020.P13438396730509149882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001147 n) (A052562 n) : ℚ) / (A052562 n : ℚ)

end

end A285020.P13438396730509149882

namespace A285020

/-- `lcm(A001147(n), A052562(n))/A052562(n)` -/
def P13438396730509149882.Spec : Prop :=
  ∀ n, P13438396730509149882.a n = (A285020 n : ℚ)

end A285020

/-!
# A285021: Denominator of binomial(2*n,n)/20^n.

The programs for A285021, there is no canonical definition to state claims against.
-/

/-! ## A285021.P14372578537380713484

`lcm(A000984(n), A018035(3*n))/A000984(n)`
-/

namespace A285021.P14372578537380713484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000984 n) (A018035 (3 * n)) : ℚ) / (A000984 n : ℚ)

end

end A285021.P14372578537380713484

/-! ## A285021.P9251997196145227567

`A010051(A120804(n+1))/A072436(n+1)*A120796(n)`
-/

namespace A285021.P9251997196145227567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (A120804 (n + 1)).toNat : ℚ) / (A072436 (n + 1) : ℚ) * (A120796 n : ℚ)

end

end A285021.P9251997196145227567

/-! ## A285021.P8646117034577802344

`A020985(A120777(n))/A072436(n+1)*A120796(n)`
-/

namespace A285021.P8646117034577802344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 (A120777 n).toNat : ℚ) / (A072436 (n + 1) : ℚ) * (A120796 n : ℚ)

end

end A285021.P8646117034577802344

/-!
# A285023: Number of n X n 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285023, there is no canonical definition to state claims against.
-/

/-! ## A285023.P17317707830716107564

`A285030(∑[4*n]+1)`
-/

namespace A285023.P17317707830716107564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285023.P17317707830716107564

/-! ## A285023.P5398039427489815237

`A285030(A001844(n))/A007318(∑[n])`
-/

namespace A285023.P5398039427489815237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285030 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A285023.P5398039427489815237

/-! ## A285023.P11169694757641964009

`A014963(4*n+2)*A285030(A001844(n))`
-/

namespace A285023.P11169694757641964009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A285030 (A001844 n).toNat

end

end A285023.P11169694757641964009

/-! ## A285023.P1574481294695091507

`A007318(C(2, n+2))*A285030(A001844(n))`
-/

namespace A285023.P1574481294695091507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A285030 (A001844 n).toNat

end

end A285023.P1574481294695091507

/-! ## A285023.P14964259145497353110

`A285030(A001844(n))/A005117(gcd(n, n+1))`
-/

namespace A285023.P14964259145497353110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285030 (A001844 n).toNat : ℚ) / (A005117 (Nat.gcd n (n + 1)) : ℚ)

end

end A285023.P14964259145497353110

/-!
# A285024: Number of n X 2 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285024, there is no canonical definition to state claims against.
-/

/-! ## A285024.P331925572861960012

`A285030(∑[n+1]+2)`
-/

namespace A285024.P331925572861960012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285024.P331925572861960012

/-! ## A285024.P5030189111478490608

`record[A285030(∑[A152271(n)])]`
-/

namespace A285024.P5030189111478490608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285024.P5030189111478490608

/-! ## A285024.P5976538853054658285

`record[A285030(Δ[A003453(n+5)])]`
-/

namespace A285024.P5976538853054658285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285024.P5976538853054658285

/-! ## A285024.P14592997543254269344

`record[A285030(record[A316669(n+1)])]`
-/

namespace A285024.P14592997543254269344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285024.P14592997543254269344

/-! ## A285024.P8460876516751718259

`record[A097806(n)*A285030(n+1)]`
-/

namespace A285024.P8460876516751718259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A285030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285024.P8460876516751718259

/-!
# A285025: Number of n X 3 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285025, there is no canonical definition to state claims against.
-/

/-! ## A285025.P7589204367832910710

`A285030(∑[n+2]+4)`
-/

namespace A285025.P7589204367832910710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285025.P7589204367832910710

/-! ## A285025.P12028949142981771851

`A285030(A167614(n+1))%((n+1)*10^(n+1)-1)`
-/

namespace A285025.P12028949142981771851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285030 (A167614 (n + 1)).toNat) (((n + 1) * 10 ^ (n + 1) : ℤ) - 1)

end

end A285025.P12028949142981771851

/-! ## A285025.P15655748977498841652

`gcd(A000038(n), A285030(A167614(n+1)))`
-/

namespace A285025.P15655748977498841652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285030 (A167614 (n + 1)).toNat)

end

end A285025.P15655748977498841652

/-! ## A285025.P16731207439661591400

`A285030(A167614(n+1))+A285005(n+1)`
-/

namespace A285025.P16731207439661591400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167614 (n + 1)).toNat + A285005 (n + 1)

end

end A285025.P16731207439661591400

/-! ## A285025.P16039326836600124771

`A285030(A167614(n+1))+A285006(n+1)`
-/

namespace A285025.P16039326836600124771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167614 (n + 1)).toNat + A285006 (n + 1)

end

end A285025.P16039326836600124771

/-!
# A285026: Number of n X 4 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285026, there is no canonical definition to state claims against.
-/

/-! ## A285026.P6212449817273640393

`A285030(A374004(n+1))`
-/

namespace A285026.P6212449817273640393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A374004 (n + 1)).toNat

end

end A285026.P6212449817273640393

/-! ## A285026.P229976235769062300

`A285030(A141214(n)+7)`
-/

namespace A285026.P229976235769062300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A141214 n + 7).toNat

end

end A285026.P229976235769062300

/-! ## A285026.P4363779125872871607

`A285030(A167614(n+2)+1)`
-/

namespace A285026.P4363779125872871607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167614 (n + 2) + 1).toNat

end

end A285026.P4363779125872871607

/-! ## A285026.P8897610819523411330

`A285030(A166136(n+2)-2)`
-/

namespace A285026.P8897610819523411330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A166136 (n + 2) - 2).toNat

end

end A285026.P8897610819523411330

/-! ## A285026.P6364368331879347765

`A285030(A000217(n+3)+4)`
-/

namespace A285026.P6364368331879347765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A000217 (n + 3) + 4).toNat

end

end A285026.P6364368331879347765

/-!
# A285027: Number of n X 5 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285027, there is no canonical definition to state claims against.
-/

/-! ## A285027.P10747013180672743783

`A285030(∑[n+4]+11)`
-/

namespace A285027.P10747013180672743783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A285027.P10747013180672743783

/-! ## A285027.P5371843300992156186

`record[A285030(A167499(A008611(n)))]`
-/

namespace A285027.P5371843300992156186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167499 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285027.P5371843300992156186

/-! ## A285027.P5702664691151725394

`record[A285030(A167499(A008624(n)))]`
-/

namespace A285027.P5702664691151725394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167499 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285027.P5702664691151725394

/-! ## A285027.P14868847631352549071

`A152271(2*n)*A285030(A374005(n+1))`
-/

namespace A285027.P14868847631352549071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A285030 (A374005 (n + 1)).toNat

end

end A285027.P14868847631352549071

/-! ## A285027.P15689957739750712623

`A285030(Δ[A023545(n+1)])+A185238(n)`
-/

namespace A285027.P15689957739750712623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (f1 (n + 1) - f1 n).toNat + A185238 n

end

end A285027.P15689957739750712623

/-!
# A285028: Number of n X 6 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285028, there is no canonical definition to state claims against.
-/

/-! ## A285028.P10935591307986036821

`A285030(A374007(n+1))`
-/

namespace A285028.P10935591307986036821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A374007 (n + 1)).toNat

end

end A285028.P10935591307986036821

/-! ## A285028.P9991942347747437649

`A285030(A166136(n+4))`
-/

namespace A285028.P9991942347747437649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A166136 (n + 4)).toNat

end

end A285028.P9991942347747437649

/-! ## A285028.P6818692573595100421

`A285030(Δ[A264443(n)]+10)`
-/

namespace A285028.P6818692573595100421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (f1 (n + 1) - f1 n + 10).toNat

end

end A285028.P6818692573595100421

/-! ## A285028.P11205165310358691354

`A285030(A167614(n+4)+3)`
-/

namespace A285028.P11205165310358691354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167614 (n + 4) + 3).toNat

end

end A285028.P11205165310358691354

/-! ## A285028.P3344997984458341000

`A285030(eq[7, A131818(n+1)])`
-/

namespace A285028.P3344997984458341000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285028.P3344997984458341000

/-!
# A285029: Number of n X 7 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285029, there is no canonical definition to state claims against.
-/

/-! ## A285029.P3976216462658697017

`A285030(A374008(n+1))`
-/

namespace A285029.P3976216462658697017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A374008 (n + 1)).toNat

end

end A285029.P3976216462658697017

/-! ## A285029.P11012635912438927844

`A285030(A166136(n+5)+1)`
-/

namespace A285029.P11012635912438927844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A166136 (n + 5) + 1).toNat

end

end A285029.P11012635912438927844

/-! ## A285029.P18227860347105086091

`A285030(A167614(n+5)+4)`
-/

namespace A285029.P18227860347105086091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A167614 (n + 5) + 4).toNat

end

end A285029.P18227860347105086091

/-! ## A285029.P10297768683925720887

`A285030(A000124(n+6)+6)`
-/

namespace A285029.P10297768683925720887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A000124 (n + 6) + 6).toNat

end

end A285029.P10297768683925720887

/-! ## A285029.P12895249245768738104

`A285030(eq[8, A131818(n+1)])`
-/

namespace A285029.P12895249245768738104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285029.P12895249245768738104

/-!
# A285031: 0-limiting word of the morphism 0->10, 1-> 001.

The programs for A285031, there is no canonical definition to state claims against.
-/

/-! ## A285031.P4003750921724602745

`Δ[fp[A285033(n+1)]]`
-/

namespace A285031.P4003750921724602745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285031.P4003750921724602745

/-! ## A285031.P14521405288683306956

`char[A285033(1+n)-1]`
-/

namespace A285031.P14521405288683306956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285031.P14521405288683306956

/-! ## A285031.P6371713453872532876

`1-char[A285032(1+n)-1]`
-/

namespace A285031.P6371713453872532876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285032 (1 + n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285031.P6371713453872532876

/-! ## A285031.P6241680719507387622

`Δ[A285036(1+n)]%2`
-/

namespace A285031.P6241680719507387622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A285031.P6241680719507387622

/-! ## A285031.P17224919333922042019

`A010054(Δ[A285036(n+1)])`
-/

namespace A285031.P17224919333922042019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (f1 (n + 1) - f1 n).toNat

end

end A285031.P17224919333922042019

/-! ## A285031.P18159129960997685286

`A186719(Δ[A285036(n+1)])`
-/

namespace A285031.P18159129960997685286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (f1 (n + 1) - f1 n).toNat

end

end A285031.P18159129960997685286

/-! ## A285031.P1133383675126602066

`A248908(Δ[A285036(n+1)])`
-/

namespace A285031.P1133383675126602066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (f1 (n + 1) - f1 n).toNat

end

end A285031.P1133383675126602066

/-! ## A285031.P8835895338779198512

`A285034(Δ[A285036(n+1)])`
-/

namespace A285031.P8835895338779198512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (f1 (n + 1) - f1 n).toNat

end

end A285031.P8835895338779198512

/-! ## A285031.P6768719598161489285

`A285037(Δ[A285036(n+1)])`
-/

namespace A285031.P6768719598161489285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (f1 (n + 1) - f1 n).toNat

end

end A285031.P6768719598161489285

/-! ## A285031.P1744650709288117710

`A284471(A285036(n+2)-A285036(n+1))`
-/

namespace A285031.P1744650709288117710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284471 (A285036 (n + 2) - A285036 (n + 1)).toNat

end

end A285031.P1744650709288117710

/-! ## A285031.P18015771877536240053

`A285034(A285036(n+2)-A285036(n+1))`
-/

namespace A285031.P18015771877536240053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (A285036 (n + 2) - A285036 (n + 1)).toNat

end

end A285031.P18015771877536240053

/-! ## A285031.P12471212260851430931

`A260397(A285036(n+2)-A285036(n+1)+1)`
-/

namespace A285031.P12471212260851430931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (A285036 (n + 2) - A285036 (n + 1) + 1).toNat

end

end A285031.P12471212260851430931

/-! ## A285031.P17178345209605852440

`A285034(Δ[eq[1, A285034(n+1)]])`
-/

namespace A285031.P17178345209605852440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285031.P17178345209605852440

/-!
# A285032: Positions of 0 in A285031; complement of A285033.

The programs for A285032, there is no canonical definition to state claims against.
-/

/-! ## A285032.P11261517609770810681

`comp[A285033(1+n)-1]+1`
-/

namespace A285032.P11261517609770810681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285032.P11261517609770810681

/-! ## A285032.P16311288482191781202

`eq[0, A285031(1+n)]+1`
-/

namespace A285032.P16311288482191781202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285032.P16311288482191781202

/-! ## A285032.P4584166423076625322

`record[n+1-A033951(n)*A285031(n+1)]`
-/

namespace A285032.P4584166423076625322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033951 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P4584166423076625322

/-! ## A285032.P5127992676141421044

`record[n+1-A117951(n)*A285031(n+1)]`
-/

namespace A285032.P5127992676141421044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A117951 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P5127992676141421044

/-! ## A285032.P7508268948277030394

`record[n+1-A189833(n)*A285031(n+1)]`
-/

namespace A285032.P7508268948277030394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189833 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P7508268948277030394

/-! ## A285032.P12905282223878806488

`record[gcd(n+1, A000196(n*A285031(n+1)))]`
-/

namespace A285032.P12905282223878806488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000196 ((n : ℤ) * A285031 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P12905282223878806488

/-! ## A285032.P11521618001227353425

`record[n+1-A141977(n+1)*A285031(n+1)]`
-/

namespace A285032.P11521618001227353425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A141977 (n + 1) * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P11521618001227353425

/-! ## A285032.P3554640363428649901

`record[n+1-A285031(n+1)*A287770(n+1)]`
-/

namespace A285032.P3554640363428649901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285031 (n + 1) * A287770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P3554640363428649901

/-! ## A285032.P1909261267447422773

`record[n+1-A154470(n)*A285031(n+1)]`
-/

namespace A285032.P1909261267447422773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A154470 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P1909261267447422773

/-! ## A285032.P3934969917027578383

`record[n+1-A123870(n)*A285031(n+1)]`
-/

namespace A285032.P3934969917027578383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A123870 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P3934969917027578383

/-! ## A285032.P3097996145103509651

`record[n+1-A033484(n)*A285031(n+1)]`
-/

namespace A285032.P3097996145103509651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033484 n * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285032.P3097996145103509651

/-! ## A285032.P8965071008836133198

`A156876(p?[A285031(n+1)+A156658(n+1)])`
-/

namespace A285032.P8965071008836133198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (n + 1) + A156658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156876 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285032.P8965071008836133198

/-!
# A285033: Positions of 1 in A285031; complement of A285032.

The programs for A285033, there is no canonical definition to state claims against.
-/

/-! ## A285033.P10786730901656667658

`comp[A285032(n+1)-1]+1`
-/

namespace A285033.P10786730901656667658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285032 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285033.P10786730901656667658

/-! ## A285033.P2479217137244924377

`lt[0, A285031(1+n)]+1`
-/

namespace A285033.P2479217137244924377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285033.P2479217137244924377

/-! ## A285033.P11981923667385966636

`record[(n+3)*A285031(n+3)]`
-/

namespace A285033.P11981923667385966636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A285031 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285033.P11981923667385966636

/-! ## A285033.P6217569780565895652

`filter[A344180(n), A285031(#)]`
-/

namespace A285033.P6217569780565895652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P6217569780565895652

/-! ## A285033.P12723736305925305832

`eq[1, A285031(gcd(n, A008574(n)))]`
-/

namespace A285033.P12723736305925305832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285033.P12723736305925305832

/-! ## A285033.P2404654608540958575

`eq[1, A285037(Δ[A285036(n+1)])]+1`
-/

namespace A285033.P2404654608540958575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285033.P2404654608540958575

/-! ## A285033.P467268729760573815

`eq[1, A285034(A285036(n+2)-A285036(n+1))]+1`
-/

namespace A285033.P467268729760573815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (A285036 (n + 2) - A285036 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285033.P467268729760573815

/-! ## A285033.P589781413697796172

`filter[A092942(n+1), A285031(#)]`
-/

namespace A285033.P589781413697796172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P589781413697796172

/-! ## A285033.P11018522097232268888

`filter[A152271(n), A285031(#)]`
-/

namespace A285033.P11018522097232268888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P11018522097232268888

/-! ## A285033.P4423845670859206570

`filter[A158416(n), A285031(#)]`
-/

namespace A285033.P4423845670859206570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P4423845670859206570

/-! ## A285033.P607916022964180847

`filter[A038459(n+1), A285031(#)]`
-/

namespace A285033.P607916022964180847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P607916022964180847

/-! ## A285033.P15172795990958779257

`filter[A133622(n+1), A285031(#)]`
-/

namespace A285033.P15172795990958779257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P15172795990958779257

/-! ## A285033.P10583660042283387792

`filter[A179820(n+1), A285031(#)]`
-/

namespace A285033.P10583660042283387792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P10583660042283387792

/-! ## A285033.P12319038250825342578

`eq[1, A285031(A008619(A004273(n)))]`
-/

namespace A285033.P12319038250825342578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285033.P12319038250825342578

/-! ## A285033.P18241358832509299480

`filter[A100727(n), A285031(#)]`
-/

namespace A285033.P18241358832509299480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P18241358832509299480

/-! ## A285033.P12572030138702751158

`filter[A332864(n+1), A285031(#)]`
-/

namespace A285033.P12572030138702751158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285031 (f1 j).toNat = 1) n)

end

end A285033.P12572030138702751158

/-! ## A285033.P7061345810060253694

`eq[1, A285031(A233583(n+1))]`
-/

namespace A285033.P7061345810060253694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285033.P7061345810060253694

/-! ## A285033.P10308705481729650405

`A156876(p?[A156658(n+1)*A285031(n+1)])`
-/

namespace A285033.P10308705481729650405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1) * A285031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156876 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285033.P10308705481729650405

/-!
# A285034: 1-limiting word of the morphism 0->10, 1-> 001.

The programs for A285034, there is no canonical definition to state claims against.
-/

/-! ## A285034.P17596132146845586014

`Δ[fp[A285036(n+1)]]`
-/

namespace A285034.P17596132146845586014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285034.P17596132146845586014

/-! ## A285034.P13950402840127535271

`char[comp[A285035(1+n)-1]]`
-/

namespace A285034.P13950402840127535271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285035 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285034.P13950402840127535271

/-! ## A285034.P15953382127933657783

`Δ[A285033(1+n)]%2`
-/

namespace A285034.P15953382127933657783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A285034.P15953382127933657783

/-! ## A285034.P14371424351973208067

`and(1, Δ[A285033(n+1)])`
-/

namespace A285034.P14371424351973208067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A285034.P14371424351973208067

/-! ## A285034.P10803698729215516789

`A000035(Δ[A285033(n+1)])`
-/

namespace A285034.P10803698729215516789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A285034.P10803698729215516789

/-! ## A285034.P2137665251571445358

`A010054(Δ[A285033(n+1)])`
-/

namespace A285034.P2137665251571445358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (f1 (n + 1) - f1 n).toNat

end

end A285034.P2137665251571445358

/-! ## A285034.P424392933807051233

`A248908(Δ[A285033(n+1)])`
-/

namespace A285034.P424392933807051233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (f1 (n + 1) - f1 n).toNat

end

end A285034.P424392933807051233

/-! ## A285034.P10570594199618539341

`A285037(Δ[A285033(n+1)])`
-/

namespace A285034.P10570594199618539341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (f1 (n + 1) - f1 n).toNat

end

end A285034.P10570594199618539341

/-! ## A285034.P3649979020747218256

`2-A077883(Δ[A285033(n+1)])`
-/

namespace A285034.P3649979020747218256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077883 (f1 (n + 1) - f1 n).toNat

end

end A285034.P3649979020747218256

/-! ## A285034.P9207377615852490289

`(A285033(n+2)+A285033(n+1))%2`
-/

namespace A285034.P9207377615852490289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285033 (n + 2) + A285033 (n + 1)) 2

end

end A285034.P9207377615852490289

/-! ## A285034.P6077449313442292322

`A248908(A285033(n+2)-A285033(n+1))`
-/

namespace A285034.P6077449313442292322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A285033 (n + 2) - A285033 (n + 1)).toNat

end

end A285034.P6077449313442292322

/-!
# A285035: Positions of 0 in A285034; complement of A285036.

The programs for A285035, there is no canonical definition to state claims against.
-/

/-! ## A285035.P8790536335870648210

`comp[A285036(1+n)-1]+1`
-/

namespace A285035.P8790536335870648210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285036 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285035.P8790536335870648210

/-! ## A285035.P12358070267499018005

`eq[0, A285034(1+n)]+1`
-/

namespace A285035.P12358070267499018005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285035.P12358070267499018005

/-! ## A285035.P1484740614704666817

`A020725(eq[0, A285034(1+n)])`
-/

namespace A285035.P1484740614704666817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285035.P1484740614704666817

/-! ## A285035.P11223558253659160143

`lt[A001222(Δ[A285033(n+1)]!), 2]+2`
-/

namespace A285035.P11223558253659160143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (f2 (n + 1) - f2 n).toNat)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A285035.P11223558253659160143

/-! ## A285035.P5368216938344584863

`record[A005843(n+1-A285034(n+2))-n]`
-/

namespace A285035.P5368216938344584863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1 : ℤ) - A285034 (n + 2)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285035.P5368216938344584863

/-! ## A285035.P15498039707559695715

`eq[0, A285034(A065033(2*n))]`
-/

namespace A285035.P15498039707559695715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285035.P15498039707559695715

/-! ## A285035.P14638476674530759427

`eq[0, A285034(A123108(2*n))]`
-/

namespace A285035.P14638476674530759427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285035.P14638476674530759427

/-!
# A285036: Positions of 1 in A285034; complement of A285035.

The programs for A285036, there is no canonical definition to state claims against.
-/

/-! ## A285036.P12044527228996900068

`comp[A285035(1+n)-1]+1`
-/

namespace A285036.P12044527228996900068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285035 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285036.P12044527228996900068

/-! ## A285036.P5914355682989249284

`lt[0, A285034(1+n)]+1`
-/

namespace A285036.P5914355682989249284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285036.P5914355682989249284

/-! ## A285036.P9736983903377410640

`eq[1, A285034(n+1)]+1`
-/

namespace A285036.P9736983903377410640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285036.P9736983903377410640

/-! ## A285036.P13989052181397540398

`record[(1+n)*A285034(n+2)+1]`
-/

namespace A285036.P13989052181397540398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A285034 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P13989052181397540398

/-! ## A285036.P10850446812373512402

`record[A000027(n+1)*A285034(n+1)]`
-/

namespace A285036.P10850446812373512402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P10850446812373512402

/-! ## A285036.P16536558626662908128

`record[(A285033(n+2)+A285033(n+1))%2*(n+1)]`
-/

namespace A285036.P16536558626662908128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285033 (n + 2) + A285033 (n + 1)) 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P16536558626662908128

/-! ## A285036.P849346691248576205

`record[A133310(n)*A285034(A133310(n))]`
-/

namespace A285036.P849346691248576205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A285034 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P849346691248576205

/-! ## A285036.P1251540238423591930

`filter[A038459(n+1), A285034(#)]`
-/

namespace A285036.P1251540238423591930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285034 (f1 j).toNat = 1) n)

end

end A285036.P1251540238423591930

/-! ## A285036.P4524115730925399779

`record[A266285(2*n)*A285034(n+1)]`
-/

namespace A285036.P4524115730925399779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (2 * n) * A285034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P4524115730925399779

/-! ## A285036.P4489405831081027244

`record[A008619(n)*A285034(A008619(n))]`
-/

namespace A285036.P4489405831081027244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285034 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P4489405831081027244

/-! ## A285036.P11386826466047524480

`record[A065033(n)*A285034(A065033(n))]`
-/

namespace A285036.P11386826466047524480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A285034 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285036.P11386826466047524480

/-! ## A285036.P1502944431824353060

`filter[A072442(n), A285034(#)]`
-/

namespace A285036.P1502944431824353060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285034 (f1 j).toNat = 1) n)

end

end A285036.P1502944431824353060

/-!
# A285037: Irregular triangle read by rows: T(n,k) is the number of primitive (period n) periodic palindromic structures using exactly k different symbols, 1 <= k <= n/2 + 1.

The programs for A285037, there is no canonical definition to state claims against.
-/

/-! ## A285037.P8977917097697083443

`A247506(lt[A185255(n), A098158(n)])`
-/

namespace A285037.P8977917097697083443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285037.P8977917097697083443

/-! ## A285037.P15644964715406900067

`A055791(A379801(n)%A220503(n+3))`
-/

namespace A285037.P15644964715406900067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (Int.tmod (A379801 n) (A220503 (n + 3))).toNat

end

end A285037.P15644964715406900067

/-! ## A285037.P6067060308318901811

`A007895(C(A336096(n+3), A000005(n+1)))`
-/

namespace A285037.P6067060308318901811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose (A336096 (n + 3)).toNat (A000005 (n + 1)).toNat)

end

end A285037.P6067060308318901811

/-! ## A285037.P13220064748377755163

`A007895(C(A336096(n+3), A303809(n+1)))`
-/

namespace A285037.P13220064748377755163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose (A336096 (n + 3)).toNat (A303809 (n + 1)).toNat)

end

end A285037.P13220064748377755163

/-! ## A285037.P7551419452598635687

`A053121(lt[A000700(n), A025581(3*(n+1))])`
-/

namespace A285037.P7551419452598635687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285037.P7551419452598635687

/-!
# A285038: a(n) = least k such that k*n belongs to A120383.

The programs for A285038, there is no canonical definition to state claims against.
-/

/-! ## A285038.P5008431145848336462

`A083720(n+1)%A092861(A000041(n))`
-/

namespace A285038.P5008431145848336462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083720 (n + 1)) (A092861 (A000041 n).toNat)

end

end A285038.P5008431145848336462

/-! ## A285038.P13290369597276418141

`gcd(A037130(A335405(n)), A225652(n+1))`
-/

namespace A285038.P13290369597276418141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037130 (A335405 n).toNat) (A225652 (n + 1))

end

end A285038.P13290369597276418141

/-! ## A285038.P14551092730361271941

`A130446(A083720(n+1))%A200568(n+1)`
-/

namespace A285038.P14551092730361271941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130446 (A083720 (n + 1)).toNat) (A200568 (n + 1))

end

end A285038.P14551092730361271941

/-! ## A285038.P6509883098651198122

`gcd(A064757(n+1), A130984(A339190(n+2)))`
-/

namespace A285038.P6509883098651198122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064757 (n + 1)) (A130984 (A339190 (n + 2)).toNat)

end

end A285038.P6509883098651198122

/-!
# A285039: Lexicographically earliest sequence of distinct terms such that, for any n>0, a(n) is divisible by k and a(n+1) is divisible by prime(k) for some k.

The programs for A285039, there is no canonical definition to state claims against.
-/

/-! ## A285039.P465431161888929614

`fo[A285041(n+1)-1]+1`
-/

namespace A285039.P465431161888929614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285041 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A285039.P465431161888929614

/-!
# A285040: Numbers n such that three-halves of n equals the reverse of n.

The programs for A285040, there is no canonical definition to state claims against.
-/

/-! ## A285040.P13751421092355082659

`2*A008918(1+n)`
-/

namespace A285040.P13751421092355082659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008918 (1 + n)

end

end A285040.P13751421092355082659

/-! ## A285040.P4998933354596891004

`A222815(1+n)/2`
-/

namespace A285040.P4998933354596891004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222815 (1 + n) : ℚ) / 2

end

end A285040.P4998933354596891004

/-! ## A285040.P13648441479359745037

`4*A001232(1+n)`
-/

namespace A285040.P13648441479359745037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001232 (1 + n)

end

end A285040.P13648441479359745037

/-! ## A285040.P3526844894995890256

`lcm(4, A001232(n+1))`
-/

namespace A285040.P3526844894995890256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A001232 (n + 1))

end

end A285040.P3526844894995890256

/-! ## A285040.P4751217436305595061

`4*A222814(n+1)/9`
-/

namespace A285040.P4751217436305595061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A222814 (n + 1) : ℚ) / 9)

end

end A285040.P4751217436305595061

/-! ## A285040.P16289704585290453511

`A008918(n+1)+A008918(n+1)`
-/

namespace A285040.P16289704585290453511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1) + A008918 (n + 1)

end

end A285040.P16289704585290453511

/-! ## A285040.P15561775274694518583

`(A222814(n+1)-A001232(n+1))/2`
-/

namespace A285040.P15561775274694518583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222814 (n + 1) - A001232 (n + 1) : ℚ) / 2

end

end A285040.P15561775274694518583

/-! ## A285040.P14328797751260918877

`2/3*A101704(n+2)`
-/

namespace A285040.P14328797751260918877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A101704 (n + 2) : ℚ)

end

end A285040.P14328797751260918877

/-! ## A285040.P16502053905422535075

`A101706(n+2)+A001232(n+1)`
-/

namespace A285040.P16502053905422535075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) + A001232 (n + 1)

end

end A285040.P16502053905422535075

/-! ## A285040.P16527689478742417146

`A101704(n+2)-(A001232(n+1)+A001232(n+1))`
-/

namespace A285040.P16527689478742417146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2) - (A001232 (n + 1) + A001232 (n + 1))

end

end A285040.P16527689478742417146

/-! ## A285040.P5234100907163293642

`record[A031877(n+1)-2*A072141(n+1)]`
-/

namespace A285040.P5234100907163293642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031877 (n + 1) - 2 * A072141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285040.P5234100907163293642

/-! ## A285040.P16400652504279271685

`2*∩[A008919(n+1), A072141(n+1)]`
-/

namespace A285040.P16400652504279271685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285040.P16400652504279271685

/-! ## A285040.P6536827757422548403

`2*∩[A071685(n+1), A072141(n+1)]`
-/

namespace A285040.P6536827757422548403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285040.P6536827757422548403

/-!
# A285041: Inverse permutation to A285039.

The programs for A285041, there is no canonical definition to state claims against.
-/

/-! ## A285041.P4363418369066089352

`fo[A285039(n+1)-1]+1`
-/

namespace A285041.P4363418369066089352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285039 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A285041.P4363418369066089352

/-! ## A285041.P13615598036440907122

`A121878(A332808(n+1)%A327322(3*(n+1)))`
-/

namespace A285041.P13615598036440907122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (Int.tmod (A332808 (n + 1)) (A327322 (3 * (n + 1)))).toNat

end

end A285041.P13615598036440907122

/-!
# A285042: Number of primitive (period n) periodic palindromic structures of length n using an infinite alphabet.

The programs for A285042, there is no canonical definition to state claims against.
-/

/-! ## A285042.P8782207656041049074

`A102683(A000079(n))+A056517(n)`
-/

namespace A285042.P8782207656041049074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000079 n).toNat + A056517 n

end

end A285042.P8782207656041049074

/-! ## A285042.P9244851521106818602

`A185284(A342521(2*n+5))+A056517(n)`
-/

namespace A285042.P9244851521106818602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A342521 (2 * n + 5)).toNat + A056517 n

end

end A285042.P9244851521106818602

/-! ## A285042.P15505727163407773747

`A056517(n)+A000290(A172538(n+1))`
-/

namespace A285042.P15505727163407773747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 n + A000290 (A172538 (n + 1)).toNat

end

end A285042.P15505727163407773747

/-! ## A285042.P7752298285367395756

`A056517(A004895(n+1))`
-/

namespace A285042.P7752298285367395756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 (A004895 (n + 1)).toNat

end

end A285042.P7752298285367395756

/-! ## A285042.P11151444220177757459

`A056517(A004906(n+1))`
-/

namespace A285042.P11151444220177757459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056517 (A004906 (n + 1)).toNat

end

end A285042.P11151444220177757459

/-!
# A285043: Expansion of cosh(3*arctanh(2*sqrt(x))).

The programs for A285043, the canonical program `A285043.P15842526590258652725` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285043 has offset 0).

The definition of A285043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285043.P7068082011833043800

`(4*n-2)*(8*n+1)*a(n-1)/(n*(8*(n-1)+1))` with `a(0)=1`
-/

namespace A285043.P7068082011833043800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((4 * n : ℤ) - 2) * (8 * n + 1 : ℤ) : ℚ) * a (n - 1) / ((n : ℤ) * (8 * ((n : ℤ) - 1) + 1) : ℚ)

end

end A285043.P7068082011833043800

namespace A285043

/-- `(4*n-2)*(8*n+1)*a(n-1)/(n*(8*(n-1)+1))` -/
def P7068082011833043800.Spec : Prop :=
  ∀ n, P7068082011833043800.a n = (A285043 n : ℚ)

end A285043

/-! ## A285043.P15842526590258652725

`(8*n+1)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285043

/-- `(8*n+1)*C(2*n, n)` -/
def P15842526590258652725.Spec : Prop :=
  ∀ n, (P15842526590258652725.a n : ℤ) = A285043 n

theorem P15842526590258652725.correct : P15842526590258652725.Spec := by
  intro n
  simp only [A285043]

end A285043

/-! ## A285043.P7676268566115902220

`A305031(2*n)`
-/

namespace A285043.P7676268566115902220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305031 (2 * n)

end

end A285043.P7676268566115902220

namespace A285043

/-- `A305031(2*n)` -/
def P7676268566115902220.Spec : Prop :=
  ∀ n, P7676268566115902220.a n = A285043 n

end A285043

/-! ## A285043.P6995346683932481000

`(1+n)*A050478(n)`
-/

namespace A285043.P6995346683932481000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A050478 n

end

end A285043.P6995346683932481000

namespace A285043

/-- `(1+n)*A050478(n)` -/
def P6995346683932481000.Spec : Prop :=
  ∀ n, P6995346683932481000.a n = A285043 n

end A285043

/-! ## A285043.P16784197725615046813

`(1+8*n)*A000984(n)`
-/

namespace A285043.P16784197725615046813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 8 * n : ℤ) * A000984 n

end

end A285043.P16784197725615046813

namespace A285043

/-- `(1+8*n)*A000984(n)` -/
def P16784197725615046813.Spec : Prop :=
  ∀ n, P16784197725615046813.a n = A285043 n

theorem P16784197725615046813.correct : P16784197725615046813.Spec := by
  intro n
  simp only [A285043, Nat.add_sub_cancel, A285043.P16784197725615046813.a, A285043.P15842526590258652725.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285043

/-! ## A285043.P304385918171736239

`record[(4*n+1)*A126869(n)]`
-/

namespace A285043.P304385918171736239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285043.P304385918171736239

namespace A285043

/-- `record[(4*n+1)*A126869(n)]` -/
def P304385918171736239.Spec : Prop :=
  ∀ n, P304385918171736239.a n = A285043 n

end A285043

/-! ## A285043.P2594795564790285056

`A000108(n)*∑[16*n+1]`
-/

namespace A285043.P2594795564790285056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A285043.P2594795564790285056

namespace A285043

/-- `A000108(n)*∑[16*n+1]` -/
def P2594795564790285056.Spec : Prop :=
  ∀ n, P2594795564790285056.a n = A285043 n

end A285043

/-! ## A285043.P12702802785071845038

`A001405(2*n)*(8*n+1)`
-/

namespace A285043.P12702802785071845038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * (8 * n + 1 : ℤ)

end

end A285043.P12702802785071845038

namespace A285043

/-- `A001405(2*n)*(8*n+1)` -/
def P12702802785071845038.Spec : Prop :=
  ∀ n, P12702802785071845038.a n = A285043 n

end A285043

/-! ## A285043.P11636328259912642032

`A063886(2*n)*(8*n+1)`
-/

namespace A285043.P11636328259912642032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) * (8 * n + 1 : ℤ)

end

end A285043.P11636328259912642032

namespace A285043

/-- `A063886(2*n)*(8*n+1)` -/
def P11636328259912642032.Spec : Prop :=
  ∀ n, P11636328259912642032.a n = A285043 n

end A285043

/-! ## A285043.P7134393283637526740

`(8*n+1)*A028329(n)/2`
-/

namespace A285043.P7134393283637526740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℚ) * ((A028329 n : ℚ) / 2)

end

end A285043.P7134393283637526740

namespace A285043

/-- `(8*n+1)*A028329(n)/2` -/
def P7134393283637526740.Spec : Prop :=
  ∀ n, P7134393283637526740.a n = (A285043 n : ℚ)

theorem P7134393283637526740.correct : P7134393283637526740.Spec := by
  intro n
  simp only [A285043, Nat.add_sub_cancel, A285043.P7134393283637526740.a, A285043.P15842526590258652725.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285043

/-! ## A285043.P14984344920989311707

`A000984(n)*A017077(n)`
-/

namespace A285043.P14984344920989311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A017077 n

end

end A285043.P14984344920989311707

namespace A285043

/-- `A000984(n)*A017077(n)` -/
def P14984344920989311707.Spec : Prop :=
  ∀ n, P14984344920989311707.a n = A285043 n

theorem P14984344920989311707.correct : P14984344920989311707.Spec := by
  intro n
  simp only [A285043, Nat.add_sub_cancel, A285043.P14984344920989311707.a, A285043.P15842526590258652725.a, A000984, A000984.P7946844122574426130.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285043

/-! ## A285043.P2627336412120769589

`A000007(n)+2*A305612(2*n)`
-/

namespace A285043.P2627336412120769589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A305612 (2 * n)

end

end A285043.P2627336412120769589

namespace A285043

/-- `A000007(n)+2*A305612(2*n)` -/
def P2627336412120769589.Spec : Prop :=
  ∀ n, P2627336412120769589.a n = A285043 n

end A285043

/-! ## A285043.P4694271893376857022

`A016813(2*n)*A056040(2*n)`
-/

namespace A285043.P4694271893376857022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A056040 (2 * n)

end

end A285043.P4694271893376857022

namespace A285043

/-- `A016813(2*n)*A056040(2*n)` -/
def P4694271893376857022.Spec : Prop :=
  ∀ n, P4694271893376857022.a n = A285043 n

end A285043

/-! ## A285043.P1346227322378752855

`(8*n+1)*A001405(A004277(n))`
-/

namespace A285043.P1346227322378752855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A001405 (A004277 n).toNat

end

end A285043.P1346227322378752855

namespace A285043

/-- `(8*n+1)*A001405(A004277(n))` -/
def P1346227322378752855.Spec : Prop :=
  ∀ n, P1346227322378752855.a n = A285043 n

end A285043

/-! ## A285043.P8388018433673697975

`(A016825(2*n)-1)*A063886(2*n)`
-/

namespace A285043.P8388018433673697975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n) - 1) * A063886 (2 * n)

end

end A285043.P8388018433673697975

namespace A285043

/-- `(A016825(2*n)-1)*A063886(2*n)` -/
def P8388018433673697975.Spec : Prop :=
  ∀ n, P8388018433673697975.a n = A285043 n

end A285043

/-! ## A285043.P8785944587422165396

`2*A152548(2*n)-A056040(2*n)`
-/

namespace A285043.P8785944587422165396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152548 (2 * n) - A056040 (2 * n)

end

end A285043.P8785944587422165396

namespace A285043

/-- `2*A152548(2*n)-A056040(2*n)` -/
def P8785944587422165396.Spec : Prop :=
  ∀ n, P8785944587422165396.a n = A285043 n

end A285043

/-! ## A285043.P14494256183624078159

`(A111284(2*(n+1))-1)*A056040(2*n)`
-/

namespace A285043.P14494256183624078159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111284 (2 * (n + 1)) - 1) * A056040 (2 * n)

end

end A285043.P14494256183624078159

namespace A285043

/-- `(A111284(2*(n+1))-1)*A056040(2*n)` -/
def P14494256183624078159.Spec : Prop :=
  ∀ n, P14494256183624078159.a n = A285043 n

end A285043

/-! ## A285043.P1186975167709938841

`A305612(2*n+1)-2*A056040(2*n)`
-/

namespace A285043.P1186975167709938841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 (2 * n + 1) - 2 * A056040 (2 * n)

end

end A285043.P1186975167709938841

namespace A285043

/-- `A305612(2*n+1)-2*A056040(2*n)` -/
def P1186975167709938841.Spec : Prop :=
  ∀ n, P1186975167709938841.a n = A285043 n

end A285043

/-! ## A285043.P14832794771365735970

`2*A152548(2*n)-A210736(2*n+1)`
-/

namespace A285043.P14832794771365735970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152548 (2 * n) - A210736 (2 * n + 1)

end

end A285043.P14832794771365735970

namespace A285043

/-- `2*A152548(2*n)-A210736(2*n+1)` -/
def P14832794771365735970.Spec : Prop :=
  ∀ n, P14832794771365735970.a n = A285043 n

end A285043

/-! ## A285043.P344642461208799520

`A305612(2*n+1)-2*A210736(2*n+1)`
-/

namespace A285043.P344642461208799520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 (2 * n + 1) - 2 * A210736 (2 * n + 1)

end

end A285043.P344642461208799520

namespace A285043

/-- `A305612(2*n+1)-2*A210736(2*n+1)` -/
def P344642461208799520.Spec : Prop :=
  ∀ n, P344642461208799520.a n = A285043 n

end A285043

/-!
# A285044: Expansion of cosh(5*arctanh(2*sqrt(x))).

The programs for A285044, the canonical program `A285044.P6902274512171878928` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285044 has offset 0).

The definition of A285044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285044.P6902274512171878928

`1/3*(64*n²+8*n+3)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285044

/-- `1/3*(64*n²+8*n+3)*C(2*n, n)` -/
def P6902274512171878928.Spec : Prop :=
  ∀ n, P6902274512171878928.a n = (A285044 n : ℚ)

end A285044

/-! ## A285044.P10925217924383233597

`∑[(1-8*n)²]*A000108(n)`
-/

namespace A285044.P10925217924383233597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (8 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A285044.P10925217924383233597

namespace A285044

/-- `∑[(1-8*n)²]*A000108(n)` -/
def P10925217924383233597.Spec : Prop :=
  ∀ n, P10925217924383233597.a n = A285044 n

end A285044

/-!
# A285045: Expansion of cosh(7*arctanh(2*sqrt(x))).

The programs for A285045, the canonical program `A285045.P8457860303866736615` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285045 has offset 0).

The definition of A285045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285045.P8457860303866736615

`((8*n)^3+(8*n)²+n*144+15)*C(2*n, n)/15`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285045

/-- `((8*n)^3+(8*n)²+n*144+15)*C(2*n, n)/15` -/
def P8457860303866736615.Spec : Prop :=
  ∀ n, P8457860303866736615.a n = (A285045 n : ℚ)

end A285045

/-! ## A285045.P3661422759076141986

`A401116(A167614(n+2))`
-/

namespace A285045.P3661422759076141986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401116 (A167614 (n + 2)).toNat

end

end A285045.P3661422759076141986

namespace A285045

/-- `A401116(A167614(n+2))` -/
def P3661422759076141986.Spec : Prop :=
  ∀ n, P3661422759076141986.a n = A285045 n

end A285045

/-! ## A285045.P14834530373735255415

`A384335(n)/A001019(n)`
-/

namespace A285045.P14834530373735255415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384335 n : ℚ) / (A001019 n : ℚ)

end

end A285045.P14834530373735255415

namespace A285045

/-- `A384335(n)/A001019(n)` -/
def P14834530373735255415.Spec : Prop :=
  ∀ n, P14834530373735255415.a n = (A285045 n : ℚ)

end A285045

/-! ## A285045.P9568139274922007322

`A384335(n)/A000244(n)²`
-/

namespace A285045.P9568139274922007322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384335 n : ℚ) / (A000244 n ^ 2 : ℚ)

end

end A285045.P9568139274922007322

namespace A285045

/-- `A384335(n)/A000244(n)²` -/
def P9568139274922007322.Spec : Prop :=
  ∀ n, P9568139274922007322.a n = (A285045 n : ℚ)

end A285045

/-! ## A285045.P1393313850346748669

`((8*n)^3+(8*n)²+n*144+15)*(2*n)!/(15*n!²)`
-/

namespace A285045.P1393313850346748669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 * n) ^ 3 + (8 * n) ^ 2 + n * 144 + 15) * Nat.factorial (2 * n) : ℚ) / (15 * Nat.factorial n ^ 2 : ℚ)

end

end A285045.P1393313850346748669

namespace A285045

/-- `((8*n)^3+(8*n)²+n*144+15)*(2*n)!/(15*n!²)` -/
def P1393313850346748669.Spec : Prop :=
  ∀ n, P1393313850346748669.a n = (A285045 n : ℚ)

end A285045

/-!
# A285046: Expansion of cosh(9*arctanh(2*sqrt(x))).

The programs for A285046, there is no canonical definition to state claims against.
-/

/-! ## A285046.P2217306736990425998

`A383928(n)/4^n`
-/

namespace A285046.P2217306736990425998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383928 n : ℚ) / (4 ^ n : ℚ)

end

end A285046.P2217306736990425998

/-! ## A285046.P14006339799350960791

`A384417(n)/A001025(n)`
-/

namespace A285046.P14006339799350960791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384417 n : ℚ) / (A001025 n : ℚ)

end

end A285046.P14006339799350960791

/-! ## A285046.P5230949125385139968

`record[A262616(n)]*A383928(n)/A001025(n)`
-/

namespace A285046.P5230949125385139968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A383928 n : ℚ) / (A001025 n : ℚ)

end

end A285046.P5230949125385139968

/-!
# A285048: Expansion of Product_{k>=0} 1/(1-x^(4*k+1))^(4*k+1).

The programs for A285048, there is no canonical definition to state claims against.
-/

/-! ## A285048.P8903812341599448121

`abs(A285287(n))`
-/

namespace A285048.P8903812341599448121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285287 n|

end

end A285048.P8903812341599448121

/-! ## A285048.P10500336757034119635

`A033999(n)*A285287(n)`
-/

namespace A285048.P10500336757034119635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A285287 n

end

end A285048.P10500336757034119635

/-! ## A285048.P15277737829818618867

`gcd(A000038(n), A285287(n))`
-/

namespace A285048.P15277737829818618867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285287 n)

end

end A285048.P15277737829818618867

/-! ## A285048.P11389752178819729340

`lcm(A020985(n), A285287(n))`
-/

namespace A285048.P11389752178819729340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285287 n)

end

end A285048.P11389752178819729340

/-! ## A285048.P14616006501356946831

`A285287(n)/A033999(n+4)`
-/

namespace A285048.P14616006501356946831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285287 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A285048.P14616006501356946831

/-! ## A285048.P16811608266980196253

`A009001(2*(n+2))*A285287(n)`
-/

namespace A285048.P16811608266980196253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * (n + 2)) * A285287 n

end

end A285048.P16811608266980196253

/-! ## A285048.P7760139408207020016

`-(A165326(3*n+2)*A285287(n))`
-/

namespace A285048.P7760139408207020016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A165326 (3 * n + 2) * A285287 n)

end

end A285048.P7760139408207020016

/-! ## A285048.P12164397357843337552

`A054354(A054353(n+1))*A285287(n)`
-/

namespace A285048.P12164397357843337552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A285287 n

end

end A285048.P12164397357843337552

/-! ## A285048.P14577091185821625777

`A008683(A007918(n))^n*A285287(n)`
-/

namespace A285048.P14577091185821625777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat ^ n * A285287 n

end

end A285048.P14577091185821625777

/-! ## A285048.P17569190163956163055

`A262811(n)/A284628(n)*A285287(n)`
-/

namespace A285048.P17569190163956163055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A284628 n : ℚ) * (A285287 n : ℚ)

end

end A285048.P17569190163956163055

/-! ## A285048.P788756140447765200

`floor(sqrt(A001222(n+1)+A285287(n)²))`
-/

namespace A285048.P788756140447765200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001222 (n + 1) + A285287 n ^ 2)

end

end A285048.P788756140447765200

/-! ## A285048.P9137331223769611703

`floor(sqrt(A097203(n+1)+A285287(n)²))`
-/

namespace A285048.P9137331223769611703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A097203 (n + 1) + A285287 n ^ 2)

end

end A285048.P9137331223769611703

/-!
# A285052: Number of idempotent equivalence classes for multiplication in Zn.

The programs for A285052, there is no canonical definition to state claims against.
-/

/-! ## A285052.P1375519945704163528

`∏{p}[n+1, ceil(atan(#))²]`
-/

namespace A285052.P1375519945704163528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ ^ 2

end

end A285052.P1375519945704163528

/-! ## A285052.P12822968436584985637

`∏{p}[n+1, 4%(#+3)]`
-/

namespace A285052.P12822968436584985637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 % (p + 3)

end

end A285052.P12822968436584985637

/-! ## A285052.P9230144694597097321

`∏{p}[n+1, gcd(4, 4*#)]`
-/

namespace A285052.P9230144694597097321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 4 (4 * p)

end

end A285052.P9230144694597097321

/-! ## A285052.P2440282169473110735

`∏{p}[n+1, val(#, 4)+4]`
-/

namespace A285052.P2440282169473110735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation p 4 + 4)

end

end A285052.P2440282169473110735

/-! ## A285052.P9522247255891173068

`∏{e}[n+1, gcd(7, #)+3]`
-/

namespace A285052.P9522247255891173068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.gcd 7 (Nat.factorization (f1 n) p) + 3)

end

end A285052.P9522247255891173068

/-! ## A285052.P15772251219989152969

`∏{e}[n+1, (4^#)%6]`
-/

namespace A285052.P15772251219989152969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p % 6

end

end A285052.P15772251219989152969

/-! ## A285052.P12803204289366760698

`∏{e}[n+1, or(7, #)-3]`
-/

namespace A285052.P12803204289366760698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.lor 7 (Nat.factorization (f1 n) p) : ℤ) - 3)

end

end A285052.P12803204289366760698

/-! ## A285052.P11830308139356950972

`∏{e}[n+1, and(8, #)+4]`
-/

namespace A285052.P11830308139356950972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land 8 (Nat.factorization (f1 n) p) + 4)

end

end A285052.P11830308139356950972

/-! ## A285052.P10344431032629790696

`∏{p}[n+1, and(4, -#²)]`
-/

namespace A285052.P10344431032629790696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land 4 (-(p ^ 2 : ℤ))

end

end A285052.P10344431032629790696

/-! ## A285052.P14871612182693977543

`∏{p}[n+1, ceil(root(2, #))]²`
-/

namespace A285052.P14871612182693977543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (p : ℝ))⌉) ^ 2

end

end A285052.P14871612182693977543

/-!
# A285054: Numbers whose sum of digits are congruent (mod 10) to the string 1,2, ..., 9.

The programs for A285054, there is no canonical definition to state claims against.
-/

/-! ## A285054.P1602366839667366558

`A098488(comp[10*n])`
-/

namespace A285054.P1602366839667366558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A285054.P1602366839667366558

/-! ## A285054.P13836645763331310295

`A139337(A136713(n))+n`
-/

namespace A285054.P13836645763331310295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A136713 n).toNat + (n : ℤ)

end

end A285054.P13836645763331310295

/-! ## A285054.P2461729446297757558

`A136400(A247796(1+n))+n`
-/

namespace A285054.P2461729446297757558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A247796 (1 + n)).toNat + (n : ℤ)

end

end A285054.P2461729446297757558

/-! ## A285054.P12530401459031230451

`∑[Δ[A070565(A007953(n))]+1]`
-/

namespace A285054.P12530401459031230451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A007953 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285054.P12530401459031230451

/-! ## A285054.P15757508922699320718

`and(-1, A098488(A067251(n+1)))`
-/

namespace A285054.P15757508922699320718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A098488 (A067251 (n + 1)).toNat)

end

end A285054.P15757508922699320718

/-! ## A285054.P2269229978467654205

`A070565(Δ[A037123(n)])+n+1`
-/

namespace A285054.P2269229978467654205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (f1 (n + 1) - f1 n).toNat + (n + 1 : ℤ)

end

end A285054.P2269229978467654205

/-! ## A285054.P13155274357018222927

`A070565(A007953(n+1))+1+n`
-/

namespace A285054.P13155274357018222927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A007953 (n + 1)).toNat + 1 + (n : ℤ)

end

end A285054.P13155274357018222927

/-! ## A285054.P206119668828416099

`A070565(A053392(n+1))+1+n`
-/

namespace A285054.P206119668828416099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A053392 (n + 1)).toNat + 1 + (n : ℤ)

end

end A285054.P206119668828416099

/-! ## A285054.P18388664259358374160

`A225693(A059632(n+1))+n+1`
-/

namespace A285054.P18388664259358374160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A059632 (n + 1)).toNat + (n + 1 : ℤ)

end

end A285054.P18388664259358374160

/-! ## A285054.P1879305409719317628

`A062028(n+1)-A053837(n+1)`
-/

namespace A285054.P1879305409719317628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n + 1) - A053837 (n + 1)

end

end A285054.P1879305409719317628

/-!
# A285057: a(n) = lcm(n, A001177(n)).

The programs for A285057, there is no canonical definition to state claims against.
-/

/-! ## A285057.P7768068757805817641

`lcm(n+1, A001177(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285057.P7768068757805817641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001177 (n + 1))

end

end A285057.P7768068757805817641

/-! ## A285057.P10653085926595533135

`lcm(A001177(A328399(2*n)), A328399(2*n))`
-/

namespace A285057.P10653085926595533135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (A328399 (2 * n)).toNat) (A328399 (2 * n))

end

end A285057.P10653085926595533135

/-! ## A285057.P5013977769351102305

`lcm(A001175(n+1)/A001176(n+1), A000027(n+1))`
-/

namespace A285057.P5013977769351102305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A001175 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ))) (A000027 (n + 1))

end

end A285057.P5013977769351102305

/-! ## A285057.P18192873379799547405

`lcm(A001177(A008619(2*n)), A008619(2*n))`
-/

namespace A285057.P18192873379799547405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A285057.P18192873379799547405

/-! ## A285057.P3266419326329055173

`lcm(A001177(A028242(2*n)), A028242(2*n))`
-/

namespace A285057.P3266419326329055173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (A028242 (2 * n)).toNat) (A028242 (2 * n))

end

end A285057.P3266419326329055173

/-! ## A285057.P15805133848011180706

`lcm(A001177(A008621(4*n)), A008621(4*n))`
-/

namespace A285057.P15805133848011180706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (A008621 (4 * n)).toNat) (A008621 (4 * n))

end

end A285057.P15805133848011180706

/-! ## A285057.P17568300981546595301

`gcd(A132632(n+1), A213278(n+1))`
-/

namespace A285057.P17568300981546595301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132632 (n + 1)) (A213278 (n + 1))

end

end A285057.P17568300981546595301

/-!
# A285060: Denominators of the exponential expansion of (4/(3*log(1+x)))*(1 - 1/(1+x)^(3/4)).

The programs for A285060, there is no canonical definition to state claims against.
-/

/-! ## A285060.P4871462097904833233

`A348973(4^n)`
-/

namespace A285060.P4871462097904833233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348973 (4 ^ n)

end

end A285060.P4871462097904833233

/-! ## A285060.P11448136491720251370

`(n+1)/3^val(n+1, 3)*record[A151673(n)]`
-/

namespace A285060.P11448136491720251370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151673 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A285060.P11448136491720251370

/-! ## A285060.P12823231352712149626

`(n+1)/3^val(n+1, 3)*record[A001316(3*n)]`
-/

namespace A285060.P12823231352712149626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A285060.P12823231352712149626

/-! ## A285060.P13957243138097601212

`(n+1)/3^val(n+1, 3)*A016777(floor(4^n/3))`
-/

namespace A285060.P13957243138097601212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (A016777 ⌊(4 ^ n : ℚ) / 3⌋.toNat : ℚ)

end

end A285060.P13957243138097601212

/-!
# A285061: Sheffer triangle S2[4,1] = (exp(x), exp(4*x) - 1).

The programs for A285061, the canonical program `A285061.P1678469196884564386` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285061 has offset 0).

The definition of A285061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285061.P1678469196884564386

`4*T(n-1,k-1)+(1+4*col(n))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285061

/-- `4*T(n-1,k-1)+(1+4*col(n))*T(n-1,k)` -/
def P1678469196884564386.Spec : Prop :=
  ∀ n, (P1678469196884564386.a n : ℤ) = A285061 n

theorem P1678469196884564386.correct : P1678469196884564386.Spec := by
  intro n
  simp only [A285061]

end A285061

/-! ## A285061.P3180831349998675716

`4^col(n)*A111578(n+1)`
-/

namespace A285061.P3180831349998675716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ SequenceMachineLib.triCol n : ℤ) * A111578 (n + 1)

end

end A285061.P3180831349998675716

namespace A285061

/-- `4^col(n)*A111578(n+1)` -/
def P3180831349998675716.Spec : Prop :=
  ∀ n, P3180831349998675716.a n = A285061 n

end A285061

/-! ## A285061.P9361948809371454169

`A059268(n)²*A111578(n+1)`
-/

namespace A285061.P9361948809371454169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A111578 (n + 1)

end

end A285061.P9361948809371454169

namespace A285061

/-- `A059268(n)²*A111578(n+1)` -/
def P9361948809371454169.Spec : Prop :=
  ∀ n, P9361948809371454169.a n = A285061 n

end A285061

/-! ## A285061.P15462437534170579544

`4^A002262(n)*A111578(n+1)`
-/

namespace A285061.P15462437534170579544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A111578 (n + 1) : ℚ)

end

end A285061.P15462437534170579544

namespace A285061

/-- `4^A002262(n)*A111578(n+1)` -/
def P15462437534170579544.Spec : Prop :=
  ∀ n, P15462437534170579544.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P9786913648911618350

`A111578(n+1)/A225469(n)*A225467(n)`
-/

namespace A285061.P9786913648911618350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111578 (n + 1) : ℚ) / (A225469 n : ℚ) * (A225467 n : ℚ)

end

end A285061.P9786913648911618350

namespace A285061

/-- `A111578(n+1)/A225469(n)*A225467(n)` -/
def P9786913648911618350.Spec : Prop :=
  ∀ n, P9786913648911618350.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P2622589369631348772

`A285066(n)/A233543(n)`
-/

namespace A285061.P2622589369631348772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (A233543 n : ℚ)

end

end A285061.P2622589369631348772

namespace A285061

/-- `A285066(n)/A233543(n)` -/
def P2622589369631348772.Spec : Prop :=
  ∀ n, P2622589369631348772.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P15535028461784515969

`A285066(n)/A002262(n)!`
-/

namespace A285061.P15535028461784515969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A285061.P15535028461784515969

namespace A285061

/-- `A285066(n)/A002262(n)!` -/
def P15535028461784515969.Spec : Prop :=
  ∀ n, P15535028461784515969.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P17039586767069195214

`A285066(n)/A144328(n+1)!`
-/

namespace A285061.P17039586767069195214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A285061.P17039586767069195214

namespace A285061

/-- `A285066(n)/A144328(n+1)!` -/
def P17039586767069195214.Spec : Prop :=
  ∀ n, P17039586767069195214.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P16066445123034183106

`A285066(n)/A021009(A112367(n))`
-/

namespace A285061.P16066445123034183106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (A021009 (A112367 n).toNat : ℚ)

end

end A285061.P16066445123034183106

namespace A285061

/-- `A285066(n)/A021009(A112367(n))` -/
def P16066445123034183106.Spec : Prop :=
  ∀ n, P16066445123034183106.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P7793710913143283981

`A225466(n)/A225472(n)*A285066(n)`
-/

namespace A285061.P7793710913143283981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A225472 n : ℚ) * (A285066 n : ℚ)

end

end A285061.P7793710913143283981

namespace A285061

/-- `A225466(n)/A225472(n)*A285066(n)` -/
def P7793710913143283981.Spec : Prop :=
  ∀ n, P7793710913143283981.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P5744641848423388087

`A225467(n)/A225473(n)*A285066(n)`
-/

namespace A285061.P5744641848423388087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A225473 n : ℚ) * (A285066 n : ℚ)

end

end A285061.P5744641848423388087

namespace A285061

/-- `A225467(n)/A225473(n)*A285066(n)` -/
def P5744641848423388087.Spec : Prop :=
  ∀ n, P5744641848423388087.a n = (A285061 n : ℚ)

end A285061

/-! ## A285061.P1430083897024114843

`A285066(n)/A112624(A059268(n))`
-/

namespace A285061.P1430083897024114843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285066 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A285061.P1430083897024114843

namespace A285061

/-- `A285066(n)/A112624(A059268(n))` -/
def P1430083897024114843.Spec : Prop :=
  ∀ n, P1430083897024114843.a n = (A285061 n : ℚ)

end A285061

/-!
# A285063: Denominators of the exponential expansion of (4/(log(1+x)))*(1 - 1/(1+x)^(1/4)).

The programs for A285063, there is no canonical definition to state claims against.
-/

/-! ## A285063.P1802926467452288706

`lcm(A000005(A097070(n+1)), A001792(2*n))`
-/

namespace A285063.P1802926467452288706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A097070 (n + 1)).toNat) (A001792 (2 * n))

end

end A285063.P1802926467452288706

/-! ## A285063.P1075382583102920351

`lcm(A002790(n), A348973(4^n))`
-/

namespace A285063.P1075382583102920351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002790 n) (A348973 (4 ^ n))

end

end A285063.P1075382583102920351

/-! ## A285063.P405482435476436438

`lcm(A018253(n+1), A034714(2^n))`
-/

namespace A285063.P405482435476436438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018253 (n + 1)) (A034714 (2 ^ n))

end

end A285063.P405482435476436438

/-! ## A285063.P5909671573268903518

`lcm(A001792(2*n), A007425(A354553(n)))`
-/

namespace A285063.P5909671573268903518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001792 (2 * n)) (A007425 (A354553 n).toNat)

end

end A285063.P5909671573268903518

/-!
# A285064: Row sums of Sheffer triangle S2[4,1] = A285061.

The programs for A285064, the canonical program `A285064.P12777855288299464274` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285064 has offset 0).

The definition of A285064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285064.P6756011947957720566

`∑{#}[n, A285061(C(n+1, 2)+#)]`
-/

namespace A285064.P6756011947957720566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A285061 (Nat.choose (n + 1) 2 + k)

end

end A285064.P6756011947957720566

namespace A285064

/-- `∑{#}[n, A285061(C(n+1, 2)+#)]` -/
def P6756011947957720566.Spec : Prop :=
  ∀ n, P6756011947957720566.a n = A285064 n

end A285064

/-! ## A285064.P12777855288299464274

`∑{#}[n, C(n, #)*A000110(#)*4^#]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285064

/-- `∑{#}[n, C(n, #)*A000110(#)*4^#]` -/
def P12777855288299464274.Spec : Prop :=
  ∀ n, P12777855288299464274.a n = A285064 n

theorem P12777855288299464274.correct : P12777855288299464274.Spec := by
  intro n
  simp only [A285064]

end A285064

/-!
# A285065: Alternating row sums of Sheffer triangle S2[4,1] = A285061.

The programs for A285065, the canonical program `A285065.P10889861528642771488` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285065 has offset 0).

The definition of A285065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285065.P6349790631482383669

`∑{#}[n, C(n, #)*4^#*A000587(#)]`
-/

namespace A285065.P6349790631482383669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * 4 ^ k : ℤ) * A000587 k

end

end A285065.P6349790631482383669

namespace A285065

/-- `∑{#}[n, C(n, #)*4^#*A000587(#)]` -/
def P6349790631482383669.Spec : Prop :=
  ∀ n, P6349790631482383669.a n = A285065 n

end A285065

/-! ## A285065.P10889861528642771488

`∑{#}[n, (-1)^#*A285061(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285065

/-- `∑{#}[n, (-1)^#*A285061(C(n+1, 2)+#)]` -/
def P10889861528642771488.Spec : Prop :=
  ∀ n, P10889861528642771488.a n = A285065 n

theorem P10889861528642771488.correct : P10889861528642771488.Spec := by
  intro n
  simp only [A285065]

end A285065

/-!
# A285066: Triangle read by rows: T(n, m) = A285061(n, m)*m!, 0 <= m <= n.

The programs for A285066, the canonical program `A285066.P18428114753481333665` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285066 has offset 0).

The definition of A285066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285066.P18428114753481333665

`A285061(C(row(n)+1, 2)+col(n))*col(n)!`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285066

/-- `A285061(C(row(n)+1, 2)+col(n))*col(n)!` -/
def P18428114753481333665.Spec : Prop :=
  ∀ n, P18428114753481333665.a n = A285066 n

theorem P18428114753481333665.correct : P18428114753481333665.Spec := by
  intro n
  simp only [A285066]

end A285066

/-! ## A285066.P15528233607717333481

`T(n-1,k)+2*2*(T(n-1,k-1)+T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A285066.P15528233607717333481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triCol n)

end

end A285066.P15528233607717333481

namespace A285066

/-- `T(n-1,k)+2*2*(T(n-1,k-1)+T(n-1,k))*col(n)` -/
def P15528233607717333481.Spec : Prop :=
  ∀ n, (P15528233607717333481.a n : ℤ) = A285066 n

end A285066

/-! ## A285066.P789884875815630842

`col(n)!*A285061(n)`
-/

namespace A285066.P789884875815630842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A285061 n

end

end A285066.P789884875815630842

namespace A285066

/-- `col(n)!*A285061(n)` -/
def P789884875815630842.Spec : Prop :=
  ∀ n, P789884875815630842.a n = A285066 n

end A285066

/-! ## A285066.P5462432387805267987

`A233543(n)*A285061(n)`
-/

namespace A285066.P5462432387805267987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A285061 n

end

end A285066.P5462432387805267987

namespace A285066

/-- `A233543(n)*A285061(n)` -/
def P5462432387805267987.Spec : Prop :=
  ∀ n, P5462432387805267987.a n = A285066 n

end A285066

/-! ## A285066.P2146151966368108725

`A002262(n)!*A285061(n)`
-/

namespace A285066.P2146151966368108725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A285061 n

end

end A285066.P2146151966368108725

namespace A285066

/-- `A002262(n)!*A285061(n)` -/
def P2146151966368108725.Spec : Prop :=
  ∀ n, P2146151966368108725.a n = A285066 n

end A285066

/-! ## A285066.P10562000559876807971

`A144328(n+1)!*A285061(n)`
-/

namespace A285066.P10562000559876807971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A285061 n

end

end A285066.P10562000559876807971

namespace A285066

/-- `A144328(n+1)!*A285061(n)` -/
def P10562000559876807971.Spec : Prop :=
  ∀ n, P10562000559876807971.a n = A285066 n

end A285066

/-! ## A285066.P15995306380638575513

`A021009(A112367(n))*A285061(n)`
-/

namespace A285066.P15995306380638575513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A285061 n

end

end A285066.P15995306380638575513

namespace A285066

/-- `A021009(A112367(n))*A285061(n)` -/
def P15995306380638575513.Spec : Prop :=
  ∀ n, P15995306380638575513.a n = A285066 n

end A285066

/-! ## A285066.P9505248166168886025

`A119502(A061579(n))*A285061(n)`
-/

namespace A285066.P9505248166168886025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A285061 n

end

end A285066.P9505248166168886025

namespace A285066

/-- `A119502(A061579(n))*A285061(n)` -/
def P9505248166168886025.Spec : Prop :=
  ∀ n, P9505248166168886025.a n = A285066 n

end A285066

/-! ## A285066.P9004820869501759738

`A104150(A002260(n+1))*A285061(n)`
-/

namespace A285066.P9004820869501759738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A002260 (n + 1)).toNat * A285061 n

end

end A285066.P9004820869501759738

namespace A285066

/-- `A104150(A002260(n+1))*A285061(n)` -/
def P9004820869501759738.Spec : Prop :=
  ∀ n, P9004820869501759738.a n = A285066 n

end A285066

/-! ## A285066.P1285593159440974338

`A111578(n+1)*A233543(n)*A059268(n)²`
-/

namespace A285066.P1285593159440974338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111578 (n + 1) * A233543 n * A059268 n ^ 2

end

end A285066.P1285593159440974338

namespace A285066

/-- `A111578(n+1)*A233543(n)*A059268(n)²` -/
def P1285593159440974338.Spec : Prop :=
  ∀ n, P1285593159440974338.a n = A285066 n

end A285066

/-! ## A285066.P13478065479053469493

`4^A002262(n)*A111578(n+1)*A233543(n)`
-/

namespace A285066.P13478065479053469493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A111578 (n + 1) : ℚ) * (A233543 n : ℚ)

end

end A285066.P13478065479053469493

namespace A285066

/-- `4^A002262(n)*A111578(n+1)*A233543(n)` -/
def P13478065479053469493.Spec : Prop :=
  ∀ n, P13478065479053469493.a n = (A285066 n : ℚ)

end A285066

/-! ## A285066.P4028711319559501682

`A111578(n+1)/A225469(n)*A225467(n)*A233543(n)`
-/

namespace A285066.P4028711319559501682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111578 (n + 1) : ℚ) / (A225469 n : ℚ) * (A225467 n : ℚ) * (A233543 n : ℚ)

end

end A285066.P4028711319559501682

namespace A285066

/-- `A111578(n+1)/A225469(n)*A225467(n)*A233543(n)` -/
def P4028711319559501682.Spec : Prop :=
  ∀ n, P4028711319559501682.a n = (A285066 n : ℚ)

end A285066

/-! ## A285066.P7104342433922327077

`A112624(A059268(n))*A285061(n)`
-/

namespace A285066.P7104342433922327077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A285061 n

end

end A285066.P7104342433922327077

namespace A285066

/-- `A112624(A059268(n))*A285061(n)` -/
def P7104342433922327077.Spec : Prop :=
  ∀ n, P7104342433922327077.a n = A285066 n

end A285066

/-!
# A285067: Row sums of triangle A285066.

The programs for A285067, the canonical program `A285067.P7676945479838292335` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285067 has offset 0).

The definition of A285067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285067.P7676945479838292335

`∑{#}[n, A285066(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A285067

/-- `∑{#}[n, A285066(C(n+1, 2)+#)]` -/
def P7676945479838292335.Spec : Prop :=
  ∀ n, P7676945479838292335.a n = A285067 n

theorem P7676945479838292335.correct : P7676945479838292335.Spec := by
  intro n
  simp only [A285067]

end A285067

/-!
# A285068: Denominators of the generalized Bernoulli numbers B[3,1] = 3^n*B(n, 1/3).

The programs for A285068, the canonical program `A285068.P5736332031578240053` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285068 has offset 0).

The definition of A285068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285068.P5736332031578240053

`A157800(n)/3^n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285068

/-- `A157800(n)/3^n` -/
def P5736332031578240053.Spec : Prop :=
  ∀ n, P5736332031578240053.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P2472599767642974292

`lcm(3, A027642(n))/3`
-/

namespace A285068.P2472599767642974292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A027642 n) : ℚ) / 3

end

end A285068.P2472599767642974292

namespace A285068

/-- `lcm(3, A027642(n))/3` -/
def P2472599767642974292.Spec : Prop :=
  ∀ n, P2472599767642974292.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P14755116701363127629

`gcd(A027642(n), A051719(n))`
-/

namespace A285068.P14755116701363127629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A051719 n)

end

end A285068.P14755116701363127629

namespace A285068

/-- `gcd(A027642(n), A051719(n))` -/
def P14755116701363127629.Spec : Prop :=
  ∀ n, (P14755116701363127629.a n : ℤ) = A285068 n

end A285068

/-! ## A285068.P9983077132988674183

`gcd(A172282(n), A277087(n))`
-/

namespace A285068.P9983077132988674183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172282 n) (A277087 n)

end

end A285068.P9983077132988674183

namespace A285068

/-- `gcd(A172282(n), A277087(n))` -/
def P9983077132988674183.Spec : Prop :=
  ∀ n, (P9983077132988674183.a n : ℤ) = A285068 n

end A285068

/-! ## A285068.P6911833178538498352

`A027642(n)/A153284(n+1)`
-/

namespace A285068.P6911833178538498352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A285068.P6911833178538498352

namespace A285068

/-- `A027642(n)/A153284(n+1)` -/
def P6911833178538498352.Spec : Prop :=
  ∀ n, P6911833178538498352.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P14374046076128886497

`A027642(n)/gcd(3, A141056(n))`
-/

namespace A285068.P14374046076128886497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (Int.gcd 3 (A141056 n) : ℚ)

end

end A285068.P14374046076128886497

namespace A285068

/-- `A027642(n)/gcd(3, A141056(n))` -/
def P14374046076128886497.Spec : Prop :=
  ∀ n, P14374046076128886497.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P1669855519811476230

`A027642(n)/A141459(n)%6`
-/

namespace A285068.P1669855519811476230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (Int.tmod (A141459 n) 6 : ℚ)

end

end A285068.P1669855519811476230

namespace A285068

/-- `A027642(n)/A141459(n)%6` -/
def P1669855519811476230.Spec : Prop :=
  ∀ n, P1669855519811476230.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P757037194707472819

`A027642(n)/floor(root(3, A027642(n+1)))`
-/

namespace A285068.P757037194707472819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (⌊(3 : ℝ) ^ (1 / (A027642 (n + 1) : ℝ))⌋ : ℚ)

end

end A285068.P757037194707472819

namespace A285068

/-- `A027642(n)/floor(root(3, A027642(n+1)))` -/
def P757037194707472819.Spec : Prop :=
  ∀ n, P757037194707472819.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P17907779569419840712

`gcd(A024023(n), A027642(n))`
-/

namespace A285068.P17907779569419840712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024023 n) (A027642 n)

end

end A285068.P17907779569419840712

namespace A285068

/-- `gcd(A024023(n), A027642(n))` -/
def P17907779569419840712.Spec : Prop :=
  ∀ n, (P17907779569419840712.a n : ℤ) = A285068 n

end A285068

/-! ## A285068.P5748202691404351346

`A158808(n)/A000244(n)²`
-/

namespace A285068.P5748202691404351346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158808 n : ℚ) / (A000244 n ^ 2 : ℚ)

end

end A285068.P5748202691404351346

namespace A285068

/-- `A158808(n)/A000244(n)²` -/
def P5748202691404351346.Spec : Prop :=
  ∀ n, P5748202691404351346.a n = (A285068 n : ℚ)

end A285068

/-! ## A285068.P2451126848476339718

`A158808(n)/A000244(2*n)`
-/

namespace A285068.P2451126848476339718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158808 n : ℚ) / (A000244 (2 * n) : ℚ)

end

end A285068.P2451126848476339718

namespace A285068

/-- `A158808(n)/A000244(2*n)` -/
def P2451126848476339718.Spec : Prop :=
  ∀ n, P2451126848476339718.a n = (A285068 n : ℚ)

end A285068

/-!
# A285069: Expansion of Product_{k>=1} (1 - x^(2*k-1))^(2*k-1).

The programs for A285069, there is no canonical definition to state claims against.
-/

/-! ## A285069.P5202001998310955446

`(-1)^n*A262736(n)`
-/

namespace A285069.P5202001998310955446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A262736 n

end

end A285069.P5202001998310955446

/-! ## A285069.P2144402401777857614

`A262736(n)/(-1)^n`
-/

namespace A285069.P2144402401777857614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262736 n : ℚ) / ((-1) ^ n : ℚ)

end

end A285069.P2144402401777857614

/-! ## A285069.P4539605665575878831

`-(A033999(1+n)*A262736(n))`
-/

namespace A285069.P4539605665575878831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (1 + n) * A262736 n)

end

end A285069.P4539605665575878831

/-! ## A285069.P6380822084928733729

`A262736(n)/A285048(n)*A285287(n)`
-/

namespace A285069.P6380822084928733729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262736 n : ℚ) / (A285048 n : ℚ) * (A285287 n : ℚ)

end

end A285069.P6380822084928733729

/-! ## A285069.P17645638700320686329

`A262736(n)/A262811(n)*A284628(n)`
-/

namespace A285069.P17645638700320686329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262736 n : ℚ) / (A262811 n : ℚ) * (A284628 n : ℚ)

end

end A285069.P17645638700320686329

/-! ## A285069.P15016760332797969941

`A262736(n)*A285048(n)/A285287(n)`
-/

namespace A285069.P15016760332797969941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262736 n * A285048 n : ℚ) / (A285287 n : ℚ)

end

end A285069.P15016760332797969941

/-! ## A285069.P15067552958737934378

`A262736(n)*A262811(n)/A284628(n)`
-/

namespace A285069.P15067552958737934378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262736 n * A262811 n : ℚ) / (A284628 n : ℚ)

end

end A285069.P15067552958737934378

/-!
# A285070: Expansion of Product_{k>=0} (1-x^(4*k+1))^(4*k+1).

The programs for A285070, there is no canonical definition to state claims against.
-/

/-! ## A285070.P11661612915942789676

`(-1)^n*A285288(n)`
-/

namespace A285070.P11661612915942789676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A285288 n

end

end A285070.P11661612915942789676

/-! ## A285070.P7909308187932052195

`A285288(n)/A033999(n)`
-/

namespace A285070.P7909308187932052195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285288 n : ℚ) / (A033999 n : ℚ)

end

end A285070.P7909308187932052195

/-! ## A285070.P5273542784872377781

`A285288(n)/A062157(n+1)`
-/

namespace A285070.P5273542784872377781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285288 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A285070.P5273542784872377781

/-! ## A285070.P17557632974162219766

`A285288(n)/(A004442(n)-n)`
-/

namespace A285070.P17557632974162219766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285288 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A285070.P17557632974162219766

/-! ## A285070.P9330022683025069155

`-(A062157(n+2)*A285288(n))`
-/

namespace A285070.P9330022683025069155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 (n + 2) * A285288 n)

end

end A285070.P9330022683025069155

/-! ## A285070.P12911283245012845512

`A285288(n)/A062157(2*n)^n`
-/

namespace A285070.P12911283245012845512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285288 n : ℚ) / (A062157 (2 * n) ^ n : ℚ)

end

end A285070.P12911283245012845512

/-! ## A285070.P14725360595538631924

`A285288(n)/A285050(∑[A062157(n)])`
-/

namespace A285070.P14725360595538631924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285288 n : ℚ) / (A285050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A285070.P14725360595538631924

/-! ## A285070.P5076002870104815926

`A285048(n)*A285288(n)/A285287(n)`
-/

namespace A285070.P5076002870104815926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285048 n * A285288 n : ℚ) / (A285287 n : ℚ)

end

end A285070.P5076002870104815926

/-! ## A285070.P11623532074267833047

`A262811(n)*A285288(n)/A284628(n)`
-/

namespace A285070.P11623532074267833047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n * A285288 n : ℚ) / (A284628 n : ℚ)

end

end A285070.P11623532074267833047

/-!
# A285071: Expansion of Product_{k>=0} (1-x^(5*k+1))^(5*k+1).

The programs for A285071, there is no canonical definition to state claims against.
-/

/-! ## A285071.P555727892559780527

`A020985(A112150(n))*A285338(n)`
-/

namespace A285071.P555727892559780527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A112150 n).toNat * A285338 n

end

end A285071.P555727892559780527

/-! ## A285071.P1528443671562558158

`A008836(∑[A351345(n)])*A285338(n)`
-/

namespace A285071.P1528443671562558158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A285338 n

end

end A285071.P1528443671562558158

/-! ## A285071.P11965607967612597753

`A131554(A187829(n+1))*A285338(n)`
-/

namespace A285071.P11965607967612597753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A187829 (n + 1)).toNat * A285338 n

end

end A285071.P11965607967612597753

/-! ## A285071.P7624049358983728199

`A008836(∑[A187829(n+1)])*A285338(n)`
-/

namespace A285071.P7624049358983728199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A285338 n

end

end A285071.P7624049358983728199

/-! ## A285071.P7976251122763527089

`A008836(A187829(n+1)+n)*A285338(n)`
-/

namespace A285071.P7976251122763527089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A187829 (n + 1) + (n : ℤ)).toNat * A285338 n

end

end A285071.P7976251122763527089

/-!
# A285072: Triangle read by rows: coefficients of the Laplacian polynomial of the n-path graph P_n.

The programs for A285072, the canonical program `A285072.P15065162161931334392` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285072 has offset 1).

The definition of A285072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285072.P15065162161931334392

`(-1)^(col(n)+1)*C(row(n)+col(n), 2*col(n)+1)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285072

/-- `(-1)^(col(n)+1)*C(row(n)+col(n), 2*col(n)+1)` -/
def P15065162161931334392.Spec : Prop :=
  ∀ n, P15065162161931334392.a n = A285072 (n + 1)

theorem P15065162161931334392.correct : P15065162161931334392.Spec := by
  intro n
  simp only [A285072, Nat.add_sub_cancel]

end A285072

/-! ## A285072.P15988360775259969152

`A066170(A185868(n+1))+char[∑[n-1]]`
-/

namespace A285072.P15988360775259969152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A185868 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285072.P15988360775259969152

namespace A285072

/-- `A066170(A185868(n+1))+char[∑[n-1]]` -/
def P15988360775259969152.Spec : Prop :=
  ∀ n, P15988360775259969152.a n = A285072 (n + 1)

end A285072

/-! ## A285072.P14789950347167510983

`A066170(A185868(1+n))%A027465(n)`
-/

namespace A285072.P14789950347167510983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066170 (A185868 (1 + n)).toNat) (A027465 n)

end

end A285072.P14789950347167510983

namespace A285072

/-- `A066170(A185868(1+n))%A027465(n)` -/
def P14789950347167510983.Spec : Prop :=
  ∀ n, P14789950347167510983.a n = A285072 (n + 1)

end A285072

/-! ## A285072.P12875630371741506201

`Δ[A083920(n)]*A066170(A185868(n+1))`
-/

namespace A285072.P12875630371741506201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066170 (A185868 (n + 1)).toNat

end

end A285072.P12875630371741506201

namespace A285072

/-- `Δ[A083920(n)]*A066170(A185868(n+1))` -/
def P12875630371741506201.Spec : Prop :=
  ∀ n, P12875630371741506201.a n = A285072 (n + 1)

end A285072

/-! ## A285072.P4171432249533792085

`A123970(n)-A066170(A185869(n+1))`
-/

namespace A285072.P4171432249533792085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 n - A066170 (A185869 (n + 1)).toNat

end

end A285072.P4171432249533792085

namespace A285072

/-- `A123970(n)-A066170(A185869(n+1))` -/
def P4171432249533792085.Spec : Prop :=
  ∀ n, P4171432249533792085.a n = A285072 (n + 1)

end A285072

/-!
# A285073: 0-limiting word of the morphism 0->10, 1-> 010.

The programs for A285073, the canonical program `A285073.P1593324729896153878` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285073 has offset 1).

The definition of A285073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285073.P9764147764708673880

`char[comp[ceil(sqrt(2)*n)]-n]`
-/

namespace A285073.P9764147764708673880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285073.P9764147764708673880

namespace A285073

/-- `char[comp[ceil(sqrt(2)*n)]-n]` -/
def P9764147764708673880.Spec : Prop :=
  ∀ n, (P9764147764708673880.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P15932437705594503350

`C(Δ[ceil((n-1)*sqrt(2))], 2)`
-/

namespace A285073.P15932437705594503350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A285073.P15932437705594503350

namespace A285073

/-- `C(Δ[ceil((n-1)*sqrt(2))], 2)` -/
def P15932437705594503350.Spec : Prop :=
  ∀ n, (P15932437705594503350.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P18191715331288855368

`runs[floor((n-1)/sqrt(2))]-1`
-/

namespace A285073.P18191715331288855368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A285073.P18191715331288855368

namespace A285073

/-- `runs[floor((n-1)/sqrt(2))]-1` -/
def P18191715331288855368.Spec : Prop :=
  ∀ n, P18191715331288855368.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P13414563634002270490

`5%runs[ceil((1-n)/sqrt(2))]`
-/

namespace A285073.P13414563634002270490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - (n : ℤ) : ℝ) / Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 % (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A285073.P13414563634002270490

namespace A285073

/-- `5%runs[ceil((1-n)/sqrt(2))]` -/
def P13414563634002270490.Spec : Prop :=
  ∀ n, (P13414563634002270490.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P663850690948062169

`Δ[ceil((n-1)*sqrt(2))]!-1`
-/

namespace A285073.P663850690948062169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A285073.P663850690948062169

namespace A285073

/-- `Δ[ceil((n-1)*sqrt(2))]!-1` -/
def P663850690948062169.Spec : Prop :=
  ∀ n, P663850690948062169.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P12917726525976706457

`gcd(2, Δ[floor((1-n)*sqrt(2))])-1`
-/

namespace A285073.P12917726525976706457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A285073.P12917726525976706457

namespace A285073

/-- `gcd(2, Δ[floor((1-n)*sqrt(2))])-1` -/
def P12917726525976706457.Spec : Prop :=
  ∀ n, P12917726525976706457.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P16169711303772501749

`∑{digits}[Δ[floor((1-n)*sqrt(2))]+1, #]`
-/

namespace A285073.P16169711303772501749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A285073.P16169711303772501749

namespace A285073

/-- `∑{digits}[Δ[floor((1-n)*sqrt(2))]+1, #]` -/
def P16169711303772501749.Spec : Prop :=
  ∀ n, (P16169711303772501749.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P7935718599181242023

`a(Δ[floor((n-1)*sqrt(2))]-1)` with `a(0)=0, a(1)=1`
-/

namespace A285073.P7935718599181242023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat

end

end A285073.P7935718599181242023

namespace A285073

/-- `a(Δ[floor((n-1)*sqrt(2))]-1)` -/
def P7935718599181242023.Spec : Prop :=
  ∀ n, (P7935718599181242023.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P3484097951502861891

`Δ[(2-floor((1-n)*sqrt(2)))%(n+1)]`
-/

namespace A285073.P3484097951502861891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ⌊(1 - (n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285073.P3484097951502861891

namespace A285073

/-- `Δ[(2-floor((1-n)*sqrt(2)))%(n+1)]` -/
def P3484097951502861891.Spec : Prop :=
  ∀ n, P3484097951502861891.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P10108958343165016174

`-(Δ[floor((2-C(n+1, n))*sqrt(2))]+1)`
-/

namespace A285073.P10108958343165016174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (Nat.choose (n + 1) n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 1)

end

end A285073.P10108958343165016174

namespace A285073

/-- `-(Δ[floor((2-C(n+1, n))*sqrt(2))]+1)` -/
def P10108958343165016174.Spec : Prop :=
  ∀ n, P10108958343165016174.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P8745719215267439964

`A352339(n)%2`
-/

namespace A285073.P8745719215267439964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352339 n) 2

end

end A285073.P8745719215267439964

namespace A285073

/-- `A352339(n)%2` -/
def P8745719215267439964.Spec : Prop :=
  ∀ n, P8745719215267439964.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P1593324729896153878

`A159684(abs(2-n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285073

/-- `A159684(abs(2-n))` -/
def P1593324729896153878.Spec : Prop :=
  ∀ n, P1593324729896153878.a n = A285073 (n + 1)

theorem P1593324729896153878.correct : P1593324729896153878.Spec := by
  intro n
  simp only [A285073, Nat.add_sub_cancel]

end A285073

/-! ## A285073.P16146485152671474978

`Δ[fp[A285075(n+1)]]`
-/

namespace A285073.P16146485152671474978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285073.P16146485152671474978

namespace A285073

/-- `Δ[fp[A285075(n+1)]]` -/
def P16146485152671474978.Spec : Prop :=
  ∀ n, P16146485152671474978.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P12882367977279780911

`1-char[A049474(n)+n]`
-/

namespace A285073.P12882367977279780911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285073.P12882367977279780911

namespace A285073

/-- `1-char[A049474(n)+n]` -/
def P12882367977279780911.Spec : Prop :=
  ∀ n, P12882367977279780911.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P17336608201965685564

`1-char[A144611(n)+n]`
-/

namespace A285073.P17336608201965685564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285073.P17336608201965685564

namespace A285073

/-- `1-char[A144611(n)+n]` -/
def P17336608201965685564.Spec : Prop :=
  ∀ n, P17336608201965685564.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P16024199288939674473

`char[1]+char[A080754(n+1)]`
-/

namespace A285073.P16024199288939674473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A285073.P16024199288939674473

namespace A285073

/-- `char[1]+char[A080754(n+1)]` -/
def P16024199288939674473.Spec : Prop :=
  ∀ n, (P16024199288939674473.a n : ℤ) = A285073 (n + 1)

end A285073

/-! ## A285073.P4530687910535484401

`1-char[A285074(n+1)-1]`
-/

namespace A285073.P4530687910535484401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285073.P4530687910535484401

namespace A285073

/-- `1-char[A285074(n+1)-1]` -/
def P4530687910535484401.Spec : Prop :=
  ∀ n, P4530687910535484401.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P7201248986787124540

`A188038(n)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A285073.P7201248986787124540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A188038 n - a (n - 1)

end

end A285073.P7201248986787124540

namespace A285073

/-- `A188038(n)-a(n-1)` -/
def P7201248986787124540.Spec : Prop :=
  ∀ n, P7201248986787124540.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P140954237416044558

`(1-a(n-1))*A188044(n)` with `a(0)=0`
-/

namespace A285073.P140954237416044558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - a (n - 1)) * A188044 n

end

end A285073.P140954237416044558

namespace A285073

/-- `(1-a(n-1))*A188044(n)` -/
def P140954237416044558.Spec : Prop :=
  ∀ n, P140954237416044558.a n = A285073 (n + 1)

end A285073

/-! ## A285073.P4182691005513474018

`char[1]+char[A188040(2*(n+1))]`
-/

namespace A285073.P4182691005513474018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A285073.P4182691005513474018

namespace A285073

/-- `char[1]+char[A188040(2*(n+1))]` -/
def P4182691005513474018.Spec : Prop :=
  ∀ n, (P4182691005513474018.a n : ℤ) = A285073 (n + 1)

end A285073

/-!
# A285074: Positions of 0 in A285073; complement of A285075.

The programs for A285074, the canonical program `A285074.P5466003021301969961` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285074 has offset 1).

The definition of A285074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285074.P5466003021301969961

`1-floor(n/(sqrt(2)-2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285074

/-- `1-floor(n/(sqrt(2)-2))` -/
def P5466003021301969961.Spec : Prop :=
  ∀ n, P5466003021301969961.a n = A285074 (n + 1)

theorem P5466003021301969961.correct : P5466003021301969961.Spec := by
  intro n
  simp only [A285074, Nat.add_sub_cancel]

end A285074

/-! ## A285074.P13368921442846321193

`abs(1-floor(n/(n/a(n-1)-2)-n))` with `a(0)=1`
-/

namespace A285074.P13368921442846321193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - ⌊(n : ℚ) / ((n : ℚ) / (a (n - 1) : ℚ) - 2) - (n : ℚ)⌋|

end

end A285074.P13368921442846321193

namespace A285074

/-- `abs(1-floor(n/(n/a(n-1)-2)-n))` -/
def P13368921442846321193.Spec : Prop :=
  ∀ n, P13368921442846321193.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P15855496118639480346

`∑[char[A001951(n)+1]+1]`
-/

namespace A285074.P15855496118639480346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285074.P15855496118639480346

namespace A285074

/-- `∑[char[A001951(n)+1]+1]` -/
def P15855496118639480346.Spec : Prop :=
  ∀ n, (P15855496118639480346.a n : ℤ) = A285074 (n + 1)

end A285074

/-! ## A285074.P16702634614577144262

`A000027(ceil(n/(2-sqrt(2)))+1)`
-/

namespace A285074.P16702634614577144262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌈(n : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉ + 1).toNat

end

end A285074.P16702634614577144262

namespace A285074

/-- `A000027(ceil(n/(2-sqrt(2)))+1)` -/
def P16702634614577144262.Spec : Prop :=
  ∀ n, P16702634614577144262.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P10914367168973635

`floor((A285078(n+1)+2+n)/2)`
-/

namespace A285074.P10914367168973635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285078 (n + 1) + 2 + (n : ℤ) : ℚ) / 2⌋

end

end A285074.P10914367168973635

namespace A285074

/-- `floor((A285078(n+1)+2+n)/2)` -/
def P10914367168973635.Spec : Prop :=
  ∀ n, P10914367168973635.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P16461213821396693558

`comp[comp[A003151(n+1)+2+n]+n]`
-/

namespace A285074.P16461213821396693558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285074.P16461213821396693558

namespace A285074

/-- `comp[comp[A003151(n+1)+2+n]+n]` -/
def P16461213821396693558.Spec : Prop :=
  ∀ n, (P16461213821396693558.a n : ℤ) = A285074 (n + 1)

end A285074

/-! ## A285074.P16848444260418751356

`min(A285077(n+1), A285078(n+1))`
-/

namespace A285074.P16848444260418751356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A285077 (n + 1)) (A285078 (n + 1))

end

end A285074.P16848444260418751356

namespace A285074

/-- `min(A285077(n+1), A285078(n+1))` -/
def P16848444260418751356.Spec : Prop :=
  ∀ n, P16848444260418751356.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P15039981356462617463

`A285077(n+1)^A257990(A034444(n+1))`
-/

namespace A285074.P15039981356462617463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285077 (n + 1) : ℚ) ^ (A257990 (A034444 (n + 1)).toNat : ℤ)

end

end A285074.P15039981356462617463

namespace A285074

/-- `A285077(n+1)^A257990(A034444(n+1))` -/
def P15039981356462617463.Spec : Prop :=
  ∀ n, P15039981356462617463.a n = (A285074 (n + 1) : ℚ)

end A285074

/-! ## A285074.P5546655558996474298

`gcd(A285077(n+1), A349447(A000010(n+2)))`
-/

namespace A285074.P5546655558996474298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285077 (n + 1)) (A349447 (A000010 (n + 2)).toNat)

end

end A285074.P5546655558996474298

namespace A285074

/-- `gcd(A285077(n+1), A349447(A000010(n+2)))` -/
def P5546655558996474298.Spec : Prop :=
  ∀ n, (P5546655558996474298.a n : ℤ) = A285074 (n + 1)

end A285074

/-! ## A285074.P2033046388746397303

`A065475(A083088(n))`
-/

namespace A285074.P2033046388746397303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A083088 n).toNat

end

end A285074.P2033046388746397303

namespace A285074

/-- `A065475(A083088(n))` -/
def P2033046388746397303.Spec : Prop :=
  ∀ n, P2033046388746397303.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P4451981489102293593

`A181440(A285077(n+1))`
-/

namespace A285074.P4451981489102293593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A285077 (n + 1)).toNat

end

end A285074.P4451981489102293593

namespace A285074

/-- `A181440(A285077(n+1))` -/
def P4451981489102293593.Spec : Prop :=
  ∀ n, P4451981489102293593.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P8906813585595691446

`A065475(eq[0, A285076(n+1)])`
-/

namespace A285074.P8906813585595691446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285074.P8906813585595691446

namespace A285074

/-- `A065475(eq[0, A285076(n+1)])` -/
def P8906813585595691446.Spec : Prop :=
  ∀ n, P8906813585595691446.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P5332621816245380614

`A028310(A285077(n+1)%A007675(n+1))`
-/

namespace A285074.P5332621816245380614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A285077 (n + 1)) (A007675 (n + 1))).toNat

end

end A285074.P5332621816245380614

namespace A285074

/-- `A028310(A285077(n+1)%A007675(n+1))` -/
def P5332621816245380614.Spec : Prop :=
  ∀ n, P5332621816245380614.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P13182550789748488015

`fp[fp[n/sqrt(2)+n+1]]`
-/

namespace A285074.P13182550789748488015
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sqrt (2 : ℝ) + (n + 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A285074.P13182550789748488015

namespace A285074

/-- `fp[fp[n/sqrt(2)+n+1]]` -/
def P13182550789748488015.Spec : Prop :=
  ∀ n, (P13182550789748488015.a n : ℤ) = A285074 (n + 1)

end A285074

/-! ## A285074.P5954987767954005630

`A049474(A285078(n+1))`
-/

namespace A285074.P5954987767954005630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A285078 (n + 1)).toNat

end

end A285074.P5954987767954005630

namespace A285074

/-- `A049474(A285078(n+1))` -/
def P5954987767954005630.Spec : Prop :=
  ∀ n, P5954987767954005630.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P6897286093740956344

`A049474(A049474(2*n)+1+n)`
-/

namespace A285074.P6897286093740956344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049474 (2 * n) + 1 + (n : ℤ)).toNat

end

end A285074.P6897286093740956344

namespace A285074

/-- `A049474(A049474(2*n)+1+n)` -/
def P6897286093740956344.Spec : Prop :=
  ∀ n, P6897286093740956344.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P7173927847055751853

`A049472(A099188(n)+2+n)`
-/

namespace A285074.P7173927847055751853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A099188 n + 2 + (n : ℤ)).toNat

end

end A285074.P7173927847055751853

namespace A285074

/-- `A049472(A099188(n)+2+n)` -/
def P7173927847055751853.Spec : Prop :=
  ∀ n, P7173927847055751853.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P1238882968223958864

`A195119(ceil(n/2)+ceil(n*(sqrt(2)+1))+1)`
-/

namespace A285074.P1238882968223958864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (⌈(n : ℚ) / 2⌉ + (⌈(n : ℝ) * (Real.sqrt (2 : ℝ) + 1)⌉ + 1)).toNat

end

end A285074.P1238882968223958864

namespace A285074

/-- `A195119(ceil(n/2)+ceil(n*(sqrt(2)+1))+1)` -/
def P1238882968223958864.Spec : Prop :=
  ∀ n, P1238882968223958864.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P17227440495407639494

`A270059(A083051(n))`
-/

namespace A285074.P17227440495407639494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A083051 n).toNat

end

end A285074.P17227440495407639494

namespace A285074

/-- `A270059(A083051(n))` -/
def P17227440495407639494.Spec : Prop :=
  ∀ n, P17227440495407639494.a n = A285074 (n + 1)

end A285074

/-! ## A285074.P15625543430032563793

`A110654(A188040(2*n+1)+n+1)`
-/

namespace A285074.P15625543430032563793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A188040 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A285074.P15625543430032563793

namespace A285074

/-- `A110654(A188040(2*n+1)+n+1)` -/
def P15625543430032563793.Spec : Prop :=
  ∀ n, P15625543430032563793.a n = A285074 (n + 1)

end A285074

/-!
# A285075: Positions of 1 in A285073; complement of A285074.

The programs for A285075, the canonical program `A285075.P15211220928489864768` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285075 has offset 1).

The definition of A285075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285075.P14833191600257075223

`2+floor(n*(1+sqrt(2)))`
-/

namespace A285075.P14833191600257075223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ⌊(n : ℝ) * (1 + Real.sqrt (2 : ℝ))⌋

end

end A285075.P14833191600257075223

namespace A285075

/-- `2+floor(n*(1+sqrt(2)))` -/
def P14833191600257075223.Spec : Prop :=
  ∀ n, P14833191600257075223.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P63464442709237350

`∑[runs[ceil(n/sqrt(2))]+1]`
-/

namespace A285075.P63464442709237350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285075.P63464442709237350

namespace A285075

/-- `∑[runs[ceil(n/sqrt(2))]+1]` -/
def P63464442709237350.Spec : Prop :=
  ∀ n, (P63464442709237350.a n : ℤ) = A285075 (n + 1)

end A285075

/-! ## A285075.P17492728223799007892

`fp[(n-1)*sqrt(2)-(n-1)]`
-/

namespace A285075.P17492728223799007892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ) - ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A285075.P17492728223799007892

namespace A285075

/-- `fp[(n-1)*sqrt(2)-(n-1)]` -/
def P17492728223799007892.Spec : Prop :=
  ∀ n, (P17492728223799007892.a n : ℤ) = A285075 (n + 1)

end A285075

/-! ## A285075.P18346382952010611187

`record[ceil(abs(1-n)*sqrt(2))+n]`
-/

namespace A285075.P18346382952010611187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (n : ℤ)| : ℝ) * Real.sqrt (2 : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285075.P18346382952010611187

namespace A285075

/-- `record[ceil(abs(1-n)*sqrt(2))+n]` -/
def P18346382952010611187.Spec : Prop :=
  ∀ n, P18346382952010611187.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P1317014249588706558

`∑[char[A080754(1+n)]+2]`
-/

namespace A285075.P1317014249588706558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285075.P1317014249588706558

namespace A285075

/-- `∑[char[A080754(1+n)]+2]` -/
def P1317014249588706558.Spec : Prop :=
  ∀ n, (P1317014249588706558.a n : ℤ) = A285075 (n + 1)

end A285075

/-! ## A285075.P17653296285823457795

`2*((A001951(n)+n)/2+1)`
-/

namespace A285075.P17653296285823457795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001951 n + (n : ℤ) : ℚ) / 2 + 1)

end

end A285075.P17653296285823457795

namespace A285075

/-- `2*((A001951(n)+n)/2+1)` -/
def P17653296285823457795.Spec : Prop :=
  ∀ n, P17653296285823457795.a n = (A285075 (n + 1) : ℚ)

end A285075

/-! ## A285075.P15211220928489864768

`∑[A276864(A028310(n))-1]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285075

/-- `∑[A276864(A028310(n))-1]` -/
def P15211220928489864768.Spec : Prop :=
  ∀ n, P15211220928489864768.a n = A285075 (n + 1)

theorem P15211220928489864768.correct : P15211220928489864768.Spec := by
  intro n
  simp only [A285075, Nat.add_sub_cancel]

end A285075

/-! ## A285075.P8248688989400811383

`A054977(n)*A285078(n+1)`
-/

namespace A285075.P8248688989400811383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A285078 (n + 1)

end

end A285075.P8248688989400811383

namespace A285075

/-- `A054977(n)*A285078(n+1)` -/
def P8248688989400811383.Spec : Prop :=
  ∀ n, P8248688989400811383.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P11621422445999539954

`max(A285077(n+1), A285078(n+1))`
-/

namespace A285075.P11621422445999539954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A285077 (n + 1)) (A285078 (n + 1))

end

end A285075.P11621422445999539954

namespace A285075

/-- `max(A285077(n+1), A285078(n+1))` -/
def P11621422445999539954.Spec : Prop :=
  ∀ n, P11621422445999539954.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P3639946211096908747

`A080755(A001951(n)+1)`
-/

namespace A285075.P3639946211096908747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A001951 n + 1).toNat

end

end A285075.P3639946211096908747

namespace A285075

/-- `A080755(A001951(n)+1)` -/
def P3639946211096908747.Spec : Prop :=
  ∀ n, P3639946211096908747.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P10086190141079959347

`A083088(A083051(n)-2*n)`
-/

namespace A285075.P10086190141079959347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (A083051 n - (2 * n : ℤ)).toNat

end

end A285075.P10086190141079959347

namespace A285075

/-- `A083088(A083051(n)-2*n)` -/
def P10086190141079959347.Spec : Prop :=
  ∀ n, P10086190141079959347.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P10916161050548098994

`A083088(A049472(2*n)+1)`
-/

namespace A285075.P10916161050548098994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (A049472 (2 * n) + 1).toNat

end

end A285075.P10916161050548098994

namespace A285075

/-- `A083088(A049472(2*n)+1)` -/
def P10916161050548098994.Spec : Prop :=
  ∀ n, P10916161050548098994.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P2715797830063092355

`A336109(2*(n+1))`
-/

namespace A285075.P2715797830063092355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (2 * (n + 1))

end

end A285075.P2715797830063092355

namespace A285075

/-- `A336109(2*(n+1))` -/
def P2715797830063092355.Spec : Prop :=
  ∀ n, P2715797830063092355.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P4685539081304490010

`A080755(A083088(2*n)-2*n)`
-/

namespace A285075.P4685539081304490010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A083088 (2 * n) - (2 * n : ℤ)).toNat

end

end A285075.P4685539081304490010

namespace A285075

/-- `A080755(A083088(2*n)-2*n)` -/
def P4685539081304490010.Spec : Prop :=
  ∀ n, P4685539081304490010.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P1235069909647034861

`A083088(A083088(2*n)-2*n)`
-/

namespace A285075.P1235069909647034861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (A083088 (2 * n) - (2 * n : ℤ)).toNat

end

end A285075.P1235069909647034861

namespace A285075

/-- `A083088(A083088(2*n)-2*n)` -/
def P1235069909647034861.Spec : Prop :=
  ∀ n, P1235069909647034861.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P8027056820482060025

`∩[A080755(n+1), A336109(n+1)]`
-/

namespace A285075.P8027056820482060025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285075.P8027056820482060025

namespace A285075

/-- `∩[A080755(n+1), A336109(n+1)]` -/
def P8027056820482060025.Spec : Prop :=
  ∀ n, (P8027056820482060025.a n : ℤ) = A285075 (n + 1)

end A285075

/-! ## A285075.P16279641889378379674

`A181440(A285078(n+1))`
-/

namespace A285075.P16279641889378379674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A285078 (n + 1)).toNat

end

end A285075.P16279641889378379674

namespace A285075

/-- `A181440(A285078(n+1))` -/
def P16279641889378379674.Spec : Prop :=
  ∀ n, P16279641889378379674.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P3591116063216986727

`filter[A083088(n), A285073(#)]`
-/

namespace A285075.P3591116063216986727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285073 (f1 j).toNat = 1) n)

end

end A285075.P3591116063216986727

namespace A285075

/-- `filter[A083088(n), A285073(#)]` -/
def P3591116063216986727.Spec : Prop :=
  ∀ n, P3591116063216986727.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P1520132695605375193

`filter[A116966(n), A285073(#)]`
-/

namespace A285075.P1520132695605375193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285073 (f1 j).toNat = 1) n)

end

end A285075.P1520132695605375193

namespace A285075

/-- `filter[A116966(n), A285073(#)]` -/
def P1520132695605375193.Spec : Prop :=
  ∀ n, P1520132695605375193.a n = A285075 (n + 1)

end A285075

/-! ## A285075.P10575706460376190390

`filter[A344180(n), A285073(#)]`
-/

namespace A285075.P10575706460376190390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285073 (f1 j).toNat = 1) n)

end

end A285075.P10575706460376190390

namespace A285075

/-- `filter[A344180(n), A285073(#)]` -/
def P10575706460376190390.Spec : Prop :=
  ∀ n, P10575706460376190390.a n = A285075 (n + 1)

end A285075

/-!
# A285076: 1-limiting word of the morphism 0->10, 1-> 010.

The programs for A285076, the canonical program `A285076.P9313654898266391924` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285076 has offset 1).

The definition of A285076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285076.P10914982469443395814

`char[ceil(n*(1+sqrt(2)))]`
-/

namespace A285076.P10914982469443395814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (1 + Real.sqrt (2 : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285076.P10914982469443395814

namespace A285076

/-- `char[ceil(n*(1+sqrt(2)))]` -/
def P10914982469443395814.Spec : Prop :=
  ∀ n, (P10914982469443395814.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P4206239509010070261

`log2(runs[ceil((n-1)/sqrt(2))])`
-/

namespace A285076.P4206239509010070261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℝ)

end

end A285076.P4206239509010070261

namespace A285076

/-- `log2(runs[ceil((n-1)/sqrt(2))])` -/
def P4206239509010070261.Spec : Prop :=
  ∀ n, P4206239509010070261.a n = (A285076 (n + 1) : ℝ)

end A285076

/-! ## A285076.P15750986235979293966

`col(Δ[floor((n-1)*sqrt(2))])`
-/

namespace A285076.P15750986235979293966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (f1 (n + 1) - f1 n).toNat

end

end A285076.P15750986235979293966

namespace A285076

/-- `col(Δ[floor((n-1)*sqrt(2))])` -/
def P15750986235979293966.Spec : Prop :=
  ∀ n, (P15750986235979293966.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P3985057083205139833

`3%Δ[ceil((1-n)*sqrt(2))]`
-/

namespace A285076.P3985057083205139833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - (n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A285076.P3985057083205139833

namespace A285076

/-- `3%Δ[ceil((1-n)*sqrt(2))]` -/
def P3985057083205139833.Spec : Prop :=
  ∀ n, P3985057083205139833.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P14153136142239068923

`val(Δ[floor((n-1)*sqrt(2))], 2)`
-/

namespace A285076.P14153136142239068923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A285076.P14153136142239068923

namespace A285076

/-- `val(Δ[floor((n-1)*sqrt(2))], 2)` -/
def P14153136142239068923.Spec : Prop :=
  ∀ n, (P14153136142239068923.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P17134224942241135818

`C(Δ[floor((n-1)*sqrt(2))], 2)`
-/

namespace A285076.P17134224942241135818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A285076.P17134224942241135818

namespace A285076

/-- `C(Δ[floor((n-1)*sqrt(2))], 2)` -/
def P17134224942241135818.Spec : Prop :=
  ∀ n, (P17134224942241135818.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P9518448884102919478

`runs[ceil((n-1)/sqrt(2))]-1`
-/

namespace A285076.P9518448884102919478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A285076.P9518448884102919478

namespace A285076

/-- `runs[ceil((n-1)/sqrt(2))]-1` -/
def P9518448884102919478.Spec : Prop :=
  ∀ n, P9518448884102919478.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P355506446726439078

`and(1, -(Δ[floor((n-1)*sqrt(2))]+1))`
-/

namespace A285076.P355506446726439078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(f1 (n + 1) - f1 n + 1))

end

end A285076.P355506446726439078

namespace A285076

/-- `and(1, -(Δ[floor((n-1)*sqrt(2))]+1))` -/
def P355506446726439078.Spec : Prop :=
  ∀ n, P355506446726439078.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P928832732878244585

`floor((runs[ceil(2*n/sqrt(8))]/2)^n)`
-/

namespace A285076.P928832732878244585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.sqrt (8 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℚ) / 2) ^ n⌋

end

end A285076.P928832732878244585

namespace A285076

/-- `floor((runs[ceil(2*n/sqrt(8))]/2)^n)` -/
def P928832732878244585.Spec : Prop :=
  ∀ n, P928832732878244585.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P14221239738714890346

`1-char[A083088(n)]`
-/

namespace A285076.P14221239738714890346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285076.P14221239738714890346

namespace A285076

/-- `1-char[A083088(n)]` -/
def P14221239738714890346.Spec : Prop :=
  ∀ n, P14221239738714890346.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P10337245142852558995

`Δ[fp[A285078(n+1)]]`
-/

namespace A285076.P10337245142852558995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285076.P10337245142852558995

namespace A285076

/-- `Δ[fp[A285078(n+1)]]` -/
def P10337245142852558995.Spec : Prop :=
  ∀ n, P10337245142852558995.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P9313654898266391924

`a(1-A188037(n))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285076

/-- `a(1-A188037(n))` -/
def P9313654898266391924.Spec : Prop :=
  ∀ n, (P9313654898266391924.a n : ℤ) = A285076 (n + 1)

theorem P9313654898266391924.correct : P9313654898266391924.Spec := by
  intro n
  simp only [A285076, Nat.add_sub_cancel]

end A285076

/-! ## A285076.P2068081752101393053

`A188038(n)-a(n-1)` with `a(0)=1`
-/

namespace A285076.P2068081752101393053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188038 n - a (n - 1)

end

end A285076.P2068081752101393053

namespace A285076

/-- `A188038(n)-a(n-1)` -/
def P2068081752101393053.Spec : Prop :=
  ∀ n, P2068081752101393053.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P12691290365859367957

`Δ[fp[A188040(2*n+1)]]`
-/

namespace A285076.P12691290365859367957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285076.P12691290365859367957

namespace A285076

/-- `Δ[fp[A188040(2*n+1)]]` -/
def P12691290365859367957.Spec : Prop :=
  ∀ n, P12691290365859367957.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P2595143692668033134

`a(1-A285073(n+1))` with `a(0)=1, a(1)=0`
-/

namespace A285076.P2595143692668033134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (1 - A285073 (n + 1)).toNat

end

end A285076.P2595143692668033134

namespace A285076

/-- `a(1-A285073(n+1))` -/
def P2595143692668033134.Spec : Prop :=
  ∀ n, (P2595143692668033134.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P6021960769740109702

`A056596(Δ[floor((n-1)*sqrt(2))])`
-/

namespace A285076.P6021960769740109702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056596 (f1 (n + 1) - f1 n).toNat

end

end A285076.P6021960769740109702

namespace A285076

/-- `A056596(Δ[floor((n-1)*sqrt(2))])` -/
def P6021960769740109702.Spec : Prop :=
  ∀ n, P6021960769740109702.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P11680169492279351091

`(1-a(n-1))*A144611(n)` with `a(0)=1`
-/

namespace A285076.P11680169492279351091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) * A144611 n

end

end A285076.P11680169492279351091

namespace A285076

/-- `(1-a(n-1))*A144611(n)` -/
def P11680169492279351091.Spec : Prop :=
  ∀ n, P11680169492279351091.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P3826651916046779976

`(1-a(n-1))*A188044(n)` with `a(0)=1`
-/

namespace A285076.P3826651916046779976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) * A188044 n

end

end A285076.P3826651916046779976

namespace A285076

/-- `(1-a(n-1))*A188044(n)` -/
def P3826651916046779976.Spec : Prop :=
  ∀ n, P3826651916046779976.a n = A285076 (n + 1)

end A285076

/-! ## A285076.P7509563042850240530

`a(A059648(n)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A285076.P7509563042850240530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A059648 n + (a (n - 1) : ℤ)).toNat

end

end A285076.P7509563042850240530

namespace A285076

/-- `a(A059648(n)+a(n-1))` -/
def P7509563042850240530.Spec : Prop :=
  ∀ n, (P7509563042850240530.a n : ℤ) = A285076 (n + 1)

end A285076

/-! ## A285076.P15325370000324122431

`a(A187969(n)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A285076.P15325370000324122431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A187969 n + (a (n - 1) : ℤ)).toNat

end

end A285076.P15325370000324122431

namespace A285076

/-- `a(A187969(n)+a(n-1))` -/
def P15325370000324122431.Spec : Prop :=
  ∀ n, (P15325370000324122431.a n : ℤ) = A285076 (n + 1)

end A285076

/-!
# A285077: Positions of 0 in A285076; complement of A285078.

The programs for A285077, the canonical program `A285077.P18441929274686792061` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285077 has offset 1).

The definition of A285077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285077.P16821337482469202707

`floor(n/(2-sqrt(2)))+2`
-/

namespace A285077.P16821337482469202707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋ + 2

end

end A285077.P16821337482469202707

namespace A285077

/-- `floor(n/(2-sqrt(2)))+2` -/
def P16821337482469202707.Spec : Prop :=
  ∀ n, P16821337482469202707.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P5795880148492088855

`record[2+n/runs[floor(n/sqrt(2))]]`
-/

namespace A285077.P5795880148492088855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 + (n : ℚ) / ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285077.P5795880148492088855

namespace A285077

/-- `record[2+n/runs[floor(n/sqrt(2))]]` -/
def P5795880148492088855.Spec : Prop :=
  ∀ n, P5795880148492088855.a n = (A285077 (n + 1) : ℚ)

end A285077

/-! ## A285077.P3214834585096856350

`∑[gcd(2, A036694(n))]`
-/

namespace A285077.P3214834585096856350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A036694 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285077.P3214834585096856350

namespace A285077

/-- `∑[gcd(2, A036694(n))]` -/
def P3214834585096856350.Spec : Prop :=
  ∀ n, (P3214834585096856350.a n : ℤ) = A285077 (n + 1)

end A285077

/-! ## A285077.P8661783469584325003

`ceil(A289037(n+1)/2)`
-/

namespace A285077.P8661783469584325003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289037 (n + 1) : ℚ) / 2⌉

end

end A285077.P8661783469584325003

namespace A285077

/-- `ceil(A289037(n+1)/2)` -/
def P8661783469584325003.Spec : Prop :=
  ∀ n, P8661783469584325003.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P18441929274686792061

`ceil((A083051(n)+2)/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A285077

/-- `ceil((A083051(n)+2)/2)` -/
def P18441929274686792061.Spec : Prop :=
  ∀ n, P18441929274686792061.a n = A285077 (n + 1)

theorem P18441929274686792061.correct : P18441929274686792061.Spec := by
  intro n
  simp only [A285077, Nat.add_sub_cancel]

end A285077

/-! ## A285077.P9746314423900470794

`∑[A036697(n)%2+1]`
-/

namespace A285077.P9746314423900470794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036697 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285077.P9746314423900470794

namespace A285077

/-- `∑[A036697(n)%2+1]` -/
def P9746314423900470794.Spec : Prop :=
  ∀ n, P9746314423900470794.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P5606517708952337927

`(A083088(n)+1)%(2*n+3)`
-/

namespace A285077.P5606517708952337927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083088 n + 1) (2 * n + 3 : ℤ)

end

end A285077.P5606517708952337927

namespace A285077

/-- `(A083088(n)+1)%(2*n+3)` -/
def P5606517708952337927.Spec : Prop :=
  ∀ n, P5606517708952337927.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P67820739130965367

`A000027(2+n+A049472(n))`
-/

namespace A285077.P67820739130965367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 + ((n : ℤ) + A049472 n)).toNat

end

end A285077.P67820739130965367

namespace A285077

/-- `A000027(2+n+A049472(n))` -/
def P67820739130965367.Spec : Prop :=
  ∀ n, P67820739130965367.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P16344813066812442052

`lcm(A054977(n), A285074(n+1))`
-/

namespace A285077.P16344813066812442052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A285074 (n + 1))

end

end A285077.P16344813066812442052

namespace A285077

/-- `lcm(A054977(n), A285074(n+1))` -/
def P16344813066812442052.Spec : Prop :=
  ∀ n, (P16344813066812442052.a n : ℤ) = A285077 (n + 1)

end A285077

/-! ## A285077.P2158218620883727191

`∪[A080754(n+1), A188039(n+1)]`
-/

namespace A285077.P2158218620883727191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285077.P2158218620883727191

namespace A285077

/-- `∪[A080754(n+1), A188039(n+1)]` -/
def P2158218620883727191.Spec : Prop :=
  ∀ n, (P2158218620883727191.a n : ℤ) = A285077 (n + 1)

end A285077

/-! ## A285077.P13970975302414738573

`∑[2-A289035(n+2)]`
-/

namespace A285077.P13970975302414738573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A289035 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285077.P13970975302414738573

namespace A285077

/-- `∑[2-A289035(n+2)]` -/
def P13970975302414738573.Spec : Prop :=
  ∀ n, P13970975302414738573.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P9867234121976695047

`A020725(A083088(n))`
-/

namespace A285077.P9867234121976695047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A083088 n).toNat

end

end A285077.P9867234121976695047

namespace A285077

/-- `A020725(A083088(n))` -/
def P9867234121976695047.Spec : Prop :=
  ∀ n, P9867234121976695047.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P11644564070837990286

`A181440(A285074(n+1))`
-/

namespace A285077.P11644564070837990286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A285074 (n + 1)).toNat

end

end A285077.P11644564070837990286

namespace A285077

/-- `A181440(A285074(n+1))` -/
def P11644564070837990286.Spec : Prop :=
  ∀ n, P11644564070837990286.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P14698116144293721834

`A049474(A285075(n+1))`
-/

namespace A285077.P14698116144293721834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A285075 (n + 1)).toNat

end

end A285077.P14698116144293721834

namespace A285077

/-- `A049474(A285075(n+1))` -/
def P14698116144293721834.Spec : Prop :=
  ∀ n, P14698116144293721834.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P2417290662871997882

`A049474(A049472(2*n)+n+2)`
-/

namespace A285077.P2417290662871997882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049472 (2 * n) + (n + 2 : ℤ)).toNat

end

end A285077.P2417290662871997882

namespace A285077

/-- `A049474(A049472(2*n)+n+2)` -/
def P2417290662871997882.Spec : Prop :=
  ∀ n, P2417290662871997882.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P10765473927544200007

`A049472(A346232(A049472(n)+n+1))`
-/

namespace A285077.P10765473927544200007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A346232 (A049472 n + (n + 1 : ℤ)).toNat).toNat

end

end A285077.P10765473927544200007

namespace A285077

/-- `A049472(A346232(A049472(n)+n+1))` -/
def P10765473927544200007.Spec : Prop :=
  ∀ n, P10765473927544200007.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P11320349952735942705

`A080513(A083051(n))`
-/

namespace A285077.P11320349952735942705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A083051 n).toNat

end

end A285077.P11320349952735942705

namespace A285077

/-- `A080513(A083051(n))` -/
def P11320349952735942705.Spec : Prop :=
  ∀ n, P11320349952735942705.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P16827486593613870517

`A065033(A289037(n+1))`
-/

namespace A285077.P16827486593613870517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289037 (n + 1)).toNat

end

end A285077.P16827486593613870517

namespace A285077

/-- `A065033(A289037(n+1))` -/
def P16827486593613870517.Spec : Prop :=
  ∀ n, P16827486593613870517.a n = A285077 (n + 1)

end A285077

/-! ## A285077.P14576159747738452418

`A194920(A188319(n+1))`
-/

namespace A285077.P14576159747738452418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A188319 (n + 1)).toNat

end

end A285077.P14576159747738452418

namespace A285077

/-- `A194920(A188319(n+1))` -/
def P14576159747738452418.Spec : Prop :=
  ∀ n, P14576159747738452418.a n = A285077 (n + 1)

end A285077

/-!
# A285078: Positions of 1 in A285076; complement of A285077.

The programs for A285078, the canonical program `A285078.P18061454109432024187` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285078 has offset 1).

The definition of A285078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285078.P18061454109432024187

`ceil(n*(1+sqrt(2)))+1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A285078

/-- `ceil(n*(1+sqrt(2)))+1` -/
def P18061454109432024187.Spec : Prop :=
  ∀ n, P18061454109432024187.a n = A285078 (n + 1)

theorem P18061454109432024187.correct : P18061454109432024187.Spec := by
  intro n
  simp only [A285078, Nat.add_sub_cancel]

end A285078

/-! ## A285078.P8883373305234058799

`(floor(n*(1+sqrt(2)))+2)%(5*(2*a(floor(n/2))-(-1)^n+1)-n%2)` with `a(0)=1`
-/

namespace A285078.P8883373305234058799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (⌊(n : ℝ) * (1 + Real.sqrt (2 : ℝ))⌋ + 2) (5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ))

end

end A285078.P8883373305234058799

namespace A285078

/-- `(floor(n*(1+sqrt(2)))+2)%(5*(2*a(floor(n/2))-(-1)^n+1)-n%2)` -/
def P8883373305234058799.Spec : Prop :=
  ∀ n, P8883373305234058799.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P18161152567446739409

`ceil(sqrt(A001105(n))+n+1)`
-/

namespace A285078.P18161152567446739409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001105 n : ℝ) + (n + 1 : ℝ)⌉

end

end A285078.P18161152567446739409

namespace A285078

/-- `ceil(sqrt(A001105(n))+n+1)` -/
def P18161152567446739409.Spec : Prop :=
  ∀ n, P18161152567446739409.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P6174016881993662655

`A285075(n+1)/A054977(n)`
-/

namespace A285078.P6174016881993662655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285075 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A285078.P6174016881993662655

namespace A285078

/-- `A285075(n+1)/A054977(n)` -/
def P6174016881993662655.Spec : Prop :=
  ∀ n, P6174016881993662655.a n = (A285078 (n + 1) : ℚ)

end A285078

/-! ## A285078.P14021029177517461543

`A188040(Δ[n²])`
-/

namespace A285078.P14021029177517461543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285078.P14021029177517461543

namespace A285078

/-- `A188040(Δ[n²])` -/
def P14021029177517461543.Spec : Prop :=
  ∀ n, P14021029177517461543.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P5005267731261690223

`A336109(A103517(n))`
-/

namespace A285078.P5005267731261690223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A103517 n).toNat

end

end A285078.P5005267731261690223

namespace A285078

/-- `A336109(A103517(n))` -/
def P5005267731261690223.Spec : Prop :=
  ∀ n, P5005267731261690223.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P7751596787244866381

`A336109(A065475(2*n+1))`
-/

namespace A285078.P7751596787244866381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A065475 (2 * n + 1)).toNat

end

end A285078.P7751596787244866381

namespace A285078

/-- `A336109(A065475(2*n+1))` -/
def P7751596787244866381.Spec : Prop :=
  ∀ n, P7751596787244866381.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P1311865300541919159

`A336109(A181440(2*(n+1)))`
-/

namespace A285078.P1311865300541919159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A181440 (2 * (n + 1))).toNat

end

end A285078.P1311865300541919159

namespace A285078

/-- `A336109(A181440(2*(n+1)))` -/
def P1311865300541919159.Spec : Prop :=
  ∀ n, P1311865300541919159.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P14525559863933447452

`A336109(A184985(2*(n+1)))`
-/

namespace A285078.P14525559863933447452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A184985 (2 * (n + 1))).toNat

end

end A285078.P14525559863933447452

namespace A285078

/-- `A336109(A184985(2*(n+1)))` -/
def P14525559863933447452.Spec : Prop :=
  ∀ n, P14525559863933447452.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P9577189901975984147

`A336109(A065475(n+1)+n)`
-/

namespace A285078.P9577189901975984147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A065475 (n + 1) + (n : ℤ)).toNat

end

end A285078.P9577189901975984147

namespace A285078

/-- `A336109(A065475(n+1)+n)` -/
def P9577189901975984147.Spec : Prop :=
  ∀ n, P9577189901975984147.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P16680552090169856766

`A336109(A181440(n+2)+n)`
-/

namespace A285078.P16680552090169856766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A181440 (n + 2) + (n : ℤ)).toNat

end

end A285078.P16680552090169856766

namespace A285078

/-- `A336109(A181440(n+2)+n)` -/
def P16680552090169856766.Spec : Prop :=
  ∀ n, P16680552090169856766.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P14440429918465088380

`A336109(A184985(n+2)+n)`
-/

namespace A285078.P14440429918465088380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A184985 (n + 2) + (n : ℤ)).toNat

end

end A285078.P14440429918465088380

namespace A285078

/-- `A336109(A184985(n+2)+n)` -/
def P14440429918465088380.Spec : Prop :=
  ∀ n, P14440429918465088380.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P8259008146186897541

`∩[A188040(n+1), A083088(n)]`
-/

namespace A285078.P8259008146186897541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285078.P8259008146186897541

namespace A285078

/-- `∩[A188040(n+1), A083088(n)]` -/
def P8259008146186897541.Spec : Prop :=
  ∀ n, (P8259008146186897541.a n : ℤ) = A285078 (n + 1)

end A285078

/-! ## A285078.P14391299773194604562

`min(A188040(2*n+1), A188040(2*(n+1)))`
-/

namespace A285078.P14391299773194604562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A188040 (2 * n + 1)) (A188040 (2 * (n + 1)))

end

end A285078.P14391299773194604562

namespace A285078

/-- `min(A188040(2*n+1), A188040(2*(n+1)))` -/
def P14391299773194604562.Spec : Prop :=
  ∀ n, P14391299773194604562.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P12124099654042512114

`abs(comp[A001951(n)+1]-n+1)`
-/

namespace A285078.P12124099654042512114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1|

end

end A285078.P12124099654042512114

namespace A285078

/-- `abs(comp[A001951(n)+1]-n+1)` -/
def P12124099654042512114.Spec : Prop :=
  ∀ n, P12124099654042512114.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P10989644237236704099

`fp[fp[n*sqrt(2)+n+1]]`
-/

namespace A285078.P10989644237236704099
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 : ℝ) + (n + 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A285078.P10989644237236704099

namespace A285078

/-- `fp[fp[n*sqrt(2)+n+1]]` -/
def P10989644237236704099.Spec : Prop :=
  ∀ n, (P10989644237236704099.a n : ℤ) = A285078 (n + 1)

end A285078

/-! ## A285078.P13826814288788701263

`record[C(A190496(n+1), 2)+n]`
-/

namespace A285078.P13826814288788701263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A190496 (n + 1)).toNat 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285078.P13826814288788701263

namespace A285078

/-- `record[C(A190496(n+1), 2)+n]` -/
def P13826814288788701263.Spec : Prop :=
  ∀ n, (P13826814288788701263.a n : ℤ) = A285078 (n + 1)

end A285078

/-! ## A285078.P12056788099400609080

`A171526(A285075(n+1))`
-/

namespace A285078.P12056788099400609080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A285075 (n + 1)).toNat

end

end A285078.P12056788099400609080

namespace A285078

/-- `A171526(A285075(n+1))` -/
def P12056788099400609080.Spec : Prop :=
  ∀ n, P12056788099400609080.a n = A285078 (n + 1)

end A285078

/-! ## A285078.P9093565552442895689

`filter[A083088(n), A188038(#)]`
-/

namespace A285078.P9093565552442895689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188038 (f1 j).toNat = 1) n)

end

end A285078.P9093565552442895689

namespace A285078

/-- `filter[A083088(n), A188038(#)]` -/
def P9093565552442895689.Spec : Prop :=
  ∀ n, P9093565552442895689.a n = A285078 (n + 1)

end A285078

/-!
# A285079: Oblong numbers the product of whose digits are positive oblong numbers.

The programs for A285079, there is no canonical definition to state claims against.
-/

/-! ## A285079.P4155291664957501575

`2*A068808(A065667(n+1))`
-/

namespace A285079.P4155291664957501575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068808 (A065667 (n + 1)).toNat

end

end A285079.P4155291664957501575

/-! ## A285079.P16981989461333236872

`A068808(n+1)*A348172(A330624(n))`
-/

namespace A285079.P16981989461333236872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068808 (n + 1) * A348172 (A330624 n).toNat

end

end A285079.P16981989461333236872

/-! ## A285079.P12879244086666671232

`A040000(A000142(n+1))*A068808(n+1)`
-/

namespace A285079.P12879244086666671232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A000142 (n + 1)).toNat * A068808 (n + 1)

end

end A285079.P12879244086666671232

/-!
# A285080: 0-limiting word of the morphism 0->10, 1-> 011.

The programs for A285080, there is no canonical definition to state claims against.
-/

/-! ## A285080.P4393001846661839931

`Δ[fp[A285082(n+1)]]`
-/

namespace A285080.P4393001846661839931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285082 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285080.P4393001846661839931

/-! ## A285080.P12279683873252441840

`char[comp[A285081(1+n)-1]]`
-/

namespace A285080.P12279683873252441840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285080.P12279683873252441840

/-! ## A285080.P8700159119601094192

`floor(log(Δ[A285084(1+n)]))`
-/

namespace A285080.P8700159119601094192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A285080.P8700159119601094192

/-! ## A285080.P5540686494946670519

`abs(A074290(Δ[A285084(n+1)]))`
-/

namespace A285080.P5540686494946670519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074290 (f1 (n + 1) - f1 n).toNat|

end

end A285080.P5540686494946670519

/-! ## A285080.P3472790895696071133

`A188068(Δ[A285084(n+1)]²)`
-/

namespace A285080.P3472790895696071133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285080.P3472790895696071133

/-! ## A285080.P4465843034655185426

`A285097(Δ[A285084(n+1)]!)`
-/

namespace A285080.P4465843034655185426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A285080.P4465843034655185426

/-! ## A285080.P519512999769863975

`A285083(A285084(n+2)-A285084(n+1)+1)`
-/

namespace A285080.P519512999769863975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A285084 (n + 2) - A285084 (n + 1) + 1).toNat

end

end A285080.P519512999769863975

/-! ## A285080.P5107365131388228664

`A096270(A285084(n+1))`
-/

namespace A285080.P5107365131388228664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A285084 (n + 1)).toNat

end

end A285080.P5107365131388228664

/-! ## A285080.P2772367779099817243

`A285083(A001950(n+1))`
-/

namespace A285080.P2772367779099817243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A001950 (n + 1)).toNat

end

end A285080.P2772367779099817243

/-! ## A285080.P17160049164749482149

`A078588(A285084(n+1))`
-/

namespace A285080.P17160049164749482149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A285084 (n + 1)).toNat

end

end A285080.P17160049164749482149

/-! ## A285080.P5106590044552237973

`A285083(A007066(n+2)-2)`
-/

namespace A285080.P5106590044552237973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A007066 (n + 2) - 2).toNat

end

end A285080.P5106590044552237973

/-! ## A285080.P15842113329270898594

`A285083(A004956(n+1)+n)`
-/

namespace A285080.P15842113329270898594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A004956 (n + 1) + (n : ℤ)).toNat

end

end A285080.P15842113329270898594

/-! ## A285080.P14044198329581970004

`A285083(A000201(n+1)+n+1)`
-/

namespace A285080.P14044198329581970004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A000201 (n + 1) + (n + 1 : ℤ)).toNat

end

end A285080.P14044198329581970004

/-! ## A285080.P7177216588988066609

`and(3, A096270(eq[0, A285083(n+1)]+1))`
-/

namespace A285080.P7177216588988066609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A096270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A285080.P7177216588988066609

/-! ## A285080.P8103634409554801664

`A285083(A247426(n+1))`
-/

namespace A285080.P8103634409554801664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A247426 (n + 1)).toNat

end

end A285080.P8103634409554801664

/-! ## A285080.P15950724454878434037

`A285083(A189663(A000201(A003623(n+1))))`
-/

namespace A285080.P15950724454878434037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A189663 (A000201 (A003623 (n + 1)).toNat).toNat).toNat

end

end A285080.P15950724454878434037

/-! ## A285080.P10375795811972390775

`A285083(A134864(n+1))`
-/

namespace A285080.P10375795811972390775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A134864 (n + 1)).toNat

end

end A285080.P10375795811972390775

/-!
# A285081: Positions of 0 in A285080; complement of A285082.

The programs for A285081, there is no canonical definition to state claims against.
-/

/-! ## A285081.P2383305610798035943

`comp[A285082(n+1)-1]+1`
-/

namespace A285081.P2383305610798035943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285082 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285081.P2383305610798035943

/-! ## A285081.P9386470910932230067

`eq[0, A285080(n+1)]+1`
-/

namespace A285081.P9386470910932230067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285081.P9386470910932230067

/-! ## A285081.P15284114934222190098

`lt[n*A285080(A028310(n)), n]`
-/

namespace A285081.P15284114934222190098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285080 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285081.P15284114934222190098

/-! ## A285081.P2990504675571076390

`record[n+1-A285080(n+1)*A285082(n+1)]`
-/

namespace A285081.P2990504675571076390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285080 (n + 1) * A285082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285081.P2990504675571076390

/-! ## A285081.P15859778892197476599

`record[n+1-A285080(n+1)*A285084(n+1)]`
-/

namespace A285081.P15859778892197476599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285080 (n + 1) * A285084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285081.P15859778892197476599

/-! ## A285081.P4579305057781957154

`record[n+1-A285080(n+1)*A285085(n+1)]`
-/

namespace A285081.P4579305057781957154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285080 (n + 1) * A285085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285081.P4579305057781957154

/-! ## A285081.P3214326780271032677

`lt[char[A285082(n+1)], A057427(n)]`
-/

namespace A285081.P3214326780271032677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285082 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285081.P3214326780271032677

/-! ## A285081.P12977501269236051723

`comp[A000027(n+1)*A285080(n+1)]`
-/

namespace A285081.P12977501269236051723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285081.P12977501269236051723

/-! ## A285081.P16735084319889055688

`comp[A014682(2*(n+1))*A285080(n+1)]`
-/

namespace A285081.P16735084319889055688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * (n + 1)) * A285080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285081.P16735084319889055688

/-! ## A285081.P3740423146225285330

`record[A285084(n+1)-A002251(A285084(n+1))]`
-/

namespace A285081.P3740423146225285330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (n + 1) - A002251 (A285084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285081.P3740423146225285330

/-!
# A285082: Positions of 1 in A285080; complement of A285081.

The programs for A285082, there is no canonical definition to state claims against.
-/

/-! ## A285082.P7084331952984485613

`comp[A285081(n+1)-1]+1`
-/

namespace A285082.P7084331952984485613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285082.P7084331952984485613

/-! ## A285082.P8680836608666383792

`eq[1, A285080(n+1)]+1`
-/

namespace A285082.P8680836608666383792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285082.P8680836608666383792

/-! ## A285082.P3434065980071527938

`record[(n+2)*A285080(n+2)]`
-/

namespace A285082.P3434065980071527938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A285080 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285082.P3434065980071527938

/-! ## A285082.P15432366020383983949

`filter[A344180(n), A285080(#)]`
-/

namespace A285082.P15432366020383983949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P15432366020383983949

/-! ## A285082.P6125564534699127749

`lt[1, A285080(A028310(n))+1]`
-/

namespace A285082.P6125564534699127749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285082.P6125564534699127749

/-! ## A285082.P18098202575066951769

`filter[A092942(n+1), A285080(#)]`
-/

namespace A285082.P18098202575066951769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P18098202575066951769

/-! ## A285082.P16319097621598309133

`A285085(A001950(n+1))-A001950(n+1)`
-/

namespace A285082.P16319097621598309133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (A001950 (n + 1)).toNat - A001950 (n + 1)

end

end A285082.P16319097621598309133

/-! ## A285082.P14150669207385005164

`A285085(A247426(n+1))-A247426(n+1)`
-/

namespace A285082.P14150669207385005164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (A247426 (n + 1)).toNat - A247426 (n + 1)

end

end A285082.P14150669207385005164

/-! ## A285082.P17206180929079337099

`filter[A152271(n), A285080(#)]`
-/

namespace A285082.P17206180929079337099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P17206180929079337099

/-! ## A285082.P4976365038156001813

`filter[A158416(n), A285080(#)]`
-/

namespace A285082.P4976365038156001813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P4976365038156001813

/-! ## A285082.P15427527316042395746

`filter[A038459(n+1), A285080(#)]`
-/

namespace A285082.P15427527316042395746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P15427527316042395746

/-! ## A285082.P16875404784153705974

`filter[A133622(n+1), A285080(#)]`
-/

namespace A285082.P16875404784153705974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P16875404784153705974

/-! ## A285082.P4778590934579080987

`eq[1, A285080(A065033(2*n))]`
-/

namespace A285082.P4778590934579080987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285082.P4778590934579080987

/-! ## A285082.P15671306122094854048

`A285085(A134864(n+1))%A001950(A001950(n+1))`
-/

namespace A285082.P15671306122094854048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285085 (A134864 (n + 1)).toNat) (A001950 (A001950 (n + 1)).toNat)

end

end A285082.P15671306122094854048

/-! ## A285082.P15247167761609554928

`filter[A056926(n+1), A285080(#)]`
-/

namespace A285082.P15247167761609554928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285080 (f1 j).toNat = 1) n)

end

end A285082.P15247167761609554928

/-!
# A285083: 1-limiting word of the morphism 0->10, 1-> 011.

The programs for A285083, there is no canonical definition to state claims against.
-/

/-! ## A285083.P15538573253422649437

`Δ[fp[A285085(n+1)]]`
-/

namespace A285083.P15538573253422649437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A285083.P15538573253422649437

/-! ## A285083.P1719271734602157793

`char[A285085(1+n)-1]`
-/

namespace A285083.P1719271734602157793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285083.P1719271734602157793

/-! ## A285083.P16405802007530254282

`1-char[A285084(1+n)-1]`
-/

namespace A285083.P16405802007530254282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285084 (1 + n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285083.P16405802007530254282

/-! ## A285083.P1024221563536410470

`floor((Δ[A285081(n+1)]-1)/2)`
-/

namespace A285083.P1024221563536410470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n - 1 : ℚ) / 2⌋

end

end A285083.P1024221563536410470

/-! ## A285083.P2017840525658801389

`abs(A074290(Δ[A285081(n+1)]))`
-/

namespace A285083.P2017840525658801389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074290 (f1 (n + 1) - f1 n).toNat|

end

end A285083.P2017840525658801389

/-! ## A285083.P4001607715721675202

`A285097(Δ[A285081(n+1)]!)`
-/

namespace A285083.P4001607715721675202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A285083.P4001607715721675202

/-! ## A285083.P16879382994729717729

`C(A000720(Δ[A285081(n+1)]), 2)`
-/

namespace A285083.P16879382994729717729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000720 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A285083.P16879382994729717729

/-! ## A285083.P15504786400316977164

`A000010(A285081(n+2)-A285081(n+1))-1`
-/

namespace A285083.P15504786400316977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A285081 (n + 2) - A285081 (n + 1)).toNat - 1

end

end A285083.P15504786400316977164

/-! ## A285083.P8416954636021074158

`and(1, A002024(A285081(n+2)-A285081(n+1)+1))`
-/

namespace A285083.P8416954636021074158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002024 (A285081 (n + 2) - A285081 (n + 1) + 1).toNat)

end

end A285083.P8416954636021074158

/-! ## A285083.P10123476079702583216

`A096270(A285081(n+1))`
-/

namespace A285083.P10123476079702583216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A285081 (n + 1)).toNat

end

end A285083.P10123476079702583216

/-! ## A285083.P17134412591525157914

`A285080(A001950(n+1))`
-/

namespace A285083.P17134412591525157914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A001950 (n + 1)).toNat

end

end A285083.P17134412591525157914

/-! ## A285083.P12807118244944245357

`A285080(comp[n*A096270(n)])`
-/

namespace A285083.P12807118244944245357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096270 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285083.P12807118244944245357

/-! ## A285083.P149054832353942504

`A285080(A007066(n+2)-2)`
-/

namespace A285083.P149054832353942504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A007066 (n + 2) - 2).toNat

end

end A285083.P149054832353942504

/-! ## A285083.P17307402448169582366

`A078588(A285081(n+1))`
-/

namespace A285083.P17307402448169582366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A285081 (n + 1)).toNat

end

end A285083.P17307402448169582366

/-! ## A285083.P10753858335769627878

`A285080(A247426(n+1))`
-/

namespace A285083.P10753858335769627878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A247426 (n + 1)).toNat

end

end A285083.P10753858335769627878

/-! ## A285083.P10110472094495214017

`A285080(A279054(n+1)+1)`
-/

namespace A285083.P10110472094495214017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A279054 (n + 1) + 1).toNat

end

end A285083.P10110472094495214017

/-! ## A285083.P8986796093577478108

`A285080(A345347(n+1))`
-/

namespace A285083.P8986796093577478108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A345347 (n + 1)).toNat

end

end A285083.P8986796093577478108

/-! ## A285083.P8004078594245154885

`A285080(A134864(n+1))`
-/

namespace A285083.P8004078594245154885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A134864 (n + 1)).toNat

end

end A285083.P8004078594245154885

/-!
# A285084: Positions of 0 in A285083; complement of A285085.

The programs for A285084, there is no canonical definition to state claims against.
-/

/-! ## A285084.P6268454150978450139

`comp[A285085(n+1)-1]+1`
-/

namespace A285084.P6268454150978450139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285084.P6268454150978450139

/-! ## A285084.P11257918046999050994

`eq[0, A285083(1+n)]+1`
-/

namespace A285084.P11257918046999050994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285084.P11257918046999050994

/-! ## A285084.P14480647126646972230

`record[(n+2)*cos(A285083(n+2))]`
-/

namespace A285084.P14480647126646972230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * Real.cos (A285083 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285084.P14480647126646972230

/-! ## A285084.P8754695683587209554

`eq[0, A285083(A028310(n))]`
-/

namespace A285084.P8754695683587209554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285084.P8754695683587209554

/-! ## A285084.P16603473399453333410

`A020725(eq[0, A285083(n+1)])`
-/

namespace A285084.P16603473399453333410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285084.P16603473399453333410

/-! ## A285084.P12557724871061839076

`eq[char[A285085(n+1)], A000007(n)]`
-/

namespace A285084.P12557724871061839076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285084.P12557724871061839076

/-! ## A285084.P1606455745135253019

`eq[char[A285085(n+1)], A000038(n)]`
-/

namespace A285084.P1606455745135253019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285085 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285084.P1606455745135253019

/-! ## A285084.P15688088387546073743

`lt[A285083(A028310(n)), A057427(n)]`
-/

namespace A285084.P15688088387546073743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285084.P15688088387546073743

/-!
# A285085: Positions of 1 in A285083; complement of A285084.

The programs for A285085, there is no canonical definition to state claims against.
-/

/-! ## A285085.P9029617023008067008

`lt[0, A285083(1+n)]+1`
-/

namespace A285085.P9029617023008067008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285085.P9029617023008067008

/-! ## A285085.P18146524907687805948

`record[(n+1)*A285083(n+2)+1]`
-/

namespace A285085.P18146524907687805948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285083 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P18146524907687805948

/-! ## A285085.P5559729423222177599

`eq[A057427(n), A285083(A028310(n))]`
-/

namespace A285085.P5559729423222177599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285083 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285085.P5559729423222177599

/-! ## A285085.P9645043544337396288

`record[A008619(n)*A285083(A008619(n))]`
-/

namespace A285085.P9645043544337396288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285083 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P9645043544337396288

/-! ## A285085.P14964032857526218346

`record[A065033(n)*A285083(A065033(n))]`
-/

namespace A285085.P14964032857526218346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A285083 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P14964032857526218346

/-! ## A285085.P13504438509183416129

`record[A028242(2*n)*A285083(A028242(2*n))]`
-/

namespace A285085.P13504438509183416129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A285083 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P13504438509183416129

/-! ## A285085.P1710973944908946483

`record[A008620(n)*A285083(A008620(n))]`
-/

namespace A285085.P1710973944908946483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A285083 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P1710973944908946483

/-! ## A285085.P13163049733954273453

`record[A007318(A285083(n+1)+∑[n+1])]`
-/

namespace A285085.P13163049733954273453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A285083 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285085.P13163049733954273453

/-! ## A285085.P6116889668530850699

`filter[A085736(n+1), A285083(#)]`
-/

namespace A285085.P6116889668530850699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285083 (f1 j).toNat = 1) n)

end

end A285085.P6116889668530850699

/-!
# A285090: Rectangular array by antidiagonals: the array formed by arranging the rows of A285089 so that the first column is strictly increasing.

The programs for A285090, there is no canonical definition to state claims against.
-/

/-! ## A285090.P11459463107244251211

`A082156(n+1)+A010894(3*n+1)`
-/

namespace A285090.P11459463107244251211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082156 (n + 1) + A010894 (3 * n + 1 + 21)

end

end A285090.P11459463107244251211

/-! ## A285090.P6373407813811640854

`A163990(∪[A043318(n+1), A072379(n+1)])`
-/

namespace A285090.P6373407813811640854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072379 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A285090.P6373407813811640854

/-!
# A285091: Positions of 0 in A284848; complement of A285092.

The programs for A285091, there is no canonical definition to state claims against.
-/

/-! ## A285091.P6145646447280995301

`comp[A285092(1+n)-1]+1`
-/

namespace A285091.P6145646447280995301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285091.P6145646447280995301

/-! ## A285091.P13422654853879925399

`eq[0, A284848(1+n)]+1`
-/

namespace A285091.P13422654853879925399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285091.P13422654853879925399

/-! ## A285091.P1898681575617832892

`record[n+1-A001316(n)*A284848(n+1)]`
-/

namespace A285091.P1898681575617832892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 n * A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285091.P1898681575617832892

/-! ## A285091.P6237548842636093985

`record[gcd(n+1, A000120(n*A284848(n+1)))]`
-/

namespace A285091.P6237548842636093985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000120 ((n : ℤ) * A284848 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285091.P6237548842636093985

/-! ## A285091.P11613163100749077493

`record[n+1-A000069(n+1)*A284848(n+1)]`
-/

namespace A285091.P11613163100749077493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000069 (n + 1) * A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285091.P11613163100749077493

/-! ## A285091.P11257852955830061693

`record[n+1-A001969(n*A284848(n+1)+1)]`
-/

namespace A285091.P11257852955830061693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001969 ((n : ℤ) * A284848 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285091.P11257852955830061693

/-! ## A285091.P9845661056526218831

`A000720(p?[A284848(n+1)+A000040(n+1)])`
-/

namespace A285091.P9845661056526218831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285091.P9845661056526218831

/-! ## A285091.P7985479304355441242

`A026238(p?[A284848(n+1)+A000040(n+1)])`
-/

namespace A285091.P7985479304355441242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285091.P7985479304355441242

/-!
# A285092: Positions of 1 in A284848; complement of A285091.

The programs for A285092, there is no canonical definition to state claims against.
-/

/-! ## A285092.P5157163113005074892

`eq[1, A284848(1+n)]+1`
-/

namespace A285092.P5157163113005074892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285092.P5157163113005074892

/-! ## A285092.P12259470865499521380

`record[2*A284848(2+n)+n]`
-/

namespace A285092.P12259470865499521380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284848 (2 + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285092.P12259470865499521380

/-! ## A285092.P11293071605203608844

`filter[((n+1)/2)^(n%2), A284848(#)]`
-/

namespace A285092.P11293071605203608844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (SequenceMachineLib.roundAway (f1 j)).toNat = 1) n)

end

end A285092.P11293071605203608844

/-! ## A285092.P8823833023207843894

`eq[1, A284848(A028310(n))]`
-/

namespace A285092.P8823833023207843894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285092.P8823833023207843894

/-! ## A285092.P9775982056512798041

`filter[A344180(n), A284848(#)]`
-/

namespace A285092.P9775982056512798041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P9775982056512798041

/-! ## A285092.P11237715343339636506

`filter[A099424(n+1), A284848(#)]`
-/

namespace A285092.P11237715343339636506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P11237715343339636506

/-! ## A285092.P6019606493688278424

`filter[A132999(n+1), A284848(#)]`
-/

namespace A285092.P6019606493688278424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P6019606493688278424

/-! ## A285092.P2992835791000916867

`A000720(p?[A000040(n+1)*A284848(n+1)])`
-/

namespace A285092.P2992835791000916867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285092.P2992835791000916867

/-! ## A285092.P917043668396149448

`filter[A092942(n+1), A284848(#)]`
-/

namespace A285092.P917043668396149448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P917043668396149448

/-! ## A285092.P12565521498947165689

`filter[A133622(n+1), A284848(#)]`
-/

namespace A285092.P12565521498947165689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P12565521498947165689

/-! ## A285092.P15743392396863504852

`filter[A152271(n), A284848(#)]`
-/

namespace A285092.P15743392396863504852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P15743392396863504852

/-! ## A285092.P12934894997431540166

`filter[A158416(n), A284848(#)]`
-/

namespace A285092.P12934894997431540166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P12934894997431540166

/-! ## A285092.P18180791260170177808

`eq[1, A284848(A123108(2*n))]`
-/

namespace A285092.P18180791260170177808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285092.P18180791260170177808

/-! ## A285092.P12364367104285748946

`filter[A174571(n+1), A284848(#)]`
-/

namespace A285092.P12364367104285748946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P12364367104285748946

/-! ## A285092.P9309515163972687175

`A026238(p?[A000040(n+1)*A284848(n+1)])`
-/

namespace A285092.P9309515163972687175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285092.P9309515163972687175

/-! ## A285092.P13358965719185466274

`filter[A056926(n+1), A284848(#)]`
-/

namespace A285092.P13358965719185466274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284848 (f1 j).toNat = 1) n)

end

end A285092.P13358965719185466274

/-!
# A285093: Corresponding values of arithmetic means of digits of numbers from A061383.

The programs for A285093, the canonical program `A285093.P12873639855771182747` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285093 has offset 0).

The definition of A285093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285093.P12873639855771182747

`A007953(A061383(n))/A055642(A061383(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A285093

/-- `A007953(A061383(n))/A055642(A061383(n))` -/
def P12873639855771182747.Spec : Prop :=
  ∀ n, P12873639855771182747.a n = (A285093 n : ℚ)

end A285093

/-! ## A285093.P1760958748057281214

`A004427(A061383(n))`
-/

namespace A285093.P1760958748057281214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

end

end A285093.P1760958748057281214

namespace A285093

/-- `A004427(A061383(n))` -/
def P1760958748057281214.Spec : Prop :=
  ∀ n, P1760958748057281214.a n = A285093 n

end A285093

/-! ## A285093.P4505466379862875296

`A004427(eq[0, A180160(n)])`
-/

namespace A285093.P4505466379862875296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P4505466379862875296

namespace A285093

/-- `A004427(eq[0, A180160(n)])` -/
def P4505466379862875296.Spec : Prop :=
  ∀ n, P4505466379862875296.a n = A285093 n

end A285093

/-! ## A285093.P7815565535120070658

`A004427(record[n-A154364(n+1)*A180160(n)])`
-/

namespace A285093.P7815565535120070658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A154364 (n + 1) * A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285093.P7815565535120070658

namespace A285093

/-- `A004427(record[n-A154364(n+1)*A180160(n)])` -/
def P7815565535120070658.Spec : Prop :=
  ∀ n, P7815565535120070658.a n = A285093 n

end A285093

/-! ## A285093.P5866237887348241604

`A004427(record[n/A005206(n)^A180160(n)])`
-/

namespace A285093.P5866237887348241604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005206 n : ℚ) ^ (A180160 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A285093.P5866237887348241604

namespace A285093

/-- `A004427(record[n/A005206(n)^A180160(n)])` -/
def P5866237887348241604.Spec : Prop :=
  ∀ n, P5866237887348241604.a n = A285093 n

end A285093

/-! ## A285093.P7567206940202745170

`A004426(A061383(n))`
-/

namespace A285093.P7567206940202745170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

end

end A285093.P7567206940202745170

namespace A285093

/-- `A004426(A061383(n))` -/
def P7567206940202745170.Spec : Prop :=
  ∀ n, P7567206940202745170.a n = A285093 n

end A285093

/-! ## A285093.P98570266973900584

`A371383(eq[0, A180160(n)])`
-/

namespace A285093.P98570266973900584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P98570266973900584

namespace A285093

/-- `A371383(eq[0, A180160(n)])` -/
def P98570266973900584.Spec : Prop :=
  ∀ n, P98570266973900584.a n = A285093 n

end A285093

/-! ## A285093.P3784998060944576741

`A375968(eq[0, A180160(n)])`
-/

namespace A285093.P3784998060944576741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P3784998060944576741

namespace A285093

/-- `A375968(eq[0, A180160(n)])` -/
def P3784998060944576741.Spec : Prop :=
  ∀ n, P3784998060944576741.a n = A285093 n

end A285093

/-! ## A285093.P10314621401651964686

`A004426(eq[1, A371384(n)])`
-/

namespace A285093.P10314621401651964686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P10314621401651964686

namespace A285093

/-- `A004426(eq[1, A371384(n)])` -/
def P10314621401651964686.Spec : Prop :=
  ∀ n, P10314621401651964686.a n = A285093 n

end A285093

/-! ## A285093.P14340461950760275533

`A004427(eq[1, A371384(n)])`
-/

namespace A285093.P14340461950760275533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P14340461950760275533

namespace A285093

/-- `A004427(eq[1, A371384(n)])` -/
def P14340461950760275533.Spec : Prop :=
  ∀ n, P14340461950760275533.a n = A285093 n

end A285093

/-! ## A285093.P9612924755799697418

`A371383(eq[1, A371384(n)])`
-/

namespace A285093.P9612924755799697418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P9612924755799697418

namespace A285093

/-- `A371383(eq[1, A371384(n)])` -/
def P9612924755799697418.Spec : Prop :=
  ∀ n, P9612924755799697418.a n = A285093 n

end A285093

/-! ## A285093.P18068238374534422390

`A375968(eq[1, A371384(n)])`
-/

namespace A285093.P18068238374534422390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285093.P18068238374534422390

namespace A285093

/-- `A375968(eq[1, A371384(n)])` -/
def P18068238374534422390.Spec : Prop :=
  ∀ n, P18068238374534422390.a n = A285093 n

end A285093

/-! ## A285093.P6153676766193087739

`A371383(lt[A371384(n), 2])`
-/

namespace A285093.P6153676766193087739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A285093.P6153676766193087739

namespace A285093

/-- `A371383(lt[A371384(n), 2])` -/
def P6153676766193087739.Spec : Prop :=
  ∀ n, P6153676766193087739.a n = A285093 n

end A285093

/-! ## A285093.P15290050333977281482

`filter[A375968(n), A202022(#)]`
-/

namespace A285093.P15290050333977281482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A285093.P15290050333977281482

namespace A285093

/-- `filter[A375968(n), A202022(#)]` -/
def P15290050333977281482.Spec : Prop :=
  ∀ n, P15290050333977281482.a n = A285093 n

end A285093

/-! ## A285093.P14661396058844589910

`A371383(A057427(n)*A061383(n))`
-/

namespace A285093.P14661396058844589910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 (A057427 n * A061383 n).toNat

end

end A285093.P14661396058844589910

namespace A285093

/-- `A371383(A057427(n)*A061383(n))` -/
def P14661396058844589910.Spec : Prop :=
  ∀ n, P14661396058844589910.a n = A285093 n

end A285093

/-! ## A285093.P6760323007731468209

`A004426(eq[A004426(n), A004427(n)])`
-/

namespace A285093.P6760323007731468209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285093.P6760323007731468209

namespace A285093

/-- `A004426(eq[A004426(n), A004427(n)])` -/
def P6760323007731468209.Spec : Prop :=
  ∀ n, P6760323007731468209.a n = A285093 n

end A285093

/-! ## A285093.P5736599084550039368

`A004426(eq[A004426(n), A371383(n)])`
-/

namespace A285093.P5736599084550039368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285093.P5736599084550039368

namespace A285093

/-- `A004426(eq[A004426(n), A371383(n)])` -/
def P5736599084550039368.Spec : Prop :=
  ∀ n, P5736599084550039368.a n = A285093 n

end A285093

/-! ## A285093.P1690551432470879508

`A004426(eq[A004426(n), A375968(n)])`
-/

namespace A285093.P1690551432470879508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285093.P1690551432470879508

namespace A285093

/-- `A004426(eq[A004426(n), A375968(n)])` -/
def P1690551432470879508.Spec : Prop :=
  ∀ n, P1690551432470879508.a n = A285093 n

end A285093

/-! ## A285093.P292436761794760016

`A004427(eq[A004427(n), A375968(n)])`
-/

namespace A285093.P292436761794760016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285093.P292436761794760016

namespace A285093

/-- `A004427(eq[A004427(n), A375968(n)])` -/
def P292436761794760016.Spec : Prop :=
  ∀ n, P292436761794760016.a n = A285093 n

end A285093

/-! ## A285093.P13246302819236340495

`A257295(eq[A257295(n), A375968(n)])`
-/

namespace A285093.P13246302819236340495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285093.P13246302819236340495

namespace A285093

/-- `A257295(eq[A257295(n), A375968(n)])` -/
def P13246302819236340495.Spec : Prop :=
  ∀ n, P13246302819236340495.a n = A285093 n

end A285093

/-!
# A285094: Corresponding values of geometric means of digits of numbers from A061430.

The programs for A285094, the canonical program `A285094.P15629942790794542141` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285094 has offset 0).

The definition of A285094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285094.P15629942790794542141

`A004428(A061430(1+n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A285094

/-- `A004428(A061430(1+n))` -/
def P15629942790794542141.Spec : Prop :=
  ∀ n, P15629942790794542141.a n = A285094 n

theorem P15629942790794542141.correct : P15629942790794542141.Spec := by
  intro n
  simp only [A285094]

end A285094

/-! ## A285094.P18055175018315838100

`A004430(A061430(n+1))`
-/

namespace A285094.P18055175018315838100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 (A061430 (n + 1)).toNat

end

end A285094.P18055175018315838100

namespace A285094

/-- `A004430(A061430(n+1))` -/
def P18055175018315838100.Spec : Prop :=
  ∀ n, P18055175018315838100.a n = A285094 n

end A285094

/-! ## A285094.P12090693576358705959

`A004428(eq[A004428(n), A004430(n)])`
-/

namespace A285094.P12090693576358705959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285094.P12090693576358705959

namespace A285094

/-- `A004428(eq[A004428(n), A004430(n)])` -/
def P12090693576358705959.Spec : Prop :=
  ∀ n, P12090693576358705959.a n = A285094 n

end A285094

/-!
# A285095: Corresponding values of arithmetic means of digits of primes from A069709.

The programs for A285095, the canonical program `A285095.P226835775559454231` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285095 has offset 1).

The definition of A285095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285095.P226835775559454231

`A004427(p?[A061383(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A285095

/-- `A004427(p?[A061383(n)])` -/
def P226835775559454231.Spec : Prop :=
  ∀ n, P226835775559454231.a n = A285095 (n + 1)

theorem P226835775559454231.correct : P226835775559454231.Spec := by
  intro n
  simp only [A285095, Nat.add_sub_cancel]

end A285095

/-! ## A285095.P13962643182231633433

`A004426(p?[A061383(n)])`
-/

namespace A285095.P13962643182231633433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285095.P13962643182231633433

namespace A285095

/-- `A004426(p?[A061383(n)])` -/
def P13962643182231633433.Spec : Prop :=
  ∀ n, P13962643182231633433.a n = A285095 (n + 1)

end A285095

/-! ## A285095.P9900907397179126348

`A004426(A069709(1+n))`
-/

namespace A285095.P9900907397179126348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A069709 (1 + n)).toNat

end

end A285095.P9900907397179126348

namespace A285095

/-- `A004426(A069709(1+n))` -/
def P9900907397179126348.Spec : Prop :=
  ∀ n, P9900907397179126348.a n = A285095 (n + 1)

end A285095

/-! ## A285095.P17790818301052904033

`A178359(p?[A061383(n)])%10`
-/

namespace A285095.P17790818301052904033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A285095.P17790818301052904033

namespace A285095

/-- `A178359(p?[A061383(n)])%10` -/
def P17790818301052904033.Spec : Prop :=
  ∀ n, P17790818301052904033.a n = A285095 (n + 1)

end A285095

/-! ## A285095.P14063837867913197020

`A004426(record[A014963(A061383(n+2))])`
-/

namespace A285095.P14063837867913197020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061383 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285095.P14063837867913197020

namespace A285095

/-- `A004426(record[A014963(A061383(n+2))])` -/
def P14063837867913197020.Spec : Prop :=
  ∀ n, P14063837867913197020.a n = A285095 (n + 1)

end A285095

/-! ## A285095.P13752006897454397918

`A004427(record[A014963(A061383(n+2))])`
-/

namespace A285095.P13752006897454397918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061383 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285095.P13752006897454397918

namespace A285095

/-- `A004427(record[A014963(A061383(n+2))])` -/
def P13752006897454397918.Spec : Prop :=
  ∀ n, P13752006897454397918.a n = A285095 (n + 1)

end A285095

/-!
# A285096: Primes with integer arithmetic mean of digits = 2 in base 10.

The programs for A285096, the canonical program `A285096.P16169422435609313154` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285096 has offset 1).

The definition of A285096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285096.P16169422435609313154

`∩[A061385(n+1), A069709(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285096

/-- `∩[A061385(n+1), A069709(n+1)]` -/
def P16169422435609313154.Spec : Prop :=
  ∀ n, (P16169422435609313154.a n : ℤ) = A285096 (n + 1)

theorem P16169422435609313154.correct : P16169422435609313154.Spec := by
  intro n
  simp only [A285096, Nat.add_sub_cancel]

end A285096

/-! ## A285096.P17938003762837519400

`p?[A061385(n+1)]`
-/

namespace A285096.P17938003762837519400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285096.P17938003762837519400

namespace A285096

/-- `p?[A061385(n+1)]` -/
def P17938003762837519400.Spec : Prop :=
  ∀ n, P17938003762837519400.a n = A285096 (n + 1)

end A285096

/-! ## A285096.P11354052594733252863

`filter[A061385(n+1), A001222(#)]`
-/

namespace A285096.P11354052594733252863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A285096.P11354052594733252863

namespace A285096

/-- `filter[A061385(n+1), A001222(#)]` -/
def P11354052594733252863.Spec : Prop :=
  ∀ n, P11354052594733252863.a n = A285096 (n + 1)

end A285096

/-! ## A285096.P5212677365844191370

`filter[A061385(1+n), A010051(#)]`
-/

namespace A285096.P5212677365844191370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A285096.P5212677365844191370

namespace A285096

/-- `filter[A061385(1+n), A010051(#)]` -/
def P5212677365844191370.Spec : Prop :=
  ∀ n, P5212677365844191370.a n = A285096 (n + 1)

end A285096

/-! ## A285096.P16105369964213694987

`∩[A000040(n+1), A061385(n+1)]`
-/

namespace A285096.P16105369964213694987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16105369964213694987

namespace A285096

/-- `∩[A000040(n+1), A061385(n+1)]` -/
def P16105369964213694987.Spec : Prop :=
  ∀ n, (P16105369964213694987.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P8377364131680874221

`∩[A008578(n+1), A061385(n+1)]`
-/

namespace A285096.P8377364131680874221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P8377364131680874221

namespace A285096

/-- `∩[A008578(n+1), A061385(n+1)]` -/
def P8377364131680874221.Spec : Prop :=
  ∀ n, (P8377364131680874221.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P3209740269601487795

`∩[A033946(n+1), A061385(n+1)]`
-/

namespace A285096.P3209740269601487795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P3209740269601487795

namespace A285096

/-- `∩[A033946(n+1), A061385(n+1)]` -/
def P3209740269601487795.Spec : Prop :=
  ∀ n, (P3209740269601487795.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P15767865176555749968

`∩[A045319(n+1), A061385(n+1)]`
-/

namespace A285096.P15767865176555749968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P15767865176555749968

namespace A285096

/-- `∩[A045319(n+1), A061385(n+1)]` -/
def P15767865176555749968.Spec : Prop :=
  ∀ n, (P15767865176555749968.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P3622162279027538284

`∩[A045344(n+1), A061385(n+1)]`
-/

namespace A285096.P3622162279027538284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P3622162279027538284

namespace A285096

/-- `∩[A045344(n+1), A061385(n+1)]` -/
def P3622162279027538284.Spec : Prop :=
  ∀ n, (P3622162279027538284.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P8228561382015297814

`∩[A046022(n+1), A061385(n+1)]`
-/

namespace A285096.P8228561382015297814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P8228561382015297814

namespace A285096

/-- `∩[A046022(n+1), A061385(n+1)]` -/
def P8228561382015297814.Spec : Prop :=
  ∀ n, (P8228561382015297814.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P17376170269394534824

`∩[A053813(n+1), A061385(n+1)]`
-/

namespace A285096.P17376170269394534824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P17376170269394534824

namespace A285096

/-- `∩[A053813(n+1), A061385(n+1)]` -/
def P17376170269394534824.Spec : Prop :=
  ∀ n, (P17376170269394534824.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P7478682706570051827

`∩[A060634(n+1), A061385(n+1)]`
-/

namespace A285096.P7478682706570051827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P7478682706570051827

namespace A285096

/-- `∩[A060634(n+1), A061385(n+1)]` -/
def P7478682706570051827.Spec : Prop :=
  ∀ n, (P7478682706570051827.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P17090634216896179546

`∩[A061385(n+1), A062972(n+1)]`
-/

namespace A285096.P17090634216896179546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P17090634216896179546

namespace A285096

/-- `∩[A061385(n+1), A062972(n+1)]` -/
def P17090634216896179546.Spec : Prop :=
  ∀ n, (P17090634216896179546.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P3435718093722715765

`∩[A061385(n+1), A066050(n+1)]`
-/

namespace A285096.P3435718093722715765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P3435718093722715765

namespace A285096

/-- `∩[A061385(n+1), A066050(n+1)]` -/
def P3435718093722715765.Spec : Prop :=
  ∀ n, (P3435718093722715765.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P12841700594894204381

`∩[A061385(n+1), A067126(n+1)]`
-/

namespace A285096.P12841700594894204381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P12841700594894204381

namespace A285096

/-- `∩[A061385(n+1), A067126(n+1)]` -/
def P12841700594894204381.Spec : Prop :=
  ∀ n, (P12841700594894204381.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P18160535718186898354

`∩[A061385(n+1), A070159(n+1)]`
-/

namespace A285096.P18160535718186898354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P18160535718186898354

namespace A285096

/-- `∩[A061385(n+1), A070159(n+1)]` -/
def P18160535718186898354.Spec : Prop :=
  ∀ n, (P18160535718186898354.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P5216029745487351066

`∩[A061385(n+1), A097605(n+1)]`
-/

namespace A285096.P5216029745487351066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P5216029745487351066

namespace A285096

/-- `∩[A061385(n+1), A097605(n+1)]` -/
def P5216029745487351066.Spec : Prop :=
  ∀ n, (P5216029745487351066.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P16335773160407174746

`∩[A061385(n+1), A106118(n+1)]`
-/

namespace A285096.P16335773160407174746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16335773160407174746

namespace A285096

/-- `∩[A061385(n+1), A106118(n+1)]` -/
def P16335773160407174746.Spec : Prop :=
  ∀ n, (P16335773160407174746.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P12121785307818972159

`∩[A061385(n+1), A116974(n+1)]`
-/

namespace A285096.P12121785307818972159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P12121785307818972159

namespace A285096

/-- `∩[A061385(n+1), A116974(n+1)]` -/
def P12121785307818972159.Spec : Prop :=
  ∀ n, (P12121785307818972159.a n : ℤ) = A285096 (n + 1)

end A285096

/-! ## A285096.P5912914971071235161

`∩[A061385(n+1), A119449(n+1)]`
-/

namespace A285096.P5912914971071235161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P5912914971071235161

namespace A285096

/-- `∩[A061385(n+1), A119449(n+1)]` -/
def P5912914971071235161.Spec : Prop :=
  ∀ n, (P5912914971071235161.a n : ℤ) = A285096 (n + 1)

end A285096

/-!
# A285097: a(n) = difference between the positions of two least significant 1-bits in base-2 representation of n, or 0 if there are less than two 1-bits in n (when n is either zero or a power of 2).

The programs for A285097, the canonical program `A285097.P8430036968409566481` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285097 has offset 0).

The definition of A285097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285097.P348408321599089067

`val(A334031(n), 3)`
-/

namespace A285097.P348408321599089067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334031 n).toNat 3

end

end A285097.P348408321599089067

namespace A285097

/-- `val(A334031(n), 3)` -/
def P348408321599089067.Spec : Prop :=
  ∀ n, (P348408321599089067.a n : ℤ) = A285097 n

end A285097

/-! ## A285097.P8430036968409566481

`val(A322250(A028310(n)), 2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A285097

/-- `val(A322250(A028310(n)), 2)` -/
def P8430036968409566481.Spec : Prop :=
  ∀ n, (P8430036968409566481.a n : ℤ) = A285097 n

theorem P8430036968409566481.correct : P8430036968409566481.Spec := by
  intro n
  simp only [A285097]

end A285097

/-! ## A285097.P1082039889983749536

`A124759(n)-A124759(floor(n/2))`
-/

namespace A285097.P1082039889983749536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124759 n - A124759 ⌊(n : ℚ) / 2⌋.toNat

end

end A285097.P1082039889983749536

namespace A285097

/-- `A124759(n)-A124759(floor(n/2))` -/
def P1082039889983749536.Spec : Prop :=
  ∀ n, P1082039889983749536.a n = A285097 n

end A285097

/-! ## A285097.P4680045766875193912

`A007814(A322250(record[(n-1)%((n+1)/and(n+1, -(n+1)))+1]))`
-/

namespace A285097.P4680045766875193912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A322250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A285097.P4680045766875193912

namespace A285097

/-- `A007814(A322250(record[(n-1)%((n+1)/and(n+1, -(n+1)))+1]))` -/
def P4680045766875193912.Spec : Prop :=
  ∀ n, P4680045766875193912.a n = A285097 n

end A285097

/-! ## A285097.P12745261595806002603

`val(A322250(A322250(2*n+1)), 2)`
-/

namespace A285097.P12745261595806002603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322250 (A322250 (2 * n + 1)).toNat).toNat 2

end

end A285097.P12745261595806002603

namespace A285097

/-- `val(A322250(A322250(2*n+1)), 2)` -/
def P12745261595806002603.Spec : Prop :=
  ∀ n, (P12745261595806002603.a n : ℤ) = A285097 n

end A285097

/-! ## A285097.P16065933642574324257

`A007814(A322250(A322250(2*n+1)))`
-/

namespace A285097.P16065933642574324257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A322250 (A322250 (2 * n + 1)).toNat).toNat

end

end A285097.P16065933642574324257

namespace A285097

/-- `A007814(A322250(A322250(2*n+1)))` -/
def P16065933642574324257.Spec : Prop :=
  ∀ n, P16065933642574324257.a n = A285097 n

end A285097

/-! ## A285097.P3246234060999746903

`A260738(A260739(A269387(n)))`
-/

namespace A285097.P3246234060999746903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A260739 (A269387 n).toNat).toNat

end

end A285097.P3246234060999746903

namespace A285097

/-- `A260738(A260739(A269387(n)))` -/
def P3246234060999746903.Spec : Prop :=
  ∀ n, P3246234060999746903.a n = A285097 n

end A285097

/-! ## A285097.P1990560071524763760

`A055396(A078898(A252753(n)))`
-/

namespace A285097.P1990560071524763760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078898 (A252753 n).toNat).toNat

end

end A285097.P1990560071524763760

namespace A285097

/-- `A055396(A078898(A252753(n)))` -/
def P1990560071524763760.Spec : Prop :=
  ∀ n, P1990560071524763760.a n = A285097 n

end A285097

/-! ## A285097.P10958774789642824262

`A055396(A269172(A260739(A269387(2*n))))`
-/

namespace A285097.P10958774789642824262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A269172 (A260739 (A269387 (2 * n)).toNat).toNat).toNat

end

end A285097.P10958774789642824262

namespace A285097

/-- `A055396(A269172(A260739(A269387(2*n))))` -/
def P10958774789642824262.Spec : Prop :=
  ∀ n, P10958774789642824262.a n = A285097 n

end A285097

/-! ## A285097.P13075522171021312927

`A089311(record[lcm(2, n)/2])`
-/

namespace A285097.P13075522171021312927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A285097.P13075522171021312927

namespace A285097

/-- `A089311(record[lcm(2, n)/2])` -/
def P13075522171021312927.Spec : Prop :=
  ∀ n, P13075522171021312927.a n = A285097 n

end A285097

/-! ## A285097.P6422089103817926999

`A089311(A004273(n))`
-/

namespace A285097.P6422089103817926999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A004273 n).toNat

end

end A285097.P6422089103817926999

namespace A285097

/-- `A089311(A004273(n))` -/
def P6422089103817926999.Spec : Prop :=
  ∀ n, P6422089103817926999.a n = A285097 n

end A285097

/-! ## A285097.P13038105678600998086

`A089311(A129343(n))`
-/

namespace A285097.P13038105678600998086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A129343 n).toNat

end

end A285097.P13038105678600998086

namespace A285097

/-- `A089311(A129343(n))` -/
def P13038105678600998086.Spec : Prop :=
  ∀ n, P13038105678600998086.a n = A285097 n

end A285097

/-! ## A285097.P143421629474596092

`A089311(A163985(n))`
-/

namespace A285097.P143421629474596092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A163985 n).toNat

end

end A285097.P143421629474596092

namespace A285097

/-- `A089311(A163985(n))` -/
def P143421629474596092.Spec : Prop :=
  ∀ n, P143421629474596092.a n = A285097 n

end A285097

/-! ## A285097.P3963594355848994067

`A089311(A004274(n+1))`
-/

namespace A285097.P3963594355848994067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A004274 (n + 1)).toNat

end

end A285097.P3963594355848994067

namespace A285097

/-- `A089311(A004274(n+1))` -/
def P3963594355848994067.Spec : Prop :=
  ∀ n, P3963594355848994067.a n = A285097 n

end A285097

/-! ## A285097.P12039702497799986613

`A089311(A004280(n+1))`
-/

namespace A285097.P12039702497799986613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A004280 (n + 1)).toNat

end

end A285097.P12039702497799986613

namespace A285097

/-- `A089311(A004280(n+1))` -/
def P12039702497799986613.Spec : Prop :=
  ∀ n, P12039702497799986613.a n = A285097 n

end A285097

/-! ## A285097.P2615627485166904396

`A089311(A004281(n+1))`
-/

namespace A285097.P2615627485166904396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A004281 (n + 1)).toNat

end

end A285097.P2615627485166904396

namespace A285097

/-- `A089311(A004281(n+1))` -/
def P2615627485166904396.Spec : Prop :=
  ∀ n, P2615627485166904396.a n = A285097 n

end A285097

/-! ## A285097.P2716320728966161920

`A089311(A130824(n)/2)`
-/

namespace A285097.P2716320728966161920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A285097.P2716320728966161920

namespace A285097

/-- `A089311(A130824(n)/2)` -/
def P2716320728966161920.Spec : Prop :=
  ∀ n, P2716320728966161920.a n = A285097 n

end A285097

/-! ## A285097.P10173028855991854171

`A089311(A139544(n+2)/2)`
-/

namespace A285097.P10173028855991854171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (SequenceMachineLib.roundAway ((A139544 (n + 2) : ℚ) / 2)).toNat

end

end A285097.P10173028855991854171

namespace A285097

/-- `A089311(A139544(n+2)/2)` -/
def P10173028855991854171.Spec : Prop :=
  ∀ n, P10173028855991854171.a n = A285097 n

end A285097

/-! ## A285097.P18148088506962382615

`A089311(A123168(n+1))`
-/

namespace A285097.P18148088506962382615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A123168 (n + 1)).toNat

end

end A285097.P18148088506962382615

namespace A285097

/-- `A089311(A123168(n+1))` -/
def P18148088506962382615.Spec : Prop :=
  ∀ n, P18148088506962382615.a n = A285097 n

end A285097

/-! ## A285097.P10317935929904237143

`A089311(A113127(n))`
-/

namespace A285097.P10317935929904237143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A113127 n).toNat

end

end A285097.P10317935929904237143

namespace A285097

/-- `A089311(A113127(n))` -/
def P10317935929904237143.Spec : Prop :=
  ∀ n, P10317935929904237143.a n = A285097 n

end A285097

/-!
# A285098: Row sums of irregular triangle A070168.

The programs for A285098, there is no canonical definition to state claims against.
-/

/-! ## A285098.P17181294399443017572

`A213909(1+n)/2+1+n`
-/

namespace A285098.P17181294399443017572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213909 (1 + n) : ℚ) / 2 + 1 + (n : ℚ)

end

end A285098.P17181294399443017572

/-! ## A285098.P7282131165462535660

`A351850(n+1)+1-A006667(n+1)`
-/

namespace A285098.P7282131165462535660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351850 (n + 1) + 1 - A006667 (n + 1)

end

end A285098.P7282131165462535660

/-! ## A285098.P13396851196786567922

`A213909(2*(1+n))/2`
-/

namespace A285098.P13396851196786567922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213909 (2 * (1 + n)) : ℚ) / 2

end

end A285098.P13396851196786567922

/-! ## A285098.P17193597193256023886

`floor(A213909(2+n+n)/2)`
-/

namespace A285098.P17193597193256023886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213909 (2 + (n + n)) : ℚ) / 2⌋

end

end A285098.P17193597193256023886

/-! ## A285098.P7403461792579728406

`A265946(2*(n+1))+n+1`
-/

namespace A285098.P7403461792579728406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265946 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A285098.P7403461792579728406

/-! ## A285098.P4601172687424013731

`(A213917(2*(n+1))+A213916(n+1))/2`
-/

namespace A285098.P4601172687424013731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213917 (2 * (n + 1)) + A213916 (n + 1) : ℚ) / 2

end

end A285098.P4601172687424013731

/-! ## A285098.P7497856317572298360

`(A033493(2*(n+1))-A213916(n+1))/2`
-/

namespace A285098.P7497856317572298360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033493 (2 * (n + 1)) - A213916 (n + 1) : ℚ) / 2

end

end A285098.P7497856317572298360

/-! ## A285098.P13000538289073910931

`(A049074(2*(n+1))-A213916(n+1))/2`
-/

namespace A285098.P13000538289073910931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049074 (2 * (n + 1)) - A213916 (n + 1) : ℚ) / 2

end

end A285098.P13000538289073910931

/-! ## A285098.P13095729921331412807

`A265946(4*(1+n))`
-/

namespace A285098.P13095729921331412807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265946 (4 * (1 + n))

end

end A285098.P13095729921331412807

/-!
# A285099: a(n) is the zero-based index of the second least significant 1-bit in the base-2 representation of n, or 0 if there are fewer than two 1-bits in n.

The programs for A285099, the canonical program `A285099.P5706203295534106788` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285099 has offset 0).

The definition of A285099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285099.P730735313539324178

`val(round(sqrt(and(n, n-1)²+1)), 2)`
-/

namespace A285099.P730735313539324178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2 + 1 : ℝ))).toNat 2

end

end A285099.P730735313539324178

namespace A285099

/-- `val(round(sqrt(and(n, n-1)²+1)), 2)` -/
def P730735313539324178.Spec : Prop :=
  ∀ n, (P730735313539324178.a n : ℤ) = A285099 n

end A285099

/-! ## A285099.P13233022534015418223

`A327491(and(n, n-1))`
-/

namespace A285099.P13233022534015418223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A285099.P13233022534015418223

namespace A285099

/-- `A327491(and(n, n-1))` -/
def P13233022534015418223.Spec : Prop :=
  ∀ n, P13233022534015418223.a n = A285099 n

end A285099

/-! ## A285099.P4506055713209363171

`A285097(and(n, n-1)+1)`
-/

namespace A285099.P4506055713209363171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

end

end A285099.P4506055713209363171

namespace A285099

/-- `A285097(and(n, n-1)+1)` -/
def P4506055713209363171.Spec : Prop :=
  ∀ n, P4506055713209363171.a n = A285099 n

end A285099

/-! ## A285099.P5706203295534106788

`val(A008486(and(n-1, n)), 2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A285099

/-- `val(A008486(and(n-1, n)), 2)` -/
def P5706203295534106788.Spec : Prop :=
  ∀ n, (P5706203295534106788.a n : ℤ) = A285099 n

theorem P5706203295534106788.correct : P5706203295534106788.Spec := by
  intro n
  simp only [A285099]

end A285099

/-! ## A285099.P3393435928362288506

`val(A028310(and(n, n-1)), 2)`
-/

namespace A285099.P3393435928362288506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat 2

end

end A285099.P3393435928362288506

namespace A285099

/-- `val(A028310(and(n, n-1)), 2)` -/
def P3393435928362288506.Spec : Prop :=
  ∀ n, (P3393435928362288506.a n : ℤ) = A285099 n

end A285099

/-! ## A285099.P6800297144862194301

`val(A288534(and(n, n-1)), 2)`
-/

namespace A285099.P6800297144862194301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A288534 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat 2

end

end A285099.P6800297144862194301

namespace A285099

/-- `val(A288534(and(n, n-1)), 2)` -/
def P6800297144862194301.Spec : Prop :=
  ∀ n, (P6800297144862194301.a n : ℤ) = A285099 n

end A285099

/-! ## A285099.P204655565545157515

`A089263(and(n, -and(n, n-1)))`
-/

namespace A285099.P204655565545157515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (Int.land (n : ℤ) (-Int.land (n : ℤ) ((n : ℤ) - 1))).toNat

end

end A285099.P204655565545157515

namespace A285099

/-- `A089263(and(n, -and(n, n-1)))` -/
def P204655565545157515.Spec : Prop :=
  ∀ n, P204655565545157515.a n = A285099 n

end A285099

/-! ## A285099.P7537312777503490979

`A007814(A302436(and(n, n-1)))`
-/

namespace A285099.P7537312777503490979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A285099.P7537312777503490979

namespace A285099

/-- `A007814(A302436(and(n, n-1)))` -/
def P7537312777503490979.Spec : Prop :=
  ∀ n, P7537312777503490979.a n = A285099 n

end A285099

/-! ## A285099.P11662070488112377151

`A285097(1-A341691(n)+n)`
-/

namespace A285099.P11662070488112377151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (1 - A341691 n + (n : ℤ)).toNat

end

end A285099.P11662070488112377151

namespace A285099

/-- `A285097(1-A341691(n)+n)` -/
def P11662070488112377151.Spec : Prop :=
  ∀ n, P11662070488112377151.a n = A285099 n

end A285099

/-! ## A285099.P8647970129637584477

`A285097(1-(A341691(n)-n))`
-/

namespace A285099.P8647970129637584477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (1 - (A341691 n - (n : ℤ))).toNat

end

end A285099.P8647970129637584477

namespace A285099

/-- `A285097(1-(A341691(n)-n))` -/
def P8647970129637584477.Spec : Prop :=
  ∀ n, P8647970129637584477.a n = A285099 n

end A285099

/-! ## A285099.P2938219356473662610

`A285097(A341691(2*n+1)+1)`
-/

namespace A285099.P2938219356473662610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A341691 (2 * n + 1) + 1).toNat

end

end A285099.P2938219356473662610

namespace A285099

/-- `A285097(A341691(2*n+1)+1)` -/
def P2938219356473662610.Spec : Prop :=
  ∀ n, P2938219356473662610.a n = A285099 n

end A285099

/-! ## A285099.P16719235816930028374

`A260738(A302032(A269387(n)))`
-/

namespace A285099.P16719235816930028374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A302032 (A269387 n).toNat).toNat

end

end A285099.P16719235816930028374

namespace A285099

/-- `A260738(A302032(A269387(n)))` -/
def P16719235816930028374.Spec : Prop :=
  ∀ n, P16719235816930028374.a n = A285099 n

end A285099

/-! ## A285099.P18057917955427095561

`A007814(A008706(and(n, n-1)))`
-/

namespace A285099.P18057917955427095561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008706 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A285099.P18057917955427095561

namespace A285099

/-- `A007814(A008706(and(n, n-1)))` -/
def P18057917955427095561.Spec : Prop :=
  ∀ n, P18057917955427095561.a n = A285099 n

end A285099

/-! ## A285099.P18302830742312182883

`A285097(n+1-gcd(n, 2^n))`
-/

namespace A285099.P18302830742312182883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (n + 1 - Nat.gcd n (2 ^ n))

end

end A285099.P18302830742312182883

namespace A285099

/-- `A285097(n+1-gcd(n, 2^n))` -/
def P18302830742312182883.Spec : Prop :=
  ∀ n, P18302830742312182883.a n = A285099 n

end A285099

/-! ## A285099.P18208444014061749104

`A055396(A032742(A005940(n+1)))`
-/

namespace A285099.P18208444014061749104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A032742 (A005940 (n + 1)).toNat).toNat

end

end A285099.P18208444014061749104

namespace A285099

/-- `A055396(A032742(A005940(n+1)))` -/
def P18208444014061749104.Spec : Prop :=
  ∀ n, P18208444014061749104.a n = A285099 n

end A285099

/-! ## A285099.P1747029337920239997

`A327491(A390568(n))`
-/

namespace A285099.P1747029337920239997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (A390568 n).toNat

end

end A285099.P1747029337920239997

namespace A285099

/-- `A327491(A390568(n))` -/
def P1747029337920239997.Spec : Prop :=
  ∀ n, P1747029337920239997.a n = A285099 n

end A285099

