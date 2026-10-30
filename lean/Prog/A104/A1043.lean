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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104305: Largest possible difference between consecutive marks that can occur amongst all possible perfect rulers of length n.

The programs for A104305, there is no canonical definition to state claims against.
-/

/-! ## A104305.P18336051781151444473

`A050506(n+3)-A335520(A189361(n+1))`
-/

namespace A104305.P18336051781151444473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050506 (n + 3) - A335520 (A189361 (n + 1)).toNat

end

end A104305.P18336051781151444473

/-! ## A104305.P2002316276646086730

`A130259(A121776(n))-char[16]`
-/

namespace A104305.P2002316276646086730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A121776 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A104305.P2002316276646086730

/-! ## A104305.P1917467464318862743

`A331246(A020702(n))`
-/

namespace A104305.P1917467464318862743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A020702 n).toNat

end

end A104305.P1917467464318862743

/-! ## A104305.P5783041300762840797

`A331246(A067996(n))`
-/

namespace A104305.P5783041300762840797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A067996 n).toNat

end

end A104305.P5783041300762840797

/-!
# A104306: Number of perfect rulers of length n having the largest possible difference between consecutive marks that can occur amongst all possible perfect rulers of this length.

The programs for A104306, there is no canonical definition to state claims against.
-/

/-! ## A104306.P1594347905496519711

`A215467(A117494(A213245(n+1)))`
-/

namespace A104306.P1594347905496519711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A117494 (A213245 (n + 1)).toNat).toNat

end

end A104306.P1594347905496519711

/-! ## A104306.P3931607008722175816

`A325110(A325078(3*(n+1))%A325097(n+1))`
-/

namespace A104306.P3931607008722175816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325110 (Int.tmod (A325078 (3 * (n + 1))) (A325097 (n + 1))).toNat

end

end A104306.P3931607008722175816

/-! ## A104306.P3942083601274640801

`A000188(A364914(n)+A003114(n))`
-/

namespace A104306.P3942083601274640801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A364914 n + A003114 n).toNat

end

end A104306.P3942083601274640801

/-! ## A104306.P18245570283334684846

`gcd(A008046(A132045(n)), A132045(n))`
-/

namespace A104306.P18245570283334684846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008046 (A132045 n).toNat) (A132045 n)

end

end A104306.P18245570283334684846

/-! ## A104306.P1829206829799132862

`A082067(A175506(n+1)+A000079(n))`
-/

namespace A104306.P1829206829799132862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A175506 (n + 1) + A000079 n).toNat

end

end A104306.P1829206829799132862

/-!
# A104307: Least maximum of differences between consecutive marks that can occur amongst all possible perfect rulers of length n.

The programs for A104307, there is no canonical definition to state claims against.
-/

/-! ## A104307.P8970495258941235685

`A105224(A379722(3*(n+1))+5)`
-/

namespace A104307.P8970495258941235685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A379722 (3 * (n + 1)) + 5).toNat

end

end A104307.P8970495258941235685

/-! ## A104307.P17290385590343888827

`A055642(n*A333029(3*n+4))`
-/

namespace A104307.P17290385590343888827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n : ℤ) * A333029 (3 * n + 4)).toNat

end

end A104307.P17290385590343888827

/-! ## A104307.P11005572228513327491

`A055642(A283740(2*n+3)*A377419(n))`
-/

namespace A104307.P11005572228513327491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A283740 (2 * n + 3) * A377419 n).toNat

end

end A104307.P11005572228513327491

/-! ## A104307.P15548799881172689107

`A055642(A382340(3*(n+1))+A098419(n+1))`
-/

namespace A104307.P15548799881172689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A382340 (3 * (n + 1)) + A098419 (n + 1)).toNat

end

end A104307.P15548799881172689107

/-! ## A104307.P18287099632985011948

`A048766(A163254(3*n+2)-A001221(n+1))`
-/

namespace A104307.P18287099632985011948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A163254 (3 * n + 2) - A001221 (n + 1)).toNat

end

end A104307.P18287099632985011948

/-!
# A104308: Number of perfect rulers of length n having the least possible largest difference between any adjacent marks that can occur amongst all perfect rulers of this length.

The programs for A104308, there is no canonical definition to state claims against.
-/

/-! ## A104308.P7213210942038414963

`A322351(A067201(n+4)+A000041(2*n))`
-/

namespace A104308.P7213210942038414963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322351 (A067201 (n + 4) + A000041 (2 * n)).toNat

end

end A104308.P7213210942038414963

/-! ## A104308.P7899072572246580644

`A294892(or(A005850(n+1), A022131(n)))`
-/

namespace A104308.P7899072572246580644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (Int.lor (A005850 (n + 1)) (A022131 n)).toNat

end

end A104308.P7899072572246580644

/-! ## A104308.P621375367230306151

`Δ[eq[A025436(n), A151618(n)]]`
-/

namespace A104308.P621375367230306151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151618 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104308.P621375367230306151

/-! ## A104308.P8119910116511568862

`gcd(A234580(n)+3, A119495(n))`
-/

namespace A104308.P8119910116511568862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234580 n + 3) (A119495 n)

end

end A104308.P8119910116511568862

/-! ## A104308.P18371711679885012462

`gcd(n+5, A034364(A004277(n)))`
-/

namespace A104308.P18371711679885012462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A034364 (A004277 n).toNat)

end

end A104308.P18371711679885012462

/-!
# A104311: Numbers n such that the coefficient of x^n in (x^3+x^2+x+1)^n is prime.

The programs for A104311, there is no canonical definition to state claims against.
-/

/-! ## A104311.P14216040983969505728

`xor(A118737(n)!, A118767(2*(n+2)))`
-/

namespace A104311.P14216040983969505728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A118737 n).toNat : ℤ) (A118767 (2 * (n + 2)))

end

end A104311.P14216040983969505728

/-!
# A104312: Prime coefficient of x^n in (x^3+x^2+x+1)^n for n in A104311.

The programs for A104312, there is no canonical definition to state claims against.
-/

/-! ## A104312.P10008865623055673676

`A005725(A104311(n+1))`
-/

namespace A104312.P10008865623055673676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005725 (A104311 (n + 1)).toNat

end

end A104312.P10008865623055673676

/-!
# A104315: Numbers having in decimal representation at least one zero, but with no zero in their square.

The programs for A104315, there is no canonical definition to state claims against.
-/

/-! ## A104315.P18317720641531999412

`∩[A011540(n+1), A052040(n+1)]`
-/

namespace A104315.P18317720641531999412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104315.P18317720641531999412

/-! ## A104315.P6475994452032592777

`∩[A052040(n+1), A252480(n+1)]`
-/

namespace A104315.P6475994452032592777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104315.P6475994452032592777

/-! ## A104315.P14657307096066284459

`∩[A052040(n+1), A274612(n+1)]`
-/

namespace A104315.P14657307096066284459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104315.P14657307096066284459

/-! ## A104315.P13732437278743831671

`eq[A007954(n), A086008(n)]`
-/

namespace A104315.P13732437278743831671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P13732437278743831671

/-! ## A104315.P13306601264862430215

`eq[A086008(n), A098736(n)]`
-/

namespace A104315.P13306601264862430215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P13306601264862430215

/-! ## A104315.P286094316944875944

`eq[A086008(n), A100817(n)]`
-/

namespace A104315.P286094316944875944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P286094316944875944

/-! ## A104315.P5835404826243135683

`eq[A086008(n), A187844(n)]`
-/

namespace A104315.P5835404826243135683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P5835404826243135683

/-! ## A104315.P6337908408918933942

`eq[A086008(n), A321243(n)]`
-/

namespace A104315.P6337908408918933942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P6337908408918933942

/-! ## A104315.P3810867131866885237

`lt[A086008(n), A217096(n)]`
-/

namespace A104315.P3810867131866885237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104315.P3810867131866885237

/-! ## A104315.P9032903831604686868

`eq[A004430(n)², A086008(n)]`
-/

namespace A104315.P9032903831604686868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104315.P9032903831604686868

/-! ## A104315.P12827011677298363256

`eq[sinh(A054054(n)), A086008(n)]`
-/

namespace A104315.P12827011677298363256
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (A054054 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A104315.P12827011677298363256

/-! ## A104315.P4807933556970620056

`filter[A052040(n+1), A217096(#)]`
-/

namespace A104315.P4807933556970620056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A104315.P4807933556970620056

/-!
# A104316: A104315(n)^2.

The programs for A104316, there is no canonical definition to state claims against.
-/

/-! ## A104316.P12590157738718697172

`A104315(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104316.P12590157738718697172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104315 (n + 1) ^ 2

end

end A104316.P12590157738718697172

/-! ## A104316.P9233034965891236333

`record[A104315(A141256(n))²]`
-/

namespace A104316.P9233034965891236333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104315 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104316.P9233034965891236333

/-! ## A104316.P725049289369483647

`record[A104315(A143182(n))²]`
-/

namespace A104316.P725049289369483647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104315 (A143182 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104316.P725049289369483647

/-! ## A104316.P13201434160274599285

`record[A104315(A152271(n))²]`
-/

namespace A104316.P13201434160274599285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104315 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104316.P13201434160274599285

/-! ## A104316.P13500891568896823318

`record[A104315(A193592(n))²]`
-/

namespace A104316.P13500891568896823318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104315 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104316.P13500891568896823318

/-!
# A104317: Number of n-digit squares with no zero digits, having roots containing at least one zero.

The programs for A104317, there is no canonical definition to state claims against.
-/

/-! ## A104317.P9323878094916957028

`A276501(C(A182577(2*n), n))`
-/

namespace A104317.P9323878094916957028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276501 (Nat.choose (A182577 (2 * n)).toNat n)

end

end A104317.P9323878094916957028

/-! ## A104317.P16274964733757591283

`A035930(A035935(n)-A006128(n))`
-/

namespace A104317.P16274964733757591283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A035935 n - A006128 n).toNat

end

end A104317.P16274964733757591283

/-! ## A104317.P803246948899993718

`A011864(n)*A123578(A001563(n))`
-/

namespace A104317.P803246948899993718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n * A123578 (A001563 n).toNat

end

end A104317.P803246948899993718

/-!
# A104320: Number of zeros in ternary representation of 2^n.

The programs for A104320, there is no canonical definition to state claims against.
-/

/-! ## A104320.P303553803161342057

`A020915(n)-(A260683(n)+A036461(n))`
-/

namespace A104320.P303553803161342057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - (A260683 n + A036461 n)

end

end A104320.P303553803161342057

/-! ## A104320.P11327458435010679934

`A020915(n)+A260683(n)-A261009(n)`
-/

namespace A104320.P11327458435010679934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + (A260683 n - A261009 n)

end

end A104320.P11327458435010679934

/-! ## A104320.P1533696806263335278

`∑{digits}[A004642(n), A000007(#)]`
-/

namespace A104320.P1533696806263335278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A104320.P1533696806263335278

/-! ## A104320.P14561056699376738672

`∑{digits}[A004642(n), A001343(#)]`
-/

namespace A104320.P14561056699376738672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001343 x).sum

end

end A104320.P14561056699376738672

/-! ## A104320.P15934436901240946317

`∑{digits}[A004642(n), A029419(#)]`
-/

namespace A104320.P15934436901240946317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029419 x).sum

end

end A104320.P15934436901240946317

/-! ## A104320.P15943684488121306616

`∑{digits}[A004642(n), 2-A001316(#)]`
-/

namespace A104320.P15943684488121306616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A001316 x).sum

end

end A104320.P15943684488121306616

/-! ## A104320.P17006843848625396772

`∑{digits}[A004642(n), A073642(2-#)]`
-/

namespace A104320.P17006843848625396772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A073642 (2 - x)).sum

end

end A104320.P17006843848625396772

/-! ## A104320.P11970829903220919128

`∑{digits}[A004642(n), A039966(A001316(#))]`
-/

namespace A104320.P11970829903220919128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A039966 (A001316 x).toNat).sum

end

end A104320.P11970829903220919128

/-! ## A104320.P7365936113845688490

`∑{digits}[A004642(n), A039966(A004642(#))]`
-/

namespace A104320.P7365936113845688490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A039966 (A004642 x).toNat).sum

end

end A104320.P7365936113845688490

/-!
# A104324: The Fibonacci word over the nonnegative integers; or, the number of runs of identical bits in the binary Zeckendorf representation of n.

The programs for A104324, the canonical program `A104324.P1859779613873930843` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104324 has offset 0).

The definition of A104324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104324.P1859779613873930843

