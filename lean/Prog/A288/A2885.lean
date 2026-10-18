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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A288500: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A288500, there is no canonical definition to state claims against.
-/

/-! ## A288500.P13367485245451574667

`or(A035218(A001998(n)), A287197(n))`
-/

namespace A288500.P13367485245451574667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035218 (A001998 n).toNat) (A287197 n)

end

end A288500.P13367485245451574667

/-! ## A288500.P8528603733821181946

`xor(A277928(n), A303536(A036826(n)))`
-/

namespace A288500.P8528603733821181946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A277928 n) (A303536 (A036826 n).toNat)

end

end A288500.P8528603733821181946

/-! ## A288500.P5094202644369246268

`A288018(n)-A160086(A245879(n+1))`
-/

namespace A288500.P5094202644369246268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288018 n - A160086 (A245879 (n + 1)).toNat

end

end A288500.P5094202644369246268

/-!
# A288503: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A288503, there is no canonical definition to state claims against.
-/

/-! ## A288503.P1488512442003417700

`abs(A287468(A004277(n))-A288903(n))`
-/

namespace A288503.P1488512442003417700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287468 (A004277 n).toNat - A288903 n|

end

end A288503.P1488512442003417700

/-! ## A288503.P913686873356186970

`A000042(n+1)%A288903(A028310(n))`
-/

namespace A288503.P913686873356186970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A288903 (A028310 n).toNat)

end

end A288503.P913686873356186970

/-! ## A288503.P14134058650617294057

`A000042(n+1)+A000007(n)-A288903(n)`
-/

namespace A288503.P14134058650617294057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A288903 n)

end

end A288503.P14134058650617294057

/-! ## A288503.P2931908473708672344

`A007088(A288505(n))`
-/

namespace A288503.P2931908473708672344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288505 n).toNat

end

end A288503.P2931908473708672344

/-! ## A288503.P12042262498680639209

`A007088(A095121(n)+1-A288905(n))`
-/

namespace A288503.P12042262498680639209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288905 n)).toNat

end

end A288503.P12042262498680639209

/-!
# A288504: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A288504, there is no canonical definition to state claims against.
-/

/-! ## A288504.P11744436116160428575

`A007088(A288506(n))`
-/

namespace A288504.P11744436116160428575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288506 n).toNat

end

end A288504.P11744436116160428575

/-! ## A288504.P8095136381005635053

`A007088(and(-A288906(n), A095121(n)))`
-/

namespace A288504.P8095136381005635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A288906 n) (A095121 n)).toNat

end

end A288504.P8095136381005635053

/-! ## A288504.P10098161161302450967

`A007088(A095121(n)+1-A288906(n))`
-/

namespace A288504.P10098161161302450967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288906 n)).toNat

end

end A288504.P10098161161302450967

/-! ## A288504.P8104888228062083153

`A007088(1-(A288906(n)-A095121(n)))`
-/

namespace A288504.P8104888228062083153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288906 n - A095121 n)).toNat

end

end A288504.P8104888228062083153

/-! ## A288504.P4700340397452563560

`A007088(A288052(n)+A289040(n)-A288906(n))`
-/

namespace A288504.P4700340397452563560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n + (A289040 n - A288906 n)).toNat

end

end A288504.P4700340397452563560

/-!
# A288505: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A288505, there is no canonical definition to state claims against.
-/

/-! ## A288505.P279499543414414136

`A095121(n)+1-A288905(n)`
-/

namespace A288505.P279499543414414136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288905 n)

end

end A288505.P279499543414414136

/-! ## A288505.P85881747148626418

`A052955(A004277(n))-A288905(n)`
-/

namespace A288505.P85881747148626418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288905 n

end

end A288505.P85881747148626418

/-! ## A288505.P2931795237027190502

`A288052(n)+A289040(n)-A288905(n)`
-/

namespace A288505.P2931795237027190502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A288905 n)

end

end A288505.P2931795237027190502

/-! ## A288505.P14861089323285631187

`A288053(n)+A289041(n)-A288905(n)`
-/

namespace A288505.P14861089323285631187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A288905 n)

end

end A288505.P14861089323285631187

/-! ## A288505.P3750376246680995515

`A288506(n)+A288906(n)-A288905(n)`
-/

namespace A288505.P3750376246680995515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A288905 n)

end

end A288505.P3750376246680995515

/-!
# A288506: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A288506, there is no canonical definition to state claims against.
-/

/-! ## A288506.P8757529532703101691

`and(-A288906(n), A095121(n))`
-/

namespace A288506.P8757529532703101691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A288906 n) (A095121 n)

end

end A288506.P8757529532703101691

/-! ## A288506.P7738859481690234510

`A052955(A004277(n))-A288906(n)`
-/

namespace A288506.P7738859481690234510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288906 n

end

end A288506.P7738859481690234510

/-! ## A288506.P15781043749631976841

`A288052(n)+A289040(n)-A288906(n)`
-/

namespace A288506.P15781043749631976841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A288906 n)

end

end A288506.P15781043749631976841

/-! ## A288506.P7684435863277304605

`A288053(n)+A289041(n)-A288906(n)`
-/

namespace A288506.P7684435863277304605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A288906 n)

end

end A288506.P7684435863277304605

/-! ## A288506.P17317358103295176505

`A288505(n)+A288905(n)-A288906(n)`
-/

namespace A288506.P17317358103295176505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A288906 n)

end

end A288506.P17317358103295176505

/-!
# A288508: 0-limiting word of the mapping 00->0101, 10->001, starting with 00.

The programs for A288508, there is no canonical definition to state claims against.
-/

/-! ## A288508.P12996556190680345411

`char[A288510(n+1)-1]`
-/

namespace A288508.P12996556190680345411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288510 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288508.P12996556190680345411

/-! ## A288508.P1073399564505117504

`char[comp[A288509(n+1)-1]]`
-/

namespace A288508.P1073399564505117504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288509 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288508.P1073399564505117504

/-! ## A288508.P2920622690365924782

`char[A023443(A288510(n+1))]`
-/

namespace A288508.P2920622690365924782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288510 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288508.P2920622690365924782

/-! ## A288508.P10613036118721606058

`A002620(Δ[Δ[A288513(n+1)]]+1)`
-/

namespace A288508.P10613036118721606058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288513 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n + 1).toNat

end

end A288508.P10613036118721606058

/-! ## A288508.P1829221280498903395

`A288512(A288513(n+1)+2)`
-/

namespace A288508.P1829221280498903395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (A288513 (n + 1) + 2).toNat

end

end A288508.P1829221280498903395

/-! ## A288508.P3266308276510351464

`A288512(record[n+1-A065031(n)*A288512(n+1)]+2)`
-/

namespace A288508.P3266308276510351464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A065031 n * A288512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A288508.P3266308276510351464

/-!
# A288509: Positions of 0 in A288508; complement of A288510.

The programs for A288509, there is no canonical definition to state claims against.
-/

/-! ## A288509.P3220179630911185762

`eq[0, A288508(n+1)]+1`
-/

namespace A288509.P3220179630911185762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288509.P3220179630911185762

/-! ## A288509.P7967121222848568787

`a(n-1)+A288508(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288509.P7967121222848568787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288508 (a (n - 1) + 1).toNat + 1)

end

end A288509.P7967121222848568787

/-! ## A288509.P9006177935064001415

`record[n+1-A000005(n+1)*A288508(n+1)]`
-/

namespace A288509.P9006177935064001415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A288508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288509.P9006177935064001415

/-! ## A288509.P2470871492201017989

`record[n+1-A288508(n+1)*A288510(n+1)]`
-/

namespace A288509.P2470871492201017989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288508 (n + 1) * A288510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288509.P2470871492201017989

/-! ## A288509.P11138255002207179545

`record[n+1-A288508(n+1)*A288511(n)]`
-/

namespace A288509.P11138255002207179545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288508 (n + 1) * A288511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288509.P11138255002207179545

/-!
# A288510: Positions of 1 in A288508; complement of A288509.

The programs for A288510, there is no canonical definition to state claims against.
-/

/-! ## A288510.P1383719540679524388

`filter[n+1, A288508(#)]`
-/

namespace A288510.P1383719540679524388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288508 (f1 j) = 1) n)

end

end A288510.P1383719540679524388

/-! ## A288510.P2809371186772282562

`eq[1, A288508(n+1)]+1`
-/

namespace A288510.P2809371186772282562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288510.P2809371186772282562

/-! ## A288510.P6531588073064796337

`record[(n+4)*A288508(n+4)]`
-/

namespace A288510.P6531588073064796337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A288508 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288510.P6531588073064796337

/-! ## A288510.P13848314739360081426

`eq[1, A288508(gcd(n, A008706(n)))]`
-/

namespace A288510.P13848314739360081426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288510.P13848314739360081426

/-! ## A288510.P2586312655293587559

`lt[2, A016923(n)*A288508(n+1)]+1`
-/

namespace A288510.P2586312655293587559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n * A288508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288510.P2586312655293587559

/-! ## A288510.P1940646792072937134

`lt[A004526(n), (n+1)*A288508(n+1)]+1`
-/

namespace A288510.P1940646792072937134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A288510.P1940646792072937134

/-! ## A288510.P7543897186084726105

`eq[1, A288508(A065033(2*n))]`
-/

namespace A288510.P7543897186084726105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288510.P7543897186084726105

/-! ## A288510.P11731657838457986262

`eq[1, A288508(A233583(n+1))]`
-/

namespace A288510.P11731657838457986262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288510.P11731657838457986262

/-!
# A288511: a(n) = 2*a(n-1) - a(n-2) + 2*a(n-3) - 4*a(n-4) + 4*a(n-5) - 4*a(n-6) + 4*a(n-7) - 4*a(n-8) + 4*a(n-9) - 3*a(n-10) + 2*a(n-11) - 3*a(n-12) + 2*a(n-13) for n >= 16, with initial values as shown.

The programs for A288511, there is no canonical definition to state claims against.
-/

/-! ## A288511.P9197851173400173954

`A003056(∑[A129984(n)+5])`
-/

namespace A288511.P9197851173400173954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288511.P9197851173400173954

/-! ## A288511.P1154565175288161277

`A000045(n)+record[A134840(2*n+3)]`
-/

namespace A288511.P1154565175288161277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134840 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288511.P1154565175288161277

/-! ## A288511.P5708000386142719180

`lt[A006530(2^n+1), 2*n²]+A000045(n)`
-/

namespace A288511.P5708000386142719180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + A000045 n

end

end A288511.P5708000386142719180

/-! ## A288511.P7241731346440599977

`A033810(A337746(n+1)+A045623(n))`
-/

namespace A288511.P7241731346440599977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A337746 (n + 1) + A045623 n).toNat

end

end A288511.P7241731346440599977

/-! ## A288511.P9892921167060994961

`A350656(A000045(n))+A080671(n+1)`
-/

namespace A288511.P9892921167060994961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A000045 n).toNat + A080671 (n + 1)

end

end A288511.P9892921167060994961

/-!
# A288512: 1-limiting word of the mapping 00->0101, 10->001, starting with 00.

The programs for A288512, there is no canonical definition to state claims against.
-/

/-! ## A288512.P14616795378854009265

`char[A288514(n+1)-1]`
-/

namespace A288512.P14616795378854009265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288512.P14616795378854009265

/-! ## A288512.P10828125847922220499

`1-char[A288513(n+1)-1]`
-/

namespace A288512.P10828125847922220499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288513 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288512.P10828125847922220499

/-! ## A288512.P4599261556692245850

`char[A023443(A288514(n+1))]`
-/

namespace A288512.P4599261556692245850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288514 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288512.P4599261556692245850

/-! ## A288512.P17535902627587433277

`A288508(A288509(n+1)+2)`
-/

namespace A288512.P17535902627587433277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A288509 (n + 1) + 2).toNat

end

end A288512.P17535902627587433277

/-! ## A288512.P9356028053909483248

`A288508(eq[0, A288508(n+1)]+3)`
-/

namespace A288512.P9356028053909483248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A288512.P9356028053909483248

/-!
# A288513: Positions of 0 in A288512; complement of A288514.

The programs for A288513, there is no canonical definition to state claims against.
-/

/-! ## A288513.P6698110656866277644

`comp[A288514(n+1)-1]+1`
-/

namespace A288513.P6698110656866277644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288513.P6698110656866277644

/-! ## A288513.P16269075642503293458

`lt[A288512(n+1), 1]+1`
-/

namespace A288513.P16269075642503293458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288513.P16269075642503293458

/-! ## A288513.P180757347315907460

`a(n-1)+A288512(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288513.P180757347315907460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288512 (a (n - 1) + 1).toNat + 1)

end

end A288513.P180757347315907460

/-! ## A288513.P7506414754172292132

`lt[n*A288512(A028310(n)), n]`
-/

namespace A288513.P7506414754172292132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288512 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288513.P7506414754172292132

/-! ## A288513.P12325843515563671755

`record[n+1-A065031(n)*A288512(n+1)]`
-/

namespace A288513.P12325843515563671755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A065031 n * A288512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288513.P12325843515563671755

/-! ## A288513.P9863652177265494053

`record[n+1-A024898(n+1)*A288512(n+1)]`
-/

namespace A288513.P9863652177265494053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A024898 (n + 1) * A288512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288513.P9863652177265494053

/-! ## A288513.P4861559758261568753

`record[n+1-A108461(n+1)*A288512(n+1)]`
-/

namespace A288513.P4861559758261568753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108461 (n + 1) * A288512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288513.P4861559758261568753

/-!
# A288514: Positions of 1 in A288512; complement of A288513.

The programs for A288514, there is no canonical definition to state claims against.
-/

/-! ## A288514.P9081862052619842166

`record[Δ[(A288513(n+1)/2)²]]`
-/

namespace A288514.P9081862052619842166
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A288513 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288514.P9081862052619842166

/-! ## A288514.P3338629394103820565

`filter[n+1, A288512(#)]`
-/

namespace A288514.P3338629394103820565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288512 (f1 j) = 1) n)

end

end A288514.P3338629394103820565

/-! ## A288514.P921030676680904393

`lt[0, A288512(n+1)]+1`
-/

namespace A288514.P921030676680904393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288514.P921030676680904393

/-! ## A288514.P11570914528740551805

`record[(n+2)*A288512(n+2)]`
-/

namespace A288514.P11570914528740551805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288512 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288514.P11570914528740551805

/-! ## A288514.P5832099945210577818

`eq[1, A288512(A028310(n))]`
-/

namespace A288514.P5832099945210577818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288514.P5832099945210577818

/-! ## A288514.P10813311201102677351

`eq[1, A288512(gcd(n, A008706(n)))]`
-/

namespace A288514.P10813311201102677351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288514.P10813311201102677351

/-! ## A288514.P7177925478450185046

`record[Δ[A002620(A288513(n+1))]]`
-/

namespace A288514.P7177925478450185046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A288513 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288514.P7177925478450185046

/-! ## A288514.P778192542722808996

`eq[1, A288512(A008619(A004273(n)))]`
-/

namespace A288514.P778192542722808996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288514.P778192542722808996

/-! ## A288514.P9911690611832875989

`lt[char[A288513(n+1)], A288381(3*n+5)]`
-/

namespace A288514.P9911690611832875989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288514.P9911690611832875989

/-!
# A288515: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} ((1 + x^j)/(1 - x^j))^k.

The programs for A288515, there is no canonical definition to state claims against.
-/

/-! ## A288515.P10398556546188448438

`A071919(n)^A300239(A134672(n+1))*A059250(n+1)`
-/

namespace A288515.P10398556546188448438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) ^ (A300239 (A134672 (n + 1)).toNat : ℤ) * (A059250 (n + 1) : ℚ)

end

end A288515.P10398556546188448438

/-! ## A288515.P17879083330458608084

`A071919(n)*A297351(A059268(n))`
-/

namespace A288515.P17879083330458608084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A297351 (A059268 n).toNat

end

end A288515.P17879083330458608084

/-! ## A288515.P5507458476297853349

`A297351(A059268(n))*A321791(n)`
-/

namespace A288515.P5507458476297853349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297351 (A059268 n).toNat * A321791 n

end

end A288515.P5507458476297853349

/-! ## A288515.P4891494152040161281

`A351831(A124540(n)+A007318(n))`
-/

namespace A288515.P4891494152040161281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A124540 n + A007318 n).toNat

end

end A288515.P4891494152040161281

/-! ## A288515.P16386310716530579033

`A351831(A306024(n)+A007318(n))`
-/

namespace A288515.P16386310716530579033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A306024 n + A007318 n).toNat

end

end A288515.P16386310716530579033

/-!
# A288516: Number of (undirected) paths in the ladder graph P_2 X P_n.

The programs for A288516, the canonical program `A288516.P13812387791473023317` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288516 has offset 1).

The definition of A288516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288516.P13812387791473023317

