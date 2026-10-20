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
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
# A091200: G.f. A(x) satisfies xA(x)^5 = B(xA(x^5)) where B(x) = x/(1-5x).

The programs for A091200, there is no canonical definition to state claims against.
-/

/-! ## A091200.P16770754617061066160

`A187187(A150458(n+1))`
-/

namespace A091200.P16770754617061066160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150458 (n + 1)).toNat

end

end A091200.P16770754617061066160

/-! ## A091200.P11252916030718182594

`A127714(A254875(n))-char[6]-char[6]`
-/

namespace A091200.P11252916030718182594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127714 (A254875 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091200.P11252916030718182594

/-! ## A091200.P6540546574480418916

`A127632(n)-A055641(A007347(n))`
-/

namespace A091200.P6540546574480418916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 n - A055641 (A007347 n).toNat

end

end A091200.P6540546574480418916

/-!
# A091202: Factorization-preserving isomorphism from nonnegative integers to binary codes for polynomials over GF(2).

The programs for A091202, there is no canonical definition to state claims against.
-/

/-! ## A091202.P9165694001459875441

`A106442(n)%floor(3/acot(n))`
-/

namespace A091202.P9165694001459875441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106442 n) ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A091202.P9165694001459875441

/-! ## A091202.P5203295629647784034

`A106442(n)%A008486(n)`
-/

namespace A091202.P5203295629647784034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106442 n) (A008486 n)

end

end A091202.P5203295629647784034

/-! ## A091202.P3254134682295526816

`A106444(n)%(n+64)`
-/

namespace A091202.P3254134682295526816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106444 n) (n + 64 : ℤ)

end

end A091202.P3254134682295526816

/-! ## A091202.P507495896429761912

`gcd(A048298(n), A106444(n))`
-/

namespace A091202.P507495896429761912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 n) (A106444 n)

end

end A091202.P507495896429761912

/-! ## A091202.P10391500395734547213

`A106444(n)/A051119(A123726(n))`
-/

namespace A091202.P10391500395734547213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106444 n : ℚ) / (A051119 (A123726 n).toNat : ℚ)

end

end A091202.P10391500395734547213

/-! ## A091202.P228753933482139994

`A106444(n)/A008292(A253641(n))`
-/

namespace A091202.P228753933482139994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106444 n : ℚ) / (A008292 (A253641 n).toNat : ℚ)

end

end A091202.P228753933482139994

/-! ## A091202.P15073824267724242371

`A106444(n-A048298(n))+A048298(n)`
-/

namespace A091202.P15073824267724242371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 ((n : ℤ) - A048298 n).toNat + A048298 n

end

end A091202.P15073824267724242371

/-! ## A091202.P9006745514678507437

`A091204(n)+A106444(n)-A106446(n)`
-/

namespace A091202.P9006745514678507437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n + (A106444 n - A106446 n)

end

end A091202.P9006745514678507437

/-! ## A091202.P4738020607449154995

`A106444(n)-A091204(A106446(n)-A091204(n))`
-/

namespace A091202.P4738020607449154995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 n - A091204 (A106446 n - A091204 n).toNat

end

end A091202.P4738020607449154995

/-!
# A091203: Factorization-preserving isomorphism from binary codes of GF(2) polynomials to integers.

The programs for A091203, there is no canonical definition to state claims against.
-/

/-! ## A091203.P12592635735339663517

`A106445(n)%A063008(n+1)`
-/

namespace A091203.P12592635735339663517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106445 n) (A063008 (n + 1))

end

end A091203.P12592635735339663517

/-! ## A091203.P10310367896254131218

`A106445(n)%A000203(A017653(n))`
-/

namespace A091203.P10310367896254131218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106445 n) (A000203 (A017653 n).toNat)

end

end A091203.P10310367896254131218

/-! ## A091203.P11749767833780930973

`A106443(n)%A091205(A008486(n))`
-/

namespace A091203.P11749767833780930973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106443 n) (A091205 (A008486 n).toNat)

end

end A091203.P11749767833780930973

/-! ## A091203.P5719138250444622329

`A091205(n)+A106445(n)-A106447(n)`
-/

namespace A091203.P5719138250444622329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n + (A106445 n - A106447 n)

end

end A091203.P5719138250444622329

/-! ## A091203.P10749469129035216664

`A028310(A106445(n))%A008706(n)`
-/

namespace A091203.P10749469129035216664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A106445 n).toNat) (A008706 n)

end

end A091203.P10749469129035216664

/-! ## A091203.P8295965673488269277

`A028310(A106443(n))%A314031(n)`
-/

namespace A091203.P8295965673488269277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A106443 n).toNat) (A314031 n)

end

end A091203.P8295965673488269277

/-! ## A091203.P10217272932460652071

`A340690(n+2)%(A340690(n+2)-A106445(n))`
-/

namespace A091203.P10217272932460652071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340690 (n + 2)) (A340690 (n + 2) - A106445 n)

end

end A091203.P10217272932460652071

/-!
# A091204: Factorization and index-recursion preserving isomorphism from nonnegative integers to polynomials over GF(2).

The programs for A091204, there is no canonical definition to state claims against.
-/

/-! ## A091204.P2451239876115363075

`A106446(n)%A176893(n)`
-/

namespace A091204.P2451239876115363075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106446 n) (A176893 n)

end

end A091204.P2451239876115363075

/-! ## A091204.P8423852268128950326

`gcd(A048298(n), A106446(n))`
-/

namespace A091204.P8423852268128950326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 n) (A106446 n)

end

end A091204.P8423852268128950326

/-! ## A091204.P16473101093510278235

`A106446(n)/A051119(A123726(n))`
-/

namespace A091204.P16473101093510278235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106446 n : ℚ) / (A051119 (A123726 n).toNat : ℚ)

end

end A091204.P16473101093510278235

/-! ## A091204.P10403871169725659547

`A106446(n)/A008292(A253641(n))`
-/

namespace A091204.P10403871169725659547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106446 n : ℚ) / (A008292 (A253641 n).toNat : ℚ)

end

end A091204.P10403871169725659547

/-! ## A091204.P1693114952420303484

`A106446(n-A048298(n))+A048298(n)`
-/

namespace A091204.P1693114952420303484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106446 ((n : ℤ) - A048298 n).toNat + A048298 n

end

end A091204.P1693114952420303484

/-! ## A091204.P3813636292925393521

`A091202(n)+A106446(n)-A106444(n)`
-/

namespace A091204.P3813636292925393521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 n + (A106446 n - A106444 n)

end

end A091204.P3813636292925393521

/-! ## A091204.P15884473992829258508

`A106446(n)-A091202(A106444(n)-A091202(n))`
-/

namespace A091204.P15884473992829258508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106446 n - A091202 (A106444 n - A091202 n).toNat

end

end A091204.P15884473992829258508

/-!
# A091205: Factorization and index-recursion preserving isomorphism from binary codes of GF(2) polynomials to integers.

The programs for A091205, there is no canonical definition to state claims against.
-/

/-! ## A091205.P7772859880536312626

`A106447(n)%A000203(A017653(n))`
-/

namespace A091205.P7772859880536312626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106447 n) (A000203 (A017653 n).toNat)

end

end A091205.P7772859880536312626

/-! ## A091205.P2729515886369105354

`A091203(n)+A106447(n)-A106445(n)`
-/

namespace A091205.P2729515886369105354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n + (A106447 n - A106445 n)

end

end A091205.P2729515886369105354

/-! ## A091205.P17832918269450954489

`gcd(A091203(n)-A106443(n), A106447(n))`
-/

namespace A091205.P17832918269450954489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091203 n - A106443 n) (A106447 n)

end

end A091205.P17832918269450954489

/-! ## A091205.P7318699500448148235

`A028310(A106447(n))%A314959(n)`
-/

namespace A091205.P7318699500448148235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A106447 n).toNat) (A314959 n)

end

end A091205.P7318699500448148235

/-! ## A091205.P1368278491484725343

`A106447(n)%A230742(n)`
-/

namespace A091205.P1368278491484725343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106447 n) (A230742 n)

end

end A091205.P1368278491484725343

/-!
# A091206: Primes whose binary representation encodes a polynomial irreducible over GF(2).

The programs for A091206, there is no canonical definition to state claims against.
-/

/-! ## A091206.P6128257790069365747

`A000040(A091207(n+1))`
-/

namespace A091206.P6128257790069365747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091207 (n + 1)).toNat

end

end A091206.P6128257790069365747

/-! ## A091206.P116341366967108991

`A014580(A091208(n+1))`
-/

namespace A091206.P116341366967108991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A091208 (n + 1)).toNat

end

end A091206.P116341366967108991

/-! ## A091206.P6631936843305942163

`p?[A014580(n+1)]`
-/

namespace A091206.P6631936843305942163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091206.P6631936843305942163

/-! ## A091206.P13248930746807659277

`∩[A014580(n+1), A045319(n+1)]`
-/

namespace A091206.P13248930746807659277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P13248930746807659277

/-! ## A091206.P3132348999510145221

`A008578(A091207(n+1)+1)`
-/

namespace A091206.P3132348999510145221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A091207 (n + 1) + 1).toNat

end

end A091206.P3132348999510145221

/-! ## A091206.P1944006714026516951

`∩[A000040(n+1), A014580(n+1)]`
-/

namespace A091206.P1944006714026516951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P1944006714026516951

/-! ## A091206.P7271866902395640932

`∩[A008578(n+1), A014580(n+1)]`
-/

namespace A091206.P7271866902395640932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P7271866902395640932

/-! ## A091206.P10169720989688800503

`∩[A014580(n+1), A033946(n+1)]`
-/

namespace A091206.P10169720989688800503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P10169720989688800503

/-! ## A091206.P6159532342698439694

`∩[A014580(n+1), A046022(n+1)]`
-/

namespace A091206.P6159532342698439694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P6159532342698439694

/-! ## A091206.P558922686736718363

`∩[A014580(n+1), A051948(n+1)]`
-/

namespace A091206.P558922686736718363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P558922686736718363

/-! ## A091206.P18157829985818896466

`∩[A014580(n+1), A053813(n+1)]`
-/

namespace A091206.P18157829985818896466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P18157829985818896466

/-! ## A091206.P17056683989564229802

`∩[A014580(n+1), A062972(n+1)]`
-/

namespace A091206.P17056683989564229802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P17056683989564229802

/-! ## A091206.P15273017914136176017

`∩[A014580(n+1), A067126(n+1)]`
-/

namespace A091206.P15273017914136176017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P15273017914136176017

/-! ## A091206.P5025015724329494917

`∩[A014580(n+1), A093515(n+1)]`
-/

namespace A091206.P5025015724329494917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P5025015724329494917

/-! ## A091206.P13573888929601948645

`∩[A326715(n+1), A014580(n+1)]`
-/

namespace A091206.P13573888929601948645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P13573888929601948645

/-! ## A091206.P11762340527387440515

`∩[A014580(n+1), A055977(n+1)]`
-/

namespace A091206.P11762340527387440515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P11762340527387440515

/-! ## A091206.P3618095645690604205

`∩[A014580(n+1), A053577(n+1)]`
-/

namespace A091206.P3618095645690604205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091206.P3618095645690604205

/-! ## A091206.P576433280516904918

`filter[A014580(n+1), A010051(#)]`
-/

namespace A091206.P576433280516904918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091206.P576433280516904918

/-! ## A091206.P14962368824137356301

`filter[A000040(n+1), A091225(#)]`
-/

namespace A091206.P14962368824137356301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091206.P14962368824137356301

/-! ## A091206.P5702043804755102271

`filter[A008578(n+1), A091225(#)]`
-/

namespace A091206.P5702043804755102271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091206.P5702043804755102271

/-!
# A091207: Indices of primes that are also irreducible GF(2)[X]-polynomials.

The programs for A091207, there is no canonical definition to state claims against.
-/

/-! ## A091207.P5315323384691349667

`A049084(A091206(n+1))`
-/

namespace A091207.P5315323384691349667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091206 (n + 1)).toNat

end

end A091207.P5315323384691349667

/-! ## A091207.P1701352970265827751

`record[A061395(A014580(n+1))]`
-/

namespace A091207.P1701352970265827751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A014580 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091207.P1701352970265827751

/-! ## A091207.P13162684100307585503

`A000720(p?[A014580(n+1)])`
-/

namespace A091207.P13162684100307585503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P13162684100307585503

/-! ## A091207.P966524921087391667

`lt[0, A091225(A008578(n+1))]`
-/

namespace A091207.P966524921087391667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091207.P966524921087391667

/-! ## A091207.P2664004202956988081

`A000720(∩[A000040(n+1), A014580(n+1)])`
-/

namespace A091207.P2664004202956988081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A091207.P2664004202956988081

/-! ## A091207.P9526133093962913078

`A000720(∩[A014580(n+1), A045319(n+1)])`
-/

namespace A091207.P9526133093962913078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A091207.P9526133093962913078

/-! ## A091207.P5082338175269276603

`A000720(∩[A014580(n+1), A051948(n+1)])`
-/

namespace A091207.P5082338175269276603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A091207.P5082338175269276603

/-! ## A091207.P5377890757127308377

`A000720(∩[A014580(n+1), A055977(n+1)])`
-/

namespace A091207.P5377890757127308377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A091207.P5377890757127308377

/-! ## A091207.P14741854256791013213

`A061395(2*A091206(n+1))`
-/

namespace A091207.P14741854256791013213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A091206 (n + 1)).toNat

end

end A091207.P14741854256791013213

/-! ## A091207.P8080069309340799265

`A000720(p?[A305420(a(n-1))])` with `a(0)=1`
-/

namespace A091207.P8080069309340799265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P8080069309340799265

/-! ## A091207.P3445586242831517808

`eq[1, A294884(A000040(n+1))]+1`
-/

namespace A091207.P3445586242831517808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294884 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091207.P3445586242831517808

/-! ## A091207.P13000488041207595238

`A049084(p?[A014580(n+1)])`
-/

namespace A091207.P13000488041207595238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P13000488041207595238

/-! ## A091207.P5570189973444850137

`A055396(p?[A014580(n+1)])`
-/

namespace A091207.P5570189973444850137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P5570189973444850137

/-! ## A091207.P7332830231711605069

`A056239(p?[A014580(n+1)])`
-/

namespace A091207.P7332830231711605069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P7332830231711605069

/-! ## A091207.P17302919009787620582

`record[A056239(eq[1, A091225(n)])]`
-/

namespace A091207.P17302919009787620582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091207.P17302919009787620582

/-! ## A091207.P12497200769555553474

`A049084(p?[A305420(a(n-1))])` with `a(0)=1`
-/

namespace A091207.P12497200769555553474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P12497200769555553474

/-! ## A091207.P5151615706427928418

`A055396(p?[A305420(a(n-1))])` with `a(0)=1`
-/

namespace A091207.P5151615706427928418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P5151615706427928418

/-! ## A091207.P1079075197209423818

`A056239(p?[A305420(a(n-1))])` with `a(0)=1`
-/

namespace A091207.P1079075197209423818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091207.P1079075197209423818

/-!
# A091208: A014580-indices of irreducible GF(2)[X]-polynomials that are also primes.

The programs for A091208, there is no canonical definition to state claims against.
-/

/-! ## A091208.P12197858500175979932

`A091226(A091206(n+1))`
-/

namespace A091208.P12197858500175979932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A091206 (n + 1)).toNat

end

end A091208.P12197858500175979932

/-! ## A091208.P15505184489735818533

`record[A091227(A000040(n+1))]`
-/

namespace A091208.P15505184489735818533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091208.P15505184489735818533

/-! ## A091208.P16464725196522815817

`record[A091227(A001751(n+1))]`
-/

namespace A091208.P16464725196522815817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091208.P16464725196522815817

/-! ## A091208.P309363102612218693

`record[A091227(A045319(n+1))]`
-/

namespace A091208.P309363102612218693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091208.P309363102612218693

/-! ## A091208.P6758165239782443462

`record[A091227(A006530(n+2))]`
-/

namespace A091208.P6758165239782443462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091208.P6758165239782443462

/-! ## A091208.P8257905350605339888

`A091226(p?[A014580(n+1)])`
-/

namespace A091208.P8257905350605339888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091208.P8257905350605339888

/-! ## A091208.P16928389901090832258

`record[A091227(A020639(n+2))]`
-/

namespace A091208.P16928389901090832258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091208.P16928389901090832258

/-! ## A091208.P4260588385010646219

`A091226(p?[A235032(n+1)])`
-/

namespace A091208.P4260588385010646219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091208.P4260588385010646219

/-! ## A091208.P4875386727651149245

`A091226(p?[A235035(n+1)])`
-/

namespace A091208.P4875386727651149245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091208.P4875386727651149245

/-! ## A091208.P13590170596859310480

`A000720(p?[A091203(A000040(n+1))])`
-/

namespace A091208.P13590170596859310480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091208.P13590170596859310480

/-!
# A091209: Primes whose binary representation encodes a polynomial reducible over GF(2).

The programs for A091209, there is no canonical definition to state claims against.
-/

/-! ## A091209.P18159516814952694019

`A000040(A091210(n+1))`
-/

namespace A091209.P18159516814952694019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091210 (n + 1)).toNat

end

end A091209.P18159516814952694019

/-! ## A091209.P298890408982940351

`A091242(A091211(n+1))`
-/

namespace A091209.P298890408982940351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (A091211 (n + 1)).toNat

end

end A091209.P298890408982940351

/-! ## A091209.P16683761285450402521

`p?[A260427(n+1)]`
-/

namespace A091209.P16683761285450402521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091209.P16683761285450402521

/-! ## A091209.P12950046046020913903

`filter[A000040(n+1), A091247(#)]`
-/

namespace A091209.P12950046046020913903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P12950046046020913903

/-! ## A091209.P16647381629984393177

`filter[A006005(n+1), A091247(#)]`
-/

namespace A091209.P16647381629984393177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P16647381629984393177

/-! ## A091209.P8983309684395875483

`filter[A008578(n+1), A091247(#)]`
-/

namespace A091209.P8983309684395875483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P8983309684395875483

/-! ## A091209.P1116968602026148531

`filter[A045344(n+1), A091247(#)]`
-/

namespace A091209.P1116968602026148531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P1116968602026148531

/-! ## A091209.P10401095094630811741

`filter[A065091(n+1), A091247(#)]`
-/

namespace A091209.P10401095094630811741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P10401095094630811741

/-! ## A091209.P1320066688264565343

`filter[A065396(n+1), A091247(#)]`
-/

namespace A091209.P1320066688264565343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P1320066688264565343

/-! ## A091209.P13588687987516303860

`filter[A108719(n+1), A091247(#)]`
-/

namespace A091209.P13588687987516303860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P13588687987516303860

/-! ## A091209.P12023055387272502268

`filter[A140475(n+1), A091247(#)]`
-/

namespace A091209.P12023055387272502268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P12023055387272502268

/-! ## A091209.P8858567113543209028

`filter[A158611(n+1), A091247(#)]`
-/

namespace A091209.P8858567113543209028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P8858567113543209028

/-! ## A091209.P6230436495715794773

`filter[A171525(n+1), A091247(#)]`
-/

namespace A091209.P6230436495715794773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P6230436495715794773

/-! ## A091209.P5244909755638110177

`filter[A171577(n+1), A091247(#)]`
-/

namespace A091209.P5244909755638110177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P5244909755638110177

/-! ## A091209.P7821795095346807548

`filter[A215848(n+1), A091247(#)]`
-/

namespace A091209.P7821795095346807548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P7821795095346807548

/-! ## A091209.P17808099515291591478

`filter[A257688(n+1), A091247(#)]`
-/

namespace A091209.P17808099515291591478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P17808099515291591478

/-! ## A091209.P17295096426455618141

`filter[A372059(n+1), A091247(#)]`
-/

namespace A091209.P17295096426455618141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P17295096426455618141

/-! ## A091209.P15520421878654945027

`filter[A063904(n+1), A091247(#)]`
-/

namespace A091209.P15520421878654945027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P15520421878654945027

/-! ## A091209.P2814298665122839505

`filter[A063884(n+1), A091247(#)]`
-/

namespace A091209.P2814298665122839505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P2814298665122839505

/-! ## A091209.P17569949256264302216

`filter[A130008(n), A091247(#)]`
-/

namespace A091209.P17569949256264302216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091209.P17569949256264302216

/-!
# A091210: Indices of primes that are composite GF(2)[X]-polynomials.

The programs for A091210, there is no canonical definition to state claims against.
-/

/-! ## A091210.P13405308751532338903

`comp[A091207(n+1)-1]+1`
-/

namespace A091210.P13405308751532338903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091210.P13405308751532338903

/-! ## A091210.P9442835751043065834

`A000720(A091209(n+1))`
-/

namespace A091210.P9442835751043065834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091209 (n + 1)).toNat

end

end A091210.P9442835751043065834

/-! ## A091210.P3306541441422616209

`record[A049084(A235033(n+1))]`
-/

namespace A091210.P3306541441422616209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A235033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091210.P3306541441422616209

/-! ## A091210.P17039043186373305303

`record[A049084(A236844(n+1))]`
-/

namespace A091210.P17039043186373305303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A236844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091210.P17039043186373305303

/-! ## A091210.P1409160348618467471

`record[A049084(A236848(n+1))]`
-/

namespace A091210.P1409160348618467471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A236848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091210.P1409160348618467471

/-! ## A091210.P9051240896670663772

`record[A049084(A246156(n+1))]`
-/

namespace A091210.P9051240896670663772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A246156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091210.P9051240896670663772

/-! ## A091210.P9248178711221021745

`record[A049084(A091242(n+2))]`
-/

namespace A091210.P9248178711221021745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091242 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091210.P9248178711221021745

/-! ## A091210.P8971880876635937683

`lt[0, A235046(A000040(n+1))]+1`
-/

namespace A091210.P8971880876635937683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091210.P8971880876635937683

/-! ## A091210.P14075496002788229856

`eq[0, A236853(A000040(abs(1-n)+1))]`
-/

namespace A091210.P14075496002788229856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 (A000040 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091210.P14075496002788229856

/-! ## A091210.P7582230521288128247

`A049084(A235042(A091214(n+1)))`
-/

namespace A091210.P7582230521288128247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A235042 (A091214 (n + 1)).toNat).toNat

end

end A091210.P7582230521288128247

/-!
# A091211: A091242-indices of primes that are composite GF(2)[X]-polynomials.

The programs for A091211, there is no canonical definition to state claims against.
-/

/-! ## A091211.P10127308787866733627

`eq[1, A001222(A091242(n+1))]+1`
-/

namespace A091211.P10127308787866733627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091242 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091211.P10127308787866733627

/-! ## A091211.P9381971426088970939

`eq[0, A066247(A091242(n+2))]+2`
-/

namespace A091211.P9381971426088970939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A091242 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A091211.P9381971426088970939

/-! ## A091211.P15288019034046451039

`eq[0, A066247(A091242(n^a(n-1)))]` with `a(0)=1`
-/