`A007895(n)+A213911(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104324

/-- `A007895(n)+A213911(n)` -/
def P1859779613873930843.Spec : Prop :=
  ∀ n, P1859779613873930843.a n = A104324 n

theorem P1859779613873930843.correct : P1859779613873930843.Spec := by
  intro n
  simp only [A104324]

end A104324

/-! ## A104324.P8839556172797874405

`a(A066628(n))+2` with `a(0)=0, a(1)=1`
-/

namespace A104324.P8839556172797874405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A066628 n).toNat + 2

end

end A104324.P8839556172797874405

namespace A104324

/-- `a(A066628(n))+2` -/
def P8839556172797874405.Spec : Prop :=
  ∀ n, (P8839556172797874405.a n : ℤ) = A104324 n

end A104324

/-! ## A104324.P781591880913486192

`A003849(n)+2*A213911(n)`
-/

namespace A104324.P781591880913486192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 2 * A213911 n

end

end A104324.P781591880913486192

namespace A104324

/-- `A003849(n)+2*A213911(n)` -/
def P781591880913486192.Spec : Prop :=
  ∀ n, P781591880913486192.a n = A104324 n

theorem P781591880913486192.correct : P781591880913486192.Spec := by
  intro n
  simp only [A104324, Nat.add_sub_cancel, A104324.P781591880913486192.a, A104324.P1859779613873930843.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104324

/-! ## A104324.P12726887866726398379

`2*A007895(n)-A003849(n)`
-/

namespace A104324.P12726887866726398379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007895 n - A003849 n

end

end A104324.P12726887866726398379

namespace A104324

/-- `2*A007895(n)-A003849(n)` -/
def P12726887866726398379.Spec : Prop :=
  ∀ n, P12726887866726398379.a n = A104324 n

theorem P12726887866726398379.correct : P12726887866726398379.Spec := by
  intro n
  simp only [A104324, Nat.add_sub_cancel, A104324.P12726887866726398379.a, A104324.P1859779613873930843.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104324

/-! ## A104324.P7913828629129301428

`A213911(n)+n-A219641(n)`
-/

namespace A104324.P7913828629129301428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + ((n : ℤ) - A219641 n)

end

end A104324.P7913828629129301428

namespace A104324

/-- `A213911(n)+n-A219641(n)` -/
def P7913828629129301428.Spec : Prop :=
  ∀ n, P7913828629129301428.a n = A104324 n

theorem P7913828629129301428.correct : P7913828629129301428.Spec := by
  intro n
  simp only [A104324, Nat.add_sub_cancel, A104324.P7913828629129301428.a, A104324.P1859779613873930843.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A219641, A219641.P1602393212941527080.a, A003849, A003849.P15070805603138295355.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104324

/-! ## A104324.P16244076361131695165

`A213911(n)+2*(n+1)-A288625(n+1)`
-/

namespace A104324.P16244076361131695165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + ((2 * (n + 1) : ℤ) - A288625 (n + 1))

end

end A104324.P16244076361131695165

namespace A104324

/-- `A213911(n)+2*(n+1)-A288625(n+1)` -/
def P16244076361131695165.Spec : Prop :=
  ∀ n, P16244076361131695165.a n = A104324 n

theorem P16244076361131695165.correct : P16244076361131695165.Spec := by
  intro n
  simp only [A104324, Nat.add_sub_cancel, A104324.P16244076361131695165.a, A104324.P1859779613873930843.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A288625, A288625.P5745602300368746224.a, A003849, A003849.P15070805603138295355.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104324

/-! ## A104324.P6019072403523195708

`A007895(A193564(n+1))+A007895(n)`
-/

namespace A104324.P6019072403523195708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A193564 (n + 1)).toNat + A007895 n

end

end A104324.P6019072403523195708

namespace A104324

/-- `A007895(A193564(n+1))+A007895(n)` -/
def P6019072403523195708.Spec : Prop :=
  ∀ n, P6019072403523195708.a n = A104324 n

end A104324

/-! ## A104324.P2746854459420480939

`A007895(n-A003849(n))+A007895(n)`
-/

namespace A104324.P2746854459420480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((n : ℤ) - A003849 n).toNat + A007895 n

end

end A104324.P2746854459420480939

namespace A104324

/-- `A007895(n-A003849(n))+A007895(n)` -/
def P2746854459420480939.Spec : Prop :=
  ∀ n, P2746854459420480939.a n = A104324 n

end A104324

/-! ## A104324.P6167063681927165412

`A007895(n)+A102364(n)-A212278(n)`
-/

namespace A104324.P6167063681927165412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + (A102364 n - A212278 n)

end

end A104324.P6167063681927165412

namespace A104324

/-- `A007895(n)+A102364(n)-A212278(n)` -/
def P6167063681927165412.Spec : Prop :=
  ∀ n, P6167063681927165412.a n = A104324 n

theorem P6167063681927165412.correct : P6167063681927165412.Spec := by
  intro n
  simp only [A104324, Nat.add_sub_cancel, A104324.P6167063681927165412.a, A104324.P1859779613873930843.a, A007895, A007895.P13159574906702943091.a, A102364, A102364.P14950148720451937594.a, A212278, A212278.P9636615895971734323.a, A213911, A213911.P10704289243874186372.a, A003849, A003849.P15070805603138295355.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A072649, A072649.P9617326913925617377.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A108852, A108852.P14747039251510576692.a, A022341, A022341.P2847779761458071812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104324

/-! ## A104324.P18366802128401390028

`A213911(A004956(n))+A213911(n)`
-/

namespace A104324.P18366802128401390028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat + A213911 n

end

end A104324.P18366802128401390028

namespace A104324

/-- `A213911(A004956(n))+A213911(n)` -/
def P18366802128401390028.Spec : Prop :=
  ∀ n, P18366802128401390028.a n = A104324 n

end A104324

/-! ## A104324.P12110012360929742814

`A213911(A026351(n))+A213911(n)`
-/

namespace A104324.P12110012360929742814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026351 n).toNat + A213911 n

end

end A104324.P12110012360929742814

namespace A104324

/-- `A213911(A026351(n))+A213911(n)` -/
def P12110012360929742814.Spec : Prop :=
  ∀ n, P12110012360929742814.a n = A104324 n

end A104324

/-! ## A104324.P16389057242829037018

`A213911(A022342(n+1))+A213911(n)`
-/

namespace A104324.P16389057242829037018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A022342 (n + 1)).toNat + A213911 n

end

end A104324.P16389057242829037018

namespace A104324

/-- `A213911(A022342(n+1))+A213911(n)` -/
def P16389057242829037018.Spec : Prop :=
  ∀ n, P16389057242829037018.a n = A104324 n

end A104324

/-! ## A104324.P15476847464607041679

`A213911(A058065(n)+1)+A213911(n)`
-/

namespace A104324.P15476847464607041679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A058065 n + 1).toNat + A213911 n

end

end A104324.P15476847464607041679

namespace A104324

/-- `A213911(A058065(n)+1)+A213911(n)` -/
def P15476847464607041679.Spec : Prop :=
  ∀ n, P15476847464607041679.a n = A104324 n

end A104324

/-! ## A104324.P11489295583654460585

`A213911(eq[0, A003849(n)])+A213911(n)`
-/

namespace A104324.P11489295583654460585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A213911 n

end

end A104324.P11489295583654460585

namespace A104324

/-- `A213911(eq[0, A003849(n)])+A213911(n)` -/
def P11489295583654460585.Spec : Prop :=
  ∀ n, P11489295583654460585.a n = A104324 n

end A104324

/-! ## A104324.P14689042978506385977

`A213911(A000201(n+1)-1)+A213911(n)`
-/

namespace A104324.P14689042978506385977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A000201 (n + 1) - 1).toNat + A213911 n

end

end A104324.P14689042978506385977

namespace A104324

/-- `A213911(A000201(n+1)-1)+A213911(n)` -/
def P14689042978506385977.Spec : Prop :=
  ∀ n, P14689042978506385977.a n = A104324 n

end A104324

/-! ## A104324.P7110204845992958354

`A213911(A004937(n))+A213911(n)`
-/

namespace A104324.P7110204845992958354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004937 n).toNat + A213911 n

end

end A104324.P7110204845992958354

namespace A104324

/-- `A213911(A004937(n))+A213911(n)` -/
def P7110204845992958354.Spec : Prop :=
  ∀ n, P7110204845992958354.a n = A104324 n

end A104324

/-! ## A104324.P1851238467412481339

`A213911(A004957(n))+A213911(n)`
-/

namespace A104324.P1851238467412481339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat + A213911 n

end

end A104324.P1851238467412481339

namespace A104324

/-- `A213911(A004957(n))+A213911(n)` -/
def P1851238467412481339.Spec : Prop :=
  ∀ n, P1851238467412481339.a n = A104324 n

end A104324

/-! ## A104324.P3491635098076992670

`A213911(A003622(n+1))+A213911(n)`
-/

namespace A104324.P3491635098076992670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A003622 (n + 1)).toNat + A213911 n

end

end A104324.P3491635098076992670

namespace A104324

/-- `A213911(A003622(n+1))+A213911(n)` -/
def P3491635098076992670.Spec : Prop :=
  ∀ n, P3491635098076992670.a n = A104324 n

end A104324

/-! ## A104324.P2569453682218233838

`A213911(eq[1, A014675(n)])+A213911(n)`
-/

namespace A104324.P2569453682218233838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A213911 n

end

end A104324.P2569453682218233838

namespace A104324

/-- `A213911(eq[1, A014675(n)])+A213911(n)` -/
def P2569453682218233838.Spec : Prop :=
  ∀ n, P2569453682218233838.a n = A104324 n

end A104324

/-! ## A104324.P6224980924994114887

`A213911(A000201(A000201(n+1)))+A213911(n)`
-/

namespace A104324.P6224980924994114887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A000201 (A000201 (n + 1)).toNat).toNat + A213911 n

end

end A104324.P6224980924994114887

namespace A104324

/-- `A213911(A000201(A000201(n+1)))+A213911(n)` -/
def P6224980924994114887.Spec : Prop :=
  ∀ n, P6224980924994114887.a n = A104324 n

end A104324

/-!
# A104325: Number of runs of equal bits in the dual Zeckendorf representation of n (A104326).

The programs for A104325, the canonical program `A104325.P3966084804121133080` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104325 has offset 0).

The definition of A104325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104325.P4104136592843736162

`A008687(A336231(n+1)+1)`
-/

namespace A104325.P4104136592843736162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A336231 (n + 1) + 1).toNat

end

end A104325.P4104136592843736162

namespace A104325

/-- `A008687(A336231(n+1)+1)` -/
def P4104136592843736162.Spec : Prop :=
  ∀ n, P4104136592843736162.a n = A104325 n

end A104325

/-! ## A104325.P4186112056648242445

`A000005(A080100(A336231(n+1)))`
-/

namespace A104325.P4186112056648242445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080100 (A336231 (n + 1)).toNat).toNat

end

end A104325.P4186112056648242445

namespace A104325

/-- `A000005(A080100(A336231(n+1)))` -/
def P4186112056648242445.Spec : Prop :=
  ∀ n, P4186112056648242445.a n = A104325 n

end A104325

/-! ## A104325.P12654445199001194451

`A023416(2*A336231(n+1))`
-/

namespace A104325.P12654445199001194451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A336231 (n + 1)).toNat

end

end A104325.P12654445199001194451

namespace A104325

/-- `A023416(2*A336231(n+1))` -/
def P12654445199001194451.Spec : Prop :=
  ∀ n, P12654445199001194451.a n = A104325 n

end A104325

/-! ## A104325.P3966084804121133080

`A023416(record[and(n+1, A073138(n))])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104325

/-- `A023416(record[and(n+1, A073138(n))])` -/
def P3966084804121133080.Spec : Prop :=
  ∀ n, P3966084804121133080.a n = A104325 n

theorem P3966084804121133080.correct : P3966084804121133080.Spec := by
  intro n
  simp only [A104325]

end A104325

/-! ## A104325.P9856934899861254741

`A005811(A280873(n+1))`
-/

namespace A104325.P9856934899861254741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A280873 (n + 1)).toNat

end

end A104325.P9856934899861254741

namespace A104325

/-- `A005811(A280873(n+1))` -/
def P9856934899861254741.Spec : Prop :=
  ∀ n, P9856934899861254741.a n = A104325 n

end A104325

/-! ## A104325.P17062497304332912458

`A005811(record[xor(1, A090078(n))])`
-/

namespace A104325.P17062497304332912458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A090078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104325.P17062497304332912458

namespace A104325

/-- `A005811(record[xor(1, A090078(n))])` -/
def P17062497304332912458.Spec : Prop :=
  ∀ n, P17062497304332912458.a n = A104325 n

end A104325

/-! ## A104325.P5574454193499673298

`A005811(record[A180200(2*n+1)])`
-/

namespace A104325.P5574454193499673298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104325.P5574454193499673298

namespace A104325

/-- `A005811(record[A180200(2*n+1)])` -/
def P5574454193499673298.Spec : Prop :=
  ∀ n, P5574454193499673298.a n = A104325 n

end A104325

/-! ## A104325.P10127569147725254130

`A005811(record[xor(1, A003754(n+1))])`
-/

namespace A104325.P10127569147725254130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A003754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104325.P10127569147725254130

namespace A104325

/-- `A005811(record[xor(1, A003754(n+1))])` -/
def P10127569147725254130.Spec : Prop :=
  ∀ n, P10127569147725254130.a n = A104325 n

end A104325

/-! ## A104325.P8008497603904198327

`A117479(A066096(n)+1)+A117479(n)`
-/

namespace A104325.P8008497603904198327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117479 (A066096 n + 1).toNat + A117479 n

end

end A104325.P8008497603904198327

namespace A104325

/-- `A117479(A066096(n)+1)+A117479(n)` -/
def P8008497603904198327.Spec : Prop :=
  ∀ n, P8008497603904198327.a n = A104325 n

end A104325

/-!
# A104326: Dual Zeckendorf representation of n or the maximal (binary) Fibonacci representation. Also list of binary vectors not containing 00.

The programs for A104326, the canonical program `A104326.P7744192618162139376` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104326 has offset 0).

The definition of A104326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104326.P7744192618162139376

