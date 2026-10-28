import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C011
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A192600: Number of nXnXn triangular 0..1 arrays with each element equal to at least one neighbor and new values 0..1 introduced in row major order.

The programs for A192600, there is no canonical definition to state claims against.
-/

/-! ## A192600.P11542433507575767016

`A192724(n+1)+(2*n+3)%(n+1)`
-/

namespace A192600.P11542433507575767016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192724 (n + 1) + (((2 * n + 3) % (n + 1) : ℕ) : ℤ)

end

end A192600.P11542433507575767016

/-! ## A192600.P18305859729250859553

`A192724(n+1)+char[A135278(n)]`
-/

namespace A192600.P18305859729250859553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192724 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192600.P18305859729250859553

/-! ## A192600.P17811035020841690049

`A192724(n+1)+1-A018843(n)`
-/

namespace A192600.P17811035020841690049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192724 (n + 1) + (1 - A018843 n)

end

end A192600.P17811035020841690049

/-! ## A192600.P14978536660631682805

`A192724(n+1)+char[A069735(n+1)]`
-/

namespace A192600.P14978536660631682805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192724 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192600.P14978536660631682805

/-! ## A192600.P15305100789491126801

`A192724(n+1)+A018843(A018843(n))`
-/

namespace A192600.P15305100789491126801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192724 (n + 1) + A018843 (A018843 n).toNat

end

end A192600.P15305100789491126801

/-!
# A192601: Number of nXnXn triangular 0..2 arrays with each element equal to at least one neighbor and new values 0..2 introduced in row major order.

The programs for A192601, there is no canonical definition to state claims against.
-/

/-! ## A192601.P14284018919754585337

`A192725(n+1)+A192600(n+1)`
-/

namespace A192601.P14284018919754585337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192725 (n + 1) + A192600 (n + 1)

end

end A192601.P14284018919754585337

/-! ## A192601.P6260388750845798395

`A192602(n+1)-A192726(n+1)`
-/

namespace A192601.P6260388750845798395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192602 (n + 1) - A192726 (n + 1)

end

end A192601.P6260388750845798395

/-!
# A192602: Number of nXnXn triangular 0..3 arrays with each element equal to at least one neighbor and new values 0..3 introduced in row major order.

The programs for A192602, there is no canonical definition to state claims against.
-/

/-! ## A192602.P2657008098159433460

`A192726(n+1)+A192601(n+1)`
-/

namespace A192602.P2657008098159433460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192726 (n + 1) + A192601 (n + 1)

end

end A192602.P2657008098159433460

/-! ## A192602.P7388909082677862509

`A192600(n+1)+A192726(n+1)+A192725(n+1)`
-/

namespace A192602.P7388909082677862509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (n + 1) + (A192726 (n + 1) + A192725 (n + 1))

end

end A192602.P7388909082677862509

/-!
# A192605: Number of n X n X n triangular 0..6 arrays with each element equal to at least one neighbor and new values 0..6 introduced in row major order.

The programs for A192605, there is no canonical definition to state claims against.
-/

/-! ## A192605.P5339328712290963341

`A192606(A005706(n))`
-/

namespace A192605.P5339328712290963341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192606 (A005706 n).toNat

end

end A192605.P5339328712290963341

/-!
# A192607: Nonludic numbers: complement of A003309.

The programs for A192607, there is no canonical definition to state claims against.
-/

/-! ## A192607.P1869082655405863312

`lt[1, A302032(n+1)]+1`
-/

namespace A192607.P1869082655405863312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192607.P1869082655405863312

/-! ## A192607.P6971067671890038319

`lt[1, A302037(n+1)]+1`
-/

namespace A192607.P6971067671890038319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192607.P6971067671890038319

/-! ## A192607.P8369528805379855442

`comp[A003309(n+1)-1]+1`
-/

namespace A192607.P8369528805379855442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A192607.P8369528805379855442

/-! ## A192607.P6168536014360763646

`∪[A192505(n+1), A192506(n+1)]`
-/

namespace A192607.P6168536014360763646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192607.P6168536014360763646

/-! ## A192607.P15613670442907925960

`∪[A192506(n+1), A266419(n+1)]`
-/

namespace A192607.P15613670442907925960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192607.P15613670442907925960

/-! ## A192607.P4837154922911396472

`∪[A192506(n+1), A276447(n+1)]`
-/

namespace A192607.P4837154922911396472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192607.P4837154922911396472

/-! ## A192607.P995796843224410969

`∪[A192506(n+1), A276569(n+1)]`
-/

namespace A192607.P995796843224410969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192607.P995796843224410969

/-! ## A192607.P12250525251473597363

`lt[1, A260739(n+1)]+1`
-/

namespace A192607.P12250525251473597363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192607.P12250525251473597363

/-! ## A192607.P14831433083674860264

`lt[A000217(A260738(n+1)+1), n+1]+1`
-/

namespace A192607.P14831433083674860264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A260738 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192607.P14831433083674860264

/-! ## A192607.P7308991488081770824

`eq[0, A192490(n+1)]+1`
-/

namespace A192607.P7308991488081770824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192607.P7308991488081770824

/-! ## A192607.P2815324117795618850

`lt[0, A271419(n+1)]+1`
-/

namespace A192607.P2815324117795618850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192607.P2815324117795618850

/-! ## A192607.P3150113737527751992

`lt[A272565(n+1), n]+1`
-/

namespace A192607.P3150113737527751992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192607.P3150113737527751992

/-! ## A192607.P17646241303709758794

`A192512(a(n-1)+1)+n+1` with `a(0)=4`
-/

namespace A192607.P17646241303709758794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A192512 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A192607.P17646241303709758794

/-! ## A192607.P12288748662058406338

`lt[1, A302037(A028310(n))]`
-/

namespace A192607.P12288748662058406338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192607.P12288748662058406338

/-! ## A192607.P16334562049485816519

`lt[A272565(A004442(n)+1), n]`
-/

namespace A192607.P16334562049485816519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (A004442 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192607.P16334562049485816519

/-! ## A192607.P16775408571953391963

`A237056(2*(n+1))`
-/

namespace A192607.P16775408571953391963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * (n + 1))

end

end A192607.P16775408571953391963

/-! ## A192607.P14039139217141836311

`comp[A377777(n+1)]`
-/

namespace A192607.P14039139217141836311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192607.P14039139217141836311

/-! ## A192607.P10317705996275971611

`A255421(A002808(A255422(n+1)))`
-/

namespace A192607.P10317705996275971611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255421 (A002808 (A255422 (n + 1)).toNat).toNat

end

end A192607.P10317705996275971611

/-! ## A192607.P6654548576335336897

`lt[A020639(A269172(n+1)), A269172(n+1)]+1`
-/

namespace A192607.P6654548576335336897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A269172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192607.P6654548576335336897

/-!
# A192611: Primes prime(k) such that prime(k)*k+1 is also prime.

The programs for A192611, there is no canonical definition to state claims against.
-/

/-! ## A192611.P15746487980724411933

`(A096064(n+1)-1)/A086172(n+1)`
-/

namespace A192611.P15746487980724411933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096064 (n + 1) - 1 : ℚ) / (A086172 (n + 1) : ℚ)

end

end A192611.P15746487980724411933

/-! ## A192611.P11236755330653971630

`A000040(A086172(n+1))`
-/

namespace A192611.P11236755330653971630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086172 (n + 1)).toNat

end

end A192611.P11236755330653971630

/-! ## A192611.P11216755113972612494

`A008578(A086172(n+1)+1)`
-/

namespace A192611.P11216755113972612494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A086172 (n + 1) + 1).toNat

end

end A192611.P11216755113972612494

/-! ## A192611.P7449320693370747262

`A158611(A086172(n+1)+2)`
-/

namespace A192611.P7449320693370747262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A086172 (n + 1) + 2).toNat

end

end A192611.P7449320693370747262

/-! ## A192611.P7104906106063349401

`A006093(A086172(n+1))+or(1, A000007(n))`
-/

namespace A192611.P7104906106063349401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A086172 (n + 1)).toNat + Int.lor 1 (A000007 n)

end

end A192611.P7104906106063349401

/-! ## A192611.P9261830546536302651

`A006093(A086172(n+1))+A008836(n+1)²`
-/

namespace A192611.P9261830546536302651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A086172 (n + 1)).toNat + A008836 (n + 1) ^ 2

end

end A192611.P9261830546536302651

/-! ## A192611.P7180683302857086782

`A010137(2*n+1)+A006093(A086172(n+1))`
-/

namespace A192611.P7180683302857086782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (2 * n + 1) + A006093 (A086172 (n + 1)).toNat

end

end A192611.P7180683302857086782

/-! ## A192611.P4508354782090650123

`A008864(A086172(n+1))-A000035(2*n+1)`
-/

namespace A192611.P4508354782090650123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A086172 (n + 1)).toNat - A000035 (2 * n + 1)

end

end A192611.P4508354782090650123

/-! ## A192611.P7123615029022811552

`A006093(A086172(n+1))-A008683(A034844(n+1))`
-/

namespace A192611.P7123615029022811552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A086172 (n + 1)).toNat - A008683 (A034844 (n + 1)).toNat

end

end A192611.P7123615029022811552

/-! ## A192611.P8141020158614730776

`A073846(2*A086172(n+1))`
-/

namespace A192611.P8141020158614730776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A086172 (n + 1)).toNat

end

end A192611.P8141020158614730776

/-!
# A192612: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2+2y^2 is a prime, then x^2+2y^2 is in S, and 1 and 2 are in S.

The programs for A192612, there is no canonical definition to state claims against.
-/

/-! ## A192612.P17362130930984699305

`A192613(comp[A153772(n)])`
-/

namespace A192612.P17362130930984699305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192612.P17362130930984699305

/-! ## A192612.P129547269162700342

`A192613(comp[A241684(n)])`
-/

namespace A192612.P129547269162700342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241684 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192612.P129547269162700342

/-! ## A192612.P16929447686192776400

`A192613(∑[A033761(n)!])`
-/

namespace A192612.P16929447686192776400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A033761 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192612.P16929447686192776400

/-! ## A192612.P2400793513023367046

`A192613(comp[A250120(n)-1])`
-/

namespace A192612.P2400793513023367046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192612.P2400793513023367046

/-! ## A192612.P2393819164440520002

`A192613(comp[A182839(4*n)])`
-/

namespace A192612.P2393819164440520002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (4 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192612.P2393819164440520002

/-!
# A192614: Monotonic ordering of set S generated by these rules: if x and y are in S and 2x+y^2 is a prime, then 2x+y^2 is in S, and 1 is in S.

The programs for A192614, there is no canonical definition to state claims against.
-/

/-! ## A192614.P17204299450397163409

`A008578(A192615(n+1)+1)`
-/

namespace A192614.P17204299450397163409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A192615 (n + 1) + 1).toNat

end

end A192614.P17204299450397163409

/-! ## A192614.P5515362229070991978

`A006005(A192615(n+1)+A000007(n))`
-/

namespace A192614.P5515362229070991978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A192615 (n + 1) + A000007 n).toNat

end

end A192614.P5515362229070991978

/-! ## A192614.P14358937637581464159

`A006005(A192615(n+1)^A178334(n))`
-/

namespace A192614.P14358937637581464159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.roundAway ((A192615 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A192614.P14358937637581464159

/-! ## A192614.P16900636645377017558

`A006005(C(A192615(n+1), A178334(n)))`
-/

namespace A192614.P16900636645377017558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Nat.choose (A192615 (n + 1)).toNat (A178334 n).toNat)

end

end A192614.P16900636645377017558

/-! ## A192614.P5396144552127748738

`A006005(C(A192615(n+1), -A057428(n)))`
-/

namespace A192614.P5396144552127748738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Nat.choose (A192615 (n + 1)).toNat (-A057428 n).toNat)

end

end A192614.P5396144552127748738

/-!
# A192615: Index-list of the primes generated at A192614.

The programs for A192615, there is no canonical definition to state claims against.
-/

/-! ## A192615.P5672334324879359402

`A000720(A192614(n+1))`
-/

namespace A192615.P5672334324879359402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192614 (n + 1)).toNat

end

end A192615.P5672334324879359402

/-! ## A192615.P15626115442750209282

`A346698(2*A192614(n+1))`
-/

namespace A192615.P15626115442750209282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A192614 (n + 1)).toNat

end

end A192615.P15626115442750209282

/-! ## A192615.P2476372625739476932

`A346698(lcm(2, A192614(n+1)))`
-/

namespace A192615.P2476372625739476932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (Int.lcm 2 (A192614 (n + 1)))

end

end A192615.P2476372625739476932

/-! ## A192615.P1388552867577282148

`A049084(or(1, A192614(n+1)))`
-/

namespace A192615.P1388552867577282148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A192614 (n + 1))).toNat

end

end A192615.P1388552867577282148

/-! ## A192615.P13700230580503812436

`A055396(or(1, A192614(n+1)))`
-/

namespace A192615.P13700230580503812436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A192614 (n + 1))).toNat

end

end A192615.P13700230580503812436

/-!
# A192616: Constant term in the reduction of the n-th Fibonacci polynomial by x^3->x^2+x+1. See Comments.

The programs for A192616, the canonical program `A192616.P1229749608282832346` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192616 has offset 1).

The definition of A192616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192616.P1229749608282832346

`ogf((1-x-3x^2+x^3+x^4)/(1-x-4x^2+x^3+4x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192616

/-- `ogf((1-x-3x^2+x^3+x^4)/(1-x-4x^2+x^3+4x^4-x^5-x^6))` -/
def P1229749608282832346.Spec : Prop :=
  ∀ n, P1229749608282832346.a n = A192616 (n + 1)

theorem P1229749608282832346.correct : P1229749608282832346.Spec := by
  intro n
  simp only [A192616, Nat.add_sub_cancel]

end A192616

/-! ## A192616.P7172410726474760555

`A192651(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A192616.P7172410726474760555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A192651 n + a (n - 2)

end

end A192616.P7172410726474760555

namespace A192616

/-- `A192651(n)+a(n-2)` -/
def P7172410726474760555.Spec : Prop :=
  ∀ n, P7172410726474760555.a n = A192616 (n + 1)

end A192616

/-! ## A192616.P9306218890578843659

`A100196(A089427(n)+A033999(n))`
-/

namespace A192616.P9306218890578843659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A089427 n + A033999 n).toNat

end

end A192616.P9306218890578843659

namespace A192616

/-- `A100196(A089427(n)+A033999(n))` -/
def P9306218890578843659.Spec : Prop :=
  ∀ n, P9306218890578843659.a n = A192616 (n + 1)

end A192616

/-! ## A192616.P16241466369863586875

`A100196(A089427(n)-A273190(n))`
-/

namespace A192616.P16241466369863586875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A089427 n - A273190 n).toNat

end

end A192616.P16241466369863586875

namespace A192616

/-- `A100196(A089427(n)-A273190(n))` -/
def P16241466369863586875.Spec : Prop :=
  ∀ n, P16241466369863586875.a n = A192616 (n + 1)

end A192616

/-! ## A192616.P9047733766209891666

`A100196(A089427(n)-Δ[A320510(n)])`
-/

namespace A192616.P9047733766209891666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A089427 n - (f1 (n + 1) - f1 n)).toNat

end

end A192616.P9047733766209891666

namespace A192616

/-- `A100196(A089427(n)-Δ[A320510(n)])` -/
def P9047733766209891666.Spec : Prop :=
  ∀ n, P9047733766209891666.a n = A192616 (n + 1)

end A192616

/-!
# A192617: Coefficient of x in the reduction of the n-th Fibonacci polynomial by x^3->x^2+x+1.

The programs for A192617, the canonical program `A192617.P9335091919025753839` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192617 has offset 1).

The definition of A192617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192617.P9335091919025753839

`ogf((x-x^2-x^3)/(1-x-4x^2+x^3+4x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192617

/-- `ogf((x-x^2-x^3)/(1-x-4x^2+x^3+4x^4-x^5-x^6))` -/
def P9335091919025753839.Spec : Prop :=
  ∀ n, P9335091919025753839.a n = A192617 (n + 1)

theorem P9335091919025753839.correct : P9335091919025753839.Spec := by
  intro n
  simp only [A192617, Nat.add_sub_cancel]

end A192617

/-! ## A192617.P598037007536896331

`Δ[A192651(n+1)]-A192651(A028310(n))`
-/

namespace A192617.P598037007536896331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192651 (A028310 n).toNat

end

end A192617.P598037007536896331

namespace A192617

/-- `Δ[A192651(n+1)]-A192651(A028310(n))` -/
def P598037007536896331.Spec : Prop :=
  ∀ n, P598037007536896331.a n = A192617 (n + 1)

end A192617

/-! ## A192617.P13720371827676099217

`Δ[A192651(n+1)]-A192651(A233583(n+1))`
-/

namespace A192617.P13720371827676099217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192651 (A233583 (n + 1)).toNat

end

end A192617.P13720371827676099217

namespace A192617

/-- `Δ[A192651(n+1)]-A192651(A233583(n+1))` -/
def P13720371827676099217.Spec : Prop :=
  ∀ n, P13720371827676099217.a n = A192617 (n + 1)

end A192617

/-! ## A192617.P17347688667361069237

`A002024(A186001(n))-A027656(n)`
-/

namespace A192617.P17347688667361069237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A186001 n).toNat - A027656 n

end

end A192617.P17347688667361069237

namespace A192617

/-- `A002024(A186001(n))-A027656(n)` -/
def P17347688667361069237.Spec : Prop :=
  ∀ n, P17347688667361069237.a n = A192617 (n + 1)

end A192617

/-!
# A192618: Prime powers p^k with even exponents k > 0 such that (1 + p^k)/2 is prime.

The programs for A192618, the canonical program `A192618.P9154005034484997042` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192618 has offset 1).

The definition of A192618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192618.P11205658379986596485

`2*A308442(n+1)-1`
-/

namespace A192618.P11205658379986596485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308442 (n + 1) - 1

end

end A192618.P11205658379986596485

namespace A192618

/-- `2*A308442(n+1)-1` -/
def P11205658379986596485.Spec : Prop :=
  ∀ n, P11205658379986596485.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P9154005034484997042

`record[A008475(A002731(n+1))²]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A192618

/-- `record[A008475(A002731(n+1))²]` -/
def P9154005034484997042.Spec : Prop :=
  ∀ n, P9154005034484997042.a n = A192618 (n + 1)

theorem P9154005034484997042.correct : P9154005034484997042.Spec := by
  intro n
  simp only [A192618, Nat.add_sub_cancel]

end A192618

/-! ## A192618.P13418526257048279814

`A343785(A016789(n))+2*A308442(n+1)`
-/

namespace A192618.P13418526257048279814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A016789 n).toNat + 2 * A308442 (n + 1)

end

end A192618.P13418526257048279814

namespace A192618

/-- `A343785(A016789(n))+2*A308442(n+1)` -/
def P13418526257048279814.Spec : Prop :=
  ∀ n, P13418526257048279814.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P12651058599466136513

`A308442(n+1)+A308442(n+1)-A343785(n+1)²`
-/

namespace A192618.P12651058599466136513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1) + (A308442 (n + 1) - A343785 (n + 1) ^ 2)

end

end A192618.P12651058599466136513

namespace A192618

/-- `A308442(n+1)+A308442(n+1)-A343785(n+1)²` -/
def P12651058599466136513.Spec : Prop :=
  ∀ n, P12651058599466136513.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P12705712554970697942

`(record[A034699(A002731(n+1))]%A189836(n))²`
-/

namespace A192618.P12705712554970697942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A002731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A189836 n) ^ 2

end

end A192618.P12705712554970697942

namespace A192618

/-- `(record[A034699(A002731(n+1))]%A189836(n))²` -/
def P12705712554970697942.Spec : Prop :=
  ∀ n, P12705712554970697942.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P1920922431199177068

`record[A034699(A281505(n+1))²]`
-/

namespace A192618.P1920922431199177068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A281505 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192618.P1920922431199177068

namespace A192618

/-- `record[A034699(A281505(n+1))²]` -/
def P1920922431199177068.Spec : Prop :=
  ∀ n, P1920922431199177068.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P14834110260966388188

`lcm(2, A308442(n+1))-A010051(A005383(n+1))`
-/

namespace A192618.P14834110260966388188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A308442 (n + 1)) : ℤ) - A010051 (A005383 (n + 1)).toNat

end

end A192618.P14834110260966388188

namespace A192618

/-- `lcm(2, A308442(n+1))-A010051(A005383(n+1))` -/
def P14834110260966388188.Spec : Prop :=
  ∀ n, P14834110260966388188.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P16681750547615339126

`A008683(A031933(n))+2*A308442(n+1)`
-/

namespace A192618.P16681750547615339126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031933 n).toNat + 2 * A308442 (n + 1)

end

end A192618.P16681750547615339126

namespace A192618

/-- `A008683(A031933(n))+2*A308442(n+1)` -/
def P16681750547615339126.Spec : Prop :=
  ∀ n, P16681750547615339126.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P495444089162785713

`record[A034699(2*A002731(n+1))²]`
-/

