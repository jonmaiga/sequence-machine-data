import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B003.C000
import Seq.B003.C001
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
# A353500: Numbers that are the smallest number with product of prime exponents k for some k. Sorted positions of first appearances in A005361, unsorted version A085629.

The programs for A353500, there is no canonical definition to state claims against.
-/

/-! ## A353500.P10208654379321774935

`record[A085629(A052306(n+1))]`
-/

namespace A353500.P10208654379321774935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (A052306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353500.P10208654379321774935

/-! ## A353500.P15065544930368038750

`record[A085629(A212647(n+1))]`
-/

namespace A353500.P15065544930368038750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (A212647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353500.P15065544930368038750

/-! ## A353500.P6557983007619623520

`record[A085629(A005361(n+1))]`
-/

namespace A353500.P6557983007619623520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (A005361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353500.P6557983007619623520

/-!
# A353501: Number of integer partitions of n with all parts and all multiplicities > 2.

The programs for A353501, there is no canonical definition to state claims against.
-/

/-! ## A353501.P6240072190534241686

`A353328(4^A353428(n))`
-/

namespace A353501.P6240072190534241686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353428 n : ℤ))).toNat

end

end A353501.P6240072190534241686

/-! ## A353501.P1696096286966886233

`A353381(4^A353428(n))`
-/

namespace A353501.P1696096286966886233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353428 n : ℤ))).toNat

end

end A353501.P1696096286966886233

/-! ## A353501.P8549696910573322695

`A004218(4^A353428(n))`
-/

namespace A353501.P8549696910573322695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353428 n : ℤ))).toNat

end

end A353501.P8549696910573322695

/-! ## A353501.P6644621926552010150

`A051265(4^A353428(n))`
-/

namespace A353501.P6644621926552010150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353428 n : ℤ))).toNat

end

end A353501.P6644621926552010150

/-! ## A353501.P11143296024861126118

`A280008(4^A353428(n))`
-/

namespace A353501.P11143296024861126118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280008 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353428 n : ℤ))).toNat

end

end A353501.P11143296024861126118

/-!
# A353502: Numbers with all prime indices and exponents > 2.

The programs for A353502, there is no canonical definition to state claims against.
-/

/-! ## A353502.P10218768100169265107

`∩[A036966(n+1), A374289(n+1)]`
-/

namespace A353502.P10218768100169265107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353502.P10218768100169265107

/-! ## A353502.P1133856630018525826

`∩[A374289(n+1), A381824(n+1)]`
-/

namespace A353502.P1133856630018525826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353502.P1133856630018525826

/-! ## A353502.P3337732983156339565

`filter[A036966(n+1), A359374(#)]`
-/

namespace A353502.P3337732983156339565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A353502.P3337732983156339565

/-! ## A353502.P15478355700287704309

`filter[A076467(n+1), A359374(#)]`
-/

namespace A353502.P15478355700287704309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A353502.P15478355700287704309

/-! ## A353502.P5443928136498617543

`filter[A381824(n+1), A187074(#)]`
-/

namespace A353502.P5443928136498617543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A353502.P5443928136498617543

/-!
# A353503: Numbers whose product of prime indices equals their product of prime exponents (prime signature).

The programs for A353503, there is no canonical definition to state claims against.
-/

/-! ## A353503.P11432681691667183891

`eq[A003963(n+1), A005361(n+1)]+1`
-/

namespace A353503.P11432681691667183891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353503.P11432681691667183891

/-! ## A353503.P7979461614579461579

`eq[A183094(n+1)+1, A003963(n+1)]+1`
-/

namespace A353503.P7979461614579461579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353503.P7979461614579461579

/-! ## A353503.P4418039831362979101

`eq[A000005(A003557(n+1)), A003963(n+1)]+1`
-/

namespace A353503.P4418039831362979101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353503.P4418039831362979101

/-! ## A353503.P8938522674600711255

`eq[A000005(A292589(n+1)), A003963(n+1)]+1`
-/

namespace A353503.P8938522674600711255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353503.P8938522674600711255

/-!
# A353504: Number of integer partitions of n whose product is less than the product of their multiplicities.

The programs for A353504, there is no canonical definition to state claims against.
-/

/-! ## A353504.P11646438813638610684

`A156078(A238617(n+1)+A156078(n+1))`
-/

namespace A353504.P11646438813638610684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A238617 (n + 1) + A156078 (n + 1)).toNat

end

end A353504.P11646438813638610684

/-!
# A353505: Number of integer partitions of n whose product is greater than the product of their multiplicities.

The programs for A353505, there is no canonical definition to state claims against.
-/

/-! ## A353505.P6495876027565965034

`A000041(n)-A257212(A218914(n))`
-/

namespace A353505.P6495876027565965034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A257212 (A218914 n).toNat

end

end A353505.P6495876027565965034

/-! ## A353505.P16583709166474245229

`A345913(A000041(n))-A241444(n+1)`
-/

namespace A353505.P16583709166474245229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A000041 n).toNat - A241444 (n + 1)

end

end A353505.P16583709166474245229

/-! ## A353505.P7346711015690794866

`floor(A348323(4*n+18)/48)`
-/

namespace A353505.P7346711015690794866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348323 (4 * n + 18) : ℚ) / 48⌋

end

end A353505.P7346711015690794866

/-! ## A353505.P10447380888838764460

`A213259(A001932(n+1))`
-/

namespace A353505.P10447380888838764460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A001932 (n + 1)).toNat

end

end A353505.P10447380888838764460

/-! ## A353505.P16639729722796527555

`A213259(A215337(n+1))`
-/

namespace A353505.P16639729722796527555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A215337 (n + 1)).toNat

end

end A353505.P16639729722796527555

/-!
# A353506: Number of integer partitions of n whose parts have the same product as their multiplicities.

The programs for A353506, there is no canonical definition to state claims against.
-/

/-! ## A353506.P7896741374550004700

`∑{e}[A066743(A167606(n)+2), #]`
-/

namespace A353506.P7896741374550004700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066743 (A167606 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A353506.P7896741374550004700

/-! ## A353506.P1217045261572475227

`A326787(A056535(3*n+1)+3)`
-/

namespace A353506.P1217045261572475227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A056535 (3 * n + 1) + 3).toNat

end

end A353506.P1217045261572475227

/-! ## A353506.P9110346720247906617

`val(A000203(A250301(3*n+2)), 4)`
-/

namespace A353506.P9110346720247906617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A250301 (3 * n + 2)).toNat).toNat 4

end

end A353506.P9110346720247906617

/-! ## A353506.P5756271836010616016

`A340607(n+1)+A008683(A026520(n))`
-/

namespace A353506.P5756271836010616016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (n + 1) + A008683 (A026520 n).toNat

end

end A353506.P5756271836010616016

/-! ## A353506.P17097408636726003531

`A087371(A267629(n+1)+A176672(n))`
-/

namespace A353506.P17097408636726003531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087371 (A267629 (n + 1) + A176672 n).toNat

end

end A353506.P17097408636726003531

/-!
# A353507: 

The programs for A353507, there is no canonical definition to state claims against.
-/

/-! ## A353507.P17765030622394413999

`A003963(A328830(n+1))%(n+1)`
-/

namespace A353507.P17765030622394413999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A328830 (n + 1)).toNat) (n + 1 : ℤ)

end

end A353507.P17765030622394413999

/-! ## A353507.P2486157436087345814

`A005361(A181819(n+1))-A000007(n)`
-/

namespace A353507.P2486157436087345814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A181819 (n + 1)).toNat - A000007 n

end

end A353507.P2486157436087345814

/-! ## A353507.P9804027111666150062

`A005361(A181819(n+1))%A000124(n)`
-/

namespace A353507.P9804027111666150062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (A181819 (n + 1)).toNat) (A000124 n)

end

end A353507.P9804027111666150062

/-! ## A353507.P2062878407111315672

`A000005(A351944(n+1))%A071047(n)`
-/

namespace A353507.P2062878407111315672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A351944 (n + 1)).toNat) (A071047 n)

end

end A353507.P2062878407111315672

/-! ## A353507.P4662782078560035679

`A367587(A181819(A181819(n+1))²)`
-/

namespace A353507.P4662782078560035679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (A181819 (A181819 (n + 1)).toNat ^ 2).toNat

end

end A353507.P4662782078560035679

/-! ## A353507.P17722495891626668033

`and(A198275(n), A327500(n+1))`
-/

namespace A353507.P17722495891626668033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A327500 (n + 1))

end

end A353507.P17722495891626668033

/-! ## A353507.P12659399266502143872

`and(A171389(n), A327500(n+1))`
-/

namespace A353507.P12659399266502143872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A327500 (n + 1))

end

end A353507.P12659399266502143872

/-! ## A353507.P11754660472709841569

`and(A198276(n), A327500(n+1))`
-/

namespace A353507.P11754660472709841569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A327500 (n + 1))

end

end A353507.P11754660472709841569

/-! ## A353507.P9523526836209293948

`and(A196655(n), A327500(n+1))`
-/

namespace A353507.P9523526836209293948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A327500 (n + 1))

end

end A353507.P9523526836209293948

/-! ## A353507.P7061487180935687558

`and(A026917(n), A327500(n+1))`
-/

namespace A353507.P7061487180935687558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A327500 (n + 1))

end

end A353507.P7061487180935687558

/-! ## A353507.P17625735500303273037

`and(A127582(n), A327500(n+1))`
-/

namespace A353507.P17625735500303273037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A327500 (n + 1))

end

end A353507.P17625735500303273037

/-!
# A353508: Number of integer compositions of n with no ones or runs of length 1.

The programs for A353508, there is no canonical definition to state claims against.
-/

/-! ## A353508.P11664434940312518332

`A364912(A178470(n)+A000007(n))`
-/

namespace A353508.P11664434940312518332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (A178470 n + A000007 n).toNat

end

end A353508.P11664434940312518332

/-! ## A353508.P4676988059113284011

`A364912(A178470(n)+A058348(n))`
-/

namespace A353508.P4676988059113284011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (A178470 n + A058348 n).toNat

end

end A353508.P4676988059113284011

/-! ## A353508.P9692495771086137051

`A023895(n)*A134451(A002478(n))`
-/

namespace A353508.P9692495771086137051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n * A134451 (A002478 n).toNat

end

end A353508.P9692495771086137051

/-! ## A353508.P5499806208700395745

`A023895(n)*A196564(A054244(n+1))`
-/

namespace A353508.P5499806208700395745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n * A196564 (A054244 (n + 1)).toNat

end

end A353508.P5499806208700395745

/-! ## A353508.P9060822705648554649

`A278648(n)+A003982(A002026(n))`
-/

namespace A353508.P9060822705648554649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n + A003982 (A002026 n).toNat

end

end A353508.P9060822705648554649

/-!
# A353509: a(n) = A353379(n) - A001222(n).

The programs for A353509, there is no canonical definition to state claims against.
-/

/-! ## A353509.P14641245676236470871

`A278510(A181819(n+1))`
-/

namespace A353509.P14641245676236470871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278510 (A181819 (n + 1)).toNat

end

end A353509.P14641245676236470871

/-! ## A353509.P764753358660872548

`A353379(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353509.P764753358660872548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (n + 1) - A001222 (n + 1)

end

end A353509.P764753358660872548

/-! ## A353509.P14394564285983790213

`A258851(A181819(n+1))-A001222(n+1)`
-/

namespace A353509.P14394564285983790213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A181819 (n + 1)).toNat - A001222 (n + 1)

end

end A353509.P14394564285983790213

/-! ## A353509.P17133447869600171095

`A353379(n+1)-A032741(A068794(n+1))`
-/

namespace A353509.P17133447869600171095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (n + 1) - A032741 (A068794 (n + 1)).toNat

end

end A353509.P17133447869600171095

/-! ## A353509.P6325704752528206007

`A353379(n+1)-A056239(A181819(n+1))`
-/

namespace A353509.P6325704752528206007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (n + 1) - A056239 (A181819 (n + 1)).toNat

end

end A353509.P6325704752528206007

/-! ## A353509.P4626100086381026722

`A278510(∏{e}[A304203(n+1), #])`
-/

namespace A353509.P4626100086381026722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278510 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A353509.P4626100086381026722

/-!
# A353510: Square array A(n,k), n >= 1, k >= 0, with A(n,0) = n, and for k > 0, A(n,k) = A181819(A(n,k-1)), read by descending antidiagonals.

The programs for A353510, there is no canonical definition to state claims against.
-/

/-! ## A353510.P9786737558825436903

`A051904(A013614(n))+1`
-/

namespace A353510.P9786737558825436903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A013614 n).toNat + 1

end

end A353510.P9786737558825436903

/-! ## A353510.P322024606329988769

`∑{d}[A203647(n+1), A280748(#)]`
-/

namespace A353510.P322024606329988769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A280748 d

end

end A353510.P322024606329988769

/-! ## A353510.P13308234529241211318

`A328162(A143453(n)*A143683(n))`
-/

namespace A353510.P13308234529241211318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A143453 n * A143683 n).toNat

end

end A353510.P13308234529241211318

/-! ## A353510.P8914012392190445875

`A023645(A217883(n+1))%A121623(n+1)`
-/

namespace A353510.P8914012392190445875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023645 (A217883 (n + 1)).toNat) (A121623 (n + 1))

end

end A353510.P8914012392190445875

/-! ## A353510.P365776175732390222

`A334215(n+1)+A151703(A118185(n))`
-/

namespace A353510.P365776175732390222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334215 (n + 1) + A151703 (A118185 n).toNat

end

end A353510.P365776175732390222

/-!
# A353511: Positions of odd terms in A001001, where A001001(n) = Sum_{d|n} d*sigma(d).

The programs for A353511, the canonical program `A353511.P14866992667808189476` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353511 has offset 1).

The definition of A353511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353511.P8702704577273559580

`eq[1, A353628(n+1)]+1`
-/

namespace A353511.P8702704577273559580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353511.P8702704577273559580

namespace A353511

/-- `eq[1, A353628(n+1)]+1` -/
def P8702704577273559580.Spec : Prop :=
  ∀ n, (P8702704577273559580.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P14866992667808189476

`eq[1, A027844(n+1)%2]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353511

/-- `eq[1, A027844(n+1)%2]+1` -/
def P14866992667808189476.Spec : Prop :=
  ∀ n, (P14866992667808189476.a n : ℤ) = A353511 (n + 1)

theorem P14866992667808189476.correct : P14866992667808189476.Spec := by
  intro n
  simp only [A353511, Nat.add_sub_cancel]

end A353511

/-! ## A353511.P6583665341501116702

`record[A000027(n+1)*A353628(n+1)]`
-/

namespace A353511.P6583665341501116702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353511.P6583665341501116702

namespace A353511

/-- `record[A000027(n+1)*A353628(n+1)]` -/
def P6583665341501116702.Spec : Prop :=
  ∀ n, P6583665341501116702.a n = A353511 (n + 1)

end A353511

/-! ## A353511.P14520309171139213088

`eq[2, A104274(n)%4]`
-/

namespace A353511.P14520309171139213088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104274 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353511.P14520309171139213088

namespace A353511

/-- `eq[2, A104274(n)%4]` -/
def P14520309171139213088.Spec : Prop :=
  ∀ n, (P14520309171139213088.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P15730232755951036548

`eq[2, and(2, A291667(n))]`
-/

namespace A353511.P15730232755951036548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A291667 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353511.P15730232755951036548

namespace A353511

/-- `eq[2, and(2, A291667(n))]` -/
def P15730232755951036548.Spec : Prop :=
  ∀ n, (P15730232755951036548.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P17487835594564506536

`filter[n+1, A353628(#)]`
-/

namespace A353511.P17487835594564506536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j) = 1) n)

end

end A353511.P17487835594564506536

namespace A353511

/-- `filter[n+1, A353628(#)]` -/
def P17487835594564506536.Spec : Prop :=
  ∀ n, (P17487835594564506536.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P1591293947393667120

`eq[2, A020639(A145444(n+1)+1)]+1`
-/

namespace A353511.P1591293947393667120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A145444 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353511.P1591293947393667120

namespace A353511

/-- `eq[2, A020639(A145444(n+1)+1)]+1` -/
def P1591293947393667120.Spec : Prop :=
  ∀ n, (P1591293947393667120.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P158263398738666517

`eq[A057427(n), A353628(A028310(n))]`
-/

namespace A353511.P158263398738666517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353511.P158263398738666517

namespace A353511

/-- `eq[A057427(n), A353628(A028310(n))]` -/
def P158263398738666517.Spec : Prop :=
  ∀ n, (P158263398738666517.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P145918363786210256

`eq[2, A291666(n)%4]`
-/

namespace A353511.P145918363786210256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291666 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353511.P145918363786210256

namespace A353511

/-- `eq[2, A291666(n)%4]` -/
def P145918363786210256.Spec : Prop :=
  ∀ n, (P145918363786210256.a n : ℤ) = A353511 (n + 1)

end A353511

/-! ## A353511.P1285314554268593145

`eq[1, A007814(A104274(n))]`
-/

namespace A353511.P1285314554268593145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A104274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353511.P1285314554268593145

namespace A353511

/-- `eq[1, A007814(A104274(n))]` -/
def P1285314554268593145.Spec : Prop :=
  ∀ n, (P1285314554268593145.a n : ℤ) = A353511 (n + 1)

end A353511

/-!
# A353512: n multiplied by the least nonzero digit missing from its primorial base representation.

The programs for A353512, there is no canonical definition to state claims against.
-/

/-! ## A353512.P2824332938184460404

`n*A329028(n)`
-/

namespace A353512.P2824332938184460404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329028 n

end

end A353512.P2824332938184460404

/-! ## A353512.P13860287848730115328

`n*A322584(∏{p}[A328835(n), #])`
-/

namespace A353512.P13860287848730115328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322584 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353512.P13860287848730115328

/-! ## A353512.P11021598225992154256

`n*A257993(A328835(n))`
-/

namespace A353512.P11021598225992154256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257993 (A328835 n).toNat

end

end A353512.P11021598225992154256

/-! ## A353512.P12140748877687288763

`n*A322584(gcd(A319865(n+1), A328835(n)))`
-/

namespace A353512.P12140748877687288763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322584 (Int.gcd (A319865 (n + 1)) (A328835 n))

end

end A353512.P12140748877687288763

/-! ## A353512.P2761138332861405452

`n*A261794(A049345(n))`
-/

namespace A353512.P2761138332861405452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261794 (A049345 n).toNat

end

end A353512.P2761138332861405452

/-! ## A353512.P18264501745356315986

`n*A134193(A278226(n))`
-/

namespace A353512.P18264501745356315986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134193 (A278226 n).toNat

end

end A353512.P18264501745356315986

/-!
# A353513: a(n) = 1 if A328572(n) is of the form 4m+3, and 0 otherwise.

The programs for A353513, there is no canonical definition to state claims against.
-/

/-! ## A353513.P13991552333564077582

`4%(A328572(n)%4)`
-/

namespace A353513.P13991552333564077582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (Int.tmod (A328572 n) 4)

end

end A353513.P13991552333564077582

/-!
# A353514: a(n) = 1 if A328572(2*n) is of the form 4m+3, and 0 otherwise.

The programs for A353514, there is no canonical definition to state claims against.
-/

/-! ## A353514.P13549504508042514821

`A353513(2*n)`
-/

namespace A353514.P13549504508042514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353513 (2 * n)

end

end A353514.P13549504508042514821

/-!
# A353515: The length of the shortest path from n to 1 when using the transitions x -> A003415(x) and x -> A003961(x), or -1 if no 1 can ever be reached from n.

The programs for A353515, there is no canonical definition to state claims against.
-/

/-! ## A353515.P10724028171989410880

`A320042(A097805(2*n)+A001317(n))+1`
-/

namespace A353515.P10724028171989410880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (A097805 (2 * n) + A001317 n).toNat + 1

end

end A353515.P10724028171989410880

/-! ## A353515.P9201709689127087159

`A238745(n+1)-A088705(A360039(3*n+4))`
-/

namespace A353515.P9201709689127087159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1) - A088705 (A360039 (3 * n + 4)).toNat

end

end A353515.P9201709689127087159

/-!
# A353516: The largest proper divisor of the primorial base exp-function, reduced modulo 4.

The programs for A353516, there is no canonical definition to state claims against.
-/

/-! ## A353516.P7038828859064706453

`A324895(n)%4`
-/

namespace A353516.P7038828859064706453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324895 n) 4

end

end A353516.P7038828859064706453

/-!
# A353517: The largest proper divisor of A276086(2*n) reduced modulo 4, where A276086(n) the primorial base exp-function.

The programs for A353517, there is no canonical definition to state claims against.
-/

/-! ## A353517.P15538557700193134453

`A353516(2*n)`
-/

namespace A353517.P15538557700193134453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (2 * n)

end

end A353517.P15538557700193134453

/-!
# A353518: a(n) = 1 if n is a product of superprimorials (A006939), otherwise 0.

The programs for A353518, the canonical program `A353518.P17367289795837771096` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353518 has offset 1).

The definition of A353518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353518.P736987644884130453

`char[A181816(n+1)-1]`
-/

namespace A353518.P736987644884130453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181816 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353518.P736987644884130453

namespace A353518

/-- `char[A181816(n+1)-1]` -/
def P736987644884130453.Spec : Prop :=
  ∀ n, (P736987644884130453.a n : ℤ) = A353518 (n + 1)

end A353518

/-! ## A353518.P14564013027654863093

`char[A181817(n+1)-1]`
-/

namespace A353518.P14564013027654863093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181817 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353518.P14564013027654863093

namespace A353518

/-- `char[A181817(n+1)-1]` -/
def P14564013027654863093.Spec : Prop :=
  ∀ n, (P14564013027654863093.a n : ℤ) = A353518 (n + 1)

end A353518

/-! ## A353518.P15314537717279687228

`char[A181818(n+1)-1]`
-/

namespace A353518.P15314537717279687228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353518.P15314537717279687228

namespace A353518

/-- `char[A181818(n+1)-1]` -/
def P15314537717279687228.Spec : Prop :=
  ∀ n, (P15314537717279687228.a n : ℤ) = A353518 (n + 1)

end A353518

/-! ## A353518.P3235339133680290091

`C(A046523(A319626(n+1)), A319626(n+1))`
-/

namespace A353518.P3235339133680290091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (A319626 (n + 1)).toNat).toNat (A319626 (n + 1)).toNat

end

end A353518.P3235339133680290091

namespace A353518

/-- `C(A046523(A319626(n+1)), A319626(n+1))` -/
def P3235339133680290091.Spec : Prop :=
  ∀ n, (P3235339133680290091.a n : ℤ) = A353518 (n + 1)

end A353518

/-! ## A353518.P17367289795837771096