`18*(2^(n+1)-1)-(n+1)*((n+1)²+9*(n+1)+41)/3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288516

/-- `18*(2^(n+1)-1)-(n+1)*((n+1)²+9*(n+1)+41)/3` -/
def P13812387791473023317.Spec : Prop :=
  ∀ n, P13812387791473023317.a n = (A288516 (n + 1) : ℚ)

end A288516

/-! ## A288516.P5952138595704300250

`∑[2*(∑[n+1]+a(n-1))+3]` with `a(0)=1`
-/

namespace A288516.P5952138595704300250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288516.P5952138595704300250

namespace A288516

/-- `∑[2*(∑[n+1]+a(n-1))+3]` -/
def P5952138595704300250.Spec : Prop :=
  ∀ n, (P5952138595704300250.a n : ℤ) = A288516 (n + 1)

end A288516

/-! ## A288516.P16765614919032868683

`∑[floor(A027180(n+1)/2)-2]`
-/

namespace A288516.P16765614919032868683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027180 (n + 1) : ℚ) / 2⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288516.P16765614919032868683

namespace A288516

/-- `∑[floor(A027180(n+1)/2)-2]` -/
def P16765614919032868683.Spec : Prop :=
  ∀ n, P16765614919032868683.a n = A288516 (n + 1)

end A288516

/-! ## A288516.P18302352790763177151

`∑[∑[∑[A052996(n+1)]-n]-2]`
-/

namespace A288516.P18302352790763177151
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288516.P18302352790763177151

namespace A288516

/-- `∑[∑[∑[A052996(n+1)]-n]-2]` -/
def P18302352790763177151.Spec : Prop :=
  ∀ n, P18302352790763177151.a n = A288516 (n + 1)

end A288516

/-! ## A288516.P14747267852062544041

`∑[A027688(n+1)+a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A288516.P14747267852062544041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027688 (n + 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288516.P14747267852062544041

namespace A288516

/-- `∑[A027688(n+1)+a(n-1)+a(n-1)]` -/
def P14747267852062544041.Spec : Prop :=
  ∀ n, P14747267852062544041.a n = A288516 (n + 1)

end A288516

/-! ## A288516.P741161194353847191

`∑[A047520(n+1)-(2-A095151(n+1))]`
-/

namespace A288516.P741161194353847191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 (n + 1) - (2 - A095151 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288516.P741161194353847191

namespace A288516

/-- `∑[A047520(n+1)-(2-A095151(n+1))]` -/
def P741161194353847191.Spec : Prop :=
  ∀ n, P741161194353847191.a n = A288516 (n + 1)

end A288516

/-!
# A288518: Array read by antidiagonals: T(m,n) = number of (undirected) paths in the grid graph P_m X P_n.

The programs for A288518, there is no canonical definition to state claims against.
-/

/-! ## A288518.P13968391528215409402

`A063394(n)*A329697(A030191(n))`
-/

namespace A288518.P13968391528215409402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 n * A329697 (A030191 n).toNat

end

end A288518.P13968391528215409402

/-! ## A288518.P2589900518986370878

`A219569(n+1)-A353627(A001003(n))`
-/

namespace A288518.P2589900518986370878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (n + 1) - A353627 (A001003 n).toNat

end

end A288518.P2589900518986370878

/-! ## A288518.P16399093329657707535

`A202795(n+1)-A365261(A098323(n))`
-/

namespace A288518.P16399093329657707535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (n + 1) - A365261 (A098323 n).toNat

end

end A288518.P16399093329657707535

/-! ## A288518.P3499317606553839959

`A202795(n+1)-A359834(A364647(n))`
-/

namespace A288518.P3499317606553839959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (n + 1) - A359834 (A364647 n).toNat

end

end A288518.P3499317606553839959

/-! ## A288518.P1566210706429394484

`A219569(n+1)-A359834(A364647(n))`
-/

namespace A288518.P1566210706429394484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (n + 1) - A359834 (A364647 n).toNat

end

end A288518.P1566210706429394484

/-!
# A288519: a(n) = least k such that A080670(k) begins with n.

The programs for A288519, there is no canonical definition to state claims against.
-/

/-! ## A288519.P16458015033496088205

`A018800(n+1)%A352065(n)`
-/

namespace A288519.P16458015033496088205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018800 (n + 1)) (A352065 n)

end

end A288519.P16458015033496088205

/-! ## A288519.P3516987212856192754

`A018800(n+1)^A278073(A028711(n))`
-/

namespace A288519.P3516987212856192754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018800 (n + 1) : ℚ) ^ (A278073 (A028711 n).toNat : ℤ)

end

end A288519.P3516987212856192754

/-! ## A288519.P13929593820426091905

`A018800(n+1)^A052409(A294414(n))`
-/

namespace A288519.P13929593820426091905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018800 (n + 1) : ℚ) ^ (A052409 (A294414 n).toNat : ℤ)

end

end A288519.P13929593820426091905

/-! ## A288519.P864697194521033692

`gcd(A018800(n+1), A121373(A058794(n)))`
-/

namespace A288519.P864697194521033692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018800 (n + 1)) (A121373 (A058794 n).toNat)

end

end A288519.P864697194521033692

/-! ## A288519.P5504246877935817885

`A018800(A018800(n+1))%A130412(n+1)`
-/

namespace A288519.P5504246877935817885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018800 (A018800 (n + 1)).toNat) (A130412 (n + 1))

end

end A288519.P5504246877935817885

/-!
# A288520: 0-limiting word of the mapping 00->0101, 10->010, starting with 00.

The programs for A288520, there is no canonical definition to state claims against.
-/

/-! ## A288520.P10053103393748809699

`char[A288522(n+1)-1]`
-/

namespace A288520.P10053103393748809699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288522 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288520.P10053103393748809699

/-! ## A288520.P6315452776049044788

`char[comp[A288521(n+1)-1]]`
-/

namespace A288520.P6315452776049044788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288520.P6315452776049044788

/-! ## A288520.P17884186803621545135

`1-char[A288521(xor(1, n)+1)-1]`
-/

namespace A288520.P17884186803621545135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288520.P17884186803621545135

/-! ## A288520.P8272439484417514853

`1-char[A288521(Δ[n²]-n)-1]`
-/

namespace A288520.P8272439484417514853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288520.P8272439484417514853

/-! ## A288520.P12948431850387738064

`char[comp[A023443(A288521(n+1))]]`
-/

namespace A288520.P12948431850387738064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288521 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288520.P12948431850387738064

/-! ## A288520.P7037008453085192083

`A002620(1-Δ[Δ[A288525(n+1)]])`
-/

namespace A288520.P7037008453085192083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A288520.P7037008453085192083

/-! ## A288520.P2591022233259695389

`A288524(A288525(n+3)-2)`
-/

namespace A288520.P2591022233259695389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288524 (A288525 (n + 3) - 2).toNat

end

end A288520.P2591022233259695389

/-!
# A288521: Positions of 0 in A288520; complement of A288522.

The programs for A288521, there is no canonical definition to state claims against.
-/

/-! ## A288521.P658291578448228940

`a(n-1)+A288520(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288521.P658291578448228940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288520 (a (n - 1) + 1).toNat + 1)

end

end A288521.P658291578448228940

/-! ## A288521.P17905504530032623960

`eq[0, A288520(n+1)]+1`
-/

namespace A288521.P17905504530032623960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288521.P17905504530032623960

/-! ## A288521.P15617833333690223502

`lt[n*char[A288522(n+1)], n]`
-/

namespace A288521.P15617833333690223502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288521.P15617833333690223502

/-! ## A288521.P11219604054548902018

`lt[n*A288520(A028310(n)), n]`
-/

namespace A288521.P11219604054548902018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288520 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288521.P11219604054548902018

/-! ## A288521.P5451351230411951596

`lt[char[A288522(n+1)], A057427(n)]`
-/

namespace A288521.P5451351230411951596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288521.P5451351230411951596

/-! ## A288521.P5890601922843531759

`record[n+1-A288520(n+1)*A288522(n+1)]`
-/

namespace A288521.P5890601922843531759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288520 (n + 1) * A288522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288521.P5890601922843531759

/-! ## A288521.P17156171992839073839

`lt[A288520(A028310(n)), A057427(n)]`
-/

namespace A288521.P17156171992839073839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288521.P17156171992839073839

/-! ## A288521.P13789716670613936628

`record[n+1-A288520(n+1)*A288523(n)]`
-/

namespace A288521.P13789716670613936628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288520 (n + 1) * A288523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288521.P13789716670613936628

/-!
# A288522: Positions of 1 in A288520; complement of A288521.

The programs for A288522, there is no canonical definition to state claims against.
-/

/-! ## A288522.P11226399975746756213

`filter[n+1, A288520(#)]`
-/

namespace A288522.P11226399975746756213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288520 (f1 j) = 1) n)

end

end A288522.P11226399975746756213

/-! ## A288522.P8250499700513070495

`lt[0, A288520(n+1)]+1`
-/

namespace A288522.P8250499700513070495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288522.P8250499700513070495

/-! ## A288522.P7831190439605860506

`record[(n+3)*A288520(n+3)]`
-/

namespace A288522.P7831190439605860506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288520 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288522.P7831190439605860506

/-! ## A288522.P2272726213989468673

`eq[1, A288520(A028310(n))]`
-/

namespace A288522.P2272726213989468673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288522.P2272726213989468673

/-! ## A288522.P8769172081941371390

`eq[1, A288520(gcd(n, A008706(n)))]`
-/

namespace A288522.P8769172081941371390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288522.P8769172081941371390

/-! ## A288522.P13637177628445138247

`lt[n*char[A288521(n+1)], n]`
-/

namespace A288522.P13637177628445138247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288522.P13637177628445138247

/-! ## A288522.P13114564557327236100

`eq[1, A288520(A000007(n)+n)]`
-/

namespace A288522.P13114564557327236100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288522.P13114564557327236100

/-! ## A288522.P188810965337738736

`lt[char[A288521(n+1)], A057427(n)]`
-/

namespace A288522.P188810965337738736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288522.P188810965337738736

/-! ## A288522.P2576779284050865184

`lt[1-A288520(A028310(n)), A057427(n)]`
-/

namespace A288522.P2576779284050865184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288520 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288522.P2576779284050865184

/-! ## A288522.P327916321705841474

`eq[1, A288520(A065033(2*n))]`
-/

namespace A288522.P327916321705841474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288522.P327916321705841474

/-! ## A288522.P9706424500684820533

`eq[1, A288520(A233583(n+1))]`
-/

namespace A288522.P9706424500684820533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288522.P9706424500684820533

/-!
# A288523: a(n) = a(n-1) + a(n-2) + a(n-3) - 2*a(n-4) for n >= 5, where a(0) = 2, a(1) = 4, a(2) = 5, a(3) = 8, a(4) = 11.

The programs for A288523, the canonical program `A288523.P13478884332910719950` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288523 has offset 0).

The definition of A288523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` (program `A288523.P13478884332910719950`, by `A288523.P13478884332910719950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288523.P13478884332910719950

`a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=8, a(4)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288523

/-- `a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` -/
def P13478884332910719950.Spec : Prop :=
  ∀ n, P13478884332910719950.a n = A288523 n

theorem P13478884332910719950.correct : P13478884332910719950.Spec := by
  intro n
  simp only [A288523]

end A288523

/-! ## A288523.P13929508600327117361

`a(n-2)+2*a(n-3)-2` with `a(0)=2, a(1)=4, a(2)=5, a(3)=8`
-/

namespace A288523.P13929508600327117361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 8] fun n a =>
  a (n - 2) + 2 * a (n - 3) - 2

end

end A288523.P13929508600327117361

namespace A288523

/-- `a(n-2)+2*a(n-3)-2` -/
def P13929508600327117361.Spec : Prop :=
  ∀ n, P13929508600327117361.a n = A288523 n

end A288523

/-! ## A288523.P8376323628123493208

`∑[A159284(n+1)+char[1]]+1`
-/

namespace A288523.P8376323628123493208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288523.P8376323628123493208

namespace A288523

/-- `∑[A159284(n+1)+char[1]]+1` -/
def P8376323628123493208.Spec : Prop :=
  ∀ n, P8376323628123493208.a n = A288523 n

end A288523

/-! ## A288523.P8604694552022790439

`record[A159288(C(3, n))+A159288(n)]`
-/

namespace A288523.P8604694552022790439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (Nat.choose 3 n) + A159288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288523.P8604694552022790439

namespace A288523

/-- `record[A159288(C(3, n))+A159288(n)]` -/
def P8604694552022790439.Spec : Prop :=
  ∀ n, P8604694552022790439.a n = A288523 n

end A288523

/-! ## A288523.P16311240746599125377

`∑[A159284(n+1)]+gcd(2, A077957(n))`
-/

namespace A288523.P16311240746599125377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.gcd 2 (A077957 n) : ℤ)

end

end A288523.P16311240746599125377

namespace A288523

/-- `∑[A159284(n+1)]+gcd(2, A077957(n))` -/
def P16311240746599125377.Spec : Prop :=
  ∀ n, P16311240746599125377.a n = A288523 n

end A288523

/-! ## A288523.P15327927212552638224

`∑[A159284(C(2, n+1))+A159284(n+1)]`
-/

namespace A288523.P15327927212552638224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (Nat.choose 2 (n + 1)) + A159284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288523.P15327927212552638224

namespace A288523

/-- `∑[A159284(C(2, n+1))+A159284(n+1)]` -/
def P15327927212552638224.Spec : Prop :=
  ∀ n, P15327927212552638224.a n = A288523 n

end A288523

/-!
# A288524: 1-limiting word of the mapping 00->0101, 10->010, starting with 00.

The programs for A288524, there is no canonical definition to state claims against.
-/

/-! ## A288524.P11284800182769470705

`char[A288526(n+1)-1]`
-/

namespace A288524.P11284800182769470705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288526 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288524.P11284800182769470705

/-! ## A288524.P1177575075877324450

`char[comp[A288525(n+1)-1]]`
-/

namespace A288524.P1177575075877324450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288525 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288524.P1177575075877324450

/-! ## A288524.P905400045756679898

`char[A023443(comp[A288525(n+1)])]`
-/

namespace A288524.P905400045756679898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288525 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288524.P905400045756679898

/-! ## A288524.P2974516060293619166

`A288520(2-Δ[Δ[A288521(n+1)]])`
-/

namespace A288524.P2974516060293619166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A288524.P2974516060293619166

/-! ## A288524.P10194523706310969399

`A288520(Δ[Δ[A288521(n+1)]]+4)`
-/

namespace A288524.P10194523706310969399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (f1 (n + 1) - f1 n + 4).toNat

end

end A288524.P10194523706310969399

/-! ## A288524.P4968570560111248438

`A288520(A288521(n+3)-2)`
-/

namespace A288524.P4968570560111248438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (A288521 (n + 3) - 2).toNat

end

end A288524.P4968570560111248438

/-! ## A288524.P2999162970029848459

`A288520(eq[0, A288520(n+3)]+1)`
-/

namespace A288524.P2999162970029848459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A288524.P2999162970029848459

/-! ## A288524.P14936284027916276071

`A288520(eq[A000007(n), A288520(n+2)])`
-/

namespace A288524.P14936284027916276071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A288524.P14936284027916276071

/-! ## A288524.P9429132295629497947

`A288520(lt[A288520(n+2), A057427(n)])`
-/

namespace A288524.P9429132295629497947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288520 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288524.P9429132295629497947

/-!
# A288525: Positions of 0 in A288524; complement of A288526.

The programs for A288525, there is no canonical definition to state claims against.
-/

/-! ## A288525.P3728935910802352739

`eq[0, A288524(n+1)]+1`
-/

namespace A288525.P3728935910802352739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288525.P3728935910802352739

/-! ## A288525.P2753230819569042076

`a(n-1)+A288524(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288525.P2753230819569042076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288524 (a (n - 1) + 1).toNat + 1)

end

end A288525.P2753230819569042076

/-! ## A288525.P2907047380934049143

`lt[n*A288524(A028310(n)), n]`
-/

namespace A288525.P2907047380934049143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288524 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288525.P2907047380934049143

/-! ## A288525.P6795853798191007380

`record[n+1-A123578(n*A288524(n+1))]`
-/

namespace A288525.P6795853798191007380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A123578 ((n : ℤ) * A288524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288525.P6795853798191007380

/-! ## A288525.P1013751452115957412

`record[n+1-A038500(n+1)*A288524(n+1)]`
-/

namespace A288525.P1013751452115957412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A038500 (n + 1) * A288524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288525.P1013751452115957412

/-! ## A288525.P15967230630285890592

`record[n+1-A261022(n+1)*A288524(n+1)]`
-/

namespace A288525.P15967230630285890592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A261022 (n + 1) * A288524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288525.P15967230630285890592

/-!
# A288526: Positions of 1 in A288524; complement of A288525.

The programs for A288526, there is no canonical definition to state claims against.
-/

/-! ## A288526.P5188080763962033190

`record[Δ[(A288525(n+1)/2)²]]`
-/

namespace A288526.P5188080763962033190
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A288525 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288526.P5188080763962033190

/-! ## A288526.P1458605987360339342

`filter[n+1, A288524(#)]`
-/

namespace A288526.P1458605987360339342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288524 (f1 j) = 1) n)

end

end A288526.P1458605987360339342

/-! ## A288526.P14207699146769209409

`lt[0, A288524(n+1)]+1`
-/

namespace A288526.P14207699146769209409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288526.P14207699146769209409

/-! ## A288526.P3640333007904283536

`record[(n+2)*A288524(n+2)]`
-/