namespace A192618.P495444089162785713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A002731 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192618.P495444089162785713

namespace A192618

/-- `record[A034699(2*A002731(n+1))²]` -/
def P495444089162785713.Spec : Prop :=
  ∀ n, P495444089162785713.a n = A192618 (n + 1)

end A192618

/-! ## A192618.P404677488850829304

`A000290(record[A034699(A002731(n+1))])`
-/

namespace A192618.P404677488850829304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A002731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192618.P404677488850829304

namespace A192618

/-- `A000290(record[A034699(A002731(n+1))])` -/
def P404677488850829304.Spec : Prop :=
  ∀ n, P404677488850829304.a n = A192618 (n + 1)

end A192618

/-!
# A192619: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x)^(1/2))^2/(1 - x^n*A(x)^(1/2))^2.

The programs for A192619, there is no canonical definition to state claims against.
-/

/-! ## A192619.P4249852529010350254

`A007843(A035029(n)-A123164(n))`
-/

namespace A192619.P4249852529010350254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A035029 n - A123164 n).toNat

end

end A192619.P4249852529010350254

/-! ## A192619.P56785488730628693

`A008619(or(A126475(n), A227376(n)))`
-/

namespace A192619.P56785488730628693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A126475 n) (A227376 n)).toNat

end

end A192619.P56785488730628693

/-!
# A192620: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x))^2/(1 - x^n*A(x))^2.

The programs for A192620, there is no canonical definition to state claims against.
-/

/-! ## A192620.P2030732231215846148

`A059995(C(2*(2*n+1)+n+1, n)/(n+1))+C(2*(2*n+1)+n+1, n)/(n+1)`
-/

namespace A192620.P2030732231215846148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 (SequenceMachineLib.roundAway ((Nat.choose (2 * (2 * n + 1) + (n + 1)) n : ℚ) / (n + 1 : ℚ))).toNat : ℚ) + (Nat.choose (2 * (2 * n + 1) + (n + 1)) n : ℚ) / (n + 1 : ℚ)

end

end A192620.P2030732231215846148

/-!
# A192621: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x)^2)/(1 - x^n*A(x)^2).

The programs for A192621, there is no canonical definition to state claims against.
-/

/-! ## A192621.P11058654006030089793

`A167808(n)+A004273(A286867(n))`
-/

namespace A192621.P11058654006030089793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 n + A004273 (A286867 n).toNat

end

end A192621.P11058654006030089793

/-!
# A192622: G.f. satisfies: A(x) = Product_{n>=0} (1 + x^(n+1)*A(x)^n)^2/(1 - x^(n+1)*A(x)^n)^2.

The programs for A192622, there is no canonical definition to state claims against.
-/

/-! ## A192622.P7590625227585336092

`A042948(A001405(n+1)*A319616(n))`
-/

namespace A192622.P7590625227585336092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A001405 (n + 1) * A319616 n).toNat

end

end A192622.P7590625227585336092

/-! ## A192622.P11382479961188613740

`A103517(A308555(n+1)-A308554(n+1))`
-/

namespace A192622.P11382479961188613740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A308555 (n + 1) - A308554 (n + 1)).toNat

end

end A192622.P11382479961188613740

/-!
# A192623: G.f. satisfies: A(x) = Product_{n>=0} (1 + x^(n+1)*A(x)^(2*n))/(1 - x^(n+1)*A(x)^(2*n)).

The programs for A192623, there is no canonical definition to state claims against.
-/

/-! ## A192623.P92532366210624820

`A015128(n)*A280951(A046127(n))`
-/

namespace A192623.P92532366210624820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A280951 (A046127 n).toNat

end

end A192623.P92532366210624820

/-! ## A192623.P5775851602097299499

`A015128(n)*A325368(A082582(n))`
-/

namespace A192623.P5775851602097299499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A325368 (A082582 n).toNat

end

end A192623.P5775851602097299499

/-! ## A192623.P15078789026365444050

`A015128(n)*A325369(A170941(n))`
-/

namespace A192623.P15078789026365444050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A325369 (A170941 n).toNat

end

end A192623.P15078789026365444050

/-!
# A192624: G.f. satisfies: A(x) = Product_{n>=1} (1+x^n)*(1 + x^n*A(x))/((1-x^n)*(1 - x^n*A(x))).

The programs for A192624, there is no canonical definition to state claims against.
-/

/-! ## A192624.P17613854075416920907

`A028310(A081085(n)+A007110(n))`
-/

namespace A192624.P17613854075416920907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A081085 n + A007110 n).toNat

end

end A192624.P17613854075416920907

/-! ## A192624.P16833625942801852894

`A326686(A003266(n))+A081085(n)`
-/

namespace A192624.P16833625942801852894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 (A003266 n).toNat + A081085 n

end

end A192624.P16833625942801852894

/-!
# A192625: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x))^2/((1-x^n)*(1 - x^n*A(x)^2)).

The programs for A192625, there is no canonical definition to state claims against.
-/

/-! ## A192625.P11113827125987290212

`A218300(n)+A004524(record[A108432(n)])`
-/

namespace A192625.P11113827125987290212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218300 n + A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192625.P11113827125987290212

/-!
# A192626: G.f. satisfies: A(x) = Product_{n>=0} (1 + x*(x+x^2)^n)^2/(1 - x*(x+x^2)^n)^2.

The programs for A192626, there is no canonical definition to state claims against.
-/

/-! ## A192626.P13919095498223487352

`A255408(A156664(n+1)-A028310(2*n))`
-/

namespace A192626.P13919095498223487352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A156664 (n + 1) - A028310 (2 * n)).toNat

end

end A192626.P13919095498223487352

/-! ## A192626.P9124680929052506838

`(n+1)*A048263(2^n)`
-/

namespace A192626.P9124680929052506838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048263 (2 ^ n)

end

end A192626.P9124680929052506838

/-!
# A192627: G.f. satisfies: A(x) = Product_{n>=0} (1 + x*(x+x^2)^n)/(1 - x*(x+x^2)^n).

The programs for A192627, there is no canonical definition to state claims against.
-/

/-! ## A192627.P11151387530062821253

`A018487(n+2)-∑[A051732(n+1)]`
-/

namespace A192627.P11151387530062821253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192627.P11151387530062821253

/-! ## A192627.P3214215418174428288

`A317137(A149987(n))`
-/

namespace A192627.P3214215418174428288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A149987 n).toNat

end

end A192627.P3214215418174428288

/-! ## A192627.P13024240694313089640

`A317137(A149988(n))`
-/

namespace A192627.P13024240694313089640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A149988 n).toNat

end

end A192627.P13024240694313089640

/-! ## A192627.P12599745217914139476

`A000006(A148933(n+1))`
-/

namespace A192627.P12599745217914139476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A148933 (n + 1)).toNat

end

end A192627.P12599745217914139476

/-!
# A192628: Nonvanishing exponents of the reciprocal of the modulo 2 generating function for the sum-of-divisor function.

The programs for A192628, there is no canonical definition to state claims against.
-/

/-! ## A192628.P711767536569392418

`eq[1, A218694(n)%2]`
-/

namespace A192628.P711767536569392418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218694 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192628.P711767536569392418

/-! ## A192628.P15466769913538193202

`eq[1, gcd(2, A283334(n))]`
-/

namespace A192628.P15466769913538193202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A283334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192628.P15466769913538193202

/-! ## A192628.P10991445854681890182

`eq[1, gcd(A016116(n), A218694(n))]`
-/

namespace A192628.P10991445854681890182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016116 n) (A218694 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192628.P10991445854681890182

/-! ## A192628.P2130481960440009724

`eq[1, and(A040001(n), A283334(n))]`
-/

namespace A192628.P2130481960440009724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040001 n) (A283334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192628.P2130481960440009724

/-! ## A192628.P6757232181316596520

`eq[1, and(A283334(n), A342241(n))]`
-/

namespace A192628.P6757232181316596520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283334 n) (A342241 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192628.P6757232181316596520

/-!
# A192632: Denominators of the Diophantus-Dujella rational Diophantine quintuple: 1 + the product of any two distinct terms is a square.

The programs for A192632, there is no canonical definition to state claims against.
-/

/-! ## A192632.P1087047716301316516

`(A375621(3*(n+1))-5)²`
-/

namespace A192632.P1087047716301316516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A375621 (3 * (n + 1)) - 5) ^ 2

end

end A192632.P1087047716301316516

/-!
# A192633: Partial sums of the Floor-Sqrt transform of Catalan numbers.

The programs for A192633, the canonical program `A192633.P30203612038079330` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192633 has offset 0).

The definition of A192633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192633.P30203612038079330

`∑[A186546(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192633

/-- `∑[A186546(n)]` -/
def P30203612038079330.Spec : Prop :=
  ∀ n, P30203612038079330.a n = A192633 n

theorem P30203612038079330.correct : P30203612038079330.Spec := by
  intro n
  simp only [A192633]

end A192633

/-! ## A192633.P7702584178616256476

`∑[floor(sqrt(A000108(n)))]`
-/

namespace A192633.P7702584178616256476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P7702584178616256476

namespace A192633

/-- `∑[floor(sqrt(A000108(n)))]` -/
def P7702584178616256476.Spec : Prop :=
  ∀ n, P7702584178616256476.a n = A192633 n

end A192633

/-! ## A192633.P18312347286155384102

`∑[floor(sqrt(A120588(n+1)))]`
-/

namespace A192633.P18312347286155384102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120588 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P18312347286155384102

namespace A192633

/-- `∑[floor(sqrt(A120588(n+1)))]` -/
def P18312347286155384102.Spec : Prop :=
  ∀ n, P18312347286155384102.a n = A192633 n

end A192633

/-! ## A192633.P4712180464208997699

`∑[floor(sqrt(A120304(n)+2))]`
-/

namespace A192633.P4712180464208997699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120304 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P4712180464208997699

namespace A192633

/-- `∑[floor(sqrt(A120304(n)+2))]` -/
def P4712180464208997699.Spec : Prop :=
  ∀ n, P4712180464208997699.a n = A192633 n

end A192633

/-! ## A192633.P6182497951384940772

`∑[floor(sqrt(A028303(2*n)))]`
-/

namespace A192633.P6182497951384940772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028303 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P6182497951384940772

namespace A192633

/-- `∑[floor(sqrt(A028303(2*n)))]` -/
def P6182497951384940772.Spec : Prop :=
  ∀ n, P6182497951384940772.a n = A192633 n

end A192633

/-! ## A192633.P14171792593659776326

`∑[floor(sqrt(A028304(2*n)))]`
-/

namespace A192633.P14171792593659776326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028304 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P14171792593659776326

namespace A192633

/-- `∑[floor(sqrt(A028304(2*n)))]` -/
def P14171792593659776326.Spec : Prop :=
  ∀ n, P14171792593659776326.a n = A192633 n

end A192633

/-! ## A192633.P1098197474664255924

`∑[floor(sqrt(A126120(2*n)))]`
-/

namespace A192633.P1098197474664255924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126120 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P1098197474664255924

namespace A192633

/-- `∑[floor(sqrt(A126120(2*n)))]` -/
def P1098197474664255924.Spec : Prop :=
  ∀ n, P1098197474664255924.a n = A192633 n

end A192633

/-! ## A192633.P10939412858121684704

`∑[floor(sqrt(A000984(n)/(n+1)))]`
-/

namespace A192633.P10939412858121684704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000984 n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P10939412858121684704

namespace A192633

/-- `∑[floor(sqrt(A000984(n)/(n+1)))]` -/
def P10939412858121684704.Spec : Prop :=
  ∀ n, P10939412858121684704.a n = A192633 n

theorem P10939412858121684704.correct : P10939412858121684704.Spec := by
  intro n
  simp only [A192633, Nat.add_sub_cancel, A192633.P10939412858121684704.f1, A192633.P10939412858121684704.a, A192633.P30203612038079330.f1, A192633.P30203612038079330.a, A000984, A000984.P7946844122574426130.a, A186546, A186546.P3096187882210164668.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A192633

/-! ## A192633.P16533429064329661390

`∑[floor(sqrt(A028329(n)/(2*(n+1))))]`
-/

namespace A192633.P16533429064329661390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A028329 n : ℚ) / (2 * (n + 1) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P16533429064329661390

namespace A192633

/-- `∑[floor(sqrt(A028329(n)/(2*(n+1))))]` -/
def P16533429064329661390.Spec : Prop :=
  ∀ n, P16533429064329661390.a n = A192633 n

end A192633

/-! ## A192633.P8210631396109226971

`∑[floor(sqrt(C(2*n, n)/(n+1)))]`
-/

namespace A192633.P8210631396109226971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192633.P8210631396109226971

namespace A192633

/-- `∑[floor(sqrt(C(2*n, n)/(n+1)))]` -/
def P8210631396109226971.Spec : Prop :=
  ∀ n, P8210631396109226971.a n = A192633 n

end A192633

/-!
# A192634: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x^n + x^(2*n))/n ).

The programs for A192634, there is no canonical definition to state claims against.
-/

/-! ## A192634.P10884633528493860697

`A248610(A204516(n+1)+A000110(n))`
-/

namespace A192634.P10884633528493860697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A204516 (n + 1) + A000110 n).toNat

end

end A192634.P10884633528493860697

/-!
# A192635: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x^n/(1-x^n))/n ).

The programs for A192635, there is no canonical definition to state claims against.
-/

/-! ## A192635.P3999854912805132951

`A105659(A182901(n))`
-/

namespace A192635.P3999854912805132951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A182901 n).toNat

end

end A192635.P3999854912805132951

/-! ## A192635.P12414040979579539656

`A105659(A226729(n))`
-/

namespace A192635.P12414040979579539656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A226729 n).toNat

end

end A192635.P12414040979579539656

/-! ## A192635.P15834110355156428929

`A105659(A247298(n))`
-/

namespace A192635.P15834110355156428929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A247298 n).toNat

end

end A192635.P15834110355156428929

/-!
# A192636: Powerful sums of two powerful numbers.

The programs for A192636, there is no canonical definition to state claims against.
-/

/-! ## A192636.P17336880226535739827

`∩[A001694(n+1), A076871(n+1)]`
-/

namespace A192636.P17336880226535739827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192636.P17336880226535739827

/-! ## A192636.P6291794518541740720

`∩[A076871(n+1), A224866(n+1)-1]`
-/

namespace A192636.P6291794518541740720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192636.P6291794518541740720

/-! ## A192636.P15089017230144308944

`∩[A076871(n+1), A076446(n)+a(n-1)]` with `a(0)=1`
-/

namespace A192636.P15089017230144308944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A076446 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192636.P15089017230144308944

/-! ## A192636.P7305799503170889330

`∩[∪[(n+1)², A320966(n+1)], A076871(n+1)]`
-/

namespace A192636.P7305799503170889330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A192636.P7305799503170889330

/-! ## A192636.P4398777634744233528

`∩[A076871(n+1), A084371(n+1)*A306458(n+1)]`
-/

namespace A192636.P4398777634744233528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192636.P4398777634744233528

/-! ## A192636.P11492337765939534336

`filter[A076871(n+1), A112526(#)]`
-/

namespace A192636.P11492337765939534336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A192636.P11492337765939534336

/-!
# A192637: G.f. A(x) satisfies: A(x) = exp( Sum_{n>=1} B(x^n)/n ) where B(x) = Series_Reversion(x/A(x)) = g.f. of A179325.

The programs for A192637, there is no canonical definition to state claims against.
-/

/-! ## A192637.P3800817911983968959

`A255072(∑[A104470(n)])`
-/

namespace A192637.P3800817911983968959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192637.P3800817911983968959

/-! ## A192637.P16994572519135733420

`A248185(A328438(n))-2`
-/

namespace A192637.P16994572519135733420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248185 (A328438 n).toNat - 2

end

end A192637.P16994572519135733420

/-! ## A192637.P16359786374383112057

`A342696(17*A328438(n))`
-/

namespace A192637.P16359786374383112057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (17 * A328438 n).toNat

end

end A192637.P16359786374383112057

/-!
# A192638: Numbers n such that 4n + 3 and 16n + 15 are prime.

The programs for A192638, the canonical program `A192638.P5776739241010284944` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192638 has offset 1).

The definition of A192638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192638.P5776739241010284944

`∩[A095278(n+1), A127575(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A192638

/-- `∩[A095278(n+1), A127575(n+1)]` -/
def P5776739241010284944.Spec : Prop :=
  ∀ n, (P5776739241010284944.a n : ℤ) = A192638 (n + 1)

theorem P5776739241010284944.correct : P5776739241010284944.Spec := by
  intro n
  simp only [A192638, Nat.add_sub_cancel]

end A192638

/-! ## A192638.P14416374272633275282

`∩[A127575(n+1), A380550(n+1)]`
-/

namespace A192638.P14416374272633275282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192638.P14416374272633275282

namespace A192638

/-- `∩[A127575(n+1), A380550(n+1)]` -/
def P14416374272633275282.Spec : Prop :=
  ∀ n, (P14416374272633275282.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P4097069819477066719

`eq[A001222(A004771(2*n+1)), A010051(4*n+3)]`
-/

namespace A192638.P4097069819477066719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004771 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P4097069819477066719

namespace A192638

/-- `eq[A001222(A004771(2*n+1)), A010051(4*n+3)]` -/
def P4097069819477066719.Spec : Prop :=
  ∀ n, (P4097069819477066719.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P11888462664289142039

`eq[A072480(A125169(n)), A245203(n)]`
-/

namespace A192638.P11888462664289142039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A125169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P11888462664289142039

namespace A192638

/-- `eq[A072480(A125169(n)), A245203(n)]` -/
def P11888462664289142039.Spec : Prop :=
  ∀ n, (P11888462664289142039.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P7614326275054594287

`record[A025480(A075521(n+1)-2)]`
-/

namespace A192638.P7614326275054594287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075521 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192638.P7614326275054594287

namespace A192638

/-- `record[A025480(A075521(n+1)-2)]` -/
def P7614326275054594287.Spec : Prop :=
  ∀ n, P7614326275054594287.a n = A192638 (n + 1)

end A192638

/-! ## A192638.P2726243197309767257

`eq[A100577(4*n+3), A290839(8*n+6)]`
-/

namespace A192638.P2726243197309767257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290839 (8 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P2726243197309767257

namespace A192638

/-- `eq[A100577(4*n+3), A290839(8*n+6)]` -/
def P2726243197309767257.Spec : Prop :=
  ∀ n, (P2726243197309767257.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P12485183254519882928

`eq[A003415(A004771(2*n+1)), A003415(4*n+3)]`
-/

namespace A192638.P12485183254519882928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004771 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P12485183254519882928

namespace A192638

/-- `eq[A003415(A004771(2*n+1)), A003415(4*n+3)]` -/
def P12485183254519882928.Spec : Prop :=
  ∀ n, (P12485183254519882928.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P1776936629407630944

`eq[A032741(4*n+3), A319700(A017137(4*n+3))]`
-/

namespace A192638.P1776936629407630944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A017137 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P1776936629407630944

namespace A192638

/-- `eq[A032741(4*n+3), A319700(A017137(4*n+3))]` -/
def P1776936629407630944.Spec : Prop :=
  ∀ n, (P1776936629407630944.a n : ℤ) = A192638 (n + 1)

end A192638

/-! ## A192638.P1270146863153841721

`eq[A319700(A017137(4*n+3)), A319700(4*n+3)]`
-/

namespace A192638.P1270146863153841721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A017137 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192638.P1270146863153841721

namespace A192638

/-- `eq[A319700(A017137(4*n+3)), A319700(4*n+3)]` -/
def P1270146863153841721.Spec : Prop :=
  ∀ n, (P1270146863153841721.a n : ℤ) = A192638 (n + 1)

end A192638

/-!
# A192639: Number of n X n symmetric 0..2 arrays with each element equal to at least one horizontal or vertical neighbor and any new values 0..2 introduced in lower triangular row major order.

The programs for A192639, there is no canonical definition to state claims against.
-/

/-! ## A192639.P7268285606434541108

`ceil(A211052(n+1)/2)`
-/

namespace A192639.P7268285606434541108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211052 (n + 1) : ℚ) / 2⌉

end

end A192639.P7268285606434541108

/-! ## A192639.P13750896379012024839

`round(A211052(n+1)/A036453(n+1))`
-/

namespace A192639.P13750896379012024839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211052 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ))

end

end A192639.P13750896379012024839

/-! ## A192639.P9677564635068559872

`round(A211052(n+1)/2*A000108(gcd(n, n+1)))`
-/

namespace A192639.P9677564635068559872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211052 (n + 1) : ℚ) / 2 * (A000108 (Nat.gcd n (n + 1)) : ℚ))

end

end A192639.P9677564635068559872

/-!
# A192640: Number of n X n symmetric 0..3 arrays with each element equal to at least one horizontal or vertical neighbor and any new values 0..3 introduced in lower triangular row major order.

The programs for A192640, there is no canonical definition to state claims against.
-/

/-! ## A192640.P12309670231046287060

`A192766(n+1)+A192639(n+1)`
-/

namespace A192640.P12309670231046287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192766 (n + 1) + A192639 (n + 1)

end

end A192640.P12309670231046287060

/-! ## A192640.P5050625305472530821

`A192641(n+1)-A192767(n+1)`
-/

namespace A192640.P5050625305472530821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192641 (n + 1) - A192767 (n + 1)

end

end A192640.P5050625305472530821

/-!
# A192641: Number of n X n symmetric 0..4 arrays with each element equal to at least one horizontal or vertical neighbor and any new values 0..4 introduced in lower triangular row major order.

The programs for A192641, there is no canonical definition to state claims against.
-/

/-! ## A192641.P3462880915440117686

`A192767(n+1)+A192640(n+1)`
-/

namespace A192641.P3462880915440117686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192767 (n + 1) + A192640 (n + 1)

end

end A192641.P3462880915440117686

/-! ## A192641.P17500050008072386635

`A192639(n+1)+A192767(n+1)+A192766(n+1)`
-/

namespace A192641.P17500050008072386635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192639 (n + 1) + (A192767 (n + 1) + A192766 (n + 1))

end

end A192641.P17500050008072386635

/-!
# A192642: Number of n X n symmetric 0..5 arrays with each element equal to at least one horizontal or vertical neighbor and any new values 0..5 introduced in lower triangular row major order.

The programs for A192642, there is no canonical definition to state claims against.
-/

/-! ## A192642.P5139722901324889958

`A192644(∑[floor((round((2-n)²/12)+1)^(n-1))])`
-/

namespace A192642.P5139722901324889958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12) + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192642.P5139722901324889958

/-!
# A192645: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2 - y^2 > 0 then x^2 - y^2 is in S, and 1 and 2 are in S.

The programs for A192645, there is no canonical definition to state claims against.
-/

/-! ## A192645.P9808510542480307610

`∑[A192646(round(acot(n)+n))]`
-/

namespace A192645.P9808510542480307610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192646 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192645.P9808510542480307610

/-! ## A192645.P13444378313509050906

`A192646(n)+a(n-1)` with `a(0)=1`
-/

namespace A192645.P13444378313509050906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192646 n + a (n - 1)

end

end A192645.P13444378313509050906

/-! ## A192645.P11583271474096406254

`∑[A192646(floor(sqrt(n²+1)))]`
-/

namespace A192645.P11583271474096406254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192646 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192645.P11583271474096406254

/-! ## A192645.P11915753889015031331

`∑[A192646(n+1)]+1-A192646(n+1)`
-/

namespace A192645.P11915753889015031331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A192646 (n + 1))

end

end A192645.P11915753889015031331

/-! ## A192645.P17645284445050461864

`eq[A000120(n), A367647(A227132(n+1))]`
-/

namespace A192645.P17645284445050461864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367647 (A227132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192645.P17645284445050461864

/-!
# A192646: First differences of A192645.

The programs for A192646, there is no canonical definition to state claims against.
-/

/-! ## A192646.P8249311542173505521

`Δ[A192645(n+1)]`
-/

namespace A192646.P8249311542173505521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192646.P8249311542173505521

/-! ## A192646.P16948388836549597078

`Δ[record[A192645(A158416(n))]]`
-/

namespace A192646.P16948388836549597078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192645 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192646.P16948388836549597078

/-! ## A192646.P379298184210168129

`Δ[record[A192645(A263131(n))]]`
-/

namespace A192646.P379298184210168129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192645 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192646.P379298184210168129

/-! ## A192646.P1527214308656315320

`abs(Δ[A192645(A028242(2*n))])`
-/

namespace A192646.P1527214308656315320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192645 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192646.P1527214308656315320

/-! ## A192646.P8871140279560115257

`A192645(n+2)-A192645(n+1)`
-/

namespace A192646.P8871140279560115257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192645 (n + 2) - A192645 (n + 1)

end

end A192646.P8871140279560115257

/-!
# A192648: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2-y^2>0 then x^2-y^2 is in S, and 2 and 3 are in S.

The programs for A192648, there is no canonical definition to state claims against.
-/

/-! ## A192648.P14414455522577069049

`A133700(n+1)+A066657(A005363(n))`
-/

namespace A192648.P14414455522577069049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (n + 1) + A066657 (A005363 n).toNat

end

end A192648.P14414455522577069049

/-!
# A192649: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2-y^2>0 then x^2-y^2 is in S, and 1, 2, and 4 are in S.

The programs for A192649, there is no canonical definition to state claims against.
-/

/-! ## A192649.P15338020716587069730

`∑[A192650(round(acot(n)+n))]`
-/

namespace A192649.P15338020716587069730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192650 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192649.P15338020716587069730

/-! ## A192649.P13528466360854373989

`A192650(n)+a(n-1)` with `a(0)=1`
-/

namespace A192649.P13528466360854373989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192650 n + a (n - 1)

end

end A192649.P13528466360854373989

/-! ## A192649.P4111647238624179885

`∑[A192650(round(sqrt(n²+1)))]`
-/

namespace A192649.P4111647238624179885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192650 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192649.P4111647238624179885

/-! ## A192649.P3257568683624893036

`∑[A192650(A028310(n))]%A100484(n+1)`
-/

namespace A192649.P3257568683624893036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192650 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A100484 (n + 1))

end

end A192649.P3257568683624893036

/-! ## A192649.P1097623063062351098

`∑[A192650(n+1)]+1-A192650(n+1)`
-/

namespace A192649.P1097623063062351098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A192650 (n + 1))

end

end A192649.P1097623063062351098

/-!
# A192650: First differences of A192649.

The programs for A192650, there is no canonical definition to state claims against.
-/

/-! ## A192650.P15119940642313775516

`Δ[A192649(n+1)]`
-/

namespace A192650.P15119940642313775516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192650.P15119940642313775516

/-! ## A192650.P16461542328519787686

`Δ[record[A192649(A158416(n))]]`
-/

namespace A192650.P16461542328519787686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192649 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192650.P16461542328519787686

/-! ## A192650.P16831395830714150875

`Δ[record[A192649(A263131(n))]]`
-/

namespace A192650.P16831395830714150875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192649 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192650.P16831395830714150875

/-! ## A192650.P14727622466634454515

`abs(Δ[A192649(A028242(2*n))])`
-/

namespace A192650.P14727622466634454515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192649 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192650.P14727622466634454515

/-! ## A192650.P5837979344328716869

`A192649(n+2)-A192649(n+1)`
-/

namespace A192650.P5837979344328716869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192649 (n + 2) - A192649 (n + 1)

end

end A192650.P5837979344328716869

/-!
# A192651: Coefficient of x^2 in the reduction of the n-th Fibonacci polynomial by x^3->x^2+x+1. See Comments.

The programs for A192651, the canonical program `A192651.P8373528593760720819` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192651 has offset 1).

The definition of A192651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192651.P8373528593760720819

`ogf(x^2/(1-x-4x^2+x^3+4x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192651

/-- `ogf(x^2/(1-x-4x^2+x^3+4x^4-x^5-x^6))` -/
def P8373528593760720819.Spec : Prop :=
  ∀ n, P8373528593760720819.a n = A192651 (n + 1)

theorem P8373528593760720819.correct : P8373528593760720819.Spec := by
  intro n
  simp only [A192651, Nat.add_sub_cancel]

end A192651

/-! ## A192651.P130301833219718041

`∑[A319514(A027214(n)²)]`
-/

namespace A192651.P130301833219718041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (A027214 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192651.P130301833219718041

namespace A192651

/-- `∑[A319514(A027214(n)²)]` -/
def P130301833219718041.Spec : Prop :=
  ∀ n, P130301833219718041.a n = A192651 (n + 1)

end A192651

/-!
# A192652: Convolution of the Floor-Sqrt transform of Catalan numbers.

The programs for A192652, there is no canonical definition to state claims against.
-/

/-! ## A192652.P5843084251274180234

`A054404(round(A085810(2*n+5)/A000295(2*(n+2))))`
-/

namespace A192652.P5843084251274180234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (SequenceMachineLib.roundAway ((A085810 (2 * n + 5) : ℚ) / (A000295 (2 * (n + 2)) : ℚ))).toNat

end

end A192652.P5843084251274180234

/-! ## A192652.P4378281959770835364

`A080595(A078482(n))+1`
-/

namespace A192652.P4378281959770835364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A078482 n).toNat + 1

end

end A192652.P4378281959770835364

/-! ## A192652.P89166056518087561

`A383074(A148312(n+1))`
-/

namespace A192652.P89166056518087561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A148312 (n + 1)).toNat

end

end A192652.P89166056518087561

/-! ## A192652.P3171000108952532169

`A383074(A148313(n+1))`
-/

namespace A192652.P3171000108952532169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A148313 (n + 1)).toNat

end

end A192652.P3171000108952532169

/-! ## A192652.P8396824585471198714

`record[A317669(n)-A081162(n)]`
-/

namespace A192652.P8396824585471198714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317669 n - A081162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192652.P8396824585471198714

/-!
# A192653: Binomial convolution of the Floor-Sqrt transform of Catalan numbers.

The programs for A192653, there is no canonical definition to state claims against.
-/

/-! ## A192653.P3235280523886639243

`A109497(∑[A202411(3*n+2)])`
-/

namespace A192653.P3235280523886639243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202411 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192653.P3235280523886639243

/-! ## A192653.P13816890685737918299

`∑[A284359(A279683(n))]`
-/

namespace A192653.P13816890685737918299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A279683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192653.P13816890685737918299

/-! ## A192653.P2658121263451726734

`A347655(∑[A347628(n²)])`
-/

namespace A192653.P2658121263451726734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347628 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192653.P2658121263451726734

/-!
# A192654: Alternating partial sums of the Floor-Sqrt transform of Catalan numbers.

The programs for A192654, the canonical program `A192654.P3211416494590440823` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192654 has offset 0).