`and(A322585(A238745(n+1)), A322585(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353518

/-- `and(A322585(A238745(n+1)), A322585(n+1))` -/
def P17367289795837771096.Spec : Prop :=
  ∀ n, P17367289795837771096.a n = A353518 (n + 1)

theorem P17367289795837771096.correct : P17367289795837771096.Spec := by
  intro n
  simp only [A353518, Nat.add_sub_cancel]

end A353518

/-! ## A353518.P12182581511241555590

`A322585((n+1)/2^val(n+1, 2)*(n+1)/6^val(n+1, 6))`
-/

namespace A353518.P12182581511241555590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * ((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ)))).toNat

end

end A353518.P12182581511241555590

namespace A353518

/-- `A322585((n+1)/2^val(n+1, 2)*(n+1)/6^val(n+1, 6))` -/
def P12182581511241555590.Spec : Prop :=
  ∀ n, P12182581511241555590.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P13484466699041053196

`A355693(A319627(A319626(n+1))²)`
-/

namespace A353518.P13484466699041053196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355693 (A319627 (A319626 (n + 1)).toNat ^ 2).toNat

end

end A353518.P13484466699041053196

namespace A353518

/-- `A355693(A319627(A319626(n+1))²)` -/
def P13484466699041053196.Spec : Prop :=
  ∀ n, P13484466699041053196.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P2357340160217314616

`A209229(A034699(n+1)*A064989(n+1))`
-/

namespace A353518.P2357340160217314616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A034699 (n + 1) * A064989 (n + 1)).toNat

end

end A353518.P2357340160217314616

namespace A353518

/-- `A209229(A034699(n+1)*A064989(n+1))` -/
def P2357340160217314616.Spec : Prop :=
  ∀ n, P2357340160217314616.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P14860877461920784914

`A344438((n+1)*A000265(n+1))`
-/

namespace A353518.P14860877461920784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 ((n + 1 : ℤ) * A000265 (n + 1)).toNat

end

end A353518.P14860877461920784914

namespace A353518

/-- `A344438((n+1)*A000265(n+1))` -/
def P14860877461920784914.Spec : Prop :=
  ∀ n, P14860877461920784914.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P2073552363232886174

`A010054(xor(A000124(n), A349137(n+1)))`
-/

namespace A353518.P2073552363232886174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.xor (A000124 n) (A349137 (n + 1))).toNat

end

end A353518.P2073552363232886174

namespace A353518

/-- `A010054(xor(A000124(n), A349137(n+1)))` -/
def P2073552363232886174.Spec : Prop :=
  ∀ n, P2073552363232886174.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P6849101237284675816

`and(A079559(n), A366694(n))`
-/

namespace A353518.P6849101237284675816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079559 n) (A366694 n)

end

end A353518.P6849101237284675816

namespace A353518

/-- `and(A079559(n), A366694(n))` -/
def P6849101237284675816.Spec : Prop :=
  ∀ n, P6849101237284675816.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P6897028990560560438

`and(A232750(n), A366694(n))`
-/

namespace A353518.P6897028990560560438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232750 n) (A366694 n)

end

end A353518.P6897028990560560438

namespace A353518

/-- `and(A232750(n), A366694(n))` -/
def P6897028990560560438.Spec : Prop :=
  ∀ n, P6897028990560560438.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P2684238926468983218

`and(A263243(n), A366694(n))`
-/

namespace A353518.P2684238926468983218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263243 n) (A366694 n)

end

end A353518.P2684238926468983218

namespace A353518

/-- `and(A263243(n), A366694(n))` -/
def P2684238926468983218.Spec : Prop :=
  ∀ n, P2684238926468983218.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P13501473775569414421

`and(A267621(n), A366694(n))`
-/

namespace A353518.P13501473775569414421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267621 n) (A366694 n)

end

end A353518.P13501473775569414421

namespace A353518

/-- `and(A267621(n), A366694(n))` -/
def P13501473775569414421.Spec : Prop :=
  ∀ n, P13501473775569414421.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P18179526993348409765

`and(A010750(n), A353687(n+1))`
-/

namespace A353518.P18179526993348409765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010750 n) (A353687 (n + 1))

end

end A353518.P18179526993348409765

namespace A353518

/-- `and(A010750(n), A353687(n+1))` -/
def P18179526993348409765.Spec : Prop :=
  ∀ n, P18179526993348409765.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P12379498683046856911

`A373990(A004657(n))`
-/

namespace A353518.P12379498683046856911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373990 (A004657 n).toNat

end

end A353518.P12379498683046856911

namespace A353518

/-- `A373990(A004657(n))` -/
def P12379498683046856911.Spec : Prop :=
  ∀ n, P12379498683046856911.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P18319781906576837977

`and(A010746(n), A353687(n+1))`
-/

namespace A353518.P18319781906576837977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010746 n) (A353687 (n + 1))

end

end A353518.P18319781906576837977

namespace A353518

/-- `and(A010746(n), A353687(n+1))` -/
def P18319781906576837977.Spec : Prop :=
  ∀ n, P18319781906576837977.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P6755307944929966181

`A322585(A106831(2*n)-(n+1))`
-/

namespace A353518.P6755307944929966181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A106831 (2 * n) - (n + 1 : ℤ)).toNat

end

end A353518.P6755307944929966181

namespace A353518

/-- `A322585(A106831(2*n)-(n+1))` -/
def P6755307944929966181.Spec : Prop :=
  ∀ n, P6755307944929966181.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P13488143088054025307

`A331168(A033043(n+1))`
-/

namespace A353518.P13488143088054025307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (A033043 (n + 1)).toNat

end

end A353518.P13488143088054025307

namespace A353518

/-- `A331168(A033043(n+1))` -/
def P13488143088054025307.Spec : Prop :=
  ∀ n, P13488143088054025307.a n = A353518 (n + 1)

end A353518

/-! ## A353518.P5524527007085569372

`and(1, C(and(2*n+1, n+3)+2*n, n+1))`
-/

namespace A353518.P5524527007085569372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (Nat.land (2 * n + 1) (n + 3) + 2 * n) (n + 1))

end

end A353518.P5524527007085569372

namespace A353518

/-- `and(1, C(and(2*n+1, n+3)+2*n, n+1))` -/
def P5524527007085569372.Spec : Prop :=
  ∀ n, (P5524527007085569372.a n : ℤ) = A353518 (n + 1)

end A353518

/-!
# A353519: a(n) = 1 if n has an odd number of square divisors, otherwise 0.

The programs for A353519, the canonical program `A353519.P6983840421202540414` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353519 has offset 1).

The definition of A353519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353519.P6983840421202540414

`abs(A219009(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353519

/-- `abs(A219009(n+1))` -/
def P6983840421202540414.Spec : Prop :=
  ∀ n, P6983840421202540414.a n = A353519 (n + 1)

theorem P6983840421202540414.correct : P6983840421202540414.Spec := by
  intro n
  simp only [A353519, Nat.add_sub_cancel]

end A353519

/-! ## A353519.P16882082951392941487

`A000035(A046951(n+1))`
-/

namespace A353519.P16882082951392941487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046951 (n + 1)).toNat

end

end A353519.P16882082951392941487

namespace A353519

/-- `A000035(A046951(n+1))` -/
def P16882082951392941487.Spec : Prop :=
  ∀ n, P16882082951392941487.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P10830526637876839230

`∏{e}[n+1, 2-and(2, #)!]`
-/

namespace A353519.P10830526637876839230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorial (Nat.land 2 (Nat.factorization (f1 n) p)) : ℤ))

end

end A353519.P10830526637876839230

namespace A353519

/-- `∏{e}[n+1, 2-and(2, #)!]` -/
def P10830526637876839230.Spec : Prop :=
  ∀ n, P10830526637876839230.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P9959531294120155175

`and(1, ∏{e}[n+1, floor(#/2)+1])`
-/

namespace A353519.P9959531294120155175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1))

end

end A353519.P9959531294120155175

namespace A353519

/-- `and(1, ∏{e}[n+1, floor(#/2)+1])` -/
def P9959531294120155175.Spec : Prop :=
  ∀ n, P9959531294120155175.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P9741352291514351171

`A007425(n+1)%2`
-/

namespace A353519.P9741352291514351171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007425 (n + 1)) 2

end

end A353519.P9741352291514351171

namespace A353519

/-- `A007425(n+1)%2` -/
def P9741352291514351171.Spec : Prop :=
  ∀ n, P9741352291514351171.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P11016128785117964127

`A061391(n+1)%2`
-/

namespace A353519.P11016128785117964127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061391 (n + 1)) 2

end

end A353519.P11016128785117964127

namespace A353519

/-- `A061391(n+1)%2` -/
def P11016128785117964127.Spec : Prop :=
  ∀ n, P11016128785117964127.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P16479761606852204799

`A062367(n+1)%2`
-/

namespace A353519.P16479761606852204799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062367 (n + 1)) 2

end

end A353519.P16479761606852204799

namespace A353519

/-- `A062367(n+1)%2` -/
def P16479761606852204799.Spec : Prop :=
  ∀ n, P16479761606852204799.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P13008795766909058444

`A062368(n+1)%2`
-/

namespace A353519.P13008795766909058444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062368 (n + 1)) 2

end

end A353519.P13008795766909058444

namespace A353519

/-- `A062368(n+1)%2` -/
def P13008795766909058444.Spec : Prop :=
  ∀ n, P13008795766909058444.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P6995172510418212496

`A097988(n+1)%2`
-/

namespace A353519.P6995172510418212496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097988 (n + 1)) 2

end

end A353519.P6995172510418212496

namespace A353519

/-- `A097988(n+1)%2` -/
def P6995172510418212496.Spec : Prop :=
  ∀ n, P6995172510418212496.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P14114217210201128984

`A324986(n+1)%2`
-/

namespace A353519.P14114217210201128984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324986 (n + 1)) 2

end

end A353519.P14114217210201128984

namespace A353519

/-- `A324986(n+1)%2` -/
def P14114217210201128984.Spec : Prop :=
  ∀ n, P14114217210201128984.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P8153831492764069800

`A334784(n+1)%2`
-/

namespace A353519.P8153831492764069800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334784 (n + 1)) 2

end

end A353519.P8153831492764069800

namespace A353519

/-- `A334784(n+1)%2` -/
def P8153831492764069800.Spec : Prop :=
  ∀ n, P8153831492764069800.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P16386216408078506103

`A351655(n+1)%2`
-/

namespace A353519.P16386216408078506103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351655 (n + 1)) 2

end

end A353519.P16386216408078506103

namespace A353519

/-- `A351655(n+1)%2` -/
def P16386216408078506103.Spec : Prop :=
  ∀ n, P16386216408078506103.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P3609609836951446848

`A358380(n+1)%2`
-/

namespace A353519.P3609609836951446848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358380 (n + 1)) 2

end

end A353519.P3609609836951446848

namespace A353519

/-- `A358380(n+1)%2` -/
def P3609609836951446848.Spec : Prop :=
  ∀ n, P3609609836951446848.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P17625312000798288816

`A359038(n+1)%2`
-/

namespace A353519.P17625312000798288816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359038 (n + 1)) 2

end

end A353519.P17625312000798288816

namespace A353519

/-- `A359038(n+1)%2` -/
def P17625312000798288816.Spec : Prop :=
  ∀ n, P17625312000798288816.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P18111692939569064612

`A397686(n+1)%2`
-/

namespace A353519.P18111692939569064612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397686 (n + 1)) 2

end

end A353519.P18111692939569064612

namespace A353519

/-- `A397686(n+1)%2` -/
def P18111692939569064612.Spec : Prop :=
  ∀ n, P18111692939569064612.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P9185186075287483196

`and(1, A288571(n+1))`
-/

namespace A353519.P9185186075287483196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A288571 (n + 1))

end

end A353519.P9185186075287483196

namespace A353519

/-- `and(1, A288571(n+1))` -/
def P9185186075287483196.Spec : Prop :=
  ∀ n, P9185186075287483196.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P17683991639197186003

`and(1, A317529(n+1))`
-/

namespace A353519.P17683991639197186003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317529 (n + 1))

end

end A353519.P17683991639197186003

namespace A353519

/-- `and(1, A317529(n+1))` -/
def P17683991639197186003.Spec : Prop :=
  ∀ n, P17683991639197186003.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P7289150542969363202

`and(1, A326815(n+1))`
-/

namespace A353519.P7289150542969363202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A326815 (n + 1))

end

end A353519.P7289150542969363202

namespace A353519

/-- `and(1, A326815(n+1))` -/
def P7289150542969363202.Spec : Prop :=
  ∀ n, P7289150542969363202.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P17896253498897689530

`and(1, A344299(n+1))`
-/

namespace A353519.P17896253498897689530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A344299 (n + 1))

end

end A353519.P17896253498897689530

namespace A353519

/-- `and(1, A344299(n+1))` -/
def P17896253498897689530.Spec : Prop :=
  ∀ n, P17896253498897689530.a n = A353519 (n + 1)

end A353519

/-! ## A353519.P329422024176018643

`and(1, A369100(n+1))`
-/

namespace A353519.P329422024176018643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A369100 (n + 1))

end

end A353519.P329422024176018643

namespace A353519

/-- `and(1, A369100(n+1))` -/
def P329422024176018643.Spec : Prop :=
  ∀ n, P329422024176018643.a n = A353519 (n + 1)

end A353519

/-!
# A353520: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(i) = A003415(j), A003557(i) = A003557(j) and A053669(i) = A053669(j), for all i, j >= 1.

The programs for A353520, there is no canonical definition to state claims against.
-/

/-! ## A353520.P11177826605834811918

`A057427(A266530(n+1))+A295885(n+1)+A057427(n)`
-/

namespace A353520.P11177826605834811918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A266530 (n + 1)).toNat + (A295885 (n + 1) + A057427 n)

end

end A353520.P11177826605834811918

/-! ## A353520.P5736393166508940586

`A300235(n+1)+A057427(A161680(n))`
-/

namespace A353520.P5736393166508940586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (n + 1) + A057427 (A161680 n).toNat

end

end A353520.P5736393166508940586

/-!
# A353521: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(i) = A003415(j), A003557(i) = A003557(j) and A000035(i) = A000035(j), for all i, j >= 1.

The programs for A353521, there is no canonical definition to state claims against.
-/

/-! ## A353521.P57436341076464279

`A344025(n+1)+A043545(A062955(n+1))`
-/

namespace A353521.P57436341076464279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A043545 (A062955 (n + 1)).toNat

end

end A353521.P57436341076464279

/-! ## A353521.P13571060192367025862

`A344025(n+1)+A043545(n²)`
-/

namespace A353521.P13571060192367025862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A043545 (n ^ 2)

end

end A353521.P13571060192367025862

/-! ## A353521.P1445068194505162665

`A344025(n+1)+A157928(A132411(n))`
-/

namespace A353521.P1445068194505162665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A157928 (A132411 n).toNat

end

end A353521.P1445068194505162665

/-! ## A353521.P3729532522193513002

`A344025(n+1)+A157928(A046151(n+1))`
-/

namespace A353521.P3729532522193513002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A157928 (A046151 (n + 1)).toNat

end

end A353521.P3729532522193513002

/-! ## A353521.P15231492214837344761

`A344025(n+1)+A157928(A032527(n))`
-/

namespace A353521.P15231492214837344761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A157928 (A032527 n).toNat

end

end A353521.P15231492214837344761

/-! ## A353521.P11372205610963861523

`A157928(n)+A351236(n+1)+A008683(A075730(n+1))`
-/

namespace A353521.P11372205610963861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + (A351236 (n + 1) + A008683 (A075730 (n + 1)).toNat)

end

end A353521.P11372205610963861523

/-! ## A353521.P6815386897387332427

`A157928(n)+A351236(n+1)+A008683(A273374(n+1))`
-/

namespace A353521.P6815386897387332427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + (A351236 (n + 1) + A008683 (A273374 (n + 1)).toNat)

end

end A353521.P6815386897387332427

/-!
# A353522: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A003415(i) = A003415(j), for all i, j >= 1, where A000035 and A003415 compute the parity and the arithmetic derivative of their argument.

The programs for A353522, there is no canonical definition to state claims against.
-/

/-! ## A353522.P10200985823464708271

`A327970(n+1)-A057428(A159789(n))`
-/

namespace A353522.P10200985823464708271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327970 (n + 1) - A057428 (A159789 n).toNat

end

end A353522.P10200985823464708271

/-! ## A353522.P11387487135588928707

`A327970(n+1)+A073490(A327946(n+1))`
-/

namespace A353522.P11387487135588928707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327970 (n + 1) + A073490 (A327946 (n + 1)).toNat

end

end A353522.P11387487135588928707

/-! ## A353522.P7813284017320040311

`A327970(n+1)+A052409(A000041(n))`
-/

namespace A353522.P7813284017320040311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327970 (n + 1) + A052409 (A000041 n).toNat

end

end A353522.P7813284017320040311

/-! ## A353522.P9897984880839737040

`(A327970(n+1)-A052409(A001158(n+1))+1)%(n+1)+1`
-/

namespace A353522.P9897984880839737040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327970 (n + 1) - A052409 (A001158 (n + 1)).toNat + 1) (n + 1 : ℤ) + 1

end

end A353522.P9897984880839737040

/-!
# A353523: Lexicographically earliest infinite sequence such that a(i) = a(j) => A349905(i) = A349905(j) and A003557(i) = A003557(j), for all i, j >= 1.

The programs for A353523, there is no canonical definition to state claims against.
-/

/-! ## A353523.P9305527008419420179

`A295300(A300835(n+1)%A316888(n+2))`
-/

namespace A353523.P9305527008419420179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295300 (Int.tmod (A300835 (n + 1)) (A316888 (n + 2))).toNat

end

end A353523.P9305527008419420179

/-! ## A353523.P7000032172058790989

`A295880(A305800(n+1)%A293893(n+1))`
-/

namespace A353523.P7000032172058790989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (Int.tmod (A305800 (n + 1)) (A293893 (n + 1))).toNat

end

end A353523.P7000032172058790989

/-! ## A353523.P1269286226463385351

`A295880(A319348(n+1)%A293893(n+1))`
-/

namespace A353523.P1269286226463385351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (Int.tmod (A319348 (n + 1)) (A293893 (n + 1))).toNat

end

end A353523.P1269286226463385351

/-! ## A353523.P1306734149739859845

`A295880(A319693(n+1)%A293893(n+1))`
-/

namespace A353523.P1306734149739859845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (Int.tmod (A319693 (n + 1)) (A293893 (n + 1))).toNat

end

end A353523.P1306734149739859845

/-!
# A353524: A003557 applied to the prime shadow of primorial base exp-function: a(n) = A003557(A181819(A276086(n))).

The programs for A353524, there is no canonical definition to state claims against.
-/

/-! ## A353524.P12261928243041202554

`A003557(A328835(n))`
-/

namespace A353524.P12261928243041202554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A328835 n).toNat

end

end A353524.P12261928243041202554

/-! ## A353524.P13670525635692833499

`A351944(A276086(n))`
-/

namespace A353524.P13670525635692833499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (A276086 n).toNat

end

end A353524.P13670525635692833499

/-! ## A353524.P16739041962802244895

`A003557(A181819(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353524.P16739041962802244895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A181819 (A276086 n).toNat).toNat

end

end A353524.P16739041962802244895

/-! ## A353524.P8501798596745993386

`∑{d}[A328835(n), A300717(#)]`
-/

namespace A353524.P8501798596745993386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300717 d

end

end A353524.P8501798596745993386

/-! ## A353524.P11580474976970356089

`A328835(n)/gcd(A319865(n+1), A328835(n))`
-/

namespace A353524.P11580474976970356089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328835 n : ℚ) / (Int.gcd (A319865 (n + 1)) (A328835 n) : ℚ)

end

end A353524.P11580474976970356089

/-! ## A353524.P4391418488933134748

`A062760(17*A328835(n))`
-/

namespace A353524.P4391418488933134748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (17 * A328835 n).toNat

end

end A353524.P4391418488933134748

/-! ## A353524.P8878412817216518407

`A003557(∏{e}[A278226(n), A000040(#)])`
-/

namespace A353524.P8878412817216518407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353524.P8878412817216518407

/-! ## A353524.P7818874252326082671

`A000190(A328835(n)%A229521(n+1))`
-/

namespace A353524.P7818874252326082671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (Int.tmod (A328835 n) (A229521 (n + 1))).toNat

end

end A353524.P7818874252326082671

/-! ## A353524.P12324093455421851649

`A000190(lcm(A007947(n+1), A328835(n)))`
-/

namespace A353524.P12324093455421851649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (Int.lcm (A007947 (n + 1)) (A328835 n))

end

end A353524.P12324093455421851649

/-! ## A353524.P8833969796241850292

`A003557(∏{e}[A276086(n), A000040(#)])`
-/

namespace A353524.P8833969796241850292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353524.P8833969796241850292

/-! ## A353524.P16040197017580357444

`A295657(A328835(n)²)`
-/

namespace A353524.P16040197017580357444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A328835 n ^ 2).toNat

end

end A353524.P16040197017580357444

/-! ## A353524.P18209976979105570560

`A295658(A328835(n)²)`
-/

namespace A353524.P18209976979105570560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (A328835 n ^ 2).toNat

end

end A353524.P18209976979105570560

/-!
# A353525: a(n) = 1 if the number of trailing zeros in primorial base representation of n is odd, otherwise 0.

The programs for A353525, there is no canonical definition to state claims against.
-/

/-! ## A353525.P2859427358221079163

`A276084(n+1)%2`
-/

namespace A353525.P2859427358221079163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276084 (n + 1)) 2

end

end A353525.P2859427358221079163

/-! ## A353525.P16130691092730379752

`gcd(2, A257993(n+1))-1`
-/

namespace A353525.P16130691092730379752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A257993 (n + 1)) : ℤ) - 1

end

end A353525.P16130691092730379752

/-! ## A353525.P4429676026607699586

`A092248(A328479(n+1))`
-/

namespace A353525.P4429676026607699586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A328479 (n + 1)).toNat

end

end A353525.P4429676026607699586

/-! ## A353525.P8919610683610867466

`and(A000035(n), A276084(n+1))`
-/

namespace A353525.P8919610683610867466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 n) (A276084 (n + 1))

end

end A353525.P8919610683610867466

/-! ## A353525.P13622090296094272803

`and(A000290(n), A276084(n+1))`
-/

namespace A353525.P13622090296094272803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000290 n) (A276084 (n + 1))

end

end A353525.P13622090296094272803

/-! ## A353525.P18403011468710593692

`and(A000583(n), A276084(n+1))`
-/

namespace A353525.P18403011468710593692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000583 n) (A276084 (n + 1))

end

end A353525.P18403011468710593692

/-! ## A353525.P7460945789900849877

`and(A001014(n), A276084(n+1))`
-/

namespace A353525.P7460945789900849877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001014 n) (A276084 (n + 1))

end

end A353525.P7460945789900849877

/-! ## A353525.P8297611900692075264

`and(A001016(n), A276084(n+1))`
-/

namespace A353525.P8297611900692075264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001016 n) (A276084 (n + 1))

end

end A353525.P8297611900692075264

/-! ## A353525.P14604215371020478909

`and(A001535(n), A276084(n+1))`
-/

namespace A353525.P14604215371020478909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A276084 (n + 1))

end

end A353525.P14604215371020478909

/-! ## A353525.P4977382503975636318

`and(A001546(n), A276084(n+1))`
-/

namespace A353525.P4977382503975636318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A276084 (n + 1))

end

end A353525.P4977382503975636318

/-! ## A353525.P4107229295768737008

`and(A001737(n), A276084(n+1))`
-/

namespace A353525.P4107229295768737008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001737 n) (A276084 (n + 1))

end

end A353525.P4107229295768737008

/-! ## A353525.P2000660077563174844

`and(A008454(n), A276084(n+1))`
-/

namespace A353525.P2000660077563174844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008454 n) (A276084 (n + 1))

end

end A353525.P2000660077563174844

/-! ## A353525.P10682841383147638298

`and(A016760(n), A276084(n+1))`
-/

namespace A353525.P10682841383147638298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A276084 (n + 1))

end

end A353525.P10682841383147638298

/-! ## A353525.P5608457651838750380

`and(A016772(n), A276084(n+1))`
-/

namespace A353525.P5608457651838750380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016772 n) (A276084 (n + 1))

end

end A353525.P5608457651838750380

/-! ## A353525.P16774090963245414005

`and(A016796(n), A276084(n+1))`
-/

namespace A353525.P16774090963245414005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016796 n) (A276084 (n + 1))

end

end A353525.P16774090963245414005

/-! ## A353525.P5043346366563569111

`and(A017286(n), A276084(n+1))`
-/

namespace A353525.P5043346366563569111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A276084 (n + 1))

end

end A353525.P5043346366563569111