`A007088(A003754(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104326

/-- `A007088(A003754(n+1))` -/
def P7744192618162139376.Spec : Prop :=
  ∀ n, P7744192618162139376.a n = A104326 n

theorem P7744192618162139376.correct : P7744192618162139376.Spec := by
  intro n
  simp only [A104326]

end A104326

/-! ## A104326.P10617265413608484899

`A007088(lt[and(n, or(n, 2*n)+2), 2])`
-/

namespace A104326.P10617265413608484899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (2 * n) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104326.P10617265413608484899

namespace A104326

/-- `A007088(lt[and(n, or(n, 2*n)+2), 2])` -/
def P10617265413608484899.Spec : Prop :=
  ∀ n, P10617265413608484899.a n = A104326 n

end A104326

/-! ## A104326.P13794603129388206719

`A007088(A052499(n)-1)`
-/

namespace A104326.P13794603129388206719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052499 n - 1).toNat

end

end A104326.P13794603129388206719

namespace A104326

/-- `A007088(A052499(n)-1)` -/
def P13794603129388206719.Spec : Prop :=
  ∀ n, P13794603129388206719.a n = A104326 n

theorem P13794603129388206719.correct : P13794603129388206719.Spec := by
  intro n
  simp only [A104326, Nat.add_sub_cancel, A104326.P13794603129388206719.a, A104326.P7744192618162139376.a, A003754, A003754.P7281650019262553655.a, A007088, A007088.P12432121332583687413.a, A052499, A052499.P2273861346135896458.a, A097256, A097256.P18324559811505528946.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104326

/-! ## A104326.P5740609160658911622

`A007088((A247648(n+1)-1)/2)`
-/

namespace A104326.P5740609160658911622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A247648 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A104326.P5740609160658911622

namespace A104326

/-- `A007088((A247648(n+1)-1)/2)` -/
def P5740609160658911622.Spec : Prop :=
  ∀ n, P5740609160658911622.a n = A104326 n

end A104326

/-! ## A104326.P15333944732548805213

`A007088(eq[0, A107782(n)])`
-/

namespace A104326.P15333944732548805213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104326.P15333944732548805213

namespace A104326

/-- `A007088(eq[0, A107782(n)])` -/
def P15333944732548805213.Spec : Prop :=
  ∀ n, P15333944732548805213.a n = A104326 n

end A104326

/-! ## A104326.P18271797250548248276

`A007088(eq[1, A107345(n)])`
-/

namespace A104326.P18271797250548248276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104326.P18271797250548248276

namespace A104326

/-- `A007088(eq[1, A107345(n)])` -/
def P18271797250548248276.Spec : Prop :=
  ∀ n, P18271797250548248276.a n = A104326 n

end A104326

/-! ## A104326.P10339157385907166822

`A007088(eq[1, A227350(n)])`
-/

namespace A104326.P10339157385907166822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104326.P10339157385907166822

namespace A104326

/-- `A007088(eq[1, A227350(n)])` -/
def P10339157385907166822.Spec : Prop :=
  ∀ n, P10339157385907166822.a n = A104326 n

end A104326

/-! ## A104326.P1219088997715113209

`A007088(lt[A087117(n), 2])`
-/

namespace A104326.P1219088997715113209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104326.P1219088997715113209

namespace A104326

/-- `A007088(lt[A087117(n), 2])` -/
def P1219088997715113209.Spec : Prop :=
  ∀ n, P1219088997715113209.a n = A104326 n

end A104326

/-! ## A104326.P5870278324820235974

`A007088(eq[A023416(n), A087116(n)])`
-/

namespace A104326.P5870278324820235974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104326.P5870278324820235974

namespace A104326

/-- `A007088(eq[A023416(n), A087116(n)])` -/
def P5870278324820235974.Spec : Prop :=
  ∀ n, P5870278324820235974.a n = A104326 n

end A104326

/-! ## A104326.P1789965053727223029

`A007088(eq[A090077(n), A090079(n)])`
-/

namespace A104326.P1789965053727223029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104326.P1789965053727223029

namespace A104326

/-- `A007088(eq[A090077(n), A090079(n)])` -/
def P1789965053727223029.Spec : Prop :=
  ∀ n, P1789965053727223029.a n = A104326 n

end A104326

/-! ## A104326.P14411668878482099728

`A185544(2*A003754(n+1))`
-/

namespace A104326.P14411668878482099728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A003754 (n + 1)).toNat

end

end A104326.P14411668878482099728

namespace A104326

/-- `A185544(2*A003754(n+1))` -/
def P14411668878482099728.Spec : Prop :=
  ∀ n, P14411668878482099728.a n = A104326 n

end A104326

/-! ## A104326.P18209966728879494973

`A007088(lt[A056978(2*n+1), 1])`
-/

namespace A104326.P18209966728879494973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104326.P18209966728879494973

namespace A104326

/-- `A007088(lt[A056978(2*n+1), 1])` -/
def P18209966728879494973.Spec : Prop :=
  ∀ n, P18209966728879494973.a n = A104326 n

end A104326

/-!
# A104332: Primes which are the reverse concatenation of two consecutive odd numbers.

The programs for A104332, there is no canonical definition to state claims against.
-/

/-! ## A104332.P4712528143888115305

`p?[A127423(A101947(n+1))-1]`
-/

namespace A104332.P4712528143888115305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A101947 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104332.P4712528143888115305

/-! ## A104332.P7860218164319970315

`p?[A020338(A101947(n+2))-2]`
-/

namespace A104332.P7860218164319970315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A101947 (n + 2)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104332.P7860218164319970315

/-! ## A104332.P15082579352660118804

`p?[A127423(n+1)-A060576(A053392(n))]`
-/

namespace A104332.P15082579352660118804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1) - A060576 (A053392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104332.P15082579352660118804

/-! ## A104332.P8421981386828111206

`p?[A127423(n+1)-A060576(A059995(n))]`
-/

namespace A104332.P8421981386828111206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1) - A060576 (A059995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104332.P8421981386828111206

/-!
# A104335: Positive integers n such that n^14 + 1 is semiprime (A001358).

The programs for A104335, there is no canonical definition to state claims against.
-/

/-! ## A104335.P15841385237398996328

`∩[A005574(n+1), A250182(n+1)]`
-/

namespace A104335.P15841385237398996328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104335.P15841385237398996328

/-! ## A104335.P2093317950828171241

`filter[A250182(n+1), A295405(#)]`
-/

namespace A104335.P2093317950828171241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A104335.P2093317950828171241

/-! ## A104335.P14672386525075503449

`record[A247339(A250182(n+1))]`
-/

namespace A104335.P14672386525075503449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A250182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104335.P14672386525075503449

/-!
# A104338: Binary expansion of Catalan constant A006752.

The programs for A104338, there is no canonical definition to state claims against.
-/

/-! ## A104338.P2249329842530145404

`A266434(A004275(A046746(n))-A053830(n))`
-/

namespace A104338.P2249329842530145404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A004275 (A046746 n).toNat - A053830 n).toNat

end

end A104338.P2249329842530145404

/-! ## A104338.P11858331852243160397

`A265695(A176810(n+1)*A182481(n+1))`
-/

namespace A104338.P11858331852243160397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A176810 (n + 1) * A182481 (n + 1)).toNat

end

end A104338.P11858331852243160397

/-! ## A104338.P10566592993702454895

`A359592(A303040(3*n+4)+A008683(n+1))`
-/

namespace A104338.P10566592993702454895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (A303040 (3 * n + 4) + A008683 (n + 1)).toNat

end

end A104338.P10566592993702454895

/-! ## A104338.P7716529467925790074

`A075439(n^A055801(n))`
-/

namespace A104338.P7716529467925790074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055801 n : ℤ))).toNat

end

end A104338.P7716529467925790074

/-! ## A104338.P1156855704169108656

`A070909(A133957(2*n+5)+A004055(n+1))`
-/

namespace A104338.P1156855704169108656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A133957 (2 * n + 5) + A004055 (n + 1)).toNat

end

end A104338.P1156855704169108656

/-!
# A104343: Smallest prime formed by concatenation of n consecutive square numbers, 0 if no such prime exists.

The programs for A104343, there is no canonical definition to state claims against.
-/

/-! ## A104343.P15314960955628857567

`A087351(n+2)-char[A087330(n)]`
-/

namespace A104343.P15314960955628857567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087351 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104343.P15314960955628857567

/-! ## A104343.P6788784760085612205

`A087351(n+2)-char[A087355(n+2)]`
-/

namespace A104343.P6788784760085612205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087355 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087351 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104343.P6788784760085612205

/-! ## A104343.P8817919837489420483

`char[A101296(n+1)]*A087351(n+2)`
-/

namespace A104343.P8817919837489420483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A087351 (n + 2)

end

end A104343.P8817919837489420483

/-! ## A104343.P11044910988942446699

`char[A208805(n+1)]*A087351(n+2)`
-/

namespace A104343.P11044910988942446699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A087351 (n + 2)

end

end A104343.P11044910988942446699

/-! ## A104343.P1362194789434249608

`A087351(n+2)-char[10*A000045(n)]`
-/

namespace A104343.P1362194789434249608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087351 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104343.P1362194789434249608

/-!
# A104344: a(n) = Sum_{k=1..n} k!^2.

The programs for A104344, the canonical program `A104344.P9374952802282864488` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104344 has offset 1).

The definition of A104344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104344.P9374952802282864488

`A061062(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104344

/-- `A061062(n+1)-1` -/
def P9374952802282864488.Spec : Prop :=
  ∀ n, P9374952802282864488.a n = A104344 (n + 1)

theorem P9374952802282864488.correct : P9374952802282864488.Spec := by
  intro n
  simp only [A104344, Nat.add_sub_cancel]

end A104344

/-! ## A104344.P15030827685476442058

`∑[(1+n)!²]`
-/

namespace A104344.P15030827685476442058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104344.P15030827685476442058

namespace A104344

/-- `∑[(1+n)!²]` -/
def P15030827685476442058.Spec : Prop :=
  ∀ n, (P15030827685476442058.a n : ℤ) = A104344 (n + 1)

end A104344

/-! ## A104344.P4498847559778126967

`∑[∏[(n+1)²]]`
-/

namespace A104344.P4498847559778126967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104344.P4498847559778126967

namespace A104344

/-- `∑[∏[(n+1)²]]` -/
def P4498847559778126967.Spec : Prop :=
  ∀ n, (P4498847559778126967.a n : ℤ) = A104344 (n + 1)

end A104344

/-! ## A104344.P8252848939498229662

`Δ[∑[∑[n!²]]-n]`
-/

namespace A104344.P8252848939498229662
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104344.P8252848939498229662

namespace A104344

/-- `Δ[∑[∑[n!²]]-n]` -/
def P8252848939498229662.Spec : Prop :=
  ∀ n, P8252848939498229662.a n = A104344 (n + 1)

end A104344

/-! ## A104344.P3890382760058120487

`floor(∑[(n+1)!^(4/2)])`
-/

namespace A104344.P3890382760058120487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A104344.P3890382760058120487

namespace A104344

/-- `floor(∑[(n+1)!^(4/2)])` -/
def P3890382760058120487.Spec : Prop :=
  ∀ n, P3890382760058120487.a n = A104344 (n + 1)

end A104344

/-!
# A104345: Triangle read by rows: T(n,k) is the number of alternating permutations on [n+1] with 1 in position k+1, 0<=k<=n.

The programs for A104345, there is no canonical definition to state claims against.
-/

/-! ## A104345.P15570465436556651946

`C(row(n), col(n))*A000111(col(n))*A000111(row(n)-col(n))`
-/

namespace A104345.P15570465436556651946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000111 (SequenceMachineLib.triCol n) * A000111 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A104345.P15570465436556651946

/-! ## A104345.P4103189515960838875

`a(A112367(n))*A109449(n)` with `a(0)=1`
-/

namespace A104345.P4103189515960838875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A112367 n).toNat * A109449 n

end

end A104345.P4103189515960838875

/-! ## A104345.P6100015005490706057

`A000111(n-C(∑[char[∑[n]]], 2))*A109449(n)`
-/

namespace A104345.P6100015005490706057
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A109449 n

end

end A104345.P6100015005490706057

/-! ## A104345.P2730736477375552650

`A000111(A002262(n))*A109449(n)`
-/

namespace A104345.P2730736477375552650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A002262 n).toNat * A109449 n

end

end A104345.P2730736477375552650

/-! ## A104345.P1053411421103916895

`A104346(A112367(n))*A109449(n)`
-/

namespace A104345.P1053411421103916895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104346 (A112367 n).toNat * A109449 n

end

end A104345.P1053411421103916895

/-! ## A104345.P12303915763719331553

`abs(A000111(A002262(n))*A247453(n))`
-/

namespace A104345.P12303915763719331553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000111 (A002262 n).toNat * A247453 n|

end

end A104345.P12303915763719331553

/-! ## A104345.P8634352837581074795

`abs(A109449(A112367(n))*A247453(n))`
-/

namespace A104345.P8634352837581074795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109449 (A112367 n).toNat * A247453 n|

end

end A104345.P8634352837581074795

/-! ## A104345.P7964532174632655002

`A000111(log2(A059268(n)))*A109449(n)`
-/

namespace A104345.P7964532174632655002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A109449 n

end

end A104345.P7964532174632655002

/-! ## A104345.P11609382664821573407

`A000111(A144328(n+1))*A109449(n)`
-/

namespace A104345.P11609382664821573407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A144328 (n + 1)).toNat * A109449 n

end

end A104345.P11609382664821573407

/-!
# A104346: Triangle read by rows: T(n,k) is the number of alternating max-precedes-min permutations on [n+2] with 1 in position k+2, 0<=k<=n.

The programs for A104346, there is no canonical definition to state claims against.
-/

/-! ## A104346.P12911160767829926261

`C(row(n), col(n))*A000111(col(n)+1)*A000111(row(n)-col(n))`
-/

namespace A104346.P12911160767829926261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000111 (SequenceMachineLib.triCol n + 1) * A000111 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A104346.P12911160767829926261

/-! ## A104346.P15416675247075455324

`A000111(1-C(∑[char[∑[n]]], 2)+n)*A109449(n)`
-/

namespace A104346.P15416675247075455324
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A109449 n

end

end A104346.P15416675247075455324

/-! ## A104346.P7170570730616292696

`A000111(A002260(n+1))*A109449(n)`
-/

namespace A104346.P7170570730616292696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A002260 (n + 1)).toNat * A109449 n

end

end A104346.P7170570730616292696

/-! ## A104346.P15650998492010569112

`A000111(A002262(n)+1)*A109449(n)`
-/

namespace A104346.P15650998492010569112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A002262 n + 1).toNat * A109449 n

end

end A104346.P15650998492010569112

/-! ## A104346.P8454907040357917507

`A000111(A134868(n+1))*A109449(n)`
-/

namespace A104346.P8454907040357917507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A134868 (n + 1)).toNat * A109449 n

end

end A104346.P8454907040357917507

/-! ## A104346.P5424073171084236130

`abs(A000111(A002260(n+1))*A247453(n))`
-/

namespace A104346.P5424073171084236130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000111 (A002260 (n + 1)).toNat * A247453 n|

end

end A104346.P5424073171084236130

/-! ## A104346.P592934269622950353

`abs(A163747(A002262(n)+1))*A109449(n)`
-/

namespace A104346.P592934269622950353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163747 (A002262 n + 1).toNat| * A109449 n

end

end A104346.P592934269622950353

/-! ## A104346.P4403758147846163307

`A000111(A144328(n+1)+1)*A109449(n)`
-/

namespace A104346.P4403758147846163307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A144328 (n + 1) + 1).toNat * A109449 n

end

end A104346.P4403758147846163307

/-! ## A104346.P17087456901747738754

`A109449(n)*A147315(A112367(n))`
-/

namespace A104346.P17087456901747738754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A147315 (A112367 n).toNat

end

end A104346.P17087456901747738754

/-!
# A104347: a(n) is the number of integers m such that (digit reversal of m) - m = 9*n.

The programs for A104347, there is no canonical definition to state claims against.
-/

/-! ## A104347.P13374332880282969900

`A061601(∑[n^A103168(n+1)])`
-/

namespace A104347.P13374332880282969900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A103168 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104347.P13374332880282969900

/-! ## A104347.P17068173956091815464

`A022520(A056512(n+1))-(n+1)`
-/

namespace A104347.P17068173956091815464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022520 (A056512 (n + 1)).toNat - (n + 1 : ℤ)

end

end A104347.P17068173956091815464

/-! ## A104347.P2103791193718558426

`and(Δ[A048794(A125176(n+2))], A061601(n+1))`
-/

namespace A104347.P2103791193718558426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A125176 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A061601 (n + 1))

end

end A104347.P2103791193718558426

/-! ## A104347.P3524152721507596223

`A186442(A171816(n))`
-/

namespace A104347.P3524152721507596223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186442 (A171816 n).toNat

end

end A104347.P3524152721507596223

/-! ## A104347.P10381328443424053780

`A171679(A171816(n)-1)`
-/

namespace A104347.P10381328443424053780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171679 (A171816 n - 1).toNat

end

end A104347.P10381328443424053780

/-!
# A104348: a(n) is the number of integers m such that m -(digit reversal of m) = 9*n.

The programs for A104348, there is no canonical definition to state claims against.
-/

/-! ## A104348.P14997193655581039397

`A267193(n^Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9])`
-/

namespace A104348.P14997193655581039397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 (SequenceMachineLib.roundAway ((n : ℝ) ^ (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A104348.P14997193655581039397

/-! ## A104348.P11977646786516140104

`A107603(A087029(n+1))`
-/

namespace A104348.P11977646786516140104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107603 (A087029 (n + 1)).toNat

end

end A104348.P11977646786516140104

/-! ## A104348.P1685031867781176093

`A114612(A061672(n+1)-n)-n`
-/

namespace A104348.P1685031867781176093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114612 (A061672 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A104348.P1685031867781176093

/-! ## A104348.P6279897919514117267

`n*(A092596(n+1)-n)+10-record[A000265(n+1)]`
-/

namespace A104348.P6279897919514117267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092596 (n + 1) - (n : ℤ)) + 10 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104348.P6279897919514117267

/-! ## A104348.P11218064803072227414

`A376661(A184974(n))+A284809(n)`
-/

namespace A104348.P11218064803072227414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376661 (A184974 n).toNat + A284809 n

end

end A104348.P11218064803072227414

/-!
# A104350: Partial products of largest prime factors of numbers <= n.

The programs for A104350, there is no canonical definition to state claims against.
-/

/-! ## A104350.P9741266857727291376

`∏[A006530(1+n)]`
-/

namespace A104350.P9741266857727291376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P9741266857727291376

/-! ## A104350.P8557933426332290164

`A104357(n+1)+1`
-/

namespace A104350.P8557933426332290164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1) + 1

end

end A104350.P8557933426332290164

/-! ## A104350.P5504561999791877855

`A104365(1+n)-1`
-/

namespace A104350.P5504561999791877855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104365 (1 + n) - 1

end

end A104350.P5504561999791877855

/-! ## A104350.P10865035029567449144

`∏[A082061((n+1)²)]`
-/

namespace A104350.P10865035029567449144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P10865035029567449144

/-! ## A104350.P5435170774106879418

`∏[A085392((n+1)²)]`
-/

namespace A104350.P5435170774106879418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P5435170774106879418

/-! ## A104350.P9841875953782108815

`∏[A087039((n+1)²)]`
-/

namespace A104350.P9841875953782108815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P9841875953782108815

/-! ## A104350.P5665451609573054493

`∏[A189172((n+1)²)]`
-/

namespace A104350.P5665451609573054493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189172 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P5665451609573054493

/-! ## A104350.P3219053702155862072

`∏[A217581((n+1)²)]`
-/

namespace A104350.P3219053702155862072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P3219053702155862072

/-! ## A104350.P11398321670696796346

`∏[A249740((n+1)²)]`
-/

namespace A104350.P11398321670696796346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P11398321670696796346

/-! ## A104350.P2043100355986718783

`∏[A285730(∑[n+1])]`
-/

namespace A104350.P2043100355986718783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104350.P2043100355986718783

/-!
# A104351: Number of digits in decimal representation of A104350(n).

The programs for A104351, there is no canonical definition to state claims against.
-/

/-! ## A104351.P9544266728637990932

`∑{digits}[A104350(n+1), A014802(#)]`
-/

namespace A104351.P9544266728637990932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014802 x).sum

end

end A104351.P9544266728637990932

/-! ## A104351.P1474348392086647590

`∑{digits}[A104350(n+1), A015130(#)]`
-/

namespace A104351.P1474348392086647590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A104351.P1474348392086647590

/-! ## A104351.P4957163027971613294

`∑{digits}[A104357(n+1), A015130(#)]`
-/

namespace A104351.P4957163027971613294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A104351.P4957163027971613294

/-! ## A104351.P10463352351730871052

`∑{digits}[A104350(n+1), A055642(#)]`
-/

namespace A104351.P10463352351730871052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A104351.P10463352351730871052

/-! ## A104351.P8080718910623288

`∑{digits}[A104350(n+1), A065648(#)]`
-/

namespace A104351.P8080718910623288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065648 x).sum