The definition of A192654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192654.P3211416494590440823

`floor(sqrt(A000108(n)))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192654

/-- `floor(sqrt(A000108(n)))-a(n-1)` -/
def P3211416494590440823.Spec : Prop :=
  ∀ n, P3211416494590440823.a n = A192654 n

theorem P3211416494590440823.correct : P3211416494590440823.Spec := by
  intro n
  simp only [A192654]

end A192654

/-! ## A192654.P387083995365105732

`∑{#}[n, (-1)^(n-#)*floor(sqrt(C(2*#, #)/(#+1)))]`
-/

namespace A192654.P387083995365105732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (⌊Real.sqrt ((Nat.choose (2 * k) k : ℚ) / (k + 1 : ℚ) : ℝ)⌋ : ℚ)

end

end A192654.P387083995365105732

namespace A192654

/-- `∑{#}[n, (-1)^(n-#)*floor(sqrt(C(2*#, #)/(#+1)))]` -/
def P387083995365105732.Spec : Prop :=
  ∀ n, P387083995365105732.a n = (A192654 n : ℚ)

end A192654

/-! ## A192654.P3318081044726299139

`A186546(n)-a(n-1)` with `a(0)=1`
-/

namespace A192654.P3318081044726299139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186546 n - a (n - 1)

end

end A192654.P3318081044726299139

namespace A192654

/-- `A186546(n)-a(n-1)` -/
def P3318081044726299139.Spec : Prop :=
  ∀ n, P3318081044726299139.a n = A192654 n

end A192654

/-! ## A192654.P2524030133564849309

`floor(sqrt(A120588(n+1)))-a(n-1)` with `a(0)=1`
-/

namespace A192654.P2524030133564849309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.sqrt (A120588 (n + 1)) - a (n - 1)

end

end A192654.P2524030133564849309

namespace A192654

/-- `floor(sqrt(A120588(n+1)))-a(n-1)` -/
def P2524030133564849309.Spec : Prop :=
  ∀ n, P2524030133564849309.a n = A192654 n

end A192654

/-! ## A192654.P5300739452706488498

`Δ[A383253(n)%A008982(n)]`
-/

namespace A192654.P5300739452706488498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383253 n) (A008982 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192654.P5300739452706488498

namespace A192654

/-- `Δ[A383253(n)%A008982(n)]` -/
def P5300739452706488498.Spec : Prop :=
  ∀ n, P5300739452706488498.a n = A192654 n

end A192654

/-!
# A192655: Floor-Sqrt transform of central binomial coefficients (A000984).

The programs for A192655, the canonical program `A192655.P14527991431701777898` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192655 has offset 0).

The definition of A192655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192655.P14527991431701777898

`sqrt(A065738(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A192655

/-- `sqrt(A065738(n))` -/
def P14527991431701777898.Spec : Prop :=
  ∀ n, P14527991431701777898.a n = (A192655 n : ℝ)

end A192655

/-! ## A192655.P16943909988978456992

`floor(sqrt(C(2*n, n)))`
-/

namespace A192655.P16943909988978456992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * n) n)

end

end A192655.P16943909988978456992

namespace A192655

/-- `floor(sqrt(C(2*n, n)))` -/
def P16943909988978456992.Spec : Prop :=
  ∀ n, (P16943909988978456992.a n : ℤ) = A192655 n

end A192655

/-! ## A192655.P16465555637719250301

`floor(sqrt(n+1)*sqrt(A000108(n)))`
-/

namespace A192655.P16465555637719250301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) * Real.sqrt (A000108 n : ℝ)⌋

end

end A192655.P16465555637719250301

namespace A192655

/-- `floor(sqrt(n+1)*sqrt(A000108(n)))` -/
def P16465555637719250301.Spec : Prop :=
  ∀ n, P16465555637719250301.a n = A192655 n

end A192655

/-! ## A192655.P16210346905165543198

`floor(sqrt(A000984(n)))`
-/

namespace A192655.P16210346905165543198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000984 n)

end

end A192655.P16210346905165543198

namespace A192655

/-- `floor(sqrt(A000984(n)))` -/
def P16210346905165543198.Spec : Prop :=
  ∀ n, P16210346905165543198.a n = A192655 n

end A192655

/-! ## A192655.P10697467886191862779

`floor(sqrt(A045992(n)))`
-/

namespace A192655.P10697467886191862779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045992 n)

end

end A192655.P10697467886191862779

namespace A192655

/-- `floor(sqrt(A045992(n)))` -/
def P10697467886191862779.Spec : Prop :=
  ∀ n, P10697467886191862779.a n = A192655 n

end A192655

/-! ## A192655.P4205179372755294105

`floor(sqrt(A244174(n)))`
-/

namespace A192655.P4205179372755294105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A244174 n)

end

end A192655.P4205179372755294105

namespace A192655

/-- `floor(sqrt(A244174(n)))` -/
def P4205179372755294105.Spec : Prop :=
  ∀ n, P4205179372755294105.a n = A192655 n

end A192655

/-! ## A192655.P1503360850398811220

`floor(record[sqrt(A081668(n))])`
-/

namespace A192655.P1503360850398811220
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081668 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A192655.P1503360850398811220

namespace A192655

/-- `floor(record[sqrt(A081668(n))])` -/
def P1503360850398811220.Spec : Prop :=
  ∀ n, P1503360850398811220.a n = A192655 n

end A192655

/-! ## A192655.P15727791942559340623

`floor(record[sqrt(A126869(n))])`
-/

namespace A192655.P15727791942559340623
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A126869 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A192655.P15727791942559340623

namespace A192655

/-- `floor(record[sqrt(A126869(n))])` -/
def P15727791942559340623.Spec : Prop :=
  ∀ n, P15727791942559340623.a n = A192655 n

end A192655

/-! ## A192655.P16681282006697281402

`floor(sqrt(record[A126930(n)]))`
-/

namespace A192655.P16681282006697281402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192655.P16681282006697281402

namespace A192655

/-- `floor(sqrt(record[A126930(n)]))` -/
def P16681282006697281402.Spec : Prop :=
  ∀ n, P16681282006697281402.a n = A192655 n

end A192655

/-! ## A192655.P7696209625760927083

`floor(sqrt(A323230(n+1)))`
-/

namespace A192655.P7696209625760927083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A323230 (n + 1))

end

end A192655.P7696209625760927083

namespace A192655

/-- `floor(sqrt(A323230(n+1)))` -/
def P7696209625760927083.Spec : Prop :=
  ∀ n, P7696209625760927083.a n = A192655 n

end A192655

/-! ## A192655.P12238075238561307641

`floor(sqrt(A001405(2*n)))`
-/

namespace A192655.P12238075238561307641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001405 (2 * n))

end

end A192655.P12238075238561307641

namespace A192655

/-- `floor(sqrt(A001405(2*n)))` -/
def P12238075238561307641.Spec : Prop :=
  ∀ n, P12238075238561307641.a n = A192655 n

end A192655

/-! ## A192655.P787817511730153596

`floor(sqrt(2*A045627(n)))`
-/

namespace A192655.P787817511730153596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A045627 n)

end

end A192655.P787817511730153596

namespace A192655

/-- `floor(sqrt(2*A045627(n)))` -/
def P787817511730153596.Spec : Prop :=
  ∀ n, P787817511730153596.a n = A192655 n

end A192655

/-! ## A192655.P716549356241443286

`floor(sqrt(A051920(2*n)))`
-/

namespace A192655.P716549356241443286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051920 (2 * n))

end

end A192655.P716549356241443286

namespace A192655

/-- `floor(sqrt(A051920(2*n)))` -/
def P716549356241443286.Spec : Prop :=
  ∀ n, P716549356241443286.a n = A192655 n

end A192655

/-! ## A192655.P9089475675106680667

`floor(sqrt(A063886(2*n)))`
-/

namespace A192655.P9089475675106680667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A063886 (2 * n))

end

end A192655.P9089475675106680667

namespace A192655

/-- `floor(sqrt(A063886(2*n)))` -/
def P9089475675106680667.Spec : Prop :=
  ∀ n, P9089475675106680667.a n = A192655 n

end A192655

/-! ## A192655.P16991952217237256604

`floor(sqrt(A081668(2*n)))`
-/

namespace A192655.P16991952217237256604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081668 (2 * n))

end

end A192655.P16991952217237256604

namespace A192655

/-- `floor(sqrt(A081668(2*n)))` -/
def P16991952217237256604.Spec : Prop :=
  ∀ n, P16991952217237256604.a n = A192655 n

end A192655

/-! ## A192655.P6981795128478617158

`floor(sqrt(2*A088218(n)))`
-/

namespace A192655.P6981795128478617158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A088218 n)

end

end A192655.P6981795128478617158

namespace A192655

/-- `floor(sqrt(2*A088218(n)))` -/
def P6981795128478617158.Spec : Prop :=
  ∀ n, P6981795128478617158.a n = A192655 n

end A192655

/-! ## A192655.P10585484661407275406

`floor(sqrt(A089849(2*n)))`
-/

namespace A192655.P10585484661407275406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A089849 (2 * n))

end

end A192655.P10585484661407275406

namespace A192655

/-- `floor(sqrt(A089849(2*n)))` -/
def P10585484661407275406.Spec : Prop :=
  ∀ n, P10585484661407275406.a n = A192655 n

end A192655

/-! ## A192655.P7743338712107417384

`floor(sqrt(A126869(2*n)))`
-/

namespace A192655.P7743338712107417384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126869 (2 * n))

end

end A192655.P7743338712107417384

namespace A192655

/-- `floor(sqrt(A126869(2*n)))` -/
def P7743338712107417384.Spec : Prop :=
  ∀ n, P7743338712107417384.a n = A192655 n

end A192655

/-! ## A192655.P100673611649659391

`floor(sqrt(A126930(2*n)))`
-/

namespace A192655.P100673611649659391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126930 (2 * n))

end

end A192655.P100673611649659391

namespace A192655

/-- `floor(sqrt(A126930(2*n)))` -/
def P100673611649659391.Spec : Prop :=
  ∀ n, P100673611649659391.a n = A192655 n

end A192655

/-! ## A192655.P139282012341622605

`floor(sqrt(A128014(2*n)))`
-/

namespace A192655.P139282012341622605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A128014 (2 * n))

end

end A192655.P139282012341622605

namespace A192655

/-- `floor(sqrt(A128014(2*n)))` -/
def P139282012341622605.Spec : Prop :=
  ∀ n, P139282012341622605.a n = A192655 n

end A192655

/-!
# A192656: Partial sums of the Floor-Sqrt transform of central binomial coefficients.

The programs for A192656, the canonical program `A192656.P15892552188693503180` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192656 has offset 0).

The definition of A192656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192656.P15892552188693503180

`∑[A192655(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192656

/-- `∑[A192655(n)]` -/
def P15892552188693503180.Spec : Prop :=
  ∀ n, P15892552188693503180.a n = A192656 n

theorem P15892552188693503180.correct : P15892552188693503180.Spec := by
  intro n
  simp only [A192656]

end A192656

/-! ## A192656.P15820417786128439856

`∑[sqrt(A065738(n))]`
-/

namespace A192656.P15820417786128439856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065738 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P15820417786128439856

namespace A192656

/-- `∑[sqrt(A065738(n))]` -/
def P15820417786128439856.Spec : Prop :=
  ∀ n, P15820417786128439856.a n = (A192656 n : ℝ)

end A192656

/-! ## A192656.P2968166847587811632

`∑[floor(sqrt(A000984(n)))]`
-/

namespace A192656.P2968166847587811632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000984 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P2968166847587811632

namespace A192656

/-- `∑[floor(sqrt(A000984(n)))]` -/
def P2968166847587811632.Spec : Prop :=
  ∀ n, P2968166847587811632.a n = A192656 n

end A192656

/-! ## A192656.P17577876105531805133

`∑[floor(sqrt(A045992(n)))]`
-/

namespace A192656.P17577876105531805133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045992 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P17577876105531805133

namespace A192656

/-- `∑[floor(sqrt(A045992(n)))]` -/
def P17577876105531805133.Spec : Prop :=
  ∀ n, P17577876105531805133.a n = A192656 n

end A192656

/-! ## A192656.P14613504389184865984

`∑[floor(sqrt(A001405(2*n)))]`
-/

namespace A192656.P14613504389184865984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001405 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P14613504389184865984

namespace A192656

/-- `∑[floor(sqrt(A001405(2*n)))]` -/
def P14613504389184865984.Spec : Prop :=
  ∀ n, P14613504389184865984.a n = A192656 n

end A192656

/-! ## A192656.P16907556229905743679

`∑[floor(sqrt(A063886(2*n)))]`
-/

namespace A192656.P16907556229905743679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A063886 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P16907556229905743679

namespace A192656

/-- `∑[floor(sqrt(A063886(2*n)))]` -/
def P16907556229905743679.Spec : Prop :=
  ∀ n, P16907556229905743679.a n = A192656 n

end A192656

/-! ## A192656.P11354275523423109975

`∑[floor(sqrt(A081668(2*n)))]`
-/

namespace A192656.P11354275523423109975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081668 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P11354275523423109975

namespace A192656

/-- `∑[floor(sqrt(A081668(2*n)))]` -/
def P11354275523423109975.Spec : Prop :=
  ∀ n, P11354275523423109975.a n = A192656 n

end A192656

/-! ## A192656.P12379479503018553957

`∑[floor(sqrt(A129383(2*n)))]`
-/

namespace A192656.P12379479503018553957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129383 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P12379479503018553957

namespace A192656

/-- `∑[floor(sqrt(A129383(2*n)))]` -/
def P12379479503018553957.Spec : Prop :=
  ∀ n, P12379479503018553957.a n = A192656 n

end A192656

/-! ## A192656.P9294959490748467778

`∑[floor(sqrt((n+1)*A000108(n)))]`
-/

namespace A192656.P9294959490748467778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * A000108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P9294959490748467778

namespace A192656

/-- `∑[floor(sqrt((n+1)*A000108(n)))]` -/
def P9294959490748467778.Spec : Prop :=
  ∀ n, P9294959490748467778.a n = A192656 n

end A192656

/-! ## A192656.P9724818566700963

`∑[floor(sqrt((n+1)*A028304(2*n)+1))]`
-/

namespace A192656.P9724818566700963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * A028304 (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P9724818566700963

namespace A192656

/-- `∑[floor(sqrt((n+1)*A028304(2*n)+1))]` -/
def P9724818566700963.Spec : Prop :=
  ∀ n, P9724818566700963.a n = A192656 n

end A192656

/-! ## A192656.P10205786598699503999

`∑[floor(sqrt(A028329(n)/2))]`
-/

namespace A192656.P10205786598699503999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A028329 n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P10205786598699503999

namespace A192656

/-- `∑[floor(sqrt(A028329(n)/2))]` -/
def P10205786598699503999.Spec : Prop :=
  ∀ n, P10205786598699503999.a n = A192656 n

end A192656

/-! ## A192656.P10913485420128961360

`∑[floor(sqrt(C(2*n, n)))]`
-/

namespace A192656.P10913485420128961360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * n) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P10913485420128961360

namespace A192656

/-- `∑[floor(sqrt(C(2*n, n)))]` -/
def P10913485420128961360.Spec : Prop :=
  ∀ n, (P10913485420128961360.a n : ℤ) = A192656 n

end A192656

/-! ## A192656.P12311001939376487602

`∑[ceil(sqrt(C(2*n, n)+1))-1]`
-/

namespace A192656.P12311001939376487602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (2 * n) n + 1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P12311001939376487602

namespace A192656

/-- `∑[ceil(sqrt(C(2*n, n)+1))-1]` -/
def P12311001939376487602.Spec : Prop :=
  ∀ n, P12311001939376487602.a n = A192656 n

end A192656

/-!
# A192657: Convolution of the Floor-Sqrt transform of central binomial coefficients.

The programs for A192657, the canonical program `A192657.P6819206362058752892` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192657 has offset 0).

The definition of A192657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192657.P6819206362058752892

`∑{#}[n, floor(sqrt(C(2*#, #)))*floor(sqrt(C(2*n-2*#, n-#)))]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192657

/-- `∑{#}[n, floor(sqrt(C(2*#, #)))*floor(sqrt(C(2*n-2*#, n-#)))]` -/
def P6819206362058752892.Spec : Prop :=
  ∀ n, (P6819206362058752892.a n : ℤ) = A192657 n

theorem P6819206362058752892.correct : P6819206362058752892.Spec := by
  intro n
  simp only [A192657]

end A192657

/-! ## A192657.P6173101147630162666

`A000006(A102865(n)+1)`
-/

namespace A192657.P6173101147630162666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A102865 n + 1).toNat

end

end A192657.P6173101147630162666

namespace A192657

/-- `A000006(A102865(n)+1)` -/
def P6173101147630162666.Spec : Prop :=
  ∀ n, P6173101147630162666.a n = A192657 n

end A192657

/-! ## A192657.P10843710484649745060

`A000006(A117616(n)+2)`
-/

namespace A192657.P10843710484649745060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A117616 n + 2).toNat