/-! ## A353525.P3028004276723822452

`and(A017310(n), A276084(n+1))`
-/

namespace A353525.P3028004276723822452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A276084 (n + 1))

end

end A353525.P3028004276723822452

/-! ## A353525.P5628156773572804417

`and(A017334(n), A276084(n+1))`
-/

namespace A353525.P5628156773572804417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A276084 (n + 1))

end

end A353525.P5628156773572804417

/-! ## A353525.P17367453338618380193

`and(A017358(n), A276084(n+1))`
-/

namespace A353525.P17367453338618380193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A276084 (n + 1))

end

end A353525.P17367453338618380193

/-!
# A353526: The smallest prime not dividing n, reduced modulo 4.

The programs for A353526, there is no canonical definition to state claims against.
-/

/-! ## A353526.P8083696828509853762

`A053669(n+1)%4`
-/

namespace A353526.P8083696828509853762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053669 (n + 1)) 4

end

end A353526.P8083696828509853762

/-!
# A353527: The smallest prime not dividing 2*n, reduced modulo 4.

The programs for A353527, there is no canonical definition to state claims against.
-/

/-! ## A353527.P10904464893590254267

`A353526(2*(n+1))`
-/

namespace A353527.P10904464893590254267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353526 (2 * (n + 1))

end

end A353527.P10904464893590254267

/-!
# A353529: 

The programs for A353529, there is no canonical definition to state claims against.
-/

/-! ## A353529.P2515141070504357592

`4%A353526(n+1)`
-/

namespace A353529.P2515141070504357592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A353526 (n + 1))

end

end A353529.P2515141070504357592

/-!
# A353530: Numbers k such that the smallest prime that does not divide them is of the form 4m+1.

The programs for A353530, there is no canonical definition to state claims against.
-/

/-! ## A353530.P12019192851702646708

`6*comp[5*n]`
-/

namespace A353530.P12019192851702646708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353530.P12019192851702646708

/-! ## A353530.P2229695699647272034

`a(n-4)+30` with `a(0)=6, a(1)=12, a(2)=18, a(3)=24`
-/

namespace A353530.P2229695699647272034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 12, 18, 24] fun n a =>
  a (n - 4) + 30

end

end A353530.P2229695699647272034

/-! ## A353530.P13212703215193709814

`record[6*lcm(5, n+1)/5]`
-/

namespace A353530.P13212703215193709814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((Nat.lcm 5 (n + 1) : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353530.P13212703215193709814

/-! ## A353530.P11259153038977131260

`∑[6%xor(n, n-1)+6]`
-/

namespace A353530.P11259153038977131260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (Int.xor (n : ℤ) ((n : ℤ) - 1)) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353530.P11259153038977131260

/-! ## A353530.P10424902139787488417

`record[6*n^((n^4)%5)]`
-/

namespace A353530.P10424902139787488417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ (n ^ 4 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353530.P10424902139787488417

/-! ## A353530.P4221922233907195985

`lcm(2, 6*floor((n+1)*atan(3)))`
-/

namespace A353530.P4221922233907195985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (6 * ⌊(n + 1 : ℝ) * Real.arctan (3 : ℝ)⌋)

end

end A353530.P4221922233907195985

/-! ## A353530.P13267313425054079216

`∑[gcd(2*a(n-1), lcm(6, n))]` with `a(0)=6`
-/

namespace A353530.P13267313425054079216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  Nat.gcd (2 * f1 (n - 1)) (Nat.lcm 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353530.P13267313425054079216

/-! ## A353530.P8702436806829629191

`(3*(or(3, 5*n)+2)-3)/2`
-/

namespace A353530.P8702436806829629191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (Nat.lor 3 (5 * n) + 2) : ℤ) - 3 : ℚ) / 2

end

end A353530.P8702436806829629191

/-! ## A353530.P10637250304329479352

`floor((n+1)*atan(3))+5*floor((n+1)*atan(3))`
-/

namespace A353530.P10637250304329479352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.arctan (3 : ℝ)⌋ + 5 * ⌊(n + 1 : ℝ) * Real.arctan (3 : ℝ)⌋

end

end A353530.P10637250304329479352

/-! ## A353530.P358653416267947271

`(A096022(n+1)-3)/2`
-/

namespace A353530.P358653416267947271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096022 (n + 1) - 3 : ℚ) / 2

end

end A353530.P358653416267947271

/-!
# A353531: Numbers k such that the smallest prime that does not divide them is of the form 4m+3.

The programs for A353531, there is no canonical definition to state claims against.
-/

/-! ## A353531.P197971438839150731

`comp[lcm(n, (n^4)%10)]`
-/

namespace A353531.P197971438839150731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 4 % 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353531.P197971438839150731

/-! ## A353531.P7474453484545617033

`2*comp[3*comp[5*(n+1)]]`
-/

namespace A353531.P7474453484545617033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353531.P7474453484545617033

/-! ## A353531.P11590850559906194272

`∪[and(3*n, -2)+2, 10*(n+1)]`
-/

namespace A353531.P11590850559906194272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A353531.P11590850559906194272

/-! ## A353531.P11392512761581185544

`comp[lcm(n, A070514(n))]`
-/

namespace A353531.P11392512761581185544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A070514 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353531.P11392512761581185544

/-! ## A353531.P5849846691153541782

`∑[gcd(4, A315208(2*n+1))]`
-/

namespace A353531.P5849846691153541782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A315208 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353531.P5849846691153541782

/-! ## A353531.P11260911629691233237

`A312556(n+1)-2*(n+1)`
-/

namespace A353531.P11260911629691233237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 (n + 1) - (2 * (n + 1) : ℤ)

end

end A353531.P11260911629691233237

/-! ## A353531.P11557667867382935765

`∑[A000010(Δ[A310442(n)])]`
-/

namespace A353531.P11557667867382935765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353531.P11557667867382935765

/-! ## A353531.P11396227811217651996

`∑[A000010(Δ[A310471(n)])]`
-/

namespace A353531.P11396227811217651996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353531.P11396227811217651996

/-! ## A353531.P10383438528152325879

`∑[A000010(Δ[A311932(n)])]`
-/

namespace A353531.P10383438528152325879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353531.P10383438528152325879

/-!
# A353532: T(n,m) is the number of non-congruent quadrilaterals with integer vertex coordinates (x1,1), (n,y2), (x3,m), (1,y4), 1 < x1, x3 < n, 1 < y2, y4 < m, m <= n, such that the 6 distances between the 4 vertices are distinct.

The programs for A353532, there is no canonical definition to state claims against.
-/

/-! ## A353532.P15511568068796960489

`A353449(n+3)+A353451(n+3)+A353450(n+3)`
-/

namespace A353532.P15511568068796960489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353449 (n + 3) + (A353451 (n + 3) + A353450 (n + 3))

end

end A353532.P15511568068796960489

/-!
# A353534: a(n) is the least prime p such that the numerator of the sum of reciprocals of the 2*n+1 consecutive primes starting with p is a prime.

The programs for A353534, there is no canonical definition to state claims against.
-/

/-! ## A353534.P1552974840237236319

`A129759(A160786(n+1)^A112798(n+3))`
-/

namespace A353534.P1552974840237236319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (SequenceMachineLib.roundAway ((A160786 (n + 1) : ℚ) ^ (A112798 (n + 3) : ℤ))).toNat

end

end A353534.P1552974840237236319

/-!
# A353535: a(n) is the cardinality of the set S(n) obtained by the following process: Start with the set S(0) of a single monomial {x}. In step n, the set S(n) is the union of all polynomials obtained by the m*(m+1)/2 sums and the m*(m+1)/2 products formed with the pairs of polynomials in the Cartesian product S(n-1) x S(n-1) with m = card(S(n-1)).

The programs for A353535, there is no canonical definition to state claims against.
-/

/-! ## A353535.P6495792948387609887

`A240208(∑[2^n]-n)+n`
-/

namespace A353535.P6495792948387609887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240208 (∑ j ∈ Finset.range (n + 1), f1 j - n) + (n : ℤ)

end

end A353535.P6495792948387609887

/-!
# A353536: a(n) is the cardinality of the set S(n) obtained by the following process: Start with the set S(0) = {i}, where i is the imaginary unit. In step n, the set S(n) is the union of all Gaussian integers obtained by the m*(m+1)/2 sums and the m*(m+1)/2 products formed with the pairs of numbers in the Cartesian product S(n-1) x S(n-1) with m = card(S(n-1)).

The programs for A353536, there is no canonical definition to state claims against.
-/

/-! ## A353536.P434863830755757521

`A303936(∑[n!²])`
-/

namespace A353536.P434863830755757521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353536.P434863830755757521

/-!
# A353537: Numbers whose abundancy index is larger than Pi^2/6.

The programs for A353537, the canonical program `A353537.P733985152594621227` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353537 has offset 1).

The definition of A353537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353537.P733985152594621227

`lt[A124741(A066507(n+1)), A039653(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353537

/-- `lt[A124741(A066507(n+1)), A039653(n)]` -/
def P733985152594621227.Spec : Prop :=
  ∀ n, (P733985152594621227.a n : ℤ) = A353537 (n + 1)

theorem P733985152594621227.correct : P733985152594621227.Spec := by
  intro n
  simp only [A353537, Nat.add_sub_cancel]

end A353537

/-! ## A353537.P7877389463912635021

`lt[A026741(n), A262253(A032741(n))]`
-/

namespace A353537.P7877389463912635021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262253 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P7877389463912635021

namespace A353537

/-- `lt[A026741(n), A262253(A032741(n))]` -/
def P7877389463912635021.Spec : Prop :=
  ∀ n, (P7877389463912635021.a n : ℤ) = A353537 (n + 1)

end A353537

/-! ## A353537.P3334193575086448408

`lt[A246692(n+1), A004207(A323774(n))]`
-/

namespace A353537.P3334193575086448408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (A323774 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P3334193575086448408

namespace A353537

/-- `lt[A246692(n+1), A004207(A323774(n))]` -/
def P3334193575086448408.Spec : Prop :=
  ∀ n, (P3334193575086448408.a n : ℤ) = A353537 (n + 1)

end A353537

/-! ## A353537.P6381775990938885530

`lt[A342498(A004526(n)), A327642(n)]`
-/

namespace A353537.P6381775990938885530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P6381775990938885530

namespace A353537

/-- `lt[A342498(A004526(n)), A327642(n)]` -/
def P6381775990938885530.Spec : Prop :=
  ∀ n, (P6381775990938885530.a n : ℤ) = A353537 (n + 1)

end A353537

/-! ## A353537.P3142413154078092648

`lt[A342498(A110654(n)), A327642(n)]`
-/

namespace A353537.P3142413154078092648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A110654 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P3142413154078092648

namespace A353537

/-- `lt[A342498(A110654(n)), A327642(n)]` -/
def P3142413154078092648.Spec : Prop :=
  ∀ n, (P3142413154078092648.a n : ℤ) = A353537 (n + 1)

end A353537

/-! ## A353537.P4021005672688240034

`lt[A342498(A123108(n)), A327642(n)]`
-/

namespace A353537.P4021005672688240034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A123108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P4021005672688240034

namespace A353537

/-- `lt[A342498(A123108(n)), A327642(n)]` -/
def P4021005672688240034.Spec : Prop :=
  ∀ n, (P4021005672688240034.a n : ℤ) = A353537 (n + 1)

end A353537

/-! ## A353537.P129188733487080889

`lt[A342498(A002265(2*n)), A327642(n)]`
-/

namespace A353537.P129188733487080889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A002265 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353537.P129188733487080889

namespace A353537

/-- `lt[A342498(A002265(2*n)), A327642(n)]` -/
def P129188733487080889.Spec : Prop :=
  ∀ n, (P129188733487080889.a n : ℤ) = A353537 (n + 1)

end A353537

/-!
# A353538: Numbers k such that k and k+1 both have an abundancy index that is larger than Pi^2/6.

The programs for A353538, the canonical program `A353538.P11626105051398275576` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353538 has offset 1).

The definition of A353538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353538.P11626105051398275576

`∩[A353537(n+1)-1, A353537(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353538

/-- `∩[A353537(n+1)-1, A353537(n+1)]` -/
def P11626105051398275576.Spec : Prop :=
  ∀ n, (P11626105051398275576.a n : ℤ) = A353538 (n + 1)

theorem P11626105051398275576.correct : P11626105051398275576.Spec := by
  intro n
  simp only [A353538, Nat.add_sub_cancel]

end A353538

/-! ## A353538.P16752424896947240126

`∩[A353537(n+1), A233583(A353537(n+1))]`
-/

namespace A353538.P16752424896947240126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A353537 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353538.P16752424896947240126

namespace A353538

/-- `∩[A353537(n+1), A233583(A353537(n+1))]` -/
def P16752424896947240126.Spec : Prop :=
  ∀ n, (P16752424896947240126.a n : ℤ) = A353538 (n + 1)

end A353538

/-!
# A353539: Starts of runs of 3 consecutive numbers whose abundancy index is larger than Pi^2/6.

The programs for A353539, the canonical program `A353539.P12462210052388582896` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353539 has offset 1).

The definition of A353539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353539.P12462210052388582896

`∩[A353538(n+1)-1, A353538(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353539

/-- `∩[A353538(n+1)-1, A353538(n+1)]` -/
def P12462210052388582896.Spec : Prop :=
  ∀ n, (P12462210052388582896.a n : ℤ) = A353539 (n + 1)

theorem P12462210052388582896.correct : P12462210052388582896.Spec := by
  intro n
  simp only [A353539, Nat.add_sub_cancel]

end A353539

/-! ## A353539.P2099204115401762816

`∩[A353538(n+1), A233583(A353538(n+1))]`
-/

namespace A353539.P2099204115401762816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A353538 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353539.P2099204115401762816

namespace A353539

/-- `∩[A353538(n+1), A233583(A353538(n+1))]` -/
def P2099204115401762816.Spec : Prop :=
  ∀ n, (P2099204115401762816.a n : ℤ) = A353539 (n + 1)

end A353539

/-!
# A353543: Primitive terms of A353537.

The programs for A353543, there is no canonical definition to state claims against.
-/

/-! ## A353543.P6223381171297454320

`∩[A091376(n+1), A178863(n+1)]`
-/

namespace A353543.P6223381171297454320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353543.P6223381171297454320

/-!
# A353545: a(n) is the numerator of Sum_{k=1..n} 1 / (k*k!).

The programs for A353545, there is no canonical definition to state claims against.
-/

/-! ## A353545.P14444484270298005518

`A000265(A061572(n+1))`
-/

namespace A353545.P14444484270298005518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A061572 (n + 1)).toNat

end

end A353545.P14444484270298005518

/-!
# A353546: Expansion of e.g.f. -log(1-2*x) * exp(x)/2.

The programs for A353546, the canonical program `A353546.P16299004775311491341` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353546 has offset 0).

The definition of A353546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353546.P16299004775311491341

`1+(2*n-1)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353546

/-- `1+(2*n-1)*a(n-1)-2*(n-1)*a(n-2)` -/
def P16299004775311491341.Spec : Prop :=
  ∀ n, P16299004775311491341.a n = A353546 n

theorem P16299004775311491341.correct : P16299004775311491341.Spec := by
  intro n
  simp only [A353546]

end A353546

/-! ## A353546.P15079298667221199545

`∑[2*(n-1)*a(n-1)+1]` with `a(0)=0`
-/

namespace A353546.P15079298667221199545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * (((n : ℤ) - 1) * f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353546.P15079298667221199545

namespace A353546

/-- `∑[2*(n-1)*a(n-1)+1]` -/
def P15079298667221199545.Spec : Prop :=
  ∀ n, P15079298667221199545.a n = A353546 n

end A353546

/-! ## A353546.P13734114943441843122

`∑[1-2*(1-n)*a(n-1)]` with `a(0)=0`
-/

namespace A353546.P13734114943441843122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - 2 * (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353546.P13734114943441843122

namespace A353546

/-- `∑[1-2*(1-n)*a(n-1)]` -/
def P13734114943441843122.Spec : Prop :=
  ∀ n, P13734114943441843122.a n = A353546 n

end A353546

/-! ## A353546.P3134845348660843112

`(∑[A099760(n)]-1)/2`
-/

namespace A353546.P3134845348660843112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A353546.P3134845348660843112

namespace A353546

/-- `(∑[A099760(n)]-1)/2` -/
def P3134845348660843112.Spec : Prop :=
  ∀ n, P3134845348660843112.a n = (A353546 n : ℚ)

end A353546

/-! ## A353546.P6902153364725035241

`∑[floor(e^(1/2)*n!*2^n)]-floor(e^(1/2)*n!*2^n)`
-/

namespace A353546.P6902153364725035241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

end

end A353546.P6902153364725035241

namespace A353546

/-- `∑[floor(e^(1/2)*n!*2^n)]-floor(e^(1/2)*n!*2^n)` -/
def P6902153364725035241.Spec : Prop :=
  ∀ n, P6902153364725035241.a n = A353546 n

end A353546

/-! ## A353546.P18370457552062432144

`∑[floor(e^(1/2)*n!*2^n)]%floor(e^(1/2)*n!*2^n)`
-/

namespace A353546.P18370457552062432144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

end

end A353546.P18370457552062432144

namespace A353546

/-- `∑[floor(e^(1/2)*n!*2^n)]%floor(e^(1/2)*n!*2^n)` -/
def P18370457552062432144.Spec : Prop :=
  ∀ n, P18370457552062432144.a n = A353546 n

end A353546

/-! ## A353546.P3127491795776454941

`∑[floor(e^(1/2)*n!*2^n)]-A010844(n)`
-/

namespace A353546.P3127491795776454941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010844 n

end

end A353546.P3127491795776454941

namespace A353546

/-- `∑[floor(e^(1/2)*n!*2^n)]-A010844(n)` -/
def P3127491795776454941.Spec : Prop :=
  ∀ n, P3127491795776454941.a n = A353546 n

end A353546

/-! ## A353546.P9115130396306648848

`∑[A010844(n)]-A010844(n)`
-/

namespace A353546.P9115130396306648848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010844 n

end

end A353546.P9115130396306648848

namespace A353546

/-- `∑[A010844(n)]-A010844(n)` -/
def P9115130396306648848.Spec : Prop :=
  ∀ n, P9115130396306648848.a n = A353546 n

end A353546

/-!
# A353547: Expansion of e.g.f. -log(1-3*x) * exp(x)/3.

The programs for A353547, the canonical program `A353547.P15400860680080207434` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353547 has offset 0).

The definition of A353547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353547.P15400860680080207434

`1+(3*n-2)*a(n-1)-3*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353547

/-- `1+(3*n-2)*a(n-1)-3*(n-1)*a(n-2)` -/
def P15400860680080207434.Spec : Prop :=
  ∀ n, P15400860680080207434.a n = A353547 n

theorem P15400860680080207434.correct : P15400860680080207434.Spec := by
  intro n
  simp only [A353547]

end A353547

/-! ## A353547.P5543734426324311369

`∑[3*(n-1)*a(n-1)+1]` with `a(0)=0`
-/

namespace A353547.P5543734426324311369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * (((n : ℤ) - 1) * f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353547.P5543734426324311369

namespace A353547

/-- `∑[3*(n-1)*a(n-1)+1]` -/
def P5543734426324311369.Spec : Prop :=
  ∀ n, P5543734426324311369.a n = A353547 n

end A353547

/-! ## A353547.P11928991419901877441

`∑[1-3*(1-n)*a(n-1)]` with `a(0)=0`
-/

namespace A353547.P11928991419901877441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - 3 * ((1 - (n : ℤ)) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353547.P11928991419901877441

namespace A353547

/-- `∑[1-3*(1-n)*a(n-1)]` -/
def P11928991419901877441.Spec : Prop :=
  ∀ n, P11928991419901877441.a n = A353547 n

end A353547

/-! ## A353547.P1500177215383683453

`∑[A010845(n)]-A010845(n)`
-/

namespace A353547.P1500177215383683453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010845 n

end

end A353547.P1500177215383683453

namespace A353547

/-- `∑[A010845(n)]-A010845(n)` -/
def P1500177215383683453.Spec : Prop :=
  ∀ n, P1500177215383683453.a n = A353547 n

end A353547

/-! ## A353547.P7887359795502359072

`∑[A010845(n+1)]%A010845(n)`
-/

namespace A353547.P7887359795502359072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A010845 n)

end

end A353547.P7887359795502359072

namespace A353547

/-- `∑[A010845(n+1)]%A010845(n)` -/
def P7887359795502359072.Spec : Prop :=
  ∀ n, P7887359795502359072.a n = A353547 n

end A353547

/-!
# A353548: Expansion of e.g.f. -log(1-4*x) * exp(x)/4.

The programs for A353548, the canonical program `A353548.P6348088961787699949` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353548 has offset 0).

The definition of A353548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353548.P6348088961787699949

`1+(4*n-3)*a(n-1)-4*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353548

/-- `1+(4*n-3)*a(n-1)-4*(n-1)*a(n-2)` -/
def P6348088961787699949.Spec : Prop :=
  ∀ n, P6348088961787699949.a n = A353548 n

theorem P6348088961787699949.correct : P6348088961787699949.Spec := by
  intro n
  simp only [A353548]

end A353548

/-! ## A353548.P7502674620466845770

`∑[4*(n-1)*a(n-1)+1]` with `a(0)=0`
-/

namespace A353548.P7502674620466845770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 * (((n : ℤ) - 1) * f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353548.P7502674620466845770

namespace A353548

/-- `∑[4*(n-1)*a(n-1)+1]` -/
def P7502674620466845770.Spec : Prop :=
  ∀ n, P7502674620466845770.a n = A353548 n

end A353548

/-! ## A353548.P14023250679280663046

`∑[or(1, 4*(n-1)*a(n-1))]` with `a(0)=0`
-/

namespace A353548.P14023250679280663046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 1 (4 * (((n : ℤ) - 1) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353548.P14023250679280663046

namespace A353548

/-- `∑[or(1, 4*(n-1)*a(n-1))]` -/
def P14023250679280663046.Spec : Prop :=
  ∀ n, P14023250679280663046.a n = A353548 n

end A353548

/-! ## A353548.P4031521997368133899

`∑[(A130824(n)-2)*a(n-1)+1]` with `a(0)=0`
-/

namespace A353548.P4031521997368133899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (A130824 n - 2) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353548.P4031521997368133899

namespace A353548

/-- `∑[(A130824(n)-2)*a(n-1)+1]` -/
def P4031521997368133899.Spec : Prop :=
  ∀ n, P4031521997368133899.a n = A353548 n

end A353548

/-! ## A353548.P15006845767460701837

`∑[A056545(n)]-A056545(n)`
-/

namespace A353548.P15006845767460701837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056545 n

end

end A353548.P15006845767460701837

namespace A353548

/-- `∑[A056545(n)]-A056545(n)` -/
def P15006845767460701837.Spec : Prop :=
  ∀ n, P15006845767460701837.a n = A353548 n

end A353548

/-! ## A353548.P17455029030817228406

`∑[A056545(n+1)]%A056545(n)`
-/

namespace A353548.P17455029030817228406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A056545 n)

end

end A353548.P17455029030817228406

namespace A353548

/-- `∑[A056545(n+1)]%A056545(n)` -/
def P17455029030817228406.Spec : Prop :=
  ∀ n, P17455029030817228406.a n = A353548 n

end A353548

/-!
# A353549: Expansion of e.g.f. log(1+3*x) * exp(x)/3.

The programs for A353549, there is no canonical definition to state claims against.
-/

/-! ## A353549.P6189120787949534972

`∑[1-3*(n-1)*a(n-1)]` with `a(0)=0`
-/

namespace A353549.P6189120787949534972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - 3 * (((n : ℤ) - 1) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353549.P6189120787949534972

/-! ## A353549.P8149623661658482773

`∑[(3-A008486(n))*a(n-1)+1]` with `a(0)=0`
-/

namespace A353549.P8149623661658482773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 - A008486 n) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353549.P8149623661658482773

/-!
# A353551: a(n) = Sum_{k=1..n} tau(k^3), where tau is the number of divisors function A000005.

The programs for A353551, the canonical program `A353551.P17926714260761727250` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353551 has offset 0).

The definition of A353551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353551.P17926714260761727250

`∑[A048785(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353551

/-- `∑[A048785(n)]` -/
def P17926714260761727250.Spec : Prop :=
  ∀ n, P17926714260761727250.a n = A353551 n

theorem P17926714260761727250.correct : P17926714260761727250.Spec := by
  intro n
  simp only [A353551]

end A353551

/-! ## A353551.P461585405876612623

`∑[∑{d}[n, A074816(#)]]`
-/

namespace A353551.P461585405876612623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A074816 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P461585405876612623

namespace A353551

/-- `∑[∑{d}[n, A074816(#)]]` -/
def P461585405876612623.Spec : Prop :=
  ∀ n, P461585405876612623.a n = A353551 n

end A353551

/-! ## A353551.P2236632619654012854

`∑[∑{d}[n, 3^A001221(#)]]`
-/

namespace A353551.P2236632619654012854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (3 : ℚ) ^ (A001221 d : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P2236632619654012854

namespace A353551

/-- `∑[∑{d}[n, 3^A001221(#)]]` -/
def P2236632619654012854.Spec : Prop :=
  ∀ n, P2236632619654012854.a n = (A353551 n : ℚ)

end A353551

/-! ## A353551.P10517125711238437423

`∑[∑{d}[n², A000005(A007913(#))]]`
-/

namespace A353551.P10517125711238437423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (A007913 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P10517125711238437423

namespace A353551

/-- `∑[∑{d}[n², A000005(A007913(#))]]` -/
def P10517125711238437423.Spec : Prop :=
  ∀ n, P10517125711238437423.a n = A353551 n

end A353551

/-! ## A353551.P705863117172261725

`∑[∑{d}[n, A000005(A007947(#)²)]]`
-/

namespace A353551.P705863117172261725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (A007947 d ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P705863117172261725

namespace A353551

/-- `∑[∑{d}[n, A000005(A007947(#)²)]]` -/
def P705863117172261725.Spec : Prop :=
  ∀ n, P705863117172261725.a n = A353551 n

end A353551

/-! ## A353551.P17055222306382739828

`∑[∑{d}[n², A055076(#)]]`
-/

namespace A353551.P17055222306382739828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A055076 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P17055222306382739828

namespace A353551

/-- `∑[∑{d}[n², A055076(#)]]` -/
def P17055222306382739828.Spec : Prop :=
  ∀ n, P17055222306382739828.a n = A353551 n

end A353551

/-! ## A353551.P11639458220544010400

`∑[∑{d}[n², A056624(#)]]`
-/

namespace A353551.P11639458220544010400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A056624 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P11639458220544010400

namespace A353551

/-- `∑[∑{d}[n², A056624(#)]]` -/
def P11639458220544010400.Spec : Prop :=
  ∀ n, P11639458220544010400.a n = A353551 n

end A353551

/-! ## A353551.P4320180274955026508

`∑[∏{e}[n^3, #+1]]-1`
-/

namespace A353551.P4320180274955026508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A353551.P4320180274955026508

namespace A353551

/-- `∑[∏{e}[n^3, #+1]]-1` -/
def P4320180274955026508.Spec : Prop :=
  ∀ n, P4320180274955026508.a n = A353551 n

end A353551

/-! ## A353551.P800913815540619121

`∑[∑{d}[n^3, gcd(#, n+1)]]`
-/

namespace A353551.P800913815540619121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd d (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P800913815540619121

namespace A353551

/-- `∑[∑{d}[n^3, gcd(#, n+1)]]` -/
def P800913815540619121.Spec : Prop :=
  ∀ n, (P800913815540619121.a n : ℤ) = A353551 n

end A353551

/-! ## A353551.P10549271804457956170

`∑[∏{e}[n*n², #+1]-1]+n`
-/

namespace A353551.P10549271804457956170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A353551.P10549271804457956170

namespace A353551

/-- `∑[∏{e}[n*n², #+1]-1]+n` -/
def P10549271804457956170.Spec : Prop :=
  ∀ n, P10549271804457956170.a n = A353551 n

end A353551

/-! ## A353551.P16998053836422922392

`∑[A092520((n+1)²)]-A092520((n+1)²)`
-/

namespace A353551.P16998053836422922392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092520 ((n + 1) ^ 2)

end

end A353551.P16998053836422922392

namespace A353551

/-- `∑[A092520((n+1)²)]-A092520((n+1)²)` -/
def P16998053836422922392.Spec : Prop :=
  ∀ n, P16998053836422922392.a n = A353551 n

end A353551

/-!
# A353555: a(n) = 1 if n is an even number with an even number of prime factors (counted with multiplicity), otherwise 0.

The programs for A353555, the canonical program `A353555.P6127306696939932195` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353555 has offset 1).

The definition of A353555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353555.P6127306696939932195

`A065043(n+1)-A353557(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353555

/-- `A065043(n+1)-A353557(n+1)` -/
def P6127306696939932195.Spec : Prop :=
  ∀ n, P6127306696939932195.a n = A353555 (n + 1)

theorem P6127306696939932195.correct : P6127306696939932195.Spec := by
  intro n
  simp only [A353555, Nat.add_sub_cancel]

end A353555

/-! ## A353555.P14569328375264400603

`A059841(n+1)-A353556(n+1)`
-/

namespace A353555.P14569328375264400603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) - A353556 (n + 1)

end

end A353555.P14569328375264400603

namespace A353555

/-- `A059841(n+1)-A353556(n+1)` -/
def P14569328375264400603.Spec : Prop :=
  ∀ n, P14569328375264400603.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P7500067661754207909

`A059841(n+1)*A065043(n+1)`
-/

namespace A353555.P7500067661754207909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A065043 (n + 1)

end

end A353555.P7500067661754207909

namespace A353555

/-- `A059841(n+1)*A065043(n+1)` -/
def P7500067661754207909.Spec : Prop :=
  ∀ n, P7500067661754207909.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P1551016765106521374

`n%gcd(2, ∑{e}[n+1, #])`
-/

namespace A353555.P1551016765106521374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A353555.P1551016765106521374

namespace A353555

/-- `n%gcd(2, ∑{e}[n+1, #])` -/
def P1551016765106521374.Spec : Prop :=
  ∀ n, (P1551016765106521374.a n : ℤ) = A353555 (n + 1)

end A353555

/-! ## A353555.P12775325872208928673

`∑{e}[∑[n]%(n+1), #]%2`
-/

namespace A353555.P12775325872208928673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A353555.P12775325872208928673

namespace A353555

/-- `∑{e}[∑[n]%(n+1), #]%2` -/
def P12775325872208928673.Spec : Prop :=
  ∀ n, (P12775325872208928673.a n : ℤ) = A353555 (n + 1)

end A353555

/-! ## A353555.P6977183452353597937

`char[n-(n+1)*(-1)^∑{e}[n+1, #]]`
-/

namespace A353555.P6977183452353597937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353555.P6977183452353597937

namespace A353555

/-- `char[n-(n+1)*(-1)^∑{e}[n+1, #]]` -/
def P6977183452353597937.Spec : Prop :=
  ∀ n, (P6977183452353597937.a n : ℤ) = A353555 (n + 1)

end A353555

/-! ## A353555.P16320825566481136234

`A353556(3*(n+1))`
-/

namespace A353555.P16320825566481136234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (3 * (n + 1))

end

end A353555.P16320825566481136234

namespace A353555

/-- `A353556(3*(n+1))` -/
def P16320825566481136234.Spec : Prop :=
  ∀ n, P16320825566481136234.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P15615583223817362176

`A112967(n+1)%2`
-/

namespace A353555.P15615583223817362176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112967 (n + 1)) 2

end

end A353555.P15615583223817362176

namespace A353555

/-- `A112967(n+1)%2` -/
def P15615583223817362176.Spec : Prop :=
  ∀ n, P15615583223817362176.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P16888241115754374425

`n%A007421(n+1)`
-/

namespace A353555.P16888241115754374425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007421 (n + 1))

end

end A353555.P16888241115754374425

namespace A353555

/-- `n%A007421(n+1)` -/
def P16888241115754374425.Spec : Prop :=
  ∀ n, P16888241115754374425.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P13288319869831266154

`and(n, A065043(n+1))`
-/

namespace A353555.P13288319869831266154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A065043 (n + 1))

end

end A353555.P13288319869831266154

namespace A353555

/-- `and(n, A065043(n+1))` -/
def P13288319869831266154.Spec : Prop :=
  ∀ n, P13288319869831266154.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P14887311118608435922

`(n*A016003(n+1))%2`
-/

namespace A353555.P14887311118608435922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A016003 (n + 1)) 2

end

end A353555.P14887311118608435922

namespace A353555

/-- `(n*A016003(n+1))%2` -/
def P14887311118608435922.Spec : Prop :=
  ∀ n, P14887311118608435922.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P8918490100266039377

`and(1, A353556(n+1)+n)`
-/

namespace A353555.P8918490100266039377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353556 (n + 1) + (n : ℤ))

end

end A353555.P8918490100266039377

namespace A353555

/-- `and(1, A353556(n+1)+n)` -/
def P8918490100266039377.Spec : Prop :=
  ∀ n, P8918490100266039377.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P5003810064579935593

`and(n, 1-A066829(n+1))`
-/

namespace A353555.P5003810064579935593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A066829 (n + 1))

end

end A353555.P5003810064579935593

namespace A353555

/-- `and(n, 1-A066829(n+1))` -/
def P5003810064579935593.Spec : Prop :=
  ∀ n, P5003810064579935593.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P8404434348841121716

`and(n, 1-A359770(n+1))`
-/

namespace A353555.P8404434348841121716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A359770 (n + 1))

end

end A353555.P8404434348841121716

namespace A353555

/-- `and(n, 1-A359770(n+1))` -/
def P8404434348841121716.Spec : Prop :=
  ∀ n, P8404434348841121716.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P14336156023008134059

`and(1, n*A016008(n+1))`
-/

namespace A353555.P14336156023008134059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A016008 (n + 1))

end

end A353555.P14336156023008134059

namespace A353555

/-- `and(1, n*A016008(n+1))` -/
def P14336156023008134059.Spec : Prop :=
  ∀ n, P14336156023008134059.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P4083654074611212599

`and(1, n*A046079(n+1))`
-/

namespace A353555.P4083654074611212599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A046079 (n + 1))

end

end A353555.P4083654074611212599

namespace A353555

/-- `and(1, n*A046079(n+1))` -/
def P4083654074611212599.Spec : Prop :=
  ∀ n, P4083654074611212599.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P7751083256517836956

`and(1, n*A073093(n+1))`
-/

namespace A353555.P7751083256517836956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A073093 (n + 1))

end

end A353555.P7751083256517836956

namespace A353555

/-- `and(1, n*A073093(n+1))` -/
def P7751083256517836956.Spec : Prop :=
  ∀ n, P7751083256517836956.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P15891611258586437389

`and(n, A066829(2*(n+1)))`
-/

namespace A353555.P15891611258586437389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066829 (2 * (n + 1)))