namespace A288526.P3640333007904283536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288524 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288526.P3640333007904283536

/-! ## A288526.P10289788797745211103

`lt[0, A288524(A028310(n))]`
-/

namespace A288526.P10289788797745211103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288524 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288526.P10289788797745211103

/-! ## A288526.P9589825304614115661

`A020725(eq[1, A288524(n+1)])`
-/

namespace A288526.P9589825304614115661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288526.P9589825304614115661

/-! ## A288526.P3614915879289045373

`record[Δ[A002620(A288525(n+1))]]`
-/

namespace A288526.P3614915879289045373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A288525 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288526.P3614915879289045373

/-!
# A288527: Number of (undirected) paths in the grid graph P_3 X P_n.

The programs for A288527, there is no canonical definition to state claims against.
-/

/-! ## A288527.P5999493597419611816

`A288518(∑[n+3]+1)`
-/

namespace A288527.P5999493597419611816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288527.P5999493597419611816

/-! ## A288527.P15448246364973591174

`lcm(A160357(n), A288518(A167614(n+1)))`
-/

namespace A288527.P15448246364973591174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160357 n) (A288518 (A167614 (n + 1)).toNat)

end

end A288527.P15448246364973591174

/-! ## A288527.P1017775470051049918

`or(A000007(n), A288518(A167614(n+1)))`
-/

namespace A288527.P1017775470051049918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A288518 (A167614 (n + 1)).toNat)

end

end A288527.P1017775470051049918

/-! ## A288527.P9976198761590352797

`or(A010052(n), A288518(A167614(n+1)))`
-/

namespace A288527.P9976198761590352797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A288518 (A167614 (n + 1)).toNat)

end

end A288527.P9976198761590352797

/-! ## A288527.P3885303799278345300

`A288518(A167614(n+1))+A000035(2*n)`
-/

namespace A288527.P3885303799278345300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A288527.P3885303799278345300

/-!
# A288528: Numbers with consecutive positive decimal digits after the digits are sorted.

The programs for A288528, there is no canonical definition to state claims against.
-/

/-! ## A288528.P14734641636646756764

`∩[A052382(n+1), A215014(n+1)]`
-/

namespace A288528.P14734641636646756764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288528.P14734641636646756764

/-! ## A288528.P4073347687305291519

`∩[A052382(n+1), A376300(n+1)]`
-/

namespace A288528.P4073347687305291519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288528.P4073347687305291519

/-! ## A288528.P7087816876405405850

`filter[A215014(n+1), A168046(#)]`
-/

namespace A288528.P7087816876405405850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A288528.P7087816876405405850

/-! ## A288528.P14837756216811668612

`filter[A376300(n+1), A168046(#)]`
-/

namespace A288528.P14837756216811668612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A288528.P14837756216811668612

/-! ## A288528.P4174530230923842417

`eq[A054054(n), A229186(A004185(n))]`
-/

namespace A288528.P4174530230923842417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288528.P4174530230923842417

/-! ## A288528.P6014231366784575285

`eq[A054054(n), A229186(A328447(n))]`
-/

namespace A288528.P6014231366784575285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A328447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288528.P6014231366784575285

/-! ## A288528.P1060557492058701592

`eq[A004428(n), A229186(A004185(n))]`
-/

namespace A288528.P1060557492058701592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288528.P1060557492058701592

/-! ## A288528.P1067384696054046455

`eq[A004428(n), A229186(A328447(n))]`
-/

namespace A288528.P1067384696054046455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A328447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288528.P1067384696054046455

/-!
# A288529: a(n) is the minimum number of rows from the table described in A286000 that are required to represent the partitions of n into consecutive parts.

The programs for A288529, there is no canonical definition to state claims against.
-/

/-! ## A288529.P8485411759269072989

`A109814(n+1)+n`
-/

namespace A288529.P8485411759269072989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) + (n : ℤ)

end

end A288529.P8485411759269072989

/-! ## A288529.P14184901681718336482

`floor(n*A104513(n+1)/(n+1))+1+n`
-/

namespace A288529.P14184901681718336482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A104513 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1 + (n : ℤ)

end

end A288529.P14184901681718336482

/-! ## A288529.P10691239612309576171

`A028310(A104513(n+1))+n`
-/

namespace A288529.P10691239612309576171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A104513 (n + 1)).toNat + (n : ℤ)

end

end A288529.P10691239612309576171

/-! ## A288529.P5563390953566556146

`A070940(A347266(n+1))+n`
-/

namespace A288529.P5563390953566556146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A347266 (n + 1)).toNat + (n : ℤ)

end

end A288529.P5563390953566556146

/-! ## A288529.P7431167064040213112

`A065033(2*A104513(n+1))+n`
-/

namespace A288529.P7431167064040213112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A104513 (n + 1)).toNat + (n : ℤ)

end

end A288529.P7431167064040213112

/-! ## A288529.P12834724471760982904

`A123108(2*A104513(n+1))+n`
-/

namespace A288529.P12834724471760982904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A104513 (n + 1)).toNat + (n : ℤ)

end

end A288529.P12834724471760982904

/-! ## A288529.P6449016459904751375

`A033273(2^A104513(n+1))+n`
-/

namespace A288529.P6449016459904751375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A104513 (n + 1) : ℤ))).toNat + (n : ℤ)

end

end A288529.P6449016459904751375

/-! ## A288529.P14968965686265495359

`A104513(n+1)+A036987(n)+n`
-/

namespace A288529.P14968965686265495359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + (A036987 n + (n : ℤ))

end

end A288529.P14968965686265495359

/-! ## A288529.P7504178922648422015

`∏{d}[A104513(n+1), A014963(#)]+n`
-/

namespace A288529.P7504178922648422015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d + (n : ℤ)

end

end A288529.P7504178922648422015

/-! ## A288529.P4757366808996725940

`gcd(A104513(n+1), A154269(n+1))+n`
-/

namespace A288529.P4757366808996725940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104513 (n + 1)) (A154269 (n + 1)) + n

end

end A288529.P4757366808996725940

/-!
# A288530: Triangle read by rows in reverse order: T(n,k), (0 <= k <= n), in which each term is the least nonnegative integer such that no row, column, diagonal, or antidiagonal contains a repeated term.

The programs for A288530, there is no canonical definition to state claims against.
-/

/-! ## A288530.P3100049056403685859

`A288531(n+1)-1`
-/

namespace A288530.P3100049056403685859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288531 (n + 1) - 1

end

end A288530.P3100049056403685859

/-! ## A288530.P96782620877200283

`A023443(A288531(n+1))`
-/

namespace A288530.P96782620877200283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288531 (n + 1)).toNat

end

end A288530.P96782620877200283

/-! ## A288530.P9754144872792030038

`A046667(2*A288531(n+1))`
-/

namespace A288530.P9754144872792030038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A288531 (n + 1)).toNat

end

end A288530.P9754144872792030038

/-! ## A288530.P1519338878844345930

`(A288531(n+1)+n)%A038608(n+1)`
-/

namespace A288530.P1519338878844345930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288531 (n + 1) + (n : ℤ)) (A038608 (n + 1))

end

end A288530.P1519338878844345930

/-! ## A288530.P15948678543791309022

`(A288531(n+1)+log2(A000079(n)))%(n+1)`
-/

namespace A288530.P15948678543791309022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A288531 (n + 1) : ℝ) + Real.logb 2 (A000079 n : ℝ))) (n + 1 : ℤ)

end

end A288530.P15948678543791309022

/-! ## A288530.P5311854231622210105

`A070198(n)%A288531(n+1)`
-/

namespace A288530.P5311854231622210105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A288531 (n + 1))

end

end A288530.P5311854231622210105

/-! ## A288530.P7539710280150719211

`A079782(n+1)%A288531(n+1)`
-/

namespace A288530.P7539710280150719211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A288531 (n + 1))

end

end A288530.P7539710280150719211

/-! ## A288530.P12730597335428987582

`A083685(n+1)%A288531(n+1)`
-/

namespace A288530.P12730597335428987582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A288531 (n + 1))

end

end A288530.P12730597335428987582

/-! ## A288530.P11802856195281387051

`A121934(n+1)%A288531(n+1)`
-/

namespace A288530.P11802856195281387051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A288531 (n + 1))

end

end A288530.P11802856195281387051

/-! ## A288530.P8953294290092818823

`A030494(n+1)%A288531(n+1)`
-/

namespace A288530.P8953294290092818823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A288531 (n + 1))

end

end A288530.P8953294290092818823

/-! ## A288530.P686730831840143508

`A072828(n+1)%A288531(n+1)`
-/

namespace A288530.P686730831840143508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A288531 (n + 1))

end

end A288530.P686730831840143508

/-!
# A288531: Triangle read by rows in reverse order: T(n,k), (1<=k<=n), in which each term is the least positive integer such that no row, column, diagonal, or antidiagonal contains a repeated term.

The programs for A288531, there is no canonical definition to state claims against.
-/

/-! ## A288531.P5913235516634846405

`A288530(n)+1`
-/

namespace A288531.P5913235516634846405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288530 n + 1

end

end A288531.P5913235516634846405

/-! ## A288531.P7746505235907029323

`A008619(2*A288530(n))`
-/

namespace A288531.P7746505235907029323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A288530 n).toNat

end

end A288531.P7746505235907029323

/-! ## A288531.P1954544272568138732

`A080513(2*A288530(n))`
-/

namespace A288531.P1954544272568138732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A288530 n).toNat

end

end A288531.P1954544272568138732

/-! ## A288531.P4716243577720302963

`2-(A001222(A101300(n))-A288530(n))`
-/

namespace A288531.P4716243577720302963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001222 (A101300 n).toNat - A288530 n)

end

end A288531.P4716243577720302963

/-! ## A288531.P5264251077714412588

`A000124(n)-(A000217(n)-A288530(n))`
-/

namespace A288531.P5264251077714412588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A000217 n - A288530 n)

end

end A288531.P5264251077714412588

/-! ## A288531.P1233359518996342692

`A001844(n)-(A046092(n)-A288530(n))`
-/

namespace A288531.P1233359518996342692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A046092 n - A288530 n)

end

end A288531.P1233359518996342692

/-! ## A288531.P8689273010090539750

`A000005(2^A288530(n))`
-/

namespace A288531.P8689273010090539750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A288530 n : ℤ))).toNat

end

end A288531.P8689273010090539750

/-! ## A288531.P8323077011486859120

`A001222(2*2^A288530(n))`
-/

namespace A288531.P8323077011486859120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A288530 n : ℤ))).toNat

end

end A288531.P8323077011486859120

/-! ## A288531.P14682340617153555825

`A001511(2^A288530(n))`
-/

namespace A288531.P14682340617153555825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A288530 n : ℤ))).toNat

end

end A288531.P14682340617153555825

/-!
# A288532: Literal reading of the prime tower factorization of n.

The programs for A288532, there is no canonical definition to state claims against.
-/

/-! ## A288532.P11099226399012084085

`A270850(A294875(n+1))+A080670(n+1)`
-/

namespace A288532.P11099226399012084085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270850 (A294875 (n + 1)).toNat + A080670 (n + 1)

end

end A288532.P11099226399012084085

/-!
# A288533: Parse A004736 into distinct phrases [1], [2], [1,3], [2,1], [4], [3], [2,1,5], [4,3], [2,1,6], ...; a(n) is the length of the n-th phrase.

The programs for A288533, there is no canonical definition to state claims against.
-/

/-! ## A288533.P12544488475318542292

`A090822(A001950(A224957(n))-A122291(n))`
-/

namespace A288533.P12544488475318542292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A001950 (A224957 n).toNat - A122291 n).toNat

end

end A288533.P12544488475318542292

/-! ## A288533.P15043177003826684572

`A001222(A158606(n+1)+A114538(n+1))`
-/

namespace A288533.P15043177003826684572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158606 (n + 1) + A114538 (n + 1)).toNat

end

end A288533.P15043177003826684572

/-! ## A288533.P3014575354783438823

`A161906(A080950(A326117(n)))`
-/

namespace A288533.P3014575354783438823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A080950 (A326117 n).toNat).toNat

end

end A288533.P3014575354783438823

/-! ## A288533.P8714487731073648226

`gcd(A058389(n), A320015(A264079(n)))`
-/

namespace A288533.P8714487731073648226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058389 n) (A320015 (A264079 n).toNat)

end

end A288533.P8714487731073648226

/-!
# A288534: a(n) = n*(2*n^2 + 3), n >= 1; a(0)=1.

The programs for A288534, the canonical program `A288534.P4975820143357518569` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288534 has offset 0).