end

end A104351.P8080718910623288

/-! ## A104351.P15774382770945284187

`∑{digits}[A104350(n+1), A139337(#)]`
-/

namespace A104351.P15774382770945284187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A139337 x).sum

end

end A104351.P15774382770945284187

/-!
# A104352: Number of divisors of A104350(n).

The programs for A104352, there is no canonical definition to state claims against.
-/

/-! ## A104352.P13621328199530977611

`A000005(A104350(n+1))`
-/

namespace A104352.P13621328199530977611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104350 (n + 1)).toNat

end

end A104352.P13621328199530977611

/-! ## A104352.P5363831709114984996

`∏{e}[A104350(n+1), #+1]`
-/

namespace A104352.P5363831709114984996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A104352.P5363831709114984996

/-! ## A104352.P18151784958746357709

`∏{e}[∏[A006530(n+1)], #+1]`
-/

namespace A104352.P18151784958746357709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A104352.P18151784958746357709

/-! ## A104352.P10802220280542412305

`∏{e}[A104357(n+1)+1, #+1]`
-/

namespace A104352.P10802220280542412305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A104352.P10802220280542412305

/-! ## A104352.P11228322695167023837

`∏{e}[A072489(n+1), A063655(#)]`
-/

namespace A104352.P11228322695167023837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A063655 (Nat.factorization (f1 n).natAbs p)

end

end A104352.P11228322695167023837

/-!
# A104353: Sum of divisors of A104350(n).

The programs for A104353, there is no canonical definition to state claims against.
-/

/-! ## A104353.P13549541756036022264

`A000203(A104350(n+1))`
-/

namespace A104353.P13549541756036022264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A104350 (n + 1)).toNat

end

end A104353.P13549541756036022264

/-! ## A104353.P10524552516609524233

`∑{d}[A104350(n+1), #]`
-/

namespace A104353.P10524552516609524233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104353.P10524552516609524233

/-! ## A104353.P17838865062075911689

`∑{d}[∏[A006530(n+1)], #]`
-/

namespace A104353.P17838865062075911689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104353.P17838865062075911689

/-! ## A104353.P12062717695408488880

`∑{d}[∏[A102095(n+1)], #]`
-/

namespace A104353.P12062717695408488880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104353.P12062717695408488880

/-! ## A104353.P582213473554080980

`∑{d}[∏[A109395(n+1)], #]`
-/

namespace A104353.P582213473554080980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104353.P582213473554080980

/-!
# A104354: Euler's totient of A104350(n).

The programs for A104354, there is no canonical definition to state claims against.
-/

/-! ## A104354.P8335231566713533929

`A000010(A104350(n+1))`
-/

namespace A104354.P8335231566713533929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104350 (n + 1)).toNat

end

end A104354.P8335231566713533929

/-! ## A104354.P14332319053751425070

`∏[A006530(n+1)-A010051(n+1)]`
-/

namespace A104354.P14332319053751425070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104354.P14332319053751425070

/-! ## A104354.P6138796796985801943

`∏[gcd(n+1, A083717(n+1))-A010051(n+1)]`
-/

namespace A104354.P6138796796985801943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A083717 (n + 1)) : ℤ) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104354.P6138796796985801943

/-! ## A104354.P4201765011117151797

`A000010(∏[A006530(1+n)])`
-/

namespace A104354.P4201765011117151797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104354.P4201765011117151797

/-! ## A104354.P6170370314381433862

`A000010(∏[A088387(n+1)])`
-/

namespace A104354.P6170370314381433862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104354.P6170370314381433862

/-!
# A104355: Number of trailing zeros in decimal representation of A104350(n).

The programs for A104355, there is no canonical definition to state claims against.
-/

/-! ## A104355.P14116015485770831865

`val(∏[A006530(n+1)], 10)`
-/

namespace A104355.P14116015485770831865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 10

end

end A104355.P14116015485770831865

/-! ## A104355.P14042912829978292863

`val(∏[A332881(n+1)], 10)`
-/

namespace A104355.P14042912829978292863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 10

end

end A104355.P14042912829978292863

/-! ## A104355.P8305378210252207636

`val(∏[A109395(n+1)], 10)`
-/

namespace A104355.P8305378210252207636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 10

end

end A104355.P8305378210252207636

/-! ## A104355.P8608468924139303730

`val(∏[A117366(n+1)], 21)`
-/

namespace A104355.P8608468924139303730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 21

end

end A104355.P8608468924139303730

/-! ## A104355.P6852691423972845237

`floor(∑[n/(A119759(n+1)+2)])`
-/

namespace A104355.P6852691423972845237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A119759 (n + 1) + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A104355.P6852691423972845237

/-!
# A104356: Smallest m such that A104350(m) has exactly n trailing zeros in decimal representation.

The programs for A104356, there is no canonical definition to state claims against.
-/

/-! ## A104356.P6363222189968665773

`record[A065620(n)+A045534(n)]`
-/

namespace A104356.P6363222189968665773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n + A045534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104356.P6363222189968665773

/-!
# A104357: a(n) = A104350(n) - 1.

The programs for A104357, the canonical program `A104357.P12046058181516214273` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104357 has offset 1).

The definition of A104357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104357.P12013467544159390070

`A104350(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104357.P12013467544159390070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1) - 1

end

end A104357.P12013467544159390070

namespace A104357

/-- `A104350(n+1)-1` -/
def P12013467544159390070.Spec : Prop :=
  ∀ n, P12013467544159390070.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P12046058181516214273

`(a(n-1)+1)*A006530(n+1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104357

/-- `(a(n-1)+1)*A006530(n+1)-1` -/
def P12046058181516214273.Spec : Prop :=
  ∀ n, P12046058181516214273.a n = A104357 (n + 1)

theorem P12046058181516214273.correct : P12046058181516214273.Spec := by
  intro n
  simp only [A104357, Nat.add_sub_cancel]

end A104357

/-! ## A104357.P2347196943124830338

`A104365(n+1)-2`
-/

namespace A104357.P2347196943124830338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104365 (n + 1) - 2

end

end A104357.P2347196943124830338

namespace A104357

/-- `A104365(n+1)-2` -/
def P2347196943124830338.Spec : Prop :=
  ∀ n, P2347196943124830338.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P18028352191171464074

`∏[A006530(1+n)]-1`
-/

namespace A104357.P18028352191171464074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104357.P18028352191171464074

namespace A104357

/-- `∏[A006530(1+n)]-1` -/
def P18028352191171464074.Spec : Prop :=
  ∀ n, P18028352191171464074.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P12812940684720463785

`∏[A082061((n+1)²)]-1`
-/

namespace A104357.P12812940684720463785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104357.P12812940684720463785

namespace A104357

/-- `∏[A082061((n+1)²)]-1` -/
def P12812940684720463785.Spec : Prop :=
  ∀ n, P12812940684720463785.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P11475095471301692467

`∏[A085392((n+1)²)]-1`
-/

namespace A104357.P11475095471301692467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104357.P11475095471301692467

namespace A104357

/-- `∏[A085392((n+1)²)]-1` -/
def P11475095471301692467.Spec : Prop :=
  ∀ n, P11475095471301692467.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P11668216743973149948

`∑[floor(Δ[a(n-1)*A006530(n)])]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A104357.P11668216743973149948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) * A006530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104357.P11668216743973149948

namespace A104357

/-- `∑[floor(Δ[a(n-1)*A006530(n)])]` -/
def P11668216743973149948.Spec : Prop :=
  ∀ n, P11668216743973149948.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P13766157202314412612

`∏[A020639(A053585(n+1))]-1`
-/

namespace A104357.P13766157202314412612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104357.P13766157202314412612

namespace A104357

/-- `∏[A020639(A053585(n+1))]-1` -/
def P13766157202314412612.Spec : Prop :=
  ∀ n, P13766157202314412612.a n = A104357 (n + 1)

end A104357

/-! ## A104357.P9788448908499257251

`∏[A020639(A068795(n+1))]-1`
-/

namespace A104357.P9788448908499257251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104357.P9788448908499257251

namespace A104357

/-- `∏[A020639(A068795(n+1))]-1` -/
def P9788448908499257251.Spec : Prop :=
  ∀ n, P9788448908499257251.a n = A104357 (n + 1)

end A104357

/-!
# A104358: Smallest prime factor of A104357(n) = A104350(n) - 1.

The programs for A104358, there is no canonical definition to state claims against.
-/

/-! ## A104358.P9669171217936311396

`A020639(A104357(n+2))`
-/

namespace A104358.P9669171217936311396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104357 (n + 2)).toNat

end

end A104358.P9669171217936311396

/-! ## A104358.P8354498841862456813

`A020639(A104350(n+2)-1)`
-/

namespace A104358.P8354498841862456813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104350 (n + 2) - 1).toNat

end

end A104358.P8354498841862456813

/-! ## A104358.P14177396526845901682

`A020639(A104365(n+2)-2)`
-/

namespace A104358.P14177396526845901682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104365 (n + 2) - 2).toNat

end

end A104358.P14177396526845901682

/-! ## A104358.P4667781684150812087

`A020639(∏[A006530(n+2)]-1)`
-/

namespace A104358.P4667781684150812087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A104358.P4667781684150812087

/-! ## A104358.P13499890289293796724

`A020639(∏[A051664(n+2)]-1)`
-/

namespace A104358.P13499890289293796724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A104358.P13499890289293796724

/-!
# A104359: Greatest prime factor of A104357(n) = A104350(n) - 1.

The programs for A104359, the canonical program `A104359.P4028134530978820796` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104359 has offset 2).

The definition of A104359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104359.P4028134530978820796

`A006530(A104357(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104359

/-- `A006530(A104357(n+2))` -/
def P4028134530978820796.Spec : Prop :=
  ∀ n, P4028134530978820796.a n = A104359 (n + 2)

theorem P4028134530978820796.correct : P4028134530978820796.Spec := by
  intro n
  simp only [A104359, Nat.add_sub_cancel]

end A104359

/-! ## A104359.P2301256740514166489

`A006530(A104350(n+2)-1)`
-/

namespace A104359.P2301256740514166489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104350 (n + 2) - 1).toNat

end

end A104359.P2301256740514166489

namespace A104359

/-- `A006530(A104350(n+2)-1)` -/
def P2301256740514166489.Spec : Prop :=
  ∀ n, P2301256740514166489.a n = A104359 (n + 2)

end A104359

/-! ## A104359.P13512175904833202557

`A034699(A104350(n+2)-1)`
-/

namespace A104359.P13512175904833202557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A104350 (n + 2) - 1).toNat

end

end A104359.P13512175904833202557

namespace A104359

/-- `A034699(A104350(n+2)-1)` -/
def P13512175904833202557.Spec : Prop :=
  ∀ n, P13512175904833202557.a n = A104359 (n + 2)

end A104359

/-! ## A104359.P2230608759359426890

`A088387(A104350(n+2)-1)`
-/

namespace A104359.P2230608759359426890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A104350 (n + 2) - 1).toNat