end

end A353555.P15891611258586437389

namespace A353555

/-- `and(n, A066829(2*(n+1)))` -/
def P15891611258586437389.Spec : Prop :=
  ∀ n, P15891611258586437389.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P5181525428250868436

`and(n, A359770(2*(n+1)))`
-/

namespace A353555.P5181525428250868436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A359770 (2 * (n + 1)))

end

end A353555.P5181525428250868436

namespace A353555

/-- `and(n, A359770(2*(n+1)))` -/
def P5181525428250868436.Spec : Prop :=
  ∀ n, P5181525428250868436.a n = A353555 (n + 1)

end A353555

/-! ## A353555.P8011558084199873326

`and(1, n*(A001222(n+1)+1))`
-/

namespace A353555.P8011558084199873326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * (A001222 (n + 1) + 1))

end

end A353555.P8011558084199873326

namespace A353555

/-- `and(1, n*(A001222(n+1)+1))` -/
def P8011558084199873326.Spec : Prop :=
  ∀ n, P8011558084199873326.a n = A353555 (n + 1)

end A353555

/-!
# A353556: a(n) = 1 if n is an even number with an odd number of prime factors (counted with multiplicity), otherwise 0.

The programs for A353556, the canonical program `A353556.P11551021480269532198` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353556 has offset 1).

The definition of A353556 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353556.P11551021480269532198

`A066829(n+1)-A353558(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353556

/-- `A066829(n+1)-A353558(n+1)` -/
def P11551021480269532198.Spec : Prop :=
  ∀ n, P11551021480269532198.a n = A353556 (n + 1)

theorem P11551021480269532198.correct : P11551021480269532198.Spec := by
  intro n
  simp only [A353556, Nat.add_sub_cancel]

end A353556

/-! ## A353556.P17811972791443558817

`A059841(n+1)-A353555(n+1)`
-/

namespace A353556.P17811972791443558817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) - A353555 (n + 1)

end

end A353556.P17811972791443558817

namespace A353556

/-- `A059841(n+1)-A353555(n+1)` -/
def P17811972791443558817.Spec : Prop :=
  ∀ n, P17811972791443558817.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P10367291884481447244

`A059841(n+1)*A066829(n+1)`
-/

namespace A353556.P10367291884481447244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A066829 (n + 1)

end

end A353556.P10367291884481447244

namespace A353556

/-- `A059841(n+1)*A066829(n+1)` -/
def P10367291884481447244.Spec : Prop :=
  ∀ n, P10367291884481447244.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P3570769001371259564

`∑{e}[n+1, n*#]%2`
-/

namespace A353556.P3570769001371259564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p) % 2

end

end A353556.P3570769001371259564

namespace A353556

/-- `∑{e}[n+1, n*#]%2` -/
def P3570769001371259564.Spec : Prop :=
  ∀ n, (P3570769001371259564.a n : ℤ) = A353556 (n + 1)

end A353556

/-! ## A353556.P12885333711443200633

`and(1, ∑{e}[n+1, n*#])`
-/

namespace A353556.P12885333711443200633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p)

end

end A353556.P12885333711443200633

namespace A353556

/-- `and(1, ∑{e}[n+1, n*#])` -/
def P12885333711443200633.Spec : Prop :=
  ∀ n, (P12885333711443200633.a n : ℤ) = A353556 (n + 1)

end A353556

/-! ## A353556.P6545660861190335672

`lcm(n, ∑{e}[n+1, #])%2`
-/

namespace A353556.P6545660861190335672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A353556.P6545660861190335672

namespace A353556

/-- `lcm(n, ∑{e}[n+1, #])%2` -/
def P6545660861190335672.Spec : Prop :=
  ∀ n, (P6545660861190335672.a n : ℤ) = A353556 (n + 1)

end A353556

/-! ## A353556.P1482956702050849364

`and(n, ∑{e}[n+1, #]%2)`
-/

namespace A353556.P1482956702050849364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2)

end

end A353556.P1482956702050849364

namespace A353556

/-- `and(n, ∑{e}[n+1, #]%2)` -/
def P1482956702050849364.Spec : Prop :=
  ∀ n, (P1482956702050849364.a n : ℤ) = A353556 (n + 1)

end A353556

/-! ## A353556.P5926358600287934936

`and(1, and(n, ∑{e}[n+1, #]))`
-/

namespace A353556.P5926358600287934936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land n (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A353556.P5926358600287934936

namespace A353556

/-- `and(1, and(n, ∑{e}[n+1, #]))` -/
def P5926358600287934936.Spec : Prop :=
  ∀ n, (P5926358600287934936.a n : ℤ) = A353556 (n + 1)

end A353556

/-! ## A353556.P4323854280728059985

`A353555(3*(n+1))`
-/

namespace A353556.P4323854280728059985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (3 * (n + 1))

end

end A353556.P4323854280728059985

namespace A353556

/-- `A353555(3*(n+1))` -/
def P4323854280728059985.Spec : Prop :=
  ∀ n, P4323854280728059985.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P3960647973749443083

`and(n, A066829(n+1))`
-/

namespace A353556.P3960647973749443083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066829 (n + 1))

end

end A353556.P3960647973749443083

namespace A353556

/-- `and(n, A066829(n+1))` -/
def P3960647973749443083.Spec : Prop :=
  ∀ n, P3960647973749443083.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P9228617989658491555

`and(n, A359770(n+1))`
-/

namespace A353556.P9228617989658491555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A359770 (n + 1))

end

end A353556.P9228617989658491555

namespace A353556

/-- `and(n, A359770(n+1))` -/
def P9228617989658491555.Spec : Prop :=
  ∀ n, P9228617989658491555.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P11467027345174498159

`and(n², A007421(n+1))`
-/

namespace A353556.P11467027345174498159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A007421 (n + 1))

end

end A353556.P11467027345174498159

namespace A353556

/-- `and(n², A007421(n+1))` -/
def P11467027345174498159.Spec : Prop :=
  ∀ n, P11467027345174498159.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P6764316184115233044

`(n*A001222(n+1))%2`
-/

namespace A353556.P6764316184115233044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001222 (n + 1)) 2

end

end A353556.P6764316184115233044

namespace A353556

/-- `(n*A001222(n+1))%2` -/
def P6764316184115233044.Spec : Prop :=
  ∀ n, P6764316184115233044.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P1122470215549652532

`and(n, 1-A065043(n+1))`
-/

namespace A353556.P1122470215549652532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A065043 (n + 1))

end

end A353556.P1122470215549652532

namespace A353556

/-- `and(n, 1-A065043(n+1))` -/
def P1122470215549652532.Spec : Prop :=
  ∀ n, P1122470215549652532.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P11678183496255976220

`and(1, n*A063647(n+1))`
-/

namespace A353556.P11678183496255976220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A063647 (n + 1))

end

end A353556.P11678183496255976220

namespace A353556

/-- `and(1, n*A063647(n+1))` -/
def P11678183496255976220.Spec : Prop :=
  ∀ n, P11678183496255976220.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P14070299547985154728

`and(1, n*A064800(n+1))`
-/

namespace A353556.P14070299547985154728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A064800 (n + 1))

end

end A353556.P14070299547985154728

namespace A353556

/-- `and(1, n*A064800(n+1))` -/
def P14070299547985154728.Spec : Prop :=
  ∀ n, P14070299547985154728.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P8553996151112501711

`and(1, n*A091371(n+1))`
-/

namespace A353556.P8553996151112501711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A091371 (n + 1))

end

end A353556.P8553996151112501711

namespace A353556

/-- `and(1, n*A091371(n+1))` -/
def P8553996151112501711.Spec : Prop :=
  ∀ n, P8553996151112501711.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P11898798501689841579

`and(1, n*A195017(n+1))`
-/

namespace A353556.P11898798501689841579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A195017 (n + 1))

end

end A353556.P11898798501689841579

namespace A353556

/-- `and(1, n*A195017(n+1))` -/
def P11898798501689841579.Spec : Prop :=
  ∀ n, P11898798501689841579.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P9218693943832885939

`and(1, n*A317531(n+1))`
-/

namespace A353556.P9218693943832885939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A317531 (n + 1))

end

end A353556.P9218693943832885939

namespace A353556

/-- `and(1, n*A317531(n+1))` -/
def P9218693943832885939.Spec : Prop :=
  ∀ n, P9218693943832885939.a n = A353556 (n + 1)

end A353556

/-! ## A353556.P14060042618117866088

`and(n, A065043(2*(n+1)))`
-/

namespace A353556.P14060042618117866088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A065043 (2 * (n + 1)))

end

end A353556.P14060042618117866088

namespace A353556

/-- `and(n, A065043(2*(n+1)))` -/
def P14060042618117866088.Spec : Prop :=
  ∀ n, P14060042618117866088.a n = A353556 (n + 1)

end A353556

/-!
# A353557: a(n) = 1 if n is an odd number with an even number of prime factors (counted with multiplicity), otherwise 0.

The programs for A353557, the canonical program `A353557.P3482545693705023104` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353557 has offset 1).

The definition of A353557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095112, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353557.P100427986774943183

`A059841(A327858(n+1))`
-/

namespace A353557.P100427986774943183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A327858 (n + 1)).toNat

end

end A353557.P100427986774943183

namespace A353557

/-- `A059841(A327858(n+1))` -/
def P100427986774943183.Spec : Prop :=
  ∀ n, P100427986774943183.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P3609950034402593724

`A353495(n+1)+A360109(n+1)`
-/

namespace A353557.P3609950034402593724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (n + 1) + A360109 (n + 1)

end

end A353557.P3609950034402593724

namespace A353557

/-- `A353495(n+1)+A360109(n+1)` -/
def P3609950034402593724.Spec : Prop :=
  ∀ n, P3609950034402593724.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P4344130441892551243

`A065043(n+1)-A353555(n+1)`
-/

namespace A353557.P4344130441892551243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353555 (n + 1)

end

end A353557.P4344130441892551243

namespace A353557

/-- `A065043(n+1)-A353555(n+1)` -/
def P4344130441892551243.Spec : Prop :=
  ∀ n, P4344130441892551243.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P4555864229949964140

`A000035(n+1)-A353558(n+1)`
-/

namespace A353557.P4555864229949964140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353558 (n + 1)

end

end A353557.P4555864229949964140

namespace A353557

/-- `A000035(n+1)-A353558(n+1)` -/
def P4555864229949964140.Spec : Prop :=
  ∀ n, P4555864229949964140.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P788179955076354215

`A000035(n+1)*A065043(n+1)`
-/

namespace A353557.P788179955076354215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A065043 (n + 1)

end

end A353557.P788179955076354215

namespace A353557

/-- `A000035(n+1)*A065043(n+1)` -/
def P788179955076354215.Spec : Prop :=
  ∀ n, P788179955076354215.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P3482545693705023104

`A059841(A095112(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353557

/-- `A059841(A095112(n+1))` -/
def P3482545693705023104.Spec : Prop :=
  ∀ n, P3482545693705023104.a n = A353557 (n + 1)

theorem P3482545693705023104.correct : P3482545693705023104.Spec := by
  intro n
  simp only [A353557, Nat.add_sub_cancel]

end A353557

/-! ## A353557.P12097136020054097532

`(n+1)%gcd(2, ∑{e}[n+1, #])`
-/

namespace A353557.P12097136020054097532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A353557.P12097136020054097532

namespace A353557

/-- `(n+1)%gcd(2, ∑{e}[n+1, #])` -/
def P12097136020054097532.Spec : Prop :=
  ∀ n, (P12097136020054097532.a n : ℤ) = A353557 (n + 1)

end A353557

/-! ## A353557.P7491681499722861525

`and(char[2*n], ∑{e}[2*(n+1), #])`
-/

namespace A353557.P7491681499722861525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A353557.P7491681499722861525

namespace A353557

/-- `and(char[2*n], ∑{e}[2*(n+1), #])` -/
def P7491681499722861525.Spec : Prop :=
  ∀ n, (P7491681499722861525.a n : ℤ) = A353557 (n + 1)

end A353557

/-! ## A353557.P10204486953305693584

`A359372(2*(n+1))`
-/

namespace A353557.P10204486953305693584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (2 * (n + 1))

end

end A353557.P10204486953305693584

namespace A353557

/-- `A359372(2*(n+1))` -/
def P10204486953305693584.Spec : Prop :=
  ∀ n, P10204486953305693584.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P3048629203517962757

`A353558(3*(n+1))`
-/

namespace A353557.P3048629203517962757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (3 * (n + 1))

end

end A353557.P3048629203517962757

namespace A353557

/-- `A353558(3*(n+1))` -/
def P3048629203517962757.Spec : Prop :=
  ∀ n, P3048629203517962757.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P16322445140549931121

`A359370(6*(n+1))`
-/

namespace A353557.P16322445140549931121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (6 * (n + 1))

end

end A353557.P16322445140549931121

namespace A353557

/-- `A359370(6*(n+1))` -/
def P16322445140549931121.Spec : Prop :=
  ∀ n, P16322445140549931121.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P16746625913521975244

`A369965(6*(n+1))`
-/

namespace A353557.P16746625913521975244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (6 * (n + 1))

end

end A353557.P16746625913521975244

namespace A353557

/-- `A369965(6*(n+1))` -/
def P16746625913521975244.Spec : Prop :=
  ∀ n, P16746625913521975244.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P10513423063563477165

`A370124(9*(n+1))`
-/

namespace A353557.P10513423063563477165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 (9 * (n + 1))

end

end A353557.P10513423063563477165

namespace A353557

/-- `A370124(9*(n+1))` -/
def P10513423063563477165.Spec : Prop :=
  ∀ n, P10513423063563477165.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P2905981809186852475

`A351234(n+1)%2`
-/

namespace A353557.P2905981809186852475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351234 (n + 1)) 2

end

end A353557.P2905981809186852475

namespace A353557

/-- `A351234(n+1)%2` -/
def P2905981809186852475.Spec : Prop :=
  ∀ n, P2905981809186852475.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P9014523958169238219

`val(A356299(n+1), 2)`
-/

namespace A353557.P9014523958169238219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356299 (n + 1)).toNat 2