end

end A192657.P10843710484649745060

namespace A192657

/-- `A000006(A117616(n)+2)` -/
def P10843710484649745060.Spec : Prop :=
  ∀ n, P10843710484649745060.a n = A192657 n

end A192657

/-! ## A192657.P5332880546833841358

`A317137(A263902(n+1)+n)`
-/

namespace A192657.P5332880546833841358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A263902 (n + 1) + (n : ℤ)).toNat

end

end A192657.P5332880546833841358

namespace A192657

/-- `A317137(A263902(n+1)+n)` -/
def P5332880546833841358.Spec : Prop :=
  ∀ n, P5332880546833841358.a n = A192657 n

end A192657

/-!
# A192658: Binomial convolution of the Floor-Sqrt transform of central binomial coefficients.

The programs for A192658, the canonical program `A192658.P10219936899004705129` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192658 has offset 0).

The definition of A192658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192658.P10219936899004705129

`∑{#}[n, C(n, #)*floor(sqrt(C(2*#, #)))*floor(sqrt(C(2*n-2*#, n-#)))]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192658

/-- `∑{#}[n, C(n, #)*floor(sqrt(C(2*#, #)))*floor(sqrt(C(2*n-2*#, n-#)))]` -/
def P10219936899004705129.Spec : Prop :=
  ∀ n, (P10219936899004705129.a n : ℤ) = A192658 n

theorem P10219936899004705129.correct : P10219936899004705129.Spec := by
  intro n
  simp only [A192658]

end A192658

/-! ## A192658.P169045751786363962

`A139560(A001970(n))-A215877(n)`
-/

namespace A192658.P169045751786363962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139560 (A001970 n).toNat - A215877 n

end

end A192658.P169045751786363962

namespace A192658

/-- `A139560(A001970(n))-A215877(n)` -/
def P169045751786363962.Spec : Prop :=
  ∀ n, P169045751786363962.a n = A192658 n

end A192658

/-! ## A192658.P10206895475774786739

`A003059(A188687(n))*A327047(n)`
-/

namespace A192658.P10206895475774786739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A188687 n).toNat * A327047 n

end

end A192658.P10206895475774786739

namespace A192658

/-- `A003059(A188687(n))*A327047(n)` -/
def P10206895475774786739.Spec : Prop :=
  ∀ n, P10206895475774786739.a n = A192658 n

end A192658

/-!
# A192659: Alternating partial sums of the Floor-Sqrt transform of central binomial coefficients.

The programs for A192659, there is no canonical definition to state claims against.
-/

/-! ## A192659.P2578777794848032892

`∑{#}[n, (-1)^(n-#)*floor(sqrt(C(2*#, #)))]`
-/

namespace A192659.P2578777794848032892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.sqrt (Nat.choose (2 * k) k) : ℚ)

end

end A192659.P2578777794848032892

/-! ## A192659.P10383499997726197274

`A192655(n)-a(n-1)` with `a(0)=1`
-/

namespace A192659.P10383499997726197274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192655 n - a (n - 1)

end

end A192659.P10383499997726197274

/-! ## A192659.P970462178312797378

`floor(sqrt(A000984(n)))-a(n-1)` with `a(0)=1`
-/

namespace A192659.P970462178312797378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.sqrt (A000984 n) - a (n - 1)

end

end A192659.P970462178312797378

/-! ## A192659.P1944188400609604133

`abs(∑[A033999(n)*A192655(n)])`
-/

namespace A192659.P1944188400609604133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A192655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192659.P1944188400609604133

/-! ## A192659.P16256966163215092326

`∑[A033999(n)*A192655(n)]*A009001(2*n)`
-/

namespace A192659.P16256966163215092326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A192655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A192659.P16256966163215092326

/-!
# A192660: Floor-Sqrt transform of Lucas numbers (A000032).

The programs for A192660, the canonical program `A192660.P16606724903194287464` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192660 has offset 0).

The definition of A192660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192660.P1380302522326273120

`floor(sqrt(ϕ^n))`
-/

namespace A192660.P1380302522326273120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.goldenRatio ^ n)⌋

end

end A192660.P1380302522326273120

namespace A192660

/-- `floor(sqrt(ϕ^n))` -/
def P1380302522326273120.Spec : Prop :=
  ∀ n, P1380302522326273120.a n = A192660 n

end A192660

/-! ## A192660.P16920904717027079749

`ceil(sqrt(A001612(n)))-1`
-/

namespace A192660.P16920904717027079749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001612 n : ℝ)⌉ - 1

end

end A192660.P16920904717027079749

namespace A192660

/-- `ceil(sqrt(A001612(n)))-1` -/
def P16920904717027079749.Spec : Prop :=
  ∀ n, P16920904717027079749.a n = A192660 n

end A192660

/-! ## A192660.P11267934583914538132

`root(floor(sqrt(A014217(n))), 2)²`
-/

namespace A192660.P11267934583914538132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Int.sqrt (A014217 n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A192660.P11267934583914538132

namespace A192660

/-- `root(floor(sqrt(A014217(n))), 2)²` -/
def P11267934583914538132.Spec : Prop :=
  ∀ n, P11267934583914538132.a n = (A192660 n : ℝ)

end A192660

/-! ## A192660.P2294457828565274396

`ceil(sqrt(A098600(n)+1))-1`
-/

namespace A192660.P2294457828565274396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098600 n + 1 : ℝ)⌉ - 1

end

end A192660.P2294457828565274396

namespace A192660

/-- `ceil(sqrt(A098600(n)+1))-1` -/
def P2294457828565274396.Spec : Prop :=
  ∀ n, P2294457828565274396.a n = A192660 n

end A192660

/-! ## A192660.P15380041392341517355

`ceil(A057428(n)+sqrt(A098600(n)))`
-/

namespace A192660.P15380041392341517355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (A098600 n : ℝ)⌉

end

end A192660.P15380041392341517355

namespace A192660

/-- `ceil(A057428(n)+sqrt(A098600(n)))` -/
def P15380041392341517355.Spec : Prop :=
  ∀ n, P15380041392341517355.a n = A192660 n

end A192660

/-! ## A192660.P16606724903194287464

`floor(sqrt(A098600(n)))%A136417(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192660

/-- `floor(sqrt(A098600(n)))%A136417(n)` -/
def P16606724903194287464.Spec : Prop :=
  ∀ n, P16606724903194287464.a n = A192660 n

theorem P16606724903194287464.correct : P16606724903194287464.Spec := by
  intro n
  simp only [A192660]

end A192660

/-! ## A192660.P13366621795400661349

`A000007(n+1)+floor(sqrt(A062724(n)))`
-/

namespace A192660.P13366621795400661349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A062724 n)

end

end A192660.P13366621795400661349

namespace A192660

/-- `A000007(n+1)+floor(sqrt(A062724(n)))` -/
def P13366621795400661349.Spec : Prop :=
  ∀ n, P13366621795400661349.a n = A192660 n

end A192660

/-! ## A192660.P7169497805358372733

`A000007(n+1)+floor(sqrt(A098600(n)))`
-/

namespace A192660.P7169497805358372733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A098600 n)

end

end A192660.P7169497805358372733

namespace A192660

/-- `A000007(n+1)+floor(sqrt(A098600(n)))` -/
def P7169497805358372733.Spec : Prop :=
  ∀ n, P7169497805358372733.a n = A192660 n

end A192660

/-! ## A192660.P9142653387668932302

`A008836(n+1)²*floor(sqrt(A014217(n)))`
-/

namespace A192660.P9142653387668932302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * Int.sqrt (A014217 n)

end

end A192660.P9142653387668932302

namespace A192660

/-- `A008836(n+1)²*floor(sqrt(A014217(n)))` -/
def P9142653387668932302.Spec : Prop :=
  ∀ n, P9142653387668932302.a n = A192660 n

end A192660

/-! ## A192660.P14325257413480551147

`A035363(4*n+1)+floor(sqrt(A014217(n)))`
-/

namespace A192660.P14325257413480551147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (4 * n + 1) + Int.sqrt (A014217 n)

end

end A192660.P14325257413480551147

namespace A192660

/-- `A035363(4*n+1)+floor(sqrt(A014217(n)))` -/
def P14325257413480551147.Spec : Prop :=
  ∀ n, P14325257413480551147.a n = A192660 n

end A192660

/-! ## A192660.P6717734981953921289

`A010051((n+2)*(n+3))+floor(sqrt(A014217(n)))`
-/

namespace A192660.P6717734981953921289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 2) * (n + 3)) + Int.sqrt (A014217 n)

end

end A192660.P6717734981953921289

namespace A192660

/-- `A010051((n+2)*(n+3))+floor(sqrt(A014217(n)))` -/
def P6717734981953921289.Spec : Prop :=
  ∀ n, P6717734981953921289.a n = A192660 n

end A192660

/-! ## A192660.P13132181331026450616

`ceil(sqrt(sqrt(A005248(n))))-1`
-/

namespace A192660.P13132181331026450616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A005248 n : ℝ))⌉ - 1

end

end A192660.P13132181331026450616

namespace A192660

/-- `ceil(sqrt(sqrt(A005248(n))))-1` -/
def P13132181331026450616.Spec : Prop :=
  ∀ n, P13132181331026450616.a n = A192660 n

end A192660

/-!
# A192661: Floor-Sqrt transform of central Stirling numbers of the second kind (A007820).

The programs for A192661, there is no canonical definition to state claims against.
-/

/-! ## A192661.P18255739836132112311

`floor(sqrt(A007820(n)))`
-/

namespace A192661.P18255739836132112311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007820 n)

end

end A192661.P18255739836132112311

/-! ## A192661.P10671399458633572584

`floor(sqrt(A343278(2*n)))`
-/

namespace A192661.P10671399458633572584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A343278 (2 * n))

end

end A192661.P10671399458633572584

/-! ## A192661.P7287007383946850544

`floor(sqrt(A343279(2*n)))`
-/

namespace A192661.P7287007383946850544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A343279 (2 * n))

end

end A192661.P7287007383946850544

/-! ## A192661.P9340116052165633419

`floor(sqrt(A293926(∑[n])))`
-/

namespace A192661.P9340116052165633419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293926 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192661.P9340116052165633419

/-! ## A192661.P7331927696726464949

`floor(sqrt(A048993(∑[4*n])))`
-/

namespace A192661.P7331927696726464949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048993 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192661.P7331927696726464949

/-!
# A192662: Floor-Sqrt transform of (signless) central Stirling numbers of the first kind (A187646).

The programs for A192662, there is no canonical definition to state claims against.
-/

/-! ## A192662.P3312198256982140590

`floor(sqrt(A187646(n)))`
-/

namespace A192662.P3312198256982140590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A187646 n)

end

end A192662.P3312198256982140590

/-! ## A192662.P9672702616219231130

`floor(sqrt(abs(A154415(2*n))))`
-/

namespace A192662.P9672702616219231130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A154415 (2 * n)|

end

end A192662.P9672702616219231130

/-! ## A192662.P11729686071272077445

`floor(sqrt(A033999(n)*A154415(2*n)))`
-/

namespace A192662.P11729686071272077445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A033999 n * A154415 (2 * n))

end

end A192662.P11729686071272077445

/-! ## A192662.P12534749921683446364

`floor(A187646(n)^(A130706(n)+1/2))`
-/

namespace A192662.P12534749921683446364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187646 n : ℝ) ^ ((A130706 n : ℚ) + (1 : ℚ) / 2 : ℝ)⌋

end

end A192662.P12534749921683446364

/-!
# A192663: Floor-Sqrt transform of the binomial coefficients binomial(3*n,n) (A005809).

The programs for A192663, the canonical program `A192663.P10056951974513112194` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192663 has offset 0).

The definition of A192663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192663.P10056951974513112194

`floor(sqrt(C(3*n, n)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192663

/-- `floor(sqrt(C(3*n, n)))` -/
def P10056951974513112194.Spec : Prop :=
  ∀ n, (P10056951974513112194.a n : ℤ) = A192663 n

theorem P10056951974513112194.correct : P10056951974513112194.Spec := by
  intro n
  simp only [A192663]

end A192663

/-! ## A192663.P4494546551923171668

`floor(sqrt(A005809(n)))`
-/

namespace A192663.P4494546551923171668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005809 n)

end

end A192663.P4494546551923171668

namespace A192663

/-- `floor(sqrt(A005809(n)))` -/
def P4494546551923171668.Spec : Prop :=
  ∀ n, P4494546551923171668.a n = A192663 n

end A192663

/-! ## A192663.P17884530839290413724

`floor(sqrt(A264772(∑[n])))`
-/

namespace A192663.P17884530839290413724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A264772 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192663.P17884530839290413724

namespace A192663

/-- `floor(sqrt(A264772(∑[n])))` -/
def P17884530839290413724.Spec : Prop :=
  ∀ n, P17884530839290413724.a n = A192663 n

end A192663

/-! ## A192663.P8259128169174389762

`floor(sqrt(A065942(2*n)))`
-/

namespace A192663.P8259128169174389762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065942 (2 * n))

end

end A192663.P8259128169174389762

namespace A192663

/-- `floor(sqrt(A065942(2*n)))` -/
def P8259128169174389762.Spec : Prop :=
  ∀ n, P8259128169174389762.a n = A192663 n

end A192663

/-! ## A192663.P12628721673758409237

`floor(sqrt(A081204(2*n)))`
-/

namespace A192663.P12628721673758409237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081204 (2 * n))

end

end A192663.P12628721673758409237

namespace A192663

/-- `floor(sqrt(A081204(2*n)))` -/
def P12628721673758409237.Spec : Prop :=
  ∀ n, P12628721673758409237.a n = A192663 n

end A192663

/-! ## A192663.P1623115951013118703

`floor(sqrt(3*A318591(n)))`
-/

namespace A192663.P1623115951013118703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A318591 n)

end

end A192663.P1623115951013118703

namespace A192663

/-- `floor(sqrt(3*A318591(n)))` -/
def P1623115951013118703.Spec : Prop :=
  ∀ n, P1623115951013118703.a n = A192663 n

end A192663

/-! ## A192663.P17320219293833305206

`floor(sqrt(A303259(2*n+1)))`
-/

namespace A192663.P17320219293833305206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A303259 (2 * n + 1))

end

end A192663.P17320219293833305206

namespace A192663

/-- `floor(sqrt(A303259(2*n+1)))` -/
def P17320219293833305206.Spec : Prop :=
  ∀ n, P17320219293833305206.a n = A192663 n

end A192663

/-! ## A192663.P11472075158281900072

`floor(sqrt(Δ[n²]*A001764(n)))`
-/

namespace A192663.P11472075158281900072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001764 n)

end

end A192663.P11472075158281900072

namespace A192663

/-- `floor(sqrt(Δ[n²]*A001764(n)))` -/
def P11472075158281900072.Spec : Prop :=
  ∀ n, P11472075158281900072.a n = A192663 n

end A192663

/-! ## A192663.P8907018916418672169

`floor(root(C(3*n, n), 2))`
-/

namespace A192663.P8907018916418672169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (3 * n) n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192663.P8907018916418672169

namespace A192663

/-- `floor(root(C(3*n, n), 2))` -/
def P8907018916418672169.Spec : Prop :=
  ∀ n, P8907018916418672169.a n = A192663 n

end A192663

/-! ## A192663.P1339548820955238554

`ceil(sqrt(C(3*n, n)+1))-1`
-/

namespace A192663.P1339548820955238554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (3 * n) n + 1 : ℝ)⌉ - 1