namespace A091211.P15288019034046451039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A066247 (A091242 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f2 (n - 1) : ℤ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091211.P15288019034046451039

/-! ## A091211.P17347000205389459380

`lt[A239968(A091242(n+1)), A071049(n)]+1`
-/

namespace A091211.P17347000205389459380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A091242 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091211.P17347000205389459380

/-! ## A091211.P13815263597869299045

`eq[A000010(A091242(n+2)), A091242(n+1)]+2`
-/

namespace A091211.P13815263597869299045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091242 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A091211.P13815263597869299045

/-!
# A091212: Composite numbers whose binary representation encodes a polynomial reducible over GF(2).

The programs for A091212, there is no canonical definition to state claims against.
-/

/-! ## A091212.P12090856929111540880

`A091242(A091213(n+1))`
-/

namespace A091212.P12090856929111540880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (A091213 (n + 1)).toNat

end

end A091212.P12090856929111540880

/-! ## A091212.P15086386185600824337

`filter[A002808(n+1), A091247(#)]`
-/

namespace A091212.P15086386185600824337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P15086386185600824337

/-! ## A091212.P10088979401845843445

`filter[A018252(n+2), A091247(#)]`
-/

namespace A091212.P10088979401845843445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P10088979401845843445

/-! ## A091212.P18383157444915340769

`filter[A141468(n+3), A091247(#)]`
-/

namespace A091212.P18383157444915340769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P18383157444915340769

/-! ## A091212.P1605567563565709814

`filter[A222307(2*n+1), A091247(#)]`
-/

namespace A091212.P1605567563565709814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P1605567563565709814

/-! ## A091212.P7876734742353096750

`filter[A065090(n+1), A091247(#)]`
-/

namespace A091212.P7876734742353096750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P7876734742353096750

/-! ## A091212.P12075462269053216073

`filter[A171581(n+1), A091247(#)]`
-/

namespace A091212.P12075462269053216073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P12075462269053216073

/-! ## A091212.P10001516088952436806

`filter[A173905(n+1), A091247(#)]`
-/

namespace A091212.P10001516088952436806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P10001516088952436806

/-! ## A091212.P814931261163125940

`filter[A338924(n+1), A091247(#)]`
-/

namespace A091212.P814931261163125940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P814931261163125940

/-! ## A091212.P4186317520769930327

`filter[A091242(n+1), A005171(#)]`
-/

namespace A091212.P4186317520769930327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091212.P4186317520769930327

/-! ## A091212.P4895940082354009754

`filter[A091242(n+1), A066247(#)]`
-/

namespace A091212.P4895940082354009754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091212.P4895940082354009754

/-! ## A091212.P9857567896678136564

`∩[A002808(n+1), A091242(n+1)]`
-/

namespace A091212.P9857567896678136564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P9857567896678136564

/-! ## A091212.P9067309015783683025

`∩[A018252(n+1), A091242(n+1)]`
-/

namespace A091212.P9067309015783683025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P9067309015783683025

/-! ## A091212.P11777164879743014794

`∩[A065090(n+1), A091242(n+1)]`
-/

namespace A091212.P11777164879743014794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P11777164879743014794

/-! ## A091212.P11258818764019449067

`∩[A091242(n+1), A141468(n+1)]`
-/

namespace A091212.P11258818764019449067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P11258818764019449067

/-! ## A091212.P15156071436685689766

`∩[A091242(n+1), A171581(n+1)]`
-/

namespace A091212.P15156071436685689766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P15156071436685689766

/-! ## A091212.P3062442554307149006

`∩[A091242(n+1), A173905(n+1)]`
-/

namespace A091212.P3062442554307149006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091212.P3062442554307149006

/-! ## A091212.P5782234858161476909

`filter[A005451(n+1), A091247(#)]`
-/

namespace A091212.P5782234858161476909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P5782234858161476909

/-! ## A091212.P6759845213199838010

`filter[A135684(n+1), A091247(#)]`
-/

namespace A091212.P6759845213199838010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P6759845213199838010

/-! ## A091212.P15364016187136071476

`filter[A191558(n+1), A091247(#)]`
-/

namespace A091212.P15364016187136071476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A091212.P15364016187136071476

/-!
# A091213: A091242-indices of composite GF(2)[X]-polynomials that are also composite integers.

The programs for A091213, there is no canonical definition to state claims against.
-/

/-! ## A091213.P11510933578023021775

`comp[A091211(n+1)-1]+1`
-/

namespace A091213.P11510933578023021775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091211 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091213.P11510933578023021775

/-! ## A091213.P4641514828582403679

`comp[A091211(n+1)*A236861(n)]`
-/

namespace A091213.P4641514828582403679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091211 (n + 1) * A236861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091213.P4641514828582403679

/-! ## A091213.P6357363528724591591

`eq[1, A066247(A091242(n+1))]+1`
-/

namespace A091213.P6357363528724591591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A091242 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091213.P6357363528724591591

/-! ## A091213.P14338386263482581287

`A235043(A091212(n+1))+1+n`
-/

namespace A091213.P14338386263482581287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (A091212 (n + 1)).toNat + 1 + (n : ℤ)

end

end A091213.P14338386263482581287

/-! ## A091213.P17941741327927679544

`record[gcd(n+2, A049084(A091242(n+2)))]`
-/

namespace A091213.P17941741327927679544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A049084 (A091242 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091213.P17941741327927679544

/-! ## A091213.P5214836169857046803

`lt[A014963(A091242(abs(1-n)+1)), n+2]`
-/

namespace A091213.P5214836169857046803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A091242 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091213.P5214836169857046803

/-! ## A091213.P3202503427223610868

`record[A000027(n+1)*A066247(A091242(n+1))]`
-/

namespace A091213.P3202503427223610868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A066247 (A091242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091213.P3202503427223610868

/-! ## A091213.P13980908569328343737

`record[A008619(2*n)*A066247(A091242(n+1))]`
-/

namespace A091213.P13980908569328343737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A066247 (A091242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091213.P13980908569328343737

/-! ## A091213.P12985245137947899735

`record[A028242(2*n)*A066247(A091242(n+1))]`
-/

namespace A091213.P12985245137947899735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A066247 (A091242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091213.P12985245137947899735

/-! ## A091213.P6187150179293072938

`lt[A239968(n+1), A239968(A091242(n+1))]+1`
-/

namespace A091213.P6187150179293072938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A091242 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091213.P6187150179293072938

/-!
# A091214: Composite numbers whose binary representation encodes a polynomial irreducible over GF(2).

The programs for A091214, there is no canonical definition to state claims against.
-/

/-! ## A091214.P2130727273351926118

`A014580(A091215(n+1))`
-/

namespace A091214.P2130727273351926118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A091215 (n + 1)).toNat

end

end A091214.P2130727273351926118

/-! ## A091214.P10089381391856375026

`filter[A014580(n+1), A005171(#)]`
-/

namespace A091214.P10089381391856375026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091214.P10089381391856375026

/-! ## A091214.P1963720372192955583

`filter[A014580(n+1), A066247(#)]`
-/

namespace A091214.P1963720372192955583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091214.P1963720372192955583

/-! ## A091214.P16430614047266340588

`filter[A014580(n+1), A202238(#)]`
-/

namespace A091214.P16430614047266340588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A091214.P16430614047266340588

/-! ## A091214.P15737464743299127692

`filter[A014580(n+1), A292438(#)]`
-/

namespace A091214.P15737464743299127692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091214.P15737464743299127692

/-! ## A091214.P15866576791891077519

`filter[A014580(n+1), A305821(#)]`
-/

namespace A091214.P15866576791891077519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305821 (f1 j).toNat = 1) n)

end

end A091214.P15866576791891077519

/-! ## A091214.P17548425365092273634

`filter[A014580(n+1), A323162(#)]`
-/

namespace A091214.P17548425365092273634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A091214.P17548425365092273634

/-! ## A091214.P15551205866263981633

`filter[A257688(n+1), A066247(#)]`
-/

namespace A091214.P15551205866263981633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091214.P15551205866263981633

/-! ## A091214.P17809631088566335565

`filter[A257688(n+1), A202238(#)]`
-/

namespace A091214.P17809631088566335565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A091214.P17809631088566335565

/-! ## A091214.P128703031329423276

`filter[A257688(n+1), A305821(#)]`
-/

namespace A091214.P128703031329423276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305821 (f1 j).toNat = 1) n)

end

end A091214.P128703031329423276

/-! ## A091214.P6678856016281852227

`filter[A257688(n+1), A323162(#)]`
-/

namespace A091214.P6678856016281852227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A091214.P6678856016281852227

/-! ## A091214.P14655871992402615063

`filter[A257688(n+2), A005171(#)]`
-/

namespace A091214.P14655871992402615063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091214.P14655871992402615063

/-! ## A091214.P12259440637568849564

`filter[A257688(n+2), A292438(#)]`
-/

namespace A091214.P12259440637568849564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091214.P12259440637568849564

/-! ## A091214.P3764770692842420823

`filter[A206075(n+1), A091225(#)]`
-/

namespace A091214.P3764770692842420823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091214.P3764770692842420823

/-! ## A091214.P2044196082257622329

`∩[A014580(n+1), A206075(n+1)]`
-/

namespace A091214.P2044196082257622329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091214.P2044196082257622329

/-! ## A091214.P4683438024117590723

`filter[A325571(n+1), A091225(#)]`
-/

namespace A091214.P4683438024117590723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091214.P4683438024117590723

/-! ## A091214.P3067447265989043193

`∩[A014580(n+1), A325571(n+1)]`
-/

namespace A091214.P3067447265989043193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091214.P3067447265989043193

/-! ## A091214.P9052851798232945529

`∩[A257688(n+1), A325571(n+1)]`
-/

namespace A091214.P9052851798232945529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091214.P9052851798232945529

/-! ## A091214.P14581891883528798548

`filter[A014076(n+1), A091225(#)]`
-/

namespace A091214.P14581891883528798548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091214.P14581891883528798548

/-! ## A091214.P17757971653401360834

`filter[A071904(n+1), A091225(#)]`
-/

namespace A091214.P17757971653401360834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A091214.P17757971653401360834

/-!
# A091215: A014580-indices of irreducible GF(2)[X]-polynomials that are composite integers.

The programs for A091215, there is no canonical definition to state claims against.
-/

/-! ## A091215.P16998876707380218817

`comp[A091208(n+1)-1]+1`
-/

namespace A091215.P16998876707380218817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091215.P16998876707380218817

/-! ## A091215.P1661089147010501015

`A091226(A091214(n+1))`
-/

namespace A091215.P1661089147010501015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A091214 (n + 1)).toNat

end

end A091215.P1661089147010501015

/-! ## A091215.P900063473975479025

`comp[A091227(A000040(n+1))]`
-/

namespace A091215.P900063473975479025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091215.P900063473975479025

/-! ## A091215.P16672791239938323567

`comp[A091227(A001751(n+1))]`
-/

namespace A091215.P16672791239938323567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A001751 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091215.P16672791239938323567

/-! ## A091215.P15242349782182757847

`comp[A091227(A008578(n+1))]`
-/

namespace A091215.P15242349782182757847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A008578 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091215.P15242349782182757847

/-! ## A091215.P14836508042647822086

`comp[A091227(A025473(n+1))]`
-/

namespace A091215.P14836508042647822086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A025473 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091215.P14836508042647822086

/-! ## A091215.P11493906204143835424

`comp[A091227(A091265(n+1))]`
-/

namespace A091215.P11493906204143835424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A091265 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091215.P11493906204143835424

/-! ## A091215.P12289423874117628336

`lt[2, A000005(A014580(n+1))]+1`
-/

namespace A091215.P12289423874117628336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091215.P12289423874117628336

/-! ## A091215.P9932991061742327233

`lt[A020639(A014580(n+2)), n+3]+2`
-/

namespace A091215.P9932991061742327233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014580 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A091215.P9932991061742327233

/-! ## A091215.P12306038394093529143

`lt[2, A000005(A014580(n*a(n%2)))]` with `a(0)=1, a(1)=1`
-/

namespace A091215.P12306038394093529143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000005 (A014580 ((n : ℤ) * f2 (n % 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091215.P12306038394093529143

/-!
# A091217: Number of permutations p of [n] such that the n-1 sums p(i)+p(i+1) (i=1,2,...n-1) are all distinct.

The programs for A091217, there is no canonical definition to state claims against.
-/

/-! ## A091217.P9433195974960589478

`A147891(A250264(n+1))`
-/

namespace A091217.P9433195974960589478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147891 (A250264 (n + 1)).toNat

end

end A091217.P9433195974960589478

/-! ## A091217.P5819593996172488070

`A147891(n^A110656(n))`
-/

namespace A091217.P5819593996172488070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A091217.P5819593996172488070

/-! ## A091217.P10982876145128041965

`A147891(n^A115721(n))`
-/

namespace A091217.P10982876145128041965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115721 n : ℤ))).toNat

end

end A091217.P10982876145128041965

/-! ## A091217.P3044545326248660800

`A147891(C(n, A110656(n)))`
-/

namespace A091217.P3044545326248660800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147891 (Nat.choose n (A110656 n).toNat)

end

end A091217.P3044545326248660800

/-! ## A091217.P1184905727943952744

`A147891(C(n, A115721(n)))`
-/

namespace A091217.P1184905727943952744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147891 (Nat.choose n (A115721 n).toNat)

end

end A091217.P1184905727943952744

/-!
# A091218: Number of nonorientable hyperbolic 3-manifolds of cusp type 1 obtained from n ideal tetrahedra.

The programs for A091218, there is no canonical definition to state claims against.
-/

/-! ## A091218.P8939862369651657834

`A194986(A192347(n+2))`
-/

namespace A091218.P8939862369651657834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (A192347 (n + 2)).toNat

end

end A091218.P8939862369651657834

/-! ## A091218.P9089784944301221743

`A206907(A363465(n+2))`
-/

namespace A091218.P9089784944301221743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206907 (A363465 (n + 2)).toNat

end

end A091218.P9089784944301221743

/-! ## A091218.P2400444700320115591

`A093045(n)+A047032(n)`
-/

namespace A091218.P2400444700320115591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093045 n + A047032 n

end

end A091218.P2400444700320115591

/-!
# A091219: Moebius-analog for the domain GF(2)[X]: a(n)=0 if A091221(n)!=A091222(n) (i.e., if the polynomial is not squarefree), otherwise (-1)^A091222(n).

The programs for A091219, there is no canonical definition to state claims against.
-/

/-! ## A091219.P14677202963331219509

`A008683(A091203(n+1))`
-/

namespace A091219.P14677202963331219509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A091203 (n + 1)).toNat

end

end A091219.P14677202963331219509

/-! ## A091219.P4517905235020942701

`A008683(A091205(n+1))`
-/

namespace A091219.P4517905235020942701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A091205 (n + 1)).toNat

end

end A091219.P4517905235020942701

/-! ## A091219.P5662831112252850094

`A008683(A235042(n+1))`
-/

namespace A091219.P5662831112252850094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A235042 (n + 1)).toNat

end

end A091219.P5662831112252850094

/-! ## A091219.P15131450510692259711

`A008683(A278233(n+1))`
-/

namespace A091219.P15131450510692259711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278233 (n + 1)).toNat

end

end A091219.P15131450510692259711

/-! ## A091219.P9510832703816250152

`A353418(A278238(n+1))`
-/

namespace A091219.P9510832703816250152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (A278238 (n + 1)).toNat

end

end A091219.P9510832703816250152

/-! ## A091219.P15410684065458018454

`A008683(sqrt(A278238(n+1)))`
-/

namespace A091219.P15410684065458018454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A278238 (n + 1) : ℝ))).toNat

end

end A091219.P15410684065458018454

/-! ## A091219.P15579758800839664967

`A008683(A106443(n+1))`
-/

namespace A091219.P15579758800839664967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106443 (n + 1)).toNat

end

end A091219.P15579758800839664967

/-! ## A091219.P8187872298155817815

`A008683(A106445(n+1))`
-/

namespace A091219.P8187872298155817815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106445 (n + 1)).toNat

end

end A091219.P8187872298155817815

/-! ## A091219.P6925148039248421167

`A008683(A106447(n+1))`
-/

namespace A091219.P6925148039248421167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106447 (n + 1)).toNat

end

end A091219.P6925148039248421167

/-! ## A091219.P5757884873441254102

`A132971(A305418(n+1))`
-/

namespace A091219.P5757884873441254102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A305418 (n + 1)).toNat

end

end A091219.P5757884873441254102

/-!
# A091220: Number of divisors of the n-th GF(2)[X]-polynomial.

The programs for A091220, there is no canonical definition to state claims against.
-/

/-! ## A091220.P9938396829707513935

`Δ[lt[A346795(n+1), 2]]`
-/

namespace A091220.P9938396829707513935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346795 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091220.P9938396829707513935

/-! ## A091220.P14396707229358610610

`∏{e}[A091203(n+1), #+1]`
-/

namespace A091220.P14396707229358610610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A091220.P14396707229358610610

/-! ## A091220.P10767498426766455621

`∏{e}[A091205(n+1), #+1]`
-/

namespace A091220.P10767498426766455621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A091220.P10767498426766455621

/-! ## A091220.P6015849762485354636

`∏{e}[A235042(n+1), #+1]`
-/

namespace A091220.P6015849762485354636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A091220.P6015849762485354636

/-! ## A091220.P13447014648568943410

`∏{e}[A278233(n+1), #+1]`
-/

namespace A091220.P13447014648568943410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A091220.P13447014648568943410

/-! ## A091220.P15683660792721014720

`A000005(A091203(n+1))`
-/

namespace A091220.P15683660792721014720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A091203 (n + 1)).toNat

end

end A091220.P15683660792721014720

/-! ## A091220.P13984436722076234159

`A000005(A091205(n+1))`
-/

namespace A091220.P13984436722076234159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A091205 (n + 1)).toNat

end

end A091220.P13984436722076234159

/-! ## A091220.P3745642154604296902

`A000005(A235042(n+1))`
-/

namespace A091220.P3745642154604296902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A235042 (n + 1)).toNat

end

end A091220.P3745642154604296902

/-! ## A091220.P12932311313269180808

`A000005(A278233(n+1))`
-/

namespace A091220.P12932311313269180808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278233 (n + 1)).toNat

end

end A091220.P12932311313269180808

/-! ## A091220.P13377574588661669893

`A000005(sqrt(A278238(n+1)))`
-/

namespace A091220.P13377574588661669893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A278238 (n + 1) : ℝ))).toNat

end

end A091220.P13377574588661669893

/-!
# A091221: Number of distinct irreducible polynomials dividing n-th GF(2)[X]-polynomial.

The programs for A091221, there is no canonical definition to state claims against.
-/

/-! ## A091221.P9747927073094754678

`∑{e}[∏{p}[A278233(n+1), #], #]`
-/

namespace A091221.P9747927073094754678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A091221.P9747927073094754678

/-! ## A091221.P14624410162865237328

`A001221(A278233(n+1))`
-/

namespace A091221.P14624410162865237328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278233 (n + 1)).toNat

end

end A091221.P14624410162865237328

/-! ## A091221.P15077166846687954074

`∑{d}[A278233(n+1), A010051(#)]`
-/

namespace A091221.P15077166846687954074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A091221.P15077166846687954074

/-! ## A091221.P11540824483510424407

`A001221(A286384(A003188(n+1)))`
-/

namespace A091221.P11540824483510424407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286384 (A003188 (n + 1)).toNat).toNat

end

end A091221.P11540824483510424407

/-! ## A091221.P10301780974948687397

`A001221(A286383(A006068(n+1)))`
-/

namespace A091221.P10301780974948687397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286383 (A006068 (n + 1)).toNat).toNat

end

end A091221.P10301780974948687397

/-! ## A091221.P18109816751195526242

`A001221(A286384(A234612(n+1)))`
-/

namespace A091221.P18109816751195526242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286384 (A234612 (n + 1)).toNat).toNat

end

end A091221.P18109816751195526242

/-! ## A091221.P10369360338154725846

`∑{p}[A091203(n+1), A001222(#)]`
-/

namespace A091221.P10369360338154725846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A091221.P10369360338154725846

/-! ## A091221.P14841031846825135777

`A001222(∏{p}[A091203(n+1), #])`
-/

namespace A091221.P14841031846825135777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091221.P14841031846825135777

/-! ## A091221.P4653047917037099042

`∑{p}[A091205(n+1), A001222(#)]`
-/

namespace A091221.P4653047917037099042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A091221.P4653047917037099042

/-! ## A091221.P12178121078918071317

`A001222(∏{p}[A091205(n+1), #])`
-/

namespace A091221.P12178121078918071317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091221.P12178121078918071317

/-! ## A091221.P15292471238065980083

`A001221(A091203(n+1))`
-/

namespace A091221.P15292471238065980083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A091203 (n + 1)).toNat

end

end A091221.P15292471238065980083

/-! ## A091221.P18052481097998206402

`A001221(A091205(n+1))`
-/

namespace A091221.P18052481097998206402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A091205 (n + 1)).toNat

end

end A091221.P18052481097998206402

/-! ## A091221.P6754890962018788242

`A001221(A245821(A245704(n+1)))`
-/

namespace A091221.P6754890962018788242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245821 (A245704 (n + 1)).toNat).toNat

end

end A091221.P6754890962018788242

/-! ## A091221.P10202673892919747620

`A001221(A235042(n+1))`
-/

namespace A091221.P10202673892919747620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235042 (n + 1)).toNat

end

end A091221.P10202673892919747620

/-! ## A091221.P11626928603790584725

`A001221(A278238(n+1))`
-/

namespace A091221.P11626928603790584725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278238 (n + 1)).toNat

end

end A091221.P11626928603790584725

/-! ## A091221.P8198677247932683159

`A294881(A278233(n+1)²)`
-/

namespace A091221.P8198677247932683159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (A278233 (n + 1) ^ 2).toNat

end

end A091221.P8198677247932683159

/-! ## A091221.P9840954403094718039

`A294883(A278233(n+1)²)`
-/

namespace A091221.P9840954403094718039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (A278233 (n + 1) ^ 2).toNat

end

end A091221.P9840954403094718039

/-! ## A091221.P2642011253482166410

`A294881(A278233(n+1)*A278233(n+1))`
-/

namespace A091221.P2642011253482166410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (A278233 (n + 1) * A278233 (n + 1)).toNat

end

end A091221.P2642011253482166410

/-!
# A091222: Number of irreducible polynomials dividing n-th GF(2)[X]-polynomial, counted with multiplicity.

The programs for A091222, there is no canonical definition to state claims against.
-/

/-! ## A091222.P11827555720457548019

`A001222(A091203(n+1))`
-/

namespace A091222.P11827555720457548019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091203 (n + 1)).toNat

end

end A091222.P11827555720457548019

/-! ## A091222.P14969879667222094540

`A001222(A091205(n+1))`
-/

namespace A091222.P14969879667222094540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091205 (n + 1)).toNat

end

end A091222.P14969879667222094540

/-! ## A091222.P1381116139376864549

`∑{e}[A278233(n+1), #]`
-/

namespace A091222.P1381116139376864549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A091222.P1381116139376864549

/-! ## A091222.P18425964967982036203

`a(A304529(n+1)-1)+1` with `a(0)=0`
-/

namespace A091222.P18425964967982036203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A304529 (n + 1) - 1).toNat + 1

end

end A091222.P18425964967982036203

/-! ## A091222.P4262414871761708370

`A001222(A278233(n+1))`
-/

namespace A091222.P4262414871761708370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278233 (n + 1)).toNat

end

end A091222.P4262414871761708370

/-! ## A091222.P9986704391717578223

`A305802(n+1)+A001222(n+1)`
-/

namespace A091222.P9986704391717578223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305802 (n + 1) + A001222 (n + 1)

end

end A091222.P9986704391717578223

/-! ## A091222.P8829463818880164169

`A001222(A286384(A003188(n+1)))`
-/

namespace A091222.P8829463818880164169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286384 (A003188 (n + 1)).toNat).toNat

end

end A091222.P8829463818880164169

/-! ## A091222.P17388723325213599690

`A001222(A286383(A006068(n+1)))`
-/

namespace A091222.P17388723325213599690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286383 (A006068 (n + 1)).toNat).toNat

end

end A091222.P17388723325213599690

/-! ## A091222.P9358721914648550770

`A001222(A286384(A234612(n+1)))`
-/

namespace A091222.P9358721914648550770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286384 (A234612 (n + 1)).toNat).toNat

end

end A091222.P9358721914648550770

/-! ## A091222.P16592867015647325696

`A001222(A286383(A234613(n+1)))`
-/

namespace A091222.P16592867015647325696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286383 (A234613 (n + 1)).toNat).toNat

end

end A091222.P16592867015647325696

/-! ## A091222.P17419029561328486960

`∑{e}[A235042(n+1), #]`
-/

namespace A091222.P17419029561328486960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A091222.P17419029561328486960

/-! ## A091222.P3467951910272224517

`A001222(A286383(2*(n+1)))-1`
-/

namespace A091222.P3467951910272224517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286383 (2 * (n + 1))).toNat - 1

end

end A091222.P3467951910272224517

/-! ## A091222.P10862946907481171854

`A001222(A286383(2*(n+1))/2)`
-/

namespace A091222.P10862946907481171854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A286383 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A091222.P10862946907481171854

/-! ## A091222.P13255947178340913542

`A305802(n+1)+A302242(record[A006530(n+2)])`
-/

namespace A091222.P13255947178340913542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305802 (n + 1) + A302242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091222.P13255947178340913542

/-! ## A091222.P15116583260774900943

`A001222(A245821(A245704(n+1)))`
-/

namespace A091222.P15116583260774900943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245821 (A245704 (n + 1)).toNat).toNat

end

end A091222.P15116583260774900943

/-! ## A091222.P15804741667358845056

`A001222(A235042(n+1))`
-/

namespace A091222.P15804741667358845056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A235042 (n + 1)).toNat

end

end A091222.P15804741667358845056

/-! ## A091222.P16071171833898417813

`∑{e}[A278238(n+1), #/2]`
-/

namespace A091222.P16071171833898417813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / 2

end

end A091222.P16071171833898417813

/-! ## A091222.P4721364087621719378

`A001222(sqrt(A278238(n+1)))`
-/

namespace A091222.P4721364087621719378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A278238 (n + 1) : ℝ))).toNat

end

end A091222.P4721364087621719378

/-!
# A091223: Differences between consecutive irreducible GF(2)[X]-polynomials.

The programs for A091223, there is no canonical definition to state claims against.
-/

/-! ## A091223.P11682827369230724802

`Δ[A014580(n+1)]`
-/

namespace A091223.P11682827369230724802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091223.P11682827369230724802

/-! ## A091223.P10390817881168169178

`A014580(n+2)-A014580(n+1)`
-/

namespace A091223.P10390817881168169178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2) - A014580 (n + 1)

end

end A091223.P10390817881168169178

/-! ## A091223.P10476119295292941198

`Δ[eq[1, A091225(n)]]`
-/

namespace A091223.P10476119295292941198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091223.P10476119295292941198

/-! ## A091223.P1698778536030946751

`Δ[eq[1, A304529(n+1)]]`
-/

namespace A091223.P1698778536030946751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091223.P1698778536030946751

/-! ## A091223.P1286486614275203338

`Δ[eq[2, A305788(n+1)]]`
-/

namespace A091223.P1286486614275203338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091223.P1286486614275203338

/-! ## A091223.P14720085961240770083

`Δ[lt[A305788(n+2), 3]]`
-/

namespace A091223.P14720085961240770083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091223.P14720085961240770083

/-! ## A091223.P3042189071524333891

`Δ[lt[A091225(2*n), A091225(n)]]`
-/

namespace A091223.P3042189071524333891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091223.P3042189071524333891

/-! ## A091223.P12164317817153540118

`Δ[A305420(a(n-1))]` with `a(0)=2`
-/

namespace A091223.P12164317817153540118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091223.P12164317817153540118

/-! ## A091223.P11532884844280416588

`Δ[A305421(a(n-1))]` with `a(0)=2`
-/

namespace A091223.P11532884844280416588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A305421 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091223.P11532884844280416588

/-! ## A091223.P12737757932160998382