end

end A353557.P9014523958169238219

namespace A353557

/-- `val(A356299(n+1), 2)` -/
def P9014523958169238219.Spec : Prop :=
  ∀ n, (P9014523958169238219.a n : ℤ) = A353557 (n + 1)

end A353557

/-! ## A353557.P11445286639396466298

`and(1, A387470(n+1))`
-/

namespace A353557.P11445286639396466298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A387470 (n + 1))

end

end A353557.P11445286639396466298

namespace A353557

/-- `and(1, A387470(n+1))` -/
def P11445286639396466298.Spec : Prop :=
  ∀ n, P11445286639396466298.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P4539783613207869073

`ceil(A166698(n+1)/2)`
-/

namespace A353557.P4539783613207869073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166698 (n + 1) : ℚ) / 2⌉

end

end A353557.P4539783613207869073

namespace A353557

/-- `ceil(A166698(n+1)/2)` -/
def P4539783613207869073.Spec : Prop :=
  ∀ n, P4539783613207869073.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P13295000471220159339

`and(1, A322382(n+1)+1)`
-/

namespace A353557.P13295000471220159339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A322382 (n + 1) + 1)

end

end A353557.P13295000471220159339

namespace A353557

/-- `and(1, A322382(n+1)+1)` -/
def P13295000471220159339.Spec : Prop :=
  ∀ n, P13295000471220159339.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P17613772708006733335

`(n+1)%A007421(n+1)`
-/

namespace A353557.P17613772708006733335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007421 (n + 1))

end

end A353557.P17613772708006733335

namespace A353557

/-- `(n+1)%A007421(n+1)` -/
def P17613772708006733335.Spec : Prop :=
  ∀ n, P17613772708006733335.a n = A353557 (n + 1)

end A353557

/-! ## A353557.P15225451507289597468

`and(n+1, A065043(n+1))`
-/

namespace A353557.P15225451507289597468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A065043 (n + 1))

end

end A353557.P15225451507289597468

namespace A353557

/-- `and(n+1, A065043(n+1))` -/
def P15225451507289597468.Spec : Prop :=
  ∀ n, P15225451507289597468.a n = A353557 (n + 1)

end A353557

/-!
# A353558: a(n) = 1 if n is an odd number with an odd number of prime factors (counted with multiplicity), otherwise 0.

The programs for A353558, the canonical program `A353558.P5510355116585189927` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353558 has offset 1).

The definition of A353558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353558.P829289794583510307

`A066829(n+1)-A353556(n+1)`
-/

namespace A353558.P829289794583510307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A353556 (n + 1)

end

end A353558.P829289794583510307

namespace A353558

/-- `A066829(n+1)-A353556(n+1)` -/
def P829289794583510307.Spec : Prop :=
  ∀ n, P829289794583510307.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P5510355116585189927

`A000035(n+1)-A353557(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353558

/-- `A000035(n+1)-A353557(n+1)` -/
def P5510355116585189927.Spec : Prop :=
  ∀ n, P5510355116585189927.a n = A353558 (n + 1)

theorem P5510355116585189927.correct : P5510355116585189927.Spec := by
  intro n
  simp only [A353558, Nat.add_sub_cancel]

end A353558

/-! ## A353558.P5893295180243520704

`A000035(n+1)*A066829(n+1)`
-/

namespace A353558.P5893295180243520704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A066829 (n + 1)

end

end A353558.P5893295180243520704

namespace A353558

/-- `A000035(n+1)*A066829(n+1)` -/
def P5893295180243520704.Spec : Prop :=
  ∀ n, P5893295180243520704.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P15850862551138480708

`∑{e}[n+1, #]%gcd(2, n)`
-/

namespace A353558.P15850862551138480708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % Nat.gcd 2 n

end

end A353558.P15850862551138480708

namespace A353558

/-- `∑{e}[n+1, #]%gcd(2, n)` -/
def P15850862551138480708.Spec : Prop :=
  ∀ n, (P15850862551138480708.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P10600282267898254906

`and(char[2*n], ∑{e}[n+1, #])`
-/

namespace A353558.P10600282267898254906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A353558.P10600282267898254906

namespace A353558

/-- `and(char[2*n], ∑{e}[n+1, #])` -/
def P10600282267898254906.Spec : Prop :=
  ∀ n, (P10600282267898254906.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P7158230223487726984

`((n+1)*∑{e}[n+1, #])%2`
-/

namespace A353558.P7158230223487726984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A353558.P7158230223487726984

namespace A353558

/-- `((n+1)*∑{e}[n+1, #])%2` -/
def P7158230223487726984.Spec : Prop :=
  ∀ n, (P7158230223487726984.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P8023596860530936995

`and(1, (n+1)*∑{e}[n+1, #])`
-/

namespace A353558.P8023596860530936995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A353558.P8023596860530936995

namespace A353558

/-- `and(1, (n+1)*∑{e}[n+1, #])` -/
def P8023596860530936995.Spec : Prop :=
  ∀ n, (P8023596860530936995.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P9496140366067160070

`lcm(n+1, ∑{e}[n+1, #])%2`
-/

namespace A353558.P9496140366067160070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A353558.P9496140366067160070

namespace A353558

/-- `lcm(n+1, ∑{e}[n+1, #])%2` -/
def P9496140366067160070.Spec : Prop :=
  ∀ n, (P9496140366067160070.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P6793684158745417474

`and(n+1, ∑{e}[n+1, #])%2`
-/

namespace A353558.P6793684158745417474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A353558.P6793684158745417474

namespace A353558

/-- `and(n+1, ∑{e}[n+1, #])%2` -/
def P6793684158745417474.Spec : Prop :=
  ∀ n, (P6793684158745417474.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P13107244510621484437

`and(1, and(n+1, ∑{e}[n+1, #]))`
-/

namespace A353558.P13107244510621484437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A353558.P13107244510621484437

namespace A353558

/-- `and(1, and(n+1, ∑{e}[n+1, #]))` -/
def P13107244510621484437.Spec : Prop :=
  ∀ n, (P13107244510621484437.a n : ℤ) = A353558 (n + 1)

end A353558

/-! ## A353558.P7251697894747751751

`A359370(2*(n+1))`
-/

namespace A353558.P7251697894747751751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (2 * (n + 1))

end

end A353558.P7251697894747751751

namespace A353558

/-- `A359370(2*(n+1))` -/
def P7251697894747751751.Spec : Prop :=
  ∀ n, P7251697894747751751.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P7553774811303406341

`A369965(2*(n+1))`
-/

namespace A353558.P7553774811303406341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (2 * (n + 1))

end

end A353558.P7553774811303406341

namespace A353558

/-- `A369965(2*(n+1))` -/
def P7553774811303406341.Spec : Prop :=
  ∀ n, P7553774811303406341.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P14823883882639739128

`A353557(3*(n+1))`
-/

namespace A353558.P14823883882639739128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (3 * (n + 1))

end

end A353558.P14823883882639739128

namespace A353558

/-- `A353557(3*(n+1))` -/
def P14823883882639739128.Spec : Prop :=
  ∀ n, P14823883882639739128.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P13239600680217477346

`A359372(6*(n+1))`
-/

namespace A353558.P13239600680217477346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (6 * (n + 1))

end

end A353558.P13239600680217477346

namespace A353558

/-- `A359372(6*(n+1))` -/
def P13239600680217477346.Spec : Prop :=
  ∀ n, P13239600680217477346.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P17508966417144791286

`A066959(n+1)%2`
-/

namespace A353558.P17508966417144791286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066959 (n + 1)) 2

end

end A353558.P17508966417144791286

namespace A353558

/-- `A066959(n+1)%2` -/
def P17508966417144791286.Spec : Prop :=
  ∀ n, P17508966417144791286.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P11456999263705989839

`A068721(n+1)%2`
-/

namespace A353558.P11456999263705989839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068721 (n + 1)) 2

end

end A353558.P11456999263705989839

namespace A353558

/-- `A068721(n+1)%2` -/
def P11456999263705989839.Spec : Prop :=
  ∀ n, P11456999263705989839.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P15464708069348923970

`A086130(n+1)%2`
-/

namespace A353558.P15464708069348923970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086130 (n + 1)) 2

end

end A353558.P15464708069348923970

namespace A353558

/-- `A086130(n+1)%2` -/
def P15464708069348923970.Spec : Prop :=
  ∀ n, P15464708069348923970.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P16320946537232877076

`A190116(n+1)%2`
-/

namespace A353558.P16320946537232877076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190116 (n + 1)) 2

end

end A353558.P16320946537232877076

namespace A353558

/-- `A190116(n+1)%2` -/
def P16320946537232877076.Spec : Prop :=
  ∀ n, P16320946537232877076.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P2757665785581220232

`A351233(n+1)%2`
-/

namespace A353558.P2757665785581220232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351233 (n + 1)) 2

end

end A353558.P2757665785581220232

namespace A353558

/-- `A351233(n+1)%2` -/
def P2757665785581220232.Spec : Prop :=
  ∀ n, P2757665785581220232.a n = A353558 (n + 1)

end A353558

/-! ## A353558.P3160003071652546037

`A366371(n+1)%2`
-/

namespace A353558.P3160003071652546037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366371 (n + 1)) 2

end

end A353558.P3160003071652546037

namespace A353558

/-- `A366371(n+1)%2` -/
def P3160003071652546037.Spec : Prop :=
  ∀ n, P3160003071652546037.a n = A353558 (n + 1)

end A353558

/-!
# A353559: a(n) = 1 if A003968(n) is a multiple of n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1), otherwise 0.

The programs for A353559, the canonical program `A353559.P9248086909526130647` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353559 has offset 1).

The definition of A353559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353559.P5770824183736049183

`floor(1/A348037(n+1))`
-/

namespace A353559.P5770824183736049183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A348037 (n + 1) : ℚ)⌋

end

end A353559.P5770824183736049183

namespace A353559

/-- `floor(1/A348037(n+1))` -/
def P5770824183736049183.Spec : Prop :=
  ∀ n, P5770824183736049183.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P9248086909526130647

`char[A348499(n+1)-1]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353559

/-- `char[A348499(n+1)-1]` -/
def P9248086909526130647.Spec : Prop :=
  ∀ n, (P9248086909526130647.a n : ℤ) = A353559 (n + 1)

theorem P9248086909526130647.correct : P9248086909526130647.Spec := by
  intro n
  simp only [A353559, Nat.add_sub_cancel]

end A353559

/-! ## A353559.P7346308609552701451

`char[lt[n, A348036(n+1)]]`
-/

namespace A353559.P7346308609552701451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353559.P7346308609552701451

namespace A353559

/-- `char[lt[n, A348036(n+1)]]` -/
def P7346308609552701451.Spec : Prop :=
  ∀ n, (P7346308609552701451.a n : ℤ) = A353559 (n + 1)

end A353559

/-! ## A353559.P13721925659525389522

`A000007(A348037(n+1)-1)`
-/

namespace A353559.P13721925659525389522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A348037 (n + 1) - 1).toNat

end

end A353559.P13721925659525389522

namespace A353559

/-- `A000007(A348037(n+1)-1)` -/
def P13721925659525389522.Spec : Prop :=
  ∀ n, P13721925659525389522.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P18088265778911646386

`A000007(xor(1, A348037(n+1)))`
-/

namespace A353559.P18088265778911646386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A348037 (n + 1))).toNat

end

end A353559.P18088265778911646386

namespace A353559

/-- `A000007(xor(1, A348037(n+1)))` -/
def P18088265778911646386.Spec : Prop :=
  ∀ n, P18088265778911646386.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P17934810943079232781

`A000007(n%A348037(n+1))`
-/

namespace A353559.P17934810943079232781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n : ℤ) (A348037 (n + 1))).toNat

end

end A353559.P17934810943079232781

namespace A353559

/-- `A000007(n%A348037(n+1))` -/
def P17934810943079232781.Spec : Prop :=
  ∀ n, P17934810943079232781.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P15858815736870513719

`∑{d}[A348037(n+1), A008683(#)]`
-/

namespace A353559.P15858815736870513719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A353559.P15858815736870513719

namespace A353559

/-- `∑{d}[A348037(n+1), A008683(#)]` -/
def P15858815736870513719.Spec : Prop :=
  ∀ n, P15858815736870513719.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P3104950192189716191

`∏{p}[A348037(n+1), A000038(#)]`
-/

namespace A353559.P3104950192189716191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000038 p

end

end A353559.P3104950192189716191

namespace A353559

/-- `∏{p}[A348037(n+1), A000038(#)]` -/
def P3104950192189716191.Spec : Prop :=
  ∀ n, P3104950192189716191.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P6480834734268188902

`∏{p}[A348037(n+1), A070824(#)]`
-/

namespace A353559.P6480834734268188902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A070824 p

end

end A353559.P6480834734268188902

namespace A353559

/-- `∏{p}[A348037(n+1), A070824(#)]` -/
def P6480834734268188902.Spec : Prop :=
  ∀ n, P6480834734268188902.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P1243648469034699392

`∏{p}[A348037(n+1), A348029(#)]`
-/

namespace A353559.P1243648469034699392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348029 p

end

end A353559.P1243648469034699392

namespace A353559

/-- `∏{p}[A348037(n+1), A348029(#)]` -/
def P1243648469034699392.Spec : Prop :=
  ∀ n, P1243648469034699392.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P7793588602564955568

`∏{p}[A348037(n+1), A348030(#)]`
-/

namespace A353559.P7793588602564955568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348030 p

end

end A353559.P7793588602564955568

namespace A353559

/-- `∏{p}[A348037(n+1), A348030(#)]` -/
def P7793588602564955568.Spec : Prop :=
  ∀ n, P7793588602564955568.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P6729790310000026128

`C(2, A181815(A348037(n+1)+1))`
-/

namespace A353559.P6729790310000026128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A181815 (A348037 (n + 1) + 1).toNat).toNat

end

end A353559.P6729790310000026128

namespace A353559

/-- `C(2, A181815(A348037(n+1)+1))` -/
def P6729790310000026128.Spec : Prop :=
  ∀ n, (P6729790310000026128.a n : ℤ) = A353559 (n + 1)

end A353559

/-! ## A353559.P9681280967350708252

`A056281(C(4, A348037(n+1)²)+1)`
-/

namespace A353559.P9681280967350708252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056281 (Nat.choose 4 (A348037 (n + 1) ^ 2).toNat + 1)

end

end A353559.P9681280967350708252

namespace A353559

/-- `A056281(C(4, A348037(n+1)²)+1)` -/
def P9681280967350708252.Spec : Prop :=
  ∀ n, P9681280967350708252.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P17241805100573162781

`ceil(2/A000332(A348037(n+1)+3))-1`
-/

namespace A353559.P17241805100573162781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A000332 (A348037 (n + 1) + 3).toNat : ℚ)⌉ - 1

end

end A353559.P17241805100573162781

namespace A353559

/-- `ceil(2/A000332(A348037(n+1)+3))-1` -/
def P17241805100573162781.Spec : Prop :=
  ∀ n, P17241805100573162781.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P10035854901240668592

`A000038(n)^A001221(A348037(n+1))`
-/

namespace A353559.P10035854901240668592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A001221 (A348037 (n + 1)).toNat : ℤ)

end

end A353559.P10035854901240668592

namespace A353559

/-- `A000038(n)^A001221(A348037(n+1))` -/
def P10035854901240668592.Spec : Prop :=
  ∀ n, P10035854901240668592.a n = (A353559 (n + 1) : ℚ)

end A353559

/-! ## A353559.P8413161468526830679

`C(A003959(A348039(n+1)), A327564(n+1))`
-/

namespace A353559.P8413161468526830679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003959 (A348039 (n + 1)).toNat).toNat (A327564 (n + 1)).toNat

end

end A353559.P8413161468526830679

namespace A353559

/-- `C(A003959(A348039(n+1)), A327564(n+1))` -/
def P8413161468526830679.Spec : Prop :=
  ∀ n, (P8413161468526830679.a n : ℤ) = A353559 (n + 1)

end A353559

/-! ## A353559.P14904106054058951636

`C(A014963(A348039(n+1)), A348037(n+1))`
-/

namespace A353559.P14904106054058951636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A348039 (n + 1)).toNat).toNat (A348037 (n + 1)).toNat

end

end A353559.P14904106054058951636

namespace A353559

/-- `C(A014963(A348039(n+1)), A348037(n+1))` -/
def P14904106054058951636.Spec : Prop :=
  ∀ n, (P14904106054058951636.a n : ℤ) = A353559 (n + 1)

end A353559

/-! ## A353559.P11434632704390185953

`A008966(A348037(n+1)²)`
-/

namespace A353559.P11434632704390185953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A348037 (n + 1) ^ 2).toNat

end

end A353559.P11434632704390185953

namespace A353559

/-- `A008966(A348037(n+1)²)` -/
def P11434632704390185953.Spec : Prop :=
  ∀ n, P11434632704390185953.a n = A353559 (n + 1)

end A353559

/-! ## A353559.P9650458453203517326

`A008683(2*A348037(n+1)²)²`
-/

namespace A353559.P9650458453203517326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A348037 (n + 1) ^ 2).toNat ^ 2

end

end A353559.P9650458453203517326

namespace A353559

/-- `A008683(2*A348037(n+1)²)²` -/
def P9650458453203517326.Spec : Prop :=
  ∀ n, P9650458453203517326.a n = A353559 (n + 1)

end A353559

/-!
# A353561: Prime shadows of colossally abundant numbers, A004490.

The programs for A353561, there is no canonical definition to state claims against.
-/

/-! ## A353561.P7949176123265494831

`A122111(A342012(n+1))`
-/

namespace A353561.P7949176123265494831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A342012 (n + 1)).toNat

end

end A353561.P7949176123265494831

/-! ## A353561.P10211437509407633845

`A253563(A342013(n+1))`
-/

namespace A353561.P10211437509407633845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A342013 (n + 1)).toNat

end

end A353561.P10211437509407633845

/-! ## A353561.P1897455454863082280

`∑{d}[A342012(n+1), A329034(#)]`
-/

namespace A353561.P1897455454863082280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A353561.P1897455454863082280

/-! ## A353561.P14720802696312561274

`∏{e}[A002201(n+1), A000040(#)]`
-/

namespace A353561.P14720802696312561274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A353561.P14720802696312561274

/-! ## A353561.P16179784109145590918

`∏{e}[A002201(n+1), A000043(#)]`
-/

namespace A353561.P16179784109145590918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)

end

end A353561.P16179784109145590918

/-!
# A353562: Prime shadows of highly composite numbers, A002182.

The programs for A353562, there is no canonical definition to state claims against.
-/

/-! ## A353562.P16877686255215113386

`A122111(A329902(n+1))`
-/

namespace A353562.P16877686255215113386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A329902 (n + 1)).toNat

end

end A353562.P16877686255215113386

/-! ## A353562.P7487278230538267120

`A181819(A002182(n+1))`
-/

namespace A353562.P7487278230538267120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A002182 (n + 1)).toNat

end

end A353562.P7487278230538267120

/-! ## A353562.P6262307888146072181

`A181820(A306802(n+1))`
-/

namespace A353562.P6262307888146072181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A306802 (n + 1)).toNat

end

end A353562.P6262307888146072181

/-! ## A353562.P9590966338429637694

`∏{e}[A002182(n+1), A000040(#)]`
-/

namespace A353562.P9590966338429637694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A353562.P9590966338429637694

/-! ## A353562.P14479622236228043288

`∏{e}[A002182(n+1), A003681(#)]`
-/

namespace A353562.P14479622236228043288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003681 (Nat.factorization (f1 n).natAbs p)

end

end A353562.P14479622236228043288

/-!
# A353563: Primorial base exp-function applied to Euler totient function: a(n) = A276086(phi(n)).

The programs for A353563, there is no canonical definition to state claims against.
-/

/-! ## A353563.P10149860776756761717

`A276086(A000010(n+1))`
-/

namespace A353563.P10149860776756761717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000010 (n + 1)).toNat

end

end A353563.P10149860776756761717

/-! ## A353563.P3705418637447477406