end

end A192663.P1339548820955238554

namespace A192663

/-- `ceil(sqrt(C(3*n, n)+1))-1` -/
def P1339548820955238554.Spec : Prop :=
  ∀ n, P1339548820955238554.a n = A192663 n

end A192663

/-!
# A192664: Floor-Sqrt transform of the binomial coefficients bin(2*n+1,n) (A001700).

The programs for A192664, the canonical program `A192664.P8377881052819169242` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192664 has offset 0).

The definition of A192664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192664.P8377881052819169242

`floor(sqrt(C(2*n+1, n)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192664

/-- `floor(sqrt(C(2*n+1, n)))` -/
def P8377881052819169242.Spec : Prop :=
  ∀ n, (P8377881052819169242.a n : ℤ) = A192664 n

theorem P8377881052819169242.correct : P8377881052819169242.Spec := by
  intro n
  simp only [A192664]

end A192664

/-! ## A192664.P12136774162781852709

`floor(sqrt(∏[4-2/(n+1)]/2))`
-/

namespace A192664.P12136774162781852709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((∏ j ∈ Finset.range (n + 1), f1 j) / 2 : ℚ) : ℝ)⌋

end

end A192664.P12136774162781852709

namespace A192664

/-- `floor(sqrt(∏[4-2/(n+1)]/2))` -/
def P12136774162781852709.Spec : Prop :=
  ∀ n, P12136774162781852709.a n = A192664 n

end A192664

/-! ## A192664.P1285070241445188672

`ceil(sqrt(A002661(2*n+1)+1))-1`
-/

namespace A192664.P1285070241445188672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002661 (2 * n + 1) + 1 : ℝ)⌉ - 1

end

end A192664.P1285070241445188672

namespace A192664

/-- `ceil(sqrt(A002661(2*n+1)+1))-1` -/
def P1285070241445188672.Spec : Prop :=
  ∀ n, P1285070241445188672.a n = A192664 n

end A192664

/-! ## A192664.P7789493387239511276

`ceil(A057428(n)+sqrt(A001700(n)))`
-/

namespace A192664.P7789493387239511276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (A001700 n : ℝ)⌉

end

end A192664.P7789493387239511276

namespace A192664

/-- `ceil(A057428(n)+sqrt(A001700(n)))` -/
def P7789493387239511276.Spec : Prop :=
  ∀ n, P7789493387239511276.a n = A192664 n

end A192664

/-! ## A192664.P14729694514619165675

`A057428(n)+ceil(sqrt(A304638(2*n+1)))`
-/

namespace A192664.P14729694514619165675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ⌈Real.sqrt (A304638 (2 * n + 1) : ℝ)⌉

end

end A192664.P14729694514619165675

namespace A192664

/-- `A057428(n)+ceil(sqrt(A304638(2*n+1)))` -/
def P14729694514619165675.Spec : Prop :=
  ∀ n, P14729694514619165675.a n = A192664 n

end A192664

/-! ## A192664.P9910692685938421206

`floor(C(2*n+1, n)^(1/2))`
-/

namespace A192664.P9910692685938421206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A192664.P9910692685938421206

namespace A192664

/-- `floor(C(2*n+1, n)^(1/2))` -/
def P9910692685938421206.Spec : Prop :=
  ∀ n, P9910692685938421206.a n = A192664 n

end A192664

/-!
# A192665: Floor-Sqrt transform of the numbers binomial(3*n,n)/(2*n+1) (A001764).

The programs for A192665, the canonical program `A192665.P14111883958955864823` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192665 has offset 0).

The definition of A192665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192665.P14111883958955864823

`floor(sqrt(C(3*n, n)/(2*n+1)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192665

/-- `floor(sqrt(C(3*n, n)/(2*n+1)))` -/
def P14111883958955864823.Spec : Prop :=
  ∀ n, P14111883958955864823.a n = A192665 n

theorem P14111883958955864823.correct : P14111883958955864823.Spec := by
  intro n
  simp only [A192665]

end A192665

/-! ## A192665.P16797719466534219078

`floor(sqrt(A001764(n)))`
-/

namespace A192665.P16797719466534219078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001764 n)

end

end A192665.P16797719466534219078

namespace A192665

/-- `floor(sqrt(A001764(n)))` -/
def P16797719466534219078.Spec : Prop :=
  ∀ n, P16797719466534219078.a n = A192665 n

end A192665

/-! ## A192665.P17341366368794795245

`floor(sqrt(A110616(∑[n])))`
-/

namespace A192665.P17341366368794795245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A110616 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192665.P17341366368794795245

namespace A192665

/-- `floor(sqrt(A110616(∑[n])))` -/
def P17341366368794795245.Spec : Prop :=
  ∀ n, P17341366368794795245.a n = A192665 n

end A192665

/-! ## A192665.P7417260305225567358

`floor(sqrt(A047749(2*n)))`
-/

namespace A192665.P7417260305225567358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A047749 (2 * n))

end

end A192665.P7417260305225567358

namespace A192665

/-- `floor(sqrt(A047749(2*n)))` -/
def P7417260305225567358.Spec : Prop :=
  ∀ n, P7417260305225567358.a n = A192665 n

end A192665

/-! ## A192665.P18396734927611395299

`floor(sqrt(A127898(C(n, 2))))`
-/

namespace A192665.P18396734927611395299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A127898 (Nat.choose n 2))

end

end A192665.P18396734927611395299

namespace A192665

/-- `floor(sqrt(A127898(C(n, 2))))` -/
def P18396734927611395299.Spec : Prop :=
  ∀ n, P18396734927611395299.a n = A192665 n

end A192665

/-! ## A192665.P12435251488768063354

`floor(sqrt(A127898(∑[n]-n)))`
-/

namespace A192665.P12435251488768063354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A127898 (∑ j ∈ Finset.range (n + 1), f1 j - n))

end

end A192665.P12435251488768063354

namespace A192665

/-- `floor(sqrt(A127898(∑[n]-n)))` -/
def P12435251488768063354.Spec : Prop :=
  ∀ n, P12435251488768063354.a n = A192665 n

end A192665

/-! ## A192665.P15858937576821414135

`floor(sqrt(∑{d}[n+1, A251662(#)]))`
-/

namespace A192665.P15858937576821414135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ d ∈ Nat.divisors (f1 n), A251662 d)

end

end A192665.P15858937576821414135

namespace A192665

/-- `floor(sqrt(∑{d}[n+1, A251662(#)]))` -/
def P15858937576821414135.Spec : Prop :=
  ∀ n, P15858937576821414135.a n = A192665 n

end A192665

/-! ## A192665.P10553491261177395595

`floor(sqrt(A047761(abs(1-2*n))))`
-/

namespace A192665.P10553491261177395595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A047761 |1 - (2 * n : ℤ)|.toNat)

end

end A192665.P10553491261177395595

namespace A192665

/-- `floor(sqrt(A047761(abs(1-2*n))))` -/
def P10553491261177395595.Spec : Prop :=
  ∀ n, P10553491261177395595.a n = A192665 n

end A192665

/-! ## A192665.P11028775958127708523

`floor(sqrt((n+1)/2*A000139(n)))`
-/

namespace A192665.P11028775958127708523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℚ) / 2 * (A000139 n : ℚ) : ℝ)⌋

end

end A192665.P11028775958127708523

namespace A192665

/-- `floor(sqrt((n+1)/2*A000139(n)))` -/
def P11028775958127708523.Spec : Prop :=
  ∀ n, P11028775958127708523.a n = A192665 n

end A192665

/-! ## A192665.P15482050767788765644

`floor(sqrt(A007226(n)-A006013(n)))`
-/

namespace A192665.P15482050767788765644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007226 n - A006013 n)

end

end A192665.P15482050767788765644

namespace A192665

/-- `floor(sqrt(A007226(n)-A006013(n)))` -/
def P15482050767788765644.Spec : Prop :=
  ∀ n, P15482050767788765644.a n = A192665 n

end A192665

/-! ## A192665.P14863322275065880958

`floor(sqrt((A006013(n)+A000139(n))/3))`
-/

namespace A192665.P14863322275065880958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A006013 n + A000139 n : ℚ) / 3 : ℝ)⌋

end

end A192665.P14863322275065880958

namespace A192665

/-- `floor(sqrt((A006013(n)+A000139(n))/3))` -/
def P14863322275065880958.Spec : Prop :=
  ∀ n, P14863322275065880958.a n = A192665 n

end A192665

/-! ## A192665.P11885522807956485974

`floor(root(A005809(n)/(2*n+1), 2))`
-/

namespace A192665.P11885522807956485974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A005809 n : ℚ) / (2 * n + 1 : ℚ) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192665.P11885522807956485974

namespace A192665

/-- `floor(root(A005809(n)/(2*n+1), 2))` -/
def P11885522807956485974.Spec : Prop :=
  ∀ n, P11885522807956485974.a n = A192665 n

end A192665

/-! ## A192665.P10820790632291356285

`floor(root(A045721(n)/(3*n+1), 2))`
-/

namespace A192665.P10820790632291356285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A045721 n : ℚ) / (3 * n + 1 : ℚ) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192665.P10820790632291356285

namespace A192665

/-- `floor(root(A045721(n)/(3*n+1), 2))` -/
def P10820790632291356285.Spec : Prop :=
  ∀ n, P10820790632291356285.a n = A192665 n

end A192665

/-! ## A192665.P11743285894771636412

`floor(root(C(3*n, n)/(2*n+1), 2))`
-/

namespace A192665.P11743285894771636412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192665.P11743285894771636412

namespace A192665

/-- `floor(root(C(3*n, n)/(2*n+1), 2))` -/
def P11743285894771636412.Spec : Prop :=
  ∀ n, P11743285894771636412.a n = A192665 n

end A192665

/-!
# A192666: E.g.f. satisfies: A(x) = exp(-1)*Sum_{n>=0} (1 + x*A(x))^(n^2)/n!.

The programs for A192666, there is no canonical definition to state claims against.
-/

/-! ## A192666.P5584551971077320999

`A131561(n)+A007091(A014824(n))`
-/

namespace A192666.P5584551971077320999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 n + A007091 (A014824 n).toNat

end

end A192666.P5584551971077320999

/-!
# A192667: E.g.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^3 - 1)^n/n!.

The programs for A192667, there is no canonical definition to state claims against.
-/

/-! ## A192667.P9298381868064007041

`A308012(∏[A003065(n)²])`
-/

namespace A192667.P9298381868064007041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003065 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308012 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192667.P9298381868064007041

/-!
# A192668: Floor-Sqrt transform of superfactorials (A000178).

The programs for A192668, there is no canonical definition to state claims against.
-/

/-! ## A192668.P4754065383947189188

`floor(∏[sqrt(n!)])`
-/

namespace A192668.P4754065383947189188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A192668.P4754065383947189188

/-! ## A192668.P9114626527663745086

`floor(∏[n!^(1/2)])`
-/

namespace A192668.P9114626527663745086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A192668.P9114626527663745086

/-! ## A192668.P3606124497013789920

`floor(∏[sqrt(∏[n+1]/(n+1))])`
-/

namespace A192668.P3606124497013789920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A192668.P3606124497013789920

/-! ## A192668.P10280432045934570429

`ceil(sqrt(A019515(n)))-1`
-/

namespace A192668.P10280432045934570429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A019515 n : ℝ)⌉ - 1

end

end A192668.P10280432045934570429

/-! ## A192668.P6777713349473461380

`floor(sqrt(A000178(n)))%A019515(n)`
-/

namespace A192668.P6777713349473461380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000178 n)) (A019515 n)

end

end A192668.P6777713349473461380

/-!
# A192669: Floor-Sqrt transform of Motzkin numbers (A001006).

The programs for A192669, the canonical program `A192669.P5846418315393625833` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192669 has offset 0).

The definition of A192669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192669.P5846418315393625833

`floor(sqrt(A001006(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192669

/-- `floor(sqrt(A001006(n)))` -/
def P5846418315393625833.Spec : Prop :=
  ∀ n, P5846418315393625833.a n = A192669 n

theorem P5846418315393625833.correct : P5846418315393625833.Spec := by
  intro n
  simp only [A192669]

end A192669

/-! ## A192669.P17998948229874349112

`floor(sqrt(Δ[A097332(n)]))`
-/

namespace A192669.P17998948229874349112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A192669.P17998948229874349112

namespace A192669

/-- `floor(sqrt(Δ[A097332(n)]))` -/
def P17998948229874349112.Spec : Prop :=
  ∀ n, P17998948229874349112.a n = A192669 n

end A192669

/-! ## A192669.P6203989655392630244

`floor(sqrt(A086246(n+2)))`
-/

namespace A192669.P6203989655392630244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086246 (n + 2))

end

end A192669.P6203989655392630244

namespace A192669

/-- `floor(sqrt(A086246(n+2)))` -/
def P6203989655392630244.Spec : Prop :=
  ∀ n, P6203989655392630244.a n = A192669 n

end A192669

/-! ## A192669.P14531383170975598695

`floor(sqrt(A168049(n+2)))`
-/

namespace A192669.P14531383170975598695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168049 (n + 2))

end

end A192669.P14531383170975598695

namespace A192669

/-- `floor(sqrt(A168049(n+2)))` -/
def P14531383170975598695.Spec : Prop :=
  ∀ n, P14531383170975598695.a n = A192669 n

end A192669

/-! ## A192669.P10753598285197776778

`floor(sqrt(abs(A166587(n+1))))`
-/

namespace A192669.P10753598285197776778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A166587 (n + 1)|

end

end A192669.P10753598285197776778

namespace A192669

/-- `floor(sqrt(abs(A166587(n+1))))` -/
def P10753598285197776778.Spec : Prop :=
  ∀ n, P10753598285197776778.a n = A192669 n

end A192669

/-! ## A192669.P9200264226289131293

`floor(sqrt(abs(A168051(n+2))))`
-/

namespace A192669.P9200264226289131293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A168051 (n + 2)|

end

end A192669.P9200264226289131293

namespace A192669

/-- `floor(sqrt(abs(A168051(n+2))))` -/
def P9200264226289131293.Spec : Prop :=
  ∀ n, P9200264226289131293.a n = A192669 n

end A192669

/-! ## A192669.P3619219852038502022

`floor(root(A005043(n+1)+A005043(n), 2))`
-/

namespace A192669.P3619219852038502022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005043 (n + 1) + A005043 n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192669.P3619219852038502022

namespace A192669

/-- `floor(root(A005043(n+1)+A005043(n), 2))` -/
def P3619219852038502022.Spec : Prop :=
  ∀ n, P3619219852038502022.a n = A192669 n

end A192669

/-! ## A192669.P8679875972066183045

`floor(root(A001006(n), A280193(2*(n+2))))`
-/

namespace A192669.P8679875972066183045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001006 n : ℝ) ^ (1 / (A280193 (2 * (n + 2)) : ℝ))⌋

end

end A192669.P8679875972066183045

namespace A192669

/-- `floor(root(A001006(n), A280193(2*(n+2))))` -/
def P8679875972066183045.Spec : Prop :=
  ∀ n, P8679875972066183045.a n = A192669 n

end A192669

/-! ## A192669.P8028796172508260440

`floor(sqrt(A064189(∑[n])))`
-/

namespace A192669.P8028796172508260440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064189 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192669.P8028796172508260440

namespace A192669

/-- `floor(sqrt(A064189(∑[n])))` -/
def P8028796172508260440.Spec : Prop :=
  ∀ n, P8028796172508260440.a n = A192669 n

end A192669

/-! ## A192669.P1944778483654119409

`floor(sqrt(A064645(∑[n])))`
-/

namespace A192669.P1944778483654119409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064645 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192669.P1944778483654119409

namespace A192669

/-- `floor(sqrt(A064645(∑[n])))` -/
def P1944778483654119409.Spec : Prop :=
  ∀ n, P1944778483654119409.a n = A192669 n

end A192669

/-! ## A192669.P17983989062140915865

`floor(root(A133053(n), 4))`
-/

namespace A192669.P17983989062140915865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133053 n : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A192669.P17983989062140915865

namespace A192669

/-- `floor(root(A133053(n), 4))` -/
def P17983989062140915865.Spec : Prop :=
  ∀ n, P17983989062140915865.a n = A192669 n

end A192669

/-! ## A192669.P11609293145037478973

`floor(sqrt(A258709(∑[n])))`
-/

namespace A192669.P11609293145037478973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258709 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192669.P11609293145037478973

namespace A192669

/-- `floor(sqrt(A258709(∑[n])))` -/
def P11609293145037478973.Spec : Prop :=
  ∀ n, P11609293145037478973.a n = A192669 n

end A192669

/-!
# A192670: Floor-Sqrt transform of central trinomial coefficients (A002426).

The programs for A192670, the canonical program `A192670.P15151433657181621169` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192670 has offset 0).

The definition of A192670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192670.P15151433657181621169

`floor(sqrt(A002426(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192670

/-- `floor(sqrt(A002426(n)))` -/
def P15151433657181621169.Spec : Prop :=
  ∀ n, P15151433657181621169.a n = A192670 n

theorem P15151433657181621169.correct : P15151433657181621169.Spec := by
  intro n
  simp only [A192670]

end A192670

/-! ## A192670.P2052548337385095081

`floor(sqrt(A005213(2*n)))`
-/

namespace A192670.P2052548337385095081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005213 (2 * n))

end

end A192670.P2052548337385095081

namespace A192670

/-- `floor(sqrt(A005213(2*n)))` -/
def P2052548337385095081.Spec : Prop :=
  ∀ n, P2052548337385095081.a n = A192670 n

end A192670

/-! ## A192670.P8203376693329341129

`floor(sqrt(2*A097861(n)+1))`
-/

namespace A192670.P8203376693329341129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A097861 n + 1)

end

end A192670.P8203376693329341129

namespace A192670

/-- `floor(sqrt(2*A097861(n)+1))` -/
def P8203376693329341129.Spec : Prop :=
  ∀ n, P8203376693329341129.a n = A192670 n

end A192670

/-! ## A192670.P8855750198405501368

`floor(sqrt(2*A257520(n)-1))`
-/

namespace A192670.P8855750198405501368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A257520 n - 1)

end

end A192670.P8855750198405501368

namespace A192670

/-- `floor(sqrt(2*A257520(n)-1))` -/
def P8855750198405501368.Spec : Prop :=
  ∀ n, P8855750198405501368.a n = A192670 n

end A192670

/-! ## A192670.P18336745186000673317

`floor(sqrt(∑[(1-n)*A167022(n)]))`
-/

namespace A192670.P18336745186000673317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192670.P18336745186000673317

namespace A192670

/-- `floor(sqrt(∑[(1-n)*A167022(n)]))` -/
def P18336745186000673317.Spec : Prop :=
  ∀ n, P18336745186000673317.a n = A192670 n

end A192670

/-! ## A192670.P7480262779684039571

`floor(sqrt(∑[(1-n)*A168058(n)]))`
-/

namespace A192670.P7480262779684039571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192670.P7480262779684039571

namespace A192670

/-- `floor(sqrt(∑[(1-n)*A168058(n)]))` -/
def P7480262779684039571.Spec : Prop :=
  ∀ n, P7480262779684039571.a n = A192670 n

end A192670

/-! ## A192670.P7596811504300606239

`floor(sqrt(A257520(n)+A097861(n)))`
-/

namespace A192670.P7596811504300606239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A257520 n + A097861 n)

end

end A192670.P7596811504300606239

namespace A192670

/-- `floor(sqrt(A257520(n)+A097861(n)))` -/
def P7596811504300606239.Spec : Prop :=
  ∀ n, P7596811504300606239.a n = A192670 n

end A192670

/-! ## A192670.P13703653018537947276

`floor(root(A002426(n), A036453(n+1)))`
-/

namespace A192670.P13703653018537947276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002426 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192670.P13703653018537947276

namespace A192670

/-- `floor(root(A002426(n), A036453(n+1)))` -/
def P13703653018537947276.Spec : Prop :=
  ∀ n, P13703653018537947276.a n = A192670 n

end A192670

/-! ## A192670.P11335859803887833919

`floor(sqrt(A109188(n+1)/(n+1)))`
-/

namespace A192670.P11335859803887833919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A109188 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A192670.P11335859803887833919

namespace A192670

/-- `floor(sqrt(A109188(n+1)/(n+1)))` -/
def P11335859803887833919.Spec : Prop :=
  ∀ n, P11335859803887833919.a n = A192670 n

end A192670

/-! ## A192670.P4542023842426853464

`floor(sqrt(A115990(∑[n])))`
-/

namespace A192670.P4542023842426853464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A115990 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192670.P4542023842426853464

namespace A192670

/-- `floor(sqrt(A115990(∑[n])))` -/
def P4542023842426853464.Spec : Prop :=
  ∀ n, P4542023842426853464.a n = A192670 n

end A192670

/-! ## A192670.P8120970395265997163

`floor(sqrt(sqrt(A168597(n))))`
-/

namespace A192670.P8120970395265997163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A168597 n : ℝ))⌋

end

end A192670.P8120970395265997163

namespace A192670