`Δ[A091202(Δ[A007504(n)])]`
-/

namespace A091223.P12737757932160998382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091223.P12737757932160998382

/-! ## A091223.P9136864915105812227

`Δ[A091202(A000040(n+1))]`
-/

namespace A091223.P9136864915105812227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091223.P9136864915105812227

/-!
# A091224: Differences between consecutive irreducible GF(2)[X]-polynomials, divided by 2.

The programs for A091224, there is no canonical definition to state claims against.
-/

/-! ## A091224.P11178528567940603814

`Δ[A014580(n+2)/2]`
-/

namespace A091224.P11178528567940603814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014580 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091224.P11178528567940603814

/-! ## A091224.P7863596362010768259

`A001281(Δ[A014580(n+2)])`
-/

namespace A091224.P7863596362010768259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A091224.P7863596362010768259

/-! ## A091224.P8822954662387155085

`A004525(Δ[A014580(n+2)])`
-/

namespace A091224.P8822954662387155085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A091224.P8822954662387155085

/-! ## A091224.P1825351394480380039

`A004526(Δ[A014580(n+2)])`
-/

namespace A091224.P1825351394480380039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A091224.P1825351394480380039

/-! ## A091224.P263982931581943252

`A006370(Δ[A014580(n+2)])`
-/

namespace A091224.P263982931581943252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A091224.P263982931581943252

/-! ## A091224.P1932246002939080327

`A025480(Δ[A014580(n+2)])`
-/

namespace A091224.P1932246002939080327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A091224.P1932246002939080327

/-! ## A091224.P17535569028745681961

`A026741(Δ[A014580(n+2)])`
-/

namespace A091224.P17535569028745681961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A091224.P17535569028745681961

/-! ## A091224.P13136782199932553975

`A032742(Δ[A014580(n+2)])`
-/

namespace A091224.P13136782199932553975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A091224.P13136782199932553975

/-! ## A091224.P15302359349552863889

`A110654(Δ[A014580(n+2)])`
-/

namespace A091224.P15302359349552863889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A091224.P15302359349552863889

/-! ## A091224.P3242998547297382190

`A246277(Δ[A014580(n+2)])`
-/

namespace A091224.P3242998547297382190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (f1 (n + 1) - f1 n).toNat

end

end A091224.P3242998547297382190

/-! ## A091224.P7139532696110922823

`A302042(Δ[A014580(n+2)])`
-/

namespace A091224.P7139532696110922823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (f1 (n + 1) - f1 n).toNat

end

end A091224.P7139532696110922823

/-! ## A091224.P6367931128881375587

`abs(A001057(Δ[A014580(n+2)]))`
-/

namespace A091224.P6367931128881375587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (f1 (n + 1) - f1 n).toNat|

end

end A091224.P6367931128881375587

/-! ## A091224.P5908919147533273793

`A140106(Δ[A014580(n+2)])+1`
-/

namespace A091224.P5908919147533273793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f1 (n + 1) - f1 n).toNat + 1

end

end A091224.P5908919147533273793

/-! ## A091224.P14308842961945395396

`val(A000079(Δ[A014580(n+2)]), 4)`
-/

namespace A091224.P14308842961945395396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (f1 (n + 1) - f1 n).toNat).toNat 4

end

end A091224.P14308842961945395396

/-! ## A091224.P9258164398582793889

`A001281(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P9258164398582793889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P9258164398582793889

/-! ## A091224.P4490301754391628066

`A004526(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P4490301754391628066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P4490301754391628066

/-! ## A091224.P5504197550969528924

`A032742(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P5504197550969528924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P5504197550969528924

/-! ## A091224.P15996056964068623910

`A049206(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P15996056964068623910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P15996056964068623910

/-! ## A091224.P15445967293409084672

`A304529(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P15445967293409084672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P15445967293409084672

/-! ## A091224.P8120761683238249114

`A305425(A014580(n+3)-A014580(n+2))`
-/

namespace A091224.P8120761683238249114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A014580 (n + 3) - A014580 (n + 2)).toNat

end

end A091224.P8120761683238249114

/-!
# A091225: Characteristic function of A014580: 1 if the n-th GF(2)[X] polynomial is irreducible, 0 otherwise.

The programs for A091225, there is no canonical definition to state claims against.
-/

/-! ## A091225.P2009021594614036131

`char[A014580(n+1)]`
-/

namespace A091225.P2009021594614036131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P2009021594614036131

/-! ## A091225.P10191852032901721053

`char[A234750(n+1)]`
-/

namespace A091225.P10191852032901721053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P10191852032901721053

/-! ## A091225.P2606256423362094448

`char[A305420(n+1)]`
-/

namespace A091225.P2606256423362094448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P2606256423362094448

/-! ## A091225.P9582348493263174939

`char[A305419(n+3)]`
-/

namespace A091225.P9582348493263174939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P9582348493263174939

/-! ## A091225.P11789174565570284940

`Δ[A091226(abs(1-n))]`
-/

namespace A091225.P11789174565570284940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091225.P11789174565570284940

/-! ## A091225.P758848824396485853

`char[A305421(a(n-1))]` with `a(0)=2`
-/

namespace A091225.P758848824396485853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A305421 (f1 (n - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P758848824396485853

/-! ## A091225.P14940469834755661217

`A157928(n)-A091247(n)`
-/

namespace A091225.P14940469834755661217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n - A091247 n

end

end A091225.P14940469834755661217

/-! ## A091225.P15616949795710564111

`char[A091202(A000040(n+1))]`
-/

namespace A091225.P15616949795710564111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P15616949795710564111

/-! ## A091225.P16354581241095174293

`A091247(2*n)-A091247(n)`
-/

namespace A091225.P16354581241095174293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * n) - A091247 n

end

end A091225.P16354581241095174293

/-! ## A091225.P16277031732220153336

`Δ[A091226(A057428(n)+n)]²`
-/

namespace A091225.P16277031732220153336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A091225.P16277031732220153336

/-! ## A091225.P18441578441792795728

`char[A091202(A006530(n+2))]`
-/

namespace A091225.P18441578441792795728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A006530 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P18441578441792795728

/-! ## A091225.P16695474570346296968

`char[A091202(A020639(n+2))]`
-/

namespace A091225.P16695474570346296968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A020639 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091225.P16695474570346296968

/-! ## A091225.P16891584124145315975

`floor(acot(A091229(n)))`
-/

namespace A091225.P16891584124145315975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A091229 n : ℝ)⌋

end

end A091225.P16891584124145315975

/-! ## A091225.P8938364919356309060

`A000007(A091229(n))`
-/

namespace A091225.P8938364919356309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A091229 n).toNat

end

end A091225.P8938364919356309060

/-! ## A091225.P9433081969593229567

`A091229(A305419(A091229(n)+2))`
-/

namespace A091225.P9433081969593229567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091229 (A305419 (A091229 n + 2).toNat).toNat

end

end A091225.P9433081969593229567

/-!
# A091226: Number of irreducible GF(2)[X]-polynomials in range [0,n].

The programs for A091226, there is no canonical definition to state claims against.
-/

/-! ## A091226.P10660022234188453898

`∑[A091225(n)]`
-/

namespace A091226.P10660022234188453898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P10660022234188453898

/-! ## A091226.P17635277797912366235

`∑[char[A014580(n+1)]]`
-/

namespace A091226.P17635277797912366235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P17635277797912366235

/-! ## A091226.P5262173324925470218

`∑[char[A234750(n+1)]]`
-/

namespace A091226.P5262173324925470218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P5262173324925470218

/-! ## A091226.P8271670663080506178

`∑[char[A305420(n+1)]]`
-/

namespace A091226.P8271670663080506178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P8271670663080506178

/-! ## A091226.P18009952184455713764

`∑[char[A305419(n+3)]]`
-/

namespace A091226.P18009952184455713764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P18009952184455713764

/-! ## A091226.P17067653110848357706

`A091227(A305419(n+1))`
-/

namespace A091226.P17067653110848357706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A305419 (n + 1)).toNat

end

end A091226.P17067653110848357706

/-! ## A091226.P9380314539764292450

`∑[char[A091202(A000040(n+1))]]`
-/

namespace A091226.P9380314539764292450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P9380314539764292450

/-! ## A091226.P1260868555100674904

`A305817(n+1)+A235044(n)-A305816(n+1)`
-/

namespace A091226.P1260868555100674904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305817 (n + 1) + (A235044 n - A305816 (n + 1))

end

end A091226.P1260868555100674904

/-! ## A091226.P595331454349540102

`A235044(n+1)+A305817(n+1)-A091225(n+1)`
-/

namespace A091226.P595331454349540102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (n + 1) + (A305817 (n + 1) - A091225 (n + 1))

end

end A091226.P595331454349540102

/-! ## A091226.P4263371902479411691

`∑[char[A091202(A006530(n+2))]]`
-/

namespace A091226.P4263371902479411691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A006530 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P4263371902479411691

/-! ## A091226.P1257267945156809431

`∑[floor(acot(A091229(n)))]`
-/

namespace A091226.P1257267945156809431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A091229 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091226.P1257267945156809431

/-!
# A091227: Inverse function of A014580: position in A014580 if the n-th GF(2)[X] polynomial is irreducible, 0 otherwise.

The programs for A091227, there is no canonical definition to state claims against.
-/

/-! ## A091227.P17569504433277358247

`A091225(n+1)*A091226(n+1)`
-/

namespace A091227.P17569504433277358247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (n + 1) * A091226 (n + 1)

end

end A091227.P17569504433277358247

/-! ## A091227.P3016456788744886442

`Δ[C(A091226(n)+1, 2)]`
-/

namespace A091227.P3016456788744886442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091226 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091227.P3016456788744886442

/-! ## A091227.P8116496524741566340

`Δ[A000124(A091226(n))]`
-/

namespace A091227.P8116496524741566340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A091226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091227.P8116496524741566340

/-! ## A091227.P3119348942340432773

`A001057(Δ[A091226(n)²])`
-/

namespace A091227.P3119348942340432773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A091227.P3119348942340432773

/-! ## A091227.P12224184486512276762

`A110654(Δ[A091226(n)²])`
-/

namespace A091227.P12224184486512276762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A091227.P12224184486512276762

/-! ## A091227.P7533807494497920807

`Δ[A000124(∑[A091225(n)])]`
-/

namespace A091227.P7533807494497920807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091227.P7533807494497920807

/-! ## A091227.P6338821847817730723

`Δ[A000217(∑[A091225(n)])]`
-/

namespace A091227.P6338821847817730723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091227.P6338821847817730723

/-! ## A091227.P5428965027188710287

`Δ[A161680(A091226(n)+1)]`
-/

namespace A091227.P5428965027188710287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A091226 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091227.P5428965027188710287

/-! ## A091227.P8941750407695348532

`A004524(Δ[(A091226(n)+1)²])`
-/

namespace A091227.P8941750407695348532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091226 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n).toNat

end

end A091227.P8941750407695348532

/-! ## A091227.P13659391968330447675

`A004526(Δ[(A091226(n)+1)²])`
-/

namespace A091227.P13659391968330447675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091226 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A091227.P13659391968330447675

/-! ## A091227.P142998070303465928

`Δ[A091226(n)]*A091226(n+1)`
-/

namespace A091227.P142998070303465928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A091226 (n + 1)

end

end A091227.P142998070303465928

/-! ## A091227.P14307815744431343329

`(A305817(n+1)+A235044(n+1))*A091225(n+1)`
-/

namespace A091227.P14307815744431343329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305817 (n + 1) + A235044 (n + 1)) * A091225 (n + 1)

end

end A091227.P14307815744431343329

/-! ## A091227.P3154654575085559978

`A091226((n+1)*A010051(A235042(n+1)))`
-/

namespace A091227.P3154654575085559978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 ((n + 1 : ℤ) * A010051 (A235042 (n + 1)).toNat).toNat

end

end A091227.P3154654575085559978

/-! ## A091227.P7020901200276121761

`A049084(A091203(n+1))`
-/

namespace A091227.P7020901200276121761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091203 (n + 1)).toNat

end

end A091227.P7020901200276121761

/-!
# A091228: Smallest m >= n, such that m is irreducible when interpreted as GF(2)[X]-polynomial.

The programs for A091228, there is no canonical definition to state claims against.
-/

/-! ## A091228.P4461875832796197817

`n+A091229(n)`
-/

namespace A091228.P4461875832796197817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A091229 n

end

end A091228.P4461875832796197817

/-! ## A091228.P54757046000347648

`A305420(floor(n-atan(n))+1)`
-/

namespace A091228.P54757046000347648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

end

end A091228.P54757046000347648

/-! ## A091228.P2891390545280051863

`A305420(round(acot(n)+n)-1)`
-/

namespace A091228.P2891390545280051863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

end

end A091228.P2891390545280051863

/-! ## A091228.P8434373183123605240

`A305420(floor(sqrt((1-n)²+1)))`
-/

namespace A091228.P8434373183123605240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (Int.sqrt ((1 - (n : ℤ)) ^ 2 + 1)).toNat

end

end A091228.P8434373183123605240

/-! ## A091228.P5098547162865152390

`(n%2)!*A305420(round(sqrt((n-1)²+1)))`
-/

namespace A091228.P5098547162865152390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A305420 (SequenceMachineLib.roundAway (Real.sqrt (((n : ℤ) - 1) ^ 2 + 1 : ℝ))).toNat

end

end A091228.P5098547162865152390

/-! ## A091228.P16237941014675980261

`abs(A305420(round(sqrt((1-n)²+1)))-n)+n`
-/

namespace A091228.P16237941014675980261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305420 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat - (n : ℤ)| + (n : ℤ)

end

end A091228.P16237941014675980261

/-! ## A091228.P7395407203531737429

`A091229(n)-A001489(n)`
-/

namespace A091228.P7395407203531737429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091229 n - A001489 n

end

end A091228.P7395407203531737429

/-! ## A091228.P9653467209573942728

`A005843(n)-(n-A091229(n))`
-/

namespace A091228.P9653467209573942728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A091229 n)

end

end A091228.P9653467209573942728

/-!
# A091229: Smallest k such that n+k is irreducible when interpreted as GF(2)[X]-polynomial.

The programs for A091229, there is no canonical definition to state claims against.
-/

/-! ## A091229.P15034216195539794779

`A091228(n)-n`
-/

namespace A091229.P15034216195539794779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091228 n - (n : ℤ)

end

end A091229.P15034216195539794779

/-! ## A091229.P16470886517886804146

`A305420(floor(n-atan(n))+1)-n`
-/

namespace A091229.P16470886517886804146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat - (n : ℤ)

end

end A091229.P16470886517886804146

/-! ## A091229.P15216562656344306588

`A305420(round(acot(n)+n)-1)-n`
-/

namespace A091229.P15216562656344306588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat - (n : ℤ)

end

end A091229.P15216562656344306588

/-! ## A091229.P16179496090828771421

`A305420(floor(sqrt((1-n)²+1)))-n`
-/

namespace A091229.P16179496090828771421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (Int.sqrt ((1 - (n : ℤ)) ^ 2 + 1)).toNat - (n : ℤ)

end

end A091229.P16179496090828771421

/-! ## A091229.P1139024983936251050

`abs(A305420(round(sqrt((1-n)²+1)))-n)`
-/

namespace A091229.P1139024983936251050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305420 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat - (n : ℤ)|

end

end A091229.P1139024983936251050

/-!
# A091230: Iterates of A014580, starting with a(0) = 1, a(n) = A014580^(n)(1). [Here A014580^(n) means the n-th fold application of A014580].

The programs for A091230, there is no canonical definition to state claims against.
-/

/-! ## A091230.P12050980548394838725

`A014580(a(n-1))` with `a(0)=1`
-/

namespace A091230.P12050980548394838725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014580 (a (n - 1)).toNat

end

end A091230.P12050980548394838725

/-! ## A091230.P6433920454141231559

`A091204(A007097(n))`
-/

namespace A091230.P6433920454141231559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A007097 n).toNat

end

end A091230.P6433920454141231559

/-! ## A091230.P10080074156079898524

`A245702(A000079(n))`
-/

namespace A091230.P10080074156079898524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A000079 n).toNat

end

end A091230.P10080074156079898524

/-! ## A091230.P16447639368386699511

`A260426(A260422(∑[2^n]))`
-/

namespace A091230.P16447639368386699511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260426 (A260422 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A091230.P16447639368386699511

/-! ## A091230.P7725731591357140519

`A245702(2^n)`
-/

namespace A091230.P7725731591357140519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (2 ^ n)

end

end A091230.P7725731591357140519

/-!
# A091231: How many more primes than irreducible GF(2)[X] polynomials there are in range [0,2^n].

The programs for A091231, there is no canonical definition to state claims against.
-/

/-! ## A091231.P6414938723453077656

`∑[A091232(abs(1-n))]`
-/

namespace A091231.P6414938723453077656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091232 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091231.P6414938723453077656

/-! ## A091231.P223028446333239451

`A091232(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A091231.P223028446333239451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A091232 (n - 1) + a (n - 1)

end

end A091231.P223028446333239451

/-! ## A091231.P8961585313687497255

`∑[A091232(n)]-A091232(n)`
-/

namespace A091231.P8961585313687497255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091232 n

end

end A091231.P8961585313687497255

/-! ## A091231.P18393176149471417012

`A007053(n)-A091226(2^n)`
-/

namespace A091231.P18393176149471417012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - A091226 (2 ^ n)

end

end A091231.P18393176149471417012

/-! ## A091231.P14550256767880364647

`A220845(floor(2^n/(n+1)))`
-/

namespace A091231.P14550256767880364647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A091231.P14550256767880364647

/-!
# A091232: How many more primes than irreducible GF(2)[X] polynomials there are in range [2^n,2^(n+1)].

The programs for A091232, there is no canonical definition to state claims against.
-/

/-! ## A091232.P654755184592157605

`A162145(n+1)-A001037(n)`
-/

namespace A091232.P654755184592157605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 1) - A001037 n

end

end A091232.P654755184592157605

/-! ## A091232.P15011358557967688442

`A036378(char[1]+n)-A001037(n)`
-/

namespace A091232.P15011358557967688442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 ((if ∃ j, f1 j = n then 1 else 0) + n) - A001037 n

end

end A091232.P15011358557967688442

/-! ## A091232.P3576447118019314293

`A162145(n+1)-A059966(2-2%(n+1)+n)`
-/

namespace A091232.P3576447118019314293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 1) - A059966 (2 - ((2 % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A091232.P3576447118019314293

/-! ## A091232.P12648850568164939056

`A036378(n)-A059966(A028310(n))`
-/

namespace A091232.P12648850568164939056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A059966 (A028310 n).toNat

end

end A091232.P12648850568164939056

/-! ## A091232.P16557629606406405307

`A162145(n+1)-∑{d}[n+1, A008683(#)*A054080((n+1)/#-1)]`
-/

namespace A091232.P16557629606406405307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054080 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A091232.P16557629606406405307

/-!
# A091233: (Largest Matula-Goebel number encoding a tree with n nodes) - (smallest Matula-Goebel number encoding a tree with n nodes).

The programs for A091233, there is no canonical definition to state claims against.
-/

/-! ## A091233.P10406429357354494568

`A005518(n+1)-A005517(n+1)+1`
-/

namespace A091233.P10406429357354494568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005518 (n + 1) - A005517 (n + 1) + 1

end

end A091233.P10406429357354494568

/-! ## A091233.P9082840121343228490

`A024000(A005517(n+1))+A005518(n+1)`
-/

namespace A091233.P9082840121343228490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A005517 (n + 1)).toNat + A005518 (n + 1)

end

end A091233.P9082840121343228490

/-! ## A091233.P2785221852635311324

`A005518(n+1)-A023443(A290323(2^n))`
-/

namespace A091233.P2785221852635311324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005518 (n + 1) - A023443 (A290323 (2 ^ n)).toNat

end

end A091233.P2785221852635311324

/-! ## A091233.P6095441729059925664

`A061773(A087803(n+1))+1-A005517(n+1)`
-/

namespace A091233.P6095441729059925664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A087803 (n + 1)).toNat + (1 - A005517 (n + 1))

end

end A091233.P6095441729059925664

/-! ## A091233.P12042265328153672933

`A061773(A347540(2^n))+1-A005517(n+1)`
-/

namespace A091233.P12042265328153672933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A347540 (2 ^ n)).toNat + 1 - A005517 (n + 1)

end

end A091233.P12042265328153672933

/-!
# A091235: Number of ways to partition the set of divisors of the n-th abundant number into three subsets such that their sums form an integer triangle.

The programs for A091235, there is no canonical definition to state claims against.
-/

/-! ## A091235.P11286194788656584548

`A091234(A005101(n+1))`
-/

namespace A091235.P11286194788656584548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091234 (A005101 (n + 1)).toNat

end

end A091235.P11286194788656584548

/-! ## A091235.P5383653520329643500

`A091234(A383488(n+1))`
-/

namespace A091235.P5383653520329643500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091234 (A383488 (n + 1)).toNat

end

end A091235.P5383653520329643500

/-! ## A091235.P5244014293017760128

`A091234(A094519(n+2))`
-/

namespace A091235.P5244014293017760128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091234 (A094519 (n + 2)).toNat

end

end A091235.P5244014293017760128

/-! ## A091235.P12706719376027555361

`A091234(A224907(n+1)/2)`
-/

namespace A091235.P12706719376027555361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091234 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A091235.P12706719376027555361

/-!
# A091236: Nonprimes of form 4k+3.

The programs for A091236, the canonical program `A091236.P7558247970017758999` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091236 has offset 1).

The definition of A091236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091236.P7558247970017758999

`4*A045752(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A091236

/-- `4*A045752(n+1)-1` -/
def P7558247970017758999.Spec : Prop :=
  ∀ n, P7558247970017758999.a n = A091236 (n + 1)

theorem P7558247970017758999.correct : P7558247970017758999.Spec := by
  intro n
  simp only [A091236, Nat.add_sub_cancel]

end A091236

/-! ## A091236.P6539074233505586396

`4*A095277(n+1)+3`
-/

namespace A091236.P6539074233505586396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095277 (n + 1) + 3

end

end A091236.P6539074233505586396

namespace A091236

/-- `4*A095277(n+1)+3` -/
def P6539074233505586396.Spec : Prop :=
  ∀ n, P6539074233505586396.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P5073797416296351226

`4*comp[A095278(n+1)]+3`
-/

namespace A091236.P5073797416296351226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A091236.P5073797416296351226

namespace A091236

/-- `4*comp[A095278(n+1)]+3` -/
def P5073797416296351226.Spec : Prop :=
  ∀ n, (P5073797416296351226.a n : ℤ) = A091236 (n + 1)

end A091236

/-! ## A091236.P17091998503619504693

`4*lt[2, A000005(4*n+3)]+3`
-/

namespace A091236.P17091998503619504693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A091236.P17091998503619504693

namespace A091236

/-- `4*lt[2, A000005(4*n+3)]+3` -/
def P17091998503619504693.Spec : Prop :=
  ∀ n, (P17091998503619504693.a n : ℤ) = A091236 (n + 1)

end A091236

/-! ## A091236.P18160464681618345805

`A004767(A095277(n+1))`
-/

namespace A091236.P18160464681618345805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A095277 (n + 1)).toNat

end

end A091236.P18160464681618345805

namespace A091236

/-- `A004767(A095277(n+1))` -/
def P18160464681618345805.Spec : Prop :=
  ∀ n, P18160464681618345805.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P5011694552153902216

`filter[A004767(n), A005171(#)]`
-/

namespace A091236.P5011694552153902216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091236.P5011694552153902216

namespace A091236

/-- `filter[A004767(n), A005171(#)]` -/
def P5011694552153902216.Spec : Prop :=
  ∀ n, P5011694552153902216.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P11502009270010116376

`filter[A004767(n), A066247(#)]`
-/

namespace A091236.P11502009270010116376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091236.P11502009270010116376

namespace A091236

/-- `filter[A004767(n), A066247(#)]` -/
def P11502009270010116376.Spec : Prop :=
  ∀ n, P11502009270010116376.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P42140277876839834

`filter[A004767(n), A202238(#)]`
-/

namespace A091236.P42140277876839834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A091236.P42140277876839834

namespace A091236

/-- `filter[A004767(n), A202238(#)]` -/
def P42140277876839834.Spec : Prop :=
  ∀ n, P42140277876839834.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P5331603374176285313

`filter[A004767(n), A292438(#)]`
-/

namespace A091236.P5331603374176285313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091236.P5331603374176285313

namespace A091236

/-- `filter[A004767(n), A292438(#)]` -/
def P5331603374176285313.Spec : Prop :=
  ∀ n, P5331603374176285313.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P9478129559394376825

`filter[A004767(n), A323162(#)]`
-/

namespace A091236.P9478129559394376825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A091236.P9478129559394376825

namespace A091236

/-- `filter[A004767(n), A323162(#)]` -/
def P9478129559394376825.Spec : Prop :=
  ∀ n, P9478129559394376825.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P399570538446406683

`filter[A004767(n), A373979(#)]`
-/

namespace A091236.P399570538446406683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A091236.P399570538446406683

namespace A091236

/-- `filter[A004767(n), A373979(#)]` -/
def P399570538446406683.Spec : Prop :=
  ∀ n, P399570538446406683.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P13970816890255023667

`A004767(comp[A095278(n+1)])`
-/

namespace A091236.P13970816890255023667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A091236.P13970816890255023667

namespace A091236

/-- `A004767(comp[A095278(n+1)])` -/
def P13970816890255023667.Spec : Prop :=
  ∀ n, P13970816890255023667.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P4388986638948251070

`A004767(A045752(n+1)-1)`
-/

namespace A091236.P4388986638948251070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A045752 (n + 1) - 1).toNat

end

end A091236.P4388986638948251070

namespace A091236

/-- `A004767(A045752(n+1)-1)` -/
def P4388986638948251070.Spec : Prop :=
  ∀ n, P4388986638948251070.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P14590171914944275257

`A217585(A045752(n+1))`
-/

namespace A091236.P14590171914944275257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (A045752 (n + 1)).toNat

end

end A091236.P14590171914944275257

namespace A091236

/-- `A217585(A045752(n+1))` -/
def P14590171914944275257.Spec : Prop :=
  ∀ n, P14590171914944275257.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P12524126073387595561

`A004767(lt[3, A214834(n+2)])`
-/

namespace A091236.P12524126073387595561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091236.P12524126073387595561

namespace A091236

/-- `A004767(lt[3, A214834(n+2)])` -/
def P12524126073387595561.Spec : Prop :=
  ∀ n, P12524126073387595561.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P7394851829479572747

`filter[A131098(n+1), A066247(#)]`
-/

namespace A091236.P7394851829479572747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091236.P7394851829479572747

namespace A091236

/-- `filter[A131098(n+1), A066247(#)]` -/
def P7394851829479572747.Spec : Prop :=
  ∀ n, P7394851829479572747.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P7684640402526260961

`filter[A217585(n+1), A066247(#)]`
-/

namespace A091236.P7684640402526260961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A091236.P7684640402526260961

namespace A091236

/-- `filter[A217585(n+1), A066247(#)]` -/
def P7684640402526260961.Spec : Prop :=
  ∀ n, P7684640402526260961.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P18201441096713049948

`filter[A131098(n+1), A202238(#)]`
-/

namespace A091236.P18201441096713049948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A091236.P18201441096713049948

namespace A091236

/-- `filter[A131098(n+1), A202238(#)]` -/
def P18201441096713049948.Spec : Prop :=
  ∀ n, P18201441096713049948.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P11946386071560909742

`filter[A217585(n+1), A202238(#)]`
-/

namespace A091236.P11946386071560909742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A091236.P11946386071560909742

namespace A091236

/-- `filter[A217585(n+1), A202238(#)]` -/
def P11946386071560909742.Spec : Prop :=
  ∀ n, P11946386071560909742.a n = A091236 (n + 1)

end A091236

/-! ## A091236.P7316568560696648925

`filter[A131098(n+1), A323162(#)]`
-/

namespace A091236.P7316568560696648925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A091236.P7316568560696648925

namespace A091236

/-- `filter[A131098(n+1), A323162(#)]` -/
def P7316568560696648925.Spec : Prop :=
  ∀ n, P7316568560696648925.a n = A091236 (n + 1)

end A091236

/-!
# A091237: Lengths of runs in A039702.

The programs for A091237, the canonical program `A091237.P6770545350464896014` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091237 has offset 1).