`A276086((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A353563.P3705418637447477406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A353563.P3705418637447477406

/-! ## A353563.P6187129275543321690

`A358764(A039649(n+1))`
-/

namespace A353563.P6187129275543321690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (A039649 (n + 1)).toNat

end

end A353563.P6187129275543321690

/-! ## A353563.P10508591821271283198

`A358764(A000010(n+1)+1)`
-/

namespace A353563.P10508591821271283198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (A000010 (n + 1) + 1).toNat

end

end A353563.P10508591821271283198

/-! ## A353563.P13681937102354707365

`A276086(A039649(n+1)-1)`
-/

namespace A353563.P13681937102354707365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A039649 (n + 1) - 1).toNat

end

end A353563.P13681937102354707365

/-! ## A353563.P1551584516735127764

`A276086(1-A051953(n+1)+n)`
-/

namespace A353563.P1551584516735127764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A353563.P1551584516735127764

/-! ## A353563.P5796320345412161281

`A276086(A353748(n+1)+A064989(n+1))`
-/

namespace A353563.P5796320345412161281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A353748 (n + 1) + A064989 (n + 1)).toNat

end

end A353563.P5796320345412161281

/-! ## A353563.P15616391290187912462

`A276086(A300721(n+1)+A300236(n+1))`
-/

namespace A353563.P15616391290187912462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A300721 (n + 1) + A300236 (n + 1)).toNat

end

end A353563.P15616391290187912462

/-! ## A353563.P8156249185073345996

`A276086(A353747(n+1)-A064989(n+1))`
-/

namespace A353563.P8156249185073345996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A353747 (n + 1) - A064989 (n + 1)).toNat

end

end A353563.P8156249185073345996

/-! ## A353563.P3629180962691775430

`A276086(A003557(n+1)*A173557(n+1))`
-/

namespace A353563.P3629180962691775430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A003557 (n + 1) * A173557 (n + 1)).toNat

end

end A353563.P3629180962691775430

/-! ## A353563.P9708682818550578793

`A276086(A353749(n+1)/A064989(n+1))`
-/

namespace A353563.P9708682818550578793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ))).toNat

end

end A353563.P9708682818550578793

/-!
# A353564: Product_{d|n, d

The programs for A353564, there is no canonical definition to state claims against.
-/

/-! ## A353564.P2875338762068305975

`A068911((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)%A128394(n+1))`
-/

namespace A353564.P2875338762068305975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Int.tmod (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))) (A128394 (n + 1))).toNat

end

end A353564.P2875338762068305975

/-! ## A353564.P5244528962211431173

`A068911(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)%A128944(n+2)`
-/

namespace A353564.P5244528962211431173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068911 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat) (A128944 (n + 2))

end

end A353564.P5244528962211431173

/-! ## A353564.P11614919222821688204

`A068911(A051953(n+1)%A137814(n))`
-/

namespace A353564.P11614919222821688204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Int.tmod (A051953 (n + 1)) (A137814 n)).toNat

end

end A353564.P11614919222821688204

/-! ## A353564.P2362132427075774037

`A068911(A051953(n+1)^A268354(n+1))`
-/

namespace A353564.P2362132427075774037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (SequenceMachineLib.roundAway ((A051953 (n + 1) : ℚ) ^ (A268354 (n + 1) : ℤ))).toNat

end

end A353564.P2362132427075774037

/-! ## A353564.P2160343351110723547

`A068911(A051953(n+1)^A344879(n+1))`
-/

namespace A353564.P2160343351110723547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (SequenceMachineLib.roundAway ((A051953 (n + 1) : ℚ) ^ (A344879 (n + 1) : ℤ))).toNat

end

end A353564.P2160343351110723547

/-!
# A353565: Lexicographically earliest infinite sequence such that a(i) = a(j) => A353564(i) = A353564(j), where A353564(n) = Product_{d|n, d

The programs for A353565, there is no canonical definition to state claims against.
-/

/-! ## A353565.P18395224442287405804

`A318835(n+1)-A318880(A318846(2*(n+1)))`
-/

namespace A353565.P18395224442287405804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318835 (n + 1) - A318880 (A318846 (2 * (n + 1))).toNat

end

end A353565.P18395224442287405804

/-!
# A353566: a(n) = 1 if n is a multiple of its prime shadow A181819(n), and 0 otherwise.

The programs for A353566, the canonical program `A353566.P10561952852954268597` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353566 has offset 1).

The definition of A353566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353566.P6481247266642132649

`char[A325755(n+1)-1]`
-/

namespace A353566.P6481247266642132649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353566.P6481247266642132649

namespace A353566

/-- `char[A325755(n+1)-1]` -/
def P6481247266642132649.Spec : Prop :=
  ∀ n, (P6481247266642132649.a n : ℤ) = A353566 (n + 1)

end A353566

/-! ## A353566.P10561952852954268597

`A000007(A373247(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353566

/-- `A000007(A373247(n+1))` -/
def P10561952852954268597.Spec : Prop :=
  ∀ n, P10561952852954268597.a n = A353566 (n + 1)

theorem P10561952852954268597.correct : P10561952852954268597.Spec := by
  intro n
  simp only [A353566, Nat.add_sub_cancel]

end A353566

/-! ## A353566.P4708954779767388800

`A000007((n+1)%A181819(n+1))`
-/

namespace A353566.P4708954779767388800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (A181819 (n + 1))).toNat

end

end A353566.P4708954779767388800

namespace A353566

/-- `A000007((n+1)%A181819(n+1))` -/
def P4708954779767388800.Spec : Prop :=
  ∀ n, P4708954779767388800.a n = A353566 (n + 1)

end A353566

/-! ## A353566.P14923138937313554577

`∑{d}[n+1, A008683(#)*A353567((n+1)/#)]`
-/

namespace A353566.P14923138937313554577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353566.P14923138937313554577

namespace A353566

/-- `∑{d}[n+1, A008683(#)*A353567((n+1)/#)]` -/
def P14923138937313554577.Spec : Prop :=
  ∀ n, P14923138937313554577.a n = A353566 (n + 1)

end A353566

/-! ## A353566.P8413725161041210915

`∏{e}[A006530(A373249(n+1)), A040976(#)]`
-/

namespace A353566.P8413725161041210915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A373249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A040976 (Nat.factorization (f1 n).natAbs p)

end

end A353566.P8413725161041210915

namespace A353566

/-- `∏{e}[A006530(A373249(n+1)), A040976(#)]` -/
def P8413725161041210915.Spec : Prop :=
  ∀ n, P8413725161041210915.a n = A353566 (n + 1)

end A353566

/-! ## A353566.P6235646153340321960

`val(A177769(n+1), A177769(A181819(n+1)))`
-/

namespace A353566.P6235646153340321960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A177769 (n + 1)).toNat (A177769 (A181819 (n + 1)).toNat).toNat

end

end A353566.P6235646153340321960

namespace A353566

/-- `val(A177769(n+1), A177769(A181819(n+1)))` -/
def P6235646153340321960.Spec : Prop :=
  ∀ n, (P6235646153340321960.a n : ℤ) = A353566 (n + 1)

end A353566

/-! ## A353566.P9691445977406409916

`val(A245092(2*(n+1)), A004277(A181819(n+1)))`
-/

namespace A353566.P9691445977406409916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A245092 (2 * (n + 1))).toNat (A004277 (A181819 (n + 1)).toNat).toNat

end

end A353566.P9691445977406409916

namespace A353566

/-- `val(A245092(2*(n+1)), A004277(A181819(n+1)))` -/
def P9691445977406409916.Spec : Prop :=
  ∀ n, (P9691445977406409916.a n : ℤ) = A353566 (n + 1)

end A353566

/-! ## A353566.P15320084661379312778

`A151812(A255408(n+1)%A181819(n+1))`
-/

namespace A353566.P15320084661379312778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151812 (Int.tmod (A255408 (n + 1)) (A181819 (n + 1))).toNat

end

end A353566.P15320084661379312778

namespace A353566

/-- `A151812(A255408(n+1)%A181819(n+1))` -/
def P15320084661379312778.Spec : Prop :=
  ∀ n, P15320084661379312778.a n = A353566 (n + 1)

end A353566

/-! ## A353566.P7313067529455721609

`A051731(A181819(n+1)+A000217(n))`
-/

namespace A353566.P7313067529455721609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A181819 (n + 1) + A000217 n).toNat

end

end A353566.P7313067529455721609

namespace A353566

/-- `A051731(A181819(n+1)+A000217(n))` -/
def P7313067529455721609.Spec : Prop :=
  ∀ n, P7313067529455721609.a n = A353566 (n + 1)

end A353566

/-!
# A353567: Number of divisors d of n such that d is a multiple of its prime shadow A181819(d).

The programs for A353567, the canonical program `A353567.P2160071074265072755` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353567 has offset 1).

The definition of A353567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353567.P2160071074265072755

`∑{d}[n+1, A353566(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353567

/-- `∑{d}[n+1, A353566(#)]` -/
def P2160071074265072755.Spec : Prop :=
  ∀ n, P2160071074265072755.a n = A353567 (n + 1)

theorem P2160071074265072755.correct : P2160071074265072755.Spec := by
  intro n
  simp only [A353567, Nat.add_sub_cancel]

end A353567

/-! ## A353567.P1999252499675425162

`A081743(A335665(n+1))`
-/

namespace A353567.P1999252499675425162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A335665 (n + 1)).toNat

end

end A353567.P1999252499675425162

namespace A353567

/-- `A081743(A335665(n+1))` -/
def P1999252499675425162.Spec : Prop :=
  ∀ n, P1999252499675425162.a n = A353567 (n + 1)

end A353567

/-! ## A353567.P11695122509320184243

`A000120(A335665(n+1)+1)`
-/

namespace A353567.P11695122509320184243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A335665 (n + 1) + 1).toNat

end

end A353567.P11695122509320184243

namespace A353567

/-- `A000120(A335665(n+1)+1)` -/
def P11695122509320184243.Spec : Prop :=
  ∀ n, P11695122509320184243.a n = A353567 (n + 1)

end A353567

/-! ## A353567.P1283663993820239671

`A007302(A335665(n+1)+1)`
-/

namespace A353567.P1283663993820239671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A335665 (n + 1) + 1).toNat

end

end A353567.P1283663993820239671

namespace A353567

/-- `A007302(A335665(n+1)+1)` -/
def P1283663993820239671.Spec : Prop :=
  ∀ n, P1283663993820239671.a n = A353567 (n + 1)

end A353567

/-! ## A353567.P5307641139275504281

`A082647(3*A334730(n+1))`
-/

namespace A353567.P5307641139275504281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (3 * A334730 (n + 1)).toNat

end

end A353567.P5307641139275504281

namespace A353567

/-- `A082647(3*A334730(n+1))` -/
def P5307641139275504281.Spec : Prop :=
  ∀ n, P5307641139275504281.a n = A353567 (n + 1)

end A353567

/-!
# A353568: Prime shadows of (nonzero) K-champion numbers.

The programs for A353568, there is no canonical definition to state claims against.
-/

/-! ## A353568.P5743086289827750185

`A122111(A330686(n+1))`
-/

namespace A353568.P5743086289827750185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A330686 (n + 1)).toNat

end

end A353568.P5743086289827750185

/-! ## A353568.P12184811365005280589

`A181819(A307866(1+n+1))`
-/

namespace A353568.P12184811365005280589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A307866 (1 + (n + 1))).toNat

end

end A353568.P12184811365005280589

/-! ## A353568.P6688024371923481494

`∏{e}[A307866(n+2), A000040(#)]`
-/

namespace A353568.P6688024371923481494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307866 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A353568.P6688024371923481494

/-! ## A353568.P5531428343623276397

`A122111(A329900(A307866(n+2)))`
-/

namespace A353568.P5531428343623276397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A329900 (A307866 (n + 2)).toNat).toNat

end

end A353568.P5531428343623276397

/-!
# A353569: a(n) = 1 if n is an odd number divisible by a square > 1, otherwise 0.

The programs for A353569, the canonical program `A353569.P15550169975070010039` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353569 has offset 1).

The definition of A353569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353569.P15550169975070010039

`A000035(n+1)-A323239(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A353569

/-- `A000035(n+1)-A323239(n+1)` -/
def P15550169975070010039.Spec : Prop :=
  ∀ n, P15550169975070010039.a n = A353569 (n + 1)

theorem P15550169975070010039.correct : P15550169975070010039.Spec := by
  intro n
  simp only [A353569, Nat.add_sub_cancel]

end A353569

/-! ## A353569.P5294225575525916696

`A000035(n+1)*A107078(n+1)`
-/

namespace A353569.P5294225575525916696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A107078 (n + 1)

end

end A353569.P5294225575525916696

namespace A353569

/-- `A000035(n+1)*A107078(n+1)` -/
def P5294225575525916696.Spec : Prop :=
  ∀ n, P5294225575525916696.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P15396230915387579459

`(∏{p}[n+1, #]%(n+1))%2`
-/

namespace A353569.P15396230915387579459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % (n + 1) % 2

end

end A353569.P15396230915387579459

namespace A353569

/-- `(∏{p}[n+1, #]%(n+1))%2` -/
def P15396230915387579459.Spec : Prop :=
  ∀ n, (P15396230915387579459.a n : ℤ) = A353569 (n + 1)

end A353569

/-! ## A353569.P17579427332683785214

`and(1, n-3)%∏{e}[n+1, #]`
-/

namespace A353569.P17579427332683785214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 1 ((n : ℤ) - 3)) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A353569.P17579427332683785214

namespace A353569

/-- `and(1, n-3)%∏{e}[n+1, #]` -/
def P17579427332683785214.Spec : Prop :=
  ∀ n, P17579427332683785214.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P5268625987299229679

`A056134(n+1)%2`
-/

namespace A353569.P5268625987299229679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056134 (n + 1)) 2

end

end A353569.P5268625987299229679

namespace A353569

/-- `A056134(n+1)%2` -/
def P5268625987299229679.Spec : Prop :=
  ∀ n, P5268625987299229679.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P4616460201779912319

`A061669(n+1)%2`
-/

namespace A353569.P4616460201779912319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061669 (n + 1)) 2

end

end A353569.P4616460201779912319

namespace A353569

/-- `A061669(n+1)%2` -/
def P4616460201779912319.Spec : Prop :=
  ∀ n, P4616460201779912319.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P14835142543352323290

`A105570(n+1)%2`
-/

namespace A353569.P14835142543352323290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105570 (n + 1)) 2

end

end A353569.P14835142543352323290

namespace A353569

/-- `A105570(n+1)%2` -/
def P14835142543352323290.Spec : Prop :=
  ∀ n, P14835142543352323290.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P3099283747326707198

`A348030(n+1)%2`
-/

namespace A353569.P3099283747326707198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348030 (n + 1)) 2

end

end A353569.P3099283747326707198

namespace A353569

/-- `A348030(n+1)%2` -/
def P3099283747326707198.Spec : Prop :=
  ∀ n, P3099283747326707198.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P11544153738818672059

`A348513(n+1)%2`
-/

namespace A353569.P11544153738818672059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348513 (n + 1)) 2

end

end A353569.P11544153738818672059

namespace A353569

/-- `A348513(n+1)%2` -/
def P11544153738818672059.Spec : Prop :=
  ∀ n, P11544153738818672059.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P17018111520674788910

`and(1, A323913(n+1))`
-/

namespace A353569.P17018111520674788910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323913 (n + 1))

end

end A353569.P17018111520674788910

namespace A353569

/-- `and(1, A323913(n+1))` -/
def P17018111520674788910.Spec : Prop :=
  ∀ n, P17018111520674788910.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P6117153165797753638

`and(1, A359602(n+1))`
-/

namespace A353569.P6117153165797753638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359602 (n + 1))

end

end A353569.P6117153165797753638

namespace A353569

/-- `and(1, A359602(n+1))` -/
def P6117153165797753638.Spec : Prop :=
  ∀ n, P6117153165797753638.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P9774876779473305704

`(n+1)%A007424(n+1)`
-/

namespace A353569.P9774876779473305704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007424 (n + 1))

end

end A353569.P9774876779473305704

namespace A353569

/-- `(n+1)%A007424(n+1)` -/
def P9774876779473305704.Spec : Prop :=
  ∀ n, P9774876779473305704.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P9804543564705255548

`and(n+1, A107078(n+1))`
-/

namespace A353569.P9804543564705255548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A107078 (n + 1))

end

end A353569.P9804543564705255548

namespace A353569

/-- `and(n+1, A107078(n+1))` -/
def P9804543564705255548.Spec : Prop :=
  ∀ n, P9804543564705255548.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P2961691615278424102

`char[A105570(2*n+1)-1]`
-/

namespace A353569.P2961691615278424102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353569.P2961691615278424102

namespace A353569

/-- `char[A105570(2*n+1)-1]` -/
def P2961691615278424102.Spec : Prop :=
  ∀ n, (P2961691615278424102.a n : ℤ) = A353569 (n + 1)

end A353569

/-! ## A353569.P14585639627817788815

`log2(gcd(2, gcd(n, A008683(n+1))))`
-/

namespace A353569.P14585639627817788815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (Int.gcd (n : ℤ) (A008683 (n + 1))) : ℝ)

end

end A353569.P14585639627817788815

namespace A353569

/-- `log2(gcd(2, gcd(n, A008683(n+1))))` -/
def P14585639627817788815.Spec : Prop :=
  ∀ n, P14585639627817788815.a n = (A353569 (n + 1) : ℝ)

end A353569

/-! ## A353569.P15346147855658409375

`(A008683(2*(n+1))+n+1)%2`
-/

namespace A353569.P15346147855658409375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (2 * (n + 1)) + (n + 1 : ℤ)) 2

end

end A353569.P15346147855658409375

namespace A353569

/-- `(A008683(2*(n+1))+n+1)%2` -/
def P15346147855658409375.Spec : Prop :=
  ∀ n, P15346147855658409375.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P1254880674833146920

`and(1, n+1-A008683(n+2+n))`
-/

namespace A353569.P1254880674833146920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) - A008683 (n + 2 + n))

end

end A353569.P1254880674833146920

namespace A353569

/-- `and(1, n+1-A008683(n+2+n))` -/
def P1254880674833146920.Spec : Prop :=
  ∀ n, P1254880674833146920.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P6459585588277216116

`1-A008683(2*n+1-lcm(2, n))²`
-/

namespace A353569.P6459585588277216116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (2 * n + 1 - Nat.lcm 2 n) ^ 2

end

end A353569.P6459585588277216116

namespace A353569

/-- `1-A008683(2*n+1-lcm(2, n))²` -/
def P6459585588277216116.Spec : Prop :=
  ∀ n, P6459585588277216116.a n = A353569 (n + 1)

end A353569

/-! ## A353569.P7643724962100063266

`and(A008683(C(n+1, n))+1, (n+1)²)`
-/

namespace A353569.P7643724962100063266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (Nat.choose (n + 1) n) + 1) ((n + 1) ^ 2 : ℤ)

end

end A353569.P7643724962100063266

namespace A353569

/-- `and(A008683(C(n+1, n))+1, (n+1)²)` -/
def P7643724962100063266.Spec : Prop :=
  ∀ n, P7643724962100063266.a n = A353569 (n + 1)

end A353569

/-!
# A353570: a(n) = 1 if A003963(A122111(n)) is equal to A003963(n), and 0 otherwise.

The programs for A353570, the canonical program `A353570.P10672845591511427550` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353570 has offset 1).

The definition of A353570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353570.P10672845591511427550