/-- `floor(sqrt(sqrt(A168597(n))))` -/
def P8120970395265997163.Spec : Prop :=
  ∀ n, P8120970395265997163.a n = A192670 n

end A192670

/-! ## A192670.P6017372661634473823

`floor(sqrt(A116392(∑[n])))`
-/

namespace A192670.P6017372661634473823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A116392 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192670.P6017372661634473823

namespace A192670

/-- `floor(sqrt(A116392(∑[n])))` -/
def P6017372661634473823.Spec : Prop :=
  ∀ n, P6017372661634473823.a n = A192670 n

end A192670

/-! ## A192670.P18134443843561802544

`floor(sqrt(A027907(∑[2*n])))`
-/

namespace A192670.P18134443843561802544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A027907 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192670.P18134443843561802544

namespace A192670

/-- `floor(sqrt(A027907(∑[2*n])))` -/
def P18134443843561802544.Spec : Prop :=
  ∀ n, P18134443843561802544.a n = A192670 n

end A192670

/-!
# A192671: Floor-Sqrt transform of Riordan numbers (A005043).

The programs for A192671, the canonical program `A192671.P11314604157394763` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192671 has offset 0).

The definition of A192671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192671.P11314604157394763

`floor(sqrt(A005043(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192671

/-- `floor(sqrt(A005043(n)))` -/
def P11314604157394763.Spec : Prop :=
  ∀ n, P11314604157394763.a n = A192671 n

theorem P11314604157394763.correct : P11314604157394763.Spec := by
  intro n
  simp only [A192671]

end A192671

/-! ## A192671.P6044876142121680360

`floor(sqrt(abs(A174297(n+2))))`
-/

namespace A192671.P6044876142121680360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A174297 (n + 2)|

end

end A192671.P6044876142121680360

namespace A192671

/-- `floor(sqrt(abs(A174297(n+2))))` -/
def P6044876142121680360.Spec : Prop :=
  ∀ n, P6044876142121680360.a n = A192671 n

end A192671

/-! ## A192671.P14446836187782578914

`floor(sqrt(2*A082395(n+1)-A097332(n)))`
-/

namespace A192671.P14446836187782578914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A082395 (n + 1) - A097332 n)

end

end A192671.P14446836187782578914

namespace A192671

/-- `floor(sqrt(2*A082395(n+1)-A097332(n)))` -/
def P14446836187782578914.Spec : Prop :=
  ∀ n, P14446836187782578914.a n = A192671 n

end A192671

/-! ## A192671.P13185025112241241656

`floor(sqrt(A278646(n)/Δ[n²]))`
-/

namespace A192671.P13185025112241241656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A278646 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) : ℝ)⌋

end

end A192671.P13185025112241241656

namespace A192671

/-- `floor(sqrt(A278646(n)/Δ[n²]))` -/
def P13185025112241241656.Spec : Prop :=
  ∀ n, P13185025112241241656.a n = A192671 n

end A192671

/-! ## A192671.P9569291708790832563

`floor(sqrt(A005773(n+1)-A025178(n+1)))`
-/

namespace A192671.P9569291708790832563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005773 (n + 1) - A025178 (n + 1))

end

end A192671.P9569291708790832563

namespace A192671

/-- `floor(sqrt(A005773(n+1)-A025178(n+1)))` -/
def P9569291708790832563.Spec : Prop :=
  ∀ n, P9569291708790832563.a n = A192671 n

end A192671

/-! ## A192671.P11392347779557317345

`floor(sqrt(A002426(n)-A005213(2*n+1)))`
-/

namespace A192671.P11392347779557317345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002426 n - A005213 (2 * n + 1))

end

end A192671.P11392347779557317345

namespace A192671

/-- `floor(sqrt(A002426(n)-A005213(2*n+1)))` -/
def P11392347779557317345.Spec : Prop :=
  ∀ n, P11392347779557317345.a n = A192671 n

end A192671

/-! ## A192671.P13057743190241907798

`floor(sqrt(A005213(2*n)-A005213(2*n+1)))`
-/

namespace A192671.P13057743190241907798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005213 (2 * n) - A005213 (2 * n + 1))

end

end A192671.P13057743190241907798

namespace A192671

/-- `floor(sqrt(A005213(2*n)-A005213(2*n+1)))` -/
def P13057743190241907798.Spec : Prop :=
  ∀ n, P13057743190241907798.a n = A192671 n

end A192671

/-! ## A192671.P10233930520377302447

`floor(sqrt(A091867(∑[n])))`
-/

namespace A192671.P10233930520377302447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A091867 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192671.P10233930520377302447

namespace A192671

/-- `floor(sqrt(A091867(∑[n])))` -/
def P10233930520377302447.Spec : Prop :=
  ∀ n, P10233930520377302447.a n = A192671 n

end A192671

/-! ## A192671.P12684729235618646962

`floor(sqrt(A059346(∑[n])))`
-/

namespace A192671.P12684729235618646962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059346 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192671.P12684729235618646962

namespace A192671

/-- `floor(sqrt(A059346(∑[n])))` -/
def P12684729235618646962.Spec : Prop :=
  ∀ n, P12684729235618646962.a n = A192671 n

end A192671

/-! ## A192671.P9990733582667166913

`floor(sqrt(A089942(∑[n])))`
-/

namespace A192671.P9990733582667166913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A089942 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192671.P9990733582667166913

namespace A192671

/-- `floor(sqrt(A089942(∑[n])))` -/
def P9990733582667166913.Spec : Prop :=
  ∀ n, P9990733582667166913.a n = A192671 n

end A192671

/-! ## A192671.P13418100045908600578

`floor(sqrt(A097609(∑[n])))`
-/

namespace A192671.P13418100045908600578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A097609 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192671.P13418100045908600578

namespace A192671

/-- `floor(sqrt(A097609(∑[n])))` -/
def P13418100045908600578.Spec : Prop :=
  ∀ n, P13418100045908600578.a n = A192671 n

end A192671

/-!
# A192672: Floor-Sqrt transform of little Schroeder numbers (A001003).

The programs for A192672, the canonical program `A192672.P1400011279283696610` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192672 has offset 0).

The definition of A192672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192672.P10538018324853139331

`floor(sqrt(A001003(n)))`
-/

namespace A192672.P10538018324853139331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001003 n)

end

end A192672.P10538018324853139331

namespace A192672

/-- `floor(sqrt(A001003(n)))` -/
def P10538018324853139331.Spec : Prop :=
  ∀ n, P10538018324853139331.a n = A192672 n

end A192672

/-! ## A192672.P1400011279283696610

`floor(sqrt(abs(A080243(n))))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192672

/-- `floor(sqrt(abs(A080243(n))))` -/
def P1400011279283696610.Spec : Prop :=
  ∀ n, P1400011279283696610.a n = A192672 n

theorem P1400011279283696610.correct : P1400011279283696610.Spec := by
  intro n
  simp only [A192672]

end A192672

/-! ## A192672.P8611211784280243249

`floor(sqrt(A186826(∑[n])))`
-/

namespace A192672.P8611211784280243249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A186826 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192672.P8611211784280243249

namespace A192672

/-- `floor(sqrt(A186826(∑[n])))` -/
def P8611211784280243249.Spec : Prop :=
  ∀ n, P8611211784280243249.a n = A192672 n

end A192672

/-! ## A192672.P14063405950768003271

`floor(sqrt(A011117(∑[n]+n)))`
-/

namespace A192672.P14063405950768003271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A011117 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A192672.P14063405950768003271

namespace A192672

/-- `floor(sqrt(A011117(∑[n]+n)))` -/
def P14063405950768003271.Spec : Prop :=
  ∀ n, P14063405950768003271.a n = A192672 n

end A192672

/-! ## A192672.P3887134492847819169

`floor(sqrt(A238112(n)+A155069(n)))`
-/

namespace A192672.P3887134492847819169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A238112 n + A155069 n)

end

end A192672.P3887134492847819169

namespace A192672

/-- `floor(sqrt(A238112(n)+A155069(n)))` -/
def P3887134492847819169.Spec : Prop :=
  ∀ n, P3887134492847819169.a n = A192672 n

end A192672

/-! ## A192672.P8293106986221863414

`floor(sqrt(A006319(n)-A238112(n)))`
-/

namespace A192672.P8293106986221863414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006319 n - A238112 n)

end

end A192672.P8293106986221863414

namespace A192672

/-- `floor(sqrt(A006319(n)-A238112(n)))` -/
def P8293106986221863414.Spec : Prop :=
  ∀ n, P8293106986221863414.a n = A192672 n

end A192672

/-! ## A192672.P13254338858490436464

`floor(sqrt(A033999(n)*A080243(n)))`
-/

namespace A192672.P13254338858490436464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A033999 n * A080243 n)

end

end A192672.P13254338858490436464

namespace A192672

/-- `floor(sqrt(A033999(n)*A080243(n)))` -/
def P13254338858490436464.Spec : Prop :=
  ∀ n, P13254338858490436464.a n = A192672 n

end A192672

/-! ## A192672.P15348840459472820987

`floor(root(A001003(n), A036453(n+1)))`
-/

namespace A192672.P15348840459472820987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001003 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192672.P15348840459472820987

namespace A192672

/-- `floor(root(A001003(n), A036453(n+1)))` -/
def P15348840459472820987.Spec : Prop :=
  ∀ n, P15348840459472820987.a n = A192672 n

end A192672

/-! ## A192672.P15304073305565268412

`floor(sqrt(ceil(A006318(n)/2)))`
-/

namespace A192672.P15304073305565268412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈(A006318 n : ℚ) / 2⌉

end

end A192672.P15304073305565268412

namespace A192672

/-- `floor(sqrt(ceil(A006318(n)/2)))` -/
def P15304073305565268412.Spec : Prop :=
  ∀ n, P15304073305565268412.a n = A192672 n

end A192672

/-! ## A192672.P16016034076389066732

`floor(sqrt(round(A238111(n)/4)))`
-/

namespace A192672.P16016034076389066732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (SequenceMachineLib.roundAway ((A238111 n : ℚ) / 4))

end

end A192672.P16016034076389066732

namespace A192672

/-- `floor(sqrt(round(A238111(n)/4)))` -/
def P16016034076389066732.Spec : Prop :=
  ∀ n, P16016034076389066732.a n = A192672 n

end A192672

/-! ## A192672.P13176794948878414299

`floor(sqrt(A025240(n+1)/2))`
-/

namespace A192672.P13176794948878414299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A025240 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A192672.P13176794948878414299

namespace A192672

/-- `floor(sqrt(A025240(n+1)/2))` -/
def P13176794948878414299.Spec : Prop :=
  ∀ n, P13176794948878414299.a n = A192672 n

end A192672

/-! ## A192672.P12015169542011734454

`floor(sqrt(ceil((A035011(n)+1)/2)))`
-/

namespace A192672.P12015169542011734454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈(A035011 n + 1 : ℚ) / 2⌉

end

end A192672.P12015169542011734454

namespace A192672

/-- `floor(sqrt(ceil((A035011(n)+1)/2)))` -/
def P12015169542011734454.Spec : Prop :=
  ∀ n, P12015169542011734454.a n = A192672 n

end A192672

/-! ## A192672.P6432379093291872581

`floor(sqrt(ceil(A155069(n+1)/2)))`
-/

namespace A192672.P6432379093291872581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈(A155069 (n + 1) : ℚ) / 2⌉

end

end A192672.P6432379093291872581

namespace A192672

/-- `floor(sqrt(ceil(A155069(n+1)/2)))` -/
def P6432379093291872581.Spec : Prop :=
  ∀ n, P6432379093291872581.a n = A192672 n

end A192672

/-! ## A192672.P12439227790792647094

`floor(sqrt(A238111(n)-A238113(n)))`
-/

namespace A192672.P12439227790792647094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A238111 n - A238113 n)

end

end A192672.P12439227790792647094

namespace A192672

/-- `floor(sqrt(A238111(n)-A238113(n)))` -/
def P12439227790792647094.Spec : Prop :=
  ∀ n, P12439227790792647094.a n = A192672 n

end A192672

/-! ## A192672.P1842620992109579114

`floor(sqrt((A155069(n)+A006319(n))/2))`
-/

namespace A192672.P1842620992109579114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A155069 n + A006319 n : ℚ) / 2 : ℝ)⌋

end

end A192672.P1842620992109579114

namespace A192672

/-- `floor(sqrt((A155069(n)+A006319(n))/2))` -/
def P1842620992109579114.Spec : Prop :=
  ∀ n, P1842620992109579114.a n = A192672 n

end A192672

/-!
# A192673: Floor-Sqrt transform of large Schroder numbers (A006318).

The programs for A192673, the canonical program `A192673.P17428601771079711106` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192673 has offset 0).

The definition of A192673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192673.P2132009630017822835

`floor(sqrt(2)*sqrt(A001003(n)))`
-/

namespace A192673.P2132009630017822835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * Real.sqrt (A001003 n : ℝ)⌋

end

end A192673.P2132009630017822835

namespace A192673

/-- `floor(sqrt(2)*sqrt(A001003(n)))` -/
def P2132009630017822835.Spec : Prop :=
  ∀ n, P2132009630017822835.a n = A192673 n

end A192673

/-! ## A192673.P11437874612759652437

`floor(sqrt(A006318(n)))`
-/

namespace A192673.P11437874612759652437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006318 n)

end

end A192673.P11437874612759652437

namespace A192673

/-- `floor(sqrt(A006318(n)))` -/
def P11437874612759652437.Spec : Prop :=
  ∀ n, P11437874612759652437.a n = A192673 n

end A192673

/-! ## A192673.P2367291487628642201

`floor(sqrt(∑[A006319(n)]))`
-/

namespace A192673.P2367291487628642201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192673.P2367291487628642201

namespace A192673

/-- `floor(sqrt(∑[A006319(n)]))` -/
def P2367291487628642201.Spec : Prop :=
  ∀ n, P2367291487628642201.a n = A192673 n

end A192673

/-! ## A192673.P10839172096281580847

`floor(sqrt(A080247(∑[n])))`
-/

namespace A192673.P10839172096281580847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080247 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192673.P10839172096281580847

namespace A192673

/-- `floor(sqrt(A080247(∑[n])))` -/
def P10839172096281580847.Spec : Prop :=
  ∀ n, P10839172096281580847.a n = A192673 n

end A192673

/-! ## A192673.P995230328288684097

`floor(sqrt(Δ[A176006(n)]))`
-/

namespace A192673.P995230328288684097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A192673.P995230328288684097

namespace A192673

/-- `floor(sqrt(Δ[A176006(n)]))` -/
def P995230328288684097.Spec : Prop :=
  ∀ n, P995230328288684097.a n = A192673 n

end A192673

/-! ## A192673.P7264355797018000206

`floor(record[sqrt(A080247(n))])`
-/

namespace A192673.P7264355797018000206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080247 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A192673.P7264355797018000206

namespace A192673

/-- `floor(record[sqrt(A080247(n))])` -/
def P7264355797018000206.Spec : Prop :=
  ∀ n, P7264355797018000206.a n = A192673 n

end A192673

/-! ## A192673.P8902473572316937072

`floor(sqrt(A025240(n+1)))`
-/

namespace A192673.P8902473572316937072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025240 (n + 1))

end

end A192673.P8902473572316937072

namespace A192673

/-- `floor(sqrt(A025240(n+1)))` -/
def P8902473572316937072.Spec : Prop :=
  ∀ n, P8902473572316937072.a n = A192673 n

end A192673

/-! ## A192673.P3122164384574359386

`floor(sqrt(A035011(n)+1))`
-/

namespace A192673.P3122164384574359386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A035011 n + 1)

end

end A192673.P3122164384574359386

namespace A192673

/-- `floor(sqrt(A035011(n)+1))` -/
def P3122164384574359386.Spec : Prop :=
  ∀ n, P3122164384574359386.a n = A192673 n

end A192673

/-! ## A192673.P9243534443660460694

`floor(sqrt(A155069(n+1)))`
-/

namespace A192673.P9243534443660460694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155069 (n + 1))

end

end A192673.P9243534443660460694

namespace A192673

/-- `floor(sqrt(A155069(n+1)))` -/
def P9243534443660460694.Spec : Prop :=
  ∀ n, P9243534443660460694.a n = A192673 n

end A192673

/-! ## A192673.P247007907402086343

`floor(sqrt(2*A001003(n)))`
-/

namespace A192673.P247007907402086343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A001003 n)

end

end A192673.P247007907402086343

namespace A192673

/-- `floor(sqrt(2*A001003(n)))` -/
def P247007907402086343.Spec : Prop :=
  ∀ n, P247007907402086343.a n = A192673 n

end A192673

/-! ## A192673.P12980022885353535108

`floor(sqrt(A238111(n)/2))`
-/

namespace A192673.P12980022885353535108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A238111 n : ℚ) / 2 : ℝ)⌋

end

end A192673.P12980022885353535108

namespace A192673

/-- `floor(sqrt(A238111(n)/2))` -/
def P12980022885353535108.Spec : Prop :=
  ∀ n, P12980022885353535108.a n = A192673 n

end A192673

/-! ## A192673.P17428601771079711106

`floor(sqrt(abs(2*A080243(n))))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192673

/-- `floor(sqrt(abs(2*A080243(n))))` -/
def P17428601771079711106.Spec : Prop :=
  ∀ n, P17428601771079711106.a n = A192673 n

theorem P17428601771079711106.correct : P17428601771079711106.Spec := by
  intro n
  simp only [A192673]

end A192673

/-! ## A192673.P7359651667255764672

`floor(root(A001003(n)*A036453(n+1), 2))`
-/

namespace A192673.P7359651667255764672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001003 n * A036453 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A192673.P7359651667255764672

namespace A192673

/-- `floor(root(A001003(n)*A036453(n+1), 2))` -/
def P7359651667255764672.Spec : Prop :=
  ∀ n, P7359651667255764672.a n = A192673 n

end A192673

/-!
# A192674: Floor-Sqrt transform of large central Delannoy numbers (A001850).

The programs for A192674, the canonical program `A192674.P1098481128355414171` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192674 has offset 0).

The definition of A192674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192674.P1098481128355414171

`floor(sqrt(A001850(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192674

/-- `floor(sqrt(A001850(n)))` -/
def P1098481128355414171.Spec : Prop :=
  ∀ n, P1098481128355414171.a n = A192674 n

theorem P1098481128355414171.correct : P1098481128355414171.Spec := by
  intro n
  simp only [A192674]

end A192674

/-! ## A192674.P18399121178345583693

`floor(sqrt(∑[A110170(n)]))`
-/

namespace A192674.P18399121178345583693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192674.P18399121178345583693

namespace A192674

/-- `floor(sqrt(∑[A110170(n)]))` -/
def P18399121178345583693.Spec : Prop :=
  ∀ n, P18399121178345583693.a n = A192674 n

end A192674

/-! ## A192674.P16792983579701012029

`floor(sqrt(A026003(2*n)))`
-/

namespace A192674.P16792983579701012029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A026003 (2 * n))

end

end A192674.P16792983579701012029

namespace A192674

/-- `floor(sqrt(A026003(2*n)))` -/
def P16792983579701012029.Spec : Prop :=
  ∀ n, P16792983579701012029.a n = A192674 n

end A192674

/-! ## A192674.P7524159932872340936

`floor(sqrt(∑[A247630(2*n)]))`
-/

namespace A192674.P7524159932872340936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192674.P7524159932872340936

namespace A192674

/-- `floor(sqrt(∑[A247630(2*n)]))` -/
def P7524159932872340936.Spec : Prop :=
  ∀ n, P7524159932872340936.a n = A192674 n

end A192674

/-! ## A192674.P10655558024189267740

`floor(sqrt(2*A047665(n)+1))`
-/

namespace A192674.P10655558024189267740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A047665 n + 1)

end

end A192674.P10655558024189267740

namespace A192674

/-- `floor(sqrt(2*A047665(n)+1))` -/
def P10655558024189267740.Spec : Prop :=
  ∀ n, P10655558024189267740.a n = A192674 n

end A192674

/-! ## A192674.P9410790240337846998

`floor(sqrt(2*A226994(n)-1))`
-/

namespace A192674.P9410790240337846998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A226994 n - 1)

end

end A192674.P9410790240337846998

namespace A192674

/-- `floor(sqrt(2*A226994(n)-1))` -/
def P9410790240337846998.Spec : Prop :=
  ∀ n, P9410790240337846998.a n = A192674 n

end A192674

/-! ## A192674.P12952502070210894099

`floor(sqrt(∑[2*A002002(n)]+1))`
-/

namespace A192674.P12952502070210894099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A192674.P12952502070210894099

namespace A192674

/-- `floor(sqrt(∑[2*A002002(n)]+1))` -/
def P12952502070210894099.Spec : Prop :=
  ∀ n, P12952502070210894099.a n = A192674 n

end A192674

/-! ## A192674.P16865345511070196176

`floor(sqrt(A226994(n)+A047665(n)))`
-/

namespace A192674.P16865345511070196176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A226994 n + A047665 n)

end

end A192674.P16865345511070196176

namespace A192674