The definition of A091237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091237.P6770545350464896014

`Δ[eq[0, A088705(A181346(n))]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091237

/-- `Δ[eq[0, A088705(A181346(n))]]` -/
def P6770545350464896014.Spec : Prop :=
  ∀ n, P6770545350464896014.a n = A091237 (n + 1)

theorem P6770545350464896014.correct : P6770545350464896014.Spec := by
  intro n
  simp only [A091237, Nat.add_sub_cancel]

end A091237

/-!
# A091238: Number of nodes in rooted tree with GF2X-Matula number n.

The programs for A091238, there is no canonical definition to state claims against.
-/

/-! ## A091238.P17232209638613434022

`A196050(p?[A091205(n)])`
-/

namespace A091238.P17232209638613434022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091238.P17232209638613434022

/-! ## A091238.P10291916137402830306

`A061775(A091205(n+1))`
-/

namespace A091238.P10291916137402830306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A091205 (n + 1)).toNat

end

end A091238.P10291916137402830306

/-! ## A091238.P5579992668244996004

`A061775(p?[A091205(n)])-1`
-/

namespace A091238.P5579992668244996004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A091238.P5579992668244996004

/-! ## A091238.P9036753895214065336

`A196050(A091205(2*(n+1)))`
-/

namespace A091238.P9036753895214065336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A091205 (2 * (n + 1))).toNat

end

end A091238.P9036753895214065336

/-! ## A091238.P7551659480570560720

`A061775(A000720(p?[A091205(n)]))`
-/

namespace A091238.P7551659480570560720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A091238.P7551659480570560720

/-! ## A091238.P1159017336325408990

`A033619(A061775(p?[A091205(n)]))`
-/

namespace A091238.P1159017336325408990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A061775 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A091238.P1159017336325408990

/-! ## A091238.P7002527156406641952

`A061775(A049084(p?[A091205(n)]))`
-/

namespace A091238.P7002527156406641952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A091238.P7002527156406641952

/-! ## A091238.P10712242575937601209

`A061775(A075167(p?[A091205(n)]))`
-/

namespace A091238.P10712242575937601209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A091238.P10712242575937601209

/-! ## A091238.P13774570775388824556

`A061775(A245821(A245704(n+1)))`
-/

namespace A091238.P13774570775388824556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A245821 (A245704 (n + 1)).toNat).toNat

end

end A091238.P13774570775388824556

/-!
# A091240: Largest GF2X-Matula number i which encodes a tree of n nodes, i.e., for which A091238(i) = n.

The programs for A091240, there is no canonical definition to state claims against.
-/

/-! ## A091240.P8820061322160754412

`record[A245702(comp[5*n])]`
-/

namespace A091240.P8820061322160754412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091240.P8820061322160754412

/-! ## A091240.P6439770305008452860

`A014580(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A091240.P6439770305008452860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A014580 (a (n - 1)).toNat

end

end A091240.P6439770305008452860

/-! ## A091240.P12968746247399333171

`record[A014580(a(∑[n%2]))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A091240.P12968746247399333171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 4] fun n f1 =>
  A014580 (f1 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091240.P12968746247399333171

/-! ## A091240.P2679001660199068571

`A245702(record[A119440(n)])`
-/

namespace A091240.P2679001660199068571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091240.P2679001660199068571

/-!
# A091241: Size of range [Smallest GF2X-Matula number coding a tree of n nodes, Largest GF2X-Matula number coding a tree of n nodes].

The programs for A091241, there is no canonical definition to state claims against.
-/

/-! ## A091241.P2300021118533086544

`A091240(n+1)-A091239(n+1)+1`
-/

namespace A091241.P2300021118533086544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091240 (n + 1) - A091239 (n + 1) + 1

end

end A091241.P2300021118533086544

/-! ## A091241.P17497587818828886774

`A091240(n+1)+A024000(A091239(n+1))`
-/

namespace A091241.P17497587818828886774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091240 (n + 1) + A024000 (A091239 (n + 1)).toNat

end

end A091241.P17497587818828886774

/-!
# A091242: Reducible polynomials over GF(2), coded in binary.

The programs for A091242, there is no canonical definition to state claims against.
-/

/-! ## A091242.P1684886871673480126

`eq[1, A091247(n)]`
-/

namespace A091242.P1684886871673480126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091242.P1684886871673480126

/-! ## A091242.P10702491092080361025

`lt[1, A304529(n+1)]+1`
-/

namespace A091242.P10702491092080361025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091242.P10702491092080361025

/-! ## A091242.P18410458977454928303

`lt[2, A278233(n+1)]+1`
-/

namespace A091242.P18410458977454928303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091242.P18410458977454928303

/-! ## A091242.P10757831482072800288

`lt[2, A305788(n+1)]+1`
-/

namespace A091242.P10757831482072800288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091242.P10757831482072800288

/-! ## A091242.P13307660957549362556

`lt[A091225(n+3), 1]+3`
-/

namespace A091242.P13307660957549362556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A091242.P13307660957549362556

/-! ## A091242.P12070624001467422884

`lt[1, n/A305419(n+1)]`
-/

namespace A091242.P12070624001467422884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A305419 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A091242.P12070624001467422884

/-! ## A091242.P16485695397673909553

`comp[A014580(n+1)-2]+2`
-/

namespace A091242.P16485695397673909553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A091242.P16485695397673909553

/-! ## A091242.P1045044263088963016

`A234745(A234746(n+1))`
-/

namespace A091242.P1045044263088963016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (A234746 (n + 1)).toNat

end

end A091242.P1045044263088963016

/-! ## A091242.P7493215327685566168

`lt[1, A007088(n*A091247(n))]`
-/

namespace A091242.P7493215327685566168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) * A091247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091242.P7493215327685566168

/-! ## A091242.P12558030866119025581

`∪[A091209(n+1), A091212(n+1)]`
-/

namespace A091242.P12558030866119025581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091242.P12558030866119025581

/-! ## A091242.P419711412913899143

`∪[A091212(n+1), A236844(n+1)]`
-/

namespace A091242.P419711412913899143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091242.P419711412913899143

/-! ## A091242.P17382979726083156905

`∪[A091212(n+1), A246156(n+1)]`
-/

namespace A091242.P17382979726083156905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091242.P17382979726083156905

/-! ## A091242.P11899263897924980513

`∪[A091212(n+1), A260427(n+1)]`
-/

namespace A091242.P11899263897924980513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091242.P11899263897924980513

/-! ## A091242.P9085134604400202726

`eq[0, A000007(A038107(n+1-A305419(n+1)))]`
-/

namespace A091242.P9085134604400202726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A038107 ((n + 1 : ℤ) - A305419 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091242.P9085134604400202726

/-! ## A091242.P14605677067967439867

`comp[A234750(n+1)-2]+2`
-/

namespace A091242.P14605677067967439867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A091242.P14605677067967439867

/-! ## A091242.P2658786588009233600

`filter[n+3, A091247(#)]`
-/

namespace A091242.P2658786588009233600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j) = 1) n)

end

end A091242.P2658786588009233600

/-! ## A091242.P13562394620200491468

`lt[1, A091222(n+1)]+1`
-/

namespace A091242.P13562394620200491468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091242.P13562394620200491468

/-! ## A091242.P13146902788887142435

`eq[A091225(n), A130706(n)]`
-/

namespace A091242.P13146902788887142435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091242.P13146902788887142435

/-! ## A091242.P6269895816487415001

`comp[A305421(a(n-2))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A091242.P6269895816487415001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A305421 (f1 (n - 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091242.P6269895816487415001

/-! ## A091242.P14226179755937183398

`eq[1, char[A234745(n+1)]]`
-/

namespace A091242.P14226179755937183398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091242.P14226179755937183398

/-!
# A091243: Differences between consecutive reducible GF(2)[X]-polynomials.

The programs for A091243, there is no canonical definition to state claims against.
-/

/-! ## A091243.P2446971698056978847

`Δ[A091242(n+1)]`
-/

namespace A091243.P2446971698056978847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091243.P2446971698056978847

/-! ## A091243.P6814131202520808629

`A091244(n+1)+1`
-/

namespace A091243.P6814131202520808629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091244 (n + 1) + 1

end

end A091243.P6814131202520808629

/-! ## A091243.P1808203068330791310

`Δ[lt[1, A304529(n+1)]]`
-/

namespace A091243.P1808203068330791310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091243.P1808203068330791310

/-! ## A091243.P1814819179999175472

`Δ[lt[2, A305788(n+1)]]`
-/

namespace A091243.P1814819179999175472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091243.P1814819179999175472

/-! ## A091243.P639224458958661435

`Δ[comp[A014580(n+1)-2]]`
-/

namespace A091243.P639224458958661435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091243.P639224458958661435

/-! ## A091243.P14284657476626584108

`abs(Δ[A091242(-xor(n, -1))])`
-/

namespace A091243.P14284657476626584108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A091243.P14284657476626584108

/-! ## A091243.P13442088608878798311

`Δ[comp[n*A091225(n+1)]]`
-/

namespace A091243.P13442088608878798311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091243.P13442088608878798311

/-! ## A091243.P17210759004888514108

`Δ[A193231(A234745(n+1))]`
-/

namespace A091243.P17210759004888514108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091243.P17210759004888514108

/-! ## A091243.P7398190158407124737

`Δ[A234745(A234746(n+1))]`
-/

namespace A091243.P7398190158407124737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (A234746 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091243.P7398190158407124737

/-! ## A091243.P17452673783914488214

`A000005(Δ[A091242(-xor(n, -1))])`
-/

namespace A091243.P17452673783914488214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A091243.P17452673783914488214

/-! ## A091243.P15187784869947169655

`A000041(Δ[A091242(-xor(n, -1))])`
-/

namespace A091243.P15187784869947169655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A091243.P15187784869947169655

/-! ## A091243.P6509126928012945269

`A014963(Δ[A091242(-xor(n, -1))])`
-/

namespace A091243.P6509126928012945269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A091243.P6509126928012945269

/-! ## A091243.P16276725109715055669

`A091225(A091242(n+1)+1)+1`
-/

namespace A091243.P16276725109715055669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A091242 (n + 1) + 1).toNat + 1

end

end A091243.P16276725109715055669

/-! ## A091243.P14862378052497981609

`A091242(n+2)-A091242(n+1)`
-/

namespace A091243.P14862378052497981609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 2) - A091242 (n + 1)

end

end A091243.P14862378052497981609

/-! ## A091243.P136774593478357703

`A000005(Δ[A091242(ϕ²-(ϕ-n))])`
-/

namespace A091243.P136774593478357703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A091243.P136774593478357703

/-! ## A091243.P9714536083137950701

`A000108(Δ[A091242(ϕ²-(ϕ-n))])`
-/

namespace A091243.P9714536083137950701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A091243.P9714536083137950701

/-!
# A091244: Number of irreducible polynomials between successive reducible GF(2)[X]-polynomials.

The programs for A091244, there is no canonical definition to state claims against.
-/

/-! ## A091244.P6584316606738032010

`log2(A091243(n+1))`
-/

namespace A091244.P6584316606738032010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A091243 (n + 1) : ℝ)

end

end A091244.P6584316606738032010

/-! ## A091244.P9284658204076625849

`log2(Δ[A091242(n+1)])`
-/

namespace A091244.P9284658204076625849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A091244.P9284658204076625849

/-! ## A091244.P5121794675626278938

`Δ[lt[1, A304529(n+1)]]-1`
-/

namespace A091244.P5121794675626278938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A091244.P5121794675626278938

/-! ## A091244.P38747119979352514

`Δ[lt[2, A305788(n+1)]]-1`
-/

namespace A091244.P38747119979352514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A091244.P38747119979352514

/-! ## A091244.P12925502723728748296

`char[A014580(n+1)-(n+3)]`
-/

namespace A091244.P12925502723728748296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091244.P12925502723728748296

/-! ## A091244.P17236272713242990200

`A000065(Δ[A091242(n+1)])`
-/

namespace A091244.P17236272713242990200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (f1 (n + 1) - f1 n).toNat

end

end A091244.P17236272713242990200

/-! ## A091244.P7667684111820730799

`A001221(Δ[A091242(n+1)])`
-/

namespace A091244.P7667684111820730799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A091244.P7667684111820730799

/-! ## A091244.P14770454217310548960

`A001222(Δ[A091242(n+1)])`
-/

namespace A091244.P14770454217310548960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A091244.P14770454217310548960

/-! ## A091244.P7515083624551565560

`A010051(Δ[A091242(n+1)])`
-/

namespace A091244.P7515083624551565560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f1 (n + 1) - f1 n).toNat

end

end A091244.P7515083624551565560

/-! ## A091244.P7729450348870545947

`A049084(Δ[A091242(n+1)])`
-/

namespace A091244.P7729450348870545947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (n + 1) - f1 n).toNat

end

end A091244.P7729450348870545947

/-! ## A091244.P6618017798311783610

`A052331(Δ[A091242(n+1)])`
-/

namespace A091244.P6618017798311783610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (f1 (n + 1) - f1 n).toNat

end

end A091244.P6618017798311783610

/-! ## A091244.P3249727681482407108

`A056239(Δ[A091242(n+1)])`
-/

namespace A091244.P3249727681482407108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (n + 1) - f1 n).toNat

end

end A091244.P3249727681482407108

/-! ## A091244.P1509491107932545291

`A091221(Δ[A091242(n+1)])`
-/

namespace A091244.P1509491107932545291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (f1 (n + 1) - f1 n).toNat

end

end A091244.P1509491107932545291

/-! ## A091244.P4808742470160277541

`A091225(Δ[A091242(n+1)])`
-/

namespace A091244.P4808742470160277541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (f1 (n + 1) - f1 n).toNat

end

end A091244.P4808742470160277541

/-! ## A091244.P8867823286795968266

`A091225(A091242(n+1)+1)`
-/

namespace A091244.P8867823286795968266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A091242 (n + 1) + 1).toNat

end

end A091244.P8867823286795968266

/-! ## A091244.P16239373054592902713

`A091225(A234745(n+1)+1)`
-/

namespace A091244.P16239373054592902713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A234745 (n + 1) + 1).toNat

end

end A091244.P16239373054592902713

/-! ## A091244.P6086338266365546135

`A091243(n+1)-A361338(n)`
-/

namespace A091244.P6086338266365546135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091243 (n + 1) - A361338 n

end

end A091244.P6086338266365546135

/-! ## A091244.P17847086790817569137

`A000051(n)%A091243(n+1)`
-/

namespace A091244.P17847086790817569137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A091243 (n + 1))

end

end A091244.P17847086790817569137

/-! ## A091244.P11008413990323404264

`A000213(n)%A091243(n+1)`
-/

namespace A091244.P11008413990323404264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 n) (A091243 (n + 1))

end

end A091244.P11008413990323404264

/-!
# A091245: Number of reducible GF(2)[X]-polynomials in range [0,n].

The programs for A091245, there is no canonical definition to state claims against.
-/

/-! ## A091245.P15914455876037753505

`∑[A091247(n)]`
-/

namespace A091245.P15914455876037753505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091245.P15914455876037753505

/-! ## A091245.P6083854969754221445

`∑[char[A091242(n+1)]]`
-/

namespace A091245.P6083854969754221445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091245.P6083854969754221445

/-! ## A091245.P9900518956310980861

`∑[char[A234745(n+1)]]`
-/

namespace A091245.P9900518956310980861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091245.P9900518956310980861

/-! ## A091245.P14100346117219760598

`∑[floor(atan(n)-A091225(n))]`
-/

namespace A091245.P14100346117219760598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) - (A091225 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091245.P14100346117219760598

/-! ## A091245.P2208099786570501664

`n-∑[char[A305419(n+1)]]`
-/

namespace A091245.P2208099786570501664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091245.P2208099786570501664

/-! ## A091245.P13567694819652661894

`(n-(A091226(n)+1))%(n+1)`
-/

namespace A091245.P13567694819652661894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (A091226 n + 1)) (n + 1 : ℤ)

end

end A091245.P13567694819652661894

/-! ## A091245.P5311287559603283208

`A028310(n)-(A091226(n)+1)`
-/

namespace A091245.P5311287559603283208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A091226 n + 1)

end

end A091245.P5311287559603283208

/-! ## A091245.P12649343076491775315

`A028310(n-A091226(n))-1`
-/

namespace A091245.P12649343076491775315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A091226 n).toNat - 1

end

end A091245.P12649343076491775315

/-! ## A091245.P3130672833764215726

`∑[char[A091202(A018252(n+2))]]`
-/

namespace A091245.P3130672833764215726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A018252 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091245.P3130672833764215726

/-! ## A091245.P1773521428810154874

`A057428(n)+n-A091226(n)`
-/

namespace A091245.P1773521428810154874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ((n : ℤ) - A091226 n)

end

end A091245.P1773521428810154874

/-!
# A091246: Inverse function of A091242: position in A091242 if the n-th GF(2)[X] polynomial is reducible, 0 otherwise.

The programs for A091246, there is no canonical definition to state claims against.
-/

/-! ## A091246.P5086513022632305844

`A091245(n+1)*A091247(n+1)`
-/

namespace A091246.P5086513022632305844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (n + 1) * A091247 (n + 1)

end

end A091246.P5086513022632305844

/-! ## A091246.P15222579516266897701

`Δ[C(n-A091226(n), 2)]`
-/

namespace A091246.P15222579516266897701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A091226 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091246.P15222579516266897701

/-! ## A091246.P14942736551896734998

`Δ[A161680(n-A091226(n))]`
-/

namespace A091246.P14942736551896734998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n : ℤ) - A091226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091246.P14942736551896734998

/-! ## A091246.P15336371516236347717

`A004524(Δ[(n-A091226(n))²])`
-/

namespace A091246.P15336371516236347717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091226 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n).toNat

end

end A091246.P15336371516236347717

/-! ## A091246.P5977896178927615904

`A004526(Δ[(n-A091226(n))²])`
-/

namespace A091246.P5977896178927615904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091226 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A091246.P5977896178927615904

/-! ## A091246.P11243413264002671370

`Δ[A000124(A057428(n)+n-A091226(n))]`
-/

namespace A091246.P11243413264002671370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057428 n + ((n : ℤ) - A091226 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091246.P11243413264002671370

/-! ## A091246.P12305844866177376534

`(n-A091226(n))*A008346(Δ[A091226(n)])`
-/

namespace A091246.P12305844866177376534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091226 n) * A008346 (f1 (n + 1) - f1 n).toNat

end

end A091246.P12305844866177376534

/-! ## A091246.P5609824764980965803

`(A091245(n)+1)*A066247(A091203(n+1))`
-/

namespace A091246.P5609824764980965803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091245 n + 1) * A066247 (A091203 (n + 1)).toNat

end

end A091246.P5609824764980965803

/-! ## A091246.P10256999635267998141

`(A091245(n)+1)*A066247(A091205(n+1))`
-/

namespace A091246.P10256999635267998141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091245 n + 1) * A066247 (A091205 (n + 1)).toNat

end

end A091246.P10256999635267998141

/-!
# A091247: Characteristic function of A091242: 1 if the n-th GF(2)[X] polynomial is reducible, 0 otherwise.

The programs for A091247, there is no canonical definition to state claims against.
-/

/-! ## A091247.P17526824405328946838

`char[A091242(n+1)]`
-/

namespace A091247.P17526824405328946838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091247.P17526824405328946838

/-! ## A091247.P12637148293910932690

`floor(atan(n)-A091225(n))`
-/

namespace A091247.P12637148293910932690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) - (A091225 n : ℝ)⌋

end

end A091247.P12637148293910932690

/-! ## A091247.P17739419816646292541

`char[comp[A014580(n+1)-2]+2]`
-/

namespace A091247.P17739419816646292541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A091247.P17739419816646292541

/-! ## A091247.P17024013046837000805

`A157928(n)-A091225(n)`
-/

namespace A091247.P17024013046837000805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n - A091225 n

end

end A091247.P17024013046837000805

/-! ## A091247.P14387406445246295062

`1-(A091225(n)-A130779(n))²`
-/

namespace A091247.P14387406445246295062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A091225 n - A130779 n) ^ 2

end

end A091247.P14387406445246295062

/-! ## A091247.P11455678055706245781

`1-(A091225(n)+A019590(n+1))`
-/

namespace A091247.P11455678055706245781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A091225 n + A019590 (n + 1))

end

end A091247.P11455678055706245781

/-! ## A091247.P12403807236533818413

`A091222(A305419(n+1))-A091225(n)`
-/

namespace A091247.P12403807236533818413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A305419 (n + 1)).toNat - A091225 n

end

end A091247.P12403807236533818413

/-! ## A091247.P12762322476774653656

`char[A234745(n+1)]`
-/

namespace A091247.P12762322476774653656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091247.P12762322476774653656

/-! ## A091247.P2769681499707185431

`floor(atan(∑{e}[A091203(n), #]))`
-/

namespace A091247.P2769681499707185431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℝ)⌋

end

end A091247.P2769681499707185431

/-! ## A091247.P18235401197598335698

`floor(atan(∑{e}[A091205(n), #]))`
-/

namespace A091247.P18235401197598335698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℝ)⌋

end

end A091247.P18235401197598335698

/-! ## A091247.P8132972075154521896

`1-A091225(A233583(n+1))`
-/

namespace A091247.P8132972075154521896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091225 (A233583 (n + 1)).toNat

end

end A091247.P8132972075154521896

/-!
# A091248: Number of irreducible factors in the factorization of X^n + 1 over GF(2) (counted with multiplicity).

The programs for A091248, there is no canonical definition to state claims against.
-/

/-! ## A091248.P13806605019226299444

`A091222(A000051(n+1))`
-/

namespace A091248.P13806605019226299444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A000051 (n + 1)).toNat

end

end A091248.P13806605019226299444

/-! ## A091248.P13575492971869685134

`∑{d}[n+1, A318622(#)]`
-/

namespace A091248.P13575492971869685134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318622 d

end

end A091248.P13575492971869685134

/-! ## A091248.P16242629290333807967

`A000374(n+1)*A006519(n+1)`
-/

namespace A091248.P16242629290333807967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1) * A006519 (n + 1)

end

end A091248.P16242629290333807967

/-! ## A091248.P1624664227233244331

`∑{d}[n+1, A000010(#)/A007733(#)]`
-/

namespace A091248.P1624664227233244331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) / (A007733 d : ℚ)

end

end A091248.P1624664227233244331

/-! ## A091248.P10834910869883457801

`(n+1)/A000265(n+1)*A000374(n+1)`
-/

namespace A091248.P10834910869883457801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (n + 1) : ℚ) * (A000374 (n + 1) : ℚ)

end

end A091248.P10834910869883457801

/-! ## A091248.P15963062989226350052

`A000010(xor(n, n+1)+1)*A000374(n+1)`
-/