`char[eq[A003963(n+1), A329382(n+1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353570

/-- `char[eq[A003963(n+1), A329382(n+1)]]` -/
def P10672845591511427550.Spec : Prop :=
  ∀ n, (P10672845591511427550.a n : ℤ) = A353570 (n + 1)

theorem P10672845591511427550.correct : P10672845591511427550.Spec := by
  intro n
  simp only [A353570, Nat.add_sub_cancel]

end A353570

/-! ## A353570.P15707093546868011054

`A000007(xor(A003963(n+1), A329382(n+1)))`
-/

namespace A353570.P15707093546868011054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A003963 (n + 1)) (A329382 (n + 1))).toNat

end

end A353570.P15707093546868011054

namespace A353570

/-- `A000007(xor(A003963(n+1), A329382(n+1)))` -/
def P15707093546868011054.Spec : Prop :=
  ∀ n, P15707093546868011054.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P17690415903766400810

`A264739(2*xor(A003963(n+1), A329382(n+1))+1)`
-/

namespace A353570.P17690415903766400810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * Int.xor (A003963 (n + 1)) (A329382 (n + 1)) + 1).toNat

end

end A353570.P17690415903766400810

namespace A353570

/-- `A264739(2*xor(A003963(n+1), A329382(n+1))+1)` -/
def P17690415903766400810.Spec : Prop :=
  ∀ n, P17690415903766400810.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P15528390884103168423

`A156706(28*xor(A003963(n+1), A329382(n+1))+2)`
-/

namespace A353570.P15528390884103168423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (28 * Int.xor (A003963 (n + 1)) (A329382 (n + 1)) + 2).toNat

end

end A353570.P15528390884103168423

namespace A353570

/-- `A156706(28*xor(A003963(n+1), A329382(n+1))+2)` -/
def P15528390884103168423.Spec : Prop :=
  ∀ n, P15528390884103168423.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P17742572460670509056

`A000007((A003963(n+1)-A329382(n+1))²)`
-/

namespace A353570.P17742572460670509056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((A003963 (n + 1) - A329382 (n + 1)) ^ 2).toNat

end

end A353570.P17742572460670509056

namespace A353570

/-- `A000007((A003963(n+1)-A329382(n+1))²)` -/
def P17742572460670509056.Spec : Prop :=
  ∀ n, P17742572460670509056.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P14338127223941556546

`A151933(xor(A003963(n+1), A329382(n+1)))`
-/

namespace A353570.P14338127223941556546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.xor (A003963 (n + 1)) (A329382 (n + 1))).toNat

end

end A353570.P14338127223941556546

namespace A353570

/-- `A151933(xor(A003963(n+1), A329382(n+1)))` -/
def P14338127223941556546.Spec : Prop :=
  ∀ n, P14338127223941556546.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P5261938671287043740

`A151622(xor(A003963(n+1), A329382(n+1)))`
-/

namespace A353570.P5261938671287043740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (Int.xor (A003963 (n + 1)) (A329382 (n + 1))).toNat

end

end A353570.P5261938671287043740

namespace A353570

/-- `A151622(xor(A003963(n+1), A329382(n+1)))` -/
def P5261938671287043740.Spec : Prop :=
  ∀ n, P5261938671287043740.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P17436788912386870666

`and(Δ[A000267(n)], A088044(n+1))`
-/

namespace A353570.P17436788912386870666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A088044 (n + 1))

end

end A353570.P17436788912386870666

namespace A353570

/-- `and(Δ[A000267(n)], A088044(n+1))` -/
def P17436788912386870666.Spec : Prop :=
  ∀ n, P17436788912386870666.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P12837615234610671992

`A000035(A099390(n+2)*A237347(n+1))`
-/

namespace A353570.P12837615234610671992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A099390 (n + 2) * A237347 (n + 1)).toNat

end

end A353570.P12837615234610671992

namespace A353570

/-- `A000035(A099390(n+2)*A237347(n+1))` -/
def P12837615234610671992.Spec : Prop :=
  ∀ n, P12837615234610671992.a n = A353570 (n + 1)

end A353570

/-! ## A353570.P16841016913166374656

`A209229(A122111(n+1)-A053645(n+1))`
-/

namespace A353570.P16841016913166374656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A122111 (n + 1) - A053645 (n + 1)).toNat

end

end A353570.P16841016913166374656

namespace A353570

/-- `A209229(A122111(n+1)-A053645(n+1))` -/
def P16841016913166374656.Spec : Prop :=
  ∀ n, P16841016913166374656.a n = A353570 (n + 1)

end A353570

/-!
# A353571: Prime-shifted variant of A342001: a(n) = A349905(n) / A003557(A003961(n)).

The programs for A353571, the canonical program `A353571.P3686160422925873902` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353571 has offset 1).

The definition of A353571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353571.P3686160422925873902

`A342001(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353571

/-- `A342001(A003961(n+1))` -/
def P3686160422925873902.Spec : Prop :=
  ∀ n, P3686160422925873902.a n = A353571 (n + 1)

theorem P3686160422925873902.correct : P3686160422925873902.Spec := by
  intro n
  simp only [A353571, Nat.add_sub_cancel]

end A353571

/-! ## A353571.P5443111703226659622

`A349905(n+1)/A003557(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353571.P5443111703226659622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349905 (n + 1) : ℚ) / (A003557 (A003961 (n + 1)).toNat : ℚ)

end

end A353571.P5443111703226659622

namespace A353571

/-- `A349905(n+1)/A003557(A003961(n+1))` -/
def P5443111703226659622.Spec : Prop :=
  ∀ n, P5443111703226659622.a n = (A353571 (n + 1) : ℚ)

end A353571

/-! ## A353571.P6990844602932495915

`A342001(A045965(n+1)-A000007(n))`
-/

namespace A353571.P6990844602932495915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A045965 (n + 1) - A000007 n).toNat

end

end A353571.P6990844602932495915

namespace A353571

/-- `A342001(A045965(n+1)-A000007(n))` -/
def P6990844602932495915.Spec : Prop :=
  ∀ n, P6990844602932495915.a n = A353571 (n + 1)

end A353571

/-! ## A353571.P13373273362269868268

`A342001(A286385(n+1)+A000203(n+1))`
-/

namespace A353571.P13373273362269868268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A353571.P13373273362269868268

namespace A353571

/-- `A342001(A286385(n+1)+A000203(n+1))` -/
def P13373273362269868268.Spec : Prop :=
  ∀ n, P13373273362269868268.a n = A353571 (n + 1)

end A353571

/-! ## A353571.P5529859122410744376

`A342001(A045965(n+1)/(A000007(n)+1))`
-/

namespace A353571.P5529859122410744376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A353571.P5529859122410744376

namespace A353571

/-- `A342001(A045965(n+1)/(A000007(n)+1))` -/
def P5529859122410744376.Spec : Prop :=
  ∀ n, P5529859122410744376.a n = A353571 (n + 1)

end A353571

/-! ## A353571.P18151131389819581001

`A342001(A045965(n+1))%A001597(n+1)`
-/

namespace A353571.P18151131389819581001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342001 (A045965 (n + 1)).toNat) (A001597 (n + 1))

end

end A353571.P18151131389819581001

namespace A353571

/-- `A342001(A045965(n+1))%A001597(n+1)` -/
def P18151131389819581001.Spec : Prop :=
  ∀ n, P18151131389819581001.a n = A353571 (n + 1)

end A353571

/-! ## A353571.P14750552956607983347

`∑{d}[A003961(n+1), A346485(#)]`
-/

namespace A353571.P14750552956607983347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346485 d

end

end A353571.P14750552956607983347

namespace A353571

/-- `∑{d}[A003961(n+1), A346485(#)]` -/
def P14750552956607983347.Spec : Prop :=
  ∀ n, P14750552956607983347.a n = A353571 (n + 1)

end A353571

/-!
# A353572: Shifted variant of A342002: a(n) = A353571(A276086(n)), where A353571(x) = A003415(A003961(x)) / A003557(A003961(x)) and A276086 is the primorial base exp-function.

The programs for A353572, there is no canonical definition to state claims against.
-/

/-! ## A353572.P13413419847390052259

`A342002(A276154(n))`
-/

namespace A353572.P13413419847390052259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A276154 n).toNat

end

end A353572.P13413419847390052259

/-! ## A353572.P4310897015053724507

`A353571(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353572.P4310897015053724507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (A276086 n).toNat

end

end A353572.P4310897015053724507

/-! ## A353572.P13023777262745403583

`A366801(2*A277022(n))`
-/

namespace A353572.P13023777262745403583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 (2 * A277022 n).toNat

end

end A353572.P13023777262745403583

/-! ## A353572.P8577067745260856343

`A353571(A351225(n)+n)`
-/

namespace A353572.P8577067745260856343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (A351225 n + (n : ℤ)).toNat

end

end A353572.P8577067745260856343

/-! ## A353572.P17895517364004966150

`A353571(A327860(n)-A342016(n))`
-/

namespace A353572.P17895517364004966150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (A327860 n - A342016 n).toNat

end

end A353572.P17895517364004966150

/-! ## A353572.P8198621929696557529

`A353571(A327858(n)*A351231(n))`
-/

namespace A353572.P8198621929696557529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (A327858 n * A351231 n).toNat

end

end A353572.P8198621929696557529

/-!
# A353573: Greatest common divisor of A342002 and its shifted variant, where A342002(n) = A003415(A276086(n)) / A003557(A276086(n)) and A276086 is the primorial base exp-function.

The programs for A353573, there is no canonical definition to state claims against.
-/

/-! ## A353573.P14624218144452605318

`gcd(A342002(n), A353572(n))`
-/

namespace A353573.P14624218144452605318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342002 n) (A353572 n)

end

end A353573.P14624218144452605318

/-! ## A353573.P2628571883113128255

`gcd(A353571(A276086(n)), A342001(A276086(n)))`
-/

namespace A353573.P2628571883113128255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353571 (A276086 n).toNat) (A342001 (A276086 n).toNat)

end

end A353573.P2628571883113128255

/-! ## A353573.P9973275257454631375

`A342002(n)/A353574(A028310(n))`
-/

namespace A353573.P9973275257454631375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 n : ℚ) / (A353574 (A028310 n).toNat : ℚ)

end

end A353573.P9973275257454631375

/-! ## A353573.P5619516541038035365

`A344760(A289234(n))/A353574(A028310(n))`
-/

namespace A353573.P5619516541038035365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344760 (A289234 n).toNat : ℚ) / (A353574 (A028310 n).toNat : ℚ)

end

end A353573.P5619516541038035365

/-! ## A353573.P7440468984096867994

`A344762(A328625(n))/A353574(A028310(n))`
-/

namespace A353573.P7440468984096867994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344762 (A328625 n).toNat : ℚ) / (A353574 (A028310 n).toNat : ℚ)

end

end A353573.P7440468984096867994

/-! ## A353573.P12857218929717818266

`A344761(A328626(n))/A353574(A028310(n))`
-/

namespace A353573.P12857218929717818266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344761 (A328626 n).toNat : ℚ) / (A353574 (A028310 n).toNat : ℚ)

end

end A353573.P12857218929717818266

/-! ## A353573.P8994552712240617489

`A342002(n)/A353574(A233583(n+1))`
-/

namespace A353573.P8994552712240617489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 n : ℚ) / (A353574 (A233583 (n + 1)).toNat : ℚ)

end

end A353573.P8994552712240617489

/-! ## A353573.P18169362695378996117

`A344760(A289234(n))/A353574(A233583(n+1))`
-/

namespace A353573.P18169362695378996117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344760 (A289234 n).toNat : ℚ) / (A353574 (A233583 (n + 1)).toNat : ℚ)

end

end A353573.P18169362695378996117

/-! ## A353573.P10786755406230233261

`A344761(A328626(n))/A353574(A233583(n+1))`
-/

namespace A353573.P10786755406230233261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344761 (A328626 n).toNat : ℚ) / (A353574 (A233583 (n + 1)).toNat : ℚ)

end

end A353573.P10786755406230233261

/-!
# A353574: a(n) = A342002(n) / gcd(A342002(n), A342002(A276154(n))).

The programs for A353574, there is no canonical definition to state claims against.
-/

/-! ## A353574.P7493354610420307741

`A342002(n+1)/A353573(n+1)`
-/

namespace A353574.P7493354610420307741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 (n + 1) : ℚ) / (A353573 (n + 1) : ℚ)

end

end A353574.P7493354610420307741

/-! ## A353574.P6595002739003893726

`A342002(n+1)/gcd(A342002(n+1), A353572(n+1))`
-/

namespace A353574.P6595002739003893726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 (n + 1) : ℚ) / (Int.gcd (A342002 (n + 1)) (A353572 (n + 1)) : ℚ)

end

end A353574.P6595002739003893726

/-! ## A353574.P17632060094975611154

`A342002(n+1)/gcd(A342002(n+1), A342002(A276154(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353574.P17632060094975611154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 (n + 1) : ℚ) / (Int.gcd (A342002 (n + 1)) (A342002 (A276154 (n + 1)).toNat) : ℚ)

end

end A353574.P17632060094975611154

/-! ## A353574.P12076617134436068485

`A344761(A328626(n+1))/A353573(n+1)`
-/

namespace A353574.P12076617134436068485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344761 (A328626 (n + 1)).toNat : ℚ) / (A353573 (n + 1) : ℚ)

end

end A353574.P12076617134436068485

/-! ## A353574.P1608180432281078763

`A342001(A276086(n+1))/A353573(n+1)`
-/

namespace A353574.P1608180432281078763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (A276086 (n + 1)).toNat : ℚ) / (A353573 (n + 1) : ℚ)

end

end A353574.P1608180432281078763

/-!
# A353575: Primepi based arithmetic derivative applied to the prime shadow of the primorial base exp-function: a(n) = A258851(A181819(A276086(n))).

The programs for A353575, there is no canonical definition to state claims against.
-/

/-! ## A353575.P7929689804155574929

`A258851(A328835(n))`
-/

namespace A353575.P7929689804155574929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A328835 n).toNat

end

end A353575.P7929689804155574929

/-! ## A353575.P9797989584097654463

`A353379(A276086(n))`
-/

namespace A353575.P9797989584097654463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (A276086 n).toNat

end

end A353575.P9797989584097654463

/-! ## A353575.P10992843349950054776

`A258851(A181819(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353575.P10992843349950054776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A181819 (A276086 n).toNat).toNat

end

end A353575.P10992843349950054776

/-! ## A353575.P5348890665049087695

`A353379(A278226(n))`
-/

namespace A353575.P5348890665049087695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (A278226 n).toNat

end

end A353575.P5348890665049087695

/-! ## A353575.P5529643567317111150

`A353379(A351225(n)+n)`
-/

namespace A353575.P5529643567317111150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (A351225 n + (n : ℤ)).toNat

end

end A353575.P5529643567317111150

/-!
# A353576: Arithmetic derivative applied to the prime shadow of the primorial base exp-function: a(n) = A003415(A181819(A276086(n))).

The programs for A353576, there is no canonical definition to state claims against.
-/

/-! ## A353576.P15925236466910638528

`A353524(n)*A353577(n)`
-/

namespace A353576.P15925236466910638528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353524 n * A353577 n

end

end A353576.P15925236466910638528

/-! ## A353576.P17592128838623188295

`A003415(A328835(n))`
-/

namespace A353576.P17592128838623188295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328835 n).toNat

end

end A353576.P17592128838623188295

/-! ## A353576.P14994910653579617161

`A351942(A276086(n))`
-/

namespace A353576.P14994910653579617161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351942 (A276086 n).toNat

end

end A353576.P14994910653579617161

/-! ## A353576.P7367510517077208475

`A003415(A181819(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353576.P7367510517077208475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A181819 (A276086 n).toNat).toNat

end

end A353576.P7367510517077208475

/-! ## A353576.P17696754698754606767

`A003557(A328835(n))*A353577(n)`
-/

namespace A353576.P17696754698754606767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A328835 n).toNat * A353577 n

end

end A353576.P17696754698754606767

/-! ## A353576.P14099601292443643120

`A319703(2*A328835(n))`
-/

namespace A353576.P14099601292443643120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A328835 n).toNat

end

end A353576.P14099601292443643120

/-! ## A353576.P10799244099750475582

`A319703(A328835(n)+A328835(n))`
-/

namespace A353576.P10799244099750475582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A328835 n + A328835 n).toNat

end

end A353576.P10799244099750475582

/-! ## A353576.P8032360575760875572

`A003415(∏{e}[A276086(n), A000040(#)])`
-/

namespace A353576.P8032360575760875572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353576.P8032360575760875572

/-! ## A353576.P15587165512380665594

`A351942(A278226(n))`
-/

namespace A353576.P15587165512380665594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351942 (A278226 n).toNat

end

end A353576.P15587165512380665594

/-! ## A353576.P1002167607541560992

`A351944(A276086(n))*A353577(n)`
-/

namespace A353576.P1002167607541560992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (A276086 n).toNat * A353577 n

end

end A353576.P1002167607541560992

/-!
# A353577: Arithmetic derivative without its inherited divisor applied to the prime shadow of the primorial base exp-function: a(n) = A342001(A181819(A276086(n))).

The programs for A353577, there is no canonical definition to state claims against.
-/

/-! ## A353577.P10504924651282777063

`A353576(n)/A353524(n)`
-/

namespace A353577.P10504924651282777063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353576 n : ℚ) / (A353524 n : ℚ)

end

end A353577.P10504924651282777063

/-! ## A353577.P17956661263845592260

`A342001(A328835(n))`
-/

namespace A353577.P17956661263845592260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A328835 n).toNat

end

end A353577.P17956661263845592260

/-! ## A353577.P11476378162102687586

`A351945(A276086(n))`
-/

namespace A353577.P11476378162102687586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (A276086 n).toNat

end

end A353577.P11476378162102687586

/-! ## A353577.P17588575931446771442

`A342001(A181819(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353577.P17588575931446771442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A181819 (A276086 n).toNat).toNat

end

end A353577.P17588575931446771442

/-! ## A353577.P2892785867883770473

`∑{d}[A328835(n), A346485(#)]`
-/

namespace A353577.P2892785867883770473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346485 d

end

end A353577.P2892785867883770473

/-! ## A353577.P2587120959846408357

`A003415(A328835(n))/A353524(n)`
-/

namespace A353577.P2587120959846408357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A328835 n).toNat : ℚ) / (A353524 n : ℚ)

end

end A353577.P2587120959846408357

/-! ## A353577.P1527513436802114433

`A353576(n)/A003557(A328835(n))`
-/

namespace A353577.P1527513436802114433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353576 n : ℚ) / (A003557 (A328835 n).toNat : ℚ)

end

end A353577.P1527513436802114433

/-! ## A353577.P6456170402196380082

`A342001(∏{e}[A276086(n), A000040(#)])`
-/

namespace A353577.P6456170402196380082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353577.P6456170402196380082

/-! ## A353577.P14010462282442017731

`A351945(A278226(n))`
-/

namespace A353577.P14010462282442017731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (A278226 n).toNat

end

end A353577.P14010462282442017731

/-! ## A353577.P15937906201615753850

`A351942(A276086(n))/A353524(n)`
-/

namespace A353577.P15937906201615753850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351942 (A276086 n).toNat : ℚ) / (A353524 n : ℚ)

end

end A353577.P15937906201615753850

/-!
# A353578: Numbers in the smallest subset of N containing 3 and closed under the mappings k->2k + 1, k->8k + 3, and k->16k + 3.

The programs for A353578, the canonical program `A353578.P15899571528050790297` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353578 has offset 1).

The definition of A353578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353578.P15899571528050790297

`4*A353579(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353578

/-- `4*A353579(n+1)-1` -/
def P15899571528050790297.Spec : Prop :=
  ∀ n, P15899571528050790297.a n = A353578 (n + 1)

theorem P15899571528050790297.correct : P15899571528050790297.Spec := by
  intro n
  simp only [A353578, Nat.add_sub_cancel]

end A353578

/-! ## A353578.P17100296605814745278

`A004767(A353579(n+1)-1)`
-/

namespace A353578.P17100296605814745278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A353579 (n + 1) - 1).toNat

end

end A353578.P17100296605814745278

namespace A353578

/-- `A004767(A353579(n+1)-1)` -/
def P17100296605814745278.Spec : Prop :=
  ∀ n, P17100296605814745278.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P10226816417605591538

`record[A266258(A353579(n+2))]`
-/

namespace A353578.P10226816417605591538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A353579 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353578.P10226816417605591538

namespace A353578

/-- `record[A266258(A353579(n+2))]` -/
def P10226816417605591538.Spec : Prop :=
  ∀ n, P10226816417605591538.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P15618291858342124411

`record[or(3, A268716(A180200(n)))]`
-/

namespace A353578.P15618291858342124411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A268716 (A180200 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353578.P15618291858342124411

namespace A353578

/-- `record[or(3, A268716(A180200(n)))]` -/
def P15618291858342124411.Spec : Prop :=
  ∀ n, P15618291858342124411.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P341380468973100257

`A004273(2*A353579(n+1))`
-/

namespace A353578.P341380468973100257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A353579 (n + 1)).toNat

end

end A353578.P341380468973100257

namespace A353578

/-- `A004273(2*A353579(n+1))` -/
def P341380468973100257.Spec : Prop :=
  ∀ n, P341380468973100257.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P12311428456361855850

`A266258(2*A353579(n+1))`
-/

namespace A353578.P12311428456361855850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (2 * A353579 (n + 1)).toNat

end

end A353578.P12311428456361855850

namespace A353578

/-- `A266258(2*A353579(n+1))` -/
def P12311428456361855850.Spec : Prop :=
  ∀ n, P12311428456361855850.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P16946165983160308850

`A004274(2*A353579(n+1)+1)`
-/

namespace A353578.P16946165983160308850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * A353579 (n + 1) + 1).toNat

end

end A353578.P16946165983160308850

namespace A353578

/-- `A004274(2*A353579(n+1)+1)` -/
def P16946165983160308850.Spec : Prop :=
  ∀ n, P16946165983160308850.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P15236673985949135765

`A004280(2*A353579(n+1)+1)`
-/

namespace A353578.P15236673985949135765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * A353579 (n + 1) + 1).toNat

end

end A353578.P15236673985949135765

namespace A353578

/-- `A004280(2*A353579(n+1)+1)` -/
def P15236673985949135765.Spec : Prop :=
  ∀ n, P15236673985949135765.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P10884325166429288372

`A004274(A353579(n+1)+A353579(n+1)+1)`
-/

namespace A353578.P10884325166429288372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A353579 (n + 1) + (A353579 (n + 1) + 1)).toNat

end

end A353578.P10884325166429288372

namespace A353578

/-- `A004274(A353579(n+1)+A353579(n+1)+1)` -/
def P10884325166429288372.Spec : Prop :=
  ∀ n, P10884325166429288372.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P11543350369505195757

`A004280(A353579(n+1)+A353579(n+1)+1)`
-/

namespace A353578.P11543350369505195757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A353579 (n + 1) + (A353579 (n + 1) + 1)).toNat

end

end A353578.P11543350369505195757

namespace A353578

/-- `A004280(A353579(n+1)+A353579(n+1)+1)` -/
def P11543350369505195757.Spec : Prop :=
  ∀ n, P11543350369505195757.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P5466737607359748970

`A014681(4*A353579(n+1))`
-/

namespace A353578.P5466737607359748970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (4 * A353579 (n + 1)).toNat

end

end A353578.P5466737607359748970

namespace A353578

/-- `A014681(4*A353579(n+1))` -/
def P5466737607359748970.Spec : Prop :=
  ∀ n, P5466737607359748970.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P13555719664796522920

`A023443(4*A353579(n+1))`
-/

namespace A353578.P13555719664796522920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (4 * A353579 (n + 1)).toNat

end

end A353578.P13555719664796522920

namespace A353578

/-- `A023443(4*A353579(n+1))` -/
def P13555719664796522920.Spec : Prop :=
  ∀ n, P13555719664796522920.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P10566403288332934003

`record[xor(n, A035327(5*n+4))]`
-/

namespace A353578.P10566403288332934003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A035327 (5 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353578.P10566403288332934003

namespace A353578

/-- `record[xor(n, A035327(5*n+4))]` -/
def P10566403288332934003.Spec : Prop :=
  ∀ n, P10566403288332934003.a n = A353578 (n + 1)

end A353578

/-! ## A353578.P7656128390643799361

`eq[1, A229763(and(4*n, -n)+n)]`
-/

namespace A353578.P7656128390643799361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (Int.land (4 * n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353578.P7656128390643799361

namespace A353578

/-- `eq[1, A229763(and(4*n, -n)+n)]` -/
def P7656128390643799361.Spec : Prop :=
  ∀ n, (P7656128390643799361.a n : ℤ) = A353578 (n + 1)

end A353578

/-! ## A353578.P13425661736323529314

`eq[1, A229763(xor(n, and(4*n, -n)))]`
-/

namespace A353578.P13425661736323529314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (Int.xor (n : ℤ) (Int.land (4 * n : ℤ) (-(n : ℤ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353578.P13425661736323529314

namespace A353578

/-- `eq[1, A229763(xor(n, and(4*n, -n)))]` -/
def P13425661736323529314.Spec : Prop :=
  ∀ n, (P13425661736323529314.a n : ℤ) = A353578 (n + 1)

end A353578

/-! ## A353578.P201016651673466541

`eq[1, A229763(5*n-and(n, 4*n))]`
-/

namespace A353578.P201016651673466541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (5 * n - Nat.land n (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353578.P201016651673466541

namespace A353578

/-- `eq[1, A229763(5*n-and(n, 4*n))]` -/
def P201016651673466541.Spec : Prop :=
  ∀ n, (P201016651673466541.a n : ℤ) = A353578 (n + 1)

end A353578

/-! ## A353578.P10879508877379865924

`eq[1, A229763(or(n, (n+1)²-(1-n)²))]`
-/

namespace A353578.P10879508877379865924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (Int.lor (n : ℤ) (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353578.P10879508877379865924

namespace A353578

/-- `eq[1, A229763(or(n, (n+1)²-(1-n)²))]` -/
def P10879508877379865924.Spec : Prop :=
  ∀ n, (P10879508877379865924.a n : ℤ) = A353578 (n + 1)

end A353578

/-!
# A353579: Numbers in the smallest subset of N containing 1 and closed under the mappings k->2^n + k, k->3*2^{n+1} + k, and k->3*2^{n+2} + k where n = ceiling(log_2(k)).

The programs for A353579, the canonical program `A353579.P9200688838139276790` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353579 has offset 1).

The definition of A353579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353579.P9618117771984810953

`ceil(A353578(n+1)/4)`
-/

namespace A353579.P9618117771984810953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353578 (n + 1) : ℚ) / 4⌉

end

end A353579.P9618117771984810953

namespace A353579

/-- `ceil(A353578(n+1)/4)` -/
def P9618117771984810953.Spec : Prop :=
  ∀ n, P9618117771984810953.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P9200688838139276790

`record[A006068(A180200(n))+1]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353579

/-- `record[A006068(A180200(n))+1]` -/
def P9200688838139276790.Spec : Prop :=
  ∀ n, P9200688838139276790.a n = A353579 (n + 1)

theorem P9200688838139276790.correct : P9200688838139276790.Spec := by
  intro n
  simp only [A353579, Nat.add_sub_cancel]

end A353579

/-! ## A353579.P9202267340264497493

`A003602((A353578(n+1)-1)/2)`
-/

namespace A353579.P9202267340264497493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A353578 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A353579.P9202267340264497493

namespace A353579

/-- `A003602((A353578(n+1)-1)/2)` -/
def P9202267340264497493.Spec : Prop :=
  ∀ n, P9202267340264497493.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P7060260244650117212

`lt[1, A014963(and(5*n+4, -(n+1)))²]+1`
-/

namespace A353579.P7060260244650117212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.land (5 * n + 4 : ℤ) (-(n + 1 : ℤ))).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353579.P7060260244650117212

namespace A353579

/-- `lt[1, A014963(and(5*n+4, -(n+1)))²]+1` -/
def P7060260244650117212.Spec : Prop :=
  ∀ n, (P7060260244650117212.a n : ℤ) = A353579 (n + 1)

end A353579

/-! ## A353579.P1421028074655478743

`A008621(A353578(n+1))`
-/

namespace A353579.P1421028074655478743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A353578 (n + 1)).toNat

end

end A353579.P1421028074655478743

namespace A353579

/-- `A008621(A353578(n+1))` -/
def P1421028074655478743.Spec : Prop :=
  ∀ n, P1421028074655478743.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P4270598368655253266

`record[A180200(A154435(n))+1]`
-/

namespace A353579.P4270598368655253266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A154435 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353579.P4270598368655253266

namespace A353579

/-- `record[A180200(A154435(n))+1]` -/
def P4270598368655253266.Spec : Prop :=
  ∀ n, P4270598368655253266.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P10164904944450581433

`A002265(A353578(n+1)+1)`
-/

namespace A353579.P10164904944450581433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A353578 (n + 1) + 1).toNat

end

end A353579.P10164904944450581433

namespace A353579

/-- `A002265(A353578(n+1)+1)` -/
def P10164904944450581433.Spec : Prop :=
  ∀ n, P10164904944450581433.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P17551225836474993614

`A054576(A353578(n+1)+1)`
-/

namespace A353579.P17551225836474993614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A353578 (n + 1) + 1).toNat

end

end A353579.P17551225836474993614

namespace A353579

/-- `A054576(A353578(n+1)+1)` -/
def P17551225836474993614.Spec : Prop :=
  ∀ n, P17551225836474993614.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P14372541250919371108

`A060819(A353578(n+1)+1)`
-/

namespace A353579.P14372541250919371108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A353578 (n + 1) + 1).toNat

end

end A353579.P14372541250919371108

namespace A353579

/-- `A060819(A353578(n+1)+1)` -/
def P14372541250919371108.Spec : Prop :=
  ∀ n, P14372541250919371108.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P15340880193798249590

`A214392(A353578(n+1)+1)`
-/

namespace A353579.P15340880193798249590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A353578 (n + 1) + 1).toNat

end

end A353579.P15340880193798249590

namespace A353579