The definition of A288534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288534.P4975820143357518569

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=63, a(4)=140`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288534

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4975820143357518569.Spec : Prop :=
  ∀ n, P4975820143357518569.a n = A288534 n

theorem P4975820143357518569.correct : P4975820143357518569.Spec := by
  intro n
  simp only [A288534]

end A288534

/-! ## A288534.P6641508519812874668

`ceil(A008532(n)/2)`
-/

namespace A288534.P6641508519812874668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008532 n : ℚ) / 2⌉

end

end A288534.P6641508519812874668

namespace A288534

/-- `ceil(A008532(n)/2)` -/
def P6641508519812874668.Spec : Prop :=
  ∀ n, P6641508519812874668.a n = A288534 n

end A288534

/-! ## A288534.P3475217339481736255

`A079908(n)+n^3`
-/

namespace A288534.P3475217339481736255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n + (n ^ 3 : ℤ)

end

end A288534.P3475217339481736255

namespace A288534

/-- `A079908(n)+n^3` -/
def P3475217339481736255.Spec : Prop :=
  ∀ n, P3475217339481736255.a n = A288534 n

end A288534

/-! ## A288534.P16774873397954762991

`ceil(A058920(n)/(n+1))`
-/

namespace A288534.P16774873397954762991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058920 n : ℚ) / (n + 1 : ℚ)⌉

end

end A288534.P16774873397954762991

namespace A288534

/-- `ceil(A058920(n)/(n+1))` -/
def P16774873397954762991.Spec : Prop :=
  ∀ n, P16774873397954762991.a n = A288534 n

end A288534

/-! ## A288534.P4888925010987621183

`(n²+1)*A004277(n)+n`
-/

namespace A288534.P4888925010987621183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A004277 n + (n : ℤ)

end

end A288534.P4888925010987621183

namespace A288534

/-- `(n²+1)*A004277(n)+n` -/
def P4888925010987621183.Spec : Prop :=
  ∀ n, P4888925010987621183.a n = A288534 n

end A288534

/-! ## A288534.P4473263851282776018

`A004275(n+1)*(n²+1)+n`
-/

namespace A288534.P4473263851282776018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) * (n ^ 2 + 1 : ℤ) + (n : ℤ)

end

end A288534.P4473263851282776018

namespace A288534

/-- `A004275(n+1)*(n²+1)+n` -/
def P4473263851282776018.Spec : Prop :=
  ∀ n, P4473263851282776018.a n = A288534 n

end A288534

/-! ## A288534.P16919610580615787597

`record[A006257(n)+1]*(n²+1)+n`
-/

namespace A288534.P16919610580615787597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n ^ 2 + 1 : ℤ) + (n : ℤ)

end

end A288534.P16919610580615787597

namespace A288534

/-- `record[A006257(n)+1]*(n²+1)+n` -/
def P16919610580615787597.Spec : Prop :=
  ∀ n, P16919610580615787597.a n = A288534 n

end A288534

/-! ## A288534.P10345324865515655516

`A008574(n)+A007588(n)`
-/

namespace A288534.P10345324865515655516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A007588 n

end

end A288534.P10345324865515655516

namespace A288534

/-- `A008574(n)+A007588(n)` -/
def P10345324865515655516.Spec : Prop :=
  ∀ n, P10345324865515655516.a n = A288534 n

end A288534

/-! ## A288534.P2868591775438396988

`A033431(n)+A008486(n)`
-/

namespace A288534.P2868591775438396988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + A008486 n

end

end A288534.P2868591775438396988

namespace A288534

/-- `A033431(n)+A008486(n)` -/
def P2868591775438396988.Spec : Prop :=
  ∀ n, P2868591775438396988.a n = A288534 n

end A288534

/-! ## A288534.P16284812394787501640

`A061317(n)+A004277(n)`
-/

namespace A288534.P16284812394787501640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n + A004277 n

end

end A288534.P16284812394787501640

namespace A288534

/-- `A061317(n)+A004277(n)` -/
def P16284812394787501640.Spec : Prop :=
  ∀ n, P16284812394787501640.a n = A288534 n

end A288534

/-! ## A288534.P15434678671710416866

`A140226(n)+A004466(n)`
-/

namespace A288534.P15434678671710416866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n + A004466 n

end

end A288534.P15434678671710416866

namespace A288534

/-- `A140226(n)+A004466(n)` -/
def P15434678671710416866.Spec : Prop :=
  ∀ n, P15434678671710416866.a n = A288534 n

end A288534

/-! ## A288534.P6039323489851796933

`A217748(n+3)+A015237(n)`
-/

namespace A288534.P6039323489851796933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) + A015237 n

end

end A288534.P6039323489851796933

namespace A288534

/-- `A217748(n+3)+A015237(n)` -/
def P6039323489851796933.Spec : Prop :=
  ∀ n, P6039323489851796933.a n = A288534 n

end A288534

/-! ## A288534.P2851736505621646152

`A008486(n)+2*A000578(n)`
-/

namespace A288534.P2851736505621646152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + 2 * A000578 n

end

end A288534.P2851736505621646152

namespace A288534

/-- `A008486(n)+2*A000578(n)` -/
def P2851736505621646152.Spec : Prop :=
  ∀ n, P2851736505621646152.a n = A288534 n

end A288534

/-! ## A288534.P3248520097303155502

`2*A079908(n)-A008486(n)`
-/

namespace A288534.P3248520097303155502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079908 n - A008486 n

end

end A288534.P3248520097303155502

namespace A288534

/-- `2*A079908(n)-A008486(n)` -/
def P3248520097303155502.Spec : Prop :=
  ∀ n, P3248520097303155502.a n = A288534 n

end A288534

/-! ## A288534.P14280700871510570873

`A007588(n)+A008486(n)+n`
-/

namespace A288534.P14280700871510570873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n + (A008486 n + (n : ℤ))

end

end A288534.P14280700871510570873

namespace A288534

/-- `A007588(n)+A008486(n)+n` -/
def P14280700871510570873.Spec : Prop :=
  ∀ n, P14280700871510570873.a n = A288534 n

end A288534

/-! ## A288534.P12576997289028739756

`A004273(n)+A033562(n)+n`
-/

namespace A288534.P12576997289028739756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A033562 n + (n : ℤ))

end

end A288534.P12576997289028739756

namespace A288534

/-- `A004273(n)+A033562(n)+n` -/
def P12576997289028739756.Spec : Prop :=
  ∀ n, P12576997289028739756.a n = A288534 n

end A288534

/-! ## A288534.P10536821228066552457

`A008486(n)+n*A001105(n)`
-/

namespace A288534.P10536821228066552457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (n : ℤ) * A001105 n

end

end A288534.P10536821228066552457

namespace A288534

/-- `A008486(n)+n*A001105(n)` -/
def P10536821228066552457.Spec : Prop :=
  ∀ n, P10536821228066552457.a n = A288534 n

end A288534

/-! ## A288534.P3582839306612459489

`A005893(n)*A028310(n)+n`
-/

namespace A288534.P3582839306612459489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A028310 n + (n : ℤ)

end

end A288534.P3582839306612459489

namespace A288534

/-- `A005893(n)*A028310(n)+n` -/
def P3582839306612459489.Spec : Prop :=
  ∀ n, P3582839306612459489.a n = A288534 n

end A288534

/-! ## A288534.P9104155058087043546

`A008574(n)+n*A056220(n)`
-/

namespace A288534.P9104155058087043546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ) * A056220 n

end

end A288534.P9104155058087043546

namespace A288534

/-- `A008574(n)+n*A056220(n)` -/
def P9104155058087043546.Spec : Prop :=
  ∀ n, P9104155058087043546.a n = A288534 n

end A288534

/-!
# A288536: The eventual period of the RATS sequence in base n starting from 1; 0 is for infinity.

The programs for A288536, there is no canonical definition to state claims against.
-/

/-! ## A288536.P6097797694581530388

`A288537(∑[n]+2)`
-/

namespace A288536.P6097797694581530388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A288536.P6097797694581530388

/-!
# A288537: Array A(b,n) by upward antidiagonals (b>1, n>0): the eventual period of the RATS sequence in base b starting from n; 0 is for infinity.

The programs for A288537, there is no canonical definition to state claims against.
-/

/-! ## A288537.P7427472479235890767

`A329508(A180663(n)+4)`
-/

namespace A288537.P7427472479235890767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (A180663 n + 4).toNat

end

end A288537.P7427472479235890767

/-! ## A288537.P11094137613345268112

`A259177(lcm(3, A103217(n)))`
-/

namespace A288537.P11094137613345268112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259177 (Int.lcm 3 (A103217 n))

end

end A288537.P11094137613345268112

/-! ## A288537.P10525447363563063647

`A000005(A260732(A140303(n)))`
-/

namespace A288537.P10525447363563063647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A260732 (A140303 n).toNat).toNat

end

end A288537.P10525447363563063647

/-! ## A288537.P2417131717896009845

`dr(A302884(A000045(A099375(n))))`
-/

namespace A288537.P2417131717896009845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A302884 (A000045 (A099375 n).toNat).toNat)

end

end A288537.P2417131717896009845

/-! ## A288537.P11481423571018881024

`A045796(A130322(n))`
-/

namespace A288537.P11481423571018881024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045796 (A130322 n).toNat

end

end A288537.P11481423571018881024

/-!
# A288539: Number of Dyck paths of semilength n such that at least one positive level has no peaks.

The programs for A288539, there is no canonical definition to state claims against.
-/

/-! ## A288539.P5674300301688312339

`A000108(n)-A287901(n)%A001453(n+2)`
-/

namespace A288539.P5674300301688312339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - Int.tmod (A287901 n) (A001453 (n + 2))

end

end A288539.P5674300301688312339

/-! ## A288539.P17194691092936195059

`A288387(∑[n])`
-/

namespace A288539.P17194691092936195059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288539.P17194691092936195059

/-! ## A288539.P12697468554263512743

`or(A000007(n), A288387(A000217(n)))`
-/

namespace A288539.P12697468554263512743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A288387 (A000217 n).toNat)

end

end A288539.P12697468554263512743

/-! ## A288539.P10725699527831081806

`A288387(A000217(n))%A000984(n+1)`
-/

namespace A288539.P10725699527831081806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288387 (A000217 n).toNat) (A000984 (n + 1))

end

end A288539.P10725699527831081806

/-! ## A288539.P2556329733980788328

`A288387(A000217(n))+A126120(A005408(n))`
-/

namespace A288539.P2556329733980788328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 n).toNat + A126120 (A005408 n).toNat

end

end A288539.P2556329733980788328

/-! ## A288539.P16695464809156016272

`A288387(A000217(n))/A007318(A161680(n))`
-/

namespace A288539.P16695464809156016272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288387 (A000217 n).toNat : ℚ) / (A007318 (A161680 n).toNat : ℚ)

end

end A288539.P16695464809156016272

/-! ## A288539.P11993336319260496454

`A288387(A000217(n))*A317669(A083891(n+1))`
-/

namespace A288539.P11993336319260496454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 n).toNat * A317669 (A083891 (n + 1)).toNat

end

end A288539.P11993336319260496454

/-! ## A288539.P13209905029330801835

`A288387(A000217(n+2)-2)+A288387(A000217(n))`
-/

namespace A288539.P13209905029330801835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 2) - 2).toNat + A288387 (A000217 n).toNat

end

end A288539.P13209905029330801835

/-! ## A288539.P15281875703097607428

`A007318(A161680(2*n))*A288387(A161680(n+1))`
-/

namespace A288539.P15281875703097607428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161680 (2 * n)).toNat * A288387 (A161680 (n + 1)).toNat

end

end A288539.P15281875703097607428

/-!
# A288540: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals one.

The programs for A288540, there is no canonical definition to state claims against.
-/

/-! ## A288540.P16753728698701095227

`A287901(n+1)-A288678(n+1)`
-/

namespace A288540.P16753728698701095227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287901 (n + 1) - A288678 (n + 1)

end

end A288540.P16753728698701095227

/-! ## A288540.P18106817836128152037

`A288387(∑[n+1]+1)`
-/

namespace A288540.P18106817836128152037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288540.P18106817836128152037

/-! ## A288540.P8021591894072307544

`gcd(A000038(n), A288387(A000124(n+1)))`
-/

namespace A288540.P8021591894072307544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288387 (A000124 (n + 1)).toNat)

end

end A288540.P8021591894072307544

/-! ## A288540.P12972469439964203235

`A288387(A000124(n+1))%A002457(n+2)`
-/

namespace A288540.P12972469439964203235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288387 (A000124 (n + 1)).toNat) (A002457 (n + 2))

end

end A288540.P12972469439964203235

/-! ## A288540.P8585616414731429847

`A001222(A020483(n))*A288387(A000124(n+1))`
-/

namespace A288540.P8585616414731429847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020483 n).toNat * A288387 (A000124 (n + 1)).toNat

end

end A288540.P8585616414731429847

/-! ## A288540.P14708340164412482797

`A001222(A045370(n+1))*A288387(A000124(n+1))`
-/

namespace A288540.P14708340164412482797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045370 (n + 1)).toNat * A288387 (A000124 (n + 1)).toNat

end

end A288540.P14708340164412482797

/-!
# A288541: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals two.

The programs for A288541, there is no canonical definition to state claims against.
-/

/-! ## A288541.P17463615373133387367

`A288678(n+2)-A288679(n+2)`
-/

namespace A288541.P17463615373133387367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288678 (n + 2) - A288679 (n + 2)

end

end A288541.P17463615373133387367

/-! ## A288541.P3976736425365410313

`A288387(∑[n+2]+3)`
-/

namespace A288541.P3976736425365410313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A288541.P3976736425365410313

/-! ## A288541.P14688018935146925340

`A288387(A340266(n+1))+A000007(n)`
-/

namespace A288541.P14688018935146925340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A340266 (n + 1)).toNat + A000007 n

end

end A288541.P14688018935146925340

/-! ## A288541.P16108638676173558461

`A288387(A133263(n+2))%A240530(n)`
-/

namespace A288541.P16108638676173558461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288387 (A133263 (n + 2)).toNat) (A240530 n)

end

end A288541.P16108638676173558461

/-! ## A288541.P9958086056488376466

`or(A000007(n), A288387(A055998(n)+5))`
-/

namespace A288541.P9958086056488376466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A288387 (A055998 n + 5).toNat)

end

end A288541.P9958086056488376466

/-! ## A288541.P17218572894394576756

`abs(A087960(n))*A288387(A055998(n)+5)`
-/

namespace A288541.P17218572894394576756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087960 n| * A288387 (A055998 n + 5).toNat

end

end A288541.P17218572894394576756

/-! ## A288541.P600291952288560606

`A288387(A340266(n+1))+char[A204692(n+1)]`
-/

namespace A288541.P600291952288560606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204692 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A340266 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288541.P600291952288560606

/-! ## A288541.P18446243719926670256

`A288387(A340266(n+1))+A204671(A008458(n))`
-/

namespace A288541.P18446243719926670256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A340266 (n + 1)).toNat + A204671 (A008458 n).toNat

end

end A288541.P18446243719926670256

/-! ## A288541.P1396921544738925619

`A007318(A000096(n))*A288387(A055998(n)+5)`
-/

namespace A288541.P1396921544738925619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A288387 (A055998 n + 5).toNat

end

end A288541.P1396921544738925619

/-!
# A288542: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals three.

The programs for A288542, there is no canonical definition to state claims against.
-/

/-! ## A288542.P7217267977127275557

`A288679(n+3)-A288680(n+3)`
-/

namespace A288542.P7217267977127275557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288679 (n + 3) - A288680 (n + 3)

end

end A288542.P7217267977127275557

/-! ## A288542.P8400852347342638043

`A288387(A167614(n+2))`
-/

namespace A288542.P8400852347342638043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 2)).toNat

end

end A288542.P8400852347342638043

/-! ## A288542.P14897377844630049196

`A288387(A052905(n)+8)`
-/

namespace A288542.P14897377844630049196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A052905 n + 8).toNat

end

end A288542.P14897377844630049196

/-! ## A288542.P6591693465684818938

`A288387(eq[3, A002262(n)])`
-/

namespace A288542.P6591693465684818938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288542.P6591693465684818938

/-! ## A288542.P11929110343814693236

`A288387(A340266(n+2)+1)`
-/

namespace A288542.P11929110343814693236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A340266 (n + 2) + 1).toNat

end

end A288542.P11929110343814693236

/-! ## A288542.P12463735174199571763

`A288387(A000124(n+3)+2)`
-/

namespace A288542.P12463735174199571763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 3) + 2).toNat

end

end A288542.P12463735174199571763

/-! ## A288542.P12605521971954918979

`A288387(A055998(n+1)+6)`
-/

namespace A288542.P12605521971954918979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A055998 (n + 1) + 6).toNat

end

end A288542.P12605521971954918979

/-! ## A288542.P12060336071453316954

`A288387(Δ[A005286(n+1)]-n)`
-/

namespace A288542.P12060336071453316954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A288542.P12060336071453316954

/-! ## A288542.P6913111467143375955

`A288387(eq[2, A002260(n+1)-2])`
-/

namespace A288542.P6913111467143375955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288542.P6913111467143375955

/-! ## A288542.P5577936547657321719

`A288387(eq[2, A002260(n+1)/2])`
-/

namespace A288542.P5577936547657321719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A288542.P5577936547657321719

/-! ## A288542.P2637785094464830847

`A288387(A000217(n+4)-(n+1))`
-/

namespace A288542.P2637785094464830847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A288542.P2637785094464830847

/-! ## A288542.P9114356344157154021

`A288387(A167487(n)+A005408(n))`
-/

namespace A288542.P9114356344157154021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167487 n + A005408 n).toNat

end

end A288542.P9114356344157154021

/-!
# A288543: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals four.

The programs for A288543, there is no canonical definition to state claims against.
-/

/-! ## A288543.P3854437934099285701

`A288387(A145018(n+5))`
-/

namespace A288543.P3854437934099285701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A145018 (n + 5)).toNat

end

end A288543.P3854437934099285701

/-! ## A288543.P4485729124113326454

`A288387(eq[4, A002262(n)])`
-/

namespace A288543.P4485729124113326454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288543.P4485729124113326454

/-! ## A288543.P16097774976518543199

`A288387(A167614(n+3)+1)`
-/

namespace A288543.P16097774976518543199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 3) + 1).toNat

end

end A288543.P16097774976518543199

/-! ## A288543.P9038289661342985848

`A288387(A000124(n+4)+3)`
-/

namespace A288543.P9038289661342985848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 4) + 3).toNat

end

end A288543.P9038289661342985848

/-! ## A288543.P2357497607463073159

`A288387(A000217(n+4)+4)`
-/

namespace A288543.P2357497607463073159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 4) + 4).toNat

end

end A288543.P2357497607463073159

/-! ## A288543.P16156015804376726015

`A288387(A055998(n+2)+7)`
-/

namespace A288543.P16156015804376726015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A055998 (n + 2) + 7).toNat

end

end A288543.P16156015804376726015

/-! ## A288543.P13995273387830472992

`A288387(A000982(n+6)-A032766(n+3))`
-/

namespace A288543.P13995273387830472992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000982 (n + 6) - A032766 (n + 3)).toNat

end

end A288543.P13995273387830472992

/-!
# A288544: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals five.

The programs for A288544, there is no canonical definition to state claims against.
-/

/-! ## A288544.P6865829221689002989

`A288387(A167499(n+4))`
-/

namespace A288544.P6865829221689002989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167499 (n + 4)).toNat

end

end A288544.P6865829221689002989

/-! ## A288544.P14452379963455012946

`A288387(A167614(n+4)+2)`
-/

namespace A288544.P14452379963455012946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 4) + 2).toNat

end

end A288544.P14452379963455012946

/-! ## A288544.P10662208572050111734

`A288387(A000124(n+5)+4)`
-/

namespace A288544.P10662208572050111734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 5) + 4).toNat

end

end A288544.P10662208572050111734

/-! ## A288544.P11082387082759938580

`A288387(A000217(n+5)+5)`
-/

namespace A288544.P11082387082759938580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 5) + 5).toNat

end

end A288544.P11082387082759938580

/-! ## A288544.P8916652540690592

`A288387(A032766(n+8)+A000982(n+4))`
-/

namespace A288544.P8916652540690592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A032766 (n + 8) + A000982 (n + 4)).toNat

end

end A288544.P8916652540690592

/-!
# A288545: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals six.

The programs for A288545, there is no canonical definition to state claims against.
-/

/-! ## A288545.P15476116257883914987

`A288387(A167499(n+5)+1)`
-/

namespace A288545.P15476116257883914987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167499 (n + 5) + 1).toNat

end

end A288545.P15476116257883914987

/-! ## A288545.P2949436645060833040

`A288387(A167614(n+5)+3)`
-/

namespace A288545.P2949436645060833040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 5) + 3).toNat

end

end A288545.P2949436645060833040

/-! ## A288545.P3643691364235506007

`A288387(A000124(n+6)+5)`
-/

namespace A288545.P3643691364235506007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 6) + 5).toNat

end

end A288545.P3643691364235506007

/-! ## A288545.P6255300821612254696

`A288387(A000217(n+6)+6)`
-/

namespace A288545.P6255300821612254696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 6) + 6).toNat

end

end A288545.P6255300821612254696

/-! ## A288545.P1823081680371119745

`A288387(A161680(n+8)-(n+1))`
-/

namespace A288545.P1823081680371119745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A161680 (n + 8) - (n + 1 : ℤ)).toNat

end

end A288545.P1823081680371119745

/-!
# A288546: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals seven.

The programs for A288546, there is no canonical definition to state claims against.
-/

/-! ## A288546.P13382244204483074383

`A288387(A167499(n+6)+2)`
-/

namespace A288546.P13382244204483074383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167499 (n + 6) + 2).toNat

end

end A288546.P13382244204483074383

/-! ## A288546.P14607255833433753638

`A288387(A167614(n+6)+4)`
-/

namespace A288546.P14607255833433753638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 6) + 4).toNat

end

end A288546.P14607255833433753638

/-! ## A288546.P4173058285135085669

`A288387(A000124(n+7)+6)`
-/

namespace A288546.P4173058285135085669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 7) + 6).toNat

end

end A288546.P4173058285135085669

/-! ## A288546.P2468917720412273262

`A288387(A000217(n+7)+7)`
-/

namespace A288546.P2468917720412273262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 7) + 7).toNat

end

end A288546.P2468917720412273262

/-! ## A288546.P15407636969065899706

`A288387(A161680(n+9)-(n+1))`
-/

namespace A288546.P15407636969065899706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A161680 (n + 9) - (n + 1 : ℤ)).toNat

end

end A288546.P15407636969065899706

/-! ## A288546.P15662464336588350720

`A288387(A000982(n+9)-A032766(n+4))`
-/

namespace A288546.P15662464336588350720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000982 (n + 9) - A032766 (n + 4)).toNat

end

end A288546.P15662464336588350720

/-!
# A288547: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals eight.

The programs for A288547, there is no canonical definition to state claims against.
-/

/-! ## A288547.P13374301125861858577

`A288387(A167499(n+7)+3)`
-/

namespace A288547.P13374301125861858577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167499 (n + 7) + 3).toNat

end

end A288547.P13374301125861858577

/-! ## A288547.P5620333144293771726

`A288387(A167614(n+7)+5)`
-/

namespace A288547.P5620333144293771726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 7) + 5).toNat

end

end A288547.P5620333144293771726

/-! ## A288547.P9853314339252563644

`A288387(A000217(n+8)+8)`
-/

namespace A288547.P9853314339252563644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 8) + 8).toNat

end

end A288547.P9853314339252563644

/-! ## A288547.P9758519528948125549

`A288387(A000124(n+9)-(n+2))`
-/

namespace A288547.P9758519528948125549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A288547.P9758519528948125549

/-! ## A288547.P12617794614273859583

`A288387(A155212(n+6)-(2*n+3))`
-/

namespace A288547.P12617794614273859583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A155212 (n + 6) - (2 * n + 3 : ℤ)).toNat

end

end A288547.P12617794614273859583

/-!
# A288548: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals nine.

The programs for A288548, there is no canonical definition to state claims against.
-/

/-! ## A288548.P17688111461550622445

`A288387(A167499(n+8)+4)`
-/

namespace A288548.P17688111461550622445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167499 (n + 8) + 4).toNat

end

end A288548.P17688111461550622445

/-! ## A288548.P2019952073497044311

`A288387(A167614(n+8)+6)`
-/

namespace A288548.P2019952073497044311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 8) + 6).toNat

end

end A288548.P2019952073497044311

/-! ## A288548.P4999879329804960970

`A288387(A000096(n+8)+10)`
-/

namespace A288548.P4999879329804960970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000096 (n + 8) + 10).toNat

end

end A288548.P4999879329804960970

/-! ## A288548.P6470201108574859006

`A288387(A000217(n+9)+9)`
-/

namespace A288548.P6470201108574859006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 9) + 9).toNat

end

end A288548.P6470201108574859006

/-! ## A288548.P6977804839232655603

`A288387(A027379(n+7)+12)`
-/

namespace A288548.P6977804839232655603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A027379 (n + 7) + 12).toNat

end

end A288548.P6977804839232655603

/-!
# A288549: Number of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals ten.

The programs for A288549, there is no canonical definition to state claims against.
-/

/-! ## A288549.P10456735077838728406

`A288387(eq[10, A002262(n)])`
-/

namespace A288549.P10456735077838728406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288549.P10456735077838728406

/-! ## A288549.P15528519070123870198

`A288387(A167614(n+9)+7)`
-/

namespace A288549.P15528519070123870198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A167614 (n + 9) + 7).toNat

end

end A288549.P15528519070123870198

/-! ## A288549.P3718283428771655626

`A288387(A000217(n+10)+10)`
-/

namespace A288549.P3718283428771655626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A000217 (n + 10) + 10).toNat

end

end A288549.P3718283428771655626

/-! ## A288549.P6056720332983373415

`A288387(A055998(n+8)+13)`
-/

namespace A288549.P6056720332983373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A055998 (n + 8) + 13).toNat

end

end A288549.P6056720332983373415

/-! ## A288549.P4686638370275292191

`A288387(eq[11, A002260(n+1)])`
-/

namespace A288549.P4686638370275292191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288549.P4686638370275292191

/-!
# A288550: Number of strings of n digits from 1...9 such that a signed summation of the digits exists making the sum = 0.

The programs for A288550, there is no canonical definition to state claims against.
-/

/-! ## A288550.P370982198962376683

`xor(∑[n], A099477(A145162(n)))`
-/

namespace A288550.P370982198962376683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A099477 (A145162 n).toNat)

end

end A288550.P370982198962376683

/-!
# A288551: 0-limiting word of the mapping 00->0101, 1->011, starting with 00.

The programs for A288551, there is no canonical definition to state claims against.
-/

/-! ## A288551.P9433001479964578549

`char[A288553(n+1)-1]`
-/

namespace A288551.P9433001479964578549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288553 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288551.P9433001479964578549

/-! ## A288551.P3306901410185777782

`floor(log(Δ[A288474(n+1)]))`
-/

namespace A288551.P3306901410185777782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A288551.P3306901410185777782

/-! ## A288551.P15562218171006482063

`A049993(Δ[A288474(n+1)])`
-/

namespace A288551.P15562218171006482063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (f1 (n + 1) - f1 n).toNat

end

end A288551.P15562218171006482063

/-! ## A288551.P12542807125997889398

`A065890(Δ[A288474(n+1)])`
-/

namespace A288551.P12542807125997889398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (f1 (n + 1) - f1 n).toNat

end

end A288551.P12542807125997889398

/-! ## A288551.P13069687453024144786

`A129363(Δ[A288474(n+1)])`
-/

namespace A288551.P13069687453024144786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (f1 (n + 1) - f1 n).toNat

end

end A288551.P13069687453024144786

/-! ## A288551.P11358609961482554072

`A131841(Δ[A288474(n+1)])`
-/

namespace A288551.P11358609961482554072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131841 (f1 (n + 1) - f1 n).toNat

end

end A288551.P11358609961482554072

/-! ## A288551.P6208311724869229216

`A105565(Δ[A288474(n+1)]²)`
-/

namespace A288551.P6208311724869229216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105565 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A288551.P6208311724869229216

/-! ## A288551.P10434949743891882676

`A035211(Δ[A288474(n+1)]+1)`
-/

namespace A288551.P10434949743891882676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (f1 (n + 1) - f1 n + 1).toNat

end

end A288551.P10434949743891882676

/-! ## A288551.P5309249449512929998

`A039899(Δ[A288474(n+1)]-1)`
-/

namespace A288551.P5309249449512929998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (f1 (n + 1) - f1 n - 1).toNat

end

end A288551.P5309249449512929998

/-! ## A288551.P15516567871444199752

`A070929(Δ[A288474(n+1)]-1)`
-/

namespace A288551.P15516567871444199752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070929 (f1 (n + 1) - f1 n - 1).toNat

end

end A288551.P15516567871444199752

/-!
# A288552: Positions of 0 in A288551; complement of A288553.

The programs for A288552, there is no canonical definition to state claims against.
-/

/-! ## A288552.P11125345261888235135

`record[(n+1)/(A288551(n+1)+1)]`
-/

namespace A288552.P11125345261888235135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A288551 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P11125345261888235135

/-! ## A288552.P12594569445993896182

`record[n+1-A000124(n)*A288551(n+1)]`
-/

namespace A288552.P12594569445993896182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000124 n * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P12594569445993896182

/-! ## A288552.P606307984335315956

`record[n+1-A004457(n)*A288551(n+1)]`
-/

namespace A288552.P606307984335315956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004457 n * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P606307984335315956

/-! ## A288552.P15404854561401960467

`record[n+1-A005843(n)*A288551(n+1)]`
-/

namespace A288552.P15404854561401960467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 n * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P15404854561401960467

/-! ## A288552.P12837676095610143609

`record[n+1-A127928(n+1)*A288551(n+1)]`
-/

namespace A288552.P12837676095610143609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A127928 (n + 1) * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P12837676095610143609

/-! ## A288552.P10878420783092282851

`record[n+1-A153481(n+1)*A288551(n+1)]`
-/

namespace A288552.P10878420783092282851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A153481 (n + 1) * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P10878420783092282851

/-! ## A288552.P7549946928821085753

`record[(n+1)*A288473(A288474(n+1)+3)]`
-/

namespace A288552.P7549946928821085753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288473 (A288474 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P7549946928821085753

/-! ## A288552.P18240837048108464759

`record[n+1-A270018(n)*A288551(n+1)]`
-/

namespace A288552.P18240837048108464759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A270018 n * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P18240837048108464759

/-! ## A288552.P12547529105890762482

`record[n+1-A111314(n)*A288551(n+1)]`
-/

namespace A288552.P12547529105890762482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A111314 n * A288551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288552.P12547529105890762482

/-!
# A288553: Positions of 1 in A288551; complement of A288552.

The programs for A288553, there is no canonical definition to state claims against.
-/

/-! ## A288553.P172311385054779075

`comp[A288552(n+1)-1]+1`
-/

namespace A288553.P172311385054779075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288552 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288553.P172311385054779075

/-! ## A288553.P2323579657010863635

`filter[n+1, A288551(#)]`
-/

namespace A288553.P2323579657010863635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288551 (f1 j) = 1) n)