namespace A091248.P15963062989226350052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A000374 (n + 1)

end

end A091248.P15963062989226350052

/-! ## A091248.P14430771155255522313

`A000374(n+1)*A011782(A001511(n+1))`
-/

namespace A091248.P14430771155255522313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1) * A011782 (A001511 (n + 1)).toNat

end

end A091248.P14430771155255522313

/-! ## A091248.P12649902052655317430

`A000374(n+1)*A160467(2*(n+1))`
-/

namespace A091248.P12649902052655317430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1) * A160467 (2 * (n + 1))

end

end A091248.P12649902052655317430

/-!
# A091249: A014580-indices of primitive irreducible GF(2)[X]-polynomials.

The programs for A091249, there is no canonical definition to state claims against.
-/

/-! ## A091249.P3767741187097590373

`comp[A091251(n+1)-1]+1`
-/

namespace A091249.P3767741187097590373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091251 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091249.P3767741187097590373

/-! ## A091249.P15417008260866642544

`A091226(A091250(n+1))`
-/

namespace A091249.P15417008260866642544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A091250 (n + 1)).toNat

end

end A091249.P15417008260866642544

/-! ## A091249.P3799374946664283743

`A091227(A091250(n+1)%A058796(n))`
-/

namespace A091249.P3799374946664283743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (Int.tmod (A091250 (n + 1)) (A058796 n)).toNat

end

end A091249.P3799374946664283743

/-! ## A091249.P558487345058871925

`A091227(A091250(n+1))%A091192(n+1)`
-/

namespace A091249.P558487345058871925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091227 (A091250 (n + 1)).toNat) (A091192 (n + 1))

end

end A091249.P558487345058871925

/-! ## A091249.P12661008127315357319

`A091227(∪[A091250(n+1), A091250(n+4)])`
-/

namespace A091249.P12661008127315357319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091250 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091249.P12661008127315357319

/-! ## A091249.P4148519267576760677

`eq[char[A091251(n+1)], A151933(n)]`
-/

namespace A091249.P4148519267576760677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091251 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A091249.P4148519267576760677

/-!
# A091250: List of primitive irreducible polynomials over GF(2), interpreted as binary vectors, then written in base 10.

The programs for A091250, there is no canonical definition to state claims against.
-/

/-! ## A091250.P3075284746774742500

`A014580(A091249(n+1))`
-/

namespace A091250.P3075284746774742500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A091249 (n + 1)).toNat

end

end A091250.P3075284746774742500

/-! ## A091250.P13792119248997499025

`A091202(or(1, A000040(A091249(n+1))))`
-/

namespace A091250.P13792119248997499025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (Int.lor 1 (A000040 (A091249 (n + 1)).toNat)).toNat

end

end A091250.P13792119248997499025

/-! ## A091250.P8608576969672046878

`∏{d}[A000040(A091249(n+1)), A091202(#)]`
-/

namespace A091250.P8608576969672046878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A091202 d

end

end A091250.P8608576969672046878

/-! ## A091250.P969126150304517595

`A091202(∏{p}[A000040(A091249(n+1)), #])`
-/

namespace A091250.P969126150304517595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091250.P969126150304517595

/-! ## A091250.P9545414846107459795

`∏{p}[A000040(A091249(ϕ²-(ϕ-n))), A091202(#)]`
-/

namespace A091250.P9545414846107459795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091249 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A091202 p

end

end A091250.P9545414846107459795

/-! ## A091250.P13135065520793955266

`A091202(A000040(A091249(n+1)%A058943(n+1)))`
-/

namespace A091250.P13135065520793955266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A000040 (Int.tmod (A091249 (n + 1)) (A058943 (n + 1))).toNat).toNat

end

end A091250.P13135065520793955266

/-!
# A091251: A014580-indices of nonprimitive irreducible GF(2)[X]-polynomials.

The programs for A091251, there is no canonical definition to state claims against.
-/

/-! ## A091251.P15828646253876488075

`A091226(A091252(n+1))`
-/

namespace A091251.P15828646253876488075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A091252 (n + 1)).toNat

end

end A091251.P15828646253876488075

/-! ## A091251.P16347654581557690324

`A091227(A091252(n+1)%A058796(n))`
-/

namespace A091251.P16347654581557690324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (Int.tmod (A091252 (n + 1)) (A058796 n)).toNat

end

end A091251.P16347654581557690324

/-! ## A091251.P17587743243257943884

`A091227(A091252(n+1))%A091209(n+1)`
-/

namespace A091251.P17587743243257943884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091227 (A091252 (n + 1)).toNat) (A091209 (n + 1))

end

end A091251.P17587743243257943884

/-! ## A091251.P16204707462204494176

`∪[A329753(n+1), A091227(A091252(n+2))]`
-/

namespace A091251.P16204707462204494176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A091252 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091251.P16204707462204494176

/-! ## A091251.P6306664858121058814

`A091234(2*n+1)+A091227(A091252(n+1))`
-/

namespace A091251.P6306664858121058814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091234 (2 * n + 1) + A091227 (A091252 (n + 1)).toNat

end

end A091251.P6306664858121058814

/-!
# A091252: Nonprimitive irreducible polynomials over GF(2).

The programs for A091252, there is no canonical definition to state claims against.
-/

/-! ## A091252.P1842622130297482581

`A014580(A091251(n+1))`
-/

namespace A091252.P1842622130297482581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A091251 (n + 1)).toNat

end

end A091252.P1842622130297482581

/-! ## A091252.P1492738327931861522

`A091202(∑{p}[A000040(A091251(n+1)), #])`
-/

namespace A091252.P1492738327931861522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091252.P1492738327931861522

/-! ## A091252.P18371731008794893544

`A091202(∏{p}[A000040(A091251(n+1)), #])`
-/

namespace A091252.P18371731008794893544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091252.P18371731008794893544

/-!
# A091253: Nonprimitive irreducible polynomials over GF(2) in binary format.

The programs for A091253, there is no canonical definition to state claims against.
-/

/-! ## A091253.P2659896430493728748

`A007088(A091252(n+1))`
-/

namespace A091253.P2659896430493728748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091252 (n + 1)).toNat

end

end A091253.P2659896430493728748

/-! ## A091253.P17573281990017017649

`A058943(A091251(n+1))`
-/

namespace A091253.P17573281990017017649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058943 (A091251 (n + 1)).toNat

end

end A091253.P17573281990017017649

/-! ## A091253.P5959507671492578438

`A185544(2*A091252(n+1))`
-/

namespace A091253.P5959507671492578438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A091252 (n + 1)).toNat

end

end A091253.P5959507671492578438

/-! ## A091253.P9505762302770015785

`A228071(A091252(n+1))+A014580(A091251(n+1))`
-/

namespace A091253.P9505762302770015785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 (A091252 (n + 1)).toNat + A014580 (A091251 (n + 1)).toNat

end

end A091253.P9505762302770015785

/-!
# A091254: Reducible polynomials over GF(2) in binary format.

The programs for A091254, there is no canonical definition to state claims against.
-/

/-! ## A091254.P8274598300615271057

`A007088(A091242(n+1))`
-/

namespace A091254.P8274598300615271057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A091242 (n + 1)).toNat

end

end A091254.P8274598300615271057

/-! ## A091254.P1620849862865523507

`A007088(lt[0, A091247(n)])`
-/

namespace A091254.P1620849862865523507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091254.P1620849862865523507

/-! ## A091254.P3838803068121327880

`A007088(eq[1, A091247(n)])`
-/

namespace A091254.P3838803068121327880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091254.P3838803068121327880

/-! ## A091254.P2978735445931117432

`A185544(2*A091242(n+1))`
-/

namespace A091254.P2978735445931117432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A091242 (n + 1)).toNat

end

end A091254.P2978735445931117432

/-!
# A091255: Square array computed from gcd(P(x),P(y)) where P(x) and P(y) are polynomials with coefficients in {0,1} given by the binary expansions of x and y, and the polynomial calculation is done over GF(2), with the result converted back to a binary number, and then expressed in decimal. Array is symmetric, and is read by falling antidiagonals.

The programs for A091255, there is no canonical definition to state claims against.
-/

/-! ## A091255.P5512358345657017218

`A327857(A054238(n))`
-/

namespace A091255.P5512358345657017218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327857 (A054238 n).toNat

end

end A091255.P5512358345657017218

/-! ## A091255.P16911750406133732773

`A327857(A346453(n))`
-/

namespace A091255.P16911750406133732773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327857 (A346453 n).toNat

end

end A091255.P16911750406133732773

/-! ## A091255.P6598531517474262783

`or(A003989(n+1), A014082(A160401(n+1)))`
-/

namespace A091255.P6598531517474262783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003989 (n + 1)) (A014082 (A160401 (n + 1)).toNat)

end

end A091255.P6598531517474262783

/-! ## A091255.P5827246456577061590

`or(A003989(n+1), A082859(A187596(n)))`
-/

namespace A091255.P5827246456577061590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003989 (n + 1)) (A082859 (A187596 n).toNat)

end

end A091255.P5827246456577061590

/-! ## A091255.P4444612601930818667

`or(A003989(n+1), A014082(A051128(n+1)))`
-/

namespace A091255.P4444612601930818667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003989 (n + 1)) (A014082 (A051128 (n + 1)).toNat)

end

end A091255.P4444612601930818667

/-! ## A091255.P15549023952659666617

`or(A014082(A051128(n+1)), A287957(n+1))`
-/

namespace A091255.P15549023952659666617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 (A051128 (n + 1)).toNat) (A287957 (n + 1))

end

end A091255.P15549023952659666617

/-!
# A091256: Table of lcm(x,y) computed for polynomials over GF(2), where (x,y) runs as (1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

The programs for A091256, there is no canonical definition to state claims against.
-/

/-! ## A091256.P13790672541614401680

`A003990(n+1)%A201836(A111241(n+2))`
-/

namespace A091256.P13790672541614401680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003990 (n + 1)) (A201836 (A111241 (n + 2)).toNat)

end

end A091256.P13790672541614401680

/-! ## A091256.P2875245434758681870

`A287958(n+1)%A201836(A111241(n+2))`
-/

namespace A091256.P2875245434758681870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287958 (n + 1)) (A201836 (A111241 (n + 2)).toNat)

end

end A091256.P2875245434758681870

/-! ## A091256.P15545682739483977559

`A290103(A073060(n))%A201836(A111241(n+2))`
-/

namespace A091256.P15545682739483977559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A073060 n).toNat) (A201836 (A111241 (n + 2)).toNat)

end

end A091256.P15545682739483977559

/-! ## A091256.P3425416136224944369

`A004736(A286101(n+1))%A201836(A111241(n+2))`
-/

namespace A091256.P3425416136224944369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (A286101 (n + 1)).toNat) (A201836 (A111241 (n + 2)).toNat)

end

end A091256.P3425416136224944369

/-! ## A091256.P12992728182771823800

`A290103(A098350(n+1))%A201836(A111241(n+2))`
-/

namespace A091256.P12992728182771823800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A098350 (n + 1)).toNat) (A201836 (A111241 (n + 2)).toNat)

end

end A091256.P12992728182771823800

/-!
# A091257: Multiplication table A x B computed for polynomials over GF(2), where (A,B) runs as (1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

The programs for A091257, there is no canonical definition to state claims against.
-/

/-! ## A091257.P799023394311831411

`A048720((n-comp[∑[n]])²-n)`
-/

namespace A091257.P799023394311831411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A091257.P799023394311831411

/-! ## A091257.P6051662979965761391

`A000027(A048720(2*comp[∑[n]]-n))`
-/

namespace A091257.P6051662979965761391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048720 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A091257.P6051662979965761391

/-! ## A091257.P7175943144021300386

`A284579(A043569(n+1))`
-/

namespace A091257.P7175943144021300386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A043569 (n + 1)).toNat

end

end A091257.P7175943144021300386

/-! ## A091257.P12622197259525324215

`A284579(A030130(n+1)+1)`
-/

namespace A091257.P12622197259525324215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A030130 (n + 1) + 1).toNat

end

end A091257.P12622197259525324215

/-! ## A091257.P2718736297899303953

`A284579(A204985(n+1))`
-/

namespace A091257.P2718736297899303953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A204985 (n + 1)).toNat

end

end A091257.P2718736297899303953

/-! ## A091257.P8402644906627994041

`A284579(A190620(n+1))`
-/

namespace A091257.P8402644906627994041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A190620 (n + 1)).toNat

end

end A091257.P8402644906627994041

/-!
# A091258: Denominator of sigma_3(n)/sigma(n).

The programs for A091258, the canonical program `A091258.P3360202150782361394` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091258 has offset 1).

The definition of A091258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091258.P3360202150782361394

`A000203(n+1)/A001158(n+1)*A091259(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091258

/-- `A000203(n+1)/A001158(n+1)*A091259(n+1)` -/
def P3360202150782361394.Spec : Prop :=
  ∀ n, P3360202150782361394.a n = (A091258 (n + 1) : ℚ)

end A091258

/-! ## A091258.P2264005167579724713

`A072861(n+1)*A091259(n+1)/A379813(n+1)`
-/

namespace A091258.P2264005167579724713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) * A091259 (n + 1) : ℚ) / (A379813 (n + 1) : ℚ)

end

end A091258.P2264005167579724713

namespace A091258

/-- `A072861(n+1)*A091259(n+1)/A379813(n+1)` -/
def P2264005167579724713.Spec : Prop :=
  ∀ n, P2264005167579724713.a n = (A091258 (n + 1) : ℚ)

end A091258

/-! ## A091258.P387357818629816583

`A076835(n+1)/gcd(A076835(n+1), A145094(n+1))`
-/

namespace A091258.P387357818629816583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076835 (n + 1) : ℚ) / (Int.gcd (A076835 (n + 1)) (A145094 (n + 1)) : ℚ)

end

end A091258.P387357818629816583

namespace A091258

/-- `A076835(n+1)/gcd(A076835(n+1), A145094(n+1))` -/
def P387357818629816583.Spec : Prop :=
  ∀ n, P387357818629816583.a n = (A091258 (n + 1) : ℚ)

end A091258

/-! ## A091258.P14405784353214303745

`A001157(n+1)/gcd(A001157(n+1), A320917(n+1))`
-/

namespace A091258.P14405784353214303745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A320917 (n + 1)) : ℚ)

end

end A091258.P14405784353214303745

namespace A091258

/-- `A001157(n+1)/gcd(A001157(n+1), A320917(n+1))` -/
def P14405784353214303745.Spec : Prop :=
  ∀ n, P14405784353214303745.a n = (A091258 (n + 1) : ℚ)

end A091258

/-! ## A091258.P13195052756645591397

`lcm(A004009(n+1), A006352(n+1))/A004009(n+1)`
-/

namespace A091258.P13195052756645591397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004009 (n + 1)) (A006352 (n + 1)) : ℚ) / (A004009 (n + 1) : ℚ)

end

end A091258.P13195052756645591397

namespace A091258

/-- `lcm(A004009(n+1), A006352(n+1))/A004009(n+1)` -/
def P13195052756645591397.Spec : Prop :=
  ∀ n, P13195052756645591397.a n = (A091258 (n + 1) : ℚ)

end A091258

/-! ## A091258.P6953014015845528706

`lcm(A204271(n+1), A204273(n+1))/A204273(n+1)`
-/

namespace A091258.P6953014015845528706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A204271 (n + 1)) (A204273 (n + 1)) : ℚ) / (A204273 (n + 1) : ℚ)

end

end A091258.P6953014015845528706

namespace A091258

/-- `lcm(A204271(n+1), A204273(n+1))/A204273(n+1)` -/
def P6953014015845528706.Spec : Prop :=
  ∀ n, P6953014015845528706.a n = (A091258 (n + 1) : ℚ)

end A091258

/-!
# A091259: Numerator of sigma_3(n)/sigma(n).

The programs for A091259, the canonical program `A091259.P8343096031813082680` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091259 has offset 1).

The definition of A091259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091259.P7756963907717468341

`A001158(n+1)/A000203(n+1)*A091258(n+1)`
-/

namespace A091259.P7756963907717468341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A091258 (n + 1) : ℚ)

end

end A091259.P7756963907717468341

namespace A091259

/-- `A001158(n+1)/A000203(n+1)*A091258(n+1)` -/
def P7756963907717468341.Spec : Prop :=
  ∀ n, P7756963907717468341.a n = (A091259 (n + 1) : ℚ)

end A091259

/-! ## A091259.P15178878688443621907

`A091258(n+1)/A001157(n+1)*A320917(n+1)`
-/

namespace A091259.P15178878688443621907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091258 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A320917 (n + 1) : ℚ)

end

end A091259.P15178878688443621907

namespace A091259

/-- `A091258(n+1)/A001157(n+1)*A320917(n+1)` -/
def P15178878688443621907.Spec : Prop :=
  ∀ n, P15178878688443621907.a n = (A091259 (n + 1) : ℚ)

end A091259

/-! ## A091259.P8343096031813082680

`A001158(n+1)/gcd(A001158(n+1), A074400(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091259

/-- `A001158(n+1)/gcd(A001158(n+1), A074400(n+1))` -/
def P8343096031813082680.Spec : Prop :=
  ∀ n, P8343096031813082680.a n = (A091259 (n + 1) : ℚ)

end A091259

/-! ## A091259.P6210764984148640998

`A001158(n+1)/A000027(A000203(n+1)/A091258(n+1))`
-/

namespace A091259.P6210764984148640998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ))).toNat : ℚ)

end

end A091259.P6210764984148640998

namespace A091259

/-- `A001158(n+1)/A000027(A000203(n+1)/A091258(n+1))` -/
def P6210764984148640998.Spec : Prop :=
  ∀ n, P6210764984148640998.a n = (A091259 (n + 1) : ℚ)

end A091259

/-! ## A091259.P11600329868477814044

`lcm(A204271(n+1), A204273(n+1))/A204271(n+1)`
-/

namespace A091259.P11600329868477814044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A204271 (n + 1)) (A204273 (n + 1)) : ℚ) / (A204271 (n + 1) : ℚ)

end

end A091259.P11600329868477814044

namespace A091259

/-- `lcm(A204271(n+1), A204273(n+1))/A204271(n+1)` -/
def P11600329868477814044.Spec : Prop :=
  ∀ n, P11600329868477814044.a n = (A091259 (n + 1) : ℚ)

end A091259

/-!
# A091260: Denominator of sigma_3(n)/sigma_2(n).

The programs for A091260, the canonical program `A091260.P1855919974822758538` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091260 has offset 1).

The definition of A091260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091260.P1855919974822758538

`∑{d}[n+1, #²]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²])`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091260

/-- `∑{d}[n+1, #²]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²])` -/
def P1855919974822758538.Spec : Prop :=
  ∀ n, P1855919974822758538.a n = (A091260 (n + 1) : ℚ)

end A091260

/-! ## A091260.P13379825977897311909

`lcm(∑{d}[n+1, #^3], ∑{d}[n+1, #²])/∑{d}[n+1, #^3]`
-/

namespace A091260.P13379825977897311909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ d ∈ Nat.divisors (f1 n), d ^ 3) (∑ d ∈ Nat.divisors (f2 n), d ^ 2) : ℚ) / ((∑ d ∈ Nat.divisors (f3 n), d ^ 3 : ℕ) : ℚ)

end

end A091260.P13379825977897311909

namespace A091260

/-- `lcm(∑{d}[n+1, #^3], ∑{d}[n+1, #²])/∑{d}[n+1, #^3]` -/
def P13379825977897311909.Spec : Prop :=
  ∀ n, P13379825977897311909.a n = (A091260 (n + 1) : ℚ)

end A091260

/-! ## A091260.P1406410999627442372

`A001157(n+1)/A001158(n+1)*A298754(n+1)`
-/

namespace A091260.P1406410999627442372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A298754 (n + 1) : ℚ)

end

end A091260.P1406410999627442372

namespace A091260

/-- `A001157(n+1)/A001158(n+1)*A298754(n+1)` -/
def P1406410999627442372.Spec : Prop :=
  ∀ n, P1406410999627442372.a n = (A091260 (n + 1) : ℚ)

end A091260

/-! ## A091260.P18221602389359833795

`A204272(n+1)/gcd(A204272(n+1), A204273(n+1))`
-/

namespace A091260.P18221602389359833795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204272 (n + 1) : ℚ) / (Int.gcd (A204272 (n + 1)) (A204273 (n + 1)) : ℚ)

end

end A091260.P18221602389359833795

namespace A091260

/-- `A204272(n+1)/gcd(A204272(n+1), A204273(n+1))` -/
def P18221602389359833795.Spec : Prop :=
  ∀ n, P18221602389359833795.a n = (A091260 (n + 1) : ℚ)

end A091260

/-!
# A091262: Sum of totient function values of powers of n, as exponent runs from 1 to n.

The programs for A091262, there is no canonical definition to state claims against.
-/

/-! ## A091262.P7584020554401377991

`Δ[A002088(n)]*A023037(n+1)`
-/

namespace A091262.P7584020554401377991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A023037 (n + 1)

end

end A091262.P7584020554401377991

/-! ## A091262.P16458976905414932410

`A000010(n+1)*A023037(n+1)`
-/

namespace A091262.P16458976905414932410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A023037 (n + 1)

end

end A091262.P16458976905414932410

/-! ## A091262.P14206831618996174151

`A023037(n+1)*A349137(Δ[n²])`
-/

namespace A091262.P14206831618996174151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (n + 1) * A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091262.P14206831618996174151

/-! ## A091262.P16224930088251534780

`(A109606(n+1)+1)*A023037(n+1)`
-/

namespace A091262.P16224930088251534780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A023037 (n + 1)

end

end A091262.P16224930088251534780

/-! ## A091262.P3198432144589380231

`(n-A219428(n+1))*A023037(n+1)`
-/

namespace A091262.P3198432144589380231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A023037 (n + 1)

end

end A091262.P3198432144589380231

/-!
# A091264: Matrix defined by a(n,k) = 2^n + (k-1), read by antidiagonals.

The programs for A091264, there is no canonical definition to state claims against.
-/

/-! ## A091264.P13821986253193609121

`2^(C(comp[∑[n]]-n, 2)-(n+1))+A002262(n)-1`
-/

namespace A091264.P13821986253193609121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) + (A002262 n - 1 : ℚ)

end

end A091264.P13821986253193609121

/-! ## A091264.P4511847803013416208

`A000295(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n+1]]]`
-/

namespace A091264.P4511847803013416208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A091264.P4511847803013416208

/-! ## A091264.P9766244511338689898

`2^(C(comp[∑[n]]-n, 2)-(n+1))+A002260(n+1)-2`
-/

namespace A091264.P9766244511338689898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) + (A002260 (n + 1) - 2 : ℚ)

end

end A091264.P9766244511338689898

/-! ## A091264.P382656453246317824

`A000225(C(comp[∑[n]]-n, 2)-(n+1))+n-C(∑[char[∑[n]]], 2)`
-/

namespace A091264.P382656453246317824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A091264.P382656453246317824

/-! ## A091264.P8876864745180623700

`A279119(2^(C(comp[∑[n]]-n, 2)-n))+n-C(∑[char[∑[n]]], 2)`
-/

namespace A091264.P8876864745180623700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A091264.P8876864745180623700

/-! ## A091264.P16253175162570120209

`A000918(C(comp[∑[n]]-n, 2)-(n+1))+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A091264.P16253175162570120209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ))

end

end A091264.P16253175162570120209

/-! ## A091264.P3527339042697205254

`A271519(A130328(n))`
-/

namespace A091264.P3527339042697205254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (A130328 n).toNat

end

end A091264.P3527339042697205254

/-! ## A091264.P5475211893597379369

`A087808(A099627(n))-1`
-/

namespace A091264.P5475211893597379369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A099627 n).toNat - 1

end

end A091264.P5475211893597379369

/-! ## A091264.P7137365957326196895

`A127330(n)-A089633(n)`
-/

namespace A091264.P7137365957326196895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 n - A089633 n

end

end A091264.P7137365957326196895

/-! ## A091264.P3938071834176040527

`A271519(A018900(n+1))-1`
-/

namespace A091264.P3938071834176040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (A018900 (n + 1)).toNat - 1

end

end A091264.P3938071834176040527

/-!
# A091265: Take sequence of prime numbers (A000040) and reverse successive subsequences of lengths 1,2,3,4,...

The programs for A091265, the canonical program `A091265.P3388824324512952485` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091265 has offset 1).

The definition of A091265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091265.P3388824324512952485

`A000040(A038722(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091265

/-- `A000040(A038722(n+1))` -/
def P3388824324512952485.Spec : Prop :=
  ∀ n, P3388824324512952485.a n = A091265 (n + 1)

theorem P3388824324512952485.correct : P3388824324512952485.Spec := by
  intro n
  simp only [A091265, Nat.add_sub_cancel]

end A091265

/-! ## A091265.P8966301234051174019

`A001748(∑[char[∑[n]]]²-n)/3`
-/

namespace A091265.P8966301234051174019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 3

end

end A091265.P8966301234051174019

namespace A091265

/-- `A001748(∑[char[∑[n]]]²-n)/3` -/
def P8966301234051174019.Spec : Prop :=
  ∀ n, P8966301234051174019.a n = (A091265 (n + 1) : ℚ)

end A091265

/-! ## A091265.P13070731940117759287

`A000040(∑[char[∑[n]]]²-n)`
-/

namespace A091265.P13070731940117759287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A091265.P13070731940117759287

namespace A091265

/-- `A000040(∑[char[∑[n]]]²-n)` -/
def P13070731940117759287.Spec : Prop :=
  ∀ n, P13070731940117759287.a n = A091265 (n + 1)

end A091265

/-! ## A091265.P316047949195961598

`A006093(∑[char[∑[n]]]²-n)+1`
-/

namespace A091265.P316047949195961598
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A091265.P316047949195961598

namespace A091265

/-- `A006093(∑[char[∑[n]]]²-n)+1` -/
def P316047949195961598.Spec : Prop :=
  ∀ n, P316047949195961598.a n = A091265 (n + 1)

end A091265

/-! ## A091265.P2108653261192195931

`A008578(∑[char[∑[n]]]²+1-n)`
-/

namespace A091265.P2108653261192195931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A091265.P2108653261192195931

namespace A091265

/-- `A008578(∑[char[∑[n]]]²+1-n)` -/
def P2108653261192195931.Spec : Prop :=
  ∀ n, P2108653261192195931.a n = A091265 (n + 1)

end A091265

/-! ## A091265.P8110650561336950117

`A008864(∑[char[∑[n]]]²-n)-1`
-/

namespace A091265.P8110650561336950117
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A091265.P8110650561336950117

namespace A091265

/-- `A008864(∑[char[∑[n]]]²-n)-1` -/
def P8110650561336950117.Spec : Prop :=
  ∀ n, P8110650561336950117.a n = A091265 (n + 1)

end A091265

/-! ## A091265.P5040395503082780747

`A040976(∑[char[∑[n]]]²-n)+2`
-/

namespace A091265.P5040395503082780747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 2

end

end A091265.P5040395503082780747

namespace A091265

/-- `A040976(∑[char[∑[n]]]²-n)+2` -/
def P5040395503082780747.Spec : Prop :=
  ∀ n, P5040395503082780747.a n = A091265 (n + 1)

end A091265

/-! ## A091265.P1885305694200519334

`A100484(A061579(n)+1)/2`
-/

namespace A091265.P1885305694200519334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A061579 n + 1).toNat : ℚ) / 2