/-- `A214392(A353578(n+1)+1)` -/
def P15340880193798249590.Spec : Prop :=
  ∀ n, P15340880193798249590.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P16585416059101578163

`A003602(A353578(n+1)-1)`
-/

namespace A353579.P16585416059101578163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A353578 (n + 1) - 1).toNat

end

end A353579.P16585416059101578163

namespace A353579

/-- `A003602(A353578(n+1)-1)` -/
def P16585416059101578163.Spec : Prop :=
  ∀ n, P16585416059101578163.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P1864280643293582568

`A008624(A353578(n+1)-1)`
-/

namespace A353579.P1864280643293582568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A353578 (n + 1) - 1).toNat

end

end A353579.P1864280643293582568

namespace A353579

/-- `A008624(A353578(n+1)-1)` -/
def P1864280643293582568.Spec : Prop :=
  ∀ n, P1864280643293582568.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P7423886285824196603

`ceil(record[xor(n, A035327(5*n+4))]/4)`
-/

namespace A353579.P7423886285824196603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A035327 (5 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌉

end

end A353579.P7423886285824196603

namespace A353579

/-- `ceil(record[xor(n, A035327(5*n+4))]/4)` -/
def P7423886285824196603.Spec : Prop :=
  ∀ n, P7423886285824196603.a n = A353579 (n + 1)

end A353579

/-! ## A353579.P9622874424817975293

`A003602(2*A353578(n+1))/2`
-/

namespace A353579.P9622874424817975293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * A353578 (n + 1)).toNat : ℚ) / 2

end

end A353579.P9622874424817975293

namespace A353579

/-- `A003602(2*A353578(n+1))/2` -/
def P9622874424817975293.Spec : Prop :=
  ∀ n, P9622874424817975293.a n = (A353579 (n + 1) : ℚ)

end A353579

/-!
# A353580: a(n) = 2*a(n-1) + a(n-2) - 1, with a(0) = 0 and a(1) = 2.

The programs for A353580, the canonical program `A353580.P13641134155897178737` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353580 has offset 0).

The definition of A353580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-1` (program `A353580.P13641134155897178737`, by `A353580.P13641134155897178737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353580.P13641134155897178737

`2*a(n-1)+a(n-2)-1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353580

/-- `2*a(n-1)+a(n-2)-1` -/
def P13641134155897178737.Spec : Prop :=
  ∀ n, P13641134155897178737.a n = A353580 n

theorem P13641134155897178737.correct : P13641134155897178737.Spec := by
  intro n
  simp only [A353580]

end A353580

/-! ## A353580.P1277016188921132212

`ogf((2x-3x^2)/(1-3x+x^2+x^3))`
-/

namespace A353580.P1277016188921132212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -3, 1, 1] n

end

end A353580.P1277016188921132212

namespace A353580

/-- `ogf((2x-3x^2)/(1-3x+x^2+x^3))` -/
def P1277016188921132212.Spec : Prop :=
  ∀ n, P1277016188921132212.a n = A353580 n

end A353580

/-! ## A353580.P8405911688114645370

`2*a(n-1)-(1-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A353580.P8405911688114645370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) - (1 - a (n - 2))

end

end A353580.P8405911688114645370

namespace A353580

/-- `2*a(n-1)-(1-a(n-2))` -/
def P8405911688114645370.Spec : Prop :=
  ∀ n, P8405911688114645370.a n = A353580 n

theorem P8405911688114645370.correct : P8405911688114645370.Spec := by
  intro n
  simp only [A353580, Nat.add_sub_cancel, A353580.P8405911688114645370.a, A353580.P13641134155897178737.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A353580

/-! ## A353580.P10968144985789527618

`a(n-1)-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A353580.P10968144985789527618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + a (n - 2))

end

end A353580.P10968144985789527618

namespace A353580

/-- `a(n-1)-1+a(n-1)+a(n-2)` -/
def P10968144985789527618.Spec : Prop :=
  ∀ n, P10968144985789527618.a n = A353580 n

theorem P10968144985789527618.correct : P10968144985789527618.Spec := by
  intro n
  simp only [A353580, Nat.add_sub_cancel, A353580.P10968144985789527618.a, A353580.P13641134155897178737.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A353580

/-! ## A353580.P10850956868806708805

`a(n-1)-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A353580.P10850956868806708805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 2))

end

end A353580.P10850956868806708805

namespace A353580

/-- `a(n-1)-(1-a(n-1)-a(n-2))` -/
def P10850956868806708805.Spec : Prop :=
  ∀ n, P10850956868806708805.a n = A353580 n

theorem P10850956868806708805.correct : P10850956868806708805.Spec := by
  intro n
  simp only [A353580, Nat.add_sub_cancel, A353580.P10850956868806708805.a, A353580.P13641134155897178737.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A353580

/-! ## A353580.P6599187984471685779

`A000129(n)+A000129(n)-A247311(A016789(n))`
-/

namespace A353580.P6599187984471685779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A000129 n - A247311 (A016789 n).toNat)

end

end A353580.P6599187984471685779

namespace A353580

/-- `A000129(n)+A000129(n)-A247311(A016789(n))` -/
def P6599187984471685779.Spec : Prop :=
  ∀ n, P6599187984471685779.a n = A353580 n

end A353580

/-! ## A353580.P3861174953344560382

`ceil(A135532(n)/2)`
-/

namespace A353580.P3861174953344560382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135532 n : ℚ) / 2⌉

end

end A353580.P3861174953344560382

namespace A353580

/-- `ceil(A135532(n)/2)` -/
def P3861174953344560382.Spec : Prop :=
  ∀ n, P3861174953344560382.a n = A353580 n

end A353580

/-! ## A353580.P2670639356811353236

`(A266505(2*n)+1)/2`
-/

namespace A353580.P2670639356811353236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266505 (2 * n) + 1 : ℚ) / 2

end

end A353580.P2670639356811353236

namespace A353580

/-- `(A266505(2*n)+1)/2` -/
def P2670639356811353236.Spec : Prop :=
  ∀ n, P2670639356811353236.a n = (A353580 n : ℚ)

end A353580

/-! ## A353580.P11157003160374396996

`A024537(n)-abs(A176981(n))`
-/

namespace A353580.P11157003160374396996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n - |A176981 n|

end

end A353580.P11157003160374396996

namespace A353580

/-- `A024537(n)-abs(A176981(n))` -/
def P11157003160374396996.Spec : Prop :=
  ∀ n, P11157003160374396996.a n = A353580 n

end A353580

/-! ## A353580.P8285295824496789690

`A078057(n)-A033539(n+1)`
-/

namespace A353580.P8285295824496789690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - A033539 (n + 1)

end

end A353580.P8285295824496789690

namespace A353580

/-- `A078057(n)-A033539(n+1)` -/
def P8285295824496789690.Spec : Prop :=
  ∀ n, P8285295824496789690.a n = A353580 n

end A353580

/-! ## A353580.P14164593434975487678

`(A174191(n)+A078343(n))/2`
-/

namespace A353580.P14164593434975487678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174191 n + A078343 n : ℚ) / 2

end

end A353580.P14164593434975487678

namespace A353580

/-- `(A174191(n)+A078343(n))/2` -/
def P14164593434975487678.Spec : Prop :=
  ∀ n, P14164593434975487678.a n = (A353580 n : ℚ)

end A353580

/-! ## A353580.P385788045098227283

`Δ[A001333(n)]+1-A171842(n)`
-/

namespace A353580.P385788045098227283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A171842 n)

end

end A353580.P385788045098227283

namespace A353580

/-- `Δ[A001333(n)]+1-A171842(n)` -/
def P385788045098227283.Spec : Prop :=
  ∀ n, P385788045098227283.a n = A353580 n

end A353580

/-! ## A353580.P18183383652452939887

`Δ[A293004(n)]-A293004(n)/2`
-/

namespace A353580.P18183383652452939887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A293004 n : ℚ) / 2

end

end A353580.P18183383652452939887

namespace A353580

/-- `Δ[A293004(n)]-A293004(n)/2` -/
def P18183383652452939887.Spec : Prop :=
  ∀ n, P18183383652452939887.a n = (A353580 n : ℚ)

end A353580

/-! ## A353580.P9607420908425815609

`A001333(n+1)-A033539(n+1)`
-/

namespace A353580.P9607420908425815609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A033539 (n + 1)

end

end A353580.P9607420908425815609

namespace A353580

/-- `A001333(n+1)-A033539(n+1)` -/
def P9607420908425815609.Spec : Prop :=
  ∀ n, P9607420908425815609.a n = A353580 n

end A353580

/-! ## A353580.P6864131983252635480

`A163271(n+1)-A293004(n)/2`
-/

namespace A353580.P6864131983252635480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (n + 1) : ℚ) - (A293004 n : ℚ) / 2

end

end A353580.P6864131983252635480

namespace A353580

/-- `A163271(n+1)-A293004(n)/2` -/
def P6864131983252635480.Spec : Prop :=
  ∀ n, P6864131983252635480.a n = (A353580 n : ℚ)

end A353580

/-! ## A353580.P822704563472522151

`∑[A266504(2*n)]-A266504(2*n)`
-/

namespace A353580.P822704563472522151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266504 (2 * n)

end

end A353580.P822704563472522151

namespace A353580

/-- `∑[A266504(2*n)]-A266504(2*n)` -/
def P822704563472522151.Spec : Prop :=
  ∀ n, P822704563472522151.a n = A353580 n

end A353580

/-! ## A353580.P5648591054281422373

`A152113(2*(n+1))-A033539(n+1)`
-/

namespace A353580.P5648591054281422373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (2 * (n + 1)) - A033539 (n + 1)

end

end A353580.P5648591054281422373

namespace A353580

/-- `A152113(2*(n+1))-A033539(n+1)` -/
def P5648591054281422373.Spec : Prop :=
  ∀ n, P5648591054281422373.a n = A353580 n

end A353580

/-! ## A353580.P17466644814757263845

`2*A000129(n)-A247311(A016789(n))`
-/

namespace A353580.P17466644814757263845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n - A247311 (A016789 n).toNat

end

end A353580.P17466644814757263845

namespace A353580

/-- `2*A000129(n)-A247311(A016789(n))` -/
def P17466644814757263845.Spec : Prop :=
  ∀ n, P17466644814757263845.a n = A353580 n

end A353580

/-! ## A353580.P17844498580335655964

`A113225(n+1)+A113225(n)-A002203(n)`
-/

namespace A353580.P17844498580335655964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 (n + 1) + (A113225 n - A002203 n)

end

end A353580.P17844498580335655964

namespace A353580

/-- `A113225(n+1)+A113225(n)-A002203(n)` -/
def P17844498580335655964.Spec : Prop :=
  ∀ n, P17844498580335655964.a n = A353580 n

end A353580

/-! ## A353580.P1410793738684741064

`A000129(n+1)+A000129(n)-A033539(n+1)`
-/

namespace A353580.P1410793738684741064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A000129 n - A033539 (n + 1))

end

end A353580.P1410793738684741064

namespace A353580

/-- `A000129(n+1)+A000129(n)-A033539(n+1)` -/
def P1410793738684741064.Spec : Prop :=
  ∀ n, P1410793738684741064.a n = A353580 n

end A353580

/-!
# A353581: a(n) = 2*a(n-1) + 2*a(n-3) + a(n-4), with a(0) = 0 = a(1), a(2) = 2, and a(3) = 1.

The programs for A353581, the canonical program `A353581.P11795658798731397988` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353581 has offset 0).

The definition of A353581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-3)+a(n-4)` (program `A353581.P11795658798731397988`, by `A353581.P11795658798731397988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353581.P11795658798731397988

`2*a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353581

/-- `2*a(n-1)+2*a(n-3)+a(n-4)` -/
def P11795658798731397988.Spec : Prop :=
  ∀ n, (P11795658798731397988.a n : ℤ) = A353581 n

theorem P11795658798731397988.correct : P11795658798731397988.Spec := by
  intro n
  simp only [A353581]

end A353581

/-! ## A353581.P5497165549302636906

`ogf((-2x^2+3x^3)/(-1+2x+2x^3+x^4))`
-/

namespace A353581.P5497165549302636906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -3] [1, -2, 0, -2, -1] n

end

end A353581.P5497165549302636906

namespace A353581

/-- `ogf((-2x^2+3x^3)/(-1+2x+2x^3+x^4))` -/
def P5497165549302636906.Spec : Prop :=
  ∀ n, P5497165549302636906.a n = A353581 n

end A353581

/-! ## A353581.P177273233693653129

`(a(n-3)/a(n-2)+2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A353581.P177273233693653129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2, 1] fun n a =>
  (a (n - 3) / a (n - 2) + 2) * a (n - 1)

end

end A353581.P177273233693653129

namespace A353581

/-- `(a(n-3)/a(n-2)+2)*a(n-1)` -/
def P177273233693653129.Spec : Prop :=
  ∀ n, P177273233693653129.a n = (A353581 n : ℚ)

end A353581

/-! ## A353581.P11898557216502231066

`Δ[A353582(abs(1-n))]`
-/

namespace A353581.P11898557216502231066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353581.P11898557216502231066

namespace A353581

/-- `Δ[A353582(abs(1-n))]` -/
def P11898557216502231066.Spec : Prop :=
  ∀ n, P11898557216502231066.a n = A353581 n

end A353581

/-! ## A353581.P1467338891696342593

`A353582(n)-A353582(abs(1-n))`
-/

namespace A353581.P1467338891696342593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353582 n - A353582 |1 - (n : ℤ)|.toNat

end

end A353581.P1467338891696342593

namespace A353581

/-- `A353582(n)-A353582(abs(1-n))` -/
def P1467338891696342593.Spec : Prop :=
  ∀ n, P1467338891696342593.a n = A353581 n

end A353581

/-! ## A353581.P12215893256253457712

`Δ[A353580(n)-A353582(n+1)]`
-/

namespace A353581.P12215893256253457712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 n - A353582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353581.P12215893256253457712

namespace A353581

/-- `Δ[A353580(n)-A353582(n+1)]` -/
def P12215893256253457712.Spec : Prop :=
  ∀ n, P12215893256253457712.a n = A353581 n

end A353581

/-!
# A353582: a(n) = 2*a(n-1) + 2*a(n-3) + a(n-4) - 1, with a(0) = 0 = a(1), a(2) = 2, and a(3) = 3.

The programs for A353582, the canonical program `A353582.P4134527615699151057` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353582 has offset 0).

The definition of A353582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-3)+a(n-4)-1` (program `A353582.P4134527615699151057`, by `A353582.P4134527615699151057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353582.P4134527615699151057

`2*a(n-1)+2*a(n-3)+a(n-4)-1` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353582

/-- `2*a(n-1)+2*a(n-3)+a(n-4)-1` -/
def P4134527615699151057.Spec : Prop :=
  ∀ n, P4134527615699151057.a n = A353582 n

theorem P4134527615699151057.correct : P4134527615699151057.Spec := by
  intro n
  simp only [A353582]

end A353582

/-! ## A353582.P5342814826369520648

`∑[ogf((-2x^2+3x^3)/(-1+2x+2x^3+x^4))]`
-/

namespace A353582.P5342814826369520648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -3] [1, -2, 0, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353582.P5342814826369520648

namespace A353582

/-- `∑[ogf((-2x^2+3x^3)/(-1+2x+2x^3+x^4))]` -/
def P5342814826369520648.Spec : Prop :=
  ∀ n, P5342814826369520648.a n = A353582 n

end A353582

/-! ## A353582.P10730481109941820607

`∑[A353581(n)]`
-/

namespace A353582.P10730481109941820607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353582.P10730481109941820607

namespace A353582

/-- `∑[A353581(n)]` -/
def P10730481109941820607.Spec : Prop :=
  ∀ n, P10730481109941820607.a n = A353582 n

end A353582

/-!
# A353584: Denominators of coefficients c(n) in product expansion of 1 + tan x = Product_{k>=1} 1 + c(k)*x^k.

The programs for A353584, there is no canonical definition to state claims against.
-/

/-! ## A353584.P12859452619546321121

`A000265(A093659(n)*A170915(n+1))`
-/

namespace A353584.P12859452619546321121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A093659 n * A170915 (n + 1)).toNat

end

end A353584.P12859452619546321121

/-! ## A353584.P17969162790092342329

`A000265(A170915(n+1)*A274741(n))`
-/

namespace A353584.P17969162790092342329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A170915 (n + 1) * A274741 n).toNat

end

end A353584.P17969162790092342329

/-! ## A353584.P11609654407220241147

`A000265(A328186(n+1)/A055151(n))`
-/

namespace A353584.P11609654407220241147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A328186 (n + 1) : ℚ) / (A055151 n : ℚ))).toNat

end

end A353584.P11609654407220241147

/-! ## A353584.P10085123418602950623

`A000265(A328186(n+1)/A294442(n))`
-/

namespace A353584.P10085123418602950623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A328186 (n + 1) : ℚ) / (A294442 n : ℚ))).toNat

end

end A353584.P10085123418602950623

/-! ## A353584.P5129483958301784146

`A302044(A328186(n+1)/A055151(n))`
-/

namespace A353584.P5129483958301784146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (SequenceMachineLib.roundAway ((A328186 (n + 1) : ℚ) / (A055151 n : ℚ))).toNat

end

end A353584.P5129483958301784146

/-!
# A353585: Square array T(n,k): row n lists the number of inequivalent matrices over Z/nZ, modulo permutations of rows and columns, of size r X c, 1 <= r <= c, c >= 1.

The programs for A353585, there is no canonical definition to state claims against.
-/

/-! ## A353585.P819241266891519560

`dr(A299128(A269479(n+1)))`
-/

namespace A353585.P819241266891519560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299128 (A269479 (n + 1)).toNat)

end

end A353585.P819241266891519560

/-! ## A353585.P17740477068858670041

`A323226(7*A208597(n+1))`
-/

namespace A353585.P17740477068858670041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323226 (7 * A208597 (n + 1)).toNat

end

end A353585.P17740477068858670041

/-! ## A353585.P7870062744706955631

`A334948(or(8, A060627(n+1)))`
-/

namespace A353585.P7870062744706955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (Int.lor 8 (A060627 (n + 1))).toNat

end

end A353585.P7870062744706955631

/-! ## A353585.P1543931956837706730

`∑{e}[A061955(A333650(n+1))+1, #]`
-/

namespace A353585.P1543931956837706730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061955 (A333650 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A353585.P1543931956837706730

/-! ## A353585.P6585752943913266524

`A278483(n)+A094848(A132813(n))`
-/

namespace A353585.P6585752943913266524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 n + A094848 (A132813 n).toNat

end

end A353585.P6585752943913266524

/-!
# A353587: Denominators of coefficients c(n) in product expansion of (tan x)/x = Product_{k>=1} 1 + c(k)*x^(2k).

The programs for A353587, there is no canonical definition to state claims against.
-/

/-! ## A353587.P12745896154551982020

`A003961(A001813(n+1)/A072964(n+1))`
-/

namespace A353587.P12745896154551982020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A001813 (n + 1) : ℚ) / (A072964 (n + 1) : ℚ))).toNat

end

end A353587.P12745896154551982020

/-!
# A353589: Number of nondecreasing nonnegative integer quadruples (m,p,q,r) such that m^2 + p^2 + q^2 + r^2 = n^2 and m +- p +- q +- r = +- n.

The programs for A353589, there is no canonical definition to state claims against.
-/

/-! ## A353589.P13992314504207683318

`A000164(A033428(n))*A040001(n)`
-/

namespace A353589.P13992314504207683318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A033428 n).toNat * A040001 n

end

end A353589.P13992314504207683318

/-! ## A353589.P6397642529410648858

`A000164(A135453(n))*A040001(n)`
-/

namespace A353589.P6397642529410648858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A135453 n).toNat * A040001 n

end

end A353589.P6397642529410648858

/-!
# A353593: Triangle read by rows. The Riordan square of the tetranacci numbers (A000078).

The programs for A353593, there is no canonical definition to state claims against.
-/

/-! ## A353593.P6654368256335177589

`A200139(n)-A326291(A110488(n))`
-/

namespace A353593.P6654368256335177589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A326291 (A110488 n).toNat

end

end A353593.P6654368256335177589

/-! ## A353593.P9013642307994034273

`A200139(n)-A025466(A243098(n+1))`
-/

namespace A353593.P9013642307994034273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A025466 (A243098 (n + 1)).toNat

end

end A353593.P9013642307994034273

/-! ## A353593.P13716077630185267457

`A200139(n)-A125005(A143291(n+2))`
-/

namespace A353593.P13716077630185267457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A125005 (A143291 (n + 2)).toNat

end

end A353593.P13716077630185267457

/-! ## A353593.P15828788657311041498

`A200139(n)-A243223(A300208(n+3))`
-/

namespace A353593.P15828788657311041498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n - A243223 (A300208 (n + 3)).toNat

end

end A353593.P15828788657311041498

/-!
# A353595: Array read by ascending antidiagonals. Generalized Fibonacci numbers F(n, k) = (psi^(k - 1)*(phi + n) - phi^(k - 1)*(psi + n)) / (psi - phi) where phi = (1+sqrt(5))/2 and psi = (1-sqrt(5))/2. F(n, k) for n >= 0 and k >= 0.

The programs for A353595, there is no canonical definition to state claims against.
-/

/-! ## A353595.P14901442254700509409

`A017125(∑[2*n]%comp[∑[n]])`
-/

namespace A353595.P14901442254700509409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A353595.P14901442254700509409

/-! ## A353595.P13819260040884597771

`A017125(∑[char[∑[n]]]²-(n+1))`
-/

namespace A353595.P13819260040884597771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A353595.P13819260040884597771

/-! ## A353595.P14119845062986722702

`A017125(A061579(n))*A057427(n)`
-/

namespace A353595.P14119845062986722702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A061579 n).toNat * A057427 n

end

end A353595.P14119845062986722702

/-! ## A353595.P18102007021861676835

`lcm(A017125(A061579(n)), A033999(n))`
-/

namespace A353595.P18102007021861676835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017125 (A061579 n).toNat) (A033999 n)

end

end A353595.P18102007021861676835

/-! ## A353595.P16129637664353268868

`and(A017125(A061579(n)), A057428(n))`
-/

namespace A353595.P16129637664353268868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017125 (A061579 n).toNat) (A057428 n)

end

end A353595.P16129637664353268868

/-! ## A353595.P11376051310519955529

`A017125(A061579(n))/gcd(2, A000040(n+1))`
-/

namespace A353595.P11376051310519955529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017125 (A061579 n).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A353595.P11376051310519955529

/-! ## A353595.P11568686653237198872

`A000045(gcd(n, n+1))*A017125(A061579(n))`
-/

namespace A353595.P11568686653237198872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A017125 (A061579 n).toNat

end

end A353595.P11568686653237198872

/-! ## A353595.P13924004708956585127

`A109754(n)+A007814(A099627(n))`
-/

namespace A353595.P13924004708956585127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 n + A007814 (A099627 n).toNat

end

end A353595.P13924004708956585127

/-!
# A353597: Rounded values of Celsius (Centigrade) temperatures for which the corresponding Fahrenheit temperature rounds to its digit reversal.

The programs for A353597, there is no canonical definition to state claims against.
-/

/-! ## A353597.P11146864537304184494

`A004086(A353598(n+1))`
-/

namespace A353597.P11146864537304184494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A353598 (n + 1)).toNat

end

end A353597.P11146864537304184494

/-!
# A353598: Rounded values of Fahrenheit temperatures for which the corresponding Celsius (Centigrade) temperature rounds to its digit reversal.

The programs for A353598, there is no canonical definition to state claims against.
-/

/-! ## A353598.P16528879414425839787

`A004086(A353597(n+1))`
-/

namespace A353598.P16528879414425839787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A353597 (n + 1)).toNat

end

end A353598.P16528879414425839787

