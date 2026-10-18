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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
# A043700: 

The programs for A043700, there is no canonical definition to state claims against.
-/

/-! ## A043700.P1468717893178857565

`eq[char[A043714(n+1)], A000007(n)]`
-/

namespace A043700.P1468717893178857565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043714 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A043700.P1468717893178857565

/-! ## A043700.P9888619896038967279

`A043645(n+1)%A001816(n)`
-/

namespace A043700.P9888619896038967279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043645 (n + 1)) (A001816 n)

end

end A043700.P9888619896038967279

/-! ## A043700.P17742379162158915103

`and(A043645(n+1), A107954(n))`
-/

namespace A043700.P17742379162158915103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043645 (n + 1)) (A107954 n)

end

end A043700.P17742379162158915103

/-! ## A043700.P8593485748386228669

`and(A043645(n+1), A107955(n))`
-/

namespace A043700.P8593485748386228669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043645 (n + 1)) (A107955 n)

end

end A043700.P8593485748386228669

/-! ## A043700.P16904746279016924099

`eq[A043563(n), A333657(n+1)]`
-/

namespace A043700.P16904746279016924099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043700.P16904746279016924099

/-! ## A043700.P12664307155915876083

`eq[2, A043563(n)*A178334(n)]`
-/

namespace A043700.P12664307155915876083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n * A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043700.P12664307155915876083

/-! ## A043700.P10522155246269085981

`A168186(n+11)%A284174(A002522(n))`
-/

namespace A043700.P10522155246269085981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168186 (n + 11)) (A284174 (A002522 n).toNat)

end

end A043700.P10522155246269085981

/-! ## A043700.P7132890044039530026

`eq[A043563(n), A178815(n+1)]`
-/

namespace A043700.P7132890044039530026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043700.P7132890044039530026

/-!
# A043701: 

The programs for A043701, there is no canonical definition to state claims against.
-/

/-! ## A043701.P3104913830048761502

`lt[A043564(n)%2, 1]`
-/

namespace A043701.P3104913830048761502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043564 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043701.P3104913830048761502

/-! ## A043701.P10567843368189789870

`eq[char[A043715(n+1)], A000007(n)]`
-/

namespace A043701.P10567843368189789870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043715 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A043701.P10567843368189789870

/-! ## A043701.P8704512129454444410

`and(A043651(n+1), A107955(n))`
-/

namespace A043701.P8704512129454444410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043651 (n + 1)) (A107955 n)

end

end A043701.P8704512129454444410

/-! ## A043701.P4447988725679482183

`A043651(n+1)%A022040(n)`
-/

namespace A043701.P4447988725679482183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043651 (n + 1)) (A022040 n)

end

end A043701.P4447988725679482183

/-! ## A043701.P10099409640356144024

`eq[A043564(n), A333657(n+1)]`
-/

namespace A043701.P10099409640356144024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043701.P10099409640356144024

/-! ## A043701.P9838960528541738672

`comp[A048309(n)]%A158740(A007932(n+1))`
-/

namespace A043701.P9838960528541738672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A158740 (A007932 (n + 1)).toNat)

end

end A043701.P9838960528541738672

/-! ## A043701.P8025849332769159729

`comp[A048309(n)]%A189119(A008620(n))`
-/

namespace A043701.P8025849332769159729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A189119 (A008620 n).toNat)

end

end A043701.P8025849332769159729

/-! ## A043701.P9439674575429497227

`A000035(A054734(n+1))+comp[A048309(n)]`
-/

namespace A043701.P9439674575429497227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054734 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A043701.P9439674575429497227

/-! ## A043701.P7105076058397432839

`comp[A048309(n)]*A093178(A068913(2*n))`
-/

namespace A043701.P7105076058397432839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A093178 (A068913 (2 * n)).toNat

end

end A043701.P7105076058397432839

/-! ## A043701.P18055268068058401263

`A185124(n²+3)+comp[A048309(n)]`
-/

namespace A043701.P18055268068058401263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (n ^ 2 + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A043701.P18055268068058401263

/-!
# A043702: 

The programs for A043702, there is no canonical definition to state claims against.
-/

/-! ## A043702.P9507741609659824049

`eq[2, (A043565(n)%2)²+2]`
-/

namespace A043702.P9507741609659824049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043565 n) 2 ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043702.P9507741609659824049

/-! ## A043702.P12552055249641198224

`eq[char[A043716(n+1)], A000007(n)]`
-/

namespace A043702.P12552055249641198224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043716 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A043702.P12552055249641198224

/-! ## A043702.P1773381930662589961

`and(A043657(n+1), A107955(n))`
-/

namespace A043702.P1773381930662589961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043657 (n + 1)) (A107955 n)

end

end A043702.P1773381930662589961

/-! ## A043702.P6905704167331527688

`A043657(n+1)%A022040(n)`
-/

namespace A043702.P6905704167331527688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043657 (n + 1)) (A022040 n)

end

end A043702.P6905704167331527688

/-! ## A043702.P12536163991081956782

`eq[A043565(n), A333657(n+1)]`
-/

namespace A043702.P12536163991081956782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043702.P12536163991081956782

/-! ## A043702.P11960438641543141936

`lt[A008481(A173587(n+1)), A043565(n)]`
-/

namespace A043702.P11960438641543141936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A173587 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043702.P11960438641543141936

/-! ## A043702.P8538766024174592541

`eq[A043565(n), A178815(n+1)]`
-/

namespace A043702.P8538766024174592541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043702.P8538766024174592541

/-!
# A043703: 

The programs for A043703, there is no canonical definition to state claims against.
-/

/-! ## A043703.P17055563665030548033

`lt[1, gcd(A001316(n), A043566(n))]`
-/

namespace A043703.P17055563665030548033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 n) (A043566 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043703.P17055563665030548033

/-! ## A043703.P10212454818615800552

`and(A043663(n+1), A107955(n))`
-/

namespace A043703.P10212454818615800552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043663 (n + 1)) (A107955 n)

end

end A043703.P10212454818615800552

/-! ## A043703.P9009695898265623722

`A043663(n+1)%A022040(n)`
-/

namespace A043703.P9009695898265623722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043663 (n + 1)) (A022040 n)

end

end A043703.P9009695898265623722

/-! ## A043703.P3445428428737613742

`eq[A043566(n), A333657(n+1)]`
-/

namespace A043703.P3445428428737613742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043703.P3445428428737613742

/-! ## A043703.P6738313147906587517

`lt[A057427(A256075(n+1)), A043566(n)]`
-/

namespace A043703.P6738313147906587517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A256075 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043703.P6738313147906587517

/-! ## A043703.P17535927807817814498

`lt[A057427(A225531(n)), A043566(n)]`
-/

namespace A043703.P17535927807817814498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A225531 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043703.P17535927807817814498

/-! ## A043703.P6844079843616158801

`eq[A043566(n), A178815(n+1)]`
-/

namespace A043703.P6844079843616158801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043703.P6844079843616158801

/-!
# A043704: 

The programs for A043704, there is no canonical definition to state claims against.
-/

/-! ## A043704.P11294002612765012851

`A043669(n+1)%A077408(n)`
-/

namespace A043704.P11294002612765012851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043669 (n + 1)) (A077408 n)

end

end A043704.P11294002612765012851

/-! ## A043704.P1901156773369859185

`eq[A043567(n), A333657(n+1)]`
-/

namespace A043704.P1901156773369859185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043704.P1901156773369859185

/-! ## A043704.P14588292664949662826

`and(A043669(n+1), A107955(n))`
-/

namespace A043704.P14588292664949662826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043669 (n + 1)) (A107955 n)

end

end A043704.P14588292664949662826

/-! ## A043704.P14033290308624114028

`comp[A029960(n+1)]%A253342(n+1)`
-/

namespace A043704.P14033290308624114028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A253342 (n + 1))

end

end A043704.P14033290308624114028

/-! ## A043704.P13001189199902021082

`lt[A217581(A072677(n+1)), A043567(n)]`
-/

namespace A043704.P13001189199902021082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A072677 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043704.P13001189199902021082

/-! ## A043704.P11857359935896942901

`lt[A217581(A005384(n+1)), A043567(n)]`
-/

namespace A043704.P11857359935896942901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A005384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043704.P11857359935896942901

/-! ## A043704.P411829034843632008

`lt[A057237(A054000(n+2)), A043567(n)]`
-/

namespace A043704.P411829034843632008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A054000 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043704.P411829034843632008

/-! ## A043704.P8424017627731673745

`eq[A043567(n), A178815(n+1)]`
-/

namespace A043704.P8424017627731673745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043704.P8424017627731673745

/-! ## A043704.P448069535224081709

`A043669(n+1)/A001221(A000040(n+1)²)`
-/

namespace A043704.P448069535224081709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043669 (n + 1) : ℚ) / (A001221 (A000040 (n + 1) ^ 2).toNat : ℚ)

end

end A043704.P448069535224081709

/-!
# A043705: 

The programs for A043705, there is no canonical definition to state claims against.
-/

/-! ## A043705.P11798115341126453555

`eq[A001221(A380342(3*(n+1))), A043568(n)]`
-/

namespace A043705.P11798115341126453555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A380342 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043705.P11798115341126453555

/-! ## A043705.P2413195332645365033

`A043675(n+1)%A077408(n)`
-/

namespace A043705.P2413195332645365033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043675 (n + 1)) (A077408 n)

end

end A043705.P2413195332645365033

/-! ## A043705.P7132765413129502521

`eq[A043568(n), A333657(n+1)]`
-/

namespace A043705.P7132765413129502521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043705.P7132765413129502521

/-! ## A043705.P1204578934599869987

`and(A043675(n+1), A107955(n))`
-/

namespace A043705.P1204578934599869987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043675 (n + 1)) (A107955 n)

end

end A043705.P1204578934599869987

/-! ## A043705.P2317789173300646679

`lt[A056926(n*A056962(n)), n]`
-/

namespace A043705.P2317789173300646679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((n : ℤ) * A056962 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043705.P2317789173300646679

/-! ## A043705.P14096361387341675164

`lt[A217558(abs((n%2-1)^n-n)), A106618(n)²]`
-/

namespace A043705.P14096361387341675164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 |(((n % 2 : ℕ) : ℤ) - 1) ^ n - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043705.P14096361387341675164

/-! ## A043705.P14620489637837661573

`lt[gcd(n, A217558(n)), n]`
-/

namespace A043705.P14620489637837661573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A217558 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043705.P14620489637837661573

/-! ## A043705.P3747600623434587130

`lt[A217558(n), A106618(n)²]`
-/

namespace A043705.P3747600623434587130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043705.P3747600623434587130

/-! ## A043705.P6523150427827493647

`lt[A043568(A217558(n)), A043568(n)²]`
-/

namespace A043705.P6523150427827493647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A217558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043705.P6523150427827493647

/-!
# A043706: Numbers whose base-3 representation has an odd number of runs.

The programs for A043706, the canonical program `A043706.P18140700825686672469` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043706 has offset 1).

The definition of A043706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043706.P18140700825686672469

`lt[n*val(A043555(n), 2), n]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043706

/-- `lt[n*val(A043555(n), 2), n]` -/
def P18140700825686672469.Spec : Prop :=
  ∀ n, (P18140700825686672469.a n : ℤ) = A043706 (n + 1)

theorem P18140700825686672469.correct : P18140700825686672469.Spec := by
  intro n
  simp only [A043706, Nat.add_sub_cancel]

end A043706

/-! ## A043706.P11069561478178198020

`eq[1, A043555(n+1)%2]+1`
-/

namespace A043706.P11069561478178198020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043706.P11069561478178198020

namespace A043706

/-- `eq[1, A043555(n+1)%2]+1` -/
def P11069561478178198020.Spec : Prop :=
  ∀ n, (P11069561478178198020.a n : ℤ) = A043706 (n + 1)

end A043706

/-! ## A043706.P17802866527623868264

`eq[val(A043555(n), 2), A105348(2*n)]`
-/

namespace A043706.P17802866527623868264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043706.P17802866527623868264

namespace A043706

/-- `eq[val(A043555(n), 2), A105348(2*n)]` -/
def P17802866527623868264.Spec : Prop :=
  ∀ n, (P17802866527623868264.a n : ℤ) = A043706 (n + 1)

end A043706

/-! ## A043706.P15628661383696195688

`eq[A043555(n)%2, A057427(n)]`
-/

namespace A043706.P15628661383696195688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043706.P15628661383696195688

namespace A043706

/-- `eq[A043555(n)%2, A057427(n)]` -/
def P15628661383696195688.Spec : Prop :=
  ∀ n, (P15628661383696195688.a n : ℤ) = A043706 (n + 1)

end A043706

/-! ## A043706.P17291568546462761056

`eq[val(A043555(n), 2), A000007(n)]`
-/

namespace A043706.P17291568546462761056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043706.P17291568546462761056

namespace A043706

/-- `eq[val(A043555(n), 2), A000007(n)]` -/
def P17291568546462761056.Spec : Prop :=
  ∀ n, (P17291568546462761056.a n : ℤ) = A043706 (n + 1)

end A043706

/-! ## A043706.P10004105838747557767

`eq[val(A043555(n), 2), A000038(n)]`
-/

namespace A043706.P10004105838747557767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043706.P10004105838747557767

namespace A043706

/-- `eq[val(A043555(n), 2), A000038(n)]` -/
def P10004105838747557767.Spec : Prop :=
  ∀ n, (P10004105838747557767.a n : ℤ) = A043706 (n + 1)

end A043706

/-! ## A043706.P9913014019750197170

`eq[1, and(A057428(n)², A043555(n))]`
-/

namespace A043706.P9913014019750197170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n ^ 2) (A043555 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043706.P9913014019750197170

namespace A043706

/-- `eq[1, and(A057428(n)², A043555(n))]` -/
def P9913014019750197170.Spec : Prop :=
  ∀ n, (P9913014019750197170.a n : ℤ) = A043706 (n + 1)

end A043706

/-!
# A043707: Numbers whose base-4 representation has an odd number of runs.

The programs for A043707, the canonical program `A043707.P15463448008099908181` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043707 has offset 1).

The definition of A043707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043707.P5202171774326058852

`comp[A043693(n+1)-1]+1`
-/

namespace A043707.P5202171774326058852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043693 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A043707.P5202171774326058852

namespace A043707

/-- `comp[A043693(n+1)-1]+1` -/
def P5202171774326058852.Spec : Prop :=
  ∀ n, (P5202171774326058852.a n : ℤ) = A043707 (n + 1)

end A043707

/-! ## A043707.P15463448008099908181

`eq[1, A043556(n+1)%2]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043707

/-- `eq[1, A043556(n+1)%2]+1` -/
def P15463448008099908181.Spec : Prop :=
  ∀ n, (P15463448008099908181.a n : ℤ) = A043707 (n + 1)

theorem P15463448008099908181.correct : P15463448008099908181.Spec := by
  intro n
  simp only [A043707, Nat.add_sub_cancel]

end A043707

/-! ## A043707.P16167210485051818903

`eq[gcd(2, A043556(n)), A057427(n)]`
-/

namespace A043707.P16167210485051818903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043556 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043707.P16167210485051818903

namespace A043707

/-- `eq[gcd(2, A043556(n)), A057427(n)]` -/
def P16167210485051818903.Spec : Prop :=
  ∀ n, (P16167210485051818903.a n : ℤ) = A043707 (n + 1)

end A043707

/-! ## A043707.P8120677448688955871

`eq[1, A160385(A064706(n))%2]`
-/

namespace A043707.P8120677448688955871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (A064706 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043707.P8120677448688955871

namespace A043707

/-- `eq[1, A160385(A064706(n))%2]` -/
def P8120677448688955871.Spec : Prop :=
  ∀ n, (P8120677448688955871.a n : ℤ) = A043707 (n + 1)

end A043707

/-! ## A043707.P17031424343933502344

`eq[A043562(A007090(n))%2, A057427(n)]`
-/

namespace A043707.P17031424343933502344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A007090 n).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043707.P17031424343933502344

namespace A043707

/-- `eq[A043562(A007090(n))%2, A057427(n)]` -/
def P17031424343933502344.Spec : Prop :=
  ∀ n, (P17031424343933502344.a n : ℤ) = A043707 (n + 1)

end A043707

/-!
# A043708: Numbers whose base-5 representation has an odd number of runs.

The programs for A043708, there is no canonical definition to state claims against.
-/

/-! ## A043708.P17234065045574306999

`eq[1, and(1, A043557(n+1))]+1`
-/

namespace A043708.P17234065045574306999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043557 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043708.P17234065045574306999

/-! ## A043708.P9099419833156715765

`eq[A043557(n)%2, A054977(n)]`
-/

namespace A043708.P9099419833156715765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043557 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043708.P9099419833156715765

/-! ## A043708.P3527255084096768310

`eq[val(A043557(n), 2), A000038(n)]`
-/

namespace A043708.P3527255084096768310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043557 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043708.P3527255084096768310

/-! ## A043708.P9495995434583129587

`record[and(1, A043557(n+1))*A000027(n+1)]`
-/

namespace A043708.P9495995434583129587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043557 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043708.P9495995434583129587

/-! ## A043708.P13664035786334788062

`eq[2, A020639(A216885(n+1)+A043557(n))]`
-/

namespace A043708.P13664035786334788062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A216885 (n + 1) + A043557 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043708.P13664035786334788062

/-! ## A043708.P6695370214171112523

`eq[A043562(A014263(n+1))%2, A057427(n)]`
-/

namespace A043708.P6695370214171112523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A014263 (n + 1)).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043708.P6695370214171112523

/-!
# A043709: Numbers whose base-6 representation has an odd number of runs.

The programs for A043709, there is no canonical definition to state claims against.
-/

/-! ## A043709.P17988003107265177577

`eq[1, A043558(n+1)%2]+1`
-/

namespace A043709.P17988003107265177577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043558 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043709.P17988003107265177577

/-! ## A043709.P5920345439282986296

`eq[gcd(2, A043558(n)), A054977(n)]`
-/

namespace A043709.P5920345439282986296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043558 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043709.P5920345439282986296

/-! ## A043709.P14582079820473036505

`eq[1, and(A043558(n), A057427(n))]`
-/