end

end A091265.P1885305694200519334

namespace A091265

/-- `A100484(A061579(n)+1)/2` -/
def P1885305694200519334.Spec : Prop :=
  ∀ n, P1885305694200519334.a n = (A091265 (n + 1) : ℚ)

end A091265

/-! ## A091265.P16263281758313394721

`∏{p}[A000040(A061579(n)+1), #]`
-/

namespace A091265.P16263281758313394721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061579 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091265.P16263281758313394721

namespace A091265

/-- `∏{p}[A000040(A061579(n)+1), #]` -/
def P16263281758313394721.Spec : Prop :=
  ∀ n, (P16263281758313394721.a n : ℤ) = A091265 (n + 1)

end A091265

/-! ## A091265.P16234494255089408503

`∏{p}[A000040(∑[A010054(n)]²-n), #]`
-/

namespace A091265.P16234494255089408503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091265.P16234494255089408503

namespace A091265

/-- `∏{p}[A000040(∑[A010054(n)]²-n), #]` -/
def P16234494255089408503.Spec : Prop :=
  ∀ n, (P16234494255089408503.a n : ℤ) = A091265 (n + 1)

end A091265

/-! ## A091265.P909081172668543131

`∑{p}[A000040(A002024(n+1)²-n), #]`
-/

namespace A091265.P909081172668543131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091265.P909081172668543131

namespace A091265

/-- `∑{p}[A000040(A002024(n+1)²-n), #]` -/
def P909081172668543131.Spec : Prop :=
  ∀ n, (P909081172668543131.a n : ℤ) = A091265 (n + 1)

end A091265

/-! ## A091265.P8475419202850587466

`A000040(∑[A010054(n)]²-n)%A000040(n+1)²`
-/

namespace A091265.P8475419202850587466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat) (A000040 (n + 1) ^ 2)

end

end A091265.P8475419202850587466

namespace A091265

/-- `A000040(∑[A010054(n)]²-n)%A000040(n+1)²` -/
def P8475419202850587466.Spec : Prop :=
  ∀ n, P8475419202850587466.a n = A091265 (n + 1)

end A091265

/-!
# A091266: Number of orbits of length n under the map whose periodic points are counted by A061694.

The programs for A091266, there is no canonical definition to state claims against.
-/

/-! ## A091266.P5709999780144428027

`A064877(A364167(n)+1)`
-/

namespace A091266.P5709999780144428027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064877 (A364167 n + 1).toNat

end

end A091266.P5709999780144428027

/-!
# A091267: Lengths of runs of 3's in A039702.

The programs for A091267, the canonical program `A091267.P93764247883844518` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091267 has offset 1).

The definition of A091267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091267.P93764247883844518

`A091237(2*(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091267

/-- `A091237(2*(n+1))` -/
def P93764247883844518.Spec : Prop :=
  ∀ n, P93764247883844518.a n = A091267 (n + 1)

theorem P93764247883844518.correct : P93764247883844518.Spec := by
  intro n
  simp only [A091267, Nat.add_sub_cancel]

end A091267

/-! ## A091267.P10255951706169324674

`A091237(n+2+n)%13`
-/

namespace A091267.P10255951706169324674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091237 (n + 2 + n)) 13

end

end A091267.P10255951706169324674

namespace A091267

/-- `A091237(n+2+n)%13` -/
def P10255951706169324674.Spec : Prop :=
  ∀ n, P10255951706169324674.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P8761267899032713256

`lcm(Δ[A008611(n)], A091237(n+2+n))`
-/

namespace A091267.P8761267899032713256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A091237 (n + 2 + n))

end

end A091267.P8761267899032713256

namespace A091267

/-- `lcm(Δ[A008611(n)], A091237(n+2+n))` -/
def P8761267899032713256.Spec : Prop :=
  ∀ n, (P8761267899032713256.a n : ℤ) = A091267 (n + 1)

end A091267

/-! ## A091267.P11898343416952378583

`A091237(n+2+n)+A000332(Δ[A000194(n)])`
-/

namespace A091267.P11898343416952378583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 2 + n) + A000332 (f1 (n + 1) - f1 n).toNat

end

end A091267.P11898343416952378583

namespace A091267

/-- `A091237(n+2+n)+A000332(Δ[A000194(n)])` -/
def P11898343416952378583.Spec : Prop :=
  ∀ n, P11898343416952378583.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P14333869633471773805

`A161680(Δ[A000194(n)])+A091237(n+2+n)`
-/

namespace A091267.P14333869633471773805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (f1 (n + 1) - f1 n).toNat + A091237 (n + 2 + n)

end

end A091267.P14333869633471773805

namespace A091267

/-- `A161680(Δ[A000194(n)])+A091237(n+2+n)` -/
def P14333869633471773805.Spec : Prop :=
  ∀ n, P14333869633471773805.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P15895105766329570791

`A173196(Δ[A000194(n)])+A091237(n+2+n)`
-/

namespace A091267.P15895105766329570791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (f1 (n + 1) - f1 n).toNat + A091237 (n + 2 + n)

end

end A091267.P15895105766329570791

namespace A091267

/-- `A173196(Δ[A000194(n)])+A091237(n+2+n)` -/
def P15895105766329570791.Spec : Prop :=
  ∀ n, P15895105766329570791.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P7536043310259505222

`A091237(n+2+n)/A000142(Δ[A000194(n)])`
-/

namespace A091267.P7536043310259505222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091237 (n + 2 + n) : ℚ) / (A000142 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A091267.P7536043310259505222

namespace A091267

/-- `A091237(n+2+n)/A000142(Δ[A000194(n)])` -/
def P7536043310259505222.Spec : Prop :=
  ∀ n, P7536043310259505222.a n = (A091267 (n + 1) : ℚ)

end A091267

/-! ## A091267.P11529122803685925768

`A091237(n+2+n)/A000120(A061142(n+1))`
-/

namespace A091267.P11529122803685925768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091237 (n + 2 + n) : ℚ) / (A000120 (A061142 (n + 1)).toNat : ℚ)

end

end A091267.P11529122803685925768

namespace A091267

/-- `A091237(n+2+n)/A000120(A061142(n+1))` -/
def P11529122803685925768.Spec : Prop :=
  ∀ n, P11529122803685925768.a n = (A091267 (n + 1) : ℚ)

end A091267

/-! ## A091267.P4687084594513416464

`A091237(n+2+n)+A002264(Δ[A005811(n)]+1)`
-/

namespace A091267.P4687084594513416464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 2 + n) + A002264 (f1 (n + 1) - f1 n + 1).toNat

end

end A091267.P4687084594513416464

namespace A091267

/-- `A091237(n+2+n)+A002264(Δ[A005811(n)]+1)` -/
def P4687084594513416464.Spec : Prop :=
  ∀ n, P4687084594513416464.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P9258444143630680213

`A091237(n+2+n)/A008611(Δ[A005811(n)]+1)`
-/

namespace A091267.P9258444143630680213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091237 (n + 2 + n) : ℚ) / (A008611 (f1 (n + 1) - f1 n + 1).toNat : ℚ)

end

end A091267.P9258444143630680213

namespace A091267

/-- `A091237(n+2+n)/A008611(Δ[A005811(n)]+1)` -/
def P9258444143630680213.Spec : Prop :=
  ∀ n, P9258444143630680213.a n = (A091267 (n + 1) : ℚ)

end A091267

/-! ## A091267.P16049757597540653507

`A091237(n+2+n)/A027465(Δ[A005811(n)]+1)`
-/

namespace A091267.P16049757597540653507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091237 (n + 2 + n) : ℚ) / (A027465 (f1 (n + 1) - f1 n + 1).toNat : ℚ)

end

end A091267.P16049757597540653507

namespace A091267

/-- `A091237(n+2+n)/A027465(Δ[A005811(n)]+1)` -/
def P16049757597540653507.Spec : Prop :=
  ∀ n, P16049757597540653507.a n = (A091267 (n + 1) : ℚ)

end A091267

/-! ## A091267.P5825963142986273224

`Δ[record[A292376(4*n+1)]]`
-/

namespace A091267.P5825963142986273224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292376 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P5825963142986273224

namespace A091267

/-- `Δ[record[A292376(4*n+1)]]` -/
def P5825963142986273224.Spec : Prop :=
  ∀ n, P5825963142986273224.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P13873010386681940880

`Δ[record[A292377(A017089(n)/2)]]`
-/

namespace A091267.P13873010386681940880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P13873010386681940880

namespace A091267

/-- `Δ[record[A292377(A017089(n)/2)]]` -/
def P13873010386681940880.Spec : Prop :=
  ∀ n, P13873010386681940880.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P17129114753983679012

`Δ[record[A292377(A004773(n+1))]]`
-/

namespace A091267.P17129114753983679012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A004773 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P17129114753983679012

namespace A091267

/-- `Δ[record[A292377(A004773(n+1))]]` -/
def P17129114753983679012.Spec : Prop :=
  ∀ n, P17129114753983679012.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P8695549459479594290

`Δ[record[A292377(A332819(n+1))]]`
-/

namespace A091267.P8695549459479594290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A332819 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P8695549459479594290

namespace A091267

/-- `Δ[record[A292377(A332819(n+1))]]` -/
def P8695549459479594290.Spec : Prop :=
  ∀ n, P8695549459479594290.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P8102517577740449328

`Δ[record[A292377(A332893(n+1))]]`
-/

namespace A091267.P8102517577740449328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A332893 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P8102517577740449328

namespace A091267

/-- `Δ[record[A292377(A332893(n+1))]]` -/
def P8102517577740449328.Spec : Prop :=
  ∀ n, P8102517577740449328.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P15355220203614515589

`Δ[record[A292377(A017089(n))]]`
-/

namespace A091267.P15355220203614515589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A017089 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091267.P15355220203614515589

namespace A091267

/-- `Δ[record[A292377(A017089(n))]]` -/
def P15355220203614515589.Spec : Prop :=
  ∀ n, P15355220203614515589.a n = A091267 (n + 1)

end A091267

/-! ## A091267.P16066120106715151349

`A091237(n+2+n)+A010051((n+1)²)`
-/

namespace A091267.P16066120106715151349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 2 + n) + A010051 ((n + 1) ^ 2)

end

end A091267.P16066120106715151349

namespace A091267

/-- `A091237(n+2+n)+A010051((n+1)²)` -/
def P16066120106715151349.Spec : Prop :=
  ∀ n, P16066120106715151349.a n = A091267 (n + 1)

end A091267

/-!
# A091269: a(n) = length of longest prefix of binary representation of n that is also a suffix of that of n+1.

The programs for A091269, there is no canonical definition to state claims against.
-/

/-! ## A091269.P14288234129201011382

`A091064(A147756(n)+A054977(n))`
-/

namespace A091269.P14288234129201011382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A147756 n + A054977 n).toNat

end

end A091269.P14288234129201011382

/-! ## A091269.P13665832286514283908

`A091064(A147756(n)+A057427(n))`
-/

namespace A091269.P13665832286514283908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A147756 n + A057427 n).toNat

end

end A091269.P13665832286514283908

/-! ## A091269.P14224647252171719042

`A091064(A178334(n)+A147756(n))`
-/

namespace A091269.P14224647252171719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A178334 n + A147756 n).toNat

end

end A091269.P14224647252171719042

/-! ## A091269.P2347209316164663689

`A091064(2-(A054977(n)-A147756(n)))`
-/

namespace A091269.P2347209316164663689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (2 - (A054977 n - A147756 n)).toNat

end

end A091269.P2347209316164663689

/-! ## A091269.P3093639732566951826

`A091064(2-(A057427(n)-A147756(n)))`
-/

namespace A091269.P3093639732566951826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (2 - (A057427 n - A147756 n)).toNat

end

end A091269.P3093639732566951826

/-! ## A091269.P2885331389712443780

`A091064(2-(A178334(n)-A147756(n)))`
-/

namespace A091269.P2885331389712443780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (2 - (A178334 n - A147756 n)).toNat

end

end A091269.P2885331389712443780

/-! ## A091269.P15411746047373852530

`A091064(A147756(n)+Δ[A092754(n+1)])`
-/

namespace A091269.P15411746047373852530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A147756 n + (f1 (n + 1) - f1 n)).toNat

end

end A091269.P15411746047373852530

/-! ## A091269.P10669626076747493896

`A091064(A020330(n+1)-A062383(n))`
-/

namespace A091269.P10669626076747493896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A020330 (n + 1) - A062383 n).toNat

end

end A091269.P10669626076747493896

/-!
# A091270: Smallest number having in binary representation a prefix of length n that is also a suffix of its successor.

The programs for A091270, the canonical program `A091270.P4596289352789913308` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091270 has offset 0).

The definition of A091270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091270.P7969366516192755927

`∑[2^n-char[2]]-1`
-/

namespace A091270.P7969366516192755927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A091270.P7969366516192755927

namespace A091270

/-- `∑[2^n-char[2]]-1` -/
def P7969366516192755927.Spec : Prop :=
  ∀ n, P7969366516192755927.a n = A091270 n

end A091270

/-! ## A091270.P6518060828887484306

`ogf((2x-x^2+2x^3)/(1-3x+2x^2))`
-/

namespace A091270.P6518060828887484306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 2] [1, -3, 2] n

end

end A091270.P6518060828887484306

namespace A091270

/-- `ogf((2x-x^2+2x^3)/(1-3x+2x^2))` -/
def P6518060828887484306.Spec : Prop :=
  ∀ n, P6518060828887484306.a n = A091270 n

end A091270

/-! ## A091270.P4596289352789913308

`∑[2*a(n-1)]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091270

/-- `∑[2*a(n-1)]` -/
def P4596289352789913308.Spec : Prop :=
  ∀ n, (P4596289352789913308.a n : ℤ) = A091270 n

theorem P4596289352789913308.correct : P4596289352789913308.Spec := by
  intro n
  simp only [A091270]

end A091270

/-! ## A091270.P10085712917452801281

`or(2^n, a(n-1))` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A091270.P10085712917452801281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  Nat.lor (2 ^ n) (a (n - 1))

end

end A091270.P10085712917452801281

namespace A091270

/-- `or(2^n, a(n-1))` -/
def P10085712917452801281.Spec : Prop :=
  ∀ n, (P10085712917452801281.a n : ℤ) = A091270 n

end A091270

/-! ## A091270.P16936407291959261285

`xor(2^n, a(n-1))` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A091270.P16936407291959261285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  Nat.xor (2 ^ n) (a (n - 1))

end

end A091270.P16936407291959261285

namespace A091270

/-- `xor(2^n, a(n-1))` -/
def P16936407291959261285.Spec : Prop :=
  ∀ n, (P16936407291959261285.a n : ℤ) = A091270 n

end A091270

/-! ## A091270.P6865571116137081099

`floor(a(n-1)+a(n-1)+3)` with `a(0)=0, a(1)=2, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A091270.P6865571116137081099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A091270.P6865571116137081099

namespace A091270

/-- `floor(a(n-1)+a(n-1)+3)` -/
def P6865571116137081099.Spec : Prop :=
  ∀ n, (P6865571116137081099.a n : ℤ) = A091270 n

end A091270

/-! ## A091270.P16076608625330832347

`∑[A155559(n)-char[2]]`
-/

namespace A091270.P16076608625330832347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091270.P16076608625330832347

namespace A091270

/-- `∑[A155559(n)-char[2]]` -/
def P16076608625330832347.Spec : Prop :=
  ∀ n, P16076608625330832347.a n = A091270 n

end A091270

/-! ## A091270.P9200611313403633995

`xor(A266070(n), A290073(n))`
-/

namespace A091270.P9200611313403633995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266070 n) (A290073 n)

end

end A091270.P9200611313403633995

namespace A091270

/-- `xor(A266070(n), A290073(n))` -/
def P9200611313403633995.Spec : Prop :=
  ∀ n, P9200611313403633995.a n = A091270 n

end A091270

/-! ## A091270.P80818278019162090

`xor(A267043(n), A290194(n))`
-/

namespace A091270.P80818278019162090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267043 n) (A290194 n)

end

end A091270.P80818278019162090

namespace A091270

/-- `xor(A267043(n), A290194(n))` -/
def P80818278019162090.Spec : Prop :=
  ∀ n, P80818278019162090.a n = A091270 n

end A091270

/-! ## A091270.P6331891261186845952

`xor(A019590(n+1), A290113(n))`
-/

namespace A091270.P6331891261186845952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A290113 n)

end

end A091270.P6331891261186845952

namespace A091270

/-- `xor(A019590(n+1), A290113(n))` -/
def P6331891261186845952.Spec : Prop :=
  ∀ n, P6331891261186845952.a n = A091270 n

end A091270

/-! ## A091270.P11888671886193993885

`∑[A000079(n)-A036987(A000982(n)+1)]`
-/

namespace A091270.P11888671886193993885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A036987 (A000982 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091270.P11888671886193993885

namespace A091270

/-- `∑[A000079(n)-A036987(A000982(n)+1)]` -/
def P11888671886193993885.Spec : Prop :=
  ∀ n, P11888671886193993885.a n = A091270 n

end A091270

/-! ## A091270.P13909054630021130081

`record[(2^n-2)%(floor(2^(n-1))+1)]`
-/

namespace A091270.P13909054630021130081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) - 2) (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091270.P13909054630021130081

namespace A091270

/-- `record[(2^n-2)%(floor(2^(n-1))+1)]` -/
def P13909054630021130081.Spec : Prop :=
  ∀ n, P13909054630021130081.a n = A091270 n

end A091270

/-! ## A091270.P15315626098792410897

`lcm(A141044(n), A344920(n))`
-/

namespace A091270.P15315626098792410897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141044 n) (A344920 n)

end

end A091270.P15315626098792410897

namespace A091270

/-- `lcm(A141044(n), A344920(n))` -/
def P15315626098792410897.Spec : Prop :=
  ∀ n, (P15315626098792410897.a n : ℤ) = A091270 n

end A091270

/-! ## A091270.P15261381313918886217

`∑[A000079(n)-A036987(n²+3)]`
-/

namespace A091270.P15261381313918886217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A036987 (n ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091270.P15261381313918886217

namespace A091270

/-- `∑[A000079(n)-A036987(n²+3)]` -/
def P15261381313918886217.Spec : Prop :=
  ∀ n, P15261381313918886217.a n = A091270 n

end A091270

/-! ## A091270.P16309896160232496014

`A159229(n+2)%A077552(n)`
-/

namespace A091270.P16309896160232496014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159229 (n + 2)) (A077552 n)

end

end A091270.P16309896160232496014

namespace A091270

/-- `A159229(n+2)%A077552(n)` -/
def P16309896160232496014.Spec : Prop :=
  ∀ n, P16309896160232496014.a n = A091270 n

end A091270

/-! ## A091270.P8230807851876156963

`floor(∑[A000975(2*n)/A001045(n+1)])`
-/

namespace A091270.P8230807851876156963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000975 (2 * n) : ℚ) / (A001045 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A091270.P8230807851876156963

namespace A091270

/-- `floor(∑[A000975(2*n)/A001045(n+1)])` -/
def P8230807851876156963.Spec : Prop :=
  ∀ n, P8230807851876156963.a n = A091270 n

end A091270

/-! ## A091270.P9082331579357851692

`floor(A092431(n+1)/(2^n+2))`
-/

namespace A091270.P9082331579357851692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092431 (n + 1) : ℚ) / (2 ^ n + 2 : ℚ)⌋

end

end A091270.P9082331579357851692

namespace A091270

/-- `floor(A092431(n+1)/(2^n+2))` -/
def P9082331579357851692.Spec : Prop :=
  ∀ n, P9082331579357851692.a n = A091270 n

end A091270

/-! ## A091270.P11202784944780606022

`A267888(n)%A020515(n)`
-/

namespace A091270.P11202784944780606022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267888 n) (A020515 n)

end

end A091270.P11202784944780606022

namespace A091270

/-- `A267888(n)%A020515(n)` -/
def P11202784944780606022.Spec : Prop :=
  ∀ n, P11202784944780606022.a n = A091270 n

end A091270

/-! ## A091270.P15335115715637922795

`A267938(n)%A020515(n)`
-/

namespace A091270.P15335115715637922795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267938 n) (A020515 n)

end

end A091270.P15335115715637922795

namespace A091270

/-- `A267938(n)%A020515(n)` -/
def P15335115715637922795.Spec : Prop :=
  ∀ n, P15335115715637922795.a n = A091270 n

end A091270

/-! ## A091270.P5563808397729810119

`A267921(n)%A077552(n)`
-/

namespace A091270.P5563808397729810119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267921 n) (A077552 n)

end

end A091270.P5563808397729810119

namespace A091270

/-- `A267921(n)%A077552(n)` -/
def P5563808397729810119.Spec : Prop :=
  ∀ n, P5563808397729810119.a n = A091270 n

end A091270

/-!
# A091271: Numbers k such that 4*k^2-11 is a prime.

The programs for A091271, there is no canonical definition to state claims against.
-/

/-! ## A091271.P12147756359852564239

`A090696(n+1)/2`
-/

namespace A091271.P12147756359852564239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090696 (n + 1) : ℚ) / 2

end

end A091271.P12147756359852564239

/-! ## A091271.P5051550422907319202

`ceil(sqrt(A091272(n+1))/2)`
-/

namespace A091271.P5051550422907319202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A091272 (n + 1) : ℝ) / 2⌉

end

end A091271.P5051550422907319202

/-! ## A091271.P6083629279590389587

`A302042(A090696(n+1))`
-/

namespace A091271.P6083629279590389587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A090696 (n + 1)).toNat

end

end A091271.P6083629279590389587

/-! ## A091271.P15851031049222608446

`A008619(A090696(n+1)-1)`
-/

namespace A091271.P15851031049222608446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A090696 (n + 1) - 1).toNat

end

end A091271.P15851031049222608446

/-! ## A091271.P14016044092646564542

`A065033(A090696(n+1)-1)`
-/

namespace A091271.P14016044092646564542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A090696 (n + 1) - 1).toNat

end

end A091271.P14016044092646564542

/-! ## A091271.P4504094262465423564

`A110654(A090696(n+1)-1)`
-/

namespace A091271.P4504094262465423564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A090696 (n + 1) - 1).toNat

end

end A091271.P4504094262465423564

/-! ## A091271.P12687725309427102372

`A004524(A090696(n+1)-1)+1`
-/

namespace A091271.P12687725309427102372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A090696 (n + 1) - 1).toNat + 1

end

end A091271.P12687725309427102372

/-! ## A091271.P14384490784365197334

`A004526(A090696(n+1)-1)+1`
-/

namespace A091271.P14384490784365197334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090696 (n + 1) - 1).toNat + 1

end

end A091271.P14384490784365197334

/-! ## A091271.P6172957528210950120

`A123108(A090696(n+1)-1)+1`
-/

namespace A091271.P6172957528210950120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A090696 (n + 1) - 1).toNat + 1

end

end A091271.P6172957528210950120

/-! ## A091271.P13705121840606699173

`A004524(A090696(n+1)+1)`
-/

namespace A091271.P13705121840606699173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A090696 (n + 1) + 1).toNat

end

end A091271.P13705121840606699173

/-! ## A091271.P8332567222084749346

`A004526(A090696(n+1)+1)`
-/

namespace A091271.P8332567222084749346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090696 (n + 1) + 1).toNat

end

end A091271.P8332567222084749346

/-! ## A091271.P5945978748955245303

`A123108(A090696(n+1)+1)`
-/

namespace A091271.P5945978748955245303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A090696 (n + 1) + 1).toNat

end

end A091271.P5945978748955245303

/-! ## A091271.P5474360602668198548

`A001281(A090696(n+1)+2)-1`
-/

namespace A091271.P5474360602668198548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A090696 (n + 1) + 2).toNat - 1

end

end A091271.P5474360602668198548

/-! ## A091271.P2178120483402851712

`A054576(2*A090696(n+1))`
-/

namespace A091271.P2178120483402851712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A090696 (n + 1)).toNat

end

end A091271.P2178120483402851712

/-!
# A091272: Primes of the form n^2 - 11.

The programs for A091272, there is no canonical definition to state claims against.
-/

/-! ## A091272.P627864261808104098

`A090696(n+1)²-11`
-/

namespace A091272.P627864261808104098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090696 (n + 1) ^ 2 - 11

end

end A091272.P627864261808104098

/-! ## A091272.P9003727155808147303

`(A091271(n+1)+A091271(n+1))²-11`
-/

namespace A091272.P9003727155808147303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091271 (n + 1) + A091271 (n + 1)) ^ 2 - 11

end

end A091272.P9003727155808147303

/-! ## A091272.P15712571149195269975

`A005899(A091271(n+1))-13`
-/

namespace A091272.P15712571149195269975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (A091271 (n + 1)).toNat - 13

end

end A091272.P15712571149195269975

/-! ## A091272.P8154993641030296050

`A005899(A090696(n+1)/2)-13`
-/

namespace A091272.P8154993641030296050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (SequenceMachineLib.roundAway ((A090696 (n + 1) : ℚ) / 2)).toNat - 13

end

end A091272.P8154993641030296050

/-! ## A091272.P11686625530810889873

`A106230(A090696(n+1)+1)-10`
-/

namespace A091272.P11686625530810889873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A090696 (n + 1) + 1).toNat - 10

end

end A091272.P11686625530810889873

/-! ## A091272.P5721563140251190202

`p?[n²-11]`
-/

namespace A091272.P5721563140251190202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091272.P5721563140251190202

/-! ## A091272.P10478480082311563219

`or(1, p?[n^2-11])`
-/

namespace A091272.P10478480082311563219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A091272.P10478480082311563219

/-! ## A091272.P15051214785412508996

`∏{d}[p?[n^2-11], #]`
-/

namespace A091272.P15051214785412508996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A091272.P15051214785412508996

/-! ## A091272.P17924592680557510181

`∑{p}[p?[n^2-11], #]`
-/

namespace A091272.P17924592680557510181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091272.P17924592680557510181

/-! ## A091272.P3969836267365845120

`∏{p}[p?[n^2-11], #]`
-/

namespace A091272.P3969836267365845120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091272.P3969836267365845120

/-!
# A091273: Indices of primes of the form k^2 - 11.

The programs for A091273, there is no canonical definition to state claims against.
-/

/-! ## A091273.P2397075416712793078

`A000720(p?[n²-11])`
-/

namespace A091273.P2397075416712793078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091273.P2397075416712793078

/-! ## A091273.P3551935830081926223

`A061395(p?[n²-11])`
-/

namespace A091273.P3551935830081926223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091273.P3551935830081926223

/-! ## A091273.P494464676928427918

`A000720(or(1, p?[n^2-11]))`
-/

namespace A091273.P494464676928427918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A091273.P494464676928427918

/-! ## A091273.P11940950225699742123

`A000720(A091272(n+1))`
-/

namespace A091273.P11940950225699742123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091272 (n + 1)).toNat