end

end A104359.P2230608759359426890

namespace A104359

/-- `A088387(A104350(n+2)-1)` -/
def P2230608759359426890.Spec : Prop :=
  ∀ n, P2230608759359426890.a n = A104359 (n + 2)

end A104359

/-! ## A104359.P16768125460126496081

`A006530(A104365(n+2)-2)`
-/

namespace A104359.P16768125460126496081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104365 (n + 2) - 2).toNat

end

end A104359.P16768125460126496081

namespace A104359

/-- `A006530(A104365(n+2)-2)` -/
def P16768125460126496081.Spec : Prop :=
  ∀ n, P16768125460126496081.a n = A104359 (n + 2)

end A104359

/-!
# A104360: Number of distinct prime factors of A104357(n) = A104350(n) - 1.

The programs for A104360, there is no canonical definition to state claims against.
-/

/-! ## A104360.P9239483822968005316

`log2(A104361(n+2))`
-/

namespace A104360.P9239483822968005316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A104361 (n + 2) : ℝ)

end

end A104360.P9239483822968005316

/-! ## A104360.P5631188962296478672

`A119272(A104361(2+n)+1)`
-/

namespace A104360.P5631188962296478672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A104361 (2 + n) + 1).toNat

end

end A104360.P5631188962296478672

/-! ## A104360.P8441031877008735622

`A231204(A104361(n+2)+1)`
-/

namespace A104360.P8441031877008735622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A104361 (n + 2) + 1).toNat

end

end A104360.P8441031877008735622

/-! ## A104360.P1987910104888695026

`A285097(A104361(n+2)+1)`
-/

namespace A104360.P1987910104888695026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A104361 (n + 2) + 1).toNat

end

end A104360.P1987910104888695026

/-! ## A104360.P11660422515333460079

`A000120(A104361(n+2)-1)`
-/

namespace A104360.P11660422515333460079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A104361 (n + 2) - 1).toNat

end

end A104360.P11660422515333460079

/-! ## A104360.P17478001140434555139

`A002487(A104361(n+2)-1)`
-/

namespace A104360.P17478001140434555139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A104361 (n + 2) - 1).toNat

end

end A104360.P17478001140434555139

/-! ## A104360.P16639009241905835690

`A090003(A104361(n+2)-1)`
-/

namespace A104360.P16639009241905835690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (A104361 (n + 2) - 1).toNat

end

end A104360.P16639009241905835690

/-! ## A104360.P10721431334175538059

`A007814(3*A104361(n+2))`
-/

namespace A104360.P10721431334175538059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * A104361 (n + 2)).toNat

end

end A104360.P10721431334175538059

/-! ## A104360.P5179442818717941667

`∑{d}[A104361(n+2), A001221(#)]`
-/

namespace A104360.P5179442818717941667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A104360.P5179442818717941667

/-! ## A104360.P12930465383199518974

`A001222(and(-1, A104361(n+2)))`
-/

namespace A104360.P12930465383199518974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-1) (A104361 (n + 2))).toNat

end

end A104360.P12930465383199518974

/-! ## A104360.P18397551084730803224

`A001222(A104361(n+2)+char[1])`
-/

namespace A104360.P18397551084730803224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104361 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A104360.P18397551084730803224

/-! ## A104360.P16130432874611795897

`val(A000010(2*A104361(n+2)), 2)`
-/

namespace A104360.P16130432874611795897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (2 * A104361 (n + 2)).toNat).toNat 2

end

end A104360.P16130432874611795897

/-! ## A104360.P14692697963808434234

`A001222(2^val(A104361(n+2), 2))`
-/

namespace A104360.P14692697963808434234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ SequenceMachineLib.valuation (A104361 (n + 2)).toNat 2)

end

end A104360.P14692697963808434234

/-! ## A104360.P3762795157334031926

`val(A104361(n+2), A020639(2*(n+1)))`
-/

namespace A104360.P3762795157334031926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104361 (n + 2)).toNat (A020639 (2 * (n + 1))).toNat

end

end A104360.P3762795157334031926

/-! ## A104360.P15111771406046801756

`A001222(A104361(n+2)²)/2`
-/

namespace A104360.P15111771406046801756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A104361 (n + 2) ^ 2).toNat : ℚ) / 2

end

end A104360.P15111771406046801756

/-!
# A104361: Number of divisors of A104357(n) = A104350(n) - 1.

The programs for A104361, there is no canonical definition to state claims against.
-/

/-! ## A104361.P4708779354321504451

`2^A104360(n+2)`
-/

namespace A104361.P4708779354321504451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A104360 (n + 2) : ℤ)

end

end A104361.P4708779354321504451

/-! ## A104361.P4580657369927127055

`A000079(A132440(3*n)+A104360(n+2))`
-/

namespace A104361.P4580657369927127055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A132440 (3 * n) + A104360 (n + 2)).toNat

end

end A104361.P4580657369927127055

/-! ## A104361.P13590492810660103565

`A000079(A104360(n+2)+n)/A000079(n)`
-/

namespace A104361.P13590492810660103565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A104360 (n + 2) + (n : ℤ)).toNat : ℚ) / (A000079 n : ℚ)

end

end A104361.P13590492810660103565

/-! ## A104361.P129854785582378528

`A000079(A067513(2*n+1)*A104360(n+2))`
-/

namespace A104361.P129854785582378528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A067513 (2 * n + 1) * A104360 (n + 2)).toNat

end

end A104361.P129854785582378528

/-! ## A104361.P1845226352119189692

`A059268(A104360(n+2)+∑[n])`
-/

namespace A104361.P1845226352119189692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A104360 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A104361.P1845226352119189692

/-! ## A104361.P14517920000651901965

`A000079(A093560(A000096(n))*A104360(n+2))`
-/

namespace A104361.P14517920000651901965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A093560 (A000096 n).toNat * A104360 (n + 2)).toNat

end

end A104361.P14517920000651901965

/-! ## A104361.P1993909784902805789

`A008859(A243836(n)+A104360(n+2))`
-/

namespace A104361.P1993909784902805789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (A243836 n + A104360 (n + 2)).toNat

end

end A104361.P1993909784902805789

/-!
# A104362: Sum of divisors of A104357(n) = A104350(n) - 1.

The programs for A104362, the canonical program `A104362.P13374805357399993869` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104362 has offset 2).

The definition of A104362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104357, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104362.P13374805357399993869

`A000203(A104357(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104362

/-- `A000203(A104357(n+2))` -/
def P13374805357399993869.Spec : Prop :=
  ∀ n, P13374805357399993869.a n = A104362 (n + 2)

theorem P13374805357399993869.correct : P13374805357399993869.Spec := by
  intro n
  simp only [A104362, Nat.add_sub_cancel]

end A104362

/-! ## A104362.P4294546661013891786

`∑{d}[A104357(n+2), #]`
-/

namespace A104362.P4294546661013891786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104362.P4294546661013891786

namespace A104362

/-- `∑{d}[A104357(n+2), #]` -/
def P4294546661013891786.Spec : Prop :=
  ∀ n, (P4294546661013891786.a n : ℤ) = A104362 (n + 2)

end A104362

/-! ## A104362.P9724401040889201222

`∑{d}[1-A104350(n+2), #]`
-/

namespace A104362.P9724401040889201222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104350 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104362.P9724401040889201222

namespace A104362

/-- `∑{d}[1-A104350(n+2), #]` -/
def P9724401040889201222.Spec : Prop :=
  ∀ n, (P9724401040889201222.a n : ℤ) = A104362 (n + 2)

end A104362

/-! ## A104362.P2208016024833628791

`∑{d}[2-A104365(n+2), #]`
-/

namespace A104362.P2208016024833628791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A104365 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104362.P2208016024833628791

namespace A104362

/-- `∑{d}[2-A104365(n+2), #]` -/
def P2208016024833628791.Spec : Prop :=
  ∀ n, (P2208016024833628791.a n : ℤ) = A104362 (n + 2)

end A104362

/-! ## A104362.P4732901181985536904

`∑{d}[1-∏[A006530(n+2)], #]`
-/

namespace A104362.P4732901181985536904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104362.P4732901181985536904

namespace A104362

/-- `∑{d}[1-∏[A006530(n+2)], #]` -/
def P4732901181985536904.Spec : Prop :=
  ∀ n, (P4732901181985536904.a n : ℤ) = A104362 (n + 2)

end A104362

/-!
# A104363: Euler's totient of A104357(n) = A104350(n) - 1.

The programs for A104363, the canonical program `A104363.P9867209603800708102` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104363 has offset 2).

The definition of A104363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104357, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104363.P9867209603800708102

`A000010(A104357(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104363

/-- `A000010(A104357(n+2))` -/
def P9867209603800708102.Spec : Prop :=
  ∀ n, P9867209603800708102.a n = A104363 (n + 2)

theorem P9867209603800708102.correct : P9867209603800708102.Spec := by
  intro n
  simp only [A104363, Nat.add_sub_cancel]

end A104363

/-! ## A104363.P17320167994154129359

`∏{p}[A104350(n+2)-1, #-1]`
-/

namespace A104363.P17320167994154129359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A104363.P17320167994154129359

namespace A104363

/-- `∏{p}[A104350(n+2)-1, #-1]` -/
def P17320167994154129359.Spec : Prop :=
  ∀ n, P17320167994154129359.a n = A104363 (n + 2)

end A104363

/-! ## A104363.P4297722897290814901

`A000010(A104350(2+n)-1)`
-/

namespace A104363.P4297722897290814901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104350 (2 + n) - 1).toNat

end

end A104363.P4297722897290814901

namespace A104363

/-- `A000010(A104350(2+n)-1)` -/
def P4297722897290814901.Spec : Prop :=
  ∀ n, P4297722897290814901.a n = A104363 (n + 2)

end A104363

/-! ## A104363.P17812401035459718701

`A000010(A104365(n+2)-2)`
-/

namespace A104363.P17812401035459718701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104365 (n + 2) - 2).toNat

end

end A104363.P17812401035459718701

namespace A104363

/-- `A000010(A104365(n+2)-2)` -/
def P17812401035459718701.Spec : Prop :=
  ∀ n, P17812401035459718701.a n = A104363 (n + 2)

end A104363

/-!
# A104364: Primes of the form A104350(k) - 1.

The programs for A104364, there is no canonical definition to state claims against.
-/

/-! ## A104364.P1607020126270023235

`record[A104358(n+3)]`
-/

namespace A104364.P1607020126270023235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104364.P1607020126270023235

/-! ## A104364.P14780607138983994016

`∩[A104357(n+1), A104363(n+2)+1]`
-/

namespace A104364.P14780607138983994016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104363 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104364.P14780607138983994016

/-! ## A104364.P17592994795916103188

`∩[A104357(n+2), A104362(n+2)-1]`
-/

namespace A104364.P17592994795916103188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104362 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104364.P17592994795916103188

/-! ## A104364.P11876180838277818618

`p?[A104357(n+1)]`
-/

namespace A104364.P11876180838277818618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104364.P11876180838277818618

/-!
# A104365: a(n) = A104350(n) + 1.

The programs for A104365, the canonical program `A104365.P16239871047684487656` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104365 has offset 1).

The definition of A104365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104365.P12228852071410689091