namespace A043709.P14582079820473036505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043558 n) (A057427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043709.P14582079820473036505

/-! ## A043709.P17811684957759077812

`eq[char[A043695(n+1)], A000007(n)]`
-/

namespace A043709.P17811684957759077812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043695 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A043709.P17811684957759077812

/-!
# A043710: Numbers whose base-7 representation has an odd number of runs.

The programs for A043710, there is no canonical definition to state claims against.
-/

/-! ## A043710.P12134724376580180146

`eq[1, A043559(n+1)%2]+1`
-/

namespace A043710.P12134724376580180146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043559 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043710.P12134724376580180146

/-! ## A043710.P16633077618521472269

`eq[gcd(2, A043559(n)), A054977(n)]`
-/

namespace A043710.P16633077618521472269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043559 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043710.P16633077618521472269

/-! ## A043710.P16098808658258657781

`lt[A260196(n)+1, A043559(A028310(n))%2]`
-/

namespace A043710.P16098808658258657781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043559 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043710.P16098808658258657781

/-! ## A043710.P15815477798728896454

`eq[1, gcd(8, A043562(A028374(n+2)))]+1`
-/

namespace A043710.P15815477798728896454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A043562 (A028374 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A043710.P15815477798728896454

/-! ## A043710.P1927537061551022694

`lt[2, A020639(A043569(n+1)-A043559(n))]`
-/

namespace A043710.P1927537061551022694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043569 (n + 1) - A043559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043710.P1927537061551022694

/-! ## A043710.P9693466204813473569

`eq[(2-A043559(n))², A178334(n)]`
-/

namespace A043710.P9693466204813473569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A043559 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043710.P9693466204813473569

/-!
# A043711: Numbers whose base-8 representation has an odd number of runs.

The programs for A043711, there is no canonical definition to state claims against.
-/

/-! ## A043711.P1874216005567243007

`eq[2, 2*gcd(a(n-1), A043560(n))]` with `a(0)=1`
-/

namespace A043711.P1874216005567243007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * Int.gcd (f2 (n - 1) : ℤ) (A043560 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043711.P1874216005567243007

/-! ## A043711.P9568069625117169946

`eq[gcd(2, A043560(n)), A054977(n)]`
-/

namespace A043711.P9568069625117169946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043560 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043711.P9568069625117169946

/-! ## A043711.P9260296945609654958

`eq[7, or(A040006(n), A043560(n))]`
-/

namespace A043711.P9260296945609654958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040006 n) (A043560 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043711.P9260296945609654958

/-! ## A043711.P13539990188292955627

`eq[(-1)^A043562(A007094(n)), A057428(n)]`
-/

namespace A043711.P13539990188292955627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A043562 (A007094 n).toNat : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A043711.P13539990188292955627

/-!
# A043712: Numbers whose base-9 representation has an odd number of runs.

The programs for A043712, there is no canonical definition to state claims against.
-/

/-! ## A043712.P6004848103634788497

`eq[1, A043561(n+1)%2]+1`
-/

namespace A043712.P6004848103634788497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043561 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043712.P6004848103634788497

/-! ## A043712.P3678923548875294657

`lt[A000007(n), A043561(n)%2]`
-/

namespace A043712.P3678923548875294657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043561 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043712.P3678923548875294657

/-! ## A043712.P3422201368169488658

`eq[gcd(2, A043561(n)), A057427(n)]`
-/

namespace A043712.P3422201368169488658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043561 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043712.P3422201368169488658

/-! ## A043712.P7497449379314570951

`eq[2, A020639(A043561(n)+A000040(n+1))]`
-/

namespace A043712.P7497449379314570951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043561 n + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043712.P7497449379314570951

/-! ## A043712.P9608393315281102551

`eq[2, A141310(A008458(n)-A043561(n))]`
-/

namespace A043712.P9608393315281102551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008458 n - A043561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043712.P9608393315281102551

/-! ## A043712.P592791814705588080

`eq[2, A141310(A043561(n)+A008458(n))]`
-/

namespace A043712.P592791814705588080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A043561 n + A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043712.P592791814705588080

/-!
# A043713: Numbers whose base-10 representation has an odd number of runs.

The programs for A043713, there is no canonical definition to state claims against.
-/

/-! ## A043713.P17776784619712591235

`eq[1, A043562(n+1)%2]+1`
-/

namespace A043713.P17776784619712591235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043713.P17776784619712591235

/-! ## A043713.P2610726620510562926

`eq[3%A043562(n), A000007(n)]`
-/

namespace A043713.P2610726620510562926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A043562 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043713.P2610726620510562926

/-! ## A043713.P17422864849249322701

`eq[gcd(2, A043562(n)), A057427(n)]`
-/

namespace A043713.P17422864849249322701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043562 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043713.P17422864849249322701

/-! ## A043713.P8675154245525022090

`eq[val(A043562(n), 2), A000038(n)]`
-/

namespace A043713.P8675154245525022090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043562 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043713.P8675154245525022090

/-! ## A043713.P661520003530628597

`eq[1, and(A043562(n), A147562(n))]`
-/

namespace A043713.P661520003530628597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043562 n) (A147562 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043713.P661520003530628597

/-! ## A043713.P16496875238170848968

`eq[(2-A043562(n))², A054977(n)]`
-/

namespace A043713.P16496875238170848968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A043562 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043713.P16496875238170848968

/-! ## A043713.P4577121584822077433

`eq[val(A043562(n), 2), A000007(2*n)]`
-/

namespace A043713.P4577121584822077433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043562 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043713.P4577121584822077433

/-!
# A043714: Numbers whose base-11 representation has an odd number of runs.

The programs for A043714, there is no canonical definition to state claims against.
-/

/-! ## A043714.P16282233497632541317

`lt[2, A143348(A043563(n)+2*n)]`
-/

namespace A043714.P16282233497632541317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (A043563 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043714.P16282233497632541317

/-! ## A043714.P6449433107871557862

`lt[A027656(A043563(n)+2*n), n]`
-/

namespace A043714.P6449433107871557862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043563 n + (2 * n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043714.P6449433107871557862

/-! ## A043714.P13460726399064408231

`eq[0, A027656(A043563(n+1)+2*n)]+1`
-/

namespace A043714.P13460726399064408231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043563 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043714.P13460726399064408231

/-!
# A043715: Numbers whose base-12 representation has an odd number of runs.

The programs for A043715, there is no canonical definition to state claims against.
-/

/-! ## A043715.P6931910394362755495

`record[(n+1)*A043564(n+1)%2]`
-/

namespace A043715.P6931910394362755495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043564 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043715.P6931910394362755495

/-! ## A043715.P17351768091882229866

`eq[A043564(n)%2, A057427(n)]`
-/

namespace A043715.P17351768091882229866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043564 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043715.P17351768091882229866

/-! ## A043715.P15472263830228731405

`lt[A000038(n), and(1, A043564(n))]`
-/

namespace A043715.P15472263830228731405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043564 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043715.P15472263830228731405

/-! ## A043715.P13651124900657390962

`lt[A153881(n+1)^A043564(n), 0]`
-/

namespace A043715.P13651124900657390962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) : ℚ) ^ (A043564 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A043715.P13651124900657390962

/-! ## A043715.P17190898302288021900

`lt[2, A141310(A166744(n+1)+A043564(n))]`
-/

namespace A043715.P17190898302288021900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A166744 (n + 1) + A043564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043715.P17190898302288021900

/-!
# A043716: Numbers whose base-13 representation has an odd number of runs.

The programs for A043716, there is no canonical definition to state claims against.
-/

/-! ## A043716.P12670753969428104071

`eq[1, (2-A043565(n+1))²]+1`
-/

namespace A043716.P12670753969428104071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A043565 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043716.P12670753969428104071

/-! ## A043716.P5051864878762070018

`eq[A043565(n)%2, A158388(n)]`
-/

namespace A043716.P5051864878762070018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043565 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043716.P5051864878762070018

/-! ## A043716.P2875593955320088302

`eq[3%A043565(n), A000007(n)]`
-/

namespace A043716.P2875593955320088302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A043565 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043716.P2875593955320088302

/-! ## A043716.P8472742926219079878

`lt[val(A043565(n), 2)*A265558(n), n]`
-/

namespace A043716.P8472742926219079878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A043565 n).toNat 2 : ℤ) * A265558 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043716.P8472742926219079878

/-! ## A043716.P5978305465781413740

`eq[1, A043565(6*A020761(n)+n)%2]`
-/

namespace A043716.P5978305465781413740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043565 (6 * A020761 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043716.P5978305465781413740

/-! ## A043716.P9981133304086970734

`lt[2, A020639(A245766(n)-A043565(n))]`
-/

namespace A043716.P9981133304086970734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245766 n - A043565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043716.P9981133304086970734

/-! ## A043716.P13544617191236578639

`lt[2, A020639(A245764(n)-A043565(n))]`
-/

namespace A043716.P13544617191236578639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245764 n - A043565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043716.P13544617191236578639

/-!
# A043717: Numbers whose base-14 representation has an odd number of runs.

The programs for A043717, there is no canonical definition to state claims against.
-/

/-! ## A043717.P5956377416944231550

`eq[3%A043566(n), A000038(n)]`
-/

namespace A043717.P5956377416944231550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A043566 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043717.P5956377416944231550

/-! ## A043717.P12843730091578484361

`eq[gcd(2, A043566(n)), A057427(n)]`
-/

namespace A043717.P12843730091578484361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043566 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043717.P12843730091578484361

/-! ## A043717.P18399304496372010375

`lt[A153881(n+1)^A043566(n), A354108(n+1)]`
-/

namespace A043717.P18399304496372010375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) : ℚ) ^ (A043566 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A043717.P18399304496372010375

/-!
# A043718: Numbers whose base-15 representation has an odd number of runs.

The programs for A043718, there is no canonical definition to state claims against.
-/

/-! ## A043718.P4898407202628480874

`record[(n+1)*A043567(n+1)%2]`
-/

namespace A043718.P4898407202628480874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043567 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043718.P4898407202628480874

/-! ## A043718.P12905752693887828319

`∪[A043670(n+1), A296756(n+1)]`
-/

namespace A043718.P12905752693887828319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043718.P12905752693887828319

/-! ## A043718.P13361271183664646170

`record[and(1, A043567(n))*A028310(n)]`
-/

namespace A043718.P13361271183664646170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043567 n) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043718.P13361271183664646170

/-! ## A043718.P12864781073383753669

`and(A296756(n+1), A387410(n+1))`
-/

namespace A043718.P12864781073383753669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A296756 (n + 1)) (A387410 (n + 1))

end

end A043718.P12864781073383753669

/-! ## A043718.P5070275303787533351

`and(A296756(n+1), A387415(n+1))`
-/

namespace A043718.P5070275303787533351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A296756 (n + 1)) (A387415 (n + 1))

end

end A043718.P5070275303787533351

/-!
# A043719: Numbers whose base-16 representation has an odd number of runs.

The programs for A043719, there is no canonical definition to state claims against.
-/

/-! ## A043719.P7619489696934387011

`∪[A043676(n+1), A296759(n+1)]`
-/

namespace A043719.P7619489696934387011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043719.P7619489696934387011

/-! ## A043719.P17537411267025764767

`record[(n+1)*A043568(n+1)%2]`
-/

namespace A043719.P17537411267025764767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043568 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043719.P17537411267025764767

/-!
# A043720: a(n)=(1/2)*s(n), where s=A043544.

The programs for A043720, there is no canonical definition to state claims against.
-/

/-! ## A043720.P15560264518610027570

`floor(A043544(n+1)/2)`
-/

namespace A043720.P15560264518610027570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043544 (n + 1) : ℚ) / 2⌋

end

end A043720.P15560264518610027570

/-! ## A043720.P14374760337782358700

`A008619(A043544(n+1)-2)`
-/

namespace A043720.P14374760337782358700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A043544 (n + 1) - 2).toNat

end

end A043720.P14374760337782358700

/-! ## A043720.P18218089462697514114

`A065033(A043544(n+1)-1)`
-/

namespace A043720.P18218089462697514114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A043544 (n + 1) - 1).toNat

end

end A043720.P18218089462697514114

/-! ## A043720.P5701840713173253421

`A004526(A043544(n+1))`
-/

namespace A043720.P5701840713173253421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A043544 (n + 1)).toNat

end

end A043720.P5701840713173253421

/-! ## A043720.P5585898747935538458

`A123108(xor(1, A043544(n+1)))`
-/

namespace A043720.P5585898747935538458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A043544 (n + 1))).toNat

end

end A043720.P5585898747935538458

/-! ## A043720.P604448572408522769

`A028242(or(1, xor(1, A043544(n+1))))`
-/

namespace A043720.P604448572408522769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (Int.xor 1 (A043544 (n + 1)))).toNat

end

end A043720.P604448572408522769

/-! ## A043720.P661035514169320856

`A059995(5*A043544(n+1))`
-/

namespace A043720.P661035514169320856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (5 * A043544 (n + 1)).toNat

end

end A043720.P661035514169320856

/-! ## A043720.P13543556257093218466

`A043544(n+1)/A130130(A139610(n))`
-/

namespace A043720.P13543556257093218466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A130130 (A139610 n).toNat : ℚ)

end

end A043720.P13543556257093218466

/-! ## A043720.P15273439544060385280

`A032742(A043544(n+1)%A117318(n+1))`
-/

namespace A043720.P15273439544060385280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A043544 (n + 1)) (A117318 (n + 1))).toNat

end

end A043720.P15273439544060385280

/-! ## A043720.P12343595408604888913

`A043544(n+1)/A043529(A161680(n+6)+6)`
-/

namespace A043720.P12343595408604888913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A161680 (n + 6) + 6).toNat : ℚ)

end

end A043720.P12343595408604888913

/-! ## A043720.P12846495911434881027

`A043544(n+1)/A043529(A000096(n+6))`
-/

namespace A043720.P12846495911434881027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A000096 (n + 6)).toNat : ℚ)

end

end A043720.P12846495911434881027

/-! ## A043720.P929923196551810631

`A043544(n+1)/A043529(A166136(n+7))`
-/

namespace A043720.P929923196551810631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A166136 (n + 7)).toNat : ℚ)

end

end A043720.P929923196551810631

/-! ## A043720.P1012106273023645627

`A043544(n+1)/A043529(A105093(n+1))`
-/

namespace A043720.P1012106273023645627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A105093 (n + 1)).toNat : ℚ)

end

end A043720.P1012106273023645627

/-! ## A043720.P10601668549349336610

`A043544(n+1)/A130130(A139841(n+1))`
-/

namespace A043720.P10601668549349336610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A130130 (A139841 (n + 1)).toNat : ℚ)

end

end A043720.P10601668549349336610

/-! ## A043720.P3979755685853928885

`A043544(n+1)/A130130(∑[n+2])`
-/

namespace A043720.P3979755685853928885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A130130 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A043720.P3979755685853928885

/-! ## A043720.P13763507937016054875

`A043544(n+1)/A025581(A055998(n+2))`
-/

namespace A043720.P13763507937016054875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A025581 (A055998 (n + 2)).toNat : ℚ)

end

end A043720.P13763507937016054875

/-! ## A043720.P4232452722400702666

`A043544(n+1)/A043529(A049755(n))`
-/

namespace A043720.P4232452722400702666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A049755 n).toNat : ℚ)

end

end A043720.P4232452722400702666

/-! ## A043720.P310464760917135345

`A043544(n+1)/A048272(A161724(n+1))`
-/

namespace A043720.P310464760917135345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A048272 (A161724 (n + 1)).toNat : ℚ)

end

end A043720.P310464760917135345

/-! ## A043720.P14136238517189526681

`A043544(n+1)/A043529(A043447(n+1))`
-/

namespace A043720.P14136238517189526681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043544 (n + 1) : ℚ) / (A043529 (A043447 (n + 1)).toNat : ℚ)

end

end A043720.P14136238517189526681

/-! ## A043720.P13624292917024274555

`A025480(lcm(A000122(n²), A043544(n+1)))`
-/

namespace A043720.P13624292917024274555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm (A000122 (n ^ 2)) (A043544 (n + 1)))

end

end A043720.P13624292917024274555

/-!
# A043721: Numbers whose number of runs in their base-2 representation is congruent to 0 mod 3.

The programs for A043721, the canonical program `A043721.P7282512078216912934` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043721 has offset 1).

The definition of A043721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043721.P7282512078216912934