end

end A288553.P2323579657010863635

/-! ## A288553.P17021184101342165669

`record[(n+3)*A288551(n+3)]`
-/

namespace A288553.P17021184101342165669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288551 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288553.P17021184101342165669

/-! ## A288553.P6655038411687290005

`lt[1, (n*A288551(n+1))²]+1`
-/

namespace A288553.P6655038411687290005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A288551 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288553.P6655038411687290005

/-! ## A288553.P14843440336974533655

`lt[0, A288551(A065033(2*n))]`
-/

namespace A288553.P14843440336974533655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288553.P14843440336974533655

/-! ## A288553.P6941389488737253917

`eq[0, (A288551(A065033(2*n))-1)*A008458(n)]`
-/

namespace A288553.P6941389488737253917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288551 (A065033 (2 * n)).toNat - 1) * A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288553.P6941389488737253917

/-! ## A288553.P8637015464888113918

`eq[1, A288551(A233583(n+1))]`
-/

namespace A288553.P8637015464888113918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288553.P8637015464888113918

/-! ## A288553.P157835533455481136

`eq[1, A288551(A137735(n²))]`
-/

namespace A288553.P157835533455481136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288551 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288553.P157835533455481136

/-!
# A288554: Number of arrangements of n circles in the affine plane with the property that every circle intersects all the other circles.

The programs for A288554, there is no canonical definition to state claims against.
-/

/-! ## A288554.P3550600043924442433

`A288562(n)-A273922(n+1)`
-/

namespace A288554.P3550600043924442433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288562 n - A273922 (n + 1)

end

end A288554.P3550600043924442433

/-!
# A288555: Number of one-sided arrangements of n circles in the affine plane.

The programs for A288555, there is no canonical definition to state claims against.
-/

/-! ## A288555.P10347815652884446526

`a(n-1)²+4` with `a(0)=1, a(1)=1, a(2)=3, a(3)=14`
-/

namespace A288555.P10347815652884446526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 14] fun n a =>
  a (n - 1) ^ 2 + 4

end

end A288555.P10347815652884446526

/-!
# A288556: Number of connected one-sided arrangements of n circles in the affine plane, in the sense that the union of the solid circles is a connected set.

The programs for A288556, there is no canonical definition to state claims against.
-/

/-! ## A288556.P11143700205516819713

`floor(∏[(n+1)!^(n/(n+3))])`
-/

namespace A288556.P11143700205516819713
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) ^ ((n : ℚ) / (n + 3 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A288556.P11143700205516819713

/-!
# A288557: Number of connected one-sided arrangements of n circles in the affine plane, in the sense that the union of the boundaries of the circles is a connected set.

The programs for A288557, there is no canonical definition to state claims against.
-/

/-! ## A288557.P1550562427673059985

`C(n, 2)!%581`
-/

namespace A288557.P1550562427673059985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n 2) % 581

end

end A288557.P1550562427673059985

/-!
# A288559: Number of arrangements of n pseudo-circles in the affine plane.

The programs for A288559, there is no canonical definition to state claims against.
-/

/-! ## A288559.P18289439794646011515

`A250001(n)+char[5]*A000125(n)`
-/

namespace A288559.P18289439794646011515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250001 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A000125 n

end

end A288559.P18289439794646011515

/-! ## A288559.P2303737865409818921

`A250001(n)+A015910(A036720(n))`
-/

namespace A288559.P2303737865409818921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250001 n + A015910 (A036720 n).toNat

end

end A288559.P2303737865409818921

/-!
# A288560: Number of connected arrangements of n pseudo-circles in the affine plane, in the sense that the union of the solid pseudo-circles is a connected set.

The programs for A288560, there is no canonical definition to state claims against.
-/

/-! ## A288560.P6380034354452353977

`A275923(n)+A015910(A036720(n))`
-/

namespace A288560.P6380034354452353977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275923 n + A015910 (A036720 n).toNat

end

end A288560.P6380034354452353977

/-!
# A288561: Number of connected arrangements of n pseudo-circles in the affine plane, in the sense that the union of the boundaries of the pseudo-circles is a connected set.

The programs for A288561, there is no canonical definition to state claims against.
-/

/-! ## A288561.P10689100577145727800

`A258177(n)+A084938(A000698(n))`
-/

namespace A288561.P10689100577145727800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258177 n + A084938 (A000698 n).toNat

end

end A288561.P10689100577145727800

/-!
# A288562: Number of arrangements of n pseudo-circles in the affine plane with the property that every pseudo-circle intersects all the other circles.

The programs for A288562, there is no canonical definition to state claims against.
-/

/-! ## A288562.P5624110838081691568

`A288554(n)+(n+1)%∏{p}[n+1, lcm(#, n+1)]`
-/

namespace A288562.P5624110838081691568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288554 n + (((n + 1) % (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1)) : ℕ) : ℤ)

end

end A288562.P5624110838081691568

/-! ## A288562.P13813294497070922512

`A288554(n)+A108613(n)`
-/

namespace A288562.P13813294497070922512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288554 n + A108613 n

end

end A288562.P13813294497070922512

/-!
# A288563: Number of one-sided arrangements of n pseudo-circles in the affine plane.

The programs for A288563, there is no canonical definition to state claims against.
-/

/-! ## A288563.P5001160401129422468