/-- `floor(sqrt(A226994(n)+A047665(n)))` -/
def P16865345511070196176.Spec : Prop :=
  ∀ n, P16865345511070196176.a n = A192674 n

end A192674

/-! ## A192674.P4235824394464223109

`floor(sqrt(A050146(n+1)-A002002(n)))`
-/

namespace A192674.P4235824394464223109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050146 (n + 1) - A002002 n)

end

end A192674.P4235824394464223109

namespace A192674

/-- `floor(sqrt(A050146(n+1)-A002002(n)))` -/
def P4235824394464223109.Spec : Prop :=
  ∀ n, P4235824394464223109.a n = A192674 n

end A192674

/-!
# A192675: Floor-Sqrt transform of large Fine numbers (A000957).

The programs for A192675, the canonical program `A192675.P9034443192618425155` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192675 has offset 0).

The definition of A192675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192675.P9034443192618425155

`floor(sqrt(A000957(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192675

/-- `floor(sqrt(A000957(n)))` -/
def P9034443192618425155.Spec : Prop :=
  ∀ n, P9034443192618425155.a n = A192675 n

theorem P9034443192618425155.correct : P9034443192618425155.Spec := by
  intro n
  simp only [A192675]

end A192675

/-! ## A192675.P8643803393278104738

`floor(sqrt(A000007(n)-A126983(n)))`
-/

namespace A192675.P8643803393278104738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000007 n - A126983 n)

end

end A192675.P8643803393278104738

namespace A192675

/-- `floor(sqrt(A000007(n)-A126983(n)))` -/
def P8643803393278104738.Spec : Prop :=
  ∀ n, P8643803393278104738.a n = A192675 n

theorem P8643803393278104738.correct : P8643803393278104738.Spec := by
  intro n
  simp only [A192675, Nat.add_sub_cancel, A192675.P8643803393278104738.a, A192675.P9034443192618425155.a, A000007, A000007.P6599383543502402472.a, A000957, A000957.P17024256012114130201.a, A126983, A126983.P5512643725349819796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192675

/-! ## A192675.P9693332737458211521

`floor(sqrt(A036987(n)-A126983(n)))`
-/

namespace A192675.P9693332737458211521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A036987 n - A126983 n)

end

end A192675.P9693332737458211521

namespace A192675

/-- `floor(sqrt(A036987(n)-A126983(n)))` -/
def P9693332737458211521.Spec : Prop :=
  ∀ n, P9693332737458211521.a n = A192675 n

end A192675

/-! ## A192675.P16446841524194085369

`floor(sqrt(A062157(n)*A064310(n)))`
-/

namespace A192675.P16446841524194085369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A062157 n * A064310 n)

end

end A192675.P16446841524194085369

namespace A192675

/-- `floor(sqrt(A062157(n)*A064310(n)))` -/
def P16446841524194085369.Spec : Prop :=
  ∀ n, P16446841524194085369.a n = A192675 n

end A192675

/-! ## A192675.P14195426307548147465

`floor(sqrt(2*A126983(n+1)-A115141(n+1)))`
-/

namespace A192675.P14195426307548147465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A126983 (n + 1) - A115141 (n + 1))

end

end A192675.P14195426307548147465

namespace A192675

/-- `floor(sqrt(2*A126983(n+1)-A115141(n+1)))` -/
def P14195426307548147465.Spec : Prop :=
  ∀ n, P14195426307548147465.a n = A192675 n

end A192675

/-!
# A192676: Floor-Sqrt transform of derangement numbers (A000166).

The programs for A192676, there is no canonical definition to state claims against.
-/

/-! ## A192676.P16755242287436239465

`floor(sqrt(A000166(n)))`
-/

namespace A192676.P16755242287436239465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000166 n)

end

end A192676.P16755242287436239465

/-! ## A192676.P8043763345760414973

`floor(sqrt(abs(A182386(n))))`
-/

namespace A192676.P8043763345760414973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A182386 n|

end

end A192676.P8043763345760414973

/-! ## A192676.P3157635448557241663

`floor(sqrt(A008290(∑[n])))`
-/

namespace A192676.P3157635448557241663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008290 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192676.P3157635448557241663

/-! ## A192676.P12531712204064406475

`floor(sqrt(A068106(∑[n])))`
-/

namespace A192676.P12531712204064406475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A068106 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192676.P12531712204064406475

/-! ## A192676.P7701406807141199376

`floor(sqrt(A086764(∑[n])))`
-/

namespace A192676.P7701406807141199376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086764 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192676.P7701406807141199376

/-! ## A192676.P3231907000244592409

`floor(sqrt(A003221(n)+A000387(n)))`
-/

namespace A192676.P3231907000244592409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003221 n + A000387 n)

end

end A192676.P3231907000244592409

/-! ## A192676.P15954833487578786856

`floor(sqrt(A216779(n)+A216778(n)))`
-/

namespace A192676.P15954833487578786856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A216779 n + A216778 n)

end

end A192676.P15954833487578786856

/-! ## A192676.P4389845409630190638

`floor(sqrt(A047920(∑[n]+n)))`
-/

namespace A192676.P4389845409630190638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A047920 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A192676.P4389845409630190638

/-! ## A192676.P3145837892886399929

`floor(sqrt(A320032(∑[n+2]-1)))`
-/

namespace A192676.P3145837892886399929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A320032 (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A192676.P3145837892886399929

/-!
# A192677: Floor-Sqrt transform of involution numbers (A000085).

The programs for A192677, the canonical program `A192677.P58504723841023189` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192677 has offset 0).

The definition of A192677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192677.P58504723841023189

`floor(sqrt(A000085(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192677

/-- `floor(sqrt(A000085(n)))` -/
def P58504723841023189.Spec : Prop :=
  ∀ n, P58504723841023189.a n = A192677 n

theorem P58504723841023189.correct : P58504723841023189.Spec := by
  intro n
  simp only [A192677]

end A192677

/-! ## A192677.P11780027378551357485

`floor(sqrt(∏[(n-1)/a(n-1)+1]))` with `a(0)=1`
-/

namespace A192677.P11780027378551357485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋

end

end A192677.P11780027378551357485

namespace A192677

/-- `floor(sqrt(∏[(n-1)/a(n-1)+1]))` -/
def P11780027378551357485.Spec : Prop :=
  ∀ n, P11780027378551357485.a n = A192677 n

end A192677

/-! ## A192677.P3055918570951171249

`floor(sqrt(A099020(∑[n])))`
-/

namespace A192677.P3055918570951171249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A099020 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192677.P3055918570951171249

namespace A192677

/-- `floor(sqrt(A099020(∑[n])))` -/
def P3055918570951171249.Spec : Prop :=
  ∀ n, P3055918570951171249.a n = A192677 n

end A192677

/-! ## A192677.P11719711411316493821

`floor(sqrt(A001465(n)+A000704(n)))`
-/

namespace A192677.P11719711411316493821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001465 n + A000704 n)

end

end A192677.P11719711411316493821

namespace A192677

/-- `floor(sqrt(A001465(n)+A000704(n)))` -/
def P11719711411316493821.Spec : Prop :=
  ∀ n, P11719711411316493821.a n = A192677 n

theorem P11719711411316493821.correct : P11719711411316493821.Spec := by
  intro n
  simp only [A192677, Nat.add_sub_cancel, A192677.P11719711411316493821.a, A192677.P58504723841023189.a, A000085, A000085.P6317799103021482191.a, A000704, A000704.P18194243516802683645.a, A001465, A001465.P11263082568877116543.a, A048099, A048099.P9392881477138269526.a, A001189, A001189.P2746469675608936850.a, A051684, A051684.P7377963826740137144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192677

/-! ## A192677.P14613685125256979627

`floor(root(A000085(n), A036453(n+1)))`
-/

namespace A192677.P14613685125256979627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000085 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192677.P14613685125256979627

namespace A192677

/-- `floor(root(A000085(n), A036453(n+1)))` -/
def P14613685125256979627.Spec : Prop :=
  ∀ n, P14613685125256979627.a n = A192677 n

end A192677

/-! ## A192677.P2711355395268403006

`floor(sqrt(A187044(n)-A186739(n+1)))`
-/

namespace A192677.P2711355395268403006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A187044 n - A186739 (n + 1))

end

end A192677.P2711355395268403006

namespace A192677

/-- `floor(sqrt(A187044(n)-A186739(n+1)))` -/
def P2711355395268403006.Spec : Prop :=
  ∀ n, P2711355395268403006.a n = A192677 n

end A192677

/-! ## A192677.P4672714615324001210

`floor(sqrt(A135401(n)+2*A000900(n)))`
-/

namespace A192677.P4672714615324001210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135401 n + 2 * A000900 n)

end

end A192677.P4672714615324001210

namespace A192677

/-- `floor(sqrt(A135401(n)+2*A000900(n)))` -/
def P4672714615324001210.Spec : Prop :=
  ∀ n, P4672714615324001210.a n = A192677 n

end A192677

/-! ## A192677.P13705257359978362392

`floor(sqrt(A220699(n+3)-A187044(n)))`
-/

namespace A192677.P13705257359978362392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A220699 (n + 3) - A187044 n)

end

end A192677.P13705257359978362392

namespace A192677

/-- `floor(sqrt(A220699(n+3)-A187044(n)))` -/
def P13705257359978362392.Spec : Prop :=
  ∀ n, P13705257359978362392.a n = A192677 n

end A192677

/-! ## A192677.P16278156925190657315

`floor(sqrt(2*A085386(n)-A001464(n)))`
-/

namespace A192677.P16278156925190657315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A085386 n - A001464 n)

end

end A192677.P16278156925190657315

namespace A192677

/-- `floor(sqrt(2*A085386(n)-A001464(n)))` -/
def P16278156925190657315.Spec : Prop :=
  ∀ n, P16278156925190657315.a n = A192677 n

end A192677

/-! ## A192677.P4147848749747702104

`floor(sqrt(A297708(n)-2*A000900(n)))`
-/

namespace A192677.P4147848749747702104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A297708 n - 2 * A000900 n)

end

end A192677.P4147848749747702104

namespace A192677

/-- `floor(sqrt(A297708(n)-2*A000900(n)))` -/
def P4147848749747702104.Spec : Prop :=
  ∀ n, P4147848749747702104.a n = A192677 n

end A192677

/-! ## A192677.P15358490104229102691

`floor(sqrt((A297708(n)+A135401(n))/2))`
-/

namespace A192677.P15358490104229102691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A297708 n + A135401 n : ℚ) / 2 : ℝ)⌋

end

end A192677.P15358490104229102691

namespace A192677

/-- `floor(sqrt((A297708(n)+A135401(n))/2))` -/
def P15358490104229102691.Spec : Prop :=
  ∀ n, P15358490104229102691.a n = A192677 n

end A192677

/-! ## A192677.P17093458313226033639

`floor(sqrt(A193361(n+2)-A186739(n+1)))`
-/

namespace A192677.P17093458313226033639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A193361 (n + 2) - A186739 (n + 1))

end

end A192677.P17093458313226033639

namespace A192677

/-- `floor(sqrt(A193361(n+2)-A186739(n+1)))` -/
def P17093458313226033639.Spec : Prop :=
  ∀ n, P17093458313226033639.a n = A192677 n

end A192677

/-! ## A192677.P13734140004994362245

`floor(sqrt(A013989(n)/(n+1)))`
-/

namespace A192677.P13734140004994362245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A013989 n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A192677.P13734140004994362245

namespace A192677

/-- `floor(sqrt(A013989(n)/(n+1)))` -/
def P13734140004994362245.Spec : Prop :=
  ∀ n, P13734140004994362245.a n = A192677 n

end A192677

/-! ## A192677.P252237607630455473

`floor(sqrt(Δ[A001189(n+1)]/(n+1)))`
-/

namespace A192677.P252237607630455473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A192677.P252237607630455473

namespace A192677

/-- `floor(sqrt(Δ[A001189(n+1)]/(n+1)))` -/
def P252237607630455473.Spec : Prop :=
  ∀ n, P252237607630455473.a n = A192677 n

end A192677

/-!
# A192678: Floor-Sqrt transform of idempotent endomap numbers (A000248).

The programs for A192678, the canonical program `A192678.P2462078059855048353` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192678 has offset 0).

The definition of A192678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192678.P2462078059855048353

`floor(sqrt(A000248(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192678

/-- `floor(sqrt(A000248(n)))` -/
def P2462078059855048353.Spec : Prop :=
  ∀ n, P2462078059855048353.a n = A192678 n

theorem P2462078059855048353.correct : P2462078059855048353.Spec := by
  intro n
  simp only [A192678]

end A192678

/-! ## A192678.P11325458538690715341

`floor(sqrt(A235596(n+1)+1))`
-/

namespace A192678.P11325458538690715341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A235596 (n + 1) + 1)

end

end A192678.P11325458538690715341

namespace A192678

/-- `floor(sqrt(A235596(n+1)+1))` -/
def P11325458538690715341.Spec : Prop :=
  ∀ n, P11325458538690715341.a n = A192678 n

theorem P11325458538690715341.correct : P11325458538690715341.Spec := by
  intro n
  simp only [A192678, Nat.add_sub_cancel, A192678.P11325458538690715341.a, A192678.P2462078059855048353.a, A000248, A000248.P14279885909350861401.f1, A000248.P14279885909350861401.a, A235596, A235596.P11875951441619194782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192678

/-! ## A192678.P4093020639881122942

`floor(A145460(A034856(n+1))^(2/4))`
-/

namespace A192678.P4093020639881122942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145460 (A034856 (n + 1)).toNat : ℝ) ^ ((2 : ℚ) / 4 : ℝ)⌋

end

end A192678.P4093020639881122942

namespace A192678

/-- `floor(A145460(A034856(n+1))^(2/4))` -/
def P4093020639881122942.Spec : Prop :=
  ∀ n, P4093020639881122942.a n = A192678 n

end A192678

/-! ## A192678.P12481636830455070478

`floor(sqrt(or(1, A052512(n+1)/(n+1))))`
-/

namespace A192678.P12481636830455070478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.lor 1 (SequenceMachineLib.roundAway ((A052512 (n + 1) : ℚ) / (n + 1 : ℚ))))

end

end A192678.P12481636830455070478

namespace A192678

/-- `floor(sqrt(or(1, A052512(n+1)/(n+1))))` -/
def P12481636830455070478.Spec : Prop :=
  ∀ n, P12481636830455070478.a n = A192678 n

end A192678

/-! ## A192678.P5788139697107785760

`floor(sqrt(A143397(∑[n]+n)))`
-/

namespace A192678.P5788139697107785760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A143397 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A192678.P5788139697107785760

namespace A192678

/-- `floor(sqrt(A143397(∑[n]+n)))` -/
def P5788139697107785760.Spec : Prop :=
  ∀ n, P5788139697107785760.a n = A192678 n

end A192678

/-!
# A192679: Floor-Sqrt transform of ordered Bell numbers (A000670).

The programs for A192679, there is no canonical definition to state claims against.
-/

/-! ## A192679.P3843201393011336596

`floor(sqrt(A000670(n)))`
-/

namespace A192679.P3843201393011336596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000670 n)

end

end A192679.P3843201393011336596

/-! ## A192679.P2430945981313053676

`floor(sqrt(A073146(∑[n])))`
-/

namespace A192679.P2430945981313053676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A073146 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192679.P2430945981313053676

/-! ## A192679.P190869781875597048

`floor(sqrt(A122101(∑[n])))`
-/

namespace A192679.P190869781875597048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A122101 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192679.P190869781875597048

/-! ## A192679.P2158667917838049511

`floor(sqrt(A154921(∑[n])))`
-/

namespace A192679.P2158667917838049511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A154921 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192679.P2158667917838049511

/-! ## A192679.P12451965503611607634

`floor(sqrt(A052875(n)+1))`
-/

namespace A192679.P12451965503611607634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A052875 n + 1)

end

end A192679.P12451965503611607634

/-! ## A192679.P16678633958527947531

`floor(sqrt(A076726(n)/2))`
-/

namespace A192679.P16678633958527947531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A076726 n : ℚ) / 2 : ℝ)⌋

end

end A192679.P16678633958527947531

/-! ## A192679.P3790483559473070676

`floor(sqrt(ceil(A000629(n)/2)))`
-/

namespace A192679.P3790483559473070676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌈(A000629 n : ℚ) / 2⌉

end

end A192679.P3790483559473070676

/-! ## A192679.P14804363073051131969

`floor(A000629(n)/sqrt(A007047(n)))`
-/

namespace A192679.P14804363073051131969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000629 n : ℝ) / Real.sqrt (A007047 n : ℝ)⌋

end

end A192679.P14804363073051131969

/-! ## A192679.P11477767811525579498

`floor(sqrt((A000629(n)+1)/2-A002262(n)))`
-/

namespace A192679.P11477767811525579498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000629 n + 1 : ℚ) / 2 - (A002262 n : ℚ) : ℝ)⌋

end

end A192679.P11477767811525579498

/-!
# A192680: Floor-Sqrt transform of Sylvester continuants (A002801).

The programs for A192680, the canonical program `A192680.P5857449859250772801` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192680 has offset 0).

The definition of A192680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192680.P5857449859250772801

`floor(sqrt(A002801(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192680

/-- `floor(sqrt(A002801(n)))` -/
def P5857449859250772801.Spec : Prop :=
  ∀ n, P5857449859250772801.a n = A192680 n

theorem P5857449859250772801.correct : P5857449859250772801.Spec := by
  intro n
  simp only [A192680]

end A192680

/-! ## A192680.P8069461631955783664

`floor(root(A002801(n), A036453(n+1)))`
-/

namespace A192680.P8069461631955783664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002801 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192680.P8069461631955783664

namespace A192680

/-- `floor(root(A002801(n), A036453(n+1)))` -/
def P8069461631955783664.Spec : Prop :=
  ∀ n, P8069461631955783664.a n = A192680 n

end A192680

/-! ## A192680.P6774155447726920458

`floor(sqrt(A347012(n)/2^n))`
-/

namespace A192680.P6774155447726920458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A347012 n : ℚ) / (2 ^ n : ℚ) : ℝ)⌋

end

end A192680.P6774155447726920458

namespace A192680

/-- `floor(sqrt(A347012(n)/2^n))` -/
def P6774155447726920458.Spec : Prop :=
  ∀ n, P6774155447726920458.a n = A192680 n

end A192680

/-! ## A192680.P5342413829192186760

`floor(sqrt(A002370(n)/A001147(n)))`
-/

namespace A192680.P5342413829192186760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A002370 n : ℚ) / (A001147 n : ℚ) : ℝ)⌋

end

end A192680.P5342413829192186760

namespace A192680

/-- `floor(sqrt(A002370(n)/A001147(n)))` -/
def P5342413829192186760.Spec : Prop :=
  ∀ n, P5342413829192186760.a n = A192680 n

end A192680

/-!
# A192681: Floor-sqrt transform of Lah partition numbers (A000262).

The programs for A192681, the canonical program `A192681.P6283969779794791219` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192681 has offset 0).

The definition of A192681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192681.P6283969779794791219