`eq[2, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043721

/-- `eq[2, gcd(48, a(n-A006257(n))+1)!]` -/
def P7282512078216912934.Spec : Prop :=
  ∀ n, (P7282512078216912934.a n : ℤ) = A043721 (n + 1)

theorem P7282512078216912934.correct : P7282512078216912934.Spec := by
  intro n
  simp only [A043721, Nat.add_sub_cancel]

end A043721

/-! ## A043721.P18239142591199499980

`eq[0, A000179(a(n-1-and(n, 2*n))+1)]` with `a(0)=3`
-/

namespace A043721.P18239142591199499980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000179 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P18239142591199499980

namespace A043721

/-- `eq[0, A000179(a(n-1-and(n, 2*n))+1)]` -/
def P18239142591199499980.Spec : Prop :=
  ∀ n, (P18239142591199499980.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P10971535384122403841

`eq[0, A307757(a(n-A006257(n))+1)]` with `a(0)=3`
-/

namespace A043721.P10971535384122403841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A307757 (f2 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P10971535384122403841

namespace A043721

/-- `eq[0, A307757(a(n-A006257(n))+1)]` -/
def P10971535384122403841.Spec : Prop :=
  ∀ n, (P10971535384122403841.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P15459501944008267403

`lt[2, tan(1-A005811(n))]`
-/

namespace A043721.P15459501944008267403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 - A005811 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A043721.P15459501944008267403

namespace A043721

/-- `lt[2, tan(1-A005811(n))]` -/
def P15459501944008267403.Spec : Prop :=
  ∀ n, (P15459501944008267403.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P7599743121103243262

`eq[2, (A005811(n+1)-1)%3]+1`
-/

namespace A043721.P7599743121103243262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (n + 1) - 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043721.P7599743121103243262

namespace A043721

/-- `eq[2, (A005811(n+1)-1)%3]+1` -/
def P7599743121103243262.Spec : Prop :=
  ∀ n, (P7599743121103243262.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P10667803945457813994

`eq[2, A109265(A090079(n))]`
-/

namespace A043721.P10667803945457813994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P10667803945457813994

namespace A043721

/-- `eq[2, A109265(A090079(n))]` -/
def P10667803945457813994.Spec : Prop :=
  ∀ n, (P10667803945457813994.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P7939487984400898718

`eq[3, A027615(A005811(n))]`
-/

namespace A043721.P7939487984400898718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P7939487984400898718

namespace A043721

/-- `eq[3, A027615(A005811(n))]` -/
def P7939487984400898718.Spec : Prop :=
  ∀ n, (P7939487984400898718.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P10867851849949130319

`eq[0, A065084(2*A005811(n))]`
-/

namespace A043721.P10867851849949130319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065084 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P10867851849949130319

namespace A043721

/-- `eq[0, A065084(2*A005811(n))]` -/
def P10867851849949130319.Spec : Prop :=
  ∀ n, (P10867851849949130319.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P4185655588709180451

`eq[0, A065085(2*A005811(n))]`
-/

namespace A043721.P4185655588709180451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065085 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043721.P4185655588709180451

namespace A043721

/-- `eq[0, A065085(2*A005811(n))]` -/
def P4185655588709180451.Spec : Prop :=
  ∀ n, (P4185655588709180451.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P10848848958264846076

`lt[A209599(a(A035327(n))), 1]` with `a(0)=4`
-/

namespace A043721.P10848848958264846076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A209599 (f1 (A035327 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043721.P10848848958264846076

namespace A043721

/-- `lt[A209599(a(A035327(n))), 1]` -/
def P10848848958264846076.Spec : Prop :=
  ∀ n, (P10848848958264846076.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P1383286153254754359

`eq[A005811(n)%3, A000038(n)]`
-/

namespace A043721.P1383286153254754359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P1383286153254754359

namespace A043721

/-- `eq[A005811(n)%3, A000038(n)]` -/
def P1383286153254754359.Spec : Prop :=
  ∀ n, (P1383286153254754359.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P5934799780341919927

`eq[A000038(n), A128834(A005811(n))]`
-/

namespace A043721.P5934799780341919927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P5934799780341919927

namespace A043721

/-- `eq[A000038(n), A128834(A005811(n))]` -/
def P5934799780341919927.Spec : Prop :=
  ∀ n, (P5934799780341919927.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P11794864837828443056

`eq[A100050(A005811(n)), A209229(2*n+1)]`
-/

namespace A043721.P11794864837828443056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P11794864837828443056

namespace A043721

/-- `eq[A100050(A005811(n)), A209229(2*n+1)]` -/
def P11794864837828443056.Spec : Prop :=
  ∀ n, (P11794864837828443056.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P7063730864865771877

`eq[A020639(2*(n+1))², A046820(A005811(n))]`
-/

namespace A043721.P7063730864865771877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046820 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P7063730864865771877

namespace A043721

/-- `eq[A020639(2*(n+1))², A046820(A005811(n))]` -/
def P7063730864865771877.Spec : Prop :=
  ∀ n, (P7063730864865771877.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P2783989417409986738

`eq[A014550(n)%3, A000038(n)]`
-/

namespace A043721.P2783989417409986738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P2783989417409986738

namespace A043721

/-- `eq[A014550(n)%3, A000038(n)]` -/
def P2783989417409986738.Spec : Prop :=
  ∀ n, (P2783989417409986738.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P11629545175497050971

`lt[2, gcd(A005811(n), A157532(n+1))]`
-/

namespace A043721.P11629545175497050971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 n) (A157532 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043721.P11629545175497050971

namespace A043721

/-- `lt[2, gcd(A005811(n), A157532(n+1))]` -/
def P11629545175497050971.Spec : Prop :=
  ∀ n, (P11629545175497050971.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P6589995164179055281

`eq[A016100(A005811(n)), A057427(n)]`
-/

namespace A043721.P6589995164179055281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016100 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P6589995164179055281

namespace A043721

/-- `eq[A016100(A005811(n)), A057427(n)]` -/
def P6589995164179055281.Spec : Prop :=
  ∀ n, (P6589995164179055281.a n : ℤ) = A043721 (n + 1)

end A043721

/-! ## A043721.P16038112922214333276

`eq[A000007(n), A128834(A005811(n))]`
-/

namespace A043721.P16038112922214333276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P16038112922214333276

namespace A043721

/-- `eq[A000007(n), A128834(A005811(n))]` -/
def P16038112922214333276.Spec : Prop :=
  ∀ n, (P16038112922214333276.a n : ℤ) = A043721 (n + 1)

end A043721

/-!
# A043722: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 3.

The programs for A043722, the canonical program `A043722.P11673584886771641679` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043722 has offset 1).

The definition of A043722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043722.P11673584886771641679

`eq[1, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043722

/-- `eq[1, gcd(48, a(n-A006257(n))+1)!]` -/
def P11673584886771641679.Spec : Prop :=
  ∀ n, (P11673584886771641679.a n : ℤ) = A043722 (n + 1)

theorem P11673584886771641679.correct : P11673584886771641679.Spec := by
  intro n
  simp only [A043722, Nat.add_sub_cancel]

end A043722

/-! ## A043722.P12263080960604901959

`eq[0, A000179(a(n-1-and(n, 2*n))+1)]` with `a(0)=1`
-/

namespace A043722.P12263080960604901959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000179 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P12263080960604901959

namespace A043722

/-- `eq[0, A000179(a(n-1-and(n, 2*n))+1)]` -/
def P12263080960604901959.Spec : Prop :=
  ∀ n, (P12263080960604901959.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P10863768910584392926

`eq[0, A247133(a(n-1-and(n, 2*n))+1)]` with `a(0)=1`
-/

namespace A043722.P10863768910584392926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A247133 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P10863768910584392926

namespace A043722

/-- `eq[0, A247133(a(n-1-and(n, 2*n))+1)]` -/
def P10863768910584392926.Spec : Prop :=
  ∀ n, (P10863768910584392926.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P9896196362274767784

`eq[1, A065516(a(n-1-and(n, 2*n))+1)]` with `a(0)=2`
-/

namespace A043722.P9896196362274767784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A065516 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P9896196362274767784

namespace A043722

/-- `eq[1, A065516(a(n-1-and(n, 2*n))+1)]` -/
def P9896196362274767784.Spec : Prop :=
  ∀ n, (P9896196362274767784.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P18051833413855750782

`eq[0, A307757(a(n-A006257(n))+1)]` with `a(0)=1`
-/

namespace A043722.P18051833413855750782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A307757 (f2 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P18051833413855750782

namespace A043722

/-- `eq[0, A307757(a(n-A006257(n))+1)]` -/
def P18051833413855750782.Spec : Prop :=
  ∀ n, (P18051833413855750782.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P11075777912183737036

`eq[0, A035182(a(n-A006257(n))+1)]` with `a(0)=4`
-/

namespace A043722.P11075777912183737036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A035182 (f2 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P11075777912183737036

namespace A043722

/-- `eq[0, A035182(a(n-A006257(n))+1)]` -/
def P11075777912183737036.Spec : Prop :=
  ∀ n, (P11075777912183737036.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P15970331861426020921

`lt[0, tan(A005811(n))]`
-/

namespace A043722.P15970331861426020921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A005811 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A043722.P15970331861426020921

namespace A043722

/-- `lt[0, tan(A005811(n))]` -/
def P15970331861426020921.Spec : Prop :=
  ∀ n, (P15970331861426020921.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P16220058119922135620

`eq[1, A014550(n)%3]`
-/

namespace A043722.P16220058119922135620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P16220058119922135620

namespace A043722

/-- `eq[1, A014550(n)%3]` -/
def P16220058119922135620.Spec : Prop :=
  ∀ n, (P16220058119922135620.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P14592582071759066499

`eq[2, (A005811(n+1)+1)%3]+1`
-/

namespace A043722.P14592582071759066499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (n + 1) + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043722.P14592582071759066499

namespace A043722

/-- `eq[2, (A005811(n+1)+1)%3]+1` -/
def P14592582071759066499.Spec : Prop :=
  ∀ n, (P14592582071759066499.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P6721211513258042372

`eq[1, A010872(A090079(n))]`
-/

namespace A043722.P6721211513258042372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P6721211513258042372

namespace A043722

/-- `eq[1, A010872(A090079(n))]` -/
def P6721211513258042372.Spec : Prop :=
  ∀ n, (P6721211513258042372.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P17865716858351259284

`eq[1, A016100(A005811(n)+2)]`
-/

namespace A043722.P17865716858351259284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016100 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P17865716858351259284

namespace A043722

/-- `eq[1, A016100(A005811(n)+2)]` -/
def P17865716858351259284.Spec : Prop :=
  ∀ n, (P17865716858351259284.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P16480947172404791926

`eq[1, A128834(2*A005811(n))]`
-/

namespace A043722.P16480947172404791926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P16480947172404791926

namespace A043722

/-- `eq[1, A128834(2*A005811(n))]` -/
def P16480947172404791926.Spec : Prop :=
  ∀ n, (P16480947172404791926.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P1616662112051435929

`eq[2, A010875(2*A005811(n))]`
-/

namespace A043722.P1616662112051435929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P1616662112051435929

namespace A043722

/-- `eq[2, A010875(2*A005811(n))]` -/
def P1616662112051435929.Spec : Prop :=
  ∀ n, (P1616662112051435929.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P17575307221866808127

`lt[1, A209599(a(A035327(n)))]` with `a(0)=1`
-/

namespace A043722.P17575307221866808127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A209599 (f2 (A035327 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043722.P17575307221866808127

namespace A043722

/-- `lt[1, A209599(a(A035327(n)))]` -/
def P17575307221866808127.Spec : Prop :=
  ∀ n, (P17575307221866808127.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P15674219627593231819

`eq[A000038(n), A128834(A005811(n)+2)]`
-/

namespace A043722.P15674219627593231819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043722.P15674219627593231819

namespace A043722

/-- `eq[A000038(n), A128834(A005811(n)+2)]` -/
def P15674219627593231819.Spec : Prop :=
  ∀ n, (P15674219627593231819.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P13857895467415905900

`eq[2, A057427(n)-A016100(A005811(n))]`
-/

namespace A043722.P13857895467415905900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A016100 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P13857895467415905900

namespace A043722

/-- `eq[2, A057427(n)-A016100(A005811(n))]` -/
def P13857895467415905900.Spec : Prop :=
  ∀ n, (P13857895467415905900.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P14844074552454825560

`eq[2, A277545(A010713(n)*A277561(n))]`
-/

namespace A043722.P14844074552454825560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A010713 n * A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P14844074552454825560

namespace A043722

/-- `eq[2, A277545(A010713(n)*A277561(n))]` -/
def P14844074552454825560.Spec : Prop :=
  ∀ n, (P14844074552454825560.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P9481520554899631739

`eq[2*A134451(n), A277545(A277561(n))]`
-/

namespace A043722.P9481520554899631739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043722.P9481520554899631739

namespace A043722

/-- `eq[2*A134451(n), A277545(A277561(n))]` -/
def P9481520554899631739.Spec : Prop :=
  ∀ n, (P9481520554899631739.a n : ℤ) = A043722 (n + 1)

end A043722

/-! ## A043722.P9248167490165825577

`eq[1, A071858(A003188(n))]`
-/

namespace A043722.P9248167490165825577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043722.P9248167490165825577

namespace A043722

/-- `eq[1, A071858(A003188(n))]` -/
def P9248167490165825577.Spec : Prop :=
  ∀ n, (P9248167490165825577.a n : ℤ) = A043722 (n + 1)

end A043722

/-!
# A043723: Numbers whose number of runs in their base-2 representation is congruent to 2 mod 3.

The programs for A043723, the canonical program `A043723.P3291077158498690155` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043723 has offset 1).

The definition of A043723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043723.P3291077158498690155

`eq[1, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043723

/-- `eq[1, gcd(48, a(n-A006257(n))+1)!]` -/
def P3291077158498690155.Spec : Prop :=
  ∀ n, (P3291077158498690155.a n : ℤ) = A043723 (n + 1)

theorem P3291077158498690155.correct : P3291077158498690155.Spec := by
  intro n
  simp only [A043723, Nat.add_sub_cancel]

end A043723

/-! ## A043723.P5419757668030314659

`eq[0, A114916(a(n-1-and(n, 2*n))+1)]` with `a(0)=1`
-/

namespace A043723.P5419757668030314659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A114916 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P5419757668030314659

namespace A043723

/-- `eq[0, A114916(a(n-1-and(n, 2*n))+1)]` -/
def P5419757668030314659.Spec : Prop :=
  ∀ n, (P5419757668030314659.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P9088385197454673495

`eq[0, A000179(a(n-1-and(n, 2*n))+1)]` with `a(0)=2`
-/

namespace A043723.P9088385197454673495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000179 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P9088385197454673495

namespace A043723

/-- `eq[0, A000179(a(n-1-and(n, 2*n))+1)]` -/
def P9088385197454673495.Spec : Prop :=
  ∀ n, (P9088385197454673495.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P12145436374766432724

`eq[0, A247133(a(n-1-and(n, 2*n))+1)]` with `a(0)=-1`
-/

namespace A043723.P12145436374766432724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  A247133 (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P12145436374766432724

namespace A043723

/-- `eq[0, A247133(a(n-1-and(n, 2*n))+1)]` -/
def P12145436374766432724.Spec : Prop :=
  ∀ n, (P12145436374766432724.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P11942376801904175701

`eq[0, A035182(a(n-A006257(n))+1)]` with `a(0)=1`
-/

namespace A043723.P11942376801904175701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A035182 (f2 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P11942376801904175701

namespace A043723

/-- `eq[0, A035182(a(n-A006257(n))+1)]` -/
def P11942376801904175701.Spec : Prop :=
  ∀ n, (P11942376801904175701.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P5616821716618975523

`eq[0, A134812(a(n-A006257(n))+1)]` with `a(0)=1`
-/

namespace A043723.P5616821716618975523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A134812 (f2 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P5616821716618975523

namespace A043723

/-- `eq[0, A134812(a(n-A006257(n))+1)]` -/
def P5616821716618975523.Spec : Prop :=
  ∀ n, (P5616821716618975523.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P6204140171889762212

`eq[2, A005811(n)%3]`
-/

namespace A043723.P6204140171889762212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P6204140171889762212

namespace A043723

/-- `eq[2, A005811(n)%3]` -/
def P6204140171889762212.Spec : Prop :=
  ∀ n, (P6204140171889762212.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P11241633501687029828

`eq[2, A014550(n)%3]`
-/

namespace A043723.P11241633501687029828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P11241633501687029828

namespace A043723

/-- `eq[2, A014550(n)%3]` -/
def P11241633501687029828.Spec : Prop :=
  ∀ n, (P11241633501687029828.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P8984795938149476695

`eq[0, A016100(A005811(n))]`
-/

namespace A043723.P8984795938149476695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016100 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P8984795938149476695

namespace A043723

/-- `eq[0, A016100(A005811(n))]` -/
def P8984795938149476695.Spec : Prop :=
  ∀ n, (P8984795938149476695.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P7716165564770382485

`eq[1, A033999(A073334(n))]`
-/

namespace A043723.P7716165564770382485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P7716165564770382485

namespace A043723

/-- `eq[1, A033999(A073334(n))]` -/
def P7716165564770382485.Spec : Prop :=
  ∀ n, (P7716165564770382485.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P14909442363430278935

`eq[0, A011655(A005811(n)+1)]`
-/

namespace A043723.P14909442363430278935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P14909442363430278935

namespace A043723

/-- `eq[0, A011655(A005811(n)+1)]` -/
def P14909442363430278935.Spec : Prop :=
  ∀ n, (P14909442363430278935.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P10180587038751340297

`eq[3, A006530(A005811(n)+1)]`
-/

namespace A043723.P10180587038751340297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P10180587038751340297

namespace A043723

/-- `eq[3, A006530(A005811(n)+1)]` -/
def P10180587038751340297.Spec : Prop :=
  ∀ n, (P10180587038751340297.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P10650414885189572025

`lt[A209599(a(A035327(n))), 1]` with `a(0)=1`
-/

namespace A043723.P10650414885189572025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A209599 (f1 (A035327 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043723.P10650414885189572025

namespace A043723

/-- `lt[A209599(a(A035327(n))), 1]` -/
def P10650414885189572025.Spec : Prop :=
  ∀ n, (P10650414885189572025.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P8806771930951753521

`eq[A134451(n), A277545(A277561(n))]`
-/

namespace A043723.P8806771930951753521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043723.P8806771930951753521

namespace A043723

/-- `eq[A134451(n), A277545(A277561(n))]` -/
def P8806771930951753521.Spec : Prop :=
  ∀ n, (P8806771930951753521.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P18186457208047779287

`lt[1, A071858(A003188(n))]`
-/

namespace A043723.P18186457208047779287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043723.P18186457208047779287

namespace A043723

/-- `lt[1, A071858(A003188(n))]` -/
def P18186457208047779287.Spec : Prop :=
  ∀ n, (P18186457208047779287.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P8655290869906529634

`lt[A073802(9*∏{p}[A073334(n), #]+1), 2]`
-/

namespace A043723.P8655290869906529634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (9 * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A043723.P8655290869906529634

namespace A043723

/-- `lt[A073802(9*∏{p}[A073334(n), #]+1), 2]` -/
def P8655290869906529634.Spec : Prop :=
  ∀ n, (P8655290869906529634.a n : ℤ) = A043723 (n + 1)

end A043723

/-! ## A043723.P14244175558332964822

`eq[2, A020639(A073334(n)²)]`
-/

namespace A043723.P14244175558332964822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073334 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043723.P14244175558332964822

namespace A043723

/-- `eq[2, A020639(A073334(n)²)]` -/
def P14244175558332964822.Spec : Prop :=
  ∀ n, (P14244175558332964822.a n : ℤ) = A043723 (n + 1)

end A043723

/-!
# A043724: Numbers whose number of runs in the base-2 representation is congruent to 0 mod 4.

The programs for A043724, the canonical program `A043724.P14069713857294714269` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043724 has offset 1).

The definition of A043724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043724.P14069713857294714269

`lt[3, gcd(48, a(n-A006257(n))+1)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043724

/-- `lt[3, gcd(48, a(n-A006257(n))+1)]` -/
def P14069713857294714269.Spec : Prop :=
  ∀ n, (P14069713857294714269.a n : ℤ) = A043724 (n + 1)

theorem P14069713857294714269.correct : P14069713857294714269.Spec := by
  intro n
  simp only [A043724, Nat.add_sub_cancel]

end A043724

/-! ## A043724.P1849849294632814435

`2*A268412(n+1)`
-/

namespace A043724.P1849849294632814435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268412 (n + 1)

end

end A043724.P1849849294632814435

namespace A043724

/-- `2*A268412(n+1)` -/
def P1849849294632814435.Spec : Prop :=
  ∀ n, P1849849294632814435.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P6078786801661708231

`2*lt[1, A323915(n)]`
-/

namespace A043724.P6078786801661708231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043724.P6078786801661708231

namespace A043724

/-- `2*lt[1, A323915(n)]` -/
def P6078786801661708231.Spec : Prop :=
  ∀ n, (P6078786801661708231.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P3049736412441257548

`A004277(A268412(n+1))`
-/

namespace A043724.P3049736412441257548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A268412 (n + 1)).toNat

end

end A043724.P3049736412441257548

namespace A043724

/-- `A004277(A268412(n+1))` -/
def P3049736412441257548.Spec : Prop :=
  ∀ n, P3049736412441257548.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P442834834809634603

`A051755(A268412(n+1)+1)`
-/

namespace A043724.P442834834809634603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A268412 (n + 1) + 1).toNat

end

end A043724.P442834834809634603

namespace A043724

/-- `A051755(A268412(n+1)+1)` -/
def P442834834809634603.Spec : Prop :=
  ∀ n, P442834834809634603.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P12215781355941942683

`A316571(A268412(n+1)+1)`
-/

namespace A043724.P12215781355941942683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A268412 (n + 1) + 1).toNat

end

end A043724.P12215781355941942683

namespace A043724

/-- `A316571(A268412(n+1)+1)` -/
def P12215781355941942683.Spec : Prop :=
  ∀ n, P12215781355941942683.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P12320161688916247367

`A004278(A268412(n+1)+2)`
-/

namespace A043724.P12320161688916247367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A268412 (n + 1) + 2).toNat

end

end A043724.P12320161688916247367

namespace A043724

/-- `A004278(A268412(n+1)+2)` -/
def P12320161688916247367.Spec : Prop :=
  ∀ n, P12320161688916247367.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P12896553729479770400

`A103517(A268412(n+1)-1)`
-/

namespace A043724.P12896553729479770400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A268412 (n + 1) - 1).toNat

end

end A043724.P12896553729479770400

namespace A043724

/-- `A103517(A268412(n+1)-1)` -/
def P12896553729479770400.Spec : Prop :=
  ∀ n, P12896553729479770400.a n = A043724 (n + 1)

end A043724

/-! ## A043724.P15452897378012589259

`∩[A004277(n), A268412(n)]`
-/

namespace A043724.P15452897378012589259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043724.P15452897378012589259

namespace A043724

/-- `∩[A004277(n), A268412(n)]` -/
def P15452897378012589259.Spec : Prop :=
  ∀ n, (P15452897378012589259.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P10583999545691838490

`∩[A020739(n), A268412(n)]`
-/

namespace A043724.P10583999545691838490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043724.P10583999545691838490

namespace A043724

/-- `∩[A020739(n), A268412(n)]` -/
def P10583999545691838490.Spec : Prop :=
  ∀ n, (P10583999545691838490.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P1023093947626053297

`∩[A020744(n), A268412(n)]`
-/

namespace A043724.P1023093947626053297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043724.P1023093947626053297

namespace A043724

/-- `∩[A020744(n), A268412(n)]` -/
def P1023093947626053297.Spec : Prop :=
  ∀ n, (P1023093947626053297.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P12090162414859992181

`∩[A103517(n), A268412(n)]`
-/

namespace A043724.P12090162414859992181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043724.P12090162414859992181

namespace A043724

/-- `∩[A103517(n), A268412(n)]` -/
def P12090162414859992181.Spec : Prop :=
  ∀ n, (P12090162414859992181.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P6046932779343905536

`∩[A177712(n+1), A268412(n)]`
-/

namespace A043724.P6046932779343905536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043724.P6046932779343905536

namespace A043724

/-- `∩[A177712(n+1), A268412(n)]` -/
def P6046932779343905536.Spec : Prop :=
  ∀ n, (P6046932779343905536.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P12422441765164570292

`lt[n*A246960(n), n]`
-/

namespace A043724.P12422441765164570292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246960 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043724.P12422441765164570292

namespace A043724

/-- `lt[n*A246960(n), n]` -/
def P12422441765164570292.Spec : Prop :=
  ∀ n, (P12422441765164570292.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P3795416784497221

`lt[A246960(n+1), 1]+1`
-/

namespace A043724.P3795416784497221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043724.P3795416784497221

namespace A043724

/-- `lt[A246960(n+1), 1]+1` -/
def P3795416784497221.Spec : Prop :=
  ∀ n, (P3795416784497221.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P4345436753097139813

`eq[A127802(n), A246960(n)]`
-/

namespace A043724.P4345436753097139813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043724.P4345436753097139813

namespace A043724

/-- `eq[A127802(n), A246960(n)]` -/
def P4345436753097139813.Spec : Prop :=
  ∀ n, (P4345436753097139813.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P14844122945797414789

`lt[A246960(n), tanh(A002828(n))]`
-/

namespace A043724.P14844122945797414789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A002828 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A043724.P14844122945797414789

namespace A043724

/-- `lt[A246960(n), tanh(A002828(n))]` -/
def P14844122945797414789.Spec : Prop :=
  ∀ n, (P14844122945797414789.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P6953299631481411825

`eq[2, A080940(A088748(n)+1)]`
-/

namespace A043724.P6953299631481411825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (A088748 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043724.P6953299631481411825

namespace A043724

/-- `eq[2, A080940(A088748(n)+1)]` -/
def P6953299631481411825.Spec : Prop :=
  ∀ n, (P6953299631481411825.a n : ℤ) = A043724 (n + 1)

end A043724

/-! ## A043724.P17519382349815045290

`eq[A069517(n+1), A246960(n)]`
-/

namespace A043724.P17519382349815045290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043724.P17519382349815045290

namespace A043724

/-- `eq[A069517(n+1), A246960(n)]` -/
def P17519382349815045290.Spec : Prop :=
  ∀ n, (P17519382349815045290.a n : ℤ) = A043724 (n + 1)

end A043724

/-!
# A043725: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 4.

The programs for A043725, there is no canonical definition to state claims against.
-/

/-! ## A043725.P3488352993517462039

`record[A000265(A268415(n+1))]`
-/

namespace A043725.P3488352993517462039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A268415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043725.P3488352993517462039

/-! ## A043725.P6639449081662064063

`∩[A268415(n+1), A004273(n)]`
-/

namespace A043725.P6639449081662064063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043725.P6639449081662064063

/-! ## A043725.P5938120995696062008

`∩[A268415(n+1), A060747(n)]`
-/

namespace A043725.P5938120995696062008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043725.P5938120995696062008

/-! ## A043725.P9053511961429948251

`eq[1, A246960(n)]`
-/

namespace A043725.P9053511961429948251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P9053511961429948251

/-! ## A043725.P10431471279642095117

`lt[A246960(n*(1-2/gcd(4, n))²), 3*n%2]`
-/

namespace A043725.P10431471279642095117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (SequenceMachineLib.roundAway ((n : ℚ) * (1 - 2 / (Nat.gcd 4 n : ℚ)) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043725.P10431471279642095117

/-! ## A043725.P2806628060142595123

`eq[1, A171942(A088748(n))]`
-/

namespace A043725.P2806628060142595123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P2806628060142595123

/-! ## A043725.P17420666593191605898

`eq[2, A105500(n)]`
-/

namespace A043725.P17420666593191605898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P17420666593191605898

/-! ## A043725.P14720420091895757786

`eq[3, A106826(n)]`
-/

namespace A043725.P14720420091895757786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P14720420091895757786

/-! ## A043725.P10280664662149989863

`eq[1, A005811(n)%4]`
-/

namespace A043725.P10280664662149989863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P10280664662149989863

/-! ## A043725.P5367136208470444047

`filter[2*n+1, A268411(#)]`
-/

namespace A043725.P5367136208470444047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268411 (f1 j) = 1) n)

end

end A043725.P5367136208470444047

/-! ## A043725.P3295718915023045204

`eq[1, A010873(A005811(n))]`
-/

namespace A043725.P3295718915023045204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P3295718915023045204

/-! ## A043725.P7280009336936944198

`eq[2, A001511(A005811(n)+1)]`
-/

namespace A043725.P7280009336936944198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P7280009336936944198

/-! ## A043725.P15263896107844417365

`eq[1, A050605(2*A005811(n))]`
-/

namespace A043725.P15263896107844417365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P15263896107844417365

/-! ## A043725.P17899429187468490728

`filter[A268415(n+1), A000035(#)]`
-/

namespace A043725.P17899429187468490728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043725.P17899429187468490728

/-! ## A043725.P17179666838788444912

`eq[2, A001285(n)*A100260(n+1)]`
-/

namespace A043725.P17179666838788444912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A100260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P17179666838788444912

/-! ## A043725.P5500774797861817307

`eq[2, A061393(n*A069010(n))]`
-/

namespace A043725.P5500774797861817307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 ((n : ℤ) * A069010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043725.P5500774797861817307

/-! ## A043725.P14636361285545198086

`lt[0, Δ[A332384(n)]]`
-/

namespace A043725.P14636361285545198086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043725.P14636361285545198086

/-!
# A043726: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 4.

The programs for A043726, the canonical program `A043726.P885760797965580928` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043726 has offset 1).

The definition of A043726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043726.P16479113055574235424

`2*A268415(n+1)`
-/

namespace A043726.P16479113055574235424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268415 (n + 1)

end

end A043726.P16479113055574235424

namespace A043726

/-- `2*A268415(n+1)` -/
def P16479113055574235424.Spec : Prop :=
  ∀ n, P16479113055574235424.a n = A043726 (n + 1)

end A043726

/-! ## A043726.P15879761208950250330

`A268415(A000027(n+1))+A268415(n+1)`
-/

namespace A043726.P15879761208950250330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (A000027 (n + 1)).toNat + A268415 (n + 1)

end

end A043726.P15879761208950250330

namespace A043726

/-- `A268415(A000027(n+1))+A268415(n+1)` -/
def P15879761208950250330.Spec : Prop :=
  ∀ n, P15879761208950250330.a n = A043726 (n + 1)

end A043726

/-! ## A043726.P1357224950035689485

`2*lt[A323915(n), 0]`
-/

namespace A043726.P1357224950035689485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043726.P1357224950035689485

namespace A043726

/-- `2*lt[A323915(n), 0]` -/
def P1357224950035689485.Spec : Prop :=
  ∀ n, (P1357224950035689485.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P885760797965580928

`2*eq[2, and(2, A088748(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043726

/-- `2*eq[2, and(2, A088748(n))]` -/
def P885760797965580928.Spec : Prop :=
  ∀ n, (P885760797965580928.a n : ℤ) = A043726 (n + 1)

theorem P885760797965580928.correct : P885760797965580928.Spec := by
  intro n
  simp only [A043726, Nat.add_sub_cancel]

end A043726

/-! ## A043726.P14694148313521572574

`2*eq[2, A020639(A088371(n+1))]`
-/

namespace A043726.P14694148313521572574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P14694148313521572574

namespace A043726

/-- `2*eq[2, A020639(A088371(n+1))]` -/
def P14694148313521572574.Spec : Prop :=
  ∀ n, (P14694148313521572574.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P1463951315748763333

`2*eq[1, A000035(A264596(n))]`
-/

namespace A043726.P1463951315748763333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P1463951315748763333

namespace A043726

/-- `2*eq[1, A000035(A264596(n))]` -/
def P1463951315748763333.Spec : Prop :=
  ∀ n, (P1463951315748763333.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P11458718709251684220

`A004277(A268415(n+1))`
-/

namespace A043726.P11458718709251684220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A268415 (n + 1)).toNat

end

end A043726.P11458718709251684220

namespace A043726

/-- `A004277(A268415(n+1))` -/
def P11458718709251684220.Spec : Prop :=
  ∀ n, P11458718709251684220.a n = A043726 (n + 1)

end A043726

/-! ## A043726.P13116860323499749421

`2*eq[A010059(n), A020987(n)]`
-/

namespace A043726.P13116860323499749421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043726.P13116860323499749421

namespace A043726

/-- `2*eq[A010059(n), A020987(n)]` -/
def P13116860323499749421.Spec : Prop :=
  ∀ n, (P13116860323499749421.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P7829577775935801963

`2*eq[1-A010060(n), A020987(n)]`
-/

namespace A043726.P7829577775935801963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043726.P7829577775935801963

namespace A043726

/-- `2*eq[1-A010060(n), A020987(n)]` -/
def P7829577775935801963.Spec : Prop :=
  ∀ n, (P7829577775935801963.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P17079901199039099812

`2*eq[1, A268411(n)]`
-/

namespace A043726.P17079901199039099812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P17079901199039099812

namespace A043726

/-- `2*eq[1, A268411(n)]` -/
def P17079901199039099812.Spec : Prop :=
  ∀ n, (P17079901199039099812.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P1134465827836498611

`∩[A268415(n+1), A005843(n)]`
-/

namespace A043726.P1134465827836498611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043726.P1134465827836498611

namespace A043726

/-- `∩[A268415(n+1), A005843(n)]` -/
def P1134465827836498611.Spec : Prop :=
  ∀ n, (P1134465827836498611.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P9622711550630894698

`eq[2, A246960(n)]`
-/

namespace A043726.P9622711550630894698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P9622711550630894698

namespace A043726

/-- `eq[2, A246960(n)]` -/
def P9622711550630894698.Spec : Prop :=
  ∀ n, (P9622711550630894698.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P5527682952317787983

`2*lt[0, A246960(2*n)]`
-/

namespace A043726.P5527682952317787983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043726.P5527682952317787983

namespace A043726

/-- `2*lt[0, A246960(2*n)]` -/
def P5527682952317787983.Spec : Prop :=
  ∀ n, (P5527682952317787983.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P7617618439868434391

`eq[1, A010883(A088748(n)+1)]`
-/

namespace A043726.P7617618439868434391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A088748 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P7617618439868434391

namespace A043726

/-- `eq[1, A010883(A088748(n)+1)]` -/
def P7617618439868434391.Spec : Prop :=
  ∀ n, (P7617618439868434391.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P3580930657465378755

`eq[3, A020639(or(12, A088748(n)))]`
-/

namespace A043726.P3580930657465378755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 12 (A088748 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P3580930657465378755

namespace A043726

/-- `eq[3, A020639(or(12, A088748(n)))]` -/
def P3580930657465378755.Spec : Prop :=
  ∀ n, (P3580930657465378755.a n : ℤ) = A043726 (n + 1)

end A043726

/-! ## A043726.P12642075444687796282

`eq[2, A005811(n)%4]`
-/

namespace A043726.P12642075444687796282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P12642075444687796282

namespace A043726

/-- `eq[2, A005811(n)%4]` -/
def P12642075444687796282.Spec : Prop :=
  ∀ n, (P12642075444687796282.a n : ℤ) = A043726 (n + 1)

end A043726

/-!
# A043727: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 4.

The programs for A043727, the canonical program `A043727.P2003512612865952320` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043727 has offset 1).

The definition of A043727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043727.P2003512612865952320

`∩[2*n+1, A268412(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043727

/-- `∩[2*n+1, A268412(n)]` -/
def P2003512612865952320.Spec : Prop :=
  ∀ n, (P2003512612865952320.a n : ℤ) = A043727 (n + 1)

theorem P2003512612865952320.correct : P2003512612865952320.Spec := by
  intro n
  simp only [A043727, Nat.add_sub_cancel]

end A043727

/-! ## A043727.P8653923976659937871

`lt[2, A246960(n)]`
-/

namespace A043727.P8653923976659937871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043727.P8653923976659937871

namespace A043727

/-- `lt[2, A246960(n)]` -/
def P8653923976659937871.Spec : Prop :=
  ∀ n, (P8653923976659937871.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P16602002339579722751

`eq[3, dr(A323504(n))]`
-/

namespace A043727.P16602002339579722751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043727.P16602002339579722751

namespace A043727

/-- `eq[3, dr(A323504(n))]` -/
def P16602002339579722751.Spec : Prop :=
  ∀ n, (P16602002339579722751.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P13989660322948587826

`eq[3, A246960(n*a(2%n))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A043727.P13989660322948587826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f2 =>
  A246960 ((n : ℤ) * f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P13989660322948587826

namespace A043727

/-- `eq[3, A246960(n*a(2%n))]` -/
def P13989660322948587826.Spec : Prop :=
  ∀ n, (P13989660322948587826.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P4473343369018306447

`eq[1, A010883(A088748(n))]`
-/

namespace A043727.P4473343369018306447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P4473343369018306447

namespace A043727

/-- `eq[1, A010883(A088748(n))]` -/
def P4473343369018306447.Spec : Prop :=
  ∀ n, (P4473343369018306447.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P14175968868086878466

`eq[A246960(n), A366671(n)]`
-/

namespace A043727.P14175968868086878466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043727.P14175968868086878466

namespace A043727

/-- `eq[A246960(n), A366671(n)]` -/
def P14175968868086878466.Spec : Prop :=
  ∀ n, (P14175968868086878466.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P13279278531277631008

`eq[2, A080940(A088748(n)+2)]`
-/

namespace A043727.P13279278531277631008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (A088748 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P13279278531277631008

namespace A043727

/-- `eq[2, A080940(A088748(n)+2)]` -/
def P13279278531277631008.Spec : Prop :=
  ∀ n, (P13279278531277631008.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P11821618111624459659

`eq[6, A000005(or(12, A088748(n)))]`
-/

namespace A043727.P11821618111624459659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 12 (A088748 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P11821618111624459659

namespace A043727

/-- `eq[6, A000005(or(12, A088748(n)))]` -/
def P11821618111624459659.Spec : Prop :=
  ∀ n, (P11821618111624459659.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P13383204611211812086

`eq[6, A007318(or(12, A088748(n)))]`
-/

namespace A043727.P13383204611211812086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.lor 12 (A088748 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P13383204611211812086

namespace A043727

/-- `eq[6, A007318(or(12, A088748(n)))]` -/
def P13383204611211812086.Spec : Prop :=
  ∀ n, (P13383204611211812086.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P5191431071743068626

`eq[A040001(n)+2, A246960(n)]`
-/

namespace A043727.P5191431071743068626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043727.P5191431071743068626

namespace A043727

/-- `eq[A040001(n)+2, A246960(n)]` -/
def P5191431071743068626.Spec : Prop :=
  ∀ n, (P5191431071743068626.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P7920815356394567811

`eq[A247004(n)+2, A246960(n)]`
-/

namespace A043727.P7920815356394567811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247004 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043727.P7920815356394567811

namespace A043727

/-- `eq[A247004(n)+2, A246960(n)]` -/
def P7920815356394567811.Spec : Prop :=
  ∀ n, (P7920815356394567811.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P1968941547318221707

`eq[1, A106826(n)]`
-/

namespace A043727.P1968941547318221707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P1968941547318221707

namespace A043727

/-- `eq[1, A106826(n)]` -/
def P1968941547318221707.Spec : Prop :=
  ∀ n, (P1968941547318221707.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P12923007732079236009

`eq[4, A105500(n)]`
-/

namespace A043727.P12923007732079236009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P12923007732079236009

namespace A043727

/-- `eq[4, A105500(n)]` -/
def P12923007732079236009.Spec : Prop :=
  ∀ n, (P12923007732079236009.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P12814055189015689617

`lt[2, A005811(n)%4]`
-/

namespace A043727.P12814055189015689617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043727.P12814055189015689617

namespace A043727

/-- `lt[2, A005811(n)%4]` -/
def P12814055189015689617.Spec : Prop :=
  ∀ n, (P12814055189015689617.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P16105843960910940992

`eq[3, A089080(A302436(n))]`
-/

namespace A043727.P16105843960910940992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A302436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P16105843960910940992

namespace A043727

/-- `eq[3, A089080(A302436(n))]` -/
def P16105843960910940992.Spec : Prop :=
  ∀ n, (P16105843960910940992.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P16908146972596559138

`eq[8, A000689(A005811(n))]`
-/

namespace A043727.P16908146972596559138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043727.P16908146972596559138

namespace A043727

/-- `eq[8, A000689(A005811(n))]` -/
def P16908146972596559138.Spec : Prop :=
  ∀ n, (P16908146972596559138.a n : ℤ) = A043727 (n + 1)

end A043727

/-! ## A043727.P17668868638821892049

`filter[A268412(n), A000035(#)]`
-/

namespace A043727.P17668868638821892049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043727.P17668868638821892049

namespace A043727

/-- `filter[A268412(n), A000035(#)]` -/
def P17668868638821892049.Spec : Prop :=
  ∀ n, P17668868638821892049.a n = A043727 (n + 1)

end A043727

/-! ## A043727.P9761061447336430442

`filter[A268412(n), A272664(#)]`
-/

namespace A043727.P9761061447336430442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A043727.P9761061447336430442

namespace A043727

/-- `filter[A268412(n), A272664(#)]` -/
def P9761061447336430442.Spec : Prop :=
  ∀ n, P9761061447336430442.a n = A043727 (n + 1)

end A043727

/-! ## A043727.P13380464866618566680

`lt[1, A007814(A005811(n)+1)]`
-/

namespace A043727.P13380464866618566680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043727.P13380464866618566680

namespace A043727

/-- `lt[1, A007814(A005811(n)+1)]` -/
def P13380464866618566680.Spec : Prop :=
  ∀ n, (P13380464866618566680.a n : ℤ) = A043727 (n + 1)

end A043727

/-!
# A043728: 

The programs for A043728, there is no canonical definition to state claims against.
-/

/-! ## A043728.P18335464426851925308

`eq[12, A000203(A088748(n))]`
-/

namespace A043728.P18335464426851925308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043728.P18335464426851925308

/-! ## A043728.P15205881520574485247

`eq[A040003(n)+1, A069010(n)]`
-/

namespace A043728.P15205881520574485247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P15205881520574485247

/-! ## A043728.P13992480847653744619

`eq[5*gcd(2, n), A005811(n)]`
-/

namespace A043728.P13992480847653744619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043728.P13992480847653744619

/-! ## A043728.P10168457825497170545

`lt[2, A244132(A136004(n))]`
-/

namespace A043728.P10168457825497170545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244132 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043728.P10168457825497170545

/-! ## A043728.P17204932536314068576

`eq[A005811(n), A040021(n)]`
-/

namespace A043728.P17204932536314068576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P17204932536314068576

/-! ## A043728.P10990082007388704682

`eq[A037800(n), A040003(n)]`
-/

namespace A043728.P10990082007388704682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P10990082007388704682

/-! ## A043728.P13877546698685261300

`eq[A040005(n)+1, A087116(n)]`
-/

namespace A043728.P13877546698685261300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P13877546698685261300

/-! ## A043728.P16096922561598255657

`eq[4/A000034(n), A037800(n)]`
-/

namespace A043728.P16096922561598255657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A043728.P16096922561598255657

/-! ## A043728.P10306423516939187784

`eq[A006519(a(n-2)), A037800(n)]` with `a(0)=4, a(1)=2`
-/

namespace A043728.P10306423516939187784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A006519 (f1 (n - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P10306423516939187784

/-! ## A043728.P12595688323979738612

`eq[A007444(gcd((n+2)², n²)), A037800(n)]`
-/

namespace A043728.P12595688323979738612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (Nat.gcd ((n + 2) ^ 2) (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P12595688323979738612

/-! ## A043728.P6146754636579699799

`eq[A000712(A020639(3*(n+1))), A005811(n)]`
-/

namespace A043728.P6146754636579699799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A020639 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P6146754636579699799

/-! ## A043728.P6791358805026680052

`eq[A010694(n+1), A037800(n)]`
-/

namespace A043728.P6791358805026680052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P6791358805026680052

/-! ## A043728.P12868878104744782676

`eq[2*A000034(n+1), A037800(n)]`
-/

namespace A043728.P12868878104744782676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P12868878104744782676

/-! ## A043728.P12774080126781977807

`eq[A040007(n), A069010(2*n+1)]`
-/

namespace A043728.P12774080126781977807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P12774080126781977807

/-! ## A043728.P8727728648931613105

`eq[A069010(n), A244609(n)]`
-/

namespace A043728.P8727728648931613105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043728.P8727728648931613105

/-!
# A043729: Numbers whose number of runs in their base-2 representation is congruent to 1 mod 5.

The programs for A043729, the canonical program `A043729.P1874887262937552627` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043729 has offset 1).

The definition of A043729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043729.P1874887262937552627

`eq[7, A096230(A088748(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043729

/-- `eq[7, A096230(A088748(n))]` -/
def P1874887262937552627.Spec : Prop :=
  ∀ n, (P1874887262937552627.a n : ℤ) = A043729 (n + 1)

theorem P1874887262937552627.correct : P1874887262937552627.Spec := by
  intro n
  simp only [A043729, Nat.add_sub_cancel]

end A043729

/-! ## A043729.P4332095245749778780

`eq[1, A005811(n)%5]`
-/

namespace A043729.P4332095245749778780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P4332095245749778780

namespace A043729

/-- `eq[1, A005811(n)%5]` -/
def P4332095245749778780.Spec : Prop :=
  ∀ n, (P4332095245749778780.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P12910021372747661746

`eq[1, A010874(A005811(n))]`
-/

namespace A043729.P12910021372747661746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P12910021372747661746

namespace A043729

/-- `eq[1, A010874(A005811(n))]` -/
def P12910021372747661746.Spec : Prop :=
  ∀ n, (P12910021372747661746.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P14883338398674092518

`lt[A216415(A005811(n)+2), 1]`
-/

namespace A043729.P14883338398674092518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (A005811 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043729.P14883338398674092518

namespace A043729

/-- `lt[A216415(A005811(n)+2), 1]` -/
def P14883338398674092518.Spec : Prop :=
  ∀ n, (P14883338398674092518.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P2622335421979679054

`eq[2, A053831(2*A005811(n))]`
-/

namespace A043729.P2622335421979679054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P2622335421979679054

namespace A043729

/-- `eq[2, A053831(2*A005811(n))]` -/
def P2622335421979679054.Spec : Prop :=
  ∀ n, (P2622335421979679054.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P13975522348649473464

`eq[5, A006530(A005811(n)+4)]`
-/

namespace A043729.P13975522348649473464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005811 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P13975522348649473464

namespace A043729

/-- `eq[5, A006530(A005811(n)+4)]` -/
def P13975522348649473464.Spec : Prop :=
  ∀ n, (P13975522348649473464.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P9182875709768480944

`eq[5, A006530(A136004(n))]`
-/

namespace A043729.P9182875709768480944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P9182875709768480944

namespace A043729

/-- `eq[5, A006530(A136004(n))]` -/
def P9182875709768480944.Spec : Prop :=
  ∀ n, (P9182875709768480944.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P17413393245579742051

`eq[1, A000120(A003188(n))%5]`
-/

namespace A043729.P17413393245579742051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A003188 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P17413393245579742051

namespace A043729

/-- `eq[1, A000120(A003188(n))%5]` -/
def P17413393245579742051.Spec : Prop :=
  ∀ n, (P17413393245579742051.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P6785187465382982756

`eq[A010688(n+1), A037834(A008574(2*n+1))]`
-/

namespace A043729.P6785187465382982756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A008574 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043729.P6785187465382982756

namespace A043729

/-- `eq[A010688(n+1), A037834(A008574(2*n+1))]` -/
def P6785187465382982756.Spec : Prop :=
  ∀ n, (P6785187465382982756.a n : ℤ) = A043729 (n + 1)

end A043729

/-! ## A043729.P787870866604302903

`eq[A069010(n), A084101(10*n+9)]`
-/

namespace A043729.P787870866604302903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043729.P787870866604302903

namespace A043729

/-- `eq[A069010(n), A084101(10*n+9)]` -/
def P787870866604302903.Spec : Prop :=
  ∀ n, (P787870866604302903.a n : ℤ) = A043729 (n + 1)

end A043729

/-!
# A043730: Numbers whose number of runs in their base-2 representation is congruent to 2 mod 5.

The programs for A043730, there is no canonical definition to state claims against.
-/

/-! ## A043730.P12506365930738299573

`∪[A043574(n+1), A043765(n+1)]`
-/

namespace A043730.P12506365930738299573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043730.P12506365930738299573

/-! ## A043730.P2705366380912041479

`eq[5, A096230(A088748(n))]`
-/

namespace A043730.P2705366380912041479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096230 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043730.P2705366380912041479

/-! ## A043730.P11235674431089724924

`eq[2, A005811(n)%5]`
-/

namespace A043730.P11235674431089724924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043730.P11235674431089724924

/-! ## A043730.P4134053631231528505

`eq[2, A010874(A005811(n))]`
-/

namespace A043730.P4134053631231528505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043730.P4134053631231528505

/-! ## A043730.P15561773765927791875

`lt[A216415(A005811(n)+1), 1]`
-/

namespace A043730.P15561773765927791875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (A005811 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043730.P15561773765927791875

/-! ## A043730.P4954900935537135277

`eq[2, A000120(A003188(n))%5]`
-/

namespace A043730.P4954900935537135277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A003188 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043730.P4954900935537135277

/-! ## A043730.P8089199939745327634

`eq[A010688(n), A037834(A008574(n))]`
-/

namespace A043730.P8089199939745327634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043730.P8089199939745327634

/-! ## A043730.P14382636888822382823

`eq[A001221(A005940(n+1)), A010685(n)]`
-/

namespace A043730.P14382636888822382823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043730.P14382636888822382823

/-! ## A043730.P281990957439253084

`eq[A000034(n)², A001221(A005940(n+1))]`
-/

namespace A043730.P281990957439253084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043730.P281990957439253084

/-!
# A043731: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 5.

The programs for A043731, the canonical program `A043731.P10385380765839690596` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043731 has offset 1).

The definition of A043731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043731.P10385380765839690596

`eq[1, A096230(A088748(n)+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043731

/-- `eq[1, A096230(A088748(n)+1)]` -/
def P10385380765839690596.Spec : Prop :=
  ∀ n, (P10385380765839690596.a n : ℤ) = A043731 (n + 1)

theorem P10385380765839690596.correct : P10385380765839690596.Spec := by
  intro n
  simp only [A043731, Nat.add_sub_cancel]

end A043731

/-! ## A043731.P3288352482432133529

`eq[3, A005811(n)%5]`
-/

namespace A043731.P3288352482432133529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P3288352482432133529

namespace A043731

/-- `eq[3, A005811(n)%5]` -/
def P3288352482432133529.Spec : Prop :=
  ∀ n, (P3288352482432133529.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P14208634099727557225

`eq[1, A133613(A090079(n))]`
-/

namespace A043731.P14208634099727557225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133613 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P14208634099727557225

namespace A043731

/-- `eq[1, A133613(A090079(n))]` -/
def P14208634099727557225.Spec : Prop :=
  ∀ n, (P14208634099727557225.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P17997711660404848383

`eq[1, A010874(2*A005811(n))]`
-/

namespace A043731.P17997711660404848383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P17997711660404848383

namespace A043731

/-- `eq[1, A010874(2*A005811(n))]` -/
def P17997711660404848383.Spec : Prop :=
  ∀ n, (P17997711660404848383.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P4793091373050558712

`eq[5, A006530(A005811(n)+2)]`
-/

namespace A043731.P4793091373050558712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P4793091373050558712

namespace A043731

/-- `eq[5, A006530(A005811(n)+2)]` -/
def P4793091373050558712.Spec : Prop :=
  ∀ n, (P4793091373050558712.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P12003680676195342723

`eq[A010685(n+1), A037800(2*n+1)]`
-/

namespace A043731.P12003680676195342723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P12003680676195342723

namespace A043731

/-- `eq[A010685(n+1), A037800(2*n+1)]` -/
def P12003680676195342723.Spec : Prop :=
  ∀ n, (P12003680676195342723.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P12858068447268613619

`eq[A037800(2*n)+1, A010694(n+1)]`
-/

namespace A043731.P12858068447268613619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P12858068447268613619

namespace A043731

/-- `eq[A037800(2*n)+1, A010694(n+1)]` -/
def P12858068447268613619.Spec : Prop :=
  ∀ n, (P12858068447268613619.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P12157859196187938247

`eq[2*A037800(2*n), A010696(n+1)]`
-/

namespace A043731.P12157859196187938247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037800 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P12157859196187938247

namespace A043731

/-- `eq[2*A037800(2*n), A010696(n+1)]` -/
def P12157859196187938247.Spec : Prop :=
  ∀ n, (P12157859196187938247.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P18162103741471999064

`eq[A000034(n+1)², A037800(2*n+1)]`
-/

namespace A043731.P18162103741471999064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P18162103741471999064

namespace A043731

/-- `eq[A000034(n+1)², A037800(2*n+1)]` -/
def P18162103741471999064.Spec : Prop :=
  ∀ n, (P18162103741471999064.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P2731144790057985887

`eq[A037800(2*n+1)+1, A010695(n+1)]`
-/

namespace A043731.P2731144790057985887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P2731144790057985887

namespace A043731

/-- `eq[A037800(2*n+1)+1, A010695(n+1)]` -/
def P2731144790057985887.Spec : Prop :=
  ∀ n, (P2731144790057985887.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P4527307056754513541

`eq[2*A037800(2*n+1), A010698(n+1)]`
-/

namespace A043731.P4527307056754513541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037800 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P4527307056754513541

namespace A043731

/-- `eq[2*A037800(2*n+1), A010698(n+1)]` -/
def P4527307056754513541.Spec : Prop :=
  ∀ n, (P4527307056754513541.a n : ℤ) = A043731 (n + 1)

end A043731

/-! ## A043731.P3796511079488293653

`eq[A014391(2*n+1), A037834(2*n+1)]`
-/

namespace A043731.P3796511079488293653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014391 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043731.P3796511079488293653

namespace A043731

/-- `eq[A014391(2*n+1), A037834(2*n+1)]` -/
def P3796511079488293653.Spec : Prop :=
  ∀ n, (P3796511079488293653.a n : ℤ) = A043731 (n + 1)

end A043731

/-!
# A043732: Numbers whose number of runs in the base-2 representation is congruent to 4 mod 5.

The programs for A043732, the canonical program `A043732.P8942046301726362525` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043732 has offset 1).

The definition of A043732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043732.P8942046301726362525

`eq[5, A006530(A088748(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043732

/-- `eq[5, A006530(A088748(n))]` -/
def P8942046301726362525.Spec : Prop :=
  ∀ n, (P8942046301726362525.a n : ℤ) = A043732 (n + 1)

theorem P8942046301726362525.correct : P8942046301726362525.Spec := by
  intro n
  simp only [A043732, Nat.add_sub_cancel]

end A043732

/-! ## A043732.P1361155578563787728

`eq[3-(-1)^n, A087116(n)]`
-/

namespace A043732.P1361155578563787728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P1361155578563787728

namespace A043732

/-- `eq[3-(-1)^n, A087116(n)]` -/
def P1361155578563787728.Spec : Prop :=
  ∀ n, (P1361155578563787728.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P16511781995696519664

`eq[0, A118208(A005811(n))]`
-/

namespace A043732.P16511781995696519664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118208 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P16511781995696519664

namespace A043732

/-- `eq[0, A118208(A005811(n))]` -/
def P16511781995696519664.Spec : Prop :=
  ∀ n, (P16511781995696519664.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P13682120398349424043

`eq[4, A057728(A136004(n))]`
-/

namespace A043732.P13682120398349424043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P13682120398349424043

namespace A043732

/-- `eq[4, A057728(A136004(n))]` -/
def P13682120398349424043.Spec : Prop :=
  ∀ n, (P13682120398349424043.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P14925957635578131418

`eq[A005811(n), A010714(n)]`
-/

namespace A043732.P14925957635578131418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P14925957635578131418

namespace A043732

/-- `eq[A005811(n), A010714(n)]` -/
def P14925957635578131418.Spec : Prop :=
  ∀ n, (P14925957635578131418.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P16382663313370548172

`eq[A010694(n), A033264(n)]`
-/

namespace A043732.P16382663313370548172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P16382663313370548172

namespace A043732

/-- `eq[A010694(n), A033264(n)]` -/
def P16382663313370548172.Spec : Prop :=
  ∀ n, (P16382663313370548172.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P2859508840570807649

`eq[A010685(n), A037800(n)]`
-/

namespace A043732.P2859508840570807649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P2859508840570807649

namespace A043732

/-- `eq[A010685(n), A037800(n)]` -/
def P2859508840570807649.Spec : Prop :=
  ∀ n, (P2859508840570807649.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P6366864852931053826

`eq[A010693(n)², A005811(n)]`
-/

namespace A043732.P6366864852931053826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P6366864852931053826

namespace A043732

/-- `eq[A010693(n)², A005811(n)]` -/
def P6366864852931053826.Spec : Prop :=
  ∀ n, (P6366864852931053826.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P15900618313641449831

`eq[A000034(n)², A037800(n)]`
-/

namespace A043732.P15900618313641449831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P15900618313641449831

namespace A043732

/-- `eq[A000034(n)², A037800(n)]` -/
def P15900618313641449831.Spec : Prop :=
  ∀ n, (P15900618313641449831.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P1384591916877546452

`eq[A106826(n)², A005811(n)]`
-/

namespace A043732.P1384591916877546452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P1384591916877546452

namespace A043732

/-- `eq[A106826(n)², A005811(n)]` -/
def P1384591916877546452.Spec : Prop :=
  ∀ n, (P1384591916877546452.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P9576819302745065766

`eq[5, A006530(A005811(n)+1)]`
-/

namespace A043732.P9576819302745065766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P9576819302745065766

namespace A043732

/-- `eq[5, A006530(A005811(n)+1)]` -/
def P9576819302745065766.Spec : Prop :=
  ∀ n, (P9576819302745065766.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P5936801714939513647

`eq[5, A026741(A005811(n)+1)]`
-/

namespace A043732.P5936801714939513647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P5936801714939513647

namespace A043732

/-- `eq[5, A026741(A005811(n)+1)]` -/
def P5936801714939513647.Spec : Prop :=
  ∀ n, (P5936801714939513647.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P856596751899650252

`eq[6, A000593(A005811(n)+1)]`
-/

namespace A043732.P856596751899650252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043732.P856596751899650252

namespace A043732

/-- `eq[6, A000593(A005811(n)+1)]` -/
def P856596751899650252.Spec : Prop :=
  ∀ n, (P856596751899650252.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P18400392525787182026

`eq[A010697(n)+2, A005811(n)]`
-/

namespace A043732.P18400392525787182026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P18400392525787182026

namespace A043732

/-- `eq[A010697(n)+2, A005811(n)]` -/
def P18400392525787182026.Spec : Prop :=
  ∀ n, (P18400392525787182026.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P3792123570349789666

`eq[(and(3, A105500(n))+1)², A005811(n)]`
-/

namespace A043732.P3792123570349789666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 3 (A105500 n) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P3792123570349789666

namespace A043732

/-- `eq[(and(3, A105500(n))+1)², A005811(n)]` -/
def P3792123570349789666.Spec : Prop :=
  ∀ n, (P3792123570349789666.a n : ℤ) = A043732 (n + 1)

end A043732

/-! ## A043732.P10672653399353575705

`eq[A055385(n+1), A069010(n)]`
-/

namespace A043732.P10672653399353575705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043732.P10672653399353575705

namespace A043732

/-- `eq[A055385(n+1), A069010(n)]` -/
def P10672653399353575705.Spec : Prop :=
  ∀ n, (P10672653399353575705.a n : ℤ) = A043732 (n + 1)

end A043732

/-!
# A043733: 

The programs for A043733, there is no canonical definition to state claims against.
-/

/-! ## A043733.P11408987218086789333

`∩[A043721(n+1), A020739(n)]`
-/

namespace A043733.P11408987218086789333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043733.P11408987218086789333

/-! ## A043733.P14157359613059153953

`∩[A043721(n+1), A004277(n)]`
-/

namespace A043733.P14157359613059153953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043733.P14157359613059153953

/-! ## A043733.P12271697531344261735

`∩[A043721(n+1), A005843(n)]`
-/

namespace A043733.P12271697531344261735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043733.P12271697531344261735

/-! ## A043733.P352542970094920198

`∩[A043721(n+1), A004275(n)]`
-/

namespace A043733.P352542970094920198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043733.P352542970094920198

/-! ## A043733.P6316790961526064705

`∩[A043721(n+1), A004271(n)]`
-/

namespace A043733.P6316790961526064705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043733.P6316790961526064705

/-! ## A043733.P15153267426175579696

`eq[1, A297330(A073334(n)+1)]`
-/

namespace A043733.P15153267426175579696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A073334 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043733.P15153267426175579696

/-! ## A043733.P7666699354422515520

`filter[A043721(n+1), A135528(#)]`
-/

namespace A043733.P7666699354422515520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A043733.P7666699354422515520

/-! ## A043733.P13690591803864844897

`filter[A043721(n+1), A059841(#)]`
-/

namespace A043733.P13690591803864844897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043733.P13690591803864844897

/-! ## A043733.P18142993933768406012

`filter[A043721(n+1), A266591(#)]`
-/

namespace A043733.P18142993933768406012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A043733.P18142993933768406012

/-! ## A043733.P13690496145006092841

`filter[A043721(n+1), A267043(#)]`
-/

namespace A043733.P13690496145006092841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A043733.P13690496145006092841

/-!
# A043734: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 6.

The programs for A043734, the canonical program `A043734.P2081533944662856459` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043734 has offset 1).

The definition of A043734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043734.P2081533944662856459

`record[A005408(n)*A010892(A005811(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043734

/-- `record[A005408(n)*A010892(A005811(n))]` -/
def P2081533944662856459.Spec : Prop :=
  ∀ n, P2081533944662856459.a n = A043734 (n + 1)

theorem P2081533944662856459.correct : P2081533944662856459.Spec := by
  intro n
  simp only [A043734, Nat.add_sub_cancel]

end A043734

/-! ## A043734.P3548177289340744983

`∩[2*n+1, A043722(n+1)]`
-/

namespace A043734.P3548177289340744983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P3548177289340744983

namespace A043734

/-- `∩[2*n+1, A043722(n+1)]` -/
def P3548177289340744983.Spec : Prop :=
  ∀ n, (P3548177289340744983.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P3297067241521683803

`∩[A043722(n+1), A004273(n)]`
-/

namespace A043734.P3297067241521683803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P3297067241521683803

namespace A043734

/-- `∩[A043722(n+1), A004273(n)]` -/
def P3297067241521683803.Spec : Prop :=
  ∀ n, (P3297067241521683803.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P217744860130813554

`∩[A043722(n+1), A060747(n)]`
-/

namespace A043734.P217744860130813554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P217744860130813554

namespace A043734

/-- `∩[A043722(n+1), A060747(n)]` -/
def P217744860130813554.Spec : Prop :=
  ∀ n, (P217744860130813554.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P670207355672001135

`∩[A043722(n+1), A005843(n)+1]`
-/

namespace A043734.P670207355672001135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P670207355672001135

namespace A043734

/-- `∩[A043722(n+1), A005843(n)+1]` -/
def P670207355672001135.Spec : Prop :=
  ∀ n, (P670207355672001135.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P2180533807836085292

`∩[A043722(n+1), A004274(n)]`
-/

namespace A043734.P2180533807836085292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P2180533807836085292

namespace A043734

/-- `∩[A043722(n+1), A004274(n)]` -/
def P2180533807836085292.Spec : Prop :=
  ∀ n, (P2180533807836085292.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P14273682507105717473

`∩[A043722(n+1), A004281(n)]`
-/

namespace A043734.P14273682507105717473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P14273682507105717473

namespace A043734

/-- `∩[A043722(n+1), A004281(n)]` -/
def P14273682507105717473.Spec : Prop :=
  ∀ n, (P14273682507105717473.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P13473104224965929197

`∩[A043722(n+1), A004276(n)]`
-/

namespace A043734.P13473104224965929197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043734.P13473104224965929197

namespace A043734

/-- `∩[A043722(n+1), A004276(n)]` -/
def P13473104224965929197.Spec : Prop :=
  ∀ n, (P13473104224965929197.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P6823442405620898058

`eq[2, A088748(n)%6]`
-/

namespace A043734.P6823442405620898058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088748 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043734.P6823442405620898058

namespace A043734

/-- `eq[2, A088748(n)%6]` -/
def P6823442405620898058.Spec : Prop :=
  ∀ n, (P6823442405620898058.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P635836182438404454

`eq[1, A010875(A005811(n))]`
-/

namespace A043734.P635836182438404454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043734.P635836182438404454

namespace A043734

/-- `eq[1, A010875(A005811(n))]` -/
def P635836182438404454.Spec : Prop :=
  ∀ n, (P635836182438404454.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P8938809637971787983

`filter[A043722(n+1), A000035(#)]`
-/

namespace A043734.P8938809637971787983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043734.P8938809637971787983

namespace A043734

/-- `filter[A043722(n+1), A000035(#)]` -/
def P8938809637971787983.Spec : Prop :=
  ∀ n, P8938809637971787983.a n = A043734 (n + 1)

end A043734

/-! ## A043734.P8898424479806881568

`filter[A043722(n+1), A267256(#)]`
-/

namespace A043734.P8898424479806881568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A043734.P8898424479806881568

namespace A043734

/-- `filter[A043722(n+1), A267256(#)]` -/
def P8898424479806881568.Spec : Prop :=
  ∀ n, P8898424479806881568.a n = A043734 (n + 1)

end A043734

/-! ## A043734.P3291942064213426354

`∩[A043723(n+1), A004275(A004275(n))]/2`
-/

namespace A043734.P3291942064213426354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004275 n).toNat

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043734.P3291942064213426354

namespace A043734

/-- `∩[A043723(n+1), A004275(A004275(n))]/2` -/
def P3291942064213426354.Spec : Prop :=
  ∀ n, P3291942064213426354.a n = (A043734 (n + 1) : ℚ)

end A043734

/-! ## A043734.P5229181163670350668

`lt[A007814(n+2), sin(A005811(2*n))]`
-/

namespace A043734.P5229181163670350668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A005811 (2 * n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A043734.P5229181163670350668

namespace A043734

/-- `lt[A007814(n+2), sin(A005811(2*n))]` -/
def P5229181163670350668.Spec : Prop :=
  ∀ n, (P5229181163670350668.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P17714162480366187272

`record[A000265(A004525(A043740(n+1)))]`
-/

namespace A043734.P17714162480366187272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004525 (A043740 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043734.P17714162480366187272

namespace A043734

/-- `record[A000265(A004525(A043740(n+1)))]` -/
def P17714162480366187272.Spec : Prop :=
  ∀ n, P17714162480366187272.a n = A043734 (n + 1)

end A043734

/-! ## A043734.P15040835953733842676

`eq[A000689(A005811(n)), A005811(2*n)]`
-/

namespace A043734.P15040835953733842676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043734.P15040835953733842676

namespace A043734

/-- `eq[A000689(A005811(n)), A005811(2*n)]` -/
def P15040835953733842676.Spec : Prop :=
  ∀ n, (P15040835953733842676.a n : ℤ) = A043734 (n + 1)

end A043734

/-! ## A043734.P17360265383687015225

`eq[A087116(n), A265723(n*A087116(n))]`
-/

namespace A043734.P17360265383687015225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 ((n : ℤ) * A087116 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043734.P17360265383687015225

namespace A043734

/-- `eq[A087116(n), A265723(n*A087116(n))]` -/
def P17360265383687015225.Spec : Prop :=
  ∀ n, (P17360265383687015225.a n : ℤ) = A043734 (n + 1)

end A043734

/-!
# A043735: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 6.

The programs for A043735, the canonical program `A043735.P6936913590569914898` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043735 has offset 1).

The definition of A043735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043735.P7678182524176196726

`∩[2*n, A043723(n+1)]`
-/

namespace A043735.P7678182524176196726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P7678182524176196726

namespace A043735

/-- `∩[2*n, A043723(n+1)]` -/
def P7678182524176196726.Spec : Prop :=
  ∀ n, (P7678182524176196726.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P6936913590569914898

`2*eq[1, A128834(A005811(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043735

/-- `2*eq[1, A128834(A005811(n))]` -/
def P6936913590569914898.Spec : Prop :=
  ∀ n, (P6936913590569914898.a n : ℤ) = A043735 (n + 1)

theorem P6936913590569914898.correct : P6936913590569914898.Spec := by
  intro n
  simp only [A043735, Nat.add_sub_cancel]

end A043735

/-! ## A043735.P2477178922359575442

`2*eq[1, A173677(A277561(n))]`
-/

namespace A043735.P2477178922359575442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P2477178922359575442

namespace A043735

/-- `2*eq[1, A173677(A277561(n))]` -/
def P2477178922359575442.Spec : Prop :=
  ∀ n, (P2477178922359575442.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P4268073744836009375

`∩[A043723(n+1), A004271(n)]`
-/

namespace A043735.P4268073744836009375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P4268073744836009375

namespace A043735

/-- `∩[A043723(n+1), A004271(n)]` -/
def P4268073744836009375.Spec : Prop :=
  ∀ n, (P4268073744836009375.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P12761990864630970425

`∩[A043723(n+1), A004275(n)]`
-/

namespace A043735.P12761990864630970425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P12761990864630970425

namespace A043735

/-- `∩[A043723(n+1), A004275(n)]` -/
def P12761990864630970425.Spec : Prop :=
  ∀ n, (P12761990864630970425.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P9097093476077960867

`∩[A043723(n+1), A004277(n)]`
-/

namespace A043735.P9097093476077960867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P9097093476077960867

namespace A043735

/-- `∩[A043723(n+1), A004277(n)]` -/
def P9097093476077960867.Spec : Prop :=
  ∀ n, (P9097093476077960867.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P7988983487319504026

`∩[A043723(n+1), A004279(n)]`
-/

namespace A043735.P7988983487319504026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P7988983487319504026

namespace A043735

/-- `∩[A043723(n+1), A004279(n)]` -/
def P7988983487319504026.Spec : Prop :=
  ∀ n, (P7988983487319504026.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P2992401118305535429

`∩[A043723(n+1), A005843(n)]`
-/

namespace A043735.P2992401118305535429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P2992401118305535429

namespace A043735

/-- `∩[A043723(n+1), A005843(n)]` -/
def P2992401118305535429.Spec : Prop :=
  ∀ n, (P2992401118305535429.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P7015395351390137313

`∩[A043723(n+1), A004272(n)]`
-/

namespace A043735.P7015395351390137313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043735.P7015395351390137313

namespace A043735

/-- `∩[A043723(n+1), A004272(n)]` -/
def P7015395351390137313.Spec : Prop :=
  ∀ n, (P7015395351390137313.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P13818749299171652548

`eq[3, A020639(A088748(n))]`
-/

namespace A043735.P13818749299171652548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P13818749299171652548

namespace A043735

/-- `eq[3, A020639(A088748(n))]` -/
def P13818749299171652548.Spec : Prop :=
  ∀ n, (P13818749299171652548.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P15567214406712830893

`lt[sin(1), sin(A005811(n))]`
-/

namespace A043735.P15567214406712830893
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A005811 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043735.P15567214406712830893

namespace A043735

/-- `lt[sin(1), sin(A005811(n))]` -/
def P15567214406712830893.Spec : Prop :=
  ∀ n, (P15567214406712830893.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P15948987676044331423

`eq[2, A010875(A005811(n))]`
-/

namespace A043735.P15948987676044331423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P15948987676044331423

namespace A043735

/-- `eq[2, A010875(A005811(n))]` -/
def P15948987676044331423.Spec : Prop :=
  ∀ n, (P15948987676044331423.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P15544882128605689382

`eq[3, A286622(A136004(n))]`
-/

namespace A043735.P15544882128605689382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P15544882128605689382

namespace A043735

/-- `eq[3, A286622(A136004(n))]` -/
def P15544882128605689382.Spec : Prop :=
  ∀ n, (P15544882128605689382.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P2459749761154326548

`eq[2, A000120(A136004(n)²)]`
-/

namespace A043735.P2459749761154326548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A136004 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P2459749761154326548

namespace A043735

/-- `eq[2, A000120(A136004(n)²)]` -/
def P2459749761154326548.Spec : Prop :=
  ∀ n, (P2459749761154326548.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P14613371511649332566

`eq[1, A003815(A073334(n)+1)]`
-/

namespace A043735.P14613371511649332566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A073334 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P14613371511649332566

namespace A043735

/-- `eq[1, A003815(A073334(n)+1)]` -/
def P14613371511649332566.Spec : Prop :=
  ∀ n, (P14613371511649332566.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P8608064873463032014

`eq[1, A002175(A136004(n)-2)]`
-/

namespace A043735.P8608064873463032014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 (A136004 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P8608064873463032014

namespace A043735

/-- `eq[1, A002175(A136004(n)-2)]` -/
def P8608064873463032014.Spec : Prop :=
  ∀ n, (P8608064873463032014.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P18402909028170134693

`eq[1, A027615(2*A005811(n))]`
-/

namespace A043735.P18402909028170134693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P18402909028170134693

namespace A043735

/-- `eq[1, A027615(2*A005811(n))]` -/
def P18402909028170134693.Spec : Prop :=
  ∀ n, (P18402909028170134693.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P1816930826191574366

`eq[2, A000122(2*A005811(n))]`
-/

namespace A043735.P1816930826191574366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P1816930826191574366

namespace A043735

/-- `eq[2, A000122(2*A005811(n))]` -/
def P1816930826191574366.Spec : Prop :=
  ∀ n, (P1816930826191574366.a n : ℤ) = A043735 (n + 1)

end A043735

/-! ## A043735.P6295501613334177000

`eq[2, A028641(2*A005811(n))]`
-/

namespace A043735.P6295501613334177000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P6295501613334177000

namespace A043735

/-- `eq[2, A028641(2*A005811(n))]` -/
def P6295501613334177000.Spec : Prop :=
  ∀ n, (P6295501613334177000.a n : ℤ) = A043735 (n + 1)

end A043735

/-!
# A043736: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 6.

The programs for A043736, the canonical program `A043736.P4860904662440002957` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043736 has offset 1).

The definition of A043736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043736.P4860904662440002957

`∩[2*n+1, A043721(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043736

/-- `∩[2*n+1, A043721(n+1)]` -/
def P4860904662440002957.Spec : Prop :=
  ∀ n, (P4860904662440002957.a n : ℤ) = A043736 (n + 1)

theorem P4860904662440002957.correct : P4860904662440002957.Spec := by
  intro n
  simp only [A043736, Nat.add_sub_cancel]

end A043736

/-! ## A043736.P14735750521611496506

`∩[A043721(n+1), A004273(n)]`
-/

namespace A043736.P14735750521611496506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P14735750521611496506

namespace A043736

/-- `∩[A043721(n+1), A004273(n)]` -/
def P14735750521611496506.Spec : Prop :=
  ∀ n, (P14735750521611496506.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P1276575905642584085

`∩[A043721(n+1), A004274(n)]`
-/

namespace A043736.P1276575905642584085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P1276575905642584085

namespace A043736

/-- `∩[A043721(n+1), A004274(n)]` -/
def P1276575905642584085.Spec : Prop :=
  ∀ n, (P1276575905642584085.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P8268466607283300570

`∩[A043721(n+1), A004276(n)]`
-/

namespace A043736.P8268466607283300570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P8268466607283300570

namespace A043736

/-- `∩[A043721(n+1), A004276(n)]` -/
def P8268466607283300570.Spec : Prop :=
  ∀ n, (P8268466607283300570.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P12500015891435078081

`∩[A043721(n+1), A004281(n)]`
-/

namespace A043736.P12500015891435078081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P12500015891435078081

namespace A043736

/-- `∩[A043721(n+1), A004281(n)]` -/
def P12500015891435078081.Spec : Prop :=
  ∀ n, (P12500015891435078081.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P5034369593097255393

`eq[4, A088748(n)%6]`
-/

namespace A043736.P5034369593097255393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088748 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043736.P5034369593097255393

namespace A043736

/-- `eq[4, A088748(n)%6]` -/
def P5034369593097255393.Spec : Prop :=
  ∀ n, (P5034369593097255393.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P5528819382555124537

`eq[1, A146501(A088748(n))]`
-/

namespace A043736.P5528819382555124537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043736.P5528819382555124537

namespace A043736

/-- `eq[1, A146501(A088748(n))]` -/
def P5528819382555124537.Spec : Prop :=
  ∀ n, (P5528819382555124537.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P11502866330339104455

`eq[3, A005811(n)%6]`
-/

namespace A043736.P11502866330339104455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043736.P11502866330339104455

namespace A043736

/-- `eq[3, A005811(n)%6]` -/
def P11502866330339104455.Spec : Prop :=
  ∀ n, (P11502866330339104455.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P11797905190355369120

`lt[3, A260233(A136004(n))]`
-/

namespace A043736.P11797905190355369120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260233 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043736.P11797905190355369120

namespace A043736

/-- `lt[3, A260233(A136004(n))]` -/
def P11797905190355369120.Spec : Prop :=
  ∀ n, (P11797905190355369120.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P6969795381349722761

`eq[3, A002262(xor(17, A005811(n)))]`
-/

namespace A043736.P6969795381349722761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.xor 17 (A005811 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043736.P6969795381349722761

namespace A043736

/-- `eq[3, A002262(xor(17, A005811(n)))]` -/
def P6969795381349722761.Spec : Prop :=
  ∀ n, (P6969795381349722761.a n : ℤ) = A043736 (n + 1)

end A043736

/-! ## A043736.P370309722002854082

`filter[A043721(n+1), A000035(#)]`
-/

namespace A043736.P370309722002854082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043736.P370309722002854082

namespace A043736

/-- `filter[A043721(n+1), A000035(#)]` -/
def P370309722002854082.Spec : Prop :=
  ∀ n, P370309722002854082.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P9859453884358905749

`filter[A043721(n+1), A266070(#)]`
-/

namespace A043736.P9859453884358905749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A043736.P9859453884358905749

namespace A043736

/-- `filter[A043721(n+1), A266070(#)]` -/
def P9859453884358905749.Spec : Prop :=
  ∀ n, P9859453884358905749.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P1375219441928692210

`filter[A043721(n+1), A266246(#)]`
-/

namespace A043736.P1375219441928692210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A043736.P1375219441928692210

namespace A043736

/-- `filter[A043721(n+1), A266246(#)]` -/
def P1375219441928692210.Spec : Prop :=
  ∀ n, P1375219441928692210.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P3265583170459078173

`filter[A043721(n+1), A266611(#)]`
-/

namespace A043736.P3265583170459078173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A043736.P3265583170459078173

namespace A043736

/-- `filter[A043721(n+1), A266611(#)]` -/
def P3265583170459078173.Spec : Prop :=
  ∀ n, P3265583170459078173.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P2346053250255004113

`filter[A043721(n+1), A266719(#)]`
-/

namespace A043736.P2346053250255004113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A043736.P2346053250255004113

namespace A043736

/-- `filter[A043721(n+1), A266719(#)]` -/
def P2346053250255004113.Spec : Prop :=
  ∀ n, P2346053250255004113.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P18106233118034325427

`filter[A043721(n+1), A267155(#)]`
-/

namespace A043736.P18106233118034325427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A043736.P18106233118034325427

namespace A043736

/-- `filter[A043721(n+1), A267155(#)]` -/
def P18106233118034325427.Spec : Prop :=
  ∀ n, P18106233118034325427.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P938946165054401895

`filter[A043721(n+1), A267256(#)]`
-/

namespace A043736.P938946165054401895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A043736.P938946165054401895

namespace A043736

/-- `filter[A043721(n+1), A267256(#)]` -/
def P938946165054401895.Spec : Prop :=
  ∀ n, P938946165054401895.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P2834920205392667996

`filter[A043721(n+1), A272664(#)]`
-/

namespace A043736.P2834920205392667996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A043736.P2834920205392667996

namespace A043736

/-- `filter[A043721(n+1), A272664(#)]` -/
def P2834920205392667996.Spec : Prop :=
  ∀ n, P2834920205392667996.a n = A043736 (n + 1)

end A043736

/-! ## A043736.P894171917252489188

`filter[A043721(n+1), A296066(#)]`
-/

namespace A043736.P894171917252489188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A043736.P894171917252489188

namespace A043736

/-- `filter[A043721(n+1), A296066(#)]` -/
def P894171917252489188.Spec : Prop :=
  ∀ n, P894171917252489188.a n = A043736 (n + 1)

end A043736

/-!
# A043737: 

The programs for A043737, there is no canonical definition to state claims against.
-/

/-! ## A043737.P11731881099568720860

`∩[A177712(n+1), A043722(n+1)]`
-/

namespace A043737.P11731881099568720860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043737.P11731881099568720860

/-! ## A043737.P17945671201897897564

`∩[2*n, A043722(n+1)]`
-/

namespace A043737.P17945671201897897564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043737.P17945671201897897564

/-! ## A043737.P4856613778080598000

`∩[A043722(n+1), A005843(n)]`
-/

namespace A043737.P4856613778080598000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043737.P4856613778080598000

/-! ## A043737.P10775732086644994502

`∩[A043722(n+1), A020739(n)]`
-/

namespace A043737.P10775732086644994502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043737.P10775732086644994502

/-! ## A043737.P1715687267929615400

`eq[2, A146501(A088748(n))]`
-/

namespace A043737.P1715687267929615400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P1715687267929615400

/-! ## A043737.P9353111527550188156

`eq[2, A001613(A088748(n)²)]`
-/

namespace A043737.P9353111527550188156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A088748 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P9353111527550188156

/-! ## A043737.P4263274649611393043

`eq[gcd(64, n+1), A163810(A072219(n+1))]`
-/

namespace A043737.P4263274649611393043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 64 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A072219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P4263274649611393043

/-! ## A043737.P2858677498525419352

`eq[4, A005811(n)%6]`
-/

namespace A043737.P2858677498525419352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P2858677498525419352

/-! ## A043737.P14311277504632560080

`eq[3^(n%2), A014550(n)%3]`
-/

namespace A043737.P14311277504632560080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P14311277504632560080

/-! ## A043737.P1246578946120453281

`eq[2, A007920(A073334(n))]`
-/

namespace A043737.P1246578946120453281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P1246578946120453281

/-! ## A043737.P11579084338956706282

`eq[4, A010875(A005811(n))]`
-/

namespace A043737.P11579084338956706282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P11579084338956706282

/-! ## A043737.P4144801848976521991

`eq[3, A318552(A005811(n)+1)]`
-/

namespace A043737.P4144801848976521991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P4144801848976521991

/-! ## A043737.P14979944644264885257

`filter[A043722(n+1), A059841(#)]`
-/

namespace A043737.P14979944644264885257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043737.P14979944644264885257

/-! ## A043737.P16954441775189914696

`filter[A043722(n+1), A267043(#)]`
-/

namespace A043737.P16954441775189914696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A043737.P16954441775189914696

/-! ## A043737.P381570537931187055

`filter[A043722(n+2), A135528(#)]`
-/

namespace A043737.P381570537931187055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A043737.P381570537931187055

/-! ## A043737.P1383950673066147465

`filter[A043722(n+2), A266591(#)]`
-/

namespace A043737.P1383950673066147465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A043737.P1383950673066147465

/-! ## A043737.P16731158622562797214

`eq[2-A033999(n), A014550(n)%3]`
-/

namespace A043737.P16731158622562797214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043737.P16731158622562797214

/-! ## A043737.P5413549403321046305

`eq[and(1, n+1), A173678(A277561(n))]`
-/

namespace A043737.P5413549403321046305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043737.P5413549403321046305

/-! ## A043737.P4918707030641259229

`eq[A003815(A073334(n)), A059841(n)]`
-/

namespace A043737.P4918707030641259229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A073334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043737.P4918707030641259229

/-! ## A043737.P5513152342309963855

`eq[A000035(n), A286112(A005811(n))]`
-/

namespace A043737.P5513152342309963855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286112 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043737.P5513152342309963855

/-!
# A043738: 

The programs for A043738, there is no canonical definition to state claims against.
-/

/-! ## A043738.P15142826147108258373

`∩[2*n+1, A043723(n+1)]`
-/

namespace A043738.P15142826147108258373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043738.P15142826147108258373

/-! ## A043738.P1731402715837749327

`∩[A043723(n+1), A020742(n)]`
-/

namespace A043738.P1731402715837749327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043738.P1731402715837749327

/-! ## A043738.P2669367402090656153

`∩[A043723(n+1), A004273(n)]`
-/

namespace A043738.P2669367402090656153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043738.P2669367402090656153

/-! ## A043738.P16118583108196007292

`eq[1, A214342(A088748(n)²)]`
-/

namespace A043738.P16118583108196007292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214342 (A088748 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043738.P16118583108196007292

/-! ## A043738.P5889233496585107190

`eq[1, A275947(A005811(n))]`
-/

namespace A043738.P5889233496585107190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043738.P5889233496585107190

/-! ## A043738.P12244175124233050257

`eq[2, A040808(A090079(n))]`
-/

namespace A043738.P12244175124233050257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040808 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043738.P12244175124233050257

/-! ## A043738.P14442888315572665050

`filter[A043723(n+1), A000035(#)]`
-/

namespace A043738.P14442888315572665050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043738.P14442888315572665050

/-! ## A043738.P10863341321256145204

`filter[A043723(n+1), A266070(#)]`
-/

namespace A043738.P10863341321256145204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A043738.P10863341321256145204

/-! ## A043738.P18338795920726142657

`filter[A043723(n+2), A266611(#)]`
-/

namespace A043738.P18338795920726142657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A043738.P18338795920726142657

/-! ## A043738.P11688450628033158108

`filter[A043723(n+2), A266719(#)]`
-/

namespace A043738.P11688450628033158108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A043738.P11688450628033158108

/-! ## A043738.P7037821692404275835

`filter[A043723(n+2), A296066(#)]`
-/

namespace A043738.P7037821692404275835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A043738.P7037821692404275835

/-! ## A043738.P2931977061804894588

`filter[A043723(n+3), A266246(#)]`
-/

namespace A043738.P2931977061804894588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A043738.P2931977061804894588

/-! ## A043738.P16554777608100882138

`eq[A014550(n)%3, A020639(n+1)]`
-/

namespace A043738.P16554777608100882138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014550 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043738.P16554777608100882138

/-!
# A043739: 

The programs for A043739, there is no canonical definition to state claims against.
-/

/-! ## A043739.P5244345767597072638

`eq[A040007(n)+1, A069010(n)]`
-/

namespace A043739.P5244345767597072638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043739.P5244345767597072638

/-!
# A043740: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 7.

The programs for A043740, the canonical program `A043740.P5653825656500769311` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043740 has offset 1).

The definition of A043740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043740.P5653825656500769311

`eq[gcd(2, n)², A069010(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043740

/-- `eq[gcd(2, n)², A069010(n)]` -/
def P5653825656500769311.Spec : Prop :=
  ∀ n, (P5653825656500769311.a n : ℤ) = A043740 (n + 1)

theorem P5653825656500769311.correct : P5653825656500769311.Spec := by
  intro n
  simp only [A043740, Nat.add_sub_cancel]

end A043740

/-! ## A043740.P13006060799623237023

`eq[1, A025455(A088748(n))]`
-/

namespace A043740.P13006060799623237023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P13006060799623237023

namespace A043740

/-- `eq[1, A025455(A088748(n))]` -/
def P13006060799623237023.Spec : Prop :=
  ∀ n, (P13006060799623237023.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P888726596386449136

`eq[A040005(n), A069010(n)]`
-/

namespace A043740.P888726596386449136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P888726596386449136

namespace A043740

/-- `eq[A040005(n), A069010(n)]` -/
def P888726596386449136.Spec : Prop :=
  ∀ n, (P888726596386449136.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P252799274527522307

`eq[A069010(n)+2, A040007(n)]`
-/

namespace A043740.P252799274527522307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P252799274527522307

namespace A043740

/-- `eq[A069010(n)+2, A040007(n)]` -/
def P252799274527522307.Spec : Prop :=
  ∀ n, (P252799274527522307.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P14089555381656016331

`eq[gcd(8, n²²), A005811(n)]`
-/

namespace A043740.P14089555381656016331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 ((n ^ 2) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P14089555381656016331

namespace A043740

/-- `eq[gcd(8, n²²), A005811(n)]` -/
def P14089555381656016331.Spec : Prop :=
  ∀ n, (P14089555381656016331.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P17683762268017900481

`eq[1, A266363(A005811(n))]`
-/

namespace A043740.P17683762268017900481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P17683762268017900481

namespace A043740

/-- `eq[1, A266363(A005811(n))]` -/
def P17683762268017900481.Spec : Prop :=
  ∀ n, (P17683762268017900481.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P5745930409299302949

`eq[1, A255124(A073334(n))]`
-/

namespace A043740.P5745930409299302949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255124 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P5745930409299302949

namespace A043740

/-- `eq[1, A255124(A073334(n))]` -/
def P5745930409299302949.Spec : Prop :=
  ∀ n, (P5745930409299302949.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P6435680628906924936

`eq[4, A025479(A136004(n))]`
-/

namespace A043740.P6435680628906924936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025479 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P6435680628906924936

namespace A043740

/-- `eq[4, A025479(A136004(n))]` -/
def P6435680628906924936.Spec : Prop :=
  ∀ n, (P6435680628906924936.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P12687848777712711957

`eq[A005811(n), A040019(n)]`
-/

namespace A043740.P12687848777712711957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P12687848777712711957

namespace A043740

/-- `eq[A005811(n), A040019(n)]` -/
def P12687848777712711957.Spec : Prop :=
  ∀ n, (P12687848777712711957.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P16436430039664159789

`eq[A040063(n), A277561(n)]`
-/

namespace A043740.P16436430039664159789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P16436430039664159789

namespace A043740

/-- `eq[A040063(n), A277561(n)]` -/
def P16436430039664159789.Spec : Prop :=
  ∀ n, (P16436430039664159789.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P17489340341327650295

`eq[1, A238470(A005811(n)+1)]`
-/

namespace A043740.P17489340341327650295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P17489340341327650295

namespace A043740

/-- `eq[1, A238470(A005811(n)+1)]` -/
def P17489340341327650295.Spec : Prop :=
  ∀ n, (P17489340341327650295.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P7351385773086231750

`lt[1, A080843(A005811(n)+2)]`
-/

namespace A043740.P7351385773086231750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043740.P7351385773086231750

namespace A043740

/-- `lt[1, A080843(A005811(n)+2)]` -/
def P7351385773086231750.Spec : Prop :=
  ∀ n, (P7351385773086231750.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P501558236177132081

`eq[1, A238470(2*A005811(n))]`
-/

namespace A043740.P501558236177132081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (2 * A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P501558236177132081

namespace A043740

/-- `eq[1, A238470(2*A005811(n))]` -/
def P501558236177132081.Spec : Prop :=
  ∀ n, (P501558236177132081.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P2539128789454411052

`eq[A010685(n+1), A069010(n)]`
-/

namespace A043740.P2539128789454411052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P2539128789454411052

namespace A043740

/-- `eq[A010685(n+1), A069010(n)]` -/
def P2539128789454411052.Spec : Prop :=
  ∀ n, (P2539128789454411052.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P2294303443097613598

`eq[A000034(n+1)², A069010(n)]`
-/

namespace A043740.P2294303443097613598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P2294303443097613598

namespace A043740

/-- `eq[A000034(n+1)², A069010(n)]` -/
def P2294303443097613598.Spec : Prop :=
  ∀ n, (P2294303443097613598.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P958078749035100523

`eq[A001281(A005811(n)), A040003(n)]`
-/

namespace A043740.P958078749035100523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P958078749035100523

namespace A043740

/-- `eq[A001281(A005811(n)), A040003(n)]` -/
def P958078749035100523.Spec : Prop :=
  ∀ n, (P958078749035100523.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P8177049003423009277

`eq[A008683(A072219(n+1)), A000035(n)]`
-/

namespace A043740.P8177049003423009277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P8177049003423009277

namespace A043740

/-- `eq[A008683(A072219(n+1)), A000035(n)]` -/
def P8177049003423009277.Spec : Prop :=
  ∀ n, (P8177049003423009277.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P1359727526980657787

`eq[A005811(n), A038280(A080940(n+1))]`
-/

namespace A043740.P1359727526980657787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038280 (A080940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P1359727526980657787

namespace A043740

/-- `eq[A005811(n), A038280(A080940(n+1))]` -/
def P1359727526980657787.Spec : Prop :=
  ∀ n, (P1359727526980657787.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P5621530725352093889

`eq[A010686(n+1), A069010(2*n+1)]`
-/

namespace A043740.P5621530725352093889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P5621530725352093889

namespace A043740

/-- `eq[A010686(n+1), A069010(2*n+1)]` -/
def P5621530725352093889.Spec : Prop :=
  ∀ n, (P5621530725352093889.a n : ℤ) = A043740 (n + 1)

end A043740

/-! ## A043740.P9076729411736855653

`eq[A010700(n+1), A088748(2*n+1)]`
-/

namespace A043740.P9076729411736855653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043740.P9076729411736855653

namespace A043740

/-- `eq[A010700(n+1), A088748(2*n+1)]` -/
def P9076729411736855653.Spec : Prop :=
  ∀ n, (P9076729411736855653.a n : ℤ) = A043740 (n + 1)

end A043740

/-!
# A043741: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 7.

The programs for A043741, the canonical program `A043741.P2963682673950430182` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043741 has offset 1).

The definition of A043741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043741.P8686227035294245325

`eq[0, A228405(A088748(n))]`
-/

namespace A043741.P8686227035294245325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043741.P8686227035294245325

namespace A043741

/-- `eq[0, A228405(A088748(n))]` -/
def P8686227035294245325.Spec : Prop :=
  ∀ n, (P8686227035294245325.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P327249573469766323

`eq[0, A299236(A136004(n))]`
-/

namespace A043741.P327249573469766323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043741.P327249573469766323

namespace A043741

/-- `eq[0, A299236(A136004(n))]` -/
def P327249573469766323.Spec : Prop :=
  ∀ n, (P327249573469766323.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P2963682673950430182

`eq[8, A007953(A073334(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043741

/-- `eq[8, A007953(A073334(n))]` -/
def P2963682673950430182.Spec : Prop :=
  ∀ n, (P2963682673950430182.a n : ℤ) = A043741 (n + 1)

theorem P2963682673950430182.correct : P2963682673950430182.Spec := by
  intro n
  simp only [A043741, Nat.add_sub_cancel]

end A043741

/-! ## A043741.P4315074108684295246

`eq[A005811(n), A010699(n)]`
-/

namespace A043741.P4315074108684295246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P4315074108684295246

namespace A043741

/-- `eq[A005811(n), A010699(n)]` -/
def P4315074108684295246.Spec : Prop :=
  ∀ n, (P4315074108684295246.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P12176790137425819620

`eq[A010685(n), A033264(n)]`
-/

namespace A043741.P12176790137425819620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P12176790137425819620

namespace A043741

/-- `eq[A010685(n), A033264(n)]` -/
def P12176790137425819620.Spec : Prop :=
  ∀ n, (P12176790137425819620.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P1743375284934189206

`eq[A010686(n), A069010(n)]`
-/

namespace A043741.P1743375284934189206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P1743375284934189206

namespace A043741

/-- `eq[A010686(n), A069010(n)]` -/
def P1743375284934189206.Spec : Prop :=
  ∀ n, (P1743375284934189206.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P11196288978275956240

`eq[A084099(n)², A037800(n)]`
-/

namespace A043741.P11196288978275956240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P11196288978275956240

namespace A043741

/-- `eq[A084099(n)², A037800(n)]` -/
def P11196288978275956240.Spec : Prop :=
  ∀ n, (P11196288978275956240.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P3793669292649061091

`eq[A000034(n), A032741(A005811(n))]`
-/

namespace A043741.P3793669292649061091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P3793669292649061091

namespace A043741

/-- `eq[A000034(n), A032741(A005811(n))]` -/
def P3793669292649061091.Spec : Prop :=
  ∀ n, (P3793669292649061091.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P11044307613559816543

`eq[A010700(n), A035044(A088748(n))]`
-/

namespace A043741.P11044307613559816543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P11044307613559816543

namespace A043741

/-- `eq[A010700(n), A035044(A088748(n))]` -/
def P11044307613559816543.Spec : Prop :=
  ∀ n, (P11044307613559816543.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P11185924241536293762

`eq[A000038(n), A220074(A005811(n))]`
-/

namespace A043741.P11185924241536293762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P11185924241536293762

namespace A043741

/-- `eq[A000038(n), A220074(A005811(n))]` -/
def P11185924241536293762.Spec : Prop :=
  ∀ n, (P11185924241536293762.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P5106894039752823193

`eq[A007318(A136004(n)), A087116(n)]`
-/

namespace A043741.P5106894039752823193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A136004 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P5106894039752823193

namespace A043741

/-- `eq[A007318(A136004(n)), A087116(n)]` -/
def P5106894039752823193.Spec : Prop :=
  ∀ n, (P5106894039752823193.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P18262209338273250596

`eq[A054977(n), A238470(A005811(n))]`
-/

namespace A043741.P18262209338273250596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P18262209338273250596

namespace A043741

/-- `eq[A054977(n), A238470(A005811(n))]` -/
def P18262209338273250596.Spec : Prop :=
  ∀ n, (P18262209338273250596.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P4604094579533718004

`eq[A010685(n), A303111(A088748(n))]`
-/

namespace A043741.P4604094579533718004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303111 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P4604094579533718004

namespace A043741

/-- `eq[A010685(n), A303111(A088748(n))]` -/
def P4604094579533718004.Spec : Prop :=
  ∀ n, (P4604094579533718004.a n : ℤ) = A043741 (n + 1)

end A043741

/-! ## A043741.P5470484718013314821

`eq[A010685(n), A037800(2*n+1)]`
-/

namespace A043741.P5470484718013314821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043741.P5470484718013314821

namespace A043741

/-- `eq[A010685(n), A037800(2*n+1)]` -/
def P5470484718013314821.Spec : Prop :=
  ∀ n, (P5470484718013314821.a n : ℤ) = A043741 (n + 1)

end A043741

/-!
# A043742: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 7.

The programs for A043742, the canonical program `A043742.P8132510292686517253` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043742 has offset 1).

The definition of A043742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043742.P13020156262825521537

`eq[A020639(a(n-1)+3), A069010(n)]` with `a(0)=1`
-/

namespace A043742.P13020156262825521537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A020639 (f1 (n - 1) + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043742.P13020156262825521537

namespace A043742

/-- `eq[A020639(a(n-1)+3), A069010(n)]` -/
def P13020156262825521537.Spec : Prop :=
  ∀ n, (P13020156262825521537.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P8132510292686517253

`eq[gcd(2, n)², A037800(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043742

/-- `eq[gcd(2, n)², A037800(n)]` -/
def P8132510292686517253.Spec : Prop :=
  ∀ n, (P8132510292686517253.a n : ℤ) = A043742 (n + 1)

theorem P8132510292686517253.correct : P8132510292686517253.Spec := by
  intro n
  simp only [A043742, Nat.add_sub_cancel]

end A043742

/-! ## A043742.P12816572885773531214

`lt[1, A080843(A005811(n))]`
-/

namespace A043742.P12816572885773531214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043742.P12816572885773531214

namespace A043742

/-- `lt[1, A080843(A005811(n))]` -/
def P12816572885773531214.Spec : Prop :=
  ∀ n, (P12816572885773531214.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P14920065787715642495

`eq[7, A006530(A136004(n))]`
-/

namespace A043742.P14920065787715642495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P14920065787715642495

namespace A043742

/-- `eq[7, A006530(A136004(n))]` -/
def P14920065787715642495.Spec : Prop :=
  ∀ n, (P14920065787715642495.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P17215975912763594931

`eq[13, A020639(A073334(n))]`
-/

namespace A043742.P17215975912763594931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P17215975912763594931

namespace A043742

/-- `eq[13, A020639(A073334(n))]` -/
def P17215975912763594931.Spec : Prop :=
  ∀ n, (P17215975912763594931.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P8573396635517475554

`eq[2, A135539(A136004(n)²)]`
-/

namespace A043742.P8573396635517475554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A136004 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P8573396635517475554

namespace A043742

/-- `eq[2, A135539(A136004(n)²)]` -/
def P8573396635517475554.Spec : Prop :=
  ∀ n, (P8573396635517475554.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P12000264088129273667

`eq[A000034(n+1)², A037800(n)]`
-/

namespace A043742.P12000264088129273667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043742.P12000264088129273667

namespace A043742

/-- `eq[A000034(n+1)², A037800(n)]` -/
def P12000264088129273667.Spec : Prop :=
  ∀ n, (P12000264088129273667.a n : ℤ) = A043742 (n + 1)

end A043742

/-! ## A043742.P16208706464085280439

`eq[A001221(2*A020639(n+1))², A037800(n)]`
-/

namespace A043742.P16208706464085280439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A020639 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043742.P16208706464085280439

namespace A043742

/-- `eq[A001221(2*A020639(n+1))², A037800(n)]` -/
def P16208706464085280439.Spec : Prop :=
  ∀ n, (P16208706464085280439.a n : ℤ) = A043742 (n + 1)

end A043742

/-!
# A043743: 

The programs for A043743, there is no canonical definition to state claims against.
-/

/-! ## A043743.P14761116633966698831

`eq[2, A244132(A088748(n))]`
-/

namespace A043743.P14761116633966698831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244132 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043743.P14761116633966698831

/-! ## A043743.P15034382503564216086

`eq[0, A334691(A136004(n))]`
-/

namespace A043743.P15034382503564216086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334691 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043743.P15034382503564216086

/-! ## A043743.P16377906598974121805

`eq[1, A025457(A005811(n))]`
-/

namespace A043743.P16377906598974121805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043743.P16377906598974121805

/-! ## A043743.P6521696968385702133

`eq[1, A027750(A073334(n))]`
-/

namespace A043743.P6521696968385702133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043743.P6521696968385702133

/-! ## A043743.P2759769259195979953

`eq[A010695(n), A033264(n)]`
-/

namespace A043743.P2759769259195979953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P2759769259195979953

/-! ## A043743.P544806475035860439

`eq[A010686(n), A037800(n)]`
-/

namespace A043743.P544806475035860439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P544806475035860439

/-! ## A043743.P13917246927680368856

`lt[1, A080843(A005811(n)²)]`
-/

namespace A043743.P13917246927680368856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A005811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043743.P13917246927680368856

/-! ## A043743.P7922530039627929390

`eq[A010693(n)!, A069010(n)]`
-/

namespace A043743.P7922530039627929390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010693 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043743.P7922530039627929390

/-! ## A043743.P13287876684981753061

`eq[A006530(A136004(n)), A087116(n)]`
-/

namespace A043743.P13287876684981753061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136004 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P13287876684981753061

/-! ## A043743.P6428709677125229662

`eq[A010685(n), A255070(A005811(n))]`
-/

namespace A043743.P6428709677125229662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P6428709677125229662

/-! ## A043743.P12936868733126268605

`eq[A037800(n), A225693(A073334(n))]`
-/

namespace A043743.P12936868733126268605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P12936868733126268605

/-! ## A043743.P15045227029778500530

`eq[A037800(n), A131800(A004277(n))]`
-/

namespace A043743.P15045227029778500530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131800 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P15045227029778500530

/-! ## A043743.P9127002703760657999

`eq[A069010(n), A126664(A016777(n))]`
-/

namespace A043743.P9127002703760657999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P9127002703760657999

/-! ## A043743.P10946983395576553861

`eq[A000124(A127750(n)), A005811(n)]`
-/

namespace A043743.P10946983395576553861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A127750 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043743.P10946983395576553861

/-!
# A043744: 

The programs for A043744, there is no canonical definition to state claims against.
-/

/-! ## A043744.P5393515672696595907

`eq[A040007(n), A069010(n)]`
-/

namespace A043744.P5393515672696595907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043744.P5393515672696595907

/-! ## A043744.P6938351360655722321

`eq[2, A128582(A005811(n))]`
-/

namespace A043744.P6938351360655722321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043744.P6938351360655722321

/-! ## A043744.P6140626934050569176

`eq[A033264(n), A040008(n)]`
-/

namespace A043744.P6140626934050569176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043744.P6140626934050569176

/-! ## A043744.P2163495160488324906

`eq[A040008(n), A087116(n)]`
-/

namespace A043744.P2163495160488324906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043744.P2163495160488324906

/-! ## A043744.P16716525114176168787

`eq[5, A027748(A005811(n+1))]+1`
-/

namespace A043744.P16716525114176168787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A005811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043744.P16716525114176168787

/-! ## A043744.P13692208442795492980

`eq[A010695(n+1), A037800(n)]`
-/

namespace A043744.P13692208442795492980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043744.P13692208442795492980

/-! ## A043744.P6901377633620883071

`lt[A350004(A005811(n)), A061347(3*n+4)]`
-/

namespace A043744.P6901377633620883071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350004 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043744.P6901377633620883071

/-!
# A043745: 

The programs for A043745, there is no canonical definition to state claims against.
-/

/-! ## A043745.P13921210223321654409

`eq[1, A025455(A088748(n)+2)]`
-/

namespace A043745.P13921210223321654409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A088748 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043745.P13921210223321654409

/-! ## A043745.P764025745406504440

`eq[A037800(n), A040008(n+1)]`
-/

namespace A043745.P764025745406504440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P764025745406504440

/-! ## A043745.P11541172225143097068

`eq[A010704(n), A033264(n)]`
-/

namespace A043745.P11541172225143097068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P11541172225143097068

/-! ## A043745.P5272922640964030567

`eq[A010696(n), A037800(n)]`
-/

namespace A043745.P5272922640964030567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P5272922640964030567

/-! ## A043745.P2302906220866475717

`eq[A010705(n), A069010(n)]`
-/

namespace A043745.P2302906220866475717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P2302906220866475717

/-! ## A043745.P4736654905490733357

`eq[A010686(n)+1, A037800(n)]`
-/

namespace A043745.P4736654905490733357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P4736654905490733357

/-! ## A043745.P7226723657296122170

`eq[A001051(n+1)+1, A037800(n)]`
-/

namespace A043745.P7226723657296122170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043745.P7226723657296122170

/-!
# A043747: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 8.

The programs for A043747, the canonical program `A043747.P2830991943609161891` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043747 has offset 1).

The definition of A043747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043747.P2830991943609161891

`record[A000265(A043748(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043747

/-- `record[A000265(A043748(n+1))]` -/
def P2830991943609161891.Spec : Prop :=
  ∀ n, P2830991943609161891.a n = A043747 (n + 1)

theorem P2830991943609161891.correct : P2830991943609161891.Spec := by
  intro n
  simp only [A043747, Nat.add_sub_cancel]

end A043747

/-! ## A043747.P7338188735824597275

`record[A004530(A072219(n+1))*A005408(n)]`
-/

namespace A043747.P7338188735824597275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A072219 (n + 1)).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043747.P7338188735824597275

namespace A043747

/-- `record[A004530(A072219(n+1))*A005408(n)]` -/
def P7338188735824597275.Spec : Prop :=
  ∀ n, P7338188735824597275.a n = A043747 (n + 1)

end A043747

/-! ## A043747.P15930556462380535450

`record[(A016777(n)-n)*A004530(A072219(n+1))]`
-/

namespace A043747.P15930556462380535450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n - (n : ℤ)) * A004530 (A072219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043747.P15930556462380535450

namespace A043747

/-- `record[(A016777(n)-n)*A004530(A072219(n+1))]` -/
def P15930556462380535450.Spec : Prop :=
  ∀ n, P15930556462380535450.a n = A043747 (n + 1)

end A043747

/-! ## A043747.P2256850044274487951

`record[A005408(n)*A008836(A005811(2*n+1))]`
-/

namespace A043747.P2256850044274487951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A008836 (A005811 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043747.P2256850044274487951

namespace A043747

/-- `record[A005408(n)*A008836(A005811(2*n+1))]` -/
def P2256850044274487951.Spec : Prop :=
  ∀ n, P2256850044274487951.a n = A043747 (n + 1)

end A043747

/-! ## A043747.P13230433884625708080

`record[A026741(A004525(A043755(n+1)))]`
-/

namespace A043747.P13230433884625708080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004525 (A043755 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043747.P13230433884625708080

namespace A043747

/-- `record[A026741(A004525(A043755(n+1)))]` -/
def P13230433884625708080.Spec : Prop :=
  ∀ n, P13230433884625708080.a n = A043747 (n + 1)

end A043747

/-!
# A043748: Numbers n such that number of runs in the base 2 representation of n is congruent to 2 mod 8.

The programs for A043748, the canonical program `A043748.P14150429059408141972` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043748 has offset 1).

The definition of A043748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043748.P14150429059408141972

`∪[A043569(n+1), A043577(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043748

/-- `∪[A043569(n+1), A043577(n+1)]` -/
def P14150429059408141972.Spec : Prop :=
  ∀ n, (P14150429059408141972.a n : ℤ) = A043748 (n + 1)

theorem P14150429059408141972.correct : P14150429059408141972.Spec := by
  intro n
  simp only [A043748, Nat.add_sub_cancel]

end A043748

/-! ## A043748.P15508713893317705795

`2*eq[1, A069010(n)%4]`
-/

namespace A043748.P15508713893317705795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043748.P15508713893317705795

namespace A043748

/-- `2*eq[1, A069010(n)%4]` -/
def P15508713893317705795.Spec : Prop :=
  ∀ n, (P15508713893317705795.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P17516269007431864789

`record[(n+1)*gcd(2, A252384(A277561(n+1)+1))]`
-/

namespace A043748.P17516269007431864789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A252384 (A277561 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043748.P17516269007431864789

namespace A043748

/-- `record[(n+1)*gcd(2, A252384(A277561(n+1)+1))]` -/
def P17516269007431864789.Spec : Prop :=
  ∀ n, (P17516269007431864789.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P3682820416452141322

`eq[0, A030399(A088748(n))]`
-/

namespace A043748.P3682820416452141322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043748.P3682820416452141322

namespace A043748

/-- `eq[0, A030399(A088748(n))]` -/
def P3682820416452141322.Spec : Prop :=
  ∀ n, (P3682820416452141322.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P6722986501870415291

`eq[0, A286646(A005811(n))]`
-/

namespace A043748.P6722986501870415291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286646 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043748.P6722986501870415291

namespace A043748

/-- `eq[0, A286646(A005811(n))]` -/
def P6722986501870415291.Spec : Prop :=
  ∀ n, (P6722986501870415291.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P524726649102075808

`eq[1, A035327(A136004(n))]`
-/

namespace A043748.P524726649102075808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043748.P524726649102075808

namespace A043748

/-- `eq[1, A035327(A136004(n))]` -/
def P524726649102075808.Spec : Prop :=
  ∀ n, (P524726649102075808.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P635241443418882507

`eq[2, A006530(A136004(n)+2)]`
-/

namespace A043748.P635241443418882507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136004 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043748.P635241443418882507

namespace A043748

/-- `eq[2, A006530(A136004(n)+2)]` -/
def P635241443418882507.Spec : Prop :=
  ∀ n, (P635241443418882507.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P668616927404007597

`eq[A033999(n), A097806(A073334(n))]`
-/

namespace A043748.P668616927404007597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043748.P668616927404007597

namespace A043748

/-- `eq[A033999(n), A097806(A073334(n))]` -/
def P668616927404007597.Spec : Prop :=
  ∀ n, (P668616927404007597.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P2511415320534899113

`eq[A054977(n), A213526(A088748(n))]`
-/

namespace A043748.P2511415320534899113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043748.P2511415320534899113

namespace A043748

/-- `eq[A054977(n), A213526(A088748(n))]` -/
def P2511415320534899113.Spec : Prop :=
  ∀ n, (P2511415320534899113.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P7757399044597433776

`eq[A000034(n), A348452(A136004(n))]`
-/

namespace A043748.P7757399044597433776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043748.P7757399044597433776

namespace A043748

/-- `eq[A000034(n), A348452(A136004(n))]` -/
def P7757399044597433776.Spec : Prop :=
  ∀ n, (P7757399044597433776.a n : ℤ) = A043748 (n + 1)

end A043748

/-! ## A043748.P18377661351741306016

`eq[A227185(A005811(n)), A230074(n+1)]`
-/

namespace A043748.P18377661351741306016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043748.P18377661351741306016

namespace A043748

/-- `eq[A227185(A005811(n)), A230074(n+1)]` -/
def P18377661351741306016.Spec : Prop :=
  ∀ n, (P18377661351741306016.a n : ℤ) = A043748 (n + 1)

end A043748

/-!
# A043749: 

The programs for A043749, there is no canonical definition to state claims against.
-/

/-! ## A043749.P15460129529692835703

`eq[0, A008482(A088748(n))]`
-/

namespace A043749.P15460129529692835703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043749.P15460129529692835703

/-! ## A043749.P10649005590513528074

`eq[A010156(n), A056832(A088748(n))]`
-/

namespace A043749.P10649005590513528074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P10649005590513528074

/-! ## A043749.P14805840325817337520

`eq[0, A020951(A136004(n))]`
-/

namespace A043749.P14805840325817337520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043749.P14805840325817337520

/-! ## A043749.P1052332847861978391

`eq[1, A048735(A005811(n))]`
-/

namespace A043749.P1052332847861978391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043749.P1052332847861978391

/-! ## A043749.P13463123636674956506

`eq[2, A224362(A090079(n))]`
-/

namespace A043749.P13463123636674956506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043749.P13463123636674956506

/-! ## A043749.P2567893101842194541

`eq[2, A006530(A136004(n)+1)]`
-/

namespace A043749.P2567893101842194541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136004 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043749.P2567893101842194541

/-! ## A043749.P5848340696604794477

`eq[A010673(n), A050603(A005811(n))]`
-/

namespace A043749.P5848340696604794477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P5848340696604794477

/-! ## A043749.P7986922545518143537

`eq[A040142(n), A089309(A005811(n))]`
-/

namespace A043749.P7986922545518143537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P7986922545518143537

/-! ## A043749.P17866618484890302354

`eq[A010156(n), A069010(A136004(n))]`
-/

namespace A043749.P17866618484890302354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P17866618484890302354

/-! ## A043749.P10802996342342357438

`eq[A000034(n), A088748(A136004(n))]`
-/

namespace A043749.P10802996342342357438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P10802996342342357438

/-! ## A043749.P10771067906818290642

`eq[A040142(n), A089309(A088748(n)-1)]`
-/

namespace A043749.P10771067906818290642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P10771067906818290642

/-! ## A043749.P12583285397092422690

`eq[A089309(A088748(n)-1), A105397(n)]`
-/

namespace A043749.P12583285397092422690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A088748 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043749.P12583285397092422690

/-!
# A043750: 

The programs for A043750, there is no canonical definition to state claims against.
-/

/-! ## A043750.P16289952543817184302

`eq[1, A214342(A088748(n))]`
-/

namespace A043750.P16289952543817184302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214342 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P16289952543817184302

/-! ## A043750.P4056074130007044425

`eq[3, A035327(A088748(n)-1)]`
-/

namespace A043750.P4056074130007044425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P4056074130007044425

/-! ## A043750.P6272555851817169863

`eq[2, A125184(A090079(n))]`
-/

namespace A043750.P6272555851817169863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P6272555851817169863

/-! ## A043750.P13165669750739383048

`eq[2, A344761(A005811(n))]`
-/

namespace A043750.P13165669750739383048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344761 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P13165669750739383048

/-! ## A043750.P15011241486607898178

`lt[2, A000688(A136004(n))]`
-/

namespace A043750.P15011241486607898178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043750.P15011241486607898178

/-! ## A043750.P9523822886202962612

`eq[3, A035327(A136004(n)-4)]`
-/

namespace A043750.P9523822886202962612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A136004 n - 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P9523822886202962612

/-! ## A043750.P6692338473319325800

`eq[3, A035327(n-A236840(n))]`
-/

namespace A043750.P6692338473319325800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((n : ℤ) - A236840 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P6692338473319325800

/-! ## A043750.P11999629425546684352

`eq[3, A035327(n-2*A255070(n))]`
-/

namespace A043750.P11999629425546684352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((n : ℤ) - 2 * A255070 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P11999629425546684352

/-!
# A043751: 

The programs for A043751, there is no canonical definition to state claims against.
-/

/-! ## A043751.P15511838032920354139

`eq[2, A035327(A088748(n)-1)]`
-/

namespace A043751.P15511838032920354139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P15511838032920354139

/-! ## A043751.P17470546151204873638

`eq[2, A124772(A005811(n))]`
-/

namespace A043751.P17470546151204873638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P17470546151204873638

/-! ## A043751.P14971799950376759317

`eq[2, A035327(A136004(n)-4)]`
-/

namespace A043751.P14971799950376759317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A136004 n - 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P14971799950376759317

/-! ## A043751.P9400458497257366188

`eq[2, A035327(n-A236840(n))]`
-/

namespace A043751.P9400458497257366188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((n : ℤ) - A236840 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P9400458497257366188

/-! ## A043751.P7598052612375822163

`eq[2, A266363(A005811(n+1))]+1`
-/

namespace A043751.P7598052612375822163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266363 (A005811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043751.P7598052612375822163

/-! ## A043751.P736578321636786358

`eq[2, A035327(n-2*A255070(n))]`
-/

namespace A043751.P736578321636786358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((n : ℤ) - 2 * A255070 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P736578321636786358

/-! ## A043751.P17658526569726636599

`eq[A106665(A005811(n)), A246960(n)]`
-/

namespace A043751.P17658526569726636599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043751.P17658526569726636599

/-! ## A043751.P3631472232681780902

`eq[A000034(n), A035327(A072219(n+1))]`
-/

namespace A043751.P3631472232681780902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A072219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043751.P3631472232681780902

/-!
# A043754: Let L(n) = n-th lucky number. Then a(1)=0; a(n) is largest number m such that all divisors of L(n)^m are lucky numbers.

The programs for A043754, there is no canonical definition to state claims against.
-/

/-! ## A043754.P6911675310231873542

`A239706(A239712(2*n+5)-A341605(n+2))`
-/

namespace A043754.P6911675310231873542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (A239712 (2 * n + 5) - A341605 (n + 2)).toNat

end

end A043754.P6911675310231873542

/-! ## A043754.P1564859635676378304

`A109925(A056493(2*n+3)-(n+1))`
-/

namespace A043754.P1564859635676378304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A056493 (2 * n + 3) - (n + 1 : ℤ)).toNat

end

end A043754.P1564859635676378304

/-! ## A043754.P16591628127894821928

`A007814(A228660(n+2)+A163102(n))`
-/

namespace A043754.P16591628127894821928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A228660 (n + 2) + A163102 n).toNat

end

end A043754.P16591628127894821928

/-! ## A043754.P16705163227796190540

`and(A091403(n+1), A234200(A315713(n)))`
-/

namespace A043754.P16705163227796190540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091403 (n + 1)) (A234200 (A315713 n).toNat)

end

end A043754.P16705163227796190540

/-!
# A043755: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 9.

The programs for A043755, the canonical program `A043755.P9708365563042042669` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043755 has offset 1).

The definition of A043755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043755.P9708365563042042669

`eq[2, dr(A088748(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043755

/-- `eq[2, dr(A088748(n))]` -/
def P9708365563042042669.Spec : Prop :=
  ∀ n, (P9708365563042042669.a n : ℤ) = A043755 (n + 1)

theorem P9708365563042042669.correct : P9708365563042042669.Spec := by
  intro n
  simp only [A043755, Nat.add_sub_cancel]

end A043755

/-! ## A043755.P11649004398017146244

`eq[1, dr(A005811(n))]`
-/

namespace A043755.P11649004398017146244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043755.P11649004398017146244

namespace A043755

/-- `eq[1, dr(A005811(n))]` -/
def P11649004398017146244.Spec : Prop :=
  ∀ n, (P11649004398017146244.a n : ℤ) = A043755 (n + 1)

end A043755

/-! ## A043755.P13647241260978453159

`eq[1, dr(A014550(n))]`
-/

namespace A043755.P13647241260978453159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043755.P13647241260978453159

namespace A043755

/-- `eq[1, dr(A014550(n))]` -/
def P13647241260978453159.Spec : Prop :=
  ∀ n, (P13647241260978453159.a n : ℤ) = A043755 (n + 1)

end A043755

/-! ## A043755.P991458601088869995

`eq[5, dr(A136004(n))]`
-/

namespace A043755.P991458601088869995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043755.P991458601088869995

namespace A043755

/-- `eq[5, dr(A136004(n))]` -/
def P991458601088869995.Spec : Prop :=
  ∀ n, (P991458601088869995.a n : ℤ) = A043755 (n + 1)

end A043755

/-! ## A043755.P17149194759819556393

`lt[A025581(A073334(n)), 1]`
-/

namespace A043755.P17149194759819556393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A073334 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043755.P17149194759819556393

namespace A043755

/-- `lt[A025581(A073334(n)), 1]` -/
def P17149194759819556393.Spec : Prop :=
  ∀ n, (P17149194759819556393.a n : ℤ) = A043755 (n + 1)

end A043755

/-!
# A043756: Numbers n such that number of runs in the base 2 representation of n is congruent to 2 mod 9.

The programs for A043756, there is no canonical definition to state claims against.
-/

/-! ## A043756.P11116044980821948423

`∪[A043569(n+1), A043578(n+1)]`
-/

namespace A043756.P11116044980821948423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043756.P11116044980821948423

/-! ## A043756.P9289790107647167797

`eq[3, dr(A088748(n))]`
-/

namespace A043756.P9289790107647167797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P9289790107647167797

/-! ## A043756.P14219025120265891216

`eq[2, dr(A005811(n))]`
-/

namespace A043756.P14219025120265891216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P14219025120265891216

/-! ## A043756.P11342993090460581720

`eq[2, dr(A014550(n))]`
-/

namespace A043756.P11342993090460581720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P11342993090460581720

/-! ## A043756.P4070876915795026926

`eq[6, dr(A136004(n))]`
-/

namespace A043756.P4070876915795026926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P4070876915795026926

/-! ## A043756.P17859532211700476816

`eq[A010686(n), A033264(n)]`
-/

namespace A043756.P17859532211700476816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P17859532211700476816

/-! ## A043756.P16858245461341197628

`eq[A010687(n), A069010(n)]`
-/

namespace A043756.P16858245461341197628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P16858245461341197628

/-! ## A043756.P3897496002309699324

`eq[A010686(n), A037800(2*n+1)]`
-/

namespace A043756.P3897496002309699324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043756.P3897496002309699324

/-!
# A043757: 

The programs for A043757, there is no canonical definition to state claims against.
-/

/-! ## A043757.P9839536396272687958

`eq[4, dr(A088748(n))]`
-/

namespace A043757.P9839536396272687958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P9839536396272687958

/-! ## A043757.P14338063931865072739

`eq[3, dr(A005811(n))]`
-/

namespace A043757.P14338063931865072739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P14338063931865072739

/-! ## A043757.P318000816744276104

`eq[3, dr(A014550(n))]`
-/

namespace A043757.P318000816744276104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P318000816744276104

/-! ## A043757.P16871496636754185653

`eq[7, dr(A136004(n))]`
-/

namespace A043757.P16871496636754185653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P16871496636754185653

/-! ## A043757.P2832175012959493808

`eq[2, A297330(A073334(n))]`
-/

namespace A043757.P2832175012959493808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043757.P2832175012959493808

/-! ## A043757.P4385317038883236575

`eq[A005811(n), A040033(n)]`
-/

namespace A043757.P4385317038883236575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P4385317038883236575

/-! ## A043757.P10987026616528680035

`eq[A176059(n)!, A069010(n)]`
-/

namespace A043757.P10987026616528680035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A176059 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043757.P10987026616528680035

/-! ## A043757.P3550857508053766650

`eq[A010686(n+1), A037800(n)]`
-/

namespace A043757.P3550857508053766650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P3550857508053766650

/-! ## A043757.P14020774112381889256

`eq[A040008(n), A087116(A004277(n))]`
-/

namespace A043757.P14020774112381889256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P14020774112381889256

/-! ## A043757.P2862112353676142897

`eq[A087116(n), A266303(A267352(n))]`
-/

namespace A043757.P2862112353676142897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A267352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P2862112353676142897

/-!
# A043758: 

The programs for A043758, there is no canonical definition to state claims against.
-/

/-! ## A043758.P14523860445594406317

`eq[1, dr(2*A088748(n))]`
-/

namespace A043758.P14523860445594406317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P14523860445594406317

/-! ## A043758.P17227331802636729808

`eq[3, A066099(A088748(n))]`
-/

namespace A043758.P17227331802636729808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043758.P17227331802636729808

/-! ## A043758.P6060165443116325527

`eq[4, dr(A014550(n))]`
-/

namespace A043758.P6060165443116325527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P6060165443116325527

/-! ## A043758.P2212038436295924188

`eq[1, dr(A136004(n)+2)]`
-/

namespace A043758.P2212038436295924188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136004 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P2212038436295924188

/-! ## A043758.P2329201046534898641

`eq[2, A180595(A005811(n))]`
-/

namespace A043758.P2329201046534898641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043758.P2329201046534898641

/-! ## A043758.P15111358321956237807

`eq[A010696(n), A033264(n)]`
-/

namespace A043758.P15111358321956237807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P15111358321956237807

/-! ## A043758.P4707786927831622974

`eq[A010687(n), A037800(n)]`
-/

namespace A043758.P4707786927831622974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P4707786927831622974

/-!
# A043759: 

The programs for A043759, there is no canonical definition to state claims against.
-/

/-! ## A043759.P7918205751858211808

`eq[A069010(n), A139250(A020639(n+1))]`
-/

namespace A043759.P7918205751858211808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043759.P7918205751858211808

/-!
# A043764: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 10.

The programs for A043764, the canonical program `A043764.P5681629137931592736` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043764 has offset 1).

The definition of A043764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043764.P5681629137931592736

`record[A000265(A043729(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043764

/-- `record[A000265(A043729(n+1))]` -/
def P5681629137931592736.Spec : Prop :=
  ∀ n, P5681629137931592736.a n = A043764 (n + 1)

theorem P5681629137931592736.correct : P5681629137931592736.Spec := by
  intro n
  simp only [A043764, Nat.add_sub_cancel]

end A043764

/-! ## A043764.P13731487182475901791

`record[A000265(A043765(n+1))]`
-/

namespace A043764.P13731487182475901791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043765 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043764.P13731487182475901791

namespace A043764

/-- `record[A000265(A043765(n+1))]` -/
def P13731487182475901791.Spec : Prop :=
  ∀ n, P13731487182475901791.a n = A043764 (n + 1)

end A043764

/-! ## A043764.P5836831980578622453

`∩[A004274(n), A043729(n+1)]`
-/

namespace A043764.P5836831980578622453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043764.P5836831980578622453

namespace A043764

/-- `∩[A004274(n), A043729(n+1)]` -/
def P5836831980578622453.Spec : Prop :=
  ∀ n, (P5836831980578622453.a n : ℤ) = A043764 (n + 1)

end A043764

/-! ## A043764.P8939922164118304931

`eq[0, A022837(A088748(n))]`
-/

namespace A043764.P8939922164118304931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043764.P8939922164118304931

namespace A043764

/-- `eq[0, A022837(A088748(n))]` -/
def P8939922164118304931.Spec : Prop :=
  ∀ n, (P8939922164118304931.a n : ℤ) = A043764 (n + 1)

end A043764

/-! ## A043764.P6290593946745588356

`eq[1, A007954(A005811(n))]`
-/

namespace A043764.P6290593946745588356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043764.P6290593946745588356

namespace A043764

/-- `eq[1, A007954(A005811(n))]` -/
def P6290593946745588356.Spec : Prop :=
  ∀ n, (P6290593946745588356.a n : ℤ) = A043764 (n + 1)

end A043764

/-! ## A043764.P14500484580366455189

`eq[5, A225693(A073334(n))]`
-/

namespace A043764.P14500484580366455189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043764.P14500484580366455189

namespace A043764

/-- `eq[5, A225693(A073334(n))]` -/
def P14500484580366455189.Spec : Prop :=
  ∀ n, (P14500484580366455189.a n : ℤ) = A043764 (n + 1)

end A043764

/-!
# A043765: Numbers n such that number of runs in the base 2 representation of n is congruent to 2 mod 10.

The programs for A043765, there is no canonical definition to state claims against.
-/

/-! ## A043765.P9854213918862278688

`∪[A043569(n+1), A043579(n+1)]`
-/

namespace A043765.P9854213918862278688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P9854213918862278688

/-! ## A043765.P1012768576655455858

`∩[2*n, A043730(n+1)]`
-/

namespace A043765.P1012768576655455858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P1012768576655455858

/-! ## A043765.P12697833062138994288

`∩[A043730(n+1), A004271(n)]`
-/

namespace A043765.P12697833062138994288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P12697833062138994288

/-! ## A043765.P3805106916187592355

`∩[A043730(n+1), A004272(n)]`
-/

namespace A043765.P3805106916187592355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P3805106916187592355

/-! ## A043765.P8793285748963866294

`∩[A043730(n+1), A004275(n)]`
-/

namespace A043765.P8793285748963866294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P8793285748963866294

/-! ## A043765.P11467855655170585197

`∩[A043730(n+1), A004277(n)]`
-/

namespace A043765.P11467855655170585197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P11467855655170585197

/-! ## A043765.P178943309620700886

`∩[A043730(n+1), A004279(n)]`
-/

namespace A043765.P178943309620700886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P178943309620700886

/-! ## A043765.P16312922982386131297

`∩[A043730(n+1), A005843(n)]`
-/

namespace A043765.P16312922982386131297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043765.P16312922982386131297

/-! ## A043765.P13875907847702059489

`eq[3, A031347(A088748(n))]`
-/

namespace A043765.P13875907847702059489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043765.P13875907847702059489

/-! ## A043765.P1045092480436703078

`eq[1, A225446(A005811(n))]`
-/

namespace A043765.P1045092480436703078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043765.P1045092480436703078

/-! ## A043765.P9282297029098661934

`eq[1, A194527(A136004(n))]`
-/

namespace A043765.P9282297029098661934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194527 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043765.P9282297029098661934

/-! ## A043765.P10675759987956050140

`record[A038608(A043730(n+1))]`
-/

namespace A043765.P10675759987956050140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043765.P10675759987956050140

/-! ## A043765.P1855480510227693939

`filter[A043730(n+1), A059841(#)]`
-/

namespace A043765.P1855480510227693939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043765.P1855480510227693939

/-! ## A043765.P6007454840684705369

`filter[A043730(n+1), A135528(#)]`
-/

namespace A043765.P6007454840684705369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A043765.P6007454840684705369

/-! ## A043765.P14331024888170378787

`filter[A043730(n+1), A266591(#)]`
-/

namespace A043765.P14331024888170378787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A043765.P14331024888170378787

/-! ## A043765.P9469114710535832929

`eq[A033999(n), A138954(A005811(n))]`
-/

namespace A043765.P9469114710535832929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138954 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043765.P9469114710535832929

/-!
# A043766: 

The programs for A043766, there is no canonical definition to state claims against.
-/

/-! ## A043766.P1478306292406326611

`∩[2*n+1, A043731(n+1)]`
-/

namespace A043766.P1478306292406326611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P1478306292406326611

/-! ## A043766.P9718817995518360034

`∩[A043731(n+1), A004273(n)]`
-/

namespace A043766.P9718817995518360034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P9718817995518360034

/-! ## A043766.P736361032620653009

`∩[A043731(n+1), A004274(n)]`
-/

namespace A043766.P736361032620653009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P736361032620653009

/-! ## A043766.P10401800918964165127

`∩[A043731(n+1), A004276(n)]`
-/

namespace A043766.P10401800918964165127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P10401800918964165127

/-! ## A043766.P7656793705368254783

`∩[A043731(n+1), A004281(n)]`
-/

namespace A043766.P7656793705368254783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043766.P7656793705368254783

/-! ## A043766.P8081119175242631115

`eq[7, dr(A323503(n))]`
-/

namespace A043766.P8081119175242631115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323503 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043766.P8081119175242631115

/-! ## A043766.P1249701163701797776

`eq[4, A001613(A088748(n))]`
-/

namespace A043766.P1249701163701797776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043766.P1249701163701797776

/-! ## A043766.P11619068301735765791

`eq[4, dr(A073334(n))]`
-/

namespace A043766.P11619068301735765791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A073334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043766.P11619068301735765791

/-! ## A043766.P13575873869932849100

`eq[1, A345290(A005811(n))]`
-/

namespace A043766.P13575873869932849100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043766.P13575873869932849100

/-! ## A043766.P12336642006145796755

`eq[3, A135539(A136004(n))]`
-/

namespace A043766.P12336642006145796755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043766.P12336642006145796755

/-! ## A043766.P3748439152070031459

`record[A026741(A043731(n+1))]`
-/

namespace A043766.P3748439152070031459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A043731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043766.P3748439152070031459

/-! ## A043766.P3705238421906177469

`filter[A043731(n+1), A000035(#)]`
-/

namespace A043766.P3705238421906177469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043766.P3705238421906177469

/-! ## A043766.P9466933223820631887

`filter[A043731(n+1), A266070(#)]`
-/

namespace A043766.P9466933223820631887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A043766.P9466933223820631887

/-! ## A043766.P5787674503570466576

`filter[A043731(n+1), A266246(#)]`
-/

namespace A043766.P5787674503570466576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A043766.P5787674503570466576

/-! ## A043766.P6402044392102686498

`filter[A043731(n+1), A266611(#)]`
-/

namespace A043766.P6402044392102686498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A043766.P6402044392102686498

/-! ## A043766.P10340188443543483865

`filter[A043731(n+1), A266719(#)]`
-/

namespace A043766.P10340188443543483865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A043766.P10340188443543483865

/-! ## A043766.P9097408223673656824

`filter[A043731(n+1), A267155(#)]`
-/

namespace A043766.P9097408223673656824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A043766.P9097408223673656824

/-! ## A043766.P4646570992391591674

`filter[A043731(n+1), A267256(#)]`
-/

namespace A043766.P4646570992391591674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A043766.P4646570992391591674

/-!
# A043767: 

The programs for A043767, there is no canonical definition to state claims against.
-/

/-! ## A043767.P5454745664441977087

`∩[2*n, A043732(n+1)]`
-/

namespace A043767.P5454745664441977087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043767.P5454745664441977087

/-!
# A043772: Numbers k such that all divisors of k are lucky numbers.

The programs for A043772, there is no canonical definition to state claims against.
-/

/-! ## A043772.P2109654556068954249

`A118643(A171829(n+2)%A375578(n+4))`
-/

namespace A043772.P2109654556068954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (Int.tmod (A171829 (n + 2)) (A375578 (n + 4))).toNat

end

end A043772.P2109654556068954249

/-! ## A043772.P4690620579367875127

`A118643(∪[A378656(2*n+3), A171829(n+2)])`
-/

namespace A043772.P4690620579367875127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A043772.P4690620579367875127

/-! ## A043772.P11425547345499728518

`A118643(n+1)+A067169(A054252(n))`
-/

namespace A043772.P11425547345499728518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1) + A067169 ((A054252 n).toNat + 11)

end

end A043772.P11425547345499728518

/-! ## A043772.P11298088754570733702

`A118643(n+1)%A032749(n+1)`
-/

namespace A043772.P11298088754570733702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118643 (n + 1)) (A032749 (n + 1))

end

end A043772.P11298088754570733702

/-! ## A043772.P4920704873000840007

`∩[A118643(n+1), A349174(n+1)]`
-/

namespace A043772.P4920704873000840007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043772.P4920704873000840007

/-!
# A043773: Numbers k such that number of runs in the base 3 representation of k is congruent to 0 mod 3.

The programs for A043773, the canonical program `A043773.P18176166651553098273` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043773 has offset 1).

The definition of A043773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043773.P18176166651553098273

`eq[0, A043555(n)%3]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043773

/-- `eq[0, A043555(n)%3]` -/
def P18176166651553098273.Spec : Prop :=
  ∀ n, (P18176166651553098273.a n : ℤ) = A043773 (n + 1)

theorem P18176166651553098273.correct : P18176166651553098273.Spec := by
  intro n
  simp only [A043773, Nat.add_sub_cancel]

end A043773

/-! ## A043773.P9721675134535301006

`lt[A043555(n+1)%3, 1]+1`
-/

namespace A043773.P9721675134535301006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043773.P9721675134535301006

namespace A043773

/-- `lt[A043555(n+1)%3, 1]+1` -/
def P9721675134535301006.Spec : Prop :=
  ∀ n, (P9721675134535301006.a n : ℤ) = A043773 (n + 1)

end A043773

/-! ## A043773.P2293141536548047654

`lt[A043555(2*n-n)%3, 1]`
-/

namespace A043773.P2293141536548047654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (2 * n - n)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043773.P2293141536548047654

namespace A043773

/-- `lt[A043555(2*n-n)%3, 1]` -/
def P2293141536548047654.Spec : Prop :=
  ∀ n, (P2293141536548047654.a n : ℤ) = A043773 (n + 1)

end A043773

/-! ## A043773.P2070659700254616909

`lt[1, gcd(3, A043556(A023717(n)))]`
-/

namespace A043773.P2070659700254616909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A043556 (A023717 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043773.P2070659700254616909

namespace A043773

/-- `lt[1, gcd(3, A043556(A023717(n)))]` -/
def P2070659700254616909.Spec : Prop :=
  ∀ n, (P2070659700254616909.a n : ℤ) = A043773 (n + 1)

end A043773

/-! ## A043773.P15744883040698955677

`eq[0, A043556(A006288(n))%3]`
-/

namespace A043773.P15744883040698955677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A006288 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043773.P15744883040698955677

namespace A043773

/-- `eq[0, A043556(A006288(n))%3]` -/
def P15744883040698955677.Spec : Prop :=
  ∀ n, (P15744883040698955677.a n : ℤ) = A043773 (n + 1)

end A043773

/-!
# A043774: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 3.

The programs for A043774, the canonical program `A043774.P4061681262663181299` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043774 has offset 1).

The definition of A043774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043774.P4061681262663181299

`eq[1, A043555(n+1)%3]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043774

/-- `eq[1, A043555(n+1)%3]+1` -/
def P4061681262663181299.Spec : Prop :=
  ∀ n, (P4061681262663181299.a n : ℤ) = A043774 (n + 1)

theorem P4061681262663181299.correct : P4061681262663181299.Spec := by
  intro n
  simp only [A043774, Nat.add_sub_cancel]

end A043774

/-! ## A043774.P905815593490368162

`eq[A043555(n)%3, A057427(n)]`
-/

namespace A043774.P905815593490368162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043774.P905815593490368162

namespace A043774

/-- `eq[A043555(n)%3, A057427(n)]` -/
def P905815593490368162.Spec : Prop :=
  ∀ n, (P905815593490368162.a n : ℤ) = A043774 (n + 1)

end A043774

/-! ## A043774.P15294259814554734390

`lt[2, gcd(3, A057428(n)+A043555(n))]`
-/

namespace A043774.P15294259814554734390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A057428 n + A043555 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043774.P15294259814554734390

namespace A043774

/-- `lt[2, gcd(3, A057428(n)+A043555(n))]` -/
def P15294259814554734390.Spec : Prop :=
  ∀ n, (P15294259814554734390.a n : ℤ) = A043774 (n + 1)

end A043774

/-! ## A043774.P9090165662080375533

`eq[1, A043556(A006288(n+1))%3]+1`
-/

namespace A043774.P9090165662080375533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A006288 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043774.P9090165662080375533

namespace A043774

/-- `eq[1, A043556(A006288(n+1))%3]+1` -/
def P9090165662080375533.Spec : Prop :=
  ∀ n, (P9090165662080375533.a n : ℤ) = A043774 (n + 1)

end A043774

/-! ## A043774.P11420948654595145855

`eq[A057428(n)², A043556(A006288(n))%3]`
-/

namespace A043774.P11420948654595145855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A006288 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043774.P11420948654595145855

namespace A043774

/-- `eq[A057428(n)², A043556(A006288(n))%3]` -/
def P11420948654595145855.Spec : Prop :=
  ∀ n, (P11420948654595145855.a n : ℤ) = A043774 (n + 1)

end A043774

/-!
# A043775: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 3.

The programs for A043775, the canonical program `A043775.P3431966158011080836` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043775 has offset 1).

The definition of A043775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043775.P1465286008634805235

`∪[A043585(n+1), A043787(n+1)]`
-/

namespace A043775.P1465286008634805235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043775.P1465286008634805235

namespace A043775

/-- `∪[A043585(n+1), A043787(n+1)]` -/
def P1465286008634805235.Spec : Prop :=
  ∀ n, (P1465286008634805235.a n : ℤ) = A043775 (n + 1)

end A043775

/-! ## A043775.P3431966158011080836

`eq[2, A043555(n)%3]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043775

/-- `eq[2, A043555(n)%3]` -/
def P3431966158011080836.Spec : Prop :=
  ∀ n, (P3431966158011080836.a n : ℤ) = A043775 (n + 1)

theorem P3431966158011080836.correct : P3431966158011080836.Spec := by
  intro n
  simp only [A043775, Nat.add_sub_cancel]

end A043775

/-! ## A043775.P12784232423831993569

`lt[1, A043555(n+1)%3]+1`
-/

namespace A043775.P12784232423831993569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A043775.P12784232423831993569

namespace A043775

/-- `lt[1, A043555(n+1)%3]+1` -/
def P12784232423831993569.Spec : Prop :=
  ∀ n, (P12784232423831993569.a n : ℤ) = A043775 (n + 1)

end A043775

/-! ## A043775.P5146726981939882023

`eq[2, A043556(A006288(n))%3]`
-/

namespace A043775.P5146726981939882023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A006288 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043775.P5146726981939882023

namespace A043775

/-- `eq[2, A043556(A006288(n))%3]` -/
def P5146726981939882023.Spec : Prop :=
  ∀ n, (P5146726981939882023.a n : ℤ) = A043775 (n + 1)

end A043775

/-!
# A043776: 

The programs for A043776, there is no canonical definition to state claims against.
-/

/-! ## A043776.P144968170380702350

`lt[1, val(A043555(n), 2)]`
-/

namespace A043776.P144968170380702350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043776.P144968170380702350

/-!
# A043777: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 4.

The programs for A043777, there is no canonical definition to state claims against.
-/

/-! ## A043777.P997083947144462416

`∪[A043585(n+1), A043799(n+1)]`
-/

namespace A043777.P997083947144462416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043777.P997083947144462416

/-! ## A043777.P3538387449295024877

`eq[1, A043555(n+1)%4]+1`
-/

namespace A043777.P3538387449295024877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043777.P3538387449295024877

/-! ## A043777.P13941600668692605757

`eq[A043555(n)%4, A057427(n)]`
-/

namespace A043777.P13941600668692605757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043777.P13941600668692605757

/-! ## A043777.P9354099142492181726

`eq[n-1, abs(A043556(A006288(n))%4-n)]`
-/

namespace A043777.P9354099142492181726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A043556 (A006288 n).toNat) 4 - (n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043777.P9354099142492181726

/-!
# A043778: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 4.

The programs for A043778, the canonical program `A043778.P6531332179290542824` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043778 has offset 1).

The definition of A043778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043778.P6531332179290542824

`eq[1, val(A043555(n), 2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043778

/-- `eq[1, val(A043555(n), 2)]` -/
def P6531332179290542824.Spec : Prop :=
  ∀ n, (P6531332179290542824.a n : ℤ) = A043778 (n + 1)

theorem P6531332179290542824.correct : P6531332179290542824.Spec := by
  intro n
  simp only [A043778, Nat.add_sub_cancel]

end A043778

/-! ## A043778.P5587600305338393750

`eq[2, gcd(A043555(n), A062383(n))]`
-/

namespace A043778.P5587600305338393750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043555 n) (A062383 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043778.P5587600305338393750

namespace A043778

/-- `eq[2, gcd(A043555(n), A062383(n))]` -/
def P5587600305338393750.Spec : Prop :=
  ∀ n, (P5587600305338393750.a n : ℤ) = A043778 (n + 1)

end A043778

/-!
# A043779: 

The programs for A043779, there is no canonical definition to state claims against.
-/

/-! ## A043779.P16040712307582937087

`eq[3, A043555(n)%4]`
-/

namespace A043779.P16040712307582937087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043779.P16040712307582937087

/-! ## A043779.P9623937825967098191

`lt[2, A043555(n+1)%4]+1`
-/

namespace A043779.P9623937825967098191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A043779.P9623937825967098191

/-! ## A043779.P13626865582935022996

`eq[2, and(A057428(n)+A043555(n), -5)]`
-/

namespace A043779.P13626865582935022996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n + A043555 n) (-5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043779.P13626865582935022996

/-! ## A043779.P15277758753694615808

`eq[2, A001511(A043555(n)+or(3, n))]`
-/

namespace A043779.P15277758753694615808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A043555 n + (Nat.lor 3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043779.P15277758753694615808

/-! ## A043779.P18345755688478838115

`lt[2, A043556(A006288(n))%4]`
-/

namespace A043779.P18345755688478838115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (A006288 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043779.P18345755688478838115

/-!
# A043781: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 5.

The programs for A043781, there is no canonical definition to state claims against.
-/

/-! ## A043781.P7440868278119553334

`∪[A043586(n+1), A043816(n+1)]`
-/

namespace A043781.P7440868278119553334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043781.P7440868278119553334

/-! ## A043781.P7535252503404320785

`A370893(∑[n]+1)`
-/

namespace A043781.P7535252503404320785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A043781.P7535252503404320785

/-! ## A043781.P15902515358560320437

`A297440(∑[n+1]-dr(n))`
-/

namespace A043781.P15902515358560320437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297440 (∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.digitalRoot (n : ℤ))

end

end A043781.P15902515358560320437

/-! ## A043781.P6509312346198194293

`A043792(n+1)%p?[2^n+3]`
-/

namespace A043781.P6509312346198194293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043792 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A043781.P6509312346198194293

/-! ## A043781.P2069006551430164407

`A051638(A015518(n))`
-/

namespace A043781.P2069006551430164407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A015518 n).toNat

end

end A043781.P2069006551430164407

/-!
# A043786: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 6.

The programs for A043786, there is no canonical definition to state claims against.
-/

/-! ## A043786.P17074430318244603222

`∪[A043587(n+1), A043816(n+1)]`
-/

namespace A043786.P17074430318244603222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043786.P17074430318244603222

/-! ## A043786.P8675557054633171

`A003971(A026383(n))`
-/

namespace A043786.P8675557054633171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003971 (A026383 n).toNat

end

end A043786.P8675557054633171

/-! ## A043786.P16509276413042639525

`A354766(A038754(n))`
-/

namespace A043786.P16509276413042639525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354766 (A038754 n).toNat

end

end A043786.P16509276413042639525

/-! ## A043786.P4664106634451523904

`A385435(A117862(n))`
-/

namespace A043786.P4664106634451523904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 (A117862 n).toNat

end

end A043786.P4664106634451523904

/-!
# A043787: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 6.

The programs for A043787, there is no canonical definition to state claims against.
-/

/-! ## A043787.P14080748055941157846

`∩[A043692(n+1), A043775(n+1)]`
-/

namespace A043787.P14080748055941157846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043787.P14080748055941157846

/-!
# A043792: Numbers whose number of runs in base 3 is congruent to 1 (mod 7).

The programs for A043792, there is no canonical definition to state claims against.
-/

/-! ## A043792.P582096024237205046

`∪[A043588(n+1), A043816(n+1)]`
-/

namespace A043792.P582096024237205046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043792.P582096024237205046

/-! ## A043792.P12745828149841561154

`lt[7*A164994(n), n]`
-/

namespace A043792.P12745828149841561154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A164994 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043792.P12745828149841561154

/-! ## A043792.P1770044703925734600

`eq[0, A164994(n+1)]+1`
-/

namespace A043792.P1770044703925734600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043792.P1770044703925734600

/-! ## A043792.P8335505904501461579

`∑[∑[A335359(abs((-2)^n+1))]]`
-/

namespace A043792.P8335505904501461579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 |(-2) ^ n + 1|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043792.P8335505904501461579

/-! ## A043792.P3067942159431664406

`A002265(∏[3/a(n-1)]-1)` with `a(0)=6, a(1)=2`
-/

namespace A043792.P3067942159431664406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A043792.P3067942159431664406

/-!
# A043799: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 8.

The programs for A043799, there is no canonical definition to state claims against.
-/

/-! ## A043799.P11942978976941819869

`record[A374336(n+3)]`
-/

namespace A043799.P11942978976941819869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374336 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043799.P11942978976941819869

/-! ## A043799.P7579740462090670106

`record[A115303(2*(n+1))/2]`
-/

namespace A043799.P7579740462090670106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115303 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043799.P7579740462090670106

/-! ## A043799.P11070067888158745689

`eq[abs(1-n)+1, A361945(n)]`
-/

namespace A043799.P11070067888158745689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043799.P11070067888158745689

/-! ## A043799.P16850578150139226284

`∑[A178804(∑[3^floor(n/2)])]`
-/

namespace A043799.P16850578150139226284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043799.P16850578150139226284

/-! ## A043799.P3067277432367562832

`record[gcd(A365459(n+1)+1, n+1)]`
-/

namespace A043799.P3067277432367562832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365459 (n + 1) + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043799.P3067277432367562832