`A271375(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A288563.P5001160401129422468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A271375 (a (n - 1)).toNat

end

end A288563.P5001160401129422468

/-!
# A288566: Partial sums of A087207.

The programs for A288566, the canonical program `A288566.P93477700096519531` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288566 has offset 1).

The definition of A288566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288566.P93477700096519531

`∑[A087207(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A288566

/-- `∑[A087207(n+1)]` -/
def P93477700096519531.Spec : Prop :=
  ∀ n, P93477700096519531.a n = A288566 (n + 1)

theorem P93477700096519531.correct : P93477700096519531.Spec := by
  intro n
  simp only [A288566, Nat.add_sub_cancel]

end A288566

/-! ## A288566.P17407149622203451138

`∑[A048675(∏{p}[n+1, #])]`
-/

namespace A288566.P17407149622203451138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P17407149622203451138

namespace A288566

/-- `∑[A048675(∏{p}[n+1, #])]` -/
def P17407149622203451138.Spec : Prop :=
  ∀ n, P17407149622203451138.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P14588357426587482832

`∑[A248663(∏{p}[n+1, #])+1]-(n+1)`
-/

namespace A288566.P14588357426587482832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A288566.P14588357426587482832

namespace A288566

/-- `∑[A248663(∏{p}[n+1, #])+1]-(n+1)` -/
def P14588357426587482832.Spec : Prop :=
  ∀ n, P14588357426587482832.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P5185642178711436916

`∑[A048675(A007947(n+1))]`
-/

namespace A288566.P5185642178711436916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P5185642178711436916

namespace A288566

/-- `∑[A048675(A007947(n+1))]` -/
def P5185642178711436916.Spec : Prop :=
  ∀ n, P5185642178711436916.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P11654036944440705210

`∑[A331740(A007948(n+1))]`
-/

namespace A288566.P11654036944440705210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A007948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P11654036944440705210

namespace A288566

/-- `∑[A331740(A007948(n+1))]` -/
def P11654036944440705210.Spec : Prop :=
  ∀ n, P11654036944440705210.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P18211443606502666012

`∑[A331740(A066990(n+1))]`
-/

namespace A288566.P18211443606502666012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A066990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P18211443606502666012

namespace A288566

/-- `∑[A331740(A066990(n+1))]` -/
def P18211443606502666012.Spec : Prop :=
  ∀ n, P18211443606502666012.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P2972639840254252943

`∑[A248663(A331737(n+1))]`
-/

namespace A288566.P2972639840254252943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A331737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P2972639840254252943

namespace A288566

/-- `∑[A248663(A331737(n+1))]` -/
def P2972639840254252943.Spec : Prop :=
  ∀ n, P2972639840254252943.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P7171282825544056671

`∑[∑{p}[n+1, A048656(#)]]/2`
-/

namespace A288566.P7171282825544056671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A048656 p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A288566.P7171282825544056671

namespace A288566

/-- `∑[∑{p}[n+1, A048656(#)]]/2` -/
def P7171282825544056671.Spec : Prop :=
  ∀ n, P7171282825544056671.a n = (A288566 (n + 1) : ℚ)

end A288566

/-! ## A288566.P9839402381004851360

`∑[A345298(n+1)/2]`
-/

namespace A288566.P9839402381004851360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345298 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P9839402381004851360

namespace A288566

/-- `∑[A345298(n+1)/2]` -/
def P9839402381004851360.Spec : Prop :=
  ∀ n, P9839402381004851360.a n = (A288566 (n + 1) : ℚ)

end A288566

/-! ## A288566.P7996862822992120333

`∑[∑{p}[A129202(n), A122111(#)]]/2`
-/

namespace A288566.P7996862822992120333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A122111 p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A288566.P7996862822992120333

namespace A288566

/-- `∑[∑{p}[A129202(n), A122111(#)]]/2` -/
def P7996862822992120333.Spec : Prop :=
  ∀ n, P7996862822992120333.a n = (A288566 (n + 1) : ℚ)

end A288566

/-! ## A288566.P1361878412927254823

`∑[A248663(A302138(n+1))]`
-/

namespace A288566.P1361878412927254823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A302138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P1361878412927254823

namespace A288566

/-- `∑[A248663(A302138(n+1))]` -/
def P1361878412927254823.Spec : Prop :=
  ∀ n, P1361878412927254823.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P12118677607292991784

`∑[A285330(A007947(∑[2*n+1]))]`
-/

namespace A288566.P12118677607292991784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (A007947 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P12118677607292991784

namespace A288566

/-- `∑[A285330(A007947(∑[2*n+1]))]` -/
def P12118677607292991784.Spec : Prop :=
  ∀ n, P12118677607292991784.a n = A288566 (n + 1)

end A288566

/-! ## A288566.P731908757390469712

`∑[A334109(A078615(n+1))]`
-/

namespace A288566.P731908757390469712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A078615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P731908757390469712

namespace A288566

/-- `∑[A334109(A078615(n+1))]` -/
def P731908757390469712.Spec : Prop :=
  ∀ n, P731908757390469712.a n = A288566 (n + 1)

end A288566

/-!
# A288567: Number of connected arrangements of n circles in the affine plane, in the sense that the union of the boundaries of the circles is a connected set and every circle intersects all the other circles.

The programs for A288567, there is no canonical definition to state claims against.
-/

/-! ## A288567.P13615161674832240791

`A053199(2*C(n, 3))`
-/

namespace A288567.P13615161674832240791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053199 (2 * Nat.choose n 3)

end

end A288567.P13615161674832240791

/-!
# A288568: Number of non-isomorphic connected arrangements of n pseudo-circles on a sphere, in the sense that the union of the pseudo-circles is a connected set, reduced for mirror symmetry.

The programs for A288568, there is no canonical definition to state claims against.
-/

/-! ## A288568.P16305115869675649793

`A193968(A291484(n))`
-/

namespace A288568.P16305115869675649793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193968 (A291484 n).toNat

end

end A288568.P16305115869675649793

/-! ## A288568.P15697063865607205760

`A193967(A229665(n+1))`
-/

namespace A288568.P15697063865607205760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193967 (A229665 (n + 1)).toNat

end

end A288568.P15697063865607205760

/-!
# A288569: Start with n and repeatedly apply the map x -> A087207(x) until we reach 0; a(n) is the number of steps needed, or -1 if 0 is never reached.

The programs for A288569, there is no canonical definition to state claims against.
-/

/-! ## A288569.P4441553223999866480

`A080791(2*A285331(n+1))+1`
-/

namespace A288569.P4441553223999866480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A285331 (n + 1)).toNat + 1

end

end A288569.P4441553223999866480

/-! ## A288569.P17263323552338305319

`A080791(A285331(n+1))+A000122(n²)`
-/

namespace A288569.P17263323552338305319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A285331 (n + 1)).toNat + A000122 (n ^ 2)

end

end A288569.P17263323552338305319

/-! ## A288569.P6943602175864104071

`A080791(A285331(n+1))+A006530(∏{digits}[n, 2^#])`
-/

namespace A288569.P6943602175864104071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A285331 (n + 1)).toNat + A006530 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod

end

end A288569.P6943602175864104071

/-! ## A288569.P4821164000203294157

`A080791(A285331(n+1))+A020639(A001316(n))`
-/

namespace A288569.P4821164000203294157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A285331 (n + 1)).toNat + A020639 (A001316 n).toNat

end

end A288569.P4821164000203294157

/-!
# A288570: Partial sums of A019565.

The programs for A288570, there is no canonical definition to state claims against.
-/

/-! ## A288570.P6744586227292170123

`∑[A019565(n)]`
-/

namespace A288570.P6744586227292170123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P6744586227292170123

/-! ## A288570.P10699091016586191107

`∑[sqrt(A334110(n))]`
-/

namespace A288570.P10699091016586191107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P10699091016586191107

/-! ## A288570.P7973846981843891785

`∑[A339809(n)+1]`
-/

namespace A288570.P7973846981843891785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P7973846981843891785

/-! ## A288570.P12266746345426589475

`∑[A303760(A303768(n))]`
-/

namespace A288570.P12266746345426589475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P12266746345426589475

/-! ## A288570.P12235341547318156189

`∑[A284003(A003188(n))]`
-/

namespace A288570.P12235341547318156189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P12235341547318156189

/-! ## A288570.P5050261569490462745

`∑[A302033(A006068(n))]`
-/

namespace A288570.P5050261569490462745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P5050261569490462745

/-! ## A288570.P17836136713902802093