end

end A091273.P11940950225699742123

/-! ## A091273.P1708496814903666327

`A061395(or(1, A091272(n+1)))`
-/

namespace A091273.P1708496814903666327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A091272 (n + 1))).toNat

end

end A091273.P1708496814903666327

/-!
# A091274: A090940 indexed by A000040.

The programs for A091274, there is no canonical definition to state claims against.
-/

/-! ## A091274.P12314062338906102032

`A000720(A090940(n+1))`
-/

namespace A091274.P12314062338906102032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090940 (n + 1)).toNat

end

end A091274.P12314062338906102032

/-! ## A091274.P18307267497410697584

`A003963(p?[A090940(n+1)])`
-/

namespace A091274.P18307267497410697584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P18307267497410697584

/-! ## A091274.P2210482809855844355

`A026233(p?[A090940(n+1)])`
-/

namespace A091274.P2210482809855844355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P2210482809855844355

/-! ## A091274.P18171039069534307201

`A026238(p?[A090940(n+1)])`
-/

namespace A091274.P18171039069534307201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P18171039069534307201

/-! ## A091274.P5940430160668429288

`A049084(p?[A090940(n+1)])`
-/

namespace A091274.P5940430160668429288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P5940430160668429288

/-! ## A091274.P14988215764092157677

`A056239(p?[A090940(n+1)])`
-/

namespace A091274.P14988215764092157677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P14988215764092157677

/-! ## A091274.P14386556555627400973

`A061395(p?[A090940(n+1)])`
-/

namespace A091274.P14386556555627400973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P14386556555627400973

/-! ## A091274.P7160868566381372586

`A230980(p?[A090940(n+1)])`
-/

namespace A091274.P7160868566381372586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P7160868566381372586

/-! ## A091274.P8880852994806732409

`A304818(p?[A090940(n+1)])`
-/

namespace A091274.P8880852994806732409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091274.P8880852994806732409

/-! ## A091274.P5522612614382028384

`A230980(A090940(n+1)+1)`
-/

namespace A091274.P5522612614382028384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A090940 (n + 1) + 1).toNat

end

end A091274.P5522612614382028384

/-!
# A091275: A090941 indexed by A000040.

The programs for A091275, there is no canonical definition to state claims against.
-/

/-! ## A091275.P17541564094266618562

`A061395(∑[A090940(n+1)])`
-/

namespace A091275.P17541564094266618562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091275.P17541564094266618562

/-! ## A091275.P11321191996335277498

`A000720(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P11321191996335277498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P11321191996335277498

/-! ## A091275.P12957510693171524138

`A003963(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P12957510693171524138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P12957510693171524138

/-! ## A091275.P1400785685175711306

`A026233(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P1400785685175711306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P1400785685175711306

/-! ## A091275.P11337943256548442504

`A026238(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P11337943256548442504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P11337943256548442504

/-! ## A091275.P12286704438804040971

`A056239(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P12286704438804040971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P12286704438804040971

/-! ## A091275.P1182100464822580039

`A064839(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P1182100464822580039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P1182100464822580039

/-! ## A091275.P3830122463583995046

`A263111(∑[A090940(n+1)]/(n+1))`
-/

namespace A091275.P3830122463583995046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091275.P3830122463583995046

/-! ## A091275.P5883653966450971566

`A000720(A006530(∑[A090940(n+1)]))`
-/

namespace A091275.P5883653966450971566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091275.P5883653966450971566

/-! ## A091275.P10386774734883916461

`A003963(A034699(∑[A090940(n+1)]))`
-/

namespace A091275.P10386774734883916461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A034699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091275.P10386774734883916461

/-!
# A091276: A090939(n)/n.

The programs for A091276, there is no canonical definition to state claims against.
-/

/-! ## A091276.P11429154760270148379

`A090939(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091276.P11429154760270148379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090939 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A091276.P11429154760270148379

/-! ## A091276.P16360187843128031802

`Δ[A007504(n)]-A091185(n+1)`
-/

namespace A091276.P16360187843128031802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091185 (n + 1)

end

end A091276.P16360187843128031802

/-! ## A091276.P4235065590548707093

`p?[A001057(n)]-A091185(n+1)`
-/

namespace A091276.P4235065590548707093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091185 (n + 1)

end

end A091276.P4235065590548707093

/-! ## A091276.P1293199774663970515

`p?[A091203(n)]-A091185(n+1)`
-/

namespace A091276.P1293199774663970515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091185 (n + 1)

end

end A091276.P1293199774663970515

/-! ## A091276.P9263440048429800144

`A000040(n+1)-A091185(n+1)`
-/

namespace A091276.P9263440048429800144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A091185 (n + 1)

end

end A091276.P9263440048429800144

/-! ## A091276.P12913314372623750159

`A216884(n+1)-A091185(n+1)`
-/

namespace A091276.P12913314372623750159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) - A091185 (n + 1)

end

end A091276.P12913314372623750159

/-! ## A091276.P11505023727723864434

`A008578(n+2)-A091185(n+1)`
-/

namespace A091276.P11505023727723864434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A091185 (n + 1)

end

end A091276.P11505023727723864434

/-! ## A091276.P7911370831809449930

`record[A006530(n+2)]-A091185(n+1)`
-/

namespace A091276.P7911370831809449930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091185 (n + 1)

end

end A091276.P7911370831809449930

/-! ## A091276.P13667060084847900421

`record[A020639(n+2)]-A091185(n+1)`
-/

namespace A091276.P13667060084847900421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091185 (n + 1)

end

end A091276.P13667060084847900421

/-!
# A091277: Numbers k such that the k-th prime is of the form m^2 + (m+1)^2.

The programs for A091277, there is no canonical definition to state claims against.
-/

/-! ## A091277.P1983249937142202668

`A000720(p?[4*C(n, 2)+1])`
-/

namespace A091277.P1983249937142202668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A091277.P1983249937142202668

/-! ## A091277.P262110230750776076

`A000720(p?[lcm(n, n+2)+1])`
-/

namespace A091277.P262110230750776076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A091277.P262110230750776076

/-! ## A091277.P10480974881448807838

`A000720(p?[ceil((n+3)²/2)])`
-/

namespace A091277.P10480974881448807838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 3) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091277.P10480974881448807838

/-! ## A091277.P548059236193957736

`A061395(p?[ceil((n+3)²/2)])`
-/

namespace A091277.P548059236193957736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 3) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091277.P548059236193957736

/-! ## A091277.P12599222973865382575

`A000720(p?[∑[4*n]+1]+1)`
-/

namespace A091277.P12599222973865382575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A091277.P12599222973865382575

/-! ## A091277.P6385179805035231880

`A061395(or(1, p?[(n+1)²+n²]))`
-/

namespace A091277.P6385179805035231880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A091277.P6385179805035231880

/-! ## A091277.P4728757029308242080

`A000720(A027862(n+1))`
-/

namespace A091277.P4728757029308242080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027862 (n + 1)).toNat

end

end A091277.P4728757029308242080

/-! ## A091277.P10155474307554818946

`A000720(A000027(p?[(n+1)²+n²]))`
-/

namespace A091277.P10155474307554818946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A091277.P10155474307554818946

/-! ## A091277.P7602225285215398293

`A000720(A000265(p?[(n+1)²+n²]))`
-/

namespace A091277.P7602225285215398293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A091277.P7602225285215398293

/-! ## A091277.P12164365561513285825

`record[A061395((comp[2*(n+1)]+2)²+1)]`
-/

namespace A091277.P12164365561513285825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091277.P12164365561513285825

/-!
# A091278: Squares arising in A089632.

The programs for A091278, there is no canonical definition to state claims against.
-/

/-! ## A091278.P5457731119140333218

`A091279(n+1)²`
-/

namespace A091278.P5457731119140333218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091279 (n + 1) ^ 2

end

end A091278.P5457731119140333218

/-! ## A091278.P9085965510701152697

`A081350(A091279(n+1)+1)`
-/

namespace A091278.P9085965510701152697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081350 (A091279 (n + 1) + 1).toNat

end

end A091278.P9085965510701152697

/-! ## A091278.P864742810111220471

`A002620(2*A091279(n+1))`
-/

namespace A091278.P864742810111220471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A091279 (n + 1)).toNat

end

end A091278.P864742810111220471

/-! ## A091278.P3661598280341154475

`A091279(A000027(n+1))^2`
-/

namespace A091278.P3661598280341154475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091279 (A000027 (n + 1)).toNat ^ 2

end

end A091278.P3661598280341154475

/-! ## A091278.P4766794180004454601

`A091279(n+1)^A020639(2*(n+1))`
-/

namespace A091278.P4766794180004454601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091279 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A091278.P4766794180004454601

/-! ## A091278.P13198887628952407888

`A091279(A000027(n+1))*A091279(n+1)`
-/

namespace A091278.P13198887628952407888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091279 (A000027 (n + 1)).toNat * A091279 (n + 1)

end

end A091278.P13198887628952407888

/-! ## A091278.P15141794760973344050

`A091279(A032742(2*(n+1)))^2`
-/

namespace A091278.P15141794760973344050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091279 (A032742 (2 * (n + 1))).toNat ^ 2

end

end A091278.P15141794760973344050

/-! ## A091278.P2380081240003159497

`∏{p}[A089632(n+1), #]+1`
-/

namespace A091278.P2380081240003159497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A091278.P2380081240003159497

/-! ## A091278.P8856847191264447466

`A007947(A089632(n+1))+1`
-/

namespace A091278.P8856847191264447466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A089632 (n + 1)).toNat + 1

end

end A091278.P8856847191264447466

/-! ## A091278.P14792659485436981402

`A020725(∏{p}[A089632(n+1), #])`
-/

namespace A091278.P14792659485436981402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091278.P14792659485436981402

/-! ## A091278.P9286691345971103432

`A076618(A089632(n+1))`
-/

namespace A091278.P9286691345971103432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A089632 (n + 1)).toNat

end

end A091278.P9286691345971103432

/-!
# A091279: Square roots of A091278.

The programs for A091279, there is no canonical definition to state claims against.
-/

/-! ## A091279.P8076441041800082295

`sqrt(A091278(n+1))`
-/

namespace A091279.P8076441041800082295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A091278 (n + 1) : ℝ)

end

end A091279.P8076441041800082295

/-! ## A091279.P228858999416002320

`ceil(∏{p}[A089632(n+1), sqrt(#)])`
-/

namespace A091279.P228858999416002320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ)⌉

end

end A091279.P228858999416002320

/-! ## A091279.P13132330344415791826

`sqrt(∏{p}[A089632(-xor(n, -1)), #]+1)`
-/

namespace A091279.P13132330344415791826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1 : ℕ) : ℝ)

end

end A091279.P13132330344415791826

/-! ## A091279.P17168545719823549410

`round(∏{p}[A089632(2*n+1-n), sqrt(#)])`
-/

namespace A091279.P17168545719823549410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ))

end

end A091279.P17168545719823549410

/-! ## A091279.P3854954243935832155

`A214526(A091278(n+1)+1)`
-/

namespace A091279.P3854954243935832155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A091278 (n + 1) + 1).toNat

end

end A091279.P3854954243935832155

/-! ## A091279.P8545617969577227840

`A000194(∏{p}[A089632(n+1), #])`
-/

namespace A091279.P8545617969577227840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091279.P8545617969577227840

/-! ## A091279.P2541613038397544573

`A003059(∏{p}[A089632(n+1), #])`
-/

namespace A091279.P2541613038397544573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091279.P2541613038397544573

/-! ## A091279.P9251680980342962349

`A070667(∏{p}[A089632(n+1), #])`
-/

namespace A091279.P9251680980342962349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091279.P9251680980342962349

/-! ## A091279.P8351755294833084835

`A137734(∏{p}[A089632(n+1), #])`
-/

namespace A091279.P8351755294833084835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091279.P8351755294833084835

/-! ## A091279.P15105371354605426918

`A000188(A007947(A089632(n+1))+1)`
-/

namespace A091279.P15105371354605426918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007947 (A089632 (n + 1)).toNat + 1).toNat

end

end A091279.P15105371354605426918

/-!
# A091280: A091432 indexed by A000040.

The programs for A091280, there is no canonical definition to state claims against.
-/

/-! ## A091280.P6590810302451187887

`A000720(A091432(n+1))`
-/

namespace A091280.P6590810302451187887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091432 (n + 1)).toNat

end

end A091280.P6590810302451187887

/-! ## A091280.P17075579618173360801

`A000720(p?[A091431(n+1)])`
-/

namespace A091280.P17075579618173360801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091280.P17075579618173360801

/-! ## A091280.P10693604726462888811

`A061395(p?[A091431(n+1)])`
-/

namespace A091280.P10693604726462888811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091280.P10693604726462888811

/-! ## A091280.P8201230772682854648

`A061395(p?[A091432(n+1)])`
-/

namespace A091280.P8201230772682854648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091280.P8201230772682854648

/-! ## A091280.P7588310630281130454

`A065770(p?[A091432(n+1)])`
-/

namespace A091280.P7588310630281130454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091280.P7588310630281130454

/-! ## A091280.P13432527069958114750

`A353484(p?[A091432(n+1)])`
-/

namespace A091280.P13432527069958114750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091280.P13432527069958114750

/-! ## A091280.P11217831535277181307

`A061395(2*A091432(n+1))`
-/

namespace A091280.P11217831535277181307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A091432 (n + 1)).toNat

end

end A091280.P11217831535277181307

/-! ## A091280.P3379595523199248745

`A061395(lcm(2, A091432(n+1)))`
-/

namespace A091280.P3379595523199248745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A091432 (n + 1)))

end

end A091280.P3379595523199248745

/-! ## A091280.P15574830933502137706

`A061395(or(1, A091432(n+1)))`
-/

namespace A091280.P15574830933502137706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A091432 (n + 1))).toNat

end

end A091280.P15574830933502137706

/-! ## A091280.P1013336500579744455

`A061395(A091432(Δ[n²]-n))`
-/

namespace A091280.P1013336500579744455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A091432 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A091280.P1013336500579744455

/-!
# A091281: Central term in powers of the Lo-Shu Magic Square as a matrix.

The programs for A091281, the canonical program `A091281.P17980415128741819578` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091281 has offset 0).

The definition of A091281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091281.P17980415128741819578

`1/69*(23*15^n-2*24^floor((n+1)/2)+2*24^floor((n+2)/2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091281

/-- `1/69*(23*15^n-2*24^floor((n+1)/2)+2*24^floor((n+2)/2))` -/
def P17980415128741819578.Spec : Prop :=
  ∀ n, P17980415128741819578.a n = (A091281 n : ℚ)

end A091281

/-!
# A091282: Exponent of 2 in prime(n)^2 - 1.

The programs for A091282, the canonical program `A091282.P45468277352217509` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091282 has offset 1).

The definition of A091282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023506, A023512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091282.P45468277352217509

`A023506(n+1)+A023512(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091282

/-- `A023506(n+1)+A023512(n+1)` -/
def P45468277352217509.Spec : Prop :=
  ∀ n, P45468277352217509.a n = A091282 (n + 1)

theorem P45468277352217509.correct : P45468277352217509.Spec := by
  intro n
  simp only [A091282, Nat.add_sub_cancel]

end A091282

/-! ## A091282.P12082830553758053604

`val(A084920(n+1), 2)`
-/

namespace A091282.P12082830553758053604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A084920 (n + 1)).toNat 2

end

end A091282.P12082830553758053604

namespace A091282

/-- `val(A084920(n+1), 2)` -/
def P12082830553758053604.Spec : Prop :=
  ∀ n, (P12082830553758053604.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P402050173957544856

`val(A138424(n+1), 2)`
-/

namespace A091282.P402050173957544856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138424 (n + 1)).toNat 2

end

end A091282.P402050173957544856

namespace A091282

/-- `val(A138424(n+1), 2)` -/
def P402050173957544856.Spec : Prop :=
  ∀ n, (P402050173957544856.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P17941657546576094622

`val(A138427(n+1), 2)`
-/

namespace A091282.P17941657546576094622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138427 (n + 1)).toNat 2

end

end A091282.P17941657546576094622

namespace A091282

/-- `val(A138427(n+1), 2)` -/
def P17941657546576094622.Spec : Prop :=
  ∀ n, (P17941657546576094622.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P6502720548999942751

`val(A138428(n+1), 2)`
-/

namespace A091282.P6502720548999942751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138428 (n + 1)).toNat 2

end

end A091282.P6502720548999942751

namespace A091282

/-- `val(A138428(n+1), 2)` -/
def P6502720548999942751.Spec : Prop :=
  ∀ n, (P6502720548999942751.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P5742413466810373380

`val(A138430(n+1), 2)`
-/

namespace A091282.P5742413466810373380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138430 (n + 1)).toNat 2

end

end A091282.P5742413466810373380

namespace A091282

/-- `val(A138430(n+1), 2)` -/
def P5742413466810373380.Spec : Prop :=
  ∀ n, (P5742413466810373380.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P13380891033012905748

`val(A049001(n+1)+1, 2)`
-/

namespace A091282.P13380891033012905748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049001 (n + 1) + 1).toNat 2

end

end A091282.P13380891033012905748

namespace A091282

/-- `val(A049001(n+1)+1, 2)` -/
def P13380891033012905748.Spec : Prop :=
  ∀ n, (P13380891033012905748.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P9427851628595964857

`val(A001248(n+1)-1, 2)`
-/

namespace A091282.P9427851628595964857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001248 (n + 1) - 1).toNat 2

end

end A091282.P9427851628595964857

namespace A091282

/-- `val(A001248(n+1)-1, 2)` -/
def P9427851628595964857.Spec : Prop :=
  ∀ n, (P9427851628595964857.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P14974575365463306669

`val(A138404(n+1), 2)-1`
-/

namespace A091282.P14974575365463306669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A138404 (n + 1)).toNat 2 : ℤ) - 1

end

end A091282.P14974575365463306669

namespace A091282

/-- `val(A138404(n+1), 2)-1` -/
def P14974575365463306669.Spec : Prop :=
  ∀ n, P14974575365463306669.a n = A091282 (n + 1)

end A091282

/-! ## A091282.P8070271098367189792

`val(A066872(n+1)-2, 2)`
-/

namespace A091282.P8070271098367189792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066872 (n + 1) - 2).toNat 2

end

end A091282.P8070271098367189792

namespace A091282

/-- `val(A066872(n+1)-2, 2)` -/
def P8070271098367189792.Spec : Prop :=
  ∀ n, (P8070271098367189792.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P17017486893708503720

`val(Δ[A007504(n)]²-1, 2)`
-/

namespace A091282.P17017486893708503720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) - f1 n) ^ 2 - 1).toNat 2

end

end A091282.P17017486893708503720

namespace A091282

/-- `val(Δ[A007504(n)]²-1, 2)` -/
def P17017486893708503720.Spec : Prop :=
  ∀ n, (P17017486893708503720.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P11147053507738440380

`val(A000040(n+1)²-1, 2)`
-/

namespace A091282.P11147053507738440380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) ^ 2 - 1).toNat 2

end

end A091282.P11147053507738440380

namespace A091282

/-- `val(A000040(n+1)²-1, 2)` -/
def P11147053507738440380.Spec : Prop :=
  ∀ n, (P11147053507738440380.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P9903891769963523815

`val(A030078(n+1)²-1, 2)`
-/

namespace A091282.P9903891769963523815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030078 (n + 1) ^ 2 - 1).toNat 2

end

end A091282.P9903891769963523815

namespace A091282

/-- `val(A030078(n+1)²-1, 2)` -/
def P9903891769963523815.Spec : Prop :=
  ∀ n, (P9903891769963523815.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P1041137567680742139

`val(A050997(n+1)²-1, 2)`
-/

namespace A091282.P1041137567680742139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050997 (n + 1) ^ 2 - 1).toNat 2

end

end A091282.P1041137567680742139

namespace A091282

/-- `val(A050997(n+1)²-1, 2)` -/
def P1041137567680742139.Spec : Prop :=
  ∀ n, (P1041137567680742139.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P8252829695591299646

`val(record[A020639(n+2)²-1], 2)`
-/

namespace A091282.P8252829695591299646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A091282.P8252829695591299646

namespace A091282

/-- `val(record[A020639(n+2)²-1], 2)` -/
def P8252829695591299646.Spec : Prop :=
  ∀ n, (P8252829695591299646.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P12515308366761918433

`A023506(n+1)+A007814(A068504(n+1))`
-/

namespace A091282.P12515308366761918433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1) + A007814 (A068504 (n + 1)).toNat

end

end A091282.P12515308366761918433

namespace A091282

/-- `A023506(n+1)+A007814(A068504(n+1))` -/
def P12515308366761918433.Spec : Prop :=
  ∀ n, P12515308366761918433.a n = A091282 (n + 1)

end A091282

/-! ## A091282.P15465712048657637120

`val((∏{p}[p?[A207790(n+1)], #]²-1)², 4)`
-/

namespace A091282.P15465712048657637120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2 : ℕ) : ℤ) - 1) ^ 2).toNat 4

end

end A091282.P15465712048657637120

namespace A091282

/-- `val((∏{p}[p?[A207790(n+1)], #]²-1)², 4)` -/
def P15465712048657637120.Spec : Prop :=
  ∀ n, (P15465712048657637120.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P16636594871983807650

`val(record[A287932(n+2)-1], 2)`
-/

namespace A091282.P16636594871983807650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287932 (n + 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A091282.P16636594871983807650

namespace A091282

/-- `val(record[A287932(n+2)-1], 2)` -/
def P16636594871983807650.Spec : Prop :=
  ∀ n, (P16636594871983807650.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P3542972383094157807

`val(A027484(A000040(n+1)), 2)`
-/

namespace A091282.P3542972383094157807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027484 (A000040 (n + 1)).toNat).toNat 2

end

end A091282.P3542972383094157807

namespace A091282

/-- `val(A027484(A000040(n+1)), 2)` -/
def P3542972383094157807.Spec : Prop :=
  ∀ n, (P3542972383094157807.a n : ℤ) = A091282 (n + 1)

end A091282

/-! ## A091282.P16437266481791605204

`val(A033455(A000040(n+1)-1), 2)`
-/

namespace A091282.P16437266481791605204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033455 (A000040 (n + 1) - 1).toNat).toNat 2

end

end A091282.P16437266481791605204

namespace A091282

/-- `val(A033455(A000040(n+1)-1), 2)` -/
def P16437266481791605204.Spec : Prop :=
  ∀ n, (P16437266481791605204.a n : ℤ) = A091282 (n + 1)

end A091282

/-!
# A091283: Exponent of 2 in -1+prime[n]^s, if s is an exponent of the form s=8k-4.

The programs for A091283, the canonical program `A091283.P14291136739223741953` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091283 has offset 1).