`floor(sqrt(A000262(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192681

/-- `floor(sqrt(A000262(n)))` -/
def P6283969779794791219.Spec : Prop :=
  ∀ n, P6283969779794791219.a n = A192681 n

theorem P6283969779794791219.correct : P6283969779794791219.Spec := by
  intro n
  simp only [A192681]

end A192681

/-! ## A192681.P13168257081081447002

`floor(sqrt(abs(A293125(n))))`
-/

namespace A192681.P13168257081081447002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A293125 n|

end

end A192681.P13168257081081447002

namespace A192681

/-- `floor(sqrt(abs(A293125(n))))` -/
def P13168257081081447002.Spec : Prop :=
  ∀ n, P13168257081081447002.a n = A192681 n

end A192681

/-! ## A192681.P6092934922654878480

`floor(sqrt(A059110(∑[n])))`
-/

namespace A192681.P6092934922654878480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059110 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192681.P6092934922654878480

namespace A192681

/-- `floor(sqrt(A059110(∑[n])))` -/
def P6092934922654878480.Spec : Prop :=
  ∀ n, P6092934922654878480.a n = A192681 n

end A192681

/-! ## A192681.P14458396707731492707

`floor(sqrt(A059114(∑[n])))`
-/

namespace A192681.P14458396707731492707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059114 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192681.P14458396707731492707

namespace A192681

/-- `floor(sqrt(A059114(∑[n])))` -/
def P14458396707731492707.Spec : Prop :=
  ∀ n, P14458396707731492707.a n = A192681 n

end A192681

/-! ## A192681.P15755064179640566483

`floor(root(A276960(n), 4))`
-/

namespace A192681.P15755064179640566483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276960 n : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A192681.P15755064179640566483

namespace A192681

/-- `floor(root(A276960(n), 4))` -/
def P15755064179640566483.Spec : Prop :=
  ∀ n, P15755064179640566483.a n = A192681 n

end A192681

/-!
# A192682: Floor-Sqrt transform of numbers of A078678 (Grand Dyck paths with no zigzags).

The programs for A192682, the canonical program `A192682.P6649330046253289172` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192682 has offset 0).

The definition of A192682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192682.P6649330046253289172

`floor(sqrt(A078678(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192682

/-- `floor(sqrt(A078678(n)))` -/
def P6649330046253289172.Spec : Prop :=
  ∀ n, P6649330046253289172.a n = A192682 n

theorem P6649330046253289172.correct : P6649330046253289172.Spec := by
  intro n
  simp only [A192682]

end A192682

/-! ## A192682.P11805570127594932761

`floor(sqrt(record[gcd(2, n+1)*A329703(n)]))`
-/

namespace A192682.P11805570127594932761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A329703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192682.P11805570127594932761

namespace A192682

/-- `floor(sqrt(record[gcd(2, n+1)*A329703(n)]))` -/
def P11805570127594932761.Spec : Prop :=
  ∀ n, P11805570127594932761.a n = A192682 n

end A192682

/-! ## A192682.P6825973407158740803

`floor(root(A078678(n), A036453(n+1)))`
-/

namespace A192682.P6825973407158740803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078678 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192682.P6825973407158740803

namespace A192682

/-- `floor(root(A078678(n), A036453(n+1)))` -/
def P6825973407158740803.Spec : Prop :=
  ∀ n, P6825973407158740803.a n = A192682 n

end A192682

/-! ## A192682.P1542453332226364755

`floor(sqrt(record[A000034(n)*A088518(n)]))`
-/

namespace A192682.P1542453332226364755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A088518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192682.P1542453332226364755

namespace A192682

/-- `floor(sqrt(record[A000034(n)*A088518(n)]))` -/
def P1542453332226364755.Spec : Prop :=
  ∀ n, P1542453332226364755.a n = A192682 n

end A192682

/-!
# A192683: Floor-Sqrt transform of numbers of A078679 (Grand Motzkin paths with no zigzags).

The programs for A192683, there is no canonical definition to state claims against.
-/

/-! ## A192683.P12068995667445452324

`floor(sqrt(A078679(n)))`
-/

namespace A192683.P12068995667445452324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A078679 n)

end

end A192683.P12068995667445452324

/-! ## A192683.P13215057617419142775

`floor(root(A078679(n), A036453(n+1)))`
-/

namespace A192683.P13215057617419142775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078679 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A192683.P13215057617419142775

/-! ## A192683.P4661420232689307169

`ceil(sqrt(A321455(n+1)+A078679(n)))-1`
-/

namespace A192683.P4661420232689307169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A321455 (n + 1) + A078679 n : ℝ)⌉ - 1

end

end A192683.P4661420232689307169

/-! ## A192683.P3818619240791824985

`ceil(sqrt(A078679(n)+A000120(n+2)))-1`
-/

namespace A192683.P3818619240791824985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A078679 n + A000120 (n + 2) : ℝ)⌉ - 1

end

end A192683.P3818619240791824985

/-! ## A192683.P6509466851730630038

`ceil(sqrt(A206487(n+1)+A078679(n)))-1`
-/

namespace A192683.P6509466851730630038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A206487 (n + 1) + A078679 n : ℝ)⌉ - 1

end

end A192683.P6509466851730630038

/-!
# A192684: Floor-Sqrt transform of numbers of A004148 (secondary structures).

The programs for A192684, the canonical program `A192684.P14255452485337864781` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192684 has offset 0).

The definition of A192684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192684.P14255452485337864781

`floor(sqrt(A004148(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192684

/-- `floor(sqrt(A004148(n)))` -/
def P14255452485337864781.Spec : Prop :=
  ∀ n, P14255452485337864781.a n = A192684 n

theorem P14255452485337864781.correct : P14255452485337864781.Spec := by
  intro n
  simp only [A192684]

end A192684

/-! ## A192684.P9252896607239769678

`floor(sqrt(A203019(n+2)))`
-/

namespace A192684.P9252896607239769678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A203019 (n + 2))

end

end A192684.P9252896607239769678

namespace A192684

/-- `floor(sqrt(A203019(n+2)))` -/
def P9252896607239769678.Spec : Prop :=
  ∀ n, P9252896607239769678.a n = A192684 n

end A192684

/-! ## A192684.P5002854790297597893

`floor(sqrt(A292460(abs(1-n))))`
-/

namespace A192684.P5002854790297597893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292460 |1 - (n : ℤ)|.toNat)

end

end A192684.P5002854790297597893

namespace A192684

/-- `floor(sqrt(A292460(abs(1-n))))` -/
def P5002854790297597893.Spec : Prop :=
  ∀ n, P5002854790297597893.a n = A192684 n

end A192684

/-! ## A192684.P2026117359781188389

`floor(sqrt(abs(A292461(n+2))))`
-/

namespace A192684.P2026117359781188389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A292461 (n + 2)|

end

end A192684.P2026117359781188389

namespace A192684

/-- `floor(sqrt(abs(A292461(n+2))))` -/
def P2026117359781188389.Spec : Prop :=
  ∀ n, P2026117359781188389.a n = A192684 n

end A192684

/-! ## A192684.P464765410071914838

`floor(sqrt(A097724(∑[n])))`
-/

namespace A192684.P464765410071914838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A097724 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192684.P464765410071914838

namespace A192684

/-- `floor(sqrt(A097724(∑[n])))` -/
def P464765410071914838.Spec : Prop :=
  ∀ n, P464765410071914838.a n = A192684 n

end A192684

/-! ## A192684.P11015413384562407619

`floor(sqrt(A258709(∑[n]+1)))`
-/

namespace A192684.P11015413384562407619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A258709 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A192684.P11015413384562407619

namespace A192684

/-- `floor(sqrt(A258709(∑[n]+1)))` -/
def P11015413384562407619.Spec : Prop :=
  ∀ n, P11015413384562407619.a n = A192684 n

end A192684

/-!
# A192685: Floor-Sqrt transform of numbers of A051286.

The programs for A192685, the canonical program `A192685.P16290214080054611926` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192685 has offset 0).

The definition of A192685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192685.P16290214080054611926

`floor(sqrt(A051286(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192685

/-- `floor(sqrt(A051286(n)))` -/
def P16290214080054611926.Spec : Prop :=
  ∀ n, P16290214080054611926.a n = A192685 n

theorem P16290214080054611926.correct : P16290214080054611926.Spec := by
  intro n
  simp only [A192685]

end A192685

/-! ## A192685.P4865134729640816126

`floor(sqrt(A077419(2*n)))`
-/

namespace A192685.P4865134729640816126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A077419 (2 * n))

end

end A192685.P4865134729640816126

namespace A192685

/-- `floor(sqrt(A077419(2*n)))` -/
def P4865134729640816126.Spec : Prop :=
  ∀ n, P4865134729640816126.a n = A192685 n

end A192685

/-! ## A192685.P14326749014460895474

`floor(A051286(n)^2^A133574(A001316(n)))`
-/

namespace A192685.P14326749014460895474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051286 n : ℝ) ^ ((2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) : ℝ)⌋

end

end A192685.P14326749014460895474

namespace A192685

/-- `floor(A051286(n)^2^A133574(A001316(n)))` -/
def P14326749014460895474.Spec : Prop :=
  ∀ n, P14326749014460895474.a n = A192685 n

end A192685

/-! ## A192685.P15363750304814460112

`floor(A079487(A008586(∑[n]))^(1-1/2))`
-/

namespace A192685.P15363750304814460112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079487 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)⌋

end

end A192685.P15363750304814460112

namespace A192685

/-- `floor(A079487(A008586(∑[n]))^(1-1/2))` -/
def P15363750304814460112.Spec : Prop :=
  ∀ n, P15363750304814460112.a n = A192685 n

end A192685

/-!
# A192686: Record values in A048377.

The programs for A192686, there is no canonical definition to state claims against.
-/

/-! ## A192686.P8396683026509260567

`record[A048377(n+1)]`
-/

namespace A192686.P8396683026509260567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192686.P8396683026509260567

/-! ## A192686.P8114965386333179485

`A048377(record[A199343(n)])`
-/

namespace A192686.P8114965386333179485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192686.P8114965386333179485

/-! ## A192686.P18399710211612793376

`A048377(A067043(n+1))`
-/

namespace A192686.P18399710211612793376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (A067043 (n + 1)).toNat

end

end A192686.P18399710211612793376

/-! ## A192686.P442411445141093198

`record[A048377(A028242(n))-A000035(n)]`
-/

namespace A192686.P442411445141093198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048377 (A028242 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192686.P442411445141093198

/-! ## A192686.P5574191283392922091

`record[A033999(n)*A048377(A028242(n))]`
-/

namespace A192686.P5574191283392922091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048377 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192686.P5574191283392922091

/-!
# A192687: Male-female differences: a(n) = A005378(n) - A005379(n).

The programs for A192687, the canonical program `A192687.P8625485423685987352` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192687 has offset 0).

The definition of A192687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005378, A005379, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192687.P8625485423685987352

`A005378(n)-A005379(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192687

/-- `A005378(n)-A005379(n)` -/
def P8625485423685987352.Spec : Prop :=
  ∀ n, P8625485423685987352.a n = A192687 n

theorem P8625485423685987352.correct : P8625485423685987352.Spec := by
  intro n
  simp only [A192687]

end A192687

/-! ## A192687.P1955021156409672387

`char[ceil(ϕ*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A192687.P1955021156409672387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 2) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P1955021156409672387

namespace A192687

/-- `char[ceil(ϕ*a(n-2))]` -/
def P1955021156409672387.Spec : Prop :=
  ∀ n, (P1955021156409672387.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P7397063757995964966

`char[ogf(x^2/(1-2x+x^3))]`
-/

namespace A192687.P7397063757995964966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 0, 1] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P7397063757995964966

namespace A192687

/-- `char[ogf(x^2/(1-2x+x^3))]` -/
def P7397063757995964966.Spec : Prop :=
  ∀ n, (P7397063757995964966.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P16852939338370247965

`char[floor(ϕ*a(n-1))+1]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A192687.P16852939338370247965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P16852939338370247965

namespace A192687

/-- `char[floor(ϕ*a(n-1))+1]` -/
def P16852939338370247965.Spec : Prop :=
  ∀ n, (P16852939338370247965.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P11783469983060182033

`char[∑[round(ϕ*a(n-1))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A192687.P11783469983060182033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P11783469983060182033

namespace A192687

/-- `char[∑[round(ϕ*a(n-1))]]` -/
def P11783469983060182033.Spec : Prop :=
  ∀ n, (P11783469983060182033.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P4285705855569864918

`char[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=0`
-/

namespace A192687.P4285705855569864918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A192687.P4285705855569864918

namespace A192687

/-- `char[a(n-1)+a(n-2)+1]` -/
def P4285705855569864918.Spec : Prop :=
  ∀ n, (P4285705855569864918.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P6546381346207211767

`char[n-∑[a(n-1)-(1-a(n-2))]]` with `a(0)=0, a(1)=1`
-/

namespace A192687.P6546381346207211767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P6546381346207211767

namespace A192687

/-- `char[n-∑[a(n-1)-(1-a(n-2))]]` -/
def P6546381346207211767.Spec : Prop :=
  ∀ n, (P6546381346207211767.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P12908690647619395733

`char[1-(a(n-1)-(-1)^n*a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A192687.P12908690647619395733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - (f1 (n - 1) - (-1) ^ n * f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P12908690647619395733

namespace A192687

/-- `char[1-(a(n-1)-(-1)^n*a(n-2))]` -/
def P12908690647619395733.Spec : Prop :=
  ∀ n, (P12908690647619395733.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P17287141976706983239

`char[A115346(n)]`
-/

namespace A192687.P17287141976706983239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192687.P17287141976706983239

namespace A192687

/-- `char[A115346(n)]` -/
def P17287141976706983239.Spec : Prop :=
  ∀ n, (P17287141976706983239.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P6378817313863656079

`A010056(n+1)`
-/

namespace A192687.P6378817313863656079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

end

end A192687.P6378817313863656079

namespace A192687

/-- `A010056(n+1)` -/
def P6378817313863656079.Spec : Prop :=
  ∀ n, P6378817313863656079.a n = A192687 n

end A192687

/-! ## A192687.P11705497037983823697

`1-A095792(n)`
-/

namespace A192687.P11705497037983823697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095792 n

end

end A192687.P11705497037983823697

namespace A192687

/-- `1-A095792(n)` -/
def P11705497037983823697.Spec : Prop :=
  ∀ n, P11705497037983823697.a n = A192687 n

end A192687

/-! ## A192687.P2599260997810822017

`A334627(n)%2`
-/

namespace A192687.P2599260997810822017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334627 n) 2

end

end A192687.P2599260997810822017

namespace A192687

/-- `A334627(n)%2` -/
def P2599260997810822017.Spec : Prop :=
  ∀ n, P2599260997810822017.a n = A192687 n

end A192687

/-! ## A192687.P17555152477888398253

`C(A356771(n), n)`
-/

namespace A192687.P17555152477888398253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356771 n).toNat n

end

end A192687.P17555152477888398253

namespace A192687

/-- `C(A356771(n), n)` -/
def P17555152477888398253.Spec : Prop :=
  ∀ n, (P17555152477888398253.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P2225376757296956471

`C(A374396(n), n)`
-/

namespace A192687.P2225376757296956471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A374396 n).toNat n

end

end A192687.P2225376757296956471

namespace A192687

/-- `C(A374396(n), n)` -/
def P2225376757296956471.Spec : Prop :=
  ∀ n, (P2225376757296956471.a n : ℤ) = A192687 n

end A192687

/-! ## A192687.P3261733398511768384

`∏{digits}[A327992(n), #]`
-/

namespace A192687.P3261733398511768384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A192687.P3261733398511768384

namespace A192687

/-- `∏{digits}[A327992(n), #]` -/
def P3261733398511768384.Spec : Prop :=
  ∀ n, (P3261733398511768384.a n : ℤ) = A192687 n

end A192687

/-!
# A192688: Sum of omega-values for two consecutive indices where they equal the omega-value at the sum of the two indices.

The programs for A192688, there is no canonical definition to state claims against.
-/

/-! ## A192688.P15935498485928833912

`A160093(A055040(3*n+1)+A032560(n+2))`
-/

namespace A192688.P15935498485928833912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A055040 (3 * n + 1) + A032560 (n + 2)).toNat

end

end A192688.P15935498485928833912

/-! ## A192688.P8729865160992228801

`A278597(A071638(n+1))`
-/

namespace A192688.P8729865160992228801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278597 (A071638 (n + 1)).toNat

end

end A192688.P8729865160992228801

/-! ## A192688.P2018879551372934086

`A047931(A181821(n+2))`
-/

namespace A192688.P2018879551372934086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047931 (A181821 (n + 2)).toNat

end

end A192688.P2018879551372934086

/-! ## A192688.P14009687331338795880

`A047931(A323508(n+2))`
-/

namespace A192688.P14009687331338795880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047931 (A323508 (n + 2)).toNat

end

end A192688.P14009687331338795880

/-! ## A192688.P18069488971268263711

`A086411(∑[A103343(n)]²)`
-/

namespace A192688.P18069488971268263711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A192688.P18069488971268263711

/-!
# A192689: Squares for which no final group of decimal digits less than the total forms a square.

The programs for A192689, there is no canonical definition to state claims against.
-/

/-! ## A192689.P15535076360404589074

`A242077(n+1)²`
-/

namespace A192689.P15535076360404589074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242077 (n + 1) ^ 2

end

end A192689.P15535076360404589074

/-! ## A192689.P10607411295821937824

`A242077(or(n+1, A000035(n+1)))^2`
-/

namespace A192689.P10607411295821937824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242077 (Int.lor (n + 1 : ℤ) (A000035 (n + 1))).toNat ^ 2

end

end A192689.P10607411295821937824

/-! ## A192689.P13482733455607816945

`A242077(A000027(n+1))*A242077(n+1)`
-/

namespace A192689.P13482733455607816945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242077 (A000027 (n + 1)).toNat * A242077 (n + 1)

end

end A192689.P13482733455607816945

/-! ## A192689.P5832550420488410214

`A242077(A142150(2*(n+1)))*A242077(n+1)`
-/

namespace A192689.P5832550420488410214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242077 (A142150 (2 * (n + 1))).toNat * A242077 (n + 1)

end

end A192689.P5832550420488410214

/-! ## A192689.P17603403823698284223

`(A242077(n+1)%A242077(n+2))^2`
-/

namespace A192689.P17603403823698284223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242077 (n + 1)) (A242077 (n + 2)) ^ 2

end

end A192689.P17603403823698284223

/-! ## A192689.P16110140135203113338

`A000290(A242077(A000290(n+1)/(n+1)))`
-/

namespace A192689.P16110140135203113338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A242077 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A192689.P16110140135203113338

/-! ## A192689.P9701784547565083260

`A002620(2*A242077(n+1))`
-/

namespace A192689.P9701784547565083260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A242077 (n + 1)).toNat

end

end A192689.P9701784547565083260

/-!
# A192691: Number of 1X4 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 4-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192691, there is no canonical definition to state claims against.
-/

/-! ## A192691.P6780562373683547284

`A192710(A000292(n+3)+4)`
-/

namespace A192691.P6780562373683547284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000292 (n + 3) + 4).toNat

end

end A192691.P6780562373683547284

/-! ## A192691.P13024545820688040663

`A192710(A004006(n+4)-n)`
-/

namespace A192691.P13024545820688040663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A004006 (n + 4) - (n : ℤ)).toNat

end

end A192691.P13024545820688040663

/-! ## A192691.P12271417498248642030

`A010872(A143383(n))+A008778(n)`
-/

namespace A192691.P12271417498248642030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A143383 n).toNat + A008778 n

end

end A192691.P12271417498248642030

/-!
# A192692: Number of 1X5 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 5-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192692, there is no canonical definition to state claims against.
-/

/-! ## A192692.P2138053682808337336

`A192710(A000292(n+4)+5)`
-/

namespace A192692.P2138053682808337336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000292 (n + 4) + 5).toNat

end

end A192692.P2138053682808337336

/-! ## A192692.P13784335964768365514

`A087805(∑[∑[n+1]]+1)-1`
-/

namespace A192692.P13784335964768365514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A192692.P13784335964768365514

/-!
# A192693: Number of 1X6 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 6-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192693, there is no canonical definition to state claims against.
-/

/-! ## A192693.P2085611473861625990

`A192710(A000292(n+5)+6)`
-/

namespace A192693.P2085611473861625990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000292 (n + 5) + 6).toNat

end

end A192693.P2085611473861625990

/-!
# A192694: Number of 1 X 7 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 7-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192694, there is no canonical definition to state claims against.
-/

/-! ## A192694.P5431629619352430119

`A192710(A000292(n+6)+7)`
-/

namespace A192694.P5431629619352430119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000292 (n + 6) + 7).toNat

end

end A192694.P5431629619352430119

/-!
# A192695: Number of 1X8 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 8-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192695, there is no canonical definition to state claims against.
-/

/-! ## A192695.P15615617355544174232

`A151986(∑[n+2])`
-/

namespace A192695.P15615617355544174232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192695.P15615617355544174232

/-!
# A192696: Number of 1X9 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 9-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192696, there is no canonical definition to state claims against.
-/

/-! ## A192696.P16262410251978920752

`∑[A160715(∑[∑[n]+1])+1]`
-/

namespace A192696.P16262410251978920752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192696.P16262410251978920752

/-!
# A192697: Number of 1X10 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 1 zero-sum 10-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192697, there is no canonical definition to state claims against.
-/

/-! ## A192697.P15897740314806000015

`A034241(n+1)+A008683(A020976(n))`
-/

namespace A192697.P15897740314806000015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034241 (n + 1) + A008683 (A020976 n).toNat

end

end A192697.P15897740314806000015

/-!
# A192698: Number of 2X3 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 2 zero-sum 3-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192698, there is no canonical definition to state claims against.
-/

/-! ## A192698.P14415214792688768961

`A192710(A004006(n+4)+3)`
-/

namespace A192698.P14415214792688768961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A004006 (n + 4) + 3).toNat

end

end A192698.P14415214792688768961

/-! ## A192698.P15897198067618445633

`A192710(A000217(n+5)+∑[∑[n+2]])`
-/

namespace A192698.P15897198067618445633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000217 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A192698.P15897198067618445633

/-! ## A192698.P1251073946961267921

`A192710(A020719(n)+A000292(n+3))`
-/

namespace A192698.P1251073946961267921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A020719 n + A000292 (n + 3)).toNat

end

end A192698.P1251073946961267921

/-! ## A192698.P3341973628807962119

`A192710(A005843(n+6)+∑[A000096(n+2)])`
-/

namespace A192698.P3341973628807962119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A005843 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192698.P3341973628807962119

/-!
# A192699: Number of 2X4 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 2 zero-sum 4-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192699, there is no canonical definition to state claims against.
-/

/-! ## A192699.P15964600720153246887

`A192710(n+9+A000292(n+4))`
-/

namespace A192699.P15964600720153246887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 ((n + 9 : ℤ) + A000292 (n + 4)).toNat

end

end A192699.P15964600720153246887