`A019565(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A288570.P17836136713902802093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019565 (A004526 (n + n)).toNat + a (n - 1)

end

end A288570.P17836136713902802093

/-! ## A288570.P15676920072138075551

`∑[A304087(A304084(n))]`
-/

namespace A288570.P15676920072138075551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P15676920072138075551

/-! ## A288570.P7563809100034580844

`∑[A303770(A303774(n))]`
-/

namespace A288570.P7563809100034580844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P7563809100034580844

/-! ## A288570.P6418046468869347911

`∑[A277006(A048680(n))]`
-/

namespace A288570.P6418046468869347911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P6418046468869347911

/-! ## A288570.P5156058848958245208

`∑[A304537(A304534(n))]`
-/

namespace A288570.P5156058848958245208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P5156058848958245208

/-! ## A288570.P5300514822599231793

`∑[A277330(A277711(n))]`
-/

namespace A288570.P5300514822599231793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A277711 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P5300514822599231793

/-! ## A288570.P18443421052937084946

`∑[A332462(A005940(n+1))]`
-/

namespace A288570.P18443421052937084946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P18443421052937084946

/-! ## A288570.P1596229731217068101

`∑[A275732(A059590(n))]`
-/

namespace A288570.P1596229731217068101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 (A059590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P1596229731217068101

/-! ## A288570.P18405781889323884290

`∑[A275733(A276082(n))]`
-/

namespace A288570.P18405781889323884290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A276082 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P18405781889323884290

/-! ## A288570.P483476301855743845

`∑[A275733(A276083(n))]`
-/

namespace A288570.P483476301855743845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A276083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P483476301855743845

/-! ## A288570.P17604346812858183786

`∑[A275733(A276091(n))]`
-/

namespace A288570.P17604346812858183786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A276091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P17604346812858183786

/-! ## A288570.P6557927694018716102

`∑[A328571(A276156(n))]`
-/

namespace A288570.P6557927694018716102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A276156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P6557927694018716102

/-! ## A288570.P9204713522078045740

`∑[A160102(A052330(n))]`
-/

namespace A288570.P9204713522078045740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P9204713522078045740

/-! ## A288570.P12349568023475274949

`∑[A329607(A057335(n))]`
-/

namespace A288570.P12349568023475274949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A057335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288570.P12349568023475274949

/-!
# A288571: a(n) = Sum_{d|n} (-1)^(n/d+1)*tau(d), where tau = number of divisors (A000005).

The programs for A288571, the canonical program `A288571.P7040563331996419951` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288571 has offset 1).

The definition of A288571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288571.P2501923273298018198

`∑{d}[n+1, A048272(#)]`
-/

namespace A288571.P2501923273298018198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d

end

end A288571.P2501923273298018198

namespace A288571

/-- `∑{d}[n+1, A048272(#)]` -/
def P2501923273298018198.Spec : Prop :=
  ∀ n, P2501923273298018198.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P7040563331996419951

`2*A133700(n+1)-A007425(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A288571

/-- `2*A133700(n+1)-A007425(n+1)` -/
def P7040563331996419951.Spec : Prop :=
  ∀ n, P7040563331996419951.a n = A288571 (n + 1)

theorem P7040563331996419951.correct : P7040563331996419951.Spec := by
  intro n
  simp only [A288571, Nat.add_sub_cancel]

end A288571

/-! ## A288571.P16935831111607164595

`∑{d}[n+1, A001227(#)*A088705((n+1)/#)]`
-/

namespace A288571.P16935831111607164595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P16935831111607164595

namespace A288571

/-- `∑{d}[n+1, A001227(#)*A088705((n+1)/#)]` -/
def P16935831111607164595.Spec : Prop :=
  ∀ n, P16935831111607164595.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P13939686563708757644

`∑{d}[n+1, A007429(#)*A117212((n+1)/#)]`
-/

namespace A288571.P13939686563708757644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P13939686563708757644

namespace A288571

/-- `∑{d}[n+1, A007429(#)*A117212((n+1)/#)]` -/
def P13939686563708757644.Spec : Prop :=
  ∀ n, P13939686563708757644.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P4160360088746350075

`∑{d}[n+1, A000593(#)*A130054((n+1)/#)]`
-/

namespace A288571.P4160360088746350075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P4160360088746350075

namespace A288571

/-- `∑{d}[n+1, A000593(#)*A130054((n+1)/#)]` -/
def P4160360088746350075.Spec : Prop :=
  ∀ n, P4160360088746350075.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P4454304631755035892

`∑{d}[n+1, A038712(#)*A228441((n+1)/#)]`
-/

namespace A288571.P4454304631755035892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A228441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P4454304631755035892

namespace A288571

/-- `∑{d}[n+1, A038712(#)*A228441((n+1)/#)]` -/
def P4454304631755035892.Spec : Prop :=
  ∀ n, P4454304631755035892.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P7915208378484478048

`∑{d}[n+1, A051064(#)*A256232((n+1)/#)]`
-/

namespace A288571.P7915208378484478048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A256232 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P7915208378484478048

namespace A288571

/-- `∑{d}[n+1, A051064(#)*A256232((n+1)/#)]` -/
def P7915208378484478048.Spec : Prop :=
  ∀ n, P7915208378484478048.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P15447958326853134163

`∑{d}[n+1, A023900(#)*A288417((n+1)/#)]`
-/

namespace A288571.P15447958326853134163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P15447958326853134163

namespace A288571

/-- `∑{d}[n+1, A023900(#)*A288417((n+1)/#)]` -/
def P15447958326853134163.Spec : Prop :=
  ∀ n, P15447958326853134163.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P3736838501820359035

`∑{d}[n+1, A008683(#)*A318768((n+1)/#)]`
-/

namespace A288571.P3736838501820359035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P3736838501820359035

namespace A288571

/-- `∑{d}[n+1, A008683(#)*A318768((n+1)/#)]` -/
def P3736838501820359035.Spec : Prop :=
  ∀ n, P3736838501820359035.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P7601225949286641300

`∑{d}[n+1, A034444(#)*A317529((n+1)/#)]`
-/

namespace A288571.P7601225949286641300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P7601225949286641300

namespace A288571

/-- `∑{d}[n+1, A034444(#)*A317529((n+1)/#)]` -/
def P7601225949286641300.Spec : Prop :=
  ∀ n, P7601225949286641300.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P10453140585918610593

`∑{d}[n+1, A129628(#)*A230074((n+1)/#)]`
-/

namespace A288571.P10453140585918610593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P10453140585918610593

namespace A288571

/-- `∑{d}[n+1, A129628(#)*A230074((n+1)/#)]` -/
def P10453140585918610593.Spec : Prop :=
  ∀ n, P10453140585918610593.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P9307658740162689399

`∑{d}[n+1, A046951(#)*A317528((n+1)/#)]`
-/

namespace A288571.P9307658740162689399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P9307658740162689399

namespace A288571

/-- `∑{d}[n+1, A046951(#)*A317528((n+1)/#)]` -/
def P9307658740162689399.Spec : Prop :=
  ∀ n, P9307658740162689399.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P8581213113855266353

`∑{d}[n+1, A007426(#)*A361019((n+1)/#)]`
-/

namespace A288571.P8581213113855266353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P8581213113855266353

namespace A288571

/-- `∑{d}[n+1, A007426(#)*A361019((n+1)/#)]` -/
def P8581213113855266353.Spec : Prop :=
  ∀ n, P8581213113855266353.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P17236897387277100796

`∑{d}[n+1, A055615(#)*A318845((n+1)/#)]`
-/

namespace A288571.P17236897387277100796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A318845 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P17236897387277100796

namespace A288571

/-- `∑{d}[n+1, A055615(#)*A318845((n+1)/#)]` -/
def P17236897387277100796.Spec : Prop :=
  ∀ n, P17236897387277100796.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P3179853908108445120

`∑{d}[n+1, A118209(#)*A319132((n+1)/#)]`
-/

namespace A288571.P3179853908108445120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P3179853908108445120

namespace A288571

/-- `∑{d}[n+1, A118209(#)*A319132((n+1)/#)]` -/
def P3179853908108445120.Spec : Prop :=
  ∀ n, P3179853908108445120.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P11037500420851770917

`∑{d}[n+1, A109386(#)*A328641((n+1)/#)]`
-/

namespace A288571.P11037500420851770917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A288571.P11037500420851770917

namespace A288571

/-- `∑{d}[n+1, A109386(#)*A328641((n+1)/#)]` -/
def P11037500420851770917.Spec : Prop :=
  ∀ n, P11037500420851770917.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P8398148674899891406

`∑{d}[n+1, A000005(#)*A033999((n+1)/#-1)]`
-/

namespace A288571.P8398148674899891406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A288571.P8398148674899891406

namespace A288571

/-- `∑{d}[n+1, A000005(#)*A033999((n+1)/#-1)]` -/
def P8398148674899891406.Spec : Prop :=
  ∀ n, P8398148674899891406.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P10272171624361668630

`2*A133700(n+1)-A133700(A003961(n+1))`
-/

namespace A288571.P10272171624361668630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133700 (n + 1) - A133700 (A003961 (n + 1)).toNat

end

end A288571.P10272171624361668630

namespace A288571

/-- `2*A133700(n+1)-A133700(A003961(n+1))` -/
def P10272171624361668630.Spec : Prop :=
  ∀ n, P10272171624361668630.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P4946537810552200948

`2*A133700(n+1)-A133700(A332818(n+1))`
-/

namespace A288571.P4946537810552200948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133700 (n + 1) - A133700 (A332818 (n + 1)).toNat

end

end A288571.P4946537810552200948

namespace A288571

/-- `2*A133700(n+1)-A133700(A332818(n+1))` -/
def P4946537810552200948.Spec : Prop :=
  ∀ n, P4946537810552200948.a n = A288571 (n + 1)

end A288571

/-! ## A288571.P12371360044910752726

`2*A133700(n+1)-A133700(A064988(n+1))`
-/

namespace A288571.P12371360044910752726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133700 (n + 1) - A133700 (A064988 (n + 1)).toNat

end

end A288571.P12371360044910752726

namespace A288571

/-- `2*A133700(n+1)-A133700(A064988(n+1))` -/
def P12371360044910752726.Spec : Prop :=
  ∀ n, P12371360044910752726.a n = A288571 (n + 1)

end A288571

/-!
# A288572: a(n) = smallest positive integer k such that (n^3)^k == 1 mod (n+1)^3.

The programs for A288572, the canonical program `A288572.P7014901530328764659` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288572 has offset 1).

The definition of A288572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288572.P7014901530328764659

`A145064(A028310(n))*A145979(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288572

/-- `A145064(A028310(n))*A145979(n)` -/
def P7014901530328764659.Spec : Prop :=
  ∀ n, P7014901530328764659.a n = A288572 (n + 1)

theorem P7014901530328764659.correct : P7014901530328764659.Spec := by
  intro n
  simp only [A288572, Nat.add_sub_cancel]

end A288572

/-! ## A288572.P15261011839251696615

`(n+2)/2*A176895(n)*A145064(A028310(n))`
-/

namespace A288572.P15261011839251696615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A176895 n : ℚ) * (A145064 (A028310 n).toNat : ℚ)

end

end A288572.P15261011839251696615

namespace A288572

/-- `(n+2)/2*A176895(n)*A145064(A028310(n))` -/
def P15261011839251696615.Spec : Prop :=
  ∀ n, P15261011839251696615.a n = (A288572 (n + 1) : ℚ)

end A288572

/-! ## A288572.P2201567029118813327

`A065475(n+1)*A146307(n+2)`
-/

namespace A288572.P2201567029118813327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) * A146307 (n + 2)

end

end A288572.P2201567029118813327

namespace A288572

/-- `A065475(n+1)*A146307(n+2)` -/
def P2201567029118813327.Spec : Prop :=
  ∀ n, P2201567029118813327.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P16864313960907330202

`A146307(n+2)*A181440(n+2)`
-/

namespace A288572.P16864313960907330202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (n + 2) * A181440 (n + 2)

end

end A288572.P16864313960907330202

namespace A288572

/-- `A146307(n+2)*A181440(n+2)` -/
def P16864313960907330202.Spec : Prop :=
  ∀ n, P16864313960907330202.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P2164809460435065633

`A146307(n+2)*A184985(n+2)`
-/

namespace A288572.P2164809460435065633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (n + 2) * A184985 (n + 2)

end

end A288572.P2164809460435065633

namespace A288572

/-- `A146307(n+2)*A184985(n+2)` -/
def P2164809460435065633.Spec : Prop :=
  ∀ n, P2164809460435065633.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P1459861099780748698

`A060819(n+2)*A177002(n)*A145064(A028310(n))`
-/

namespace A288572.P1459861099780748698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 2) * A177002 n * A145064 (A028310 n).toNat

end

end A288572.P1459861099780748698

namespace A288572

/-- `A060819(n+2)*A177002(n)*A145064(A028310(n))` -/
def P1459861099780748698.Spec : Prop :=
  ∀ n, P1459861099780748698.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P7748901897628840738

`(A103517(n)-n)*A051176(A145979(n))`
-/

namespace A288572.P7748901897628840738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n - (n : ℤ)) * A051176 (A145979 n).toNat

end

end A288572.P7748901897628840738

namespace A288572

/-- `(A103517(n)-n)*A051176(A145979(n))` -/
def P7748901897628840738.Spec : Prop :=
  ∀ n, P7748901897628840738.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P10752164202862722152

`A008619(A103517(n))*A051176(A145979(n))`
-/

namespace A288572.P10752164202862722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103517 n).toNat * A051176 (A145979 n).toNat

end

end A288572.P10752164202862722152

namespace A288572

/-- `A008619(A103517(n))*A051176(A145979(n))` -/
def P10752164202862722152.Spec : Prop :=
  ∀ n, P10752164202862722152.a n = A288572 (n + 1)

end A288572

/-! ## A288572.P6271872440893933288

`A054531(A027379(n))*A145979(n)`
-/

namespace A288572.P6271872440893933288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A027379 n).toNat * A145979 n

end

end A288572.P6271872440893933288

namespace A288572

/-- `A054531(A027379(n))*A145979(n)` -/
def P6271872440893933288.Spec : Prop :=
  ∀ n, P6271872440893933288.a n = A288572 (n + 1)

end A288572

/-!
# A288574: Total number of distinct primes in all representations of 2*n+1 as a sum of 3 odd primes.

The programs for A288574, there is no canonical definition to state claims against.
-/

/-! ## A288574.P7394832001130886822

`floor((A087916(n)+A046927(n))/2)`
-/

namespace A288574.P7394832001130886822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087916 n + A046927 n : ℚ) / 2⌋

end

end A288574.P7394832001130886822

/-! ## A288574.P11212134147267735130

`A007963(n)+A002264(A087916(n))`
-/

namespace A288574.P11212134147267735130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 n + A002264 (A087916 n).toNat

end

end A288574.P11212134147267735130

/-! ## A288574.P2343121183287891224

`A004396(A087916(n))-A102605(n)`
-/

namespace A288574.P2343121183287891224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A087916 n).toNat - A102605 n

end

end A288574.P2343121183287891224

/-! ## A288574.P17320065969750270471

`A004526(A087916(n)+A046927(n))`
-/

namespace A288574.P17320065969750270471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087916 n + A046927 n).toNat

end

end A288574.P17320065969750270471

/-! ## A288574.P10221381450548935564

`A008619(A087916(n)+A046927(n))-1`
-/

namespace A288574.P10221381450548935564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A087916 n + A046927 n).toNat - 1

end

end A288574.P10221381450548935564

/-! ## A288574.P5610399706153061838

`A028242(or(1, A087916(n)+A046927(n)))`
-/

namespace A288574.P5610399706153061838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A087916 n + A046927 n)).toNat

end

end A288574.P5610399706153061838

/-! ## A288574.P13422483606301728228

`A008615(3*(A087916(n)+A046927(n)))`
-/

namespace A288574.P13422483606301728228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A087916 n + A046927 n)).toNat

end

end A288574.P13422483606301728228

/-!
# A288575: Partial sums of A104324.

The programs for A288575, the canonical program `A288575.P17818525623741595510` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288575 has offset 0).

The definition of A288575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288575.P11693027552553979757

`∑[A104324(n)]`
-/

namespace A288575.P11693027552553979757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P11693027552553979757

namespace A288575

/-- `∑[A104324(n)]` -/
def P11693027552553979757.Spec : Prop :=
  ∀ n, P11693027552553979757.a n = A288575 n

end A288575

/-! ## A288575.P17818525623741595510

`∑[A213911(n)+A007895(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A288575

/-- `∑[A213911(n)+A007895(n)]` -/
def P17818525623741595510.Spec : Prop :=
  ∀ n, P17818525623741595510.a n = A288575 n

theorem P17818525623741595510.correct : P17818525623741595510.Spec := by
  intro n
  simp only [A288575]

end A288575

/-! ## A288575.P14301136205716722622

`∑[A003849(n)+2*A213911(n)]`
-/

namespace A288575.P14301136205716722622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 2 * A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P14301136205716722622

namespace A288575

/-- `∑[A003849(n)+2*A213911(n)]` -/
def P14301136205716722622.Spec : Prop :=
  ∀ n, P14301136205716722622.a n = A288575 n

end A288575

/-! ## A288575.P636957110904328099

`∑[2*A007895(n)-A003849(n)]`
-/

namespace A288575.P636957110904328099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007895 n - A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P636957110904328099

namespace A288575

/-- `∑[2*A007895(n)-A003849(n)]` -/
def P636957110904328099.Spec : Prop :=
  ∀ n, P636957110904328099.a n = A288575 n

end A288575

/-! ## A288575.P302486856096473721

`A104324(n%A064804(n))+a(n-1)` with `a(0)=0`
-/

namespace A288575.P302486856096473721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104324 (Int.tmod (n : ℤ) (A064804 n)).toNat + a (n - 1)

end

end A288575.P302486856096473721

namespace A288575

/-- `A104324(n%A064804(n))+a(n-1)` -/
def P302486856096473721.Spec : Prop :=
  ∀ n, P302486856096473721.a n = A288575 n

end A288575

/-! ## A288575.P15653143238862610506

`∑[A213911(A004956(n))+A213911(n)]`
-/

namespace A288575.P15653143238862610506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat + A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P15653143238862610506

namespace A288575

/-- `∑[A213911(A004956(n))+A213911(n)]` -/
def P15653143238862610506.Spec : Prop :=
  ∀ n, P15653143238862610506.a n = A288575 n

end A288575

/-! ## A288575.P17604349425451148129

`∑[A213911(A026351(n))+A213911(n)]`
-/

namespace A288575.P17604349425451148129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026351 n).toNat + A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17604349425451148129

namespace A288575

/-- `∑[A213911(A026351(n))+A213911(n)]` -/
def P17604349425451148129.Spec : Prop :=
  ∀ n, P17604349425451148129.a n = A288575 n

end A288575

/-! ## A288575.P10552060788409314188

`∑[A213911(A004957(n))+A213911(n)]`
-/

namespace A288575.P10552060788409314188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004957 n).toNat + A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P10552060788409314188

namespace A288575

/-- `∑[A213911(A004957(n))+A213911(n)]` -/
def P10552060788409314188.Spec : Prop :=
  ∀ n, P10552060788409314188.a n = A288575 n

end A288575

/-! ## A288575.P9980896698319354171

`∑[A213911(A003622(n+1))+A213911(n)]`
-/

namespace A288575.P9980896698319354171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A003622 (n + 1)).toNat + A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P9980896698319354171

namespace A288575

/-- `∑[A213911(A003622(n+1))+A213911(n)]` -/
def P9980896698319354171.Spec : Prop :=
  ∀ n, P9980896698319354171.a n = A288575 n

end A288575

/-! ## A288575.P11863278323514001671

`∑[A213911(A004958(n))+A213911(n)]`
-/

namespace A288575.P11863278323514001671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004958 n).toNat + A213911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P11863278323514001671

namespace A288575

/-- `∑[A213911(A004958(n))+A213911(n)]` -/
def P11863278323514001671.Spec : Prop :=
  ∀ n, P11863278323514001671.a n = A288575 n

end A288575

/-! ## A288575.P8534763915346371933

`∑[A005811(record[xor(n, 2*n)/3])]`
-/

namespace A288575.P8534763915346371933
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P8534763915346371933

namespace A288575

/-- `∑[A005811(record[xor(n, 2*n)/3])]` -/
def P8534763915346371933.Spec : Prop :=
  ∀ n, P8534763915346371933.a n = A288575 n

end A288575

/-! ## A288575.P6296621245233254891

`∑[A005811(A003714(n))]`
-/

namespace A288575.P6296621245233254891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P6296621245233254891

namespace A288575

/-- `∑[A005811(A003714(n))]` -/
def P6296621245233254891.Spec : Prop :=
  ∀ n, P6296621245233254891.a n = A288575 n

end A288575

/-! ## A288575.P17262586478763310142

`∑[A000120(record[n+1-A048896(n+1)])]`
-/

namespace A288575.P17262586478763310142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17262586478763310142

namespace A288575

/-- `∑[A000120(record[n+1-A048896(n+1)])]` -/
def P17262586478763310142.Spec : Prop :=
  ∀ n, P17262586478763310142.a n = A288575 n

end A288575

/-! ## A288575.P6317153080633259180

`∑[A005811(record[A265263(n)])]`
-/

namespace A288575.P6317153080633259180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P6317153080633259180

namespace A288575

/-- `∑[A005811(record[A265263(n)])]` -/
def P6317153080633259180.Spec : Prop :=
  ∀ n, P6317153080633259180.a n = A288575 n

end A288575

/-! ## A288575.P3903814874905202204

`∑[A000120(record[A003188(n)])]`
-/

namespace A288575.P3903814874905202204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P3903814874905202204

namespace A288575

/-- `∑[A000120(record[A003188(n)])]` -/
def P3903814874905202204.Spec : Prop :=
  ∀ n, P3903814874905202204.a n = A288575 n

end A288575

/-! ## A288575.P17766539652451069273

`∑[A000120(A295897(n+1))]`
-/

namespace A288575.P17766539652451069273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A295897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17766539652451069273

namespace A288575

/-- `∑[A000120(A295897(n+1))]` -/
def P17766539652451069273.Spec : Prop :=
  ∀ n, P17766539652451069273.a n = A288575 n

end A288575

/-! ## A288575.P14076080363092012193

`∑[A005811(eq[0, A005590(3*n)])]`
-/

namespace A288575.P14076080363092012193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P14076080363092012193

namespace A288575

/-- `∑[A005811(eq[0, A005590(3*n)])]` -/
def P14076080363092012193.Spec : Prop :=
  ∀ n, P14076080363092012193.a n = A288575 n

end A288575

/-! ## A288575.P10089359400083585677

`∑[A000120(A277335(n)-A003849(n))]`
-/

namespace A288575.P10089359400083585677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277335 n - A003849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P10089359400083585677

namespace A288575

/-- `∑[A000120(A277335(n)-A003849(n))]` -/
def P10089359400083585677.Spec : Prop :=
  ∀ n, P10089359400083585677.a n = A288575 n

end A288575

/-! ## A288575.P4933220822080960461

`∑[A289281(∑[n]+2)]`
-/

namespace A288575.P4933220822080960461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289281 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P4933220822080960461

namespace A288575

/-- `∑[A289281(∑[n]+2)]` -/
def P4933220822080960461.Spec : Prop :=
  ∀ n, P4933220822080960461.a n = A288575 n

end A288575

/-!
# A288577: Image of 0 under repeated application of the morphism phi = {x -> x,x+1,x+2 if x mod 3 = 0; x -> x+1 if x mod 3 = 1 or 2, for x = 0,1,2,3,...}.

The programs for A288577, there is no canonical definition to state claims against.
-/

/-! ## A288577.P10447822671760055945

`A289281(∑[n+1]+3)`
-/

namespace A288577.P10447822671760055945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289281 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A288577.P10447822671760055945

/-!
# A288578: q-Expansion of wedge character chi^(2)(q).

The programs for A288578, there is no canonical definition to state claims against.
-/

/-! ## A288578.P8674992156047512427

`record[A006330(n)-Δ[A001523(n)]]`
-/

namespace A288578.P8674992156047512427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288578.P8674992156047512427

/-! ## A288578.P11036018794170121235

`A006330(n+2)-A342528(n+2)`
-/

namespace A288578.P11036018794170121235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (n + 2) - A342528 (n + 2)

end

end A288578.P11036018794170121235

/-! ## A288578.P12324128442336132820

`A000712(n+2)-A001523(n+3)`
-/

namespace A288578.P12324128442336132820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 2) - A001523 (n + 3)

end

end A288578.P12324128442336132820

/-! ## A288578.P4317128821836725611

`A006330(n+3)-A000990(n+3)`
-/

namespace A288578.P4317128821836725611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (n + 3) - A000990 (n + 3)

end

end A288578.P4317128821836725611

/-! ## A288578.P15217518430088731259

`Δ[A000713(n+1)]-A001523(n+3)`
-/

namespace A288578.P15217518430088731259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001523 (n + 3)

end

end A288578.P15217518430088731259

/-!
# A288579: q-Expansion of wedge character chi^(3)(q).

The programs for A288579, there is no canonical definition to state claims against.
-/

/-! ## A288579.P11836675105369524670

`A000712(n+3)+A001523(n+6)-A000712(n+5)`
-/

namespace A288579.P11836675105369524670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 3) + (A001523 (n + 6) - A000712 (n + 5))

end

end A288579.P11836675105369524670

/-! ## A288579.P1385264943313977271

`record[A000712(A028310(n))-A288578(n)]`
-/

namespace A288579.P1385264943313977271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A028310 n).toNat - A288578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288579.P1385264943313977271

/-! ## A288579.P15247393875167623738

`record[A000712(n)%A288578(A028310(n))]`
-/

namespace A288579.P15247393875167623738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000712 n) (A288578 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288579.P15247393875167623738

/-! ## A288579.P6132850914880753289

`A182714(lt[4, A335434(3*(n+1))])`
-/

namespace A288579.P6132850914880753289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A288579.P6132850914880753289

/-! ## A288579.P11807948111405921888

`A182714(A326494(n+3))%A369107(n+1)`
-/

namespace A288579.P11807948111405921888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182714 (A326494 (n + 3)).toNat) (A369107 (n + 1))

end

end A288579.P11807948111405921888

/-!
# A288581: a(0)=1, a(1)=0; thereafter a(n) = 2^Fibonacci(n-1)*a(n-1) + a(n-2).

The programs for A288581, there is no canonical definition to state claims against.
-/

/-! ## A288581.P701209086511978342