The definition of A091283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091283.P14291136739223741953

`val(xor(1, p?[round(8*n/7)]²²), 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091283

/-- `val(xor(1, p?[round(8*n/7)]²²), 2)` -/
def P14291136739223741953.Spec : Prop :=
  ∀ n, (P14291136739223741953.a n : ℤ) = A091283 (n + 1)

theorem P14291136739223741953.correct : P14291136739223741953.Spec := by
  intro n
  simp only [A091283, Nat.add_sub_cancel]

end A091283

/-! ## A091283.P8386906918979265165

`val(p?[round(8*n/7)]²²+abs(1-n)-n, 2)`
-/

namespace A091283.P8386906918979265165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 2 + (|1 - (n : ℤ)| - (n : ℤ))).toNat 2

end

end A091283.P8386906918979265165

namespace A091283

/-- `val(p?[round(8*n/7)]²²+abs(1-n)-n, 2)` -/
def P8386906918979265165.Spec : Prop :=
  ∀ n, (P8386906918979265165.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P9140104238361115191

`val(A030514(n+1)-1, 2)`
-/

namespace A091283.P9140104238361115191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030514 (n + 1) - 1).toNat 2

end

end A091283.P9140104238361115191

namespace A091283

/-- `val(A030514(n+1)-1, 2)` -/
def P9140104238361115191.Spec : Prop :=
  ∀ n, (P9140104238361115191.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P13177653576577171422

`val(A153482(n+1)+7, 2)`
-/

namespace A091283.P13177653576577171422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153482 (n + 1) + 7).toNat 2

end

end A091283.P13177653576577171422

namespace A091283

/-- `val(A153482(n+1)+7, 2)` -/
def P13177653576577171422.Spec : Prop :=
  ∀ n, (P13177653576577171422.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P15528026477812879733

`val(A001248(n+1)²-1, 2)`
-/

namespace A091283.P15528026477812879733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001248 (n + 1) ^ 2 - 1).toNat 2

end

end A091283.P15528026477812879733

namespace A091283

/-- `val(A001248(n+1)²-1, 2)` -/
def P15528026477812879733.Spec : Prop :=
  ∀ n, (P15528026477812879733.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P16626595277977544744

`val(A049001(n+1)²-1, 2)`
-/

namespace A091283.P16626595277977544744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049001 (n + 1) ^ 2 - 1).toNat 2

end

end A091283.P16626595277977544744

namespace A091283

/-- `val(A049001(n+1)²-1, 2)` -/
def P16626595277977544744.Spec : Prop :=
  ∀ n, (P16626595277977544744.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P5254453307510677629

`val(A000040(n+1)^4-1, 2)`
-/

namespace A091283.P5254453307510677629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) ^ 4 - 1).toNat 2

end

end A091283.P5254453307510677629

namespace A091283

/-- `val(A000040(n+1)^4-1, 2)` -/
def P5254453307510677629.Spec : Prop :=
  ∀ n, (P5254453307510677629.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P9000456621596219562

`val(record[A006530(n+2)]^4-1, 2)`
-/

namespace A091283.P9000456621596219562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 4 - 1).toNat 2

end

end A091283.P9000456621596219562

namespace A091283

/-- `val(record[A006530(n+2)]^4-1, 2)` -/
def P9000456621596219562.Spec : Prop :=
  ∀ n, (P9000456621596219562.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P5013491322631665212

`val(record[A051664(n+1)²]²-1, 2)`
-/

namespace A091283.P5013491322631665212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1).toNat 2

end

end A091283.P5013491322631665212

namespace A091283

/-- `val(record[A051664(n+1)²]²-1, 2)` -/
def P5013491322631665212.Spec : Prop :=
  ∀ n, (P5013491322631665212.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P14396084642070082690

`val(record[A020639(n+2)²]²-1, 2)`
-/

namespace A091283.P14396084642070082690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1).toNat 2

end

end A091283.P14396084642070082690

namespace A091283

/-- `val(record[A020639(n+2)²]²-1, 2)` -/
def P14396084642070082690.Spec : Prop :=
  ∀ n, (P14396084642070082690.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P16039371137598657223

`val((record[A014963(n+2)²]²-1)², 4)`
-/

namespace A091283.P16039371137598657223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1) ^ 2).toNat 4

end

end A091283.P16039371137598657223

namespace A091283

/-- `val((record[A014963(n+2)²]²-1)², 4)` -/
def P16039371137598657223.Spec : Prop :=
  ∀ n, (P16039371137598657223.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P4946381661747182979

`A004721(A091282(n+1))`
-/

namespace A091283.P4946381661747182979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 (A091282 (n + 1)).toNat

end

end A091283.P4946381661747182979

namespace A091283

/-- `A004721(A091282(n+1))` -/
def P4946381661747182979.Spec : Prop :=
  ∀ n, P4946381661747182979.a n = A091283 (n + 1)

end A091283

/-! ## A091283.P15274841362212360697

`val(A033596(Δ[A007504(n)]), 2)`
-/

namespace A091283.P15274841362212360697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033596 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A091283.P15274841362212360697

namespace A091283

/-- `val(A033596(Δ[A007504(n)]), 2)` -/
def P15274841362212360697.Spec : Prop :=
  ∀ n, (P15274841362212360697.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P9879717907268688730

`val(A059377(Δ[A007504(n)]), 2)`
-/

namespace A091283.P9879717907268688730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059377 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A091283.P9879717907268688730

namespace A091283

/-- `val(A059377(Δ[A007504(n)]), 2)` -/
def P9879717907268688730.Spec : Prop :=
  ∀ n, (P9879717907268688730.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P18280155048357322758

`val(A033596(record[A051698(n)]), 2)`
-/

namespace A091283.P18280155048357322758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A091283.P18280155048357322758

namespace A091283

/-- `val(A033596(record[A051698(n)]), 2)` -/
def P18280155048357322758.Spec : Prop :=
  ∀ n, (P18280155048357322758.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P10895167115936357387

`val(A033596(p?[A064429(n)]), 2)`
-/

namespace A091283.P10895167115936357387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033596 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 2

end

end A091283.P10895167115936357387

namespace A091283

/-- `val(A033596(p?[A064429(n)]), 2)` -/
def P10895167115936357387.Spec : Prop :=
  ∀ n, (P10895167115936357387.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P16505195408093133555

`val(A033596(A000040(n+1)), 2)`
-/

namespace A091283.P16505195408093133555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033596 (A000040 (n + 1)).toNat).toNat 2

end

end A091283.P16505195408093133555

namespace A091283

/-- `val(A033596(A000040(n+1)), 2)` -/
def P16505195408093133555.Spec : Prop :=
  ∀ n, (P16505195408093133555.a n : ℤ) = A091283 (n + 1)

end A091283

/-! ## A091283.P15036109890918454117

`A047573(val(A138404(n+1), 2))`
-/

namespace A091283.P15036109890918454117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (SequenceMachineLib.valuation (A138404 (n + 1)).toNat 2)

end

end A091283.P15036109890918454117

namespace A091283

/-- `A047573(val(A138404(n+1), 2))` -/
def P15036109890918454117.Spec : Prop :=
  ∀ n, P15036109890918454117.a n = A091283 (n + 1)

end A091283

/-! ## A091283.P1442542033066379766

`A052405(val(A138404(n+1), 2))`
-/

namespace A091283.P1442542033066379766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (SequenceMachineLib.valuation (A138404 (n + 1)).toNat 2)

end

end A091283.P1442542033066379766

namespace A091283

/-- `A052405(val(A138404(n+1), 2))` -/
def P1442542033066379766.Spec : Prop :=
  ∀ n, P1442542033066379766.a n = A091283 (n + 1)

end A091283

/-! ## A091283.P9009198393707744253

`A091282(n+1)+A057427(n)`
-/

namespace A091283.P9009198393707744253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091282 (n + 1) + A057427 n

end

end A091283.P9009198393707744253

namespace A091283

/-- `A091282(n+1)+A057427(n)` -/
def P9009198393707744253.Spec : Prop :=
  ∀ n, P9009198393707744253.a n = A091283 (n + 1)

end A091283

/-!
# A091284: Exponent of 2 in -1+prime[n]^s, if s is an exponent of form 16k-8. Except a(1)=0, a(n)=1+A091283(n).

The programs for A091284, there is no canonical definition to state claims against.
-/

/-! ## A091284.P507333411149447809

`ceil(atan(2)*A091283(n+1))`
-/

namespace A091284.P507333411149447809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 : ℝ) * (A091283 (n + 1) : ℝ)⌉

end

end A091284.P507333411149447809

/-! ## A091284.P9592611513380514376

`val(A030514(n+1)²-1, 2)`
-/

namespace A091284.P9592611513380514376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030514 (n + 1) ^ 2 - 1).toNat 2

end

end A091284.P9592611513380514376

/-! ## A091284.P14238127171892362156

`val(A000040(n+1)^8-1, 2)`
-/

namespace A091284.P14238127171892362156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) ^ 8 - 1).toNat 2

end

end A091284.P14238127171892362156

/-! ## A091284.P15721831133579964336

`A091282(n+1)+2%(n+2)`
-/

namespace A091284.P15721831133579964336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091282 (n + 1) + ((2 % (n + 2) : ℕ) : ℤ)

end

end A091284.P15721831133579964336

/-! ## A091284.P781074136331474694

`A004721(A091283(n+1))`
-/

namespace A091284.P781074136331474694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 (A091283 (n + 1)).toNat

end

end A091284.P781074136331474694

/-! ## A091284.P7905620187388798120

`A214084(A091282(n+1))`
-/

namespace A091284.P7905620187388798120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214084 (A091282 (n + 1)).toNat

end

end A091284.P7905620187388798120

/-! ## A091284.P9133899775285026786

`A091283(n+1)+A057427(n)`
-/

namespace A091284.P9133899775285026786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091283 (n + 1) + A057427 n

end

end A091284.P9133899775285026786

/-! ## A091284.P2232780020317063422

`A178334(n)+A091283(n+1)`
-/

namespace A091284.P2232780020317063422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A091283 (n + 1)

end

end A091284.P2232780020317063422

/-! ## A091284.P11854531331260743475

`A178489(n)+A091283(n+1)`
-/

namespace A091284.P11854531331260743475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A091283 (n + 1)

end

end A091284.P11854531331260743475

/-! ## A091284.P4967420092607911729

`A091283(n+1)-A057428(n)`
-/

namespace A091284.P4967420092607911729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091283 (n + 1) - A057428 n

end

end A091284.P4967420092607911729

/-!
# A091285: Numbers k such that sigma_3(k) is divisible by the square of phi(k).

The programs for A091285, there is no canonical definition to state claims against.
-/

/-! ## A091285.P3619790246533713852

`A000026(A094468(n+1))`
-/

namespace A091285.P3619790246533713852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A094468 (n + 1)).toNat

end

end A091285.P3619790246533713852

/-! ## A091285.P4418709076057340348

`A094468(A037442(n+1))`
-/

namespace A091285.P4418709076057340348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094468 (A037442 (n + 1)).toNat

end

end A091285.P4418709076057340348

/-! ## A091285.P14940978028843886955

`A094468(A141769(n+1))`
-/

namespace A091285.P14940978028843886955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094468 (A141769 (n + 1)).toNat

end

end A091285.P14940978028843886955

/-!
# A091289: Integer solutions x to sigma(x) + sigma(x+1) = 2*sigma(2x+1) where sigma = A000203.

The programs for A091289, there is no canonical definition to state claims against.
-/

/-! ## A091289.P18096217992828185765

`filter[A091287(n+1), A188037(#)]`
-/

namespace A091289.P18096217992828185765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188037 (f1 j).toNat = 1) n)

end

end A091289.P18096217992828185765

/-!
# A091290: Numbers k such that sigma(k) + sigma(k+1) <= sigma(2*k+1).

The programs for A091290, the canonical program `A091290.P4448066283075349517` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091290 has offset 1).

The definition of A091290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091290.P4448066283075349517

`lt[A092403(A028310(n)), A088580(2*n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091290

/-- `lt[A092403(A028310(n)), A088580(2*n+1)]` -/
def P4448066283075349517.Spec : Prop :=
  ∀ n, (P4448066283075349517.a n : ℤ) = A091290 (n + 1)

theorem P4448066283075349517.correct : P4448066283075349517.Spec := by
  intro n
  simp only [A091290, Nat.add_sub_cancel]

end A091290

/-! ## A091290.P10120425271924437268

`lt[A088580(n+1)+A039653(n), A088580(2*n+1)]`
-/

namespace A091290.P10120425271924437268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091290.P10120425271924437268

namespace A091290

/-- `lt[A088580(n+1)+A039653(n), A088580(2*n+1)]` -/
def P10120425271924437268.Spec : Prop :=
  ∀ n, (P10120425271924437268.a n : ℤ) = A091290 (n + 1)

end A091290

/-! ## A091290.P10808841466716288854

`lt[A039653(n), A235796(n+1)+A001065(2*n+1)]`
-/

namespace A091290.P10808841466716288854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + A001065 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091290.P10808841466716288854

namespace A091290

/-- `lt[A039653(n), A235796(n+1)+A001065(2*n+1)]` -/
def P10808841466716288854.Spec : Prop :=
  ∀ n, (P10808841466716288854.a n : ℤ) = A091290 (n + 1)

end A091290

/-! ## A091290.P1064222146509798692

`lt[A237588(n+1), A001065(2*n+1)-A039653(n)]`
-/

namespace A091290.P1064222146509798692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1) - A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091290.P1064222146509798692

namespace A091290

/-- `lt[A237588(n+1), A001065(2*n+1)-A039653(n)]` -/
def P1064222146509798692.Spec : Prop :=
  ∀ n, (P1064222146509798692.a n : ℤ) = A091290 (n + 1)

end A091290

/-! ## A091290.P5729849360473973492

`lt[A039653(n)+A272027(n+1)/3, A143348(2*n+1)]`
-/

namespace A091290.P5729849360473973492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 n : ℚ) + (A272027 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A091290.P5729849360473973492

namespace A091290

/-- `lt[A039653(n)+A272027(n+1)/3, A143348(2*n+1)]` -/
def P5729849360473973492.Spec : Prop :=
  ∀ n, (P5729849360473973492.a n : ℤ) = A091290 (n + 1)

end A091290

/-!
# A091295: (Number of primes == 3 mod 4 less than 10^n) - (number of primes == 1 mod 4 less than 10^n).

The programs for A091295, there is no canonical definition to state claims against.
-/

/-! ## A091295.P12732165457793785484

`A093153(n+1)+1`
-/

namespace A091295.P12732165457793785484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093153 (n + 1) + 1

end

end A091295.P12732165457793785484

/-! ## A091295.P6003325232654679264

`A091099(n+1)-A091098(n+1)`
-/

namespace A091295.P6003325232654679264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - A091098 (n + 1)

end

end A091295.P6003325232654679264

/-! ## A091295.P14516257549439483397

`A091099(n+1)-(A091128(n+1)+A091126(n+1))`
-/

namespace A091295.P14516257549439483397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A091128 (n + 1) + A091126 (n + 1))

end

end A091295.P14516257549439483397

/-! ## A091295.P1417786855445376572

`A091127(n+1)+A091129(n+1)-A091098(n+1)`
-/

namespace A091295.P1417786855445376572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091127 (n + 1) + (A091129 (n + 1) - A091098 (n + 1))

end

end A091295.P1417786855445376572

/-! ## A091295.P17280242241942465303

`A091099(n+1)-(A091115(n+1)-A091099(n+1)+A091119(n+1)+1)`
-/

namespace A091295.P17280242241942465303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A091115 (n + 1) - A091099 (n + 1) + (A091119 (n + 1) + 1))

end

end A091295.P17280242241942465303

/-!
# A091296: Semiprimes with odd digits.

The programs for A091296, there is no canonical definition to state claims against.
-/

/-! ## A091296.P2037813116193267703

`∩[A014261(n+1), A103607(n+1)]`
-/

namespace A091296.P2037813116193267703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091296.P2037813116193267703

/-! ## A091296.P18107256432788611809

`∩[A103607(n+1), A320062(n+1)]`
-/

namespace A091296.P18107256432788611809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091296.P18107256432788611809

/-! ## A091296.P2992135955159347314

`∩[A014261(n+1), A358675(n+1)]`
-/

namespace A091296.P2992135955159347314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091296.P2992135955159347314

/-! ## A091296.P13943626786796637504

`∩[A014261(n+1), A366318(n+1)]`
-/

namespace A091296.P13943626786796637504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091296.P13943626786796637504

/-! ## A091296.P6076963362670775136

`∩[A320062(n+1), A358675(n+1)]`
-/

namespace A091296.P6076963362670775136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091296.P6076963362670775136

/-!
# A091297: A fixed point of the morphism 0 -> 02, 1 -> 02, 2 -> 11, starting from 0.

The programs for A091297, the canonical program `A091297.P402933785545935170` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091297 has offset 1).

The definition of A091297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091297.P402933785545935170

`1-Δ[val(n+1, 2)%2]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091297

/-- `1-Δ[val(n+1, 2)%2]` -/
def P402933785545935170.Spec : Prop :=
  ∀ n, P402933785545935170.a n = A091297 (n + 1)

theorem P402933785545935170.correct : P402933785545935170.Spec := by
  intro n
  simp only [A091297, Nat.add_sub_cancel]

end A091297

/-! ## A091297.P4099372520836428195

`Δ[gcd(2, val(n+1, 2))]+1`
-/

namespace A091297.P4099372520836428195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A091297.P4099372520836428195

namespace A091297

/-- `Δ[gcd(2, val(n+1, 2))]+1` -/
def P4099372520836428195.Spec : Prop :=
  ∀ n, P4099372520836428195.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P3777669002818221913

`Δ[xor(n, n+1)%3]+1`
-/

namespace A091297.P3777669002818221913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A091297.P3777669002818221913

namespace A091297

/-- `Δ[xor(n, n+1)%3]+1` -/
def P3777669002818221913.Spec : Prop :=
  ∀ n, P3777669002818221913.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P15737705441598606908

`1-Δ[and(n, -(n+2))%3]`
-/

namespace A091297.P15737705441598606908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A091297.P15737705441598606908

namespace A091297

/-- `1-Δ[and(n, -(n+2))%3]` -/
def P15737705441598606908.Spec : Prop :=
  ∀ n, P15737705441598606908.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P17885727432457446107

`3-Δ[or(2*n, val(n+1, 2))]`
-/

namespace A091297.P17885727432457446107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091297.P17885727432457446107

namespace A091297

/-- `3-Δ[or(2*n, val(n+1, 2))]` -/
def P17885727432457446107.Spec : Prop :=
  ∀ n, P17885727432457446107.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P15550194666397227560

`C(2, Δ[or(2*n, val(n+1, 2))])`
-/

namespace A091297.P15550194666397227560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091297.P15550194666397227560

namespace A091297

/-- `C(2, Δ[or(2*n, val(n+1, 2))])` -/
def P15550194666397227560.Spec : Prop :=
  ∀ n, (P15550194666397227560.a n : ℤ) = A091297 (n + 1)

end A091297

/-! ## A091297.P2694961866089316603

`xor(3, Δ[or(2*n, val(n+1, 2))])`
-/

namespace A091297.P2694961866089316603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091297.P2694961866089316603

namespace A091297

/-- `xor(3, Δ[or(2*n, val(n+1, 2))])` -/
def P2694961866089316603.Spec : Prop :=
  ∀ n, P2694961866089316603.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P12388530330197630949

`1-Δ[A096268(n)]`
-/

namespace A091297.P12388530330197630949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A091297.P12388530330197630949

namespace A091297

/-- `1-Δ[A096268(n)]` -/
def P12388530330197630949.Spec : Prop :=
  ∀ n, P12388530330197630949.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P18087029470986302653

`6-A249032(n+1)`
-/

namespace A091297.P18087029470986302653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A249032 (n + 1)

end

end A091297.P18087029470986302653

namespace A091297

/-- `6-A249032(n+1)` -/
def P18087029470986302653.Spec : Prop :=
  ∀ n, P18087029470986302653.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P13491188954146637307

`Δ[A035263(n+1)]+1`
-/

namespace A091297.P13491188954146637307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A091297.P13491188954146637307

namespace A091297

/-- `Δ[A035263(n+1)]+1` -/
def P13491188954146637307.Spec : Prop :=
  ∀ n, P13491188954146637307.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P18072037525564468911

`1-Δ[and(1, A087808(n))]`
-/

namespace A091297.P18072037525564468911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A087808 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A091297.P18072037525564468911

namespace A091297

/-- `1-Δ[and(1, A087808(n))]` -/
def P18072037525564468911.Spec : Prop :=
  ∀ n, P18072037525564468911.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P14864863951235279687

`1-Δ[A191254(2*(n+1))]`
-/

namespace A091297.P14864863951235279687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A091297.P14864863951235279687

namespace A091297

/-- `1-Δ[A191254(2*(n+1))]` -/
def P14864863951235279687.Spec : Prop :=
  ∀ n, P14864863951235279687.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P10140973542854988989

`A096268(n)+A035263(n+2)`
-/

namespace A091297.P10140973542854988989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n + A035263 (n + 2)

end

end A091297.P10140973542854988989

namespace A091297

/-- `A096268(n)+A035263(n+2)` -/
def P10140973542854988989.Spec : Prop :=
  ∀ n, P10140973542854988989.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P10127032876256352889

`xor(A035263(n+1), A245187(n))`
-/

namespace A091297.P10127032876256352889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (n + 1)) (A245187 n)

end

end A091297.P10127032876256352889

namespace A091297

/-- `xor(A035263(n+1), A245187(n))` -/
def P10127032876256352889.Spec : Prop :=
  ∀ n, P10127032876256352889.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P8314047259034372364

`1-Δ[A085058(A085058(n)²)]`
-/

namespace A091297.P8314047259034372364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A085058 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A091297.P8314047259034372364

namespace A091297

/-- `1-Δ[A085058(A085058(n)²)]` -/
def P8314047259034372364.Spec : Prop :=
  ∀ n, P8314047259034372364.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P3581321017943144919

`A056832(n+1)-A096268(n+1)`
-/

namespace A091297.P3581321017943144919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) - A096268 (n + 1)

end

end A091297.P3581321017943144919

namespace A091297

/-- `A056832(n+1)-A096268(n+1)` -/
def P3581321017943144919.Spec : Prop :=
  ∀ n, P3581321017943144919.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P4016096171281053446

`A159619(n+1)-A026491(n+1)`
-/

namespace A091297.P4016096171281053446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (n + 1) - A026491 (n + 1)

end

end A091297.P4016096171281053446

namespace A091297

/-- `A159619(n+1)-A026491(n+1)` -/
def P4016096171281053446.Spec : Prop :=
  ∀ n, P4016096171281053446.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P2414075839512216193

`A035263(n+2)*A056832(n+1)`
-/

namespace A091297.P2414075839512216193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2) * A056832 (n + 1)

end

end A091297.P2414075839512216193

namespace A091297

/-- `A035263(n+2)*A056832(n+1)` -/
def P2414075839512216193.Spec : Prop :=
  ∀ n, P2414075839512216193.a n = A091297 (n + 1)

end A091297

/-! ## A091297.P13274260154509610060

`and(A056832(n+1), A083481(n+1))`
-/

namespace A091297.P13274260154509610060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056832 (n + 1)) (A083481 (n + 1))

end

end A091297.P13274260154509610060

namespace A091297

/-- `and(A056832(n+1), A083481(n+1))` -/
def P13274260154509610060.Spec : Prop :=
  ∀ n, P13274260154509610060.a n = A091297 (n + 1)

end A091297

/-!
# A091298: Triangle read by rows: T(n,k) is the number of plane partitions of n containing exactly k parts.

The programs for A091298, there is no canonical definition to state claims against.
-/

/-! ## A091298.P14089508488609013670

`or(A110582(n), A124762(A300787(n+1)))`
-/

namespace A091298.P14089508488609013670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110582 n) (A124762 (A300787 (n + 1)).toNat)

end

end A091298.P14089508488609013670

/-! ## A091298.P4259248807388691995

`or(A124762(A300787(n+1)), A172467(n+1))`
-/

namespace A091298.P4259248807388691995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A300787 (n + 1)).toNat) (A172467 (n + 1))

end

end A091298.P4259248807388691995

/-! ## A091298.P1853708290172042893

`or(A110582(n), A125005(A000837(n)))`
-/

namespace A091298.P1853708290172042893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110582 n) (A125005 (A000837 n).toNat)

end

end A091298.P1853708290172042893

/-! ## A091298.P5643128983310909272

`or(A025457(A291451(n)), A110582(n))`
-/

namespace A091298.P5643128983310909272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025457 (A291451 n).toNat) (A110582 n)

end

end A091298.P5643128983310909272

/-! ## A091298.P7270959912122168556

`or(A110582(n), A341999(A277455(n)))`
-/

namespace A091298.P7270959912122168556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110582 n) (A341999 (A277455 n).toNat)

end

end A091298.P7270959912122168556

/-!
# A091299: Number of (directed) Hamiltonian paths (or Gray codes) on the n-cube.

The programs for A091299, there is no canonical definition to state claims against.
-/

/-! ## A091299.P14795207752906193929

`2*A284673(n+1)`
-/

namespace A091299.P14795207752906193929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284673 (n + 1)

end

end A091299.P14795207752906193929