`A104350(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104365.P12228852071410689091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1) + 1

end

end A104365.P12228852071410689091

namespace A104365

/-- `A104350(n+1)+1` -/
def P12228852071410689091.Spec : Prop :=
  ∀ n, P12228852071410689091.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P16239871047684487656

`(a(n-1)-1)*A006530(n+1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104365

/-- `(a(n-1)-1)*A006530(n+1)+1` -/
def P16239871047684487656.Spec : Prop :=
  ∀ n, P16239871047684487656.a n = A104365 (n + 1)

theorem P16239871047684487656.correct : P16239871047684487656.Spec := by
  intro n
  simp only [A104365, Nat.add_sub_cancel]

end A104365

/-! ## A104365.P264417953175903332

`A104357(n+1)+2`
-/

namespace A104365.P264417953175903332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1) + 2

end

end A104365.P264417953175903332

namespace A104365

/-- `A104357(n+1)+2` -/
def P264417953175903332.Spec : Prop :=
  ∀ n, P264417953175903332.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P9527868142109866076

`∏[A006530(1+n)]+1`
-/

namespace A104365.P9527868142109866076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104365.P9527868142109866076

namespace A104365

/-- `∏[A006530(1+n)]+1` -/
def P9527868142109866076.Spec : Prop :=
  ∀ n, P9527868142109866076.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P529800425519599701

`∏[A082061((n+1)²)]+1`
-/

namespace A104365.P529800425519599701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104365.P529800425519599701

namespace A104365

/-- `∏[A082061((n+1)²)]+1` -/
def P529800425519599701.Spec : Prop :=
  ∀ n, P529800425519599701.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P3272722880344476118

`∏[A085392((n+1)²)]+1`
-/

namespace A104365.P3272722880344476118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104365.P3272722880344476118

namespace A104365

/-- `∏[A085392((n+1)²)]+1` -/
def P3272722880344476118.Spec : Prop :=
  ∀ n, P3272722880344476118.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P8034260117270423142

`∏[A111089(n+1)]/2+1`
-/

namespace A104365.P8034260117270423142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 1

end

end A104365.P8034260117270423142

namespace A104365

/-- `∏[A111089(n+1)]/2+1` -/
def P8034260117270423142.Spec : Prop :=
  ∀ n, P8034260117270423142.a n = (A104365 (n + 1) : ℚ)

end A104365

/-! ## A104365.P13649169691059231922

`Δ[∑[a(n-1)*A006530(n)]+n]` with `a(0)=1`
-/

namespace A104365.P13649169691059231922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) * A006530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104365.P13649169691059231922

namespace A104365

/-- `Δ[∑[a(n-1)*A006530(n)]+n]` -/
def P13649169691059231922.Spec : Prop :=
  ∀ n, P13649169691059231922.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P8444880274678375278

`∏[A020639(A053585(n+1))]+1`
-/

namespace A104365.P8444880274678375278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104365.P8444880274678375278

namespace A104365

/-- `∏[A020639(A053585(n+1))]+1` -/
def P8444880274678375278.Spec : Prop :=
  ∀ n, P8444880274678375278.a n = A104365 (n + 1)

end A104365

/-! ## A104365.P2832980383300732128

`∏[A020639(A068795(n+1))]+1`
-/

namespace A104365.P2832980383300732128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104365.P2832980383300732128

namespace A104365

/-- `∏[A020639(A068795(n+1))]+1` -/
def P2832980383300732128.Spec : Prop :=
  ∀ n, P2832980383300732128.a n = A104365 (n + 1)

end A104365

/-!
# A104366: Smallest prime factor of A104365(n) = A104350(n) + 1.

The programs for A104366, there is no canonical definition to state claims against.
-/

/-! ## A104366.P6114896576834050629

`A020639(A104365(n+1))`
-/

namespace A104366.P6114896576834050629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104365 (n + 1)).toNat

end

end A104366.P6114896576834050629

/-! ## A104366.P1596788972699385920

`A020639(1+A104350(n+1))`
-/

namespace A104366.P1596788972699385920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + A104350 (n + 1)).toNat

end

end A104366.P1596788972699385920

/-! ## A104366.P6615562804124338052

`A020639(A104357(n+1)+2)`
-/

namespace A104366.P6615562804124338052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104357 (n + 1) + 2).toNat

end

end A104366.P6615562804124338052

/-! ## A104366.P4636602189711936027

`A020639(∏[A006530(n+1)]+1)`
-/

namespace A104366.P4636602189711936027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A104366.P4636602189711936027

/-!
# A104367: Greatest prime factor of A104365(n) = A104350(n) + 1.

The programs for A104367, the canonical program `A104367.P8842749279908638245` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104367 has offset 1).

The definition of A104367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104367.P8842749279908638245

`A006530(A104365(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104367

/-- `A006530(A104365(n+1))` -/
def P8842749279908638245.Spec : Prop :=
  ∀ n, P8842749279908638245.a n = A104367 (n + 1)

theorem P8842749279908638245.correct : P8842749279908638245.Spec := by
  intro n
  simp only [A104367, Nat.add_sub_cancel]

end A104367

/-! ## A104367.P1044082845354438812

`A006530(A104350(n+1)+1)`
-/

namespace A104367.P1044082845354438812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104350 (n + 1) + 1).toNat

end

end A104367.P1044082845354438812

namespace A104367

/-- `A006530(A104350(n+1)+1)` -/
def P1044082845354438812.Spec : Prop :=
  ∀ n, P1044082845354438812.a n = A104367 (n + 1)

end A104367

/-! ## A104367.P6883444870655774380

`A034699(A104350(n+1)+1)`
-/

namespace A104367.P6883444870655774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A104350 (n + 1) + 1).toNat

end

end A104367.P6883444870655774380

namespace A104367

/-- `A034699(A104350(n+1)+1)` -/
def P6883444870655774380.Spec : Prop :=
  ∀ n, P6883444870655774380.a n = A104367 (n + 1)

end A104367

/-! ## A104367.P14107646304332202037

`A088387(A104350(n+1)+1)`
-/

namespace A104367.P14107646304332202037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A104350 (n + 1) + 1).toNat

end

end A104367.P14107646304332202037

namespace A104367

/-- `A088387(A104350(n+1)+1)` -/
def P14107646304332202037.Spec : Prop :=
  ∀ n, P14107646304332202037.a n = A104367 (n + 1)

end A104367

/-! ## A104367.P12917707674221932250

`A330691(A104350(n+1)+1)`
-/

namespace A104367.P12917707674221932250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A104350 (n + 1) + 1).toNat

end

end A104367.P12917707674221932250

namespace A104367

/-- `A330691(A104350(n+1)+1)` -/
def P12917707674221932250.Spec : Prop :=
  ∀ n, P12917707674221932250.a n = A104367 (n + 1)

end A104367

/-!
# A104368: Number of distinct prime factors of A104365(n) = A104350(n) + 1.

The programs for A104368, there is no canonical definition to state claims against.
-/

/-! ## A104368.P10184943712499462742

`log2(A104369(n+1))`
-/

namespace A104368.P10184943712499462742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A104369 (n + 1) : ℝ)

end

end A104368.P10184943712499462742

/-! ## A104368.P8445360272892682033

`∏{e}[A104369(Δ[n²]-n), #]`
-/

namespace A104368.P8445360272892682033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104369 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104368.P8445360272892682033

/-! ## A104368.P10536871821136809315

`A000523(A104369(n+1)+1)`
-/

namespace A104368.P10536871821136809315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A104369 (n + 1) + 1).toNat

end

end A104368.P10536871821136809315

/-! ## A104368.P641265352041969851

`A060351(A104369(n+1)+1)`
-/

namespace A104368.P641265352041969851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A104369 (n + 1) + 1).toNat

end

end A104368.P641265352041969851

/-! ## A104368.P7300214586341298312

`A065120(A104369(n+1)+1)`
-/

namespace A104368.P7300214586341298312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A104369 (n + 1) + 1).toNat

end

end A104368.P7300214586341298312

/-! ## A104368.P18341152952859356191

`A073642(A104369(n+1)+1)`
-/

namespace A104368.P18341152952859356191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A104369 (n + 1) + 1).toNat

end

end A104368.P18341152952859356191

/-! ## A104368.P510678784331595003

`A000120(A104369(n+1)-1)`
-/

namespace A104368.P510678784331595003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A104369 (n + 1) - 1).toNat

end

end A104368.P510678784331595003

/-! ## A104368.P15386984857049894194

`A002487(A104369(n+1)-1)`
-/

namespace A104368.P15386984857049894194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A104369 (n + 1) - 1).toNat

end

end A104368.P15386984857049894194

/-! ## A104368.P11438841683996945313

`A007733(A104369(n+1)-1)`
-/

namespace A104368.P11438841683996945313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A104369 (n + 1) - 1).toNat

end

end A104368.P11438841683996945313

/-! ## A104368.P528891969488848852

`A038374(A104369(n+1)-1)`
-/

namespace A104368.P528891969488848852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A104369 (n + 1) - 1).toNat

end

end A104368.P528891969488848852

/-! ## A104368.P10370496018004257079

`A070939(A104369(n+1)-1)`
-/

namespace A104368.P10370496018004257079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A104369 (n + 1) - 1).toNat

end

end A104368.P10370496018004257079

/-! ## A104368.P3913768142824082005

`A090003(A104369(n+1)-1)`
-/

namespace A104368.P3913768142824082005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (A104369 (n + 1) - 1).toNat

end

end A104368.P3913768142824082005

/-! ## A104368.P1090481331940330990

`A211100(A104369(n+1)-1)`
-/

namespace A104368.P1090481331940330990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A104369 (n + 1) - 1).toNat

end

end A104368.P1090481331940330990

/-! ## A104368.P2420118640634016480

`A000005(A104369(n+1)/2)`
-/

namespace A104368.P2420118640634016480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A104369 (n + 1) : ℚ) / 2)).toNat

end

end A104368.P2420118640634016480

/-! ## A104368.P8663921659392105009

`A070939(A104369(n+1)/2)`
-/

namespace A104368.P8663921659392105009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A104369 (n + 1) : ℚ) / 2)).toNat

end

end A104368.P8663921659392105009

/-! ## A104368.P6116252093866953585

`A211100(A104369(n+1)/2)`
-/

namespace A104368.P6116252093866953585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway ((A104369 (n + 1) : ℚ) / 2)).toNat

end

end A104368.P6116252093866953585

/-! ## A104368.P11742391380335882436

`A001222(lcm(2, A104369(n+1)))`
-/

namespace A104368.P11742391380335882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A104369 (n + 1)))

end

end A104368.P11742391380335882436

/-! ## A104368.P16488363984066935679

`A002487(or(2, A104369(n+1)))`
-/

namespace A104368.P16488363984066935679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor 2 (A104369 (n + 1))).toNat

end

end A104368.P16488363984066935679

/-! ## A104368.P17043617894457940320

`∑{d}[A104369(n+1), A001221(#)]`
-/

namespace A104368.P17043617894457940320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A104368.P17043617894457940320

/-! ## A104368.P975360369127204073

`A001222(and(-1, A104369(n+1)))`
-/

namespace A104368.P975360369127204073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-1) (A104369 (n + 1))).toNat

end

end A104368.P975360369127204073

/-!
# A104369: Number of divisors of A104365(n) = A104350(n) + 1.

The programs for A104369, there is no canonical definition to state claims against.
-/

/-! ## A104369.P11984442829710226158

`2^A104368(n+1)`
-/

namespace A104369.P11984442829710226158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A104368 (n + 1) : ℤ)

end

end A104369.P11984442829710226158

/-! ## A104369.P1794681641999823452

`A000079(A104368(n+1))`
-/

namespace A104369.P1794681641999823452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A104368 (n + 1)).toNat

end

end A104369.P1794681641999823452

/-! ## A104369.P3175499542519860099

`A011782(A104368(n+1)+1)`
-/

namespace A104369.P3175499542519860099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A104368 (n + 1) + 1).toNat

end

end A104369.P3175499542519860099

/-! ## A104369.P11755315812189375694

`A131577(A104368(n+1)+1)`
-/

namespace A104369.P11755315812189375694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A104368 (n + 1) + 1).toNat

end

end A104369.P11755315812189375694

/-! ## A104369.P11036121731548842577

`A034008(A104368(n+1)+2)`
-/

namespace A104369.P11036121731548842577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A104368 (n + 1) + 2).toNat

end

end A104369.P11036121731548842577

/-! ## A104369.P9272069146786318888

`A077957(2*A104368(n+1))`
-/

namespace A104369.P9272069146786318888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * A104368 (n + 1)).toNat

end

end A104369.P9272069146786318888

/-!
# A104370: Sum of divisors of A104365(n) = A104350(n) + 1.

The programs for A104370, the canonical program `A104370.P8775367186141108224` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104370 has offset 1).

The definition of A104370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104365, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104370.P8775367186141108224

`A000203(A104365(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104370

/-- `A000203(A104365(n+1))` -/
def P8775367186141108224.Spec : Prop :=
  ∀ n, P8775367186141108224.a n = A104370 (n + 1)

theorem P8775367186141108224.correct : P8775367186141108224.Spec := by
  intro n
  simp only [A104370, Nat.add_sub_cancel]

end A104370

/-! ## A104370.P16319575330981300249

`∑{d}[A104365(n+1), #]`
-/

namespace A104370.P16319575330981300249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104370.P16319575330981300249

namespace A104370

/-- `∑{d}[A104365(n+1), #]` -/
def P16319575330981300249.Spec : Prop :=
  ∀ n, (P16319575330981300249.a n : ℤ) = A104370 (n + 1)

end A104370

/-! ## A104370.P17978597287008217384

`∑{d}[A104350(n+1)+1, #]`
-/

namespace A104370.P17978597287008217384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104370.P17978597287008217384

namespace A104370

/-- `∑{d}[A104350(n+1)+1, #]` -/
def P17978597287008217384.Spec : Prop :=
  ∀ n, (P17978597287008217384.a n : ℤ) = A104370 (n + 1)

end A104370

/-! ## A104370.P9881668490593100607

`∑{d}[A104357(n+1)+2, #]`
-/

namespace A104370.P9881668490593100607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104370.P9881668490593100607

namespace A104370

/-- `∑{d}[A104357(n+1)+2, #]` -/
def P9881668490593100607.Spec : Prop :=
  ∀ n, (P9881668490593100607.a n : ℤ) = A104370 (n + 1)

end A104370

/-! ## A104370.P4707939761165330686

`∑{d}[∏[A006530(n+1)]+1, #]`
-/

namespace A104370.P4707939761165330686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A104370.P4707939761165330686

namespace A104370

/-- `∑{d}[∏[A006530(n+1)]+1, #]` -/
def P4707939761165330686.Spec : Prop :=
  ∀ n, (P4707939761165330686.a n : ℤ) = A104370 (n + 1)

end A104370

/-!
# A104371: Euler's totient of A104365(n) = A104350(n) + 1.

The programs for A104371, the canonical program `A104371.P10404402479975392901` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104371 has offset 1).