`2^A000045(n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A288581.P701209086511978342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ (A000045 (n - 1) : ℤ) * a (n - 1) + a (n - 2)

end

end A288581.P701209086511978342

/-! ## A288581.P5251125979602472944

`A063896(n+1)-A005203(n)`
-/

namespace A288581.P5251125979602472944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063896 (n + 1) - A005203 n

end

end A288581.P5251125979602472944

/-! ## A288581.P3656376903610475344

`A182028(A000071(n+1)+A000007(n))`
-/

namespace A288581.P3656376903610475344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 (A000071 (n + 1) + A000007 n).toNat

end

end A288581.P3656376903610475344

/-! ## A288581.P7660191291052818133

`A182028(A000045(n+1)-A057427(n))`
-/

namespace A288581.P7660191291052818133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 (A000045 (n + 1) - A057427 n).toNat

end

end A288581.P7660191291052818133

/-! ## A288581.P12397965819747028143

`xor(A005203(n), A063896(A187829(n+1)))`
-/

namespace A288581.P12397965819747028143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005203 n) (A063896 (A187829 (n + 1)).toNat)

end

end A288581.P12397965819747028143

/-!
# A288582: A288581(n) written in base 2.

The programs for A288582, there is no canonical definition to state claims against.
-/

/-! ## A288582.P90843672645836627

`A108047(n+1)-A061107(n)`
-/

namespace A288582.P90843672645836627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 1) - A061107 n

end

end A288582.P90843672645836627

/-! ## A288582.P888713224321621368

`A131293(n+1)-A061107(n)`
-/

namespace A288582.P888713224321621368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) - A061107 n

end

end A288582.P888713224321621368

/-! ## A288582.P11375733298094674685

`A008351(n+1)-2*A061107(n)`
-/

namespace A288582.P11375733298094674685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008351 (n + 1) - 2 * A061107 n

end

end A288582.P11375733298094674685

/-! ## A288582.P10246566996526707103

`2*A108047(n+1)-A008351(n+1)`
-/

namespace A288582.P10246566996526707103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108047 (n + 1) - A008351 (n + 1)

end

end A288582.P10246566996526707103

/-! ## A288582.P1304980303652945798

`A104458(n+1)-(A061107(n)+A008352(n))`
-/

namespace A288582.P1304980303652945798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104458 (n + 1) - (A061107 n + A008352 n)

end

end A288582.P1304980303652945798

/-!
# A288583: Related to study of weak Sidon sets.

The programs for A288583, there is no canonical definition to state claims against.
-/

/-! ## A288583.P1209568030952501518

`or(Δ[or(1, n)], A004135(n+1))`
-/

namespace A288583.P1209568030952501518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A004135 (n + 1))

end

end A288583.P1209568030952501518

/-! ## A288583.P10134409126191567521

`∑[A005245(A321409(n))]`
-/

namespace A288583.P10134409126191567521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A321409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288583.P10134409126191567521

/-! ## A288583.P5003403484352252320

`∑[A061373(A352006(n))]`
-/

namespace A288583.P5003403484352252320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A352006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288583.P5003403484352252320

/-! ## A288583.P18204958907665917615

`A165906(A116733(n+1))`
-/

namespace A288583.P18204958907665917615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165906 (A116733 (n + 1)).toNat

end

end A288583.P18204958907665917615

/-! ## A288583.P12326562269336897770

`A026468(A300829(n)+1)`
-/

namespace A288583.P12326562269336897770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026468 (A300829 n + 1).toNat

end

end A288583.P12326562269336897770

/-!
# A288584: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A288584, there is no canonical definition to state claims against.
-/

/-! ## A288584.P4165663356248859604

`A007088(A288586(n))`
-/

namespace A288584.P4165663356248859604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288586 n).toNat

end

end A288584.P4165663356248859604

/-! ## A288584.P118258857206515789

`A185544(2*A288586(n))`
-/

namespace A288584.P118258857206515789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288586 n).toNat

end

end A288584.P118258857206515789

/-!
# A288585: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A288585, there is no canonical definition to state claims against.
-/

/-! ## A288585.P3842108435605577730

`A007088(A288587(n))`
-/

namespace A288585.P3842108435605577730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288587 n).toNat

end

end A288585.P3842108435605577730

/-! ## A288585.P6153211928670017379

`A185544(2*A288587(n))`
-/

namespace A288585.P6153211928670017379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288587 n).toNat

end

end A288585.P6153211928670017379

/-! ## A288585.P7111825149796112588

`A185544(A288587(n)+A288587(n))`
-/

namespace A288585.P7111825149796112588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288587 n + A288587 n).toNat

end

end A288585.P7111825149796112588

/-!
# A288588: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A288588, there is no canonical definition to state claims against.
-/

/-! ## A288588.P14476789190073652365

`A007088(A288590(n))`
-/

namespace A288588.P14476789190073652365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288590 n).toNat

end

end A288588.P14476789190073652365

/-! ## A288588.P16331104844364089041

`A185544(2*A288590(n))`
-/

namespace A288588.P16331104844364089041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288590 n).toNat

end

end A288588.P16331104844364089041

/-! ## A288588.P2782554182464610860

`A185544(A288590(n)+A288590(n))`
-/

namespace A288588.P2782554182464610860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288590 n + A288590 n).toNat

end

end A288588.P2782554182464610860

/-!
# A288589: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A288589, there is no canonical definition to state claims against.
-/

/-! ## A288589.P9639898163849445853

`A007088(A288591(n))`
-/

namespace A288589.P9639898163849445853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288591 n).toNat

end

end A288589.P9639898163849445853

/-! ## A288589.P690310833593879578

`A185544(2*A288591(n))`
-/

namespace A288589.P690310833593879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288591 n).toNat

end

end A288589.P690310833593879578

/-!
# A288592: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A288592, there is no canonical definition to state claims against.
-/

/-! ## A288592.P9155977810308604499

`A007088(A288594(n))`
-/

namespace A288592.P9155977810308604499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288594 n).toNat

end

end A288592.P9155977810308604499

/-! ## A288592.P128386305825175675

`A185544(2*A288594(n))`
-/

namespace A288592.P128386305825175675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288594 n).toNat

end

end A288592.P128386305825175675

/-! ## A288592.P10930869949468814700

`A288064(n)+A184955((3-n)²)`
-/

namespace A288592.P10930869949468814700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288064 n + A184955 ((3 - (n : ℤ)) ^ 2).toNat

end

end A288592.P10930869949468814700

/-! ## A288592.P7836172714748356676

`A184955((3-n)²)+A007088(A288066(n))`
-/

namespace A288592.P7836172714748356676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 ((3 - (n : ℤ)) ^ 2).toNat + A007088 (A288066 n).toNat

end

end A288592.P7836172714748356676

/-!
# A288593: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A288593, there is no canonical definition to state claims against.
-/

/-! ## A288593.P1523970501724080603

`A007088(A288595(n))`
-/

namespace A288593.P1523970501724080603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288595 n).toNat

end

end A288593.P1523970501724080603

/-! ## A288593.P13338518480390464051

`A185544(2*A288595(n))`
-/

namespace A288593.P13338518480390464051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288595 n).toNat

end

end A288593.P13338518480390464051

/-!
# A288594: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A288594, there is no canonical definition to state claims against.
-/

/-! ## A288594.P122505192156727364

`A287977(n)+A058343(A128014(n))`
-/

namespace A288594.P122505192156727364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287977 n + A058343 (A128014 n).toNat

end

end A288594.P122505192156727364

/-! ## A288594.P11012593226745699838

`xor(A058343(A128014(n)), A288367(n))`
-/

namespace A288594.P11012593226745699838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058343 (A128014 n).toNat) (A288367 n)

end

end A288594.P11012593226745699838

/-!
# A288595: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A288595, there is no canonical definition to state claims against.
-/

/-! ## A288595.P17451240273061763785

`A288067(n)-A061858(A181545(n))`
-/

namespace A288595.P17451240273061763785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288067 n - A061858 (A181545 n).toNat

end

end A288595.P17451240273061763785

/-! ## A288595.P12531536349890107731

`xor(A061858(A279558(n)), A288067(n))`
-/

namespace A288595.P12531536349890107731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061858 (A279558 n).toNat) (A288067 n)

end

end A288595.P12531536349890107731

/-!
# A288596: Fixed point of the mapping 00->0101, 10->1000, starting with 00.

The programs for A288596, there is no canonical definition to state claims against.
-/

/-! ## A288596.P8681086629519683644

`char[A288598(n+1)-1]`
-/

namespace A288596.P8681086629519683644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288598 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288596.P8681086629519683644

/-! ## A288596.P8526798081226717105

`char[comp[A288597(n+1)-1]]`
-/

namespace A288596.P8526798081226717105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288596.P8526798081226717105

/-! ## A288596.P10923270958442758452

`char[abs(A288598(Δ[n²]-n)-1)]`
-/

namespace A288596.P10923270958442758452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288598 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288596.P10923270958442758452

/-! ## A288596.P5361078892017287850

`1-char[A288597(xor(1, n)+1)-1]`
-/

namespace A288596.P5361078892017287850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288596.P5361078892017287850

/-! ## A288596.P13199497603463560953

`1-char[A288597(floor(n/3)+1)-1]`
-/

namespace A288596.P13199497603463560953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (⌊(n : ℚ) / 3⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288596.P13199497603463560953

/-! ## A288596.P16566255440935831561

`char[A023443(A288598(n+1))]`
-/

namespace A288596.P16566255440935831561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288598 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288596.P16566255440935831561

/-! ## A288596.P5886805969179989787

`char[A023443(comp[A288597(n+1)])]`
-/

namespace A288596.P5886805969179989787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288596.P5886805969179989787

/-! ## A288596.P2247449356467731089

`(A005408(n)-char[A288597(n+1)-1])%2`
-/

namespace A288596.P2247449356467731089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A288596.P2247449356467731089

/-! ## A288596.P4903803287327796160

`A022328(Δ[comp[A288598(n+1)+n]])`
-/

namespace A288596.P4903803287327796160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288598 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288596.P4903803287327796160

/-! ## A288596.P857224168434226658

`A031214(Δ[comp[A288598(n+1)+n]])`
-/

namespace A288596.P857224168434226658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288598 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031214 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288596.P857224168434226658

/-! ## A288596.P12381058643242064158

`A184160(-Δ[-comp[A288597(n+1)+n]])%2`
-/

namespace A288596.P12381058643242064158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (-(f1 (n + 1) - f1 n)).toNat) 2

end

end A288596.P12381058643242064158

/-!
# A288597: Positions of 0 in A288596; complement of A288598.

The programs for A288597, there is no canonical definition to state claims against.
-/

/-! ## A288597.P4388660517314136449

`comp[A288598(n+1)-1]+1`
-/

namespace A288597.P4388660517314136449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288598 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288597.P4388660517314136449

/-! ## A288597.P6048220012703475366

`eq[0, A288596(n+1)]+1`
-/

namespace A288597.P6048220012703475366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288597.P6048220012703475366

/-!
# A288598: Positions of 1 in A288596; complement of A288597.

The programs for A288598, there is no canonical definition to state claims against.
-/

/-! ## A288598.P12114725718852944741

`filter[n+1, A288596(#)]`
-/

namespace A288598.P12114725718852944741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288596 (f1 j) = 1) n)

end

end A288598.P12114725718852944741

/-! ## A288598.P11820369005873002975

`eq[1, A288596(n+1)]+1`
-/

namespace A288598.P11820369005873002975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288598.P11820369005873002975

/-! ## A288598.P14584456812124179824

`record[(n+2)*A288596(n+2)]`
-/

namespace A288598.P14584456812124179824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288598.P14584456812124179824

/-! ## A288598.P1134046088505963957

`lt[0, A288596(A028310(n))]`
-/

namespace A288598.P1134046088505963957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288598.P1134046088505963957

/-! ## A288598.P12701886528114357974

`eq[char[A288597(n+1)], A000007(n)]`
-/

namespace A288598.P12701886528114357974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288598.P12701886528114357974

/-! ## A288598.P11874399190744972950

`eq[char[A288597(n+1)], A000038(n)]`
-/

namespace A288598.P11874399190744972950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288598.P11874399190744972950

/-! ## A288598.P16655056588454649784

`eq[1, A288596(A065033(2*n))]`
-/

namespace A288598.P16655056588454649784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288598.P16655056588454649784

/-!
# A288599: a(n) = 2*a(n-1) - a(n-4) for n >= 4, where a(0) = 2, a(1) = 4, a(2) = 6, a(3) = 10, a(4) = 16.

The programs for A288599, the canonical program `A288599.P15833561674118319308` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288599 has offset 0).

The definition of A288599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-4)` (program `A288599.P15833561674118319308`, by `A288599.P15833561674118319308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288599.P15833561674118319308

`2*a(n-1)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=10, a(4)=16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288599

/-- `2*a(n-1)-a(n-4)` -/
def P15833561674118319308.Spec : Prop :=
  ∀ n, P15833561674118319308.a n = A288599 n

theorem P15833561674118319308.correct : P15833561674118319308.Spec := by
  intro n
  simp only [A288599]

end A288599

/-! ## A288599.P2619061576731116246

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A288599.P2619061576731116246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 4, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288599.P2619061576731116246

namespace A288599

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P2619061576731116246.Spec : Prop :=
  ∀ n, (P2619061576731116246.a n : ℤ) = A288599 n

end A288599

/-! ## A288599.P5895107630551199665

`A196700(n)+a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A288599.P5895107630551199665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A196700 n + a (n - 1)

end

end A288599.P5895107630551199665

namespace A288599

/-- `A196700(n)+a(n-1)` -/
def P5895107630551199665.Spec : Prop :=
  ∀ n, P5895107630551199665.a n = A288599 n

end A288599

/-! ## A288599.P5523936890375479997

`A135491(n)+A036453(n+1)`
-/

namespace A288599.P5523936890375479997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A036453 (n + 1)

end

end A288599.P5523936890375479997

namespace A288599

/-- `A135491(n)+A036453(n+1)` -/
def P5523936890375479997.Spec : Prop :=
  ∀ n, P5523936890375479997.a n = A288599 n

end A288599

/-! ## A288599.P4296874139901137295

`A280560(2*n)+A135491(n)`
-/

namespace A288599.P4296874139901137295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n) + A135491 n

end

end A288599.P4296874139901137295

namespace A288599

/-- `A280560(2*n)+A135491(n)` -/
def P4296874139901137295.Spec : Prop :=
  ∀ n, P4296874139901137295.a n = A288599 n

end A288599

/-! ## A288599.P6704324813391134262

`A135491(n)+A000353(n+1)%3`
-/

namespace A288599.P6704324813391134262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + Int.tmod (A000353 (n + 1)) 3

end

end A288599.P6704324813391134262

namespace A288599

/-- `A135491(n)+A000353(n+1)%3` -/
def P6704324813391134262.Spec : Prop :=
  ∀ n, P6704324813391134262.a n = A288599 n

end A288599

/-! ## A288599.P11780289691159785841

`A135491(n)+A135491(n²%(n+1))`
-/

namespace A288599.P11780289691159785841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A135491 (n ^ 2 % (n + 1))

end

end A288599.P11780289691159785841

namespace A288599

/-- `A135491(n)+A135491(n²%(n+1))` -/
def P11780289691159785841.Spec : Prop :=
  ∀ n, P11780289691159785841.a n = A288599 n

end A288599

/-! ## A288599.P5061507311631441343

`A135491(n)+A020639(A004277(n))`
-/

namespace A288599.P5061507311631441343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A020639 (A004277 n).toNat

end

end A288599.P5061507311631441343

namespace A288599

/-- `A135491(n)+A020639(A004277(n))` -/
def P5061507311631441343.Spec : Prop :=
  ∀ n, P5061507311631441343.a n = A288599 n

end A288599

/-! ## A288599.P3136521370474656269

`A135491(n)+A020639(A006093(n+1))`
-/

namespace A288599.P3136521370474656269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A020639 (A006093 (n + 1)).toNat

end

end A288599.P3136521370474656269

namespace A288599

/-- `A135491(n)+A020639(A006093(n+1))` -/
def P3136521370474656269.Spec : Prop :=
  ∀ n, P3136521370474656269.a n = A288599 n

end A288599

/-! ## A288599.P13363421813082378124

`Δ[A054668(n+1)+A004277(n)]`
-/

namespace A288599.P13363421813082378124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1) + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288599.P13363421813082378124

namespace A288599

/-- `Δ[A054668(n+1)+A004277(n)]` -/
def P13363421813082378124.Spec : Prop :=
  ∀ n, P13363421813082378124.a n = A288599 n

end A288599

/-! ## A288599.P18432448913937596004

`Δ[A288465(n)]%A288465(n)+2`
-/

namespace A288599.P18432448913937596004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A288465 n) + 2

end

end A288599.P18432448913937596004

namespace A288599

/-- `Δ[A288465(n)]%A288465(n)+2` -/
def P18432448913937596004.Spec : Prop :=
  ∀ n, P18432448913937596004.a n = A288599 n

end A288599

/-! ## A288599.P6285792065757260378

`A133140(n)-A265725(n)`
-/

namespace A288599.P6285792065757260378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n - A265725 n

end

end A288599.P6285792065757260378

namespace A288599

/-- `A133140(n)-A265725(n)` -/
def P6285792065757260378.Spec : Prop :=
  ∀ n, P6285792065757260378.a n = A288599 n

end A288599

/-! ## A288599.P3811864777085077640

`A135491(n)+∑[A011782(n)]/A011782(n)`
-/

namespace A288599.P3811864777085077640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135491 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A011782 n : ℚ)

end

end A288599.P3811864777085077640

namespace A288599

/-- `A135491(n)+∑[A011782(n)]/A011782(n)` -/
def P3811864777085077640.Spec : Prop :=
  ∀ n, P3811864777085077640.a n = (A288599 n : ℚ)

end A288599

/-! ## A288599.P14906996161987990856

`A135491(n)+gcd(2, A135491(A308081(n+1)))`
-/

namespace A288599.P14906996161987990856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + (Int.gcd 2 (A135491 (A308081 (n + 1)).toNat) : ℤ)

end

end A288599.P14906996161987990856

namespace A288599

/-- `A135491(n)+gcd(2, A135491(A308081(n+1)))` -/
def P14906996161987990856.Spec : Prop :=
  ∀ n, P14906996161987990856.a n = A288599 n

end A288599

/-! ## A288599.P15293413504592510627

`A135491(n)+A000122(n²)`
-/

namespace A288599.P15293413504592510627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A000122 (n ^ 2)

end

end A288599.P15293413504592510627

namespace A288599

/-- `A135491(n)+A000122(n²)` -/
def P15293413504592510627.Spec : Prop :=
  ∀ n, P15293413504592510627.a n = A288599 n

end A288599