The definition of A104371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104365, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104371.P10404402479975392901

`A000010(A104365(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A104371

/-- `A000010(A104365(n+1))` -/
def P10404402479975392901.Spec : Prop :=
  ∀ n, P10404402479975392901.a n = A104371 (n + 1)

theorem P10404402479975392901.correct : P10404402479975392901.Spec := by
  intro n
  simp only [A104371, Nat.add_sub_cancel]

end A104371

/-! ## A104371.P11192948514248886920

`∏{p}[A104350(n+1)+1, #-1]`
-/

namespace A104371.P11192948514248886920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A104371.P11192948514248886920

namespace A104371

/-- `∏{p}[A104350(n+1)+1, #-1]` -/
def P11192948514248886920.Spec : Prop :=
  ∀ n, P11192948514248886920.a n = A104371 (n + 1)

end A104371

/-! ## A104371.P11345469865740853256

`∏{p}[A104357(n+1)+2, #-1]`
-/

namespace A104371.P11345469865740853256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104357 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A104371.P11345469865740853256

namespace A104371

/-- `∏{p}[A104357(n+1)+2, #-1]` -/
def P11345469865740853256.Spec : Prop :=
  ∀ n, P11345469865740853256.a n = A104371 (n + 1)

end A104371

/-! ## A104371.P9446641590720578977

`∏{p}[∏[A006530(n+1)]+1, #-1]`
-/

namespace A104371.P9446641590720578977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A104371.P9446641590720578977

namespace A104371

/-- `∏{p}[∏[A006530(n+1)]+1, #-1]` -/
def P9446641590720578977.Spec : Prop :=
  ∀ n, P9446641590720578977.a n = A104371 (n + 1)

end A104371

/-! ## A104371.P6931012400108865937

`∏{p}[∏[A002034(∏{p}[n+1, #])]+1, #-1]`
-/

namespace A104371.P6931012400108865937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A104371.P6931012400108865937

namespace A104371

/-- `∏{p}[∏[A002034(∏{p}[n+1, #])]+1, #-1]` -/
def P6931012400108865937.Spec : Prop :=
  ∀ n, P6931012400108865937.a n = A104371 (n + 1)

end A104371

/-!
# A104372: Primes of the form A104350(k) + 1.

The programs for A104372, there is no canonical definition to state claims against.
-/

/-! ## A104372.P2596524434634039128

`record[A104366(1+n)]`
-/

namespace A104372.P2596524434634039128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104366 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104372.P2596524434634039128

/-! ## A104372.P7155589331462934884

`record[C(A104367(n+1), A104350(n+1))]`
-/

namespace A104372.P7155589331462934884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104367 (n + 1)).toNat (A104350 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104372.P7155589331462934884

/-! ## A104372.P13233179764034372183

`record[C(A104367(n+1), A104371(n+1))]`
-/

namespace A104372.P13233179764034372183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104367 (n + 1)).toNat (A104371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104372.P13233179764034372183

/-! ## A104372.P17299409424751903308

`∩[A104365(n+1), A104371(n+1)+1]`
-/

namespace A104372.P17299409424751903308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104371 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104372.P17299409424751903308

/-! ## A104372.P7411368798046052701

`record[(2-A104368(n+1))*A104365(n+1)]`
-/

namespace A104372.P7411368798046052701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A104368 (n + 1)) * A104365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104372.P7411368798046052701

/-!
# A104376: a(n) = Sum_{j=0..13} n^j.

The programs for A104376, the canonical program `A104376.P9855703863287566091` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104376 has offset 0).

The definition of A104376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[13, n^#]` (program `A104376.P9855703863287566091`, by `A104376.P9855703863287566091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104376.P9855703863287566091

`∑{#}[13, n^#]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104376

/-- `∑{#}[13, n^#]` -/
def P9855703863287566091.Spec : Prop :=
  ∀ n, (P9855703863287566091.a n : ℤ) = A104376 n

theorem P9855703863287566091.correct : P9855703863287566091.Spec := by
  intro n
  simp only [A104376]

end A104376

/-! ## A104376.P2189828864766888220

`n*A060887(n)+1`
-/

namespace A104376.P2189828864766888220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060887 n + 1

end

end A104376.P2189828864766888220

namespace A104376

/-- `n*A060887(n)+1` -/
def P2189828864766888220.Spec : Prop :=
  ∀ n, P2189828864766888220.a n = A104376 n

end A104376

/-! ## A104376.P16011902604800179300

`n*(n*A105067(n)+1)+1`
-/

namespace A104376.P16011902604800179300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A105067 n + 1) + 1

end

end A104376.P16011902604800179300

namespace A104376

/-- `n*(n*A105067(n)+1)+1` -/
def P16011902604800179300.Spec : Prop :=
  ∀ n, P16011902604800179300.a n = A104376 n

end A104376

/-! ## A104376.P6937054340767084901

`A060887(n)+A010801(n)`
-/

namespace A104376.P6937054340767084901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 n + A010801 n

end

end A104376.P6937054340767084901

namespace A104376

/-- `A060887(n)+A010801(n)` -/
def P6937054340767084901.Spec : Prop :=
  ∀ n, P6937054340767084901.a n = A104376 n

end A104376

/-! ## A104376.P7415499453763656136

`(A228290(n)+1)*A258806(n)`
-/

namespace A104376.P7415499453763656136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228290 n + 1) * A258806 n

end

end A104376.P7415499453763656136

namespace A104376

/-- `(A228290(n)+1)*A258806(n)` -/
def P7415499453763656136.Spec : Prop :=
  ∀ n, P7415499453763656136.a n = A104376 n

end A104376

/-! ## A104376.P16696549547556348010

`A060885(n)+A008454(n)*A027444(n)`
-/

namespace A104376.P16696549547556348010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n + A008454 n * A027444 n

end

end A104376.P16696549547556348010

namespace A104376

/-- `A060885(n)+A008454(n)*A027444(n)` -/
def P16696549547556348010.Spec : Prop :=
  ∀ n, P16696549547556348010.a n = A104376 n

end A104376

/-! ## A104376.P1224717471355980525

`A102909(n)+A001016(n)*A152031(n)`
-/

namespace A104376.P1224717471355980525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102909 n + A001016 n * A152031 n

end

end A104376.P1224717471355980525

namespace A104376

/-- `A102909(n)+A001016(n)*A152031(n)` -/
def P1224717471355980525.Spec : Prop :=
  ∀ n, P1224717471355980525.a n = A104376 n

end A104376

/-! ## A104376.P3024197589919008670

`A060885(n)+lcm(A008455(n), A027444(n))`
-/

namespace A104376.P3024197589919008670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n + (Int.lcm (A008455 n) (A027444 n) : ℤ)

end

end A104376.P3024197589919008670

namespace A104376

/-- `A060885(n)+lcm(A008455(n), A027444(n))` -/
def P3024197589919008670.Spec : Prop :=
  ∀ n, P3024197589919008670.a n = A104376 n

end A104376

/-! ## A104376.P6107067462367570161

`round(A104682(n)/A105312(n)*A104682(n))`
-/

namespace A104376.P6107067462367570161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104682 n : ℚ) / (A105312 n : ℚ) * (A104682 n : ℚ))

end

end A104376.P6107067462367570161

namespace A104376

/-- `round(A104682(n)/A105312(n)*A104682(n))` -/
def P6107067462367570161.Spec : Prop :=
  ∀ n, P6107067462367570161.a n = A104376 n

end A104376

/-! ## A104376.P1232394921930384688

`round(A104682(n)²/A105312(n))`
-/

namespace A104376.P1232394921930384688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104682 n ^ 2 : ℚ) / (A105312 n : ℚ))

end

end A104376.P1232394921930384688

namespace A104376

/-- `round(A104682(n)²/A105312(n))` -/
def P1232394921930384688.Spec : Prop :=
  ∀ n, P1232394921930384688.a n = A104376 n

end A104376

/-!
# A104377: Number of distinct prime divisors of numbers derived from three consecutive concatenated odd numbers.

The programs for A104377, there is no canonical definition to state claims against.
-/

/-! ## A104377.P13820348190370083212

`val(A240620(3*n+2)+A211343(n+1), 2)%3+2`
-/

namespace A104377.P13820348190370083212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A240620 (3 * n + 2) + A211343 (n + 1)).toNat 2 % 3 + 2

end

end A104377.P13820348190370083212

/-! ## A104377.P14637852786992285230

`A102640(A017017(n)-A103318(n+1))`
-/

namespace A104377.P14637852786992285230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102640 (A017017 n - A103318 (n + 1)).toNat

end

end A104377.P14637852786992285230

/-! ## A104377.P5637316540701233234

`A240750(n+3)+A032742(A175196(n+1))`
-/

namespace A104377.P5637316540701233234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240750 (n + 3) + A032742 (A175196 (n + 1)).toNat

end

end A104377.P5637316540701233234

/-! ## A104377.P18117558367769747705

`A369162(A027423(n+2))+A240750(n+3)`
-/

namespace A104377.P18117558367769747705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369162 (A027423 (n + 2)).toNat + A240750 (n + 3)

end

end A104377.P18117558367769747705

/-! ## A104377.P8962351884978223865

`A317748(∑[A007953(3*n+2)])+2`
-/

namespace A104377.P8962351884978223865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A104377.P8962351884978223865

/-!
# A104378: First differences of A102370.

The programs for A104378, there is no canonical definition to state claims against.
-/

/-! ## A104378.P8211432821104239161

`Δ[A102370(n)]`
-/

namespace A104378.P8211432821104239161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P8211432821104239161

/-! ## A104378.P2553031807312984862

`A102370(n+1)-A102370(n)`
-/

namespace A104378.P2553031807312984862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (n + 1) - A102370 n

end

end A104378.P2553031807312984862

/-! ## A104378.P16075640408883914140

`Δ[A105023(n)]+1`
-/

namespace A104378.P16075640408883914140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104378.P16075640408883914140

/-! ## A104378.P11982755762433509057

`Δ[A105228(n+1)]`
-/

namespace A104378.P11982755762433509057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P11982755762433509057

/-! ## A104378.P16807740986910119082

`Δ[2*A103185(n)]+1`
-/

namespace A104378.P16807740986910119082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104378.P16807740986910119082

/-! ## A104378.P12644893826272857588

`Δ[A005408(A103185(n))]+1`
-/

namespace A104378.P12644893826272857588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104378.P12644893826272857588

/-! ## A104378.P1907534338149501103

`Δ[A047540(A103185(n)+1)]+1`
-/

namespace A104378.P1907534338149501103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A103185 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104378.P1907534338149501103

/-! ## A104378.P8151414544634705209

`or(1, Δ[A109613(2*A103185(n))])`
-/

namespace A104378.P8151414544634705209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A103185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A104378.P8151414544634705209

/-! ## A104378.P10109192536001574266

`Δ[2*A103185(n)-A001489(n)]`
-/

namespace A104378.P10109192536001574266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P10109192536001574266

/-! ## A104378.P12899384699589703957

`Δ[2*A103185(n)-A024000(n)]`
-/

namespace A104378.P12899384699589703957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P12899384699589703957

/-! ## A104378.P8551438698435186189

`A105228(n+2)-A105228(n+1)`
-/

namespace A104378.P8551438698435186189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 2) - A105228 (n + 1)

end

end A104378.P8551438698435186189

/-! ## A104378.P10995509761363883905

`Δ[A005408(A103185(n))-A001489(n)]`
-/

namespace A104378.P10995509761363883905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103185 n).toNat - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P10995509761363883905

/-! ## A104378.P7070629887221757650

`Δ[A005408(A103185(n))-A024000(n)]`
-/

namespace A104378.P7070629887221757650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103185 n).toNat - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P7070629887221757650

/-! ## A104378.P15536235611672417769

`Δ[(A005843(A103185(n))+n)%A000290(n+1)]`
-/

namespace A104378.P15536235611672417769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A103185 n).toNat + (n : ℤ)) (A000290 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P15536235611672417769

/-! ## A104378.P11752776896273266693

`Δ[A000007(n+1)+A005843(A103185(n))+n]`
-/

namespace A104378.P11752776896273266693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A005843 (A103185 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104378.P11752776896273266693

/-!
# A104379: a(n) = square root of digital reversal of A102859(n)^2.

The programs for A104379, there is no canonical definition to state claims against.
-/

/-! ## A104379.P3985301560133101087

`A004086(A061457(n+1))^(1/2)`
-/

namespace A104379.P3985301560133101087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004086 (A061457 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A104379.P3985301560133101087

/-! ## A104379.P4225441960408626910

`(A004086(A102859(n+1)²)^(1/4))²`
-/

namespace A104379.P4225441960408626910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A004086 (A102859 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 4 : ℝ)) ^ 2

end

end A104379.P4225441960408626910

/-! ## A104379.P13998425252500031472

`A056926(A004086(A102859(n+1)²))`
-/

namespace A104379.P13998425252500031472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A004086 (A102859 (n + 1) ^ 2).toNat).toNat

end

end A104379.P13998425252500031472

/-! ## A104379.P9934850703032848043

`A000196(A004086(A061457(n+1)))`
-/

namespace A104379.P9934850703032848043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004086 (A061457 (n + 1)).toNat).toNat

end

end A104379.P9934850703032848043

/-!
# A104381: Numbers k such that 10^(k-1) == 1 (mod k).

The programs for A104381, there is no canonical definition to state claims against.
-/

/-! ## A104381.P7967973937513588633

`∩[A045572(n+1), A121912(n+1)]`
-/

namespace A104381.P7967973937513588633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104381.P7967973937513588633

/-! ## A104381.P5576479038764801599

`eq[n, lcm(n, A084680(n+1))]+1`
-/

namespace A104381.P5576479038764801599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A084680 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104381.P5576479038764801599

/-! ## A104381.P9934784769190271927

`eq[A056968(n+1), A057427(n)]+1`
-/

namespace A104381.P9934784769190271927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104381.P9934784769190271927

/-! ## A104381.P12148565925159598605

`A004442(eq[n, n*A056968(n+1)])`
-/

namespace A104381.P12148565925159598605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104381.P12148565925159598605

/-! ## A104381.P4342910083567704737

`A079097(eq[n, n*A056968(n+1)])`
-/

namespace A104381.P4342910083567704737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104381.P4342910083567704737

/-! ## A104381.P1200002078133202982

`A109613(eq[n, n*A056968(n+1)])`
-/

namespace A104381.P1200002078133202982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104381.P1200002078133202982

/-! ## A104381.P324569946696685432

`A109613(eq[round(n/(n+1)), A056968(n+1)])`
-/

namespace A104381.P324569946696685432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104381.P324569946696685432

/-! ## A104381.P9733145379076361803

`A004442(eq[A056968(n+1), A057427(n)])`
-/

namespace A104381.P9733145379076361803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104381.P9733145379076361803

/-! ## A104381.P5100679020981074489

`A079097(eq[A056968(n+1), A057427(n)])`
-/

namespace A104381.P5100679020981074489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104381.P5100679020981074489

/-! ## A104381.P10299100138462016219

`A109613(eq[A056968(n+1), A057427(n)])`
-/

namespace A104381.P10299100138462016219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104381.P10299100138462016219

/-! ## A104381.P4171602130446534708

`∩[A121912(n+1), A122987(n+1)]`
-/

namespace A104381.P4171602130446534708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104381.P4171602130446534708

/-!
# A104382: Triangle, read by rows, where T(n,k) equals number of distinct partitions of triangular number n*(n+1)/2 into k different summands for n>=k>=1.

The programs for A104382, there is no canonical definition to state claims against.
-/

/-! ## A104382.P2631905507613343806

`A350029(A060102(n))`
-/

namespace A104382.P2631905507613343806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A060102 n).toNat

end

end A104382.P2631905507613343806

/-! ## A104382.P4715500835160786197

`A239684(A156883(n+1))`
-/

namespace A104382.P4715500835160786197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239684 (A156883 (n + 1)).toNat

end

end A104382.P4715500835160786197

/-! ## A104382.P17524155140290973464

`A386515(A214398(n+1))`
-/

namespace A104382.P17524155140290973464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386515 (A214398 (n + 1)).toNat

end

end A104382.P17524155140290973464

/-!
# A104383: Number of distinct partitions of triangular numbers n*(n+1)/2.

The programs for A104383, there is no canonical definition to state claims against.
-/

/-! ## A104383.P17986901010012645829

`A000009(A000217(n))`
-/

namespace A104383.P17986901010012645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000217 n).toNat

end

end A104383.P17986901010012645829

/-! ## A104383.P3791083073414053452

`A000009(∑[n])`
-/

namespace A104383.P3791083073414053452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104383.P3791083073414053452

/-! ## A104383.P13802224484120901199

`abs(A081360(∑[n]))`
-/

namespace A104383.P13802224484120901199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A104383.P13802224484120901199

/-! ## A104383.P3868727121541104733

`A111133(∑[n])+1`
-/

namespace A104383.P3868727121541104733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A104383.P3868727121541104733

/-! ## A104383.P16541741695312207699

`ceil(A087135(∑[n])/2)`
-/

namespace A104383.P16541741695312207699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A104383.P16541741695312207699

/-! ## A104383.P13336619620708380393

`ceil(A333147(∑[n])/2)`
-/

namespace A104383.P13336619620708380393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A104383.P13336619620708380393

/-! ## A104383.P12067938268606617402

`A052839(∑[n])+floor(acot(n))-1`
-/

namespace A104383.P12067938268606617402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (∑ j ∈ Finset.range (n + 1), f1 j) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A104383.P12067938268606617402

/-! ## A104383.P8022988651374218520

`A117409(A133263(n))`
-/

namespace A104383.P8022988651374218520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A133263 n).toNat

end

end A104383.P8022988651374218520

/-! ## A104383.P65121992387672031

`A117409(A238531(n+1))`
-/

namespace A104383.P65121992387672031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A238531 (n + 1)).toNat

end

end A104383.P65121992387672031

/-! ## A104383.P14753582946725897442

`A057428(n)+A052839(∑[n])`
-/

namespace A104383.P14753582946725897442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104383.P14753582946725897442

/-! ## A104383.P7375672670437039966

`lcm(A020985(n), A081360(∑[n]))`
-/

namespace A104383.P7375672670437039966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081360 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A104383.P7375672670437039966

/-! ## A104383.P9284347712625135842

`A052839(A179865(n+1))-1`
-/

namespace A104383.P9284347712625135842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A179865 (n + 1)).toNat - 1

end

end A104383.P9284347712625135842

/-! ## A104383.P17644442559563645599

`A096765(∑[n])+A096765(A000124(n))`
-/

namespace A104383.P17644442559563645599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (∑ j ∈ Finset.range (n + 1), f1 j) + A096765 (A000124 n).toNat

end

end A104383.P17644442559563645599

/-! ## A104383.P7827778147309165046

`A035457(∑[2*n])`
-/

namespace A104383.P7827778147309165046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104383.P7827778147309165046

/-! ## A104383.P12490677505536330625

`A172033(∑[2*n])`
-/

namespace A104383.P12490677505536330625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104383.P12490677505536330625

/-!
# A104384: Number of partitions of triangular numbers n*(n+1)/2 into (n-2) distinct parts for n>=3.

The programs for A104384, there is no canonical definition to state claims against.
-/

/-! ## A104384.P6732305328735274044

`A104382(∑[n+3]+1)`
-/

namespace A104384.P6732305328735274044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104382 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104384.P6732305328735274044

/-! ## A104384.P13844527678046497317

`record[A000041(A004273(n))+1-A000070(n)]`
-/

namespace A104384.P13844527678046497317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004273 n).toNat + (1 - A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104384.P13844527678046497317

/-! ## A104384.P3251252261445305866

`A026820(A132209(n+2))`
-/

namespace A104384.P3251252261445305866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A132209 (n + 2)).toNat

end

end A104384.P3251252261445305866

/-! ## A104384.P18142720983457273737

`A026820(A142463(n+2))`
-/

namespace A104384.P18142720983457273737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A142463 (n + 2)).toNat

end

end A104384.P18142720983457273737

/-! ## A104384.P12534878573180984053

`A026820(A004767(∑[n+2]))`
-/

namespace A104384.P12534878573180984053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A004767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104384.P12534878573180984053

/-! ## A104384.P6651543059756576273

`A026820(A090288(n+1)+1)`
-/

namespace A104384.P6651543059756576273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A090288 (n + 1) + 1).toNat

end

end A104384.P6651543059756576273

/-! ## A104384.P1718862825921177272

`A026820(A046092(n+2)-1)`
-/

namespace A104384.P1718862825921177272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A046092 (n + 2) - 1).toNat

end

end A104384.P1718862825921177272

/-! ## A104384.P862704810231550723

`A026820(A001844(n+2)-2)`
-/

namespace A104384.P862704810231550723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A001844 (n + 2) - 2).toNat

end

end A104384.P862704810231550723

/-! ## A104384.P8671461708573037487

`A026820(Δ[A002623(2*n+1)]+n+1)`
-/

namespace A104384.P8671461708573037487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A104384.P8671461708573037487

/-! ## A104384.P6732297609773489159

`A008284(A081270(n+1))`
-/

namespace A104384.P6732297609773489159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A081270 (n + 1)).toNat

end

end A104384.P6732297609773489159

/-!
# A104385: Number of distinct partitions of triangular numbers n*(n+1)/2 into 3 parts for n>=1.

The programs for A104385, there is no canonical definition to state claims against.
-/

/-! ## A104385.P7456813640836272797

`round(record[∑[n-2]]²/12)`
-/

namespace A104385.P7456813640836272797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 : ℚ) / 12)

end

end A104385.P7456813640836272797

/-! ## A104385.P9119267142738696466

`round((3-∑[n+1])²/12)`
-/

namespace A104385.P9119267142738696466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2 : ℚ) / 12)

end

end A104385.P9119267142738696466

/-! ## A104385.P9725515377234540673

`floor(ceil(((3-C(n+2, 2))/2)²)/3)`
-/

namespace A104385.P9725515377234540673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈((3 - (Nat.choose (n + 2) 2 : ℤ) : ℚ) / 2) ^ 2⌉ : ℚ) / 3⌋

end

end A104385.P9725515377234540673

/-! ## A104385.P3692442425438211981

`A211540(n+∑[n])`
-/

namespace A104385.P3692442425438211981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104385.P3692442425438211981

/-! ## A104385.P355851386309909760

`A069905(abs(3-∑[n+1]))`
-/

namespace A104385.P355851386309909760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 |3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A104385.P355851386309909760

/-!
# A104386: Numbers k such that the average of the k-th and (k+1)-th primes is a repdigit.

The programs for A104386, there is no canonical definition to state claims against.
-/

/-! ## A104386.P5592416084330932677

`A000720(A104388(n+1))`
-/

namespace A104386.P5592416084330932677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104388 (n + 1)).toNat

end

end A104386.P5592416084330932677

/-! ## A104386.P3704221726404552617

`A000720(A104389(n+1))`
-/

namespace A104386.P3704221726404552617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104389 (n + 1)).toNat

end

end A104386.P3704221726404552617

/-!
# A104387: Larger of two successive primes the average of which is a repdigit.

The programs for A104387, there is no canonical definition to state claims against.
-/

/-! ## A104387.P13063272521451202253

`A000040(A104386(n+1)+1)`
-/

namespace A104387.P13063272521451202253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A104386 (n + 1) + 1).toNat

end

end A104387.P13063272521451202253

/-! ## A104387.P14990142123896627363

`2*A104389(n+1)-A104388(n+1)`
-/

namespace A104387.P14990142123896627363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104389 (n + 1) - A104388 (n + 1)

end

end A104387.P14990142123896627363

/-! ## A104387.P2768521324216681699

`A196563(A153819(n))+A104389(n+1)`
-/

namespace A104387.P2768521324216681699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A153819 n).toNat + A104389 (n + 1)

end

end A104387.P2768521324216681699

/-!
# A104388: Lesser of two successive primes the average of which is a repdigit.

The programs for A104388, there is no canonical definition to state claims against.
-/

/-! ## A104388.P14418069516962098531

`A000040(A104386(n+1))`
-/

namespace A104388.P14418069516962098531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A104386 (n + 1)).toNat

end

end A104388.P14418069516962098531

/-! ## A104388.P16328709250721238760

`2*A104389(n+1)-A104387(n+1)`
-/

namespace A104388.P16328709250721238760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104389 (n + 1) - A104387 (n + 1)

end

end A104388.P16328709250721238760

/-! ## A104388.P11708772036564821847

`A104389(n+1)-A196563(A153819(n))`
-/

namespace A104388.P11708772036564821847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104389 (n + 1) - A196563 (A153819 n).toNat

end

end A104388.P11708772036564821847

/-!
# A104389: Repdigits which are the average of two successive primes.

The programs for A104389, there is no canonical definition to state claims against.
-/

/-! ## A104389.P9304629696141427257

`(A104387(n+1)+A104388(n+1))/2`
-/

namespace A104389.P9304629696141427257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104387 (n + 1) + A104388 (n + 1) : ℚ) / 2

end

end A104389.P9304629696141427257

/-! ## A104389.P1997853571414261666

`A196563(A153819(n))+A104388(n+1)`
-/

namespace A104389.P1997853571414261666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A153819 n).toNat + A104388 (n + 1)

end

end A104389.P1997853571414261666

/-! ## A104389.P5374936230355799787

`A104387(n+1)-A196563(A153819(n))`
-/

namespace A104389.P5374936230355799787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104387 (n + 1) - A196563 (A153819 n).toNat

end

end A104389.P5374936230355799787

/-!
# A104390: 2-Smith numbers.

The programs for A104390, there is no canonical definition to state claims against.
-/

/-! ## A104390.P5207694503650582781

`eq[A118503(n+1), A169805(n+1)]+1`
-/

namespace A104390.P5207694503650582781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104390.P5207694503650582781

/-! ## A104390.P6658093696158589843

`eq[A169805(n)+2, A118503(A004277(n))]`
-/

namespace A104390.P6658093696158589843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104390.P6658093696158589843

/-!
# A104394: Sums of 4 distinct positive pentatope numbers (A000332).

The programs for A104394, there is no canonical definition to state claims against.
-/

/-! ## A104394.P6608878234283067214

`∑[A276643(A276373(n+1))]`
-/

namespace A104394.P6608878234283067214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276643 (A276373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104394.P6608878234283067214

/-!
# A104395: Sums of 5 distinct positive pentatope numbers (A000332).

The programs for A104395, there is no canonical definition to state claims against.
-/

/-! ## A104395.P17960841154697293753

`lt[2, A037913(A009993(n+5))]`
-/

namespace A104395.P17960841154697293753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A009993 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104395.P17960841154697293753

/-! ## A104395.P9206455213996479345

`eq[A037913(A009993(n+5)), A157532(n+1)]`
-/

namespace A104395.P9206455213996479345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A009993 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104395.P9206455213996479345

