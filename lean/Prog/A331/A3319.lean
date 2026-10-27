import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A331900: Number of compositions (ordered partitions) of the n-th triangular number into distinct triangular numbers.

The programs for A331900, there is no canonical definition to state claims against.
-/

/-! ## A331900.P5173013498174419538

`A331843(A000217(n))`
-/

namespace A331900.P5173013498174419538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 (A000217 n).toNat

end

end A331900.P5173013498174419538

/-! ## A331900.P18067461308147649752

`A331843(∑[n])`
-/

namespace A331900.P18067461308147649752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331900.P18067461308147649752

/-! ## A331900.P9217512843660109617

`or(1, A331843(C(n+1, 2)))`
-/

namespace A331900.P9217512843660109617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331843 (Nat.choose (n + 1) 2))

end

end A331900.P9217512843660109617

/-! ## A331900.P6419235765298137648

`or(1, A331843((n²+n)/2))`
-/

namespace A331900.P6419235765298137648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331843 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A331900.P6419235765298137648

/-! ## A331900.P10003429655470775790

`A331843(C(n+1, 2))+A000007(A163511(n))`
-/

namespace A331900.P10003429655470775790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 (Nat.choose (n + 1) 2) + A000007 (A163511 n).toNat

end

end A331900.P10003429655470775790

/-!
# A331901: Number of compositions (ordered partitions) of the n-th prime into distinct prime parts.

The programs for A331901, there is no canonical definition to state claims against.
-/

/-! ## A331901.P16153710443954093271

`A219107(A000040(n+1))`
-/

namespace A331901.P16153710443954093271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (A000040 (n + 1)).toNat

end

end A331901.P16153710443954093271

/-! ## A331901.P5239548247452786720

`A219107(A008578(n+2))`
-/

namespace A331901.P5239548247452786720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (A008578 (n + 2)).toNat

end

end A331901.P5239548247452786720

/-! ## A331901.P18405035534877534234

`A219107(A182986(n+2))`
-/

namespace A331901.P18405035534877534234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (A182986 (n + 2)).toNat

end

end A331901.P18405035534877534234

/-! ## A331901.P13113591578872179470

`A219107(record[A006530(n+2)])`
-/

namespace A331901.P13113591578872179470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331901.P13113591578872179470

/-! ## A331901.P2120039118252623484

`A219107(record[A014963(n+2)])`
-/

namespace A331901.P2120039118252623484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331901.P2120039118252623484

/-! ## A331901.P16592065072562259595

`A219107(record[A020639(n+2)])`
-/

namespace A331901.P16592065072562259595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331901.P16592065072562259595

/-! ## A331901.P11664996876918379424

`A219107(A001747(n+2)/2)`
-/

namespace A331901.P11664996876918379424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A331901.P11664996876918379424

/-! ## A331901.P16692198830360196634

`A219107(A160656(n+1))`
-/

namespace A331901.P16692198830360196634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 (A160656 (n + 1)).toNat

end

end A331901.P16692198830360196634

/-!
# A331902: T(n, k) = floor(n/m) where m is the least positive integer such that floor(n/m) = floor(k/m). Square array read by antidiagonals, for n >= 0 and k >= 0.

The programs for A331902, there is no canonical definition to state claims against.
-/

/-! ## A331902.P16195372412585603971

`floor(A002262(n)/A331886(n))`
-/

namespace A331902.P16195372412585603971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 n : ℚ) / (A331886 n : ℚ)⌋

end

end A331902.P16195372412585603971

/-! ## A331902.P5544392063311670570

`floor(A025581(n)/A331886(n))`
-/

namespace A331902.P5544392063311670570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n : ℚ) / (A331886 n : ℚ)⌋

end

end A331902.P5544392063311670570

/-! ## A331902.P14056825421787221992

`round(A325169(A208510(n+1))/A331886(n))`
-/

namespace A331902.P14056825421787221992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325169 (A208510 (n + 1)).toNat : ℚ) / (A331886 n : ℚ))

end

end A331902.P14056825421787221992

/-! ## A331902.P16318112521523547860

`val(A137341(A134058(n)), A167499(n))`
-/

namespace A331902.P16318112521523547860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137341 (A134058 n).toNat).toNat (A167499 n).toNat

end

end A331902.P16318112521523547860

/-! ## A331902.P12261799374170145964

`C(A004198(n), A281007(A008288(n)))`
-/

namespace A331902.P12261799374170145964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004198 n).toNat (A281007 (A008288 n).toNat).toNat

end

end A331902.P12261799374170145964

/-!
# A331903: Positions of records in A331859.

The programs for A331903, there is no canonical definition to state claims against.
-/

/-! ## A331903.P4460153768785804436

`A331904(n+3)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A331903.P4460153768785804436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A331904 (n + 3) + a (n - 1)

end

end A331903.P4460153768785804436

/-! ## A331903.P6433692185339397537

`∑[A028310(A331904(n+3))]`
-/

namespace A331903.P6433692185339397537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A331904 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331903.P6433692185339397537

/-! ## A331903.P5061826675336112602

`A057427(n)+∑[A331904(n+3)]`
-/

namespace A331903.P5061826675336112602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331903.P5061826675336112602

/-! ## A331903.P5229688554278463550

`record[A060576(n)+∑[A331904(n+1)]]`
-/

namespace A331903.P5229688554278463550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331903.P5229688554278463550

/-! ## A331903.P16412686582856418745

`∑[or(A019590(n+1), A331904(n+3))]`
-/

namespace A331903.P16412686582856418745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A331904 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331903.P16412686582856418745

/-! ## A331903.P10204779963741849034

`char[A060000(n+1)]+∑[A331904(n+3)]`
-/

namespace A331903.P10204779963741849034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A331903.P10204779963741849034

/-! ## A331903.P6967927920312354383

`∑[A331904(n+3)]+A007645(n+1)%3`
-/

namespace A331903.P6967927920312354383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A007645 (n + 1)) 3

end

end A331903.P6967927920312354383

/-! ## A331903.P13583737791619880991

`∑[A331904(n+3)]+A001221(A001316(n))`
-/

namespace A331903.P13583737791619880991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001221 (A001316 n).toNat

end

end A331903.P13583737791619880991

/-!
# A331904: Number of occurrences of n in A331859.

The programs for A331904, there is no canonical definition to state claims against.
-/

/-! ## A331904.P10223040288494071423

`A070098(n+1)+A010051(A188646(n))`
-/

namespace A331904.P10223040288494071423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (n + 1) + A010051 (A188646 n).toNat

end

end A331904.P10223040288494071423

/-!
# A331905: Number of spanning trees in the multigraph cube of an n-cycle.

The programs for A331905, there is no canonical definition to state claims against.
-/

/-! ## A331905.P10121415381859698961

`A000224((2*n+1)*A258798(n))`
-/

namespace A331905.P10121415381859698961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 ((2 * n + 1 : ℤ) * A258798 n).toNat

end

end A331905.P10121415381859698961

/-!
# A331906: The number of regions inside a pentagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A331906, there is no canonical definition to state claims against.
-/

/-! ## A331906.P8386290577840210047

`A333118(n+1)+1-A333117(n+1)`
-/

namespace A331906.P8386290577840210047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333118 (n + 1) + (1 - A333117 (n + 1))

end

end A331906.P8386290577840210047

/-!
# A331908: The number of regions inside a hexagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A331908, there is no canonical definition to state claims against.
-/

/-! ## A331908.P16653344737488741980

`A333049(n+1)+1-A333116(n+1)`
-/

namespace A331908.P16653344737488741980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333049 (n + 1) + (1 - A333116 (n + 1))

end

end A331908.P16653344737488741980

/-!
# A331912: Lexicographically earliest sequence of positive integers that have at most one distinct prime index already in the sequence.

The programs for A331912, there is no canonical definition to state claims against.
-/

/-! ## A331912.P11970259760312326391

`lt[A297155(n+1), A120454(A252735(n+1)+1)]+1`
-/

namespace A331912.P11970259760312326391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A252735 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331912.P11970259760312326391

/-! ## A331912.P13806564021101606075

`eq[A010055(A066048(2*n+5)+1), A344976(n+1)]+1`
-/

namespace A331912.P13806564021101606075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A066048 (2 * n + 5) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331912.P13806564021101606075

/-! ## A331912.P6688535177283187854

`A326848(n+1)-A025456(A326842(n)²)`
-/

namespace A331912.P6688535177283187854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (n + 1) - A025456 (A326842 n ^ 2).toNat

end

end A331912.P6688535177283187854

/-! ## A331912.P3181541596251907497

`eq[2, A161688(A327778(n))]`
-/

namespace A331912.P3181541596251907497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161688 (A327778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331912.P3181541596251907497

/-! ## A331912.P9567411972013963026

`∩[A261466(n+1), A322030(n+1)]`
-/

namespace A331912.P9567411972013963026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331912.P9567411972013963026

/-!
# A331913: Lexicographically earliest sequence containing 1 and all positive integers that have exactly one distinct prime index already in the sequence.

The programs for A331913, there is no canonical definition to state claims against.
-/

/-! ## A331913.P5192635605295811339

`eq[char[55*n], A151905(A151868(n))]`
-/

namespace A331913.P5192635605295811339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (A151868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A331913.P5192635605295811339

/-! ## A331913.P8867404241765246359

`lt[A037916(n+1), A299755(3*n+2)]+1`
-/

namespace A331913.P8867404241765246359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299755 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331913.P8867404241765246359

/-! ## A331913.P12718339377573619687

`eq[A151905(A151868(n)), A151909(n)]`
-/

namespace A331913.P12718339377573619687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (A151868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331913.P12718339377573619687

/-! ## A331913.P16889809189805986395

`eq[A151905(A151868(n)), A151933(n)]`
-/

namespace A331913.P16889809189805986395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (A151868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331913.P16889809189805986395

/-! ## A331913.P3498568679352434990

`eq[A151905(A151868(n)), A151935(n)]`
-/

namespace A331913.P3498568679352434990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (A151868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331913.P3498568679352434990

/-!
# A331914: Numbers with at most one prime prime index, counted with multiplicity.

The programs for A331914, there is no canonical definition to state claims against.
-/

/-! ## A331914.P5938970288358052940

`record[n/a(A257994(n))]` with `a(0)=1`
-/

namespace A331914.P5938970288358052940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A257994 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331914.P5938970288358052940

/-! ## A331914.P7210986150679501445

`lt[A257994(n+1), 2]+1`
-/

namespace A331914.P7210986150679501445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331914.P7210986150679501445

/-! ## A331914.P15266886532994308196

`lt[A360326(n+1), 3]+1`
-/

namespace A331914.P15266886532994308196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331914.P15266886532994308196

/-! ## A331914.P11375038794598682627

`lt[A257994(n^floor(atan(n)))^10, n]`
-/

namespace A331914.P11375038794598682627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat ^ 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A331914.P11375038794598682627

/-! ## A331914.P6555682474083369656

`∪[comp[2*lcm(3, n)-n], A331915(n+1)]`
-/

namespace A331914.P6555682474083369656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 3 n : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A331914.P6555682474083369656

/-! ## A331914.P2408311934612734477

`eq[2, lcm(2, A257994(A008486(n)))]`
-/

namespace A331914.P2408311934612734477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257994 (A008486 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331914.P2408311934612734477

/-! ## A331914.P6518996269122258617

`record[A157657(A295665(n+1))+n]`
-/

namespace A331914.P6518996269122258617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (A295665 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331914.P6518996269122258617

/-! ## A331914.P17835742770120173253

`∪[A080308(n+1), A331915(n+1)]`
-/

namespace A331914.P17835742770120173253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331914.P17835742770120173253

/-! ## A331914.P9012629697261579229

`∪[A165741(n+1), A331915(n+1)]`
-/

namespace A331914.P9012629697261579229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331914.P9012629697261579229

/-! ## A331914.P12161870195363488711

`∪[A229829(n+1), A331915(n+1)]`
-/

namespace A331914.P12161870195363488711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331914.P12161870195363488711

/-!
# A331915: Numbers with exactly one prime prime index, counted with multiplicity.

The programs for A331915, there is no canonical definition to state claims against.
-/

/-! ## A331915.P17262332105299953723

`eq[1, A257994(n+1)]+1`
-/

namespace A331915.P17262332105299953723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331915.P17262332105299953723

/-! ## A331915.P4708282809809952318

`eq[2, A360326(n+1)]+1`
-/

namespace A331915.P4708282809809952318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331915.P4708282809809952318

/-! ## A331915.P3186991082107629580

`eq[n, n-a(A257994(n))]` with `a(0)=1`
-/

namespace A331915.P3186991082107629580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A257994 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P3186991082107629580

/-! ## A331915.P9046873232961840454

`eq[1, A257994(n^floor(atan(n)))]`
-/

namespace A331915.P9046873232961840454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P9046873232961840454

/-! ## A331915.P1866029546258655095

`eq[1, A257994(A004277(n))]`
-/

namespace A331915.P1866029546258655095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P1866029546258655095

/-! ## A331915.P18353150567549590058

`eq[1, A257994(A008574(n))]`
-/

namespace A331915.P18353150567549590058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P18353150567549590058

/-! ## A331915.P7749230015297555830

`eq[2, A257994(A008458(n))]`
-/

namespace A331915.P7749230015297555830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P7749230015297555830

/-! ## A331915.P5277326731218513462

`eq[2, A257994(A008486(n))]`
-/

namespace A331915.P5277326731218513462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P5277326731218513462

/-! ## A331915.P9824808405980585026

`eq[2, A257994(A008706(n))]`
-/

namespace A331915.P9824808405980585026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P9824808405980585026

/-! ## A331915.P3763753909299390694

`eq[2, A257994(A298028(n))]`
-/

namespace A331915.P3763753909299390694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331915.P3763753909299390694

/-!
# A331916: Numbers with exactly one distinct prime prime index.

The programs for A331916, there is no canonical definition to state claims against.
-/

/-! ## A331916.P1484009522277278370

`record[root(n, a(A279952(n)))]` with `a(0)=3`
-/

namespace A331916.P1484009522277278370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  (n : ℝ) ^ (1 / f1 (A279952 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331916.P1484009522277278370

/-! ## A331916.P6177064246007920384

`eq[1, A279952(n+1)]+1`
-/

namespace A331916.P6177064246007920384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331916.P6177064246007920384

/-! ## A331916.P15939695523552246597

`eq[n, n-a(A279952(2*n))]` with `a(0)=1`
-/

namespace A331916.P15939695523552246597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A279952 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P15939695523552246597

/-! ## A331916.P5152014375599355293

`eq[1, A279952(A004277(n))]`
-/

namespace A331916.P5152014375599355293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P5152014375599355293

/-! ## A331916.P56234805049914630

`eq[1, A279952(A008574(n))]`
-/

namespace A331916.P56234805049914630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P56234805049914630

/-! ## A331916.P8558411081515282932

`eq[1, A279952(A022144(n))]`
-/

namespace A331916.P8558411081515282932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P8558411081515282932

/-! ## A331916.P5336443818786178792

`eq[1, A279952(A004275(n+1))]`
-/

namespace A331916.P5336443818786178792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P5336443818786178792

/-! ## A331916.P7703907920972138074

`eq[1, A279952(A000007(n)+n)]`
-/

namespace A331916.P7703907920972138074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P7703907920972138074

/-! ## A331916.P10849647301134509939

`eq[1, A279952(A008486(n)+n)]`
-/

namespace A331916.P10849647301134509939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P10849647301134509939

/-! ## A331916.P7405420275715031041

`eq[1, ∑{p}[n, A010051(A000720(#))]]`
-/

namespace A331916.P7405420275715031041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A010051 (A000720 p).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331916.P7405420275715031041

/-!
# A331918: Number of compositions (ordered partitions) of n into distinct odd squares.

The programs for A331918, there is no canonical definition to state claims against.
-/

/-! ## A331918.P11258847157622357899

`A040001(A141214(n))*A167700(n)`
-/

namespace A331918.P11258847157622357899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A141214 n).toNat * A167700 n

end

end A331918.P11258847157622357899

/-! ## A331918.P11819597109910932739

`A040001(A066456(n+1))*A167700(n)`
-/

namespace A331918.P11819597109910932739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A066456 (n + 1)).toNat * A167700 n

end

end A331918.P11819597109910932739

/-! ## A331918.P10144243317070263158

`A332006(A000188(n+1)*A008619(n))`
-/

namespace A331918.P10144243317070263158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (A000188 (n + 1) * A008619 n).toNat

end

end A331918.P10144243317070263158

/-! ## A331918.P1899325991904704223

`A167700(n)*A341608(A074288(n+1))`
-/

namespace A331918.P1899325991904704223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n * A341608 (A074288 (n + 1)).toNat

end

end A331918.P1899325991904704223

/-! ## A331918.P13270780552624067635

`A194447(A080709(n+2)^A167700(n))`
-/

namespace A331918.P13270780552624067635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (SequenceMachineLib.roundAway ((A080709 (n + 2) : ℚ) ^ (A167700 n : ℤ))).toNat

end

end A331918.P13270780552624067635

/-!
# A331919: Number of compositions (ordered partitions) of n into distinct tetrahedral numbers.

The programs for A331919, there is no canonical definition to state claims against.
-/

/-! ## A331919.P7216471188106405396

`A332005(n-∑[A144200(3*(n+1))])`
-/

namespace A331919.P7216471188106405396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332005 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331919.P7216471188106405396

/-! ## A331919.P742183084666221898

`A332005(n)-∑[A160753(A326526(n))]`
-/

namespace A331919.P742183084666221898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160753 (A326526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332005 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331919.P742183084666221898

/-! ## A331919.P7252755291097231693

`C(A332005(n), A108499(A137795(n+1)))`
-/

namespace A331919.P7252755291097231693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332005 n).toNat (A108499 (A137795 (n + 1)).toNat).toNat

end

end A331919.P7252755291097231693

/-! ## A331919.P9397584648651233893

`A332005(lt[A051122(n), A080788(n+1)])`
-/

namespace A331919.P9397584648651233893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332005 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331919.P9397584648651233893

/-! ## A331919.P2606738068002252629

`and(A087204(A005936(n+1)+1), A332005(n))`
-/

namespace A331919.P2606738068002252629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087204 (A005936 (n + 1) + 1).toNat) (A332005 n)

end

end A331919.P2606738068002252629

/-!
# A331920: Total number of reduced pipe dreams (a.k.a. rc-graphs) for all permutations in S_n.

The programs for A331920, there is no canonical definition to state claims against.
-/

/-! ## A331920.P13936942930479184513

`A077273(A018249(n))`
-/

namespace A331920.P13936942930479184513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077273 (A018249 n).toNat

end

end A331920.P13936942930479184513

/-!
# A331921: Number of iterations of the map G -> Aut(G) on the cyclic group of order n needed to reach stability; or -1 if the iteration never stabilizes.

The programs for A331921, there is no canonical definition to state claims against.
-/

/-! ## A331921.P5049273499445039626

`A327966(A051903(n+1)*A181811(n+1))`
-/

namespace A331921.P5049273499445039626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (A051903 (n + 1) * A181811 (n + 1)).toNat

end

end A331921.P5049273499445039626

/-! ## A331921.P17927213211522372815

`A073855(A005578(n)%A302832(n))`
-/

namespace A331921.P17927213211522372815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (Int.tmod (A005578 n) (A302832 n)).toNat

end

end A331921.P17927213211522372815

/-! ## A331921.P6542163543602456721

`A073855(eq[A312452(n), A312455(n)])`
-/

namespace A331921.P6542163543602456721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331921.P6542163543602456721

/-! ## A331921.P17072317763777193612

`A001221(A007009(n+1)*A253565(n))`
-/

namespace A331921.P17072317763777193612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007009 (n + 1) * A253565 n).toNat

end

end A331921.P17072317763777193612

/-! ## A331921.P16620771945798598991

`A106459(n+4)+A001221(A026011(n))`
-/

namespace A331921.P16620771945798598991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (n + 4) + A001221 (A026011 n).toNat

end

end A331921.P16620771945798598991

/-!
# A331923: Number of compositions (ordered partitions) of n into distinct perfect powers.

The programs for A331923, there is no canonical definition to state claims against.
-/

/-! ## A331923.P3666150819273510483

`A275609(2*A332465(n+1))`
-/

namespace A331923.P3666150819273510483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (2 * A332465 (n + 1)).toNat

end

end A331923.P3666150819273510483

/-! ## A331923.P16393607149595455766

`lcm(A244895(A282417(n)), A301504(n))`
-/

namespace A331923.P16393607149595455766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244895 (A282417 n).toNat) (A301504 n)

end

end A331923.P16393607149595455766

/-! ## A331923.P4486606469387795308

`and(A000217(A256429(n)), A126347(n))`
-/

namespace A331923.P4486606469387795308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A256429 n).toNat) (A126347 n)

end

end A331923.P4486606469387795308

/-! ## A331923.P16158649870030609056

`and(A083953(A209408(n)), A145129(n))`
-/

namespace A331923.P16158649870030609056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083953 (A209408 n).toNat) (A145129 n)

end

end A331923.P16158649870030609056

/-! ## A331923.P7649942541017510907

`and(A126890(A034824(n)), A301504(n))`
-/

namespace A331923.P7649942541017510907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126890 (A034824 n).toNat) (A301504 n)

end

end A331923.P7649942541017510907

/-!
# A331924: Number of compositions (ordered partitions) of n into distinct composite parts.

The programs for A331924, there is no canonical definition to state claims against.
-/

/-! ## A331924.P1633629902968602320

`A073484(A212303(n)+10)`
-/

namespace A331924.P1633629902968602320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A212303 n + 10).toNat

end

end A331924.P1633629902968602320

/-! ## A331924.P5961373676050848962

`A240814(n+2)%(A185286(n)+1)`
-/

namespace A331924.P5961373676050848962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240814 (n + 2)) (A185286 n + 1)

end

end A331924.P5961373676050848962

/-! ## A331924.P15666979545689144729

`A062535(A004148(n))+Δ[ceil(n²/24)]`
-/

namespace A331924.P15666979545689144729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062535 (A004148 n).toNat + (f1 (n + 1) - f1 n)

end

end A331924.P15666979545689144729

/-! ## A331924.P2599871794547021953

`A055642(A101088(n+2))-∑{e}[n+1, #]`
-/

namespace A331924.P2599871794547021953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A101088 (n + 2)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A331924.P2599871794547021953

/-! ## A331924.P5058882544676711123

`A340998(A000124(n))+A029354(n)`
-/

namespace A331924.P5058882544676711123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A000124 n).toNat + 140) + A029354 n

end

end A331924.P5058882544676711123

/-!
# A331927: Number of compositions (ordered partitions) of n into distinct divisors of n.

The programs for A331927, there is no canonical definition to state claims against.
-/

/-! ## A331927.P5478107432456555429

`or(1, A331928(n))`
-/

namespace A331927.P5478107432456555429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331928 n)

end

end A331927.P5478107432456555429

/-! ## A331927.P14292153860704549978

`A331928(C(2, n)+n)+1`
-/

namespace A331927.P14292153860704549978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 (Nat.choose 2 n + n) + 1

end

end A331927.P14292153860704549978

/-! ## A331927.P14908197360066561019

`A331928(round(acot(n)+n))+1`
-/

namespace A331927.P14908197360066561019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A331927.P14908197360066561019

/-! ## A331927.P6859445754184100024

`A331928(abs(1-n)+1)+1`
-/

namespace A331927.P6859445754184100024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A331927.P6859445754184100024

/-! ## A331927.P17504640910912921903

`xor(1, A331928(round(sqrt(n²+1))))`
-/

namespace A331927.P17504640910912921903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A331928 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A331927.P17504640910912921903

/-! ## A331927.P12329631469287147408

`A057427(n)*A331928(n)+1`
-/

namespace A331927.P12329631469287147408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A331928 n + 1

end

end A331927.P12329631469287147408

/-! ## A331927.P6879068053642246714

`∏{e}[A006530(n+1), A331928(n)+#]`
-/

namespace A331927.P6879068053642246714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A331928 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A331927.P6879068053642246714

/-! ## A331927.P14700054057347991903

`gcd(2, A000005(A005117(n+1)))+A331928(n)-1`
-/

namespace A331927.P14700054057347991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000005 (A005117 (n + 1)).toNat) : ℤ) + (A331928 n - 1)

end

end A331927.P14700054057347991903

/-!
# A331928: Number of compositions (ordered partitions) of n into distinct proper divisors of n.

The programs for A331928, there is no canonical definition to state claims against.
-/

/-! ## A331928.P8040958433540848462

`A331927(n)-ceil(abs(sin(n)))`
-/

namespace A331928.P8040958433540848462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A331928.P8040958433540848462

/-! ## A331928.P13269936169246694787

`A331927(n)+A057428(n)`
-/

namespace A331928.P13269936169246694787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n + A057428 n

end

end A331928.P13269936169246694787

/-! ## A331928.P1970218195515849697

`A331927(n)-A057427(n)`
-/

namespace A331928.P1970218195515849697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n - A057427 n

end

end A331928.P1970218195515849697

/-! ## A331928.P1309896594796008481

`and(A113679(n), A331927(n))`
-/

namespace A331928.P1309896594796008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A331927 n)

end

end A331928.P1309896594796008481

/-! ## A331928.P8907723780450568398

`and(A027383(n), A331927(n))`
-/

namespace A331928.P8907723780450568398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027383 n) (A331927 n)

end

end A331928.P8907723780450568398

/-! ## A331928.P1162240720829868379

`and(A099942(n), A331927(n))`
-/

namespace A331928.P1162240720829868379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099942 n) (A331927 n)

end

end A331928.P1162240720829868379

/-! ## A331928.P16509454617359547489

`and(A000918(n), A331927(n))`
-/

namespace A331928.P16509454617359547489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A331927 n)

end

end A331928.P16509454617359547489

/-! ## A331928.P3988720729340551323

`and(A135440(n), A331927(n))`
-/

namespace A331928.P3988720729340551323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135440 n) (A331927 n)

end

end A331928.P3988720729340551323

/-! ## A331928.P15563547928239468061

`and(A283350(n), A331927(n))`
-/

namespace A331928.P15563547928239468061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283350 n) (A331927 n)

end

end A331928.P15563547928239468061

/-! ## A331928.P15775920022344912043

`and(A095121(n), A331927(n))`
-/

namespace A331928.P15775920022344912043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A331927 n)

end

end A331928.P15775920022344912043

/-! ## A331928.P6137407421564979910

`and(A283403(n), A331927(n))`
-/

namespace A331928.P6137407421564979910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283403 n) (A331927 n)

end

end A331928.P6137407421564979910

/-! ## A331928.P16196607323781837936

`and(A331927(n), A369491(n))`
-/

namespace A331928.P16196607323781837936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331927 n) (A369491 n)

end

end A331928.P16196607323781837936

/-! ## A331928.P18099996284771583250

`and(A033484(n), A331927(n))`
-/

namespace A331928.P18099996284771583250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033484 n) (A331927 n)

end

end A331928.P18099996284771583250

/-! ## A331928.P10486168848193835137

`and(A134067(n), A331927(n))`
-/

namespace A331928.P10486168848193835137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134067 n) (A331927 n)

end

end A331928.P10486168848193835137

/-! ## A331928.P5343088606867720304

`and(A259713(n), A331927(n))`
-/

namespace A331928.P5343088606867720304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259713 n) (A331927 n)

end

end A331928.P5343088606867720304

/-! ## A331928.P14357387749143726910

`and(A051633(n), A331927(n))`
-/

namespace A331928.P14357387749143726910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051633 n) (A331927 n)

end

end A331928.P14357387749143726910

/-! ## A331928.P4704786215541434144

`and(A134062(n), A331927(n))`
-/

namespace A331928.P4704786215541434144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134062 n) (A331927 n)

end

end A331928.P4704786215541434144

/-! ## A331928.P2398812303105941033

`and(A176448(n), A331927(n))`
-/

namespace A331928.P2398812303105941033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176448 n) (A331927 n)

end

end A331928.P2398812303105941033

/-! ## A331928.P13620855639763498245

`and(A176449(n), A331927(n))`
-/

namespace A331928.P13620855639763498245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176449 n) (A331927 n)

end

end A331928.P13620855639763498245

/-! ## A331928.P2530681761602687028

`and(A117863(n+1), A331927(n))`
-/

namespace A331928.P2530681761602687028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117863 (n + 1)) (A331927 n)

end

end A331928.P2530681761602687028

/-!
# A331929: The number of regions inside a pentagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A331929, there is no canonical definition to state claims against.
-/

/-! ## A331929.P7300436803978473605

`A329710(n+1)+1-A330847(n+1)`
-/

namespace A331929.P7300436803978473605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329710 (n + 1) + (1 - A330847 (n + 1))

end

end A331929.P7300436803978473605

/-! ## A331929.P16267229083960706142

`A367323(A167499(n+1))`
-/

namespace A331929.P16267229083960706142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367323 (A167499 (n + 1)).toNat

end

end A331929.P16267229083960706142

/-! ## A331929.P10265824989561817362

`A367323(A166136(n+1)-1)`
-/

namespace A331929.P10265824989561817362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367323 (A166136 (n + 1) - 1).toNat

end

end A331929.P10265824989561817362

/-!
# A331930: a(n) is the smallest composite k such that Sum_{composites j = 4, ..., k} 1/j exceeds n/2.

The programs for A331930, there is no canonical definition to state claims against.
-/

/-! ## A331930.P10659774602087467296

`A375057(A065617(n+2))`
-/

namespace A331930.P10659774602087467296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375057 (A065617 (n + 2)).toNat

end

end A331930.P10659774602087467296

/-! ## A331930.P7368933416883860798

`A004976(A332268((n+2)!))`
-/

namespace A331930.P7368933416883860798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A332268 (Nat.factorial (n + 2))).toNat

end

end A331930.P7368933416883860798

/-!
# A331931: The number of regions inside a hexagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A331931, there is no canonical definition to state claims against.
-/

/-! ## A331931.P10290163933616223296

`A330845(n+1)+1-A330846(n+1)`
-/

namespace A331931.P10290163933616223296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330845 (n + 1) + (1 - A330846 (n + 1))

end

end A331931.P10290163933616223296

/-! ## A331931.P14315301505703056522

`A367323(A166136(n+2))`
-/

namespace A331931.P14315301505703056522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367323 (A166136 (n + 2)).toNat

end

end A331931.P14315301505703056522

/-!
# A331932: Triangle read by rows: Take a hexagon with all diagonals drawn, as in A331931. Then T(n,k) = number of k-sided polygons in that figure for k = 3, 4, ..., n+4.

The programs for A331932, there is no canonical definition to state claims against.
-/

/-! ## A331932.P17678405692685908214

`A003384(A138729(n+1))%A105760(A100792(3*n+5))`
-/

namespace A331932.P17678405692685908214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003384 (A138729 (n + 1)).toNat) (A105760 (A100792 (3 * n + 5)).toNat)

end

end A331932.P17678405692685908214

/-!
# A331933: Number of semi-lone-child-avoiding rooted trees with at most one distinct non-leaf branch directly under any vertex.

The programs for A331933, there is no canonical definition to state claims against.
-/

/-! ## A331933.P8615042792826986114

`A354912(or(A000045(n), A327077(n)))`
-/

namespace A331933.P8615042792826986114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (Int.lor (A000045 n) (A327077 n)).toNat

end

end A331933.P8615042792826986114

/-! ## A331933.P12866203847140628615

`A354912(or(A107358(n), A118247(n+2)))`
-/

namespace A331933.P12866203847140628615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (Int.lor (A107358 n) (A118247 (n + 2))).toNat

end

end A331933.P12866203847140628615

/-! ## A331933.P11671740437906906718

`A354912(or(A000045(n), A125999(2*n)))`
-/

namespace A331933.P11671740437906906718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (Int.lor (A000045 n) (A125999 (2 * n))).toNat

end

end A331933.P11671740437906906718

/-! ## A331933.P7672385907206860326

`A354912(or(A088534(2*n), A107358(n)))`
-/

namespace A331933.P7672385907206860326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (Int.lor (A088534 (2 * n)) (A107358 n)).toNat

end

end A331933.P7672385907206860326

/-! ## A331933.P4166118029285148775

`A354912(or(A000045(n), A319995(3*n+5)))`
-/

namespace A331933.P4166118029285148775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (Int.lor (A000045 n) (A319995 (3 * n + 5))).toNat

end

end A331933.P4166118029285148775

/-!
# A331934: Number of semi-lone-child-avoiding rooted trees with n unlabeled vertices.

The programs for A331934, there is no canonical definition to state claims against.
-/

/-! ## A331934.P9374009904795874305

`A257639(or(A002525(n), A160702(n)))`
-/

namespace A331934.P9374009904795874305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (A002525 n) (A160702 n)).toNat

end

end A331934.P9374009904795874305

/-! ## A331934.P6689486465775231185

`A130148(A148138(n))`
-/

namespace A331934.P6689486465775231185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A148138 n).toNat

end

end A331934.P6689486465775231185

/-! ## A331934.P17662042503235425453

`A332111(A024502(n))`
-/

namespace A331934.P17662042503235425453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (A024502 n).toNat

end

end A331934.P17662042503235425453

/-! ## A331934.P16480722965188317318

`A117333(A239561(n))`
-/

namespace A331934.P16480722965188317318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A239561 n).toNat

end

end A331934.P16480722965188317318

/-! ## A331934.P13205150056807526877

`A361144(A036591(n))`
-/

namespace A331934.P13205150056807526877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361144 (A036591 n).toNat

end

end A331934.P13205150056807526877

/-!
# A331936: Matula-Goebel numbers of semi-lone-child-avoiding rooted trees with at most one distinct non-leaf branch directly under any vertex (semi-achirality).

The programs for A331936, there is no canonical definition to state claims against.
-/

/-! ## A331936.P8103664315320499849

`filter[A331873(n+1), A340363(#)]`
-/

namespace A331936.P8103664315320499849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A331936.P8103664315320499849

/-! ## A331936.P11557362480123328175

`∩[A318991(n+1), A331873(n+1)]`
-/

namespace A331936.P11557362480123328175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331936.P11557362480123328175

/-! ## A331936.P10053442647053435759

`∩[A324109(n+1), A331873(n+1)]`
-/

namespace A331936.P10053442647053435759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331936.P10053442647053435759

/-! ## A331936.P12828378780231052614

`∩[A296241(n+1), A331873(n+1)]`
-/

namespace A331936.P12828378780231052614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331936.P12828378780231052614

/-! ## A331936.P16694039119188044595

`∩[A320230(n+1), A331873(n+1)]`
-/

namespace A331936.P16694039119188044595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331936.P16694039119188044595

/-!
# A331937: a(1) = 1; a(2) = 2; a(n + 1) = 2 * prime(a(n)).

The programs for A331937, there is no canonical definition to state claims against.
-/

/-! ## A331937.P3979882824114167443

`A209636(∑[floor(2^(n-1))²])`
-/

namespace A331937.P3979882824114167443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331937.P3979882824114167443

/-! ## A331937.P16718068310741463608

`A055642(n)*A209636(A002450(n))`
-/

namespace A331937.P16718068310741463608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A209636 (A002450 n).toNat

end

end A331937.P16718068310741463608

/-! ## A331937.P4416708248801630224

`A209636(A001045(2*n))*A275077(n)`
-/

namespace A331937.P4416708248801630224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (A001045 (2 * n)).toNat * A275077 n

end

end A331937.P4416708248801630224

/-!
# A331938: Indices of A002110(n) in A055932.

The programs for A331938, there is no canonical definition to state claims against.
-/

/-! ## A331938.P6651218991399589110

`A377835(A000975(n))`
-/

namespace A331938.P6651218991399589110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377835 (A000975 n).toNat

end

end A331938.P6651218991399589110

/-! ## A331938.P11397073677674524805

`A377835(∑[A001045(n)])`
-/

namespace A331938.P11397073677674524805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377835 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331938.P11397073677674524805

/-! ## A331938.P16835345862386724442

`A377837(∑[A001045(n)])`
-/

namespace A331938.P16835345862386724442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331938.P16835345862386724442

/-! ## A331938.P14647038370112905577

`A331119(A098719(n+1))`
-/

namespace A331938.P14647038370112905577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331119 (A098719 (n + 1)).toNat

end

end A331938.P14647038370112905577

/-! ## A331938.P11149504226371066348

`A331119(record[A329901(n+1)])`
-/

namespace A331938.P11149504226371066348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331938.P11149504226371066348

/-!
# A331939: Triangle read by rows: Take a pentagon with all diagonals drawn, as in A331929. Then T(n,k) = number of k-sided polygons in that figure for k = 3, 4, ..., n+5.

The programs for A331939, there is no canonical definition to state claims against.
-/

/-! ## A331939.P1387477349763350616

`(xor(n, a(n-1))+1)!` with `a(0)=10, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A331939.P1387477349763350616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 0, 1, 0] fun n a =>
  Nat.factorial (Nat.xor n (a (n - 1)) + 1)

end

end A331939.P1387477349763350616

/-!
# A331942: a(n) = number of primes of the form P(k) = k^2 + 1 <= 10^n as predicted by the Hardy and Littlewood Conjecture F, rounded to nearest integer. The actual number of primes is A083844(n).

The programs for A331942, there is no canonical definition to state claims against.
-/

/-! ## A331942.P13543842417977007513

`A000006(∑[A000111(n+3)])`
-/

namespace A331942.P13543842417977007513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331942.P13543842417977007513

/-! ## A331942.P15343460154307201156

`A001462(xor(n, A286433(n+2)))`
-/

namespace A331942.P15343460154307201156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.xor (n : ℤ) (A286433 (n + 2))).toNat

end

end A331942.P15343460154307201156

/-! ## A331942.P7495852633838452960

`A126257(A004080(n+1)+3*n+1)`
-/

namespace A331942.P7495852633838452960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A004080 (n + 1) + (3 * n + 1 : ℤ)).toNat

end

end A331942.P7495852633838452960

/-!
# A331943: a(n) = n^2 + 1 - ceiling((n + 2)/3).

The programs for A331943, the canonical program `A331943.P14669692039662083232` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331943 has offset 1).

The definition of A331943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+1-ceil((n+3)/3)` (program `A331943.P14669692039662083232`, by `A331943.P14669692039662083232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331943.P14669692039662083232

`(n+1)²+1-ceil((n+3)/3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331943

/-- `(n+1)²+1-ceil((n+3)/3)` -/
def P14669692039662083232.Spec : Prop :=
  ∀ n, P14669692039662083232.a n = A331943 (n + 1)

theorem P14669692039662083232.correct : P14669692039662083232.Spec := by
  intro n
  simp only [A331943, Nat.add_sub_cancel]

end A331943

/-! ## A331943.P2974166864512568785

`∑[∑[Δ[n²]%3]+n]`
-/

namespace A331943.P2974166864512568785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P2974166864512568785

namespace A331943

/-- `∑[∑[Δ[n²]%3]+n]` -/
def P2974166864512568785.Spec : Prop :=
  ∀ n, P2974166864512568785.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P9547570793883418088

`∑[a(n-3)+6]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A331943.P9547570793883418088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P9547570793883418088

namespace A331943

/-- `∑[a(n-3)+6]` -/
def P9547570793883418088.Spec : Prop :=
  ∀ n, (P9547570793883418088.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P16087904360650426443

`∑[record[xor(1, floor(3*n/2))]]`
-/

namespace A331943.P16087904360650426443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊3 * ((n : ℚ) / 2)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P16087904360650426443

namespace A331943

/-- `∑[record[xor(1, floor(3*n/2))]]` -/
def P16087904360650426443.Spec : Prop :=
  ∀ n, P16087904360650426443.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P15443538235197749862

`record[(1-n)²-floor(n/3)]`
-/

namespace A331943.P15443538235197749862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331943.P15443538235197749862

namespace A331943

/-- `record[(1-n)²-floor(n/3)]` -/
def P15443538235197749862.Spec : Prop :=
  ∀ n, P15443538235197749862.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P17088471684764699010

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A331943.P17088471684764699010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P17088471684764699010

namespace A331943

/-- `∑[∑[abs(a(n-3))]]` -/
def P17088471684764699010.Spec : Prop :=
  ∀ n, (P17088471684764699010.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P6536198865404867769

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A331943.P6536198865404867769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P6536198865404867769

namespace A331943

/-- `∑[∑[dr(a(n-3))]]` -/
def P6536198865404867769.Spec : Prop :=
  ∀ n, (P6536198865404867769.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P4711817705222269502

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A331943.P4711817705222269502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P4711817705222269502

namespace A331943

/-- `∑[∑[floor(a(n-3))]]` -/
def P4711817705222269502.Spec : Prop :=
  ∀ n, (P4711817705222269502.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P12287699550088576247

`∑[∑[ceil(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A331943.P12287699550088576247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P12287699550088576247

namespace A331943

/-- `∑[∑[ceil(a(n-3))]]` -/
def P12287699550088576247.Spec : Prop :=
  ∀ n, (P12287699550088576247.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P2562459934768672799

`∑[∑[round(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A331943.P2562459934768672799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P2562459934768672799

namespace A331943

/-- `∑[∑[round(a(n-3))]]` -/
def P2562459934768672799.Spec : Prop :=
  ∀ n, (P2562459934768672799.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P10643923071467530648

`∑[∑[3-(n+1)%3]-1]`
-/

namespace A331943.P10643923071467530648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 1) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P10643923071467530648

namespace A331943

/-- `∑[∑[3-(n+1)%3]-1]` -/
def P10643923071467530648.Spec : Prop :=
  ∀ n, P10643923071467530648.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P6506626187424566125

`∑[(n+2)²%3+2*n]`
-/

namespace A331943.P6506626187424566125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % 3 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P6506626187424566125

namespace A331943

/-- `∑[(n+2)²%3+2*n]` -/
def P6506626187424566125.Spec : Prop :=
  ∀ n, (P6506626187424566125.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P15200205889741719452

`∑[∑[a(n-3)%4]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A331943.P15200205889741719452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P15200205889741719452

namespace A331943

/-- `∑[∑[a(n-3)%4]]` -/
def P15200205889741719452.Spec : Prop :=
  ∀ n, (P15200205889741719452.a n : ℤ) = A331943 (n + 1)

end A331943

/-! ## A331943.P10533519106896927980

`∑[∑[4-a(a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A331943.P10533519106896927980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f2 =>
  4 - f2 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P10533519106896927980

namespace A331943

/-- `∑[∑[4-a(a(n-1))]]` -/
def P10533519106896927980.Spec : Prop :=
  ∀ n, P10533519106896927980.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P11122784349655535597

`∑[floor(1/gcd(n+2, n-1)+2*n)]`
-/

namespace A331943.P11122784349655535597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ) + (2 * n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P11122784349655535597

namespace A331943

/-- `∑[floor(1/gcd(n+2, n-1)+2*n)]` -/
def P11122784349655535597.Spec : Prop :=
  ∀ n, P11122784349655535597.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P3947568063365422469

`∑[A047268(n+1)]`
-/

namespace A331943.P3947568063365422469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P3947568063365422469

namespace A331943

/-- `∑[A047268(n+1)]` -/
def P3947568063365422469.Spec : Prop :=
  ∀ n, P3947568063365422469.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P1199577080467849892

`∑[A117571(n)+n]`
-/

namespace A331943.P1199577080467849892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P1199577080467849892

namespace A331943

/-- `∑[A117571(n)+n]` -/
def P1199577080467849892.Spec : Prop :=
  ∀ n, P1199577080467849892.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P3763329023299272112

`∑[A047234(n+1)+1]`
-/

namespace A331943.P3763329023299272112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P3763329023299272112

namespace A331943

/-- `∑[A047234(n+1)+1]` -/
def P3763329023299272112.Spec : Prop :=
  ∀ n, P3763329023299272112.a n = A331943 (n + 1)

end A331943

/-! ## A331943.P8681137661562293679

`∑[comp[∑[and(3, n)]-3]]`
-/

namespace A331943.P8681137661562293679
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331943.P8681137661562293679

namespace A331943

/-- `∑[comp[∑[and(3, n)]-3]]` -/
def P8681137661562293679.Spec : Prop :=
  ∀ n, (P8681137661562293679.a n : ℤ) = A331943 (n + 1)

end A331943

/-!
# A331946: Factors k > 0 such that k*x^2 + 1 produces a new minimum of its Hardy-Littlewood constant.

The programs for A331946, there is no canonical definition to state claims against.
-/

/-! ## A331946.P1395216719653088491

`record[gcd(A029415(n), A329946(n+1))]`
-/

namespace A331946.P1395216719653088491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029415 n) (A329946 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331946.P1395216719653088491

/-! ## A331946.P10284893068565254709

`record[gcd(A208118(n+1), A277344(3*n+2))]`
-/

namespace A331946.P10284893068565254709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208118 (n + 1)) (A277344 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331946.P10284893068565254709

/-! ## A331946.P10468984825934181122

`lt[A245092(A277819(n+5)), A276152(n+1)]`
-/

namespace A331946.P10468984825934181122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A277819 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331946.P10468984825934181122

/-!
# A331948: Nonsquare factors k > 0 such that k*x^2 - 1 produces a new minimum of its Hardy-Littlewood constant.

The programs for A331948, there is no canonical definition to state claims against.
-/

/-! ## A331948.P17942176711860059079

`p?[abs(5-A146566(n+1))]`
-/

namespace A331948.P17942176711860059079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A146566 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331948.P17942176711860059079

/-! ## A331948.P15836414602332039910

`A032758(record[Δ[A050761(n)]])`
-/

namespace A331948.P15836414602332039910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331948.P15836414602332039910

/-! ## A331948.P2607486956396131266

`record[p?[A049840(A253563(n))]]`
-/

namespace A331948.P2607486956396131266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (A253563 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331948.P2607486956396131266

/-! ## A331948.P17073396611914534099

`∑[A000005(A058207(3*n+2)*A205802(n))]`
-/

namespace A331948.P17073396611914534099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A058207 (3 * n + 2) * A205802 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331948.P17073396611914534099

/-!
# A331949: Addends k > 0 such that x^2 + k produces a new minimum of its Hardy-Littlewood Constant.

The programs for A331949, there is no canonical definition to state claims against.
-/

/-! ## A331949.P13446240348139323507

`A003420(A043317(n+1))`
-/

namespace A331949.P13446240348139323507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003420 (A043317 (n + 1)).toNat

end

end A331949.P13446240348139323507

/-! ## A331949.P15708789112937698635

`A003420(A044914(n+1))`
-/

namespace A331949.P15708789112937698635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003420 (A044914 (n + 1)).toNat

end

end A331949.P15708789112937698635

/-! ## A331949.P7340875786089920098

`A003420(A049872(n)+1)`
-/

namespace A331949.P7340875786089920098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003420 (A049872 n + 1).toNat

end

end A331949.P7340875786089920098

/-! ## A331949.P7575818407604101336

`A003420(A055648(n+1))`
-/

namespace A331949.P7575818407604101336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003420 (A055648 (n + 1)).toNat

end

end A331949.P7575818407604101336

/-! ## A331949.P9066464100822750456

`A003420(A062003(n)+1)`
-/

namespace A331949.P9066464100822750456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003420 (A062003 n + 1).toNat

end

end A331949.P9066464100822750456

/-!
# A331951: Number of binary trees with n internal nodes that contain the subtree [Z, [Z, U, U], [Z, U, U]].

The programs for A331951, there is no canonical definition to state claims against.
-/

/-! ## A331951.P6477561056923879568

`A000108(n)-A226022(n)`
-/

namespace A331951.P6477561056923879568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A226022 n

end

end A331951.P6477561056923879568

/-! ## A331951.P8536671450623801227

`abs(A168491(n))-A226022(n)`
-/

namespace A331951.P8536671450623801227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A226022 n

end

end A331951.P8536671450623801227

/-! ## A331951.P3327428836900831180

`A120588(n+1)-A226022(n)`
-/

namespace A331951.P3327428836900831180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A226022 n

end

end A331951.P3327428836900831180

/-! ## A331951.P9085000508070828726

`A120304(n)+2-A226022(n)`
-/

namespace A331951.P9085000508070828726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (2 - A226022 n)

end

end A331951.P9085000508070828726

/-! ## A331951.P6100930002538353627

`Δ[A155587(n)]-A226022(n)`
-/

namespace A331951.P6100930002538353627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A226022 n

end

end A331951.P6100930002538353627

/-!
# A331952: a(n) = (-7 + (-1)^(1+n) + 6*n^2) / 8.

The programs for A331952, the canonical program `A331952.P5936149376904241049` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331952 has offset 0).

The definition of A331952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331952.P5936149376904241049

`floor((n²-1)*3/4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331952

/-- `floor((n²-1)*3/4)` -/
def P5936149376904241049.Spec : Prop :=
  ∀ n, P5936149376904241049.a n = A331952 n

theorem P5936149376904241049.correct : P5936149376904241049.Spec := by
  intro n
  simp only [A331952]

end A331952

/-! ## A331952.P18342230885712170531

`(-7+(-1)^(1+n)+6*n²)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331952.P18342230885712170531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-7 + (-1) ^ (1 + n) + (6 * n ^ 2 : ℤ) : ℚ) / 8

end

end A331952.P18342230885712170531

namespace A331952

/-- `(-7+(-1)^(1+n)+6*n²)/8` -/
def P18342230885712170531.Spec : Prop :=
  ∀ n, P18342230885712170531.a n = (A331952 n : ℚ)

end A331952

/-! ## A331952.P895666618814390850

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A331952.P895666618814390850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 2, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A331952.P895666618814390850

namespace A331952

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P895666618814390850.Spec : Prop :=
  ∀ n, P895666618814390850.a n = A331952 n

end A331952

/-! ## A331952.P13032967613825412644

`∑[∑[n%2+1]-2]`
-/

namespace A331952.P13032967613825412644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P13032967613825412644

namespace A331952

/-- `∑[∑[n%2+1]-2]` -/
def P13032967613825412644.Spec : Prop :=
  ∀ n, P13032967613825412644.a n = A331952 n

end A331952

/-! ## A331952.P6277693079963942681

`∑[∑[gcd(2, n+1)]-2]`
-/

namespace A331952.P6277693079963942681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P6277693079963942681

namespace A331952

/-- `∑[∑[gcd(2, n+1)]-2]` -/
def P6277693079963942681.Spec : Prop :=
  ∀ n, P6277693079963942681.a n = A331952 n

end A331952

/-! ## A331952.P7425947940990851378

`∑[∑[and(1, n)+1]-2]`
-/

namespace A331952.P7425947940990851378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P7425947940990851378

namespace A331952

/-- `∑[∑[and(1, n)+1]-2]` -/
def P7425947940990851378.Spec : Prop :=
  ∀ n, P7425947940990851378.a n = A331952 n

end A331952

/-! ## A331952.P12239858889781615527

`∑[comp[lcm(3, n)+1]-1]`
-/

namespace A331952.P12239858889781615527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P12239858889781615527

namespace A331952

/-- `∑[comp[lcm(3, n)+1]-1]` -/
def P12239858889781615527.Spec : Prop :=
  ∀ n, P12239858889781615527.a n = A331952 n

end A331952

/-! ## A331952.P14818584791319759756

`∑[a(n-2)+3]` with `a(0)=-1, a(1)=1`
-/

namespace A331952.P14818584791319759756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P14818584791319759756

namespace A331952

/-- `∑[a(n-2)+3]` -/
def P14818584791319759756.Spec : Prop :=
  ∀ n, P14818584791319759756.a n = A331952 n

end A331952

/-! ## A331952.P12710246812834873631

`∑[∑[3-a(n-1)]]` with `a(0)=-1, a(1)=2`
-/

namespace A331952.P12710246812834873631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P12710246812834873631

namespace A331952

/-- `∑[∑[3-a(n-1)]]` -/
def P12710246812834873631.Spec : Prop :=
  ∀ n, P12710246812834873631.a n = A331952 n

end A331952

/-! ## A331952.P15032180428061470617

`∑[∑[∑[ogf((-1+2x+2x^2)/(1+x))]]]`
-/

namespace A331952.P15032180428061470617
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P15032180428061470617

namespace A331952

/-- `∑[∑[∑[ogf((-1+2x+2x^2)/(1+x))]]]` -/
def P15032180428061470617.Spec : Prop :=
  ∀ n, P15032180428061470617.a n = A331952 n

end A331952

/-! ## A331952.P17570711253095355831

`ogf((-1+2x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A331952.P17570711253095355831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 2] [1, -2, 0, 2, -1] n

end

end A331952.P17570711253095355831

namespace A331952

/-- `ogf((-1+2x+2x^2)/(1-2x+2x^3-x^4))` -/
def P17570711253095355831.Spec : Prop :=
  ∀ n, P17570711253095355831.a n = A331952 n

end A331952

/-! ## A331952.P13710447126852950168

`∑[∑[gcd(n-1, 2*n)]]-2*n-2`
-/

namespace A331952.P13710447126852950168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ) - 2

end

end A331952.P13710447126852950168

namespace A331952

/-- `∑[∑[gcd(n-1, 2*n)]]-2*n-2` -/
def P13710447126852950168.Spec : Prop :=
  ∀ n, P13710447126852950168.a n = A331952 n

end A331952

/-! ## A331952.P2990656892633823926

`A077043(n)-1`
-/

namespace A331952.P2990656892633823926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n - 1

end

end A331952.P2990656892633823926

namespace A331952

/-- `A077043(n)-1` -/
def P2990656892633823926.Spec : Prop :=
  ∀ n, P2990656892633823926.a n = A331952 n

end A331952

/-! ## A331952.P10534490832060917597

`A084684(n)-2`
-/

namespace A331952.P10534490832060917597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n - 2

end

end A331952.P10534490832060917597

namespace A331952

/-- `A084684(n)-2` -/
def P10534490832060917597.Spec : Prop :=
  ∀ n, P10534490832060917597.a n = A331952 n

end A331952

/-! ## A331952.P450117350680089967

`sqrt(A212503(n))-1`
-/

namespace A331952.P450117350680089967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212503 n : ℝ) - 1

end

end A331952.P450117350680089967

namespace A331952

/-- `sqrt(A212503(n))-1` -/
def P450117350680089967.Spec : Prop :=
  ∀ n, P450117350680089967.a n = (A331952 n : ℝ)

end A331952

/-! ## A331952.P10322682258981592693

`∑[A007494(n)-1]`
-/

namespace A331952.P10322682258981592693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P10322682258981592693

namespace A331952

/-- `∑[A007494(n)-1]` -/
def P10322682258981592693.Spec : Prop :=
  ∀ n, P10322682258981592693.a n = A331952 n

end A331952

/-! ## A331952.P11725357552352624174

`n²-A033638(n)`
-/

namespace A331952.P11725357552352624174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A033638 n

end

end A331952.P11725357552352624174

namespace A331952

/-- `n²-A033638(n)` -/
def P11725357552352624174.Spec : Prop :=
  ∀ n, P11725357552352624174.a n = A331952 n

end A331952

/-! ## A331952.P2478505686884374201

`A001859(n)-(n+1)`
-/

namespace A331952.P2478505686884374201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n - (n + 1 : ℤ)

end

end A331952.P2478505686884374201

namespace A331952

/-- `A001859(n)-(n+1)` -/
def P2478505686884374201.Spec : Prop :=
  ∀ n, P2478505686884374201.a n = A331952 n

end A331952

/-! ## A331952.P9996362536386168631

`A263807(n)-(n+2)`
-/

namespace A331952.P9996362536386168631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 n - (n + 2 : ℤ)

end

end A331952.P9996362536386168631

namespace A331952

/-- `A263807(n)-(n+2)` -/
def P9996362536386168631.Spec : Prop :=
  ∀ n, P9996362536386168631.a n = A331952 n

end A331952

/-! ## A331952.P9787632666554208754

`∑[∑[A000034(n)]-2]`
-/

namespace A331952.P9787632666554208754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331952.P9787632666554208754

namespace A331952

/-- `∑[∑[A000034(n)]-2]` -/
def P9787632666554208754.Spec : Prop :=
  ∀ n, P9787632666554208754.a n = A331952 n

end A331952

/-!
# A331953: a(n) is the least positive k such that floor(n/k) is a square number.

The programs for A331953, there is no canonical definition to state claims against.
-/

/-! ## A331953.P14988574061625118544

`ceil((n+1)/(A332012(n)+1))`
-/

namespace A331953.P14988574061625118544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A332012 n + 1 : ℚ)⌉

end

end A331953.P14988574061625118544

/-! ## A331953.P2021060083646265463

`ceil((n+1)/(A331958(n)²+1))`
-/

namespace A331953.P2021060083646265463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A331958 n ^ 2 + 1 : ℚ)⌉

end

end A331953.P2021060083646265463

/-!
# A331954: a(n) is the least positive k such that floor(n/k) is a prime number.

The programs for A331954, there is no canonical definition to state claims against.
-/

/-! ## A331954.P10456500115827758086

`floor((n+2)/(A331959(n+2)+1))+1`
-/

namespace A331954.P10456500115827758086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A331959 (n + 2) + 1 : ℚ)⌋ + 1

end

end A331954.P10456500115827758086

/-! ## A331954.P14293416842313070740

`A078899(n+2)-A117943(A319646(n))`
-/

namespace A331954.P14293416842313070740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (n + 2) - A117943 (A319646 n).toNat

end

end A331954.P14293416842313070740

/-! ## A331954.P485014764634488626

`A000523(A349322(n+2))%A349321(n+1)`
-/

namespace A331954.P485014764634488626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A349322 (n + 2)).toNat) (A349321 (n + 1))

end

end A331954.P485014764634488626

/-! ## A331954.P3521570016936239348

`A191517(A345312(n+2)+2)`
-/

namespace A331954.P3521570016936239348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191517 (A345312 (n + 2) + 2).toNat

end

end A331954.P3521570016936239348

/-! ## A331954.P18428064104609679674

`A001222(A072513(n+2)+A005361(2*(n+2)))`
-/

namespace A331954.P18428064104609679674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072513 (n + 2) + A005361 (2 * (n + 2))).toNat

end

end A331954.P18428064104609679674

/-!
# A331955: Triangle T(n,k) of number of chains of length k in partitions of an n-set ordered by refinement.

The programs for A331955, there is no canonical definition to state claims against.
-/

/-! ## A331955.P8512609537927304070

`A225099(A247127(n))+A059720(n)`
-/

namespace A331955.P8512609537927304070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A247127 n).toNat + A059720 n

end

end A331955.P8512609537927304070

/-! ## A331955.P2721314452716083022

`A048766(A245767(n)*A339030(n))`
-/

namespace A331955.P2721314452716083022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A245767 n * A339030 n).toNat

end

end A331955.P2721314452716083022

/-! ## A331955.P1986014174219725528

`or(A054923(n), A102705(A298213(n)))`
-/

namespace A331955.P1986014174219725528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054923 n) (A102705 (A298213 n).toNat)

end

end A331955.P1986014174219725528

/-! ## A331955.P14444760943309338941

`or(A130191(n), A180026(A156888(n)))`
-/

namespace A331955.P14444760943309338941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130191 n) (A180026 (A156888 n).toNat)

end

end A331955.P14444760943309338941

/-!
# A331956: Triangle T(n,k) read by rows: number of rooted chains of length k in set partitions of n labeled points.

The programs for A331956, there is no canonical definition to state claims against.
-/

/-! ## A331956.P17011945041551354372

`A174807(A304336(n)+1)`
-/

namespace A331956.P17011945041551354372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174807 (A304336 n + 1).toNat

end

end A331956.P17011945041551354372

/-! ## A331956.P11989975991024540239

`A105564(A304336(n)+3)`
-/

namespace A331956.P11989975991024540239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A304336 n + 3).toNat

end

end A331956.P11989975991024540239

/-! ## A331956.P8021371624800102488

`A326625(2*A239098(n))`
-/

namespace A331956.P8021371624800102488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (2 * A239098 n).toNat

end

end A331956.P8021371624800102488

/-! ## A331956.P7593088733479400244

`A073524(2^A142071(n))`
-/

namespace A331956.P7593088733479400244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A142071 n : ℤ))).toNat

end

end A331956.P7593088733479400244

/-! ## A331956.P16439855881972066422

`A058710(n)+A010893(A332283(n))`
-/

namespace A331956.P16439855881972066422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 n + A010893 ((A332283 n).toNat + 13)

end

end A331956.P16439855881972066422

/-!
# A331957: Number of rooted chains in set partitions of {1, 2, ..., n}.

The programs for A331957, there is no canonical definition to state claims against.
-/

/-! ## A331957.P254697582362126919

`ceil(A330804(n)/2)`
-/

namespace A331957.P254697582362126919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330804 n : ℚ) / 2⌉

end

end A331957.P254697582362126919

/-! ## A331957.P241555533507270659

`gcd(round(A330804(n)/2), A088157(n))`
-/

namespace A331957.P241555533507270659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A330804 n : ℚ) / 2)) (A088157 n)

end

end A331957.P241555533507270659

/-! ## A331957.P810787930384296552

`round(A330804(n)/2)^A014963(∑[n+1])`
-/

namespace A331957.P810787930384296552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A330804 n : ℚ) / 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A331957.P810787930384296552

/-! ## A331957.P10370556876649265795

`A052938(2*n)/(2*(n+1))+A330804(n)/2`
-/

namespace A331957.P10370556876649265795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (2 * (n + 1) : ℚ) + (A330804 n : ℚ) / 2

end

end A331957.P10370556876649265795

/-!
# A331958: a(n)^2 is the greatest square number of the form floor(n/k) where k > 0.

The programs for A331958, there is no canonical definition to state claims against.
-/

/-! ## A331958.P2181044002824865409

`sqrt(A332012(n))`
-/

namespace A331958.P2181044002824865409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A332012 n : ℝ)

end

end A331958.P2181044002824865409

/-! ## A331958.P8757489207547751300

`floor(sqrt(n/A331953(n)))`
-/

namespace A331958.P8757489207547751300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / (A331953 n : ℚ) : ℝ)⌋

end

end A331958.P8757489207547751300

/-! ## A331958.P9713386920289324771

`A000196(ceil(n/A331953(n)))`
-/

namespace A331958.P9713386920289324771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(n : ℚ) / (A331953 n : ℚ)⌉.toNat

end

end A331958.P9713386920289324771

/-! ## A331958.P18044275197089575380

`A000196(A332012(n)%(n+1))`
-/

namespace A331958.P18044275197089575380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A332012 n) (n + 1 : ℤ)).toNat

end

end A331958.P18044275197089575380

/-! ## A331958.P4543507642875913285

`A000196(A332012(n)+A000035(n))`
-/

namespace A331958.P4543507642875913285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A332012 n + A000035 n).toNat

end

end A331958.P4543507642875913285

/-! ## A331958.P9009447512630636693

`A000196(A332012(n)+A037213(n))`
-/

namespace A331958.P9009447512630636693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A332012 n + A037213 n).toNat

end

end A331958.P9009447512630636693

/-! ## A331958.P11226587027436736389

`A000194(A054977(n)*A332012(n))`
-/

namespace A331958.P11226587027436736389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A054977 n * A332012 n).toNat

end

end A331958.P11226587027436736389

/-! ## A331958.P5533834620186039520

`A000194(A332012(n)+A091225(n+1))`
-/

namespace A331958.P5533834620186039520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A332012 n + A091225 (n + 1)).toNat

end

end A331958.P5533834620186039520

/-! ## A331958.P11664406541223914454

`A332012(n)/A000196(A332012(n)+1)`
-/

namespace A331958.P11664406541223914454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332012 n : ℚ) / (A000196 (A332012 n + 1).toNat : ℚ)

end

end A331958.P11664406541223914454

/-! ## A331958.P10999477254437215896

`A037213(2*A332012(n)-A332012(n))`
-/

namespace A331958.P10999477254437215896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (2 * A332012 n - A332012 n).toNat

end

end A331958.P10999477254437215896

/-! ## A331958.P7074223469113436565

`A037213(n)+A037213(A332012(n)+A037213(n))`
-/

namespace A331958.P7074223469113436565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + A037213 (A332012 n + A037213 n).toNat

end

end A331958.P7074223469113436565

/-!
# A331959: a(n) is the greatest prime number of the form floor(n/k) where k > 0.

The programs for A331959, there is no canonical definition to state claims against.
-/

/-! ## A331959.P9426182636010163898

`floor((n+2)/A331954(n+2))`
-/

namespace A331959.P9426182636010163898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A331954 (n + 2) : ℚ)⌋

end

end A331959.P9426182636010163898

/-! ## A331959.P14361339179916360472

`ceil((n+3)/A331954(n+2)-A000120(A006519(n+1)))`
-/

namespace A331959.P14361339179916360472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / (A331954 (n + 2) : ℚ) - (A000120 (A006519 (n + 1)).toNat : ℚ)⌉

end

end A331959.P14361339179916360472

/-! ## A331959.P2194982651585465348

`A006530(lcm(A098844(n+2), A132027(n+2)))`
-/

namespace A331959.P2194982651585465348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A098844 (n + 2)) (A132027 (n + 2)))

end

end A331959.P2194982651585465348

/-! ## A331959.P8220745735469180500

`A006530(A061537(n+2)*A290480(n+1))`
-/

namespace A331959.P8220745735469180500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061537 (n + 2) * A290480 (n + 1)).toNat

end

end A331959.P8220745735469180500

/-! ## A331959.P13887102217538052901

`A006530(A061537(n+2)*A304404(n+1))`
-/

namespace A331959.P13887102217538052901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061537 (n + 2) * A304404 (n + 1)).toNat

end

end A331959.P13887102217538052901

/-!
# A331960: Integers whose square root has a continued fraction [b(0);[b(1),...,b(p)]] with a period p > 2 such that b(1)=b(2)=...=b(p-1).

The programs for A331960, there is no canonical definition to state claims against.
-/

/-! ## A331960.P8822487776134303703

`∩[A233593(n+1), A345475(n+1)]`
-/

namespace A331960.P8822487776134303703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331960.P8822487776134303703

/-!
# A331961: a(n) is the greatest square number k such that n AND k = k (where AND denotes the bitwise AND operator).

The programs for A331961, there is no canonical definition to state claims against.
-/

/-! ## A331961.P15318518598284245699

`and(n, A097509(A242709(n+1))²)`
-/

namespace A331961.P15318518598284245699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A097509 (A242709 (n + 1)).toNat ^ 2)

end

end A331961.P15318518598284245699

/-! ## A331961.P1667882245099378413

`and(n, A297961(A327832(n+1)))`
-/

namespace A331961.P1667882245099378413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A297961 (A327832 (n + 1)).toNat)

end

end A331961.P1667882245099378413

/-! ## A331961.P17750352115251382171

`and(n, A297961(A340346(n+1)))`
-/

namespace A331961.P17750352115251382171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A297961 (A340346 (n + 1)).toNat)

end

end A331961.P17750352115251382171

/-! ## A331961.P240558929175459599

`and(n, A078615(A036834(n+7)))`
-/

namespace A331961.P240558929175459599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A078615 (A036834 (n + 7)).toNat)

end

end A331961.P240558929175459599

/-! ## A331961.P4013437467737319697

`and(n, A020639(A260989(n+1))²)`
-/

namespace A331961.P4013437467737319697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A020639 (A260989 (n + 1)).toNat ^ 2)

end

end A331961.P4013437467737319697

/-!
# A331962: Triangle read by rows: row j lists j primes by ascending n bit bientropy (n >= 8).

The programs for A331962, there is no canonical definition to state claims against.
-/

/-! ## A331962.P15279849166077949187

`p?[A014631(A057508(A003602(n+1)))]`
-/

namespace A331962.P15279849166077949187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (A057508 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331962.P15279849166077949187

/-! ## A331962.P760988892448313751

`p?[A187829(A271647(A004741(n+1)))]`
-/

namespace A331962.P760988892448313751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A271647 (A004741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331962.P760988892448313751

/-! ## A331962.P3640138330010536411

`p?[A271647(A004741(n+1))%A000043(n+1)]`
-/

namespace A331962.P3640138330010536411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271647 (A004741 (n + 1)).toNat) (A000043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331962.P3640138330010536411

/-! ## A331962.P2018206421923866214

`p?[A271647(A004741(n+1))]%A247442(n+2)`
-/

namespace A331962.P2018206421923866214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (A004741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A247442 (n + 2))

end

end A331962.P2018206421923866214

/-! ## A331962.P14531062030002640

`A106696(n+6)+A006927(A006927(n))`
-/

namespace A331962.P14531062030002640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106696 (n + 6) + A006927 (A006927 n).toNat

end

end A331962.P14531062030002640

/-!
# A331963: Matula-Goebel numbers of semi-lone-child-avoiding rooted identity trees.

The programs for A331963, there is no canonical definition to state claims against.
-/

/-! ## A331963.P5915156307010679010

`record[A348066(A331965(n+1))]`
-/

namespace A331963.P5915156307010679010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A331965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331963.P5915156307010679010

/-! ## A331963.P878947493767347439

`record[A348066(A331994(n+1))]`
-/

namespace A331963.P878947493767347439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A331994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331963.P878947493767347439

/-! ## A331963.P5818317373130887492

`∩[A276625(n+1), A331994(n+1)]`
-/

namespace A331963.P5818317373130887492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331963.P5818317373130887492

/-!
# A331964: Number of semi-lone-child-avoiding rooted identity trees with n vertices.

The programs for A331964, there is no canonical definition to state claims against.
-/

/-! ## A331964.P9661137415617463874

`A000196(A084202(n)²)-char[15]`
-/

namespace A331964.P9661137415617463874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084202 n ^ 2).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A331964.P9661137415617463874

/-! ## A331964.P7221009709806102647

`A089868(abs(A084202(n)))`
-/

namespace A331964.P7221009709806102647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 |A084202 n|.toNat

end

end A331964.P7221009709806102647

/-! ## A331964.P18201580622603894395

`abs(A084202(n)%A117539(n))`
-/

namespace A331964.P18201580622603894395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A084202 n) (A117539 n)|

end

end A331964.P18201580622603894395

/-! ## A331964.P13593364819594143681

`abs(A084202(n))%A356211(n+1)`
-/

namespace A331964.P13593364819594143681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A084202 n| (A356211 (n + 1))

end

end A331964.P13593364819594143681

/-! ## A331964.P14161613161550520439

`abs(A084202(A029931(ceil(2^(n-1)))))`
-/

namespace A331964.P14161613161550520439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084202 (A029931 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat|

end

end A331964.P14161613161550520439

/-!
# A331965: Matula-Goebel numbers of lone-child-avoiding rooted semi-identity trees.

The programs for A331965, there is no canonical definition to state claims against.
-/

/-! ## A331965.P6594367190368148052

`∩[A291636(n+1), A331994(n+1)]`
-/

namespace A331965.P6594367190368148052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331965.P6594367190368148052

/-! ## A331965.P8827621133229423590

`∩[A324854(n+1), A331994(n+1)]`
-/

namespace A331965.P8827621133229423590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331965.P8827621133229423590

/-! ## A331965.P2698857379990455484

`∩[A003963(A322385(n+1)), A331994(n+1)]`
-/

namespace A331965.P2698857379990455484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A322385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331965.P2698857379990455484

/-! ## A331965.P14923458169392749177

`A291636(lt[A245980(n), A324765(n+2)])`
-/

namespace A331965.P14923458169392749177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331965.P14923458169392749177

/-! ## A331965.P910084133632109712

`A291636(lt[A145890(n), A035043(3*n+2)])`
-/

namespace A331965.P910084133632109712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331965.P910084133632109712

/-!
# A331966: Number of lone-child-avoiding rooted semi-identity trees with n vertices.

The programs for A331966, there is no canonical definition to state claims against.
-/

/-! ## A331966.P18087523131926568560

`A331488(n+1)+A089868(A247162(n+1))`
-/

namespace A331966.P18087523131926568560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A089868 (A247162 (n + 1)).toNat

end

end A331966.P18087523131926568560

/-! ## A331966.P11734006448089852244

`A247162(n+1)+A178798(A115205(n))+A052525(n)`
-/

namespace A331966.P11734006448089852244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 1) + (A178798 (A115205 n).toNat + A052525 n)

end

end A331966.P11734006448089852244

/-! ## A331966.P17206540674813530234

`A247162(n+1)+A052525(n)-A097795(A022167(n))`
-/

namespace A331966.P17206540674813530234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 1) + (A052525 n - A097795 (A022167 n).toNat)

end

end A331966.P17206540674813530234

/-! ## A331966.P11783753655419600735

`A135660(A191768(n)+A002865(n))`
-/

namespace A331966.P11783753655419600735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A191768 n + A002865 n).toNat

end

end A331966.P11783753655419600735

/-! ## A331966.P2578228459210542620

`A135660(A256893(n)+A191768(n))`
-/

namespace A331966.P2578228459210542620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A256893 n + A191768 n).toNat

end

end A331966.P2578228459210542620

/-!
# A331967: Matula-Goebel numbers of lone-child-avoiding achiral rooted trees.

The programs for A331967, there is no canonical definition to state claims against.
-/

/-! ## A331967.P14362775902846996708

`∩[A001597(n+1), A291441(n+1)]`
-/

namespace A331967.P14362775902846996708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331967.P14362775902846996708

/-! ## A331967.P13470248814214562135

`∩[A001694(n+1), A291441(n+1)]`
-/

namespace A331967.P13470248814214562135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331967.P13470248814214562135

/-! ## A331967.P9459082627203927335

`∩[A025475(n+1), A291441(n+1)]`
-/

namespace A331967.P9459082627203927335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331967.P9459082627203927335

/-! ## A331967.P11581563841616464979

`∩[A076292(n+1), A291441(n+1)]`
-/

namespace A331967.P11581563841616464979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331967.P11581563841616464979

/-! ## A331967.P1545565462903198022

`∩[A134611(n+1), A291441(n+1)]`
-/

namespace A331967.P1545565462903198022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331967.P1545565462903198022

/-!
# A331968: Maximum number of unit squares of a snake-like polyomino in an n X n square box.

The programs for A331968, there is no canonical definition to state claims against.
-/

/-! ## A331968.P7329878094781123093

`A360917((n+1)²+n²)`
-/

namespace A331968.P7329878094781123093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 ((n + 1) ^ 2 + n ^ 2)

end

end A331968.P7329878094781123093

/-! ## A331968.P9420279132968075354

`A360917(A001844(n))+A086015(n)`
-/

namespace A331968.P9420279132968075354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (A001844 n).toNat + A086015 n

end

end A331968.P9420279132968075354

/-! ## A331968.P8484914658241937177

`A360917(A001844(n))+A137579(n)`
-/

namespace A331968.P8484914658241937177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (A001844 n).toNat + A137579 n

end

end A331968.P8484914658241937177

/-! ## A331968.P4562390518720197923

`A360917(A001844(n))%A297570(n)`
-/

namespace A331968.P4562390518720197923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360917 (A001844 n).toNat) (A297570 n)

end

end A331968.P4562390518720197923

/-! ## A331968.P7654507318297758046

`A360917(A001844(n))+A000007(n+1)`
-/

namespace A331968.P7654507318297758046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (A001844 n).toNat + A000007 (n + 1)

end

end A331968.P7654507318297758046

/-!
# A331969: T(n, k) = [x^(n-k)] 1/(((1 - 2*x)^k)*(1 - x)^(k + 1)). Triangle read by rows, for 0 <= k <= n.

The programs for A331969, there is no canonical definition to state claims against.
-/

/-! ## A331969.P4770116167084093854

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A331969.P4770116167084093854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp2 a n

end

end A331969.P4770116167084093854

/-! ## A331969.P16800583849461578428

`A121463(A194061(n+1))`
-/

namespace A331969.P16800583849461578428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121463 (A194061 (n + 1)).toNat

end

end A331969.P16800583849461578428

/-! ## A331969.P16395658249278286064

`A124237(n)-A206306(n+1)`
-/

namespace A331969.P16395658249278286064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124237 n - A206306 (n + 1)

end

end A331969.P16395658249278286064

/-! ## A331969.P162803765310833598

`2*A124237(n)-A110441(n)`
-/

namespace A331969.P162803765310833598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124237 n - A110441 n

end

end A331969.P162803765310833598

/-! ## A331969.P18020633316388548310

`A110441(n)-(A206306(n+1)+A206306(n+1))`
-/

namespace A331969.P18020633316388548310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 n - (A206306 (n + 1) + A206306 (n + 1))

end

end A331969.P18020633316388548310

/-! ## A331969.P72711200690207086

`A110441(n)-A005843(A110441(n)-A124237(n))`
-/

namespace A331969.P72711200690207086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 n - A005843 (A110441 n - A124237 n).toNat

end

end A331969.P72711200690207086

/-!
# A331970: The sum of the proper bi-unitary divisors of n.

The programs for A331970, there is no canonical definition to state claims against.
-/

/-! ## A331970.P9612929656970118345

`A188999(n+1)-(n+1)`
-/

namespace A331970.P9612929656970118345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (n + 1) - (n + 1 : ℤ)

end

end A331970.P9612929656970118345

/-! ## A331970.P18037286411560127755

`A001065(n+1)-A319072(n+1)`
-/

namespace A331970.P18037286411560127755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A319072 (n + 1)

end

end A331970.P18037286411560127755

/-! ## A331970.P10717681071562464390

`A000203(n+1)-(A319072(n+1)+n+1)`
-/

namespace A331970.P10717681071562464390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A319072 (n + 1) + (n + 1 : ℤ))

end

end A331970.P10717681071562464390

/-! ## A331970.P14581710350409505588

`(A188999(n+1)+A000217(n))%A000217(n+1)`
-/

namespace A331970.P14581710350409505588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188999 (n + 1) + A000217 n) (A000217 (n + 1))

end

end A331970.P14581710350409505588

/-! ## A331970.P15193659054174376215

`(A188999(n+1)+A001065(n+1))%A000203(n+1)`
-/

namespace A331970.P15193659054174376215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188999 (n + 1) + A001065 (n + 1)) (A000203 (n + 1))

end

end A331970.P15193659054174376215

/-! ## A331970.P15928878436749087846

`A023443(A188999(n+1)-n)`
-/

namespace A331970.P15928878436749087846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188999 (n + 1) - (n : ℤ)).toNat

end

end A331970.P15928878436749087846

/-! ## A331970.P2990506314147535374

`A023451(A188999(n+1)+A022964(n))`
-/

namespace A331970.P2990506314147535374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A188999 (n + 1) + A022964 n).toNat

end

end A331970.P2990506314147535374

/-!
# A331973: a(n) is the number of values of m such that the sum of proper infinitary divisors of m (A126168) is n.

The programs for A331973, there is no canonical definition to state claims against.
-/

/-! ## A331973.P8746352328081000350

`A324884(A213267(n*A111604(n+1)))`
-/

namespace A331973.P8746352328081000350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (A213267 ((n : ℤ) * A111604 (n + 1)).toNat).toNat

end

end A331973.P8746352328081000350

/-! ## A331973.P5992853554926606323

`A275806(A127817(n+1)%A098576(n))`
-/

namespace A331973.P5992853554926606323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (Int.tmod (A127817 (n + 1)) (A098576 n)).toNat

end

end A331973.P5992853554926606323

/-! ## A331973.P7931266370255442955

`A069010(A232534(n+1)%A232543(n+1))`
-/

namespace A331973.P7931266370255442955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.tmod (A232534 (n + 1)) (A232543 (n + 1))).toNat

end

end A331973.P7931266370255442955

/-!
# A331976: Odd integers m that divide the sum of the first m nonzero Fibonacci numbers.

The programs for A331976, there is no canonical definition to state claims against.
-/

/-! ## A331976.P1133770841054947890

`∩[or(1, A124456(n+1)), A124456(n+1)]`
-/

namespace A331976.P1133770841054947890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124456 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331976.P1133770841054947890

/-! ## A331976.P4986198685010393139

`A124456(n+2)-A010054(A000124(n))`
-/

namespace A331976.P4986198685010393139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 2) - A010054 (A000124 n).toNat

end

end A331976.P4986198685010393139

/-! ## A331976.P10573199734783999989

`A124456(n+2)-A101688(A000217(n))`
-/

namespace A331976.P10573199734783999989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 2) - A101688 (A000217 n).toNat

end

end A331976.P10573199734783999989

/-! ## A331976.P15691980604866655625

`A124456(A051162(∑[n+1]+2)-1)`
-/

namespace A331976.P15691980604866655625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (A051162 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1).toNat

end

end A331976.P15691980604866655625

/-! ## A331976.P3280111954445977872

`A124456(A124456(∑[n+1]+1)%2+n+1)`
-/

namespace A331976.P3280111954445977872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (Int.tmod (A124456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2 + (n : ℤ) + 1).toNat

end

end A331976.P3280111954445977872

/-! ## A331976.P5543997888585375174

`A124456(A002024(∑[n+2]-1))`
-/

namespace A331976.P5543997888585375174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A331976.P5543997888585375174

/-! ## A331976.P739242024274115969

`A124456(n+2)-A010054(A034856(n+1))`
-/

namespace A331976.P739242024274115969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 2) - A010054 (A034856 (n + 1)).toNat

end

end A331976.P739242024274115969

/-! ## A331976.P6546461537887468089

`A124456((n+2)^A178334(n))`
-/

namespace A331976.P6546461537887468089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A331976.P6546461537887468089

/-! ## A331976.P7710902159420744499

`A124456(n+2)-A010054(2*n²)`
-/

namespace A331976.P7710902159420744499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 2) - A010054 (2 * n ^ 2)

end

end A331976.P7710902159420744499

/-!
# A331977: Integers m such that m and m+1 are terms of A111035.

The programs for A331977, there is no canonical definition to state claims against.
-/

/-! ## A331977.P13518067898534662574

`∩[A111035(n+1)-1, A111035(n+1)]`
-/

namespace A331977.P13518067898534662574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331977.P13518067898534662574

/-! ## A331977.P10469285811455790473

`∩[A086504(n+1), A263161(n+1)]`
-/

namespace A331977.P10469285811455790473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331977.P10469285811455790473

/-! ## A331977.P18109656012307992233

`∩[A094399(n+1), A263161(n+1)]`
-/

namespace A331977.P18109656012307992233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331977.P18109656012307992233

/-!
# A331978: E.g.f.: -log(2 - cosh(x)) (even powers only).

The programs for A331978, there is no canonical definition to state claims against.
-/

/-! ## A331978.P13181055167390275741

`record[n%2*A327034(n)]`
-/

namespace A331978.P13181055167390275741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A327034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331978.P13181055167390275741

/-! ## A331978.P12238355640268905546

`record[A000035(n)*A327034(n)]`
-/

namespace A331978.P12238355640268905546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A327034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331978.P12238355640268905546

/-! ## A331978.P18328173676384046440

`record[A062157(n)*A327034(n)]`
-/

namespace A331978.P18328173676384046440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A327034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331978.P18328173676384046440

/-! ## A331978.P1347300022187885378

`record[A088705(n)*A327034(n)]`
-/

namespace A331978.P1347300022187885378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n * A327034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331978.P1347300022187885378

/-! ## A331978.P562484544191198942

`A327034(A004273(n))%A000819(n)`
-/

namespace A331978.P562484544191198942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327034 (A004273 n).toNat) (A000819 n)

end

end A331978.P562484544191198942

/-!
# A331979: Number of compositions (ordered partitions) of n into distinct nontrivial divisors of n.

The programs for A331979, there is no canonical definition to state claims against.
-/

/-! ## A331979.P6651087284889018773

`A117384(A131110(n+1))*A293814(n)`
-/

namespace A331979.P6651087284889018773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A131110 (n + 1)).toNat * A293814 n

end

end A331979.P6651087284889018773

/-!
# A331980: Number of compositions (ordered partitions) of n into distinct odd parts > 1.

The programs for A331980, there is no canonical definition to state claims against.
-/

/-! ## A331980.P8206500231016466882

`A283470(A287597(n)+2^n)`
-/

namespace A331980.P8206500231016466882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (A287597 n + (2 ^ n : ℤ)).toNat

end

end A331980.P8206500231016466882

/-! ## A331980.P16469360968034813547

`A001511(A005578(n))*A178697(n)`
-/

namespace A331980.P16469360968034813547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005578 n).toNat * A178697 n

end

end A331980.P16469360968034813547

/-! ## A331980.P7966738953419023128

`A010872(A011782(n))*A178697(n)`
-/

namespace A331980.P7966738953419023128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A011782 n).toNat * A178697 n

end

end A331980.P7966738953419023128

/-! ## A331980.P8155599581474011710

`A027615(A011782(n))*A178691(n)`
-/

namespace A331980.P8155599581474011710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A011782 n).toNat * A178691 n

end

end A331980.P8155599581474011710

/-! ## A331980.P12354982085532576129

`A027615(A011782(n))*A178692(n)`
-/

namespace A331980.P12354982085532576129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A011782 n).toNat * A178692 n

end

end A331980.P12354982085532576129

/-!
# A331981: Number of compositions (ordered partitions) of n into distinct odd primes.

The programs for A331981, there is no canonical definition to state claims against.
-/

/-! ## A331981.P5932418694168693092

`A332033(n)-A163533(A251762(n))`
-/

namespace A331981.P5932418694168693092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332033 n - A163533 (A251762 n).toNat

end

end A331981.P5932418694168693092

/-! ## A331981.P8926545998385684752

`A332033(n)%A247624(3*n+1)`
-/

namespace A331981.P8926545998385684752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332033 n) (A247624 (3 * n + 1))

end

end A331981.P8926545998385684752

/-! ## A331981.P4596707746022478339

`A332033(n)+A181838(A173018(n))`
-/

namespace A331981.P4596707746022478339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332033 n + A181838 (A173018 n).toNat

end

end A331981.P4596707746022478339

/-! ## A331981.P3644091660475573654

`A332033(n*A331926(A024939(n)))`
-/

namespace A331981.P3644091660475573654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332033 ((n : ℤ) * A331926 (A024939 n).toNat).toNat

end

end A331981.P3644091660475573654

/-! ## A331981.P10071324854245117686

`A326976(A085738(n))*A332033(n)`
-/

namespace A331981.P10071324854245117686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326976 (A085738 n).toNat * A332033 n

end

end A331981.P10071324854245117686

/-!
# A331982: Number of compositions (ordered partitions) of n into distinct odd squarefree parts.

The programs for A331982, there is no canonical definition to state claims against.
-/

/-! ## A331982.P4907131244717110072

`A032021(n)-A069851(A076467(3*(n+1)))`
-/

namespace A331982.P4907131244717110072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032021 n - A069851 (A076467 (3 * (n + 1))).toNat

end

end A331982.P4907131244717110072

/-!
# A331983: Number of compositions (ordered partitions) of n into distinct squares > 1.

The programs for A331983, there is no canonical definition to state claims against.
-/

/-! ## A331983.P15296789372966448192

`A331844(n)*A343344(a(n-1)²)` with `a(0)=1`
-/

namespace A331983.P15296789372966448192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331844 n * A343344 (a (n - 1) ^ 2).toNat

end

end A331983.P15296789372966448192

/-! ## A331983.P7051502376795773690

`A069283((3-a(n-1))^A331844(n))` with `a(0)=1`
-/

namespace A331983.P7051502376795773690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069283 (SequenceMachineLib.roundAway ((3 - a (n - 1) : ℚ) ^ (A331844 n : ℤ))).toNat

end

end A331983.P7051502376795773690

/-! ## A331983.P11719067173531046637

`C(A331844(n), 6^A001787(a(n-1)))` with `a(0)=1`
-/

namespace A331983.P11719067173531046637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A331844 n).toNat (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A001787 (a (n - 1)) : ℤ))).toNat

end

end A331983.P11719067173531046637

/-! ## A331983.P13244125541047785048

`C(A331844(n), A000045(C(12, a(n-1))))` with `a(0)=1`
-/

namespace A331983.P13244125541047785048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A331844 n).toNat (A000045 (Nat.choose 12 (a (n - 1)))).toNat

end

end A331983.P13244125541047785048

/-! ## A331983.P5902432003756597188

`A326702(A279360(n+1)*A279360(n))`
-/

namespace A331983.P5902432003756597188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A279360 (n + 1) * A279360 n).toNat

end

end A331983.P5902432003756597188

/-!
# A331984: Number of compositions (ordered partitions) of n into distinct square pyramidal numbers.

The programs for A331984, there is no canonical definition to state claims against.
-/

/-! ## A331984.P2460391761442097086

`A298246(n)*A347716(A004826(n+1)*A298246(n))`
-/

namespace A331984.P2460391761442097086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 n * A347716 (A004826 (n + 1) * A298246 n).toNat

end

end A331984.P2460391761442097086

/-! ## A331984.P6508223265511631080

`A331845(lt[0, A347716(n)])`
-/

namespace A331984.P6508223265511631080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A331984.P6508223265511631080

/-! ## A331984.P2557395740113456137

`A298246(n)*A347716(A004826(n+1))`
-/

namespace A331984.P2557395740113456137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 n * A347716 (A004826 (n + 1)).toNat

end

end A331984.P2557395740113456137

/-! ## A331984.P13702218037823719469

`A124778(A331845(n)²)*A331845(A004826(n+1))`
-/

namespace A331984.P13702218037823719469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A331845 n ^ 2).toNat * A331845 (A004826 (n + 1)).toNat

end

end A331984.P13702218037823719469

/-! ## A331984.P10996066723061836041

`A331845(A004826(n+1))-A010052(A006562(2*n+1))`
-/

namespace A331984.P10996066723061836041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (A004826 (n + 1)).toNat - A010052 (A006562 (2 * n + 1)).toNat

end

end A331984.P10996066723061836041

/-!
# A331985: a(n) is the least positive k such that n AND floor(n/k) = 0 (where AND denotes the bitwise AND operator).

The programs for A331985, there is no canonical definition to state claims against.
-/

/-! ## A331985.P6135998159374051269

`A233972(A233972(4*n+2))`
-/

namespace A331985.P6135998159374051269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233972 (A233972 (4 * n + 2)).toNat

end

end A331985.P6135998159374051269

/-!
# A331986: Number of snake-like polyominoes with the maximum possible number of unit squares in an n X n square.

The programs for A331986, there is no canonical definition to state claims against.
-/

/-! ## A331986.P4926967274414855954

`A360916(∑[4*n]+1)`
-/

namespace A331986.P4926967274414855954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A331986.P4926967274414855954

/-! ## A331986.P6830260820983307523

`abs(A360916(A001844(n))/(-1)^n)`
-/

namespace A331986.P6830260820983307523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A360916 (A001844 n).toNat : ℚ) / ((-1) ^ n : ℚ)|

end

end A331986.P6830260820983307523

/-! ## A331986.P4979801344535177345

`A360916(A001844(n))+A137579(n)`
-/

namespace A331986.P4979801344535177345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360916 (A001844 n).toNat + A137579 n

end

end A331986.P4979801344535177345

/-! ## A331986.P6968662772325312700

`A360916(A001844(n))%A013708(n)`
-/

namespace A331986.P6968662772325312700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360916 (A001844 n).toNat) (A013708 n)

end

end A331986.P6968662772325312700

/-! ## A331986.P17651988545272090422

`lcm(A360208(n), A360916(A001844(n)))`
-/

namespace A331986.P17651988545272090422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A360208 n) (A360916 (A001844 n).toNat)

end

end A331986.P17651988545272090422

/-!
# A331987: a(n) = ((n + 1) - 9*(n + 1)^2 + 8*(n + 1)^3)/6.

The programs for A331987, the canonical program `A331987.P16427103461757914771` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331987 has offset 0).

The definition of A331987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1-9*(n+1)²+8*(n+1)^3)/6` (program `A331987.P8188556552920887410`, by `A331987.P8188556552920887410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331987.P10879171051709052631

`n*C(8*n+8, 2)/24`
-/

namespace A331987.P10879171051709052631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (8 * n + 8) 2 : ℚ) / 24

end

end A331987.P10879171051709052631

namespace A331987

/-- `n*C(8*n+8, 2)/24` -/
def P10879171051709052631.Spec : Prop :=
  ∀ n, P10879171051709052631.a n = (A331987 n : ℚ)

end A331987

/-! ## A331987.P6703681423679517881

`n*(n+1)*(8*n+7)/6`
-/

namespace A331987.P6703681423679517881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (8 * n + 7) : ℚ) / 6

end

end A331987.P6703681423679517881

namespace A331987

/-- `n*(n+1)*(8*n+7)/6` -/
def P6703681423679517881.Spec : Prop :=
  ∀ n, P6703681423679517881.a n = (A331987 n : ℚ)

theorem P6703681423679517881.correct : P6703681423679517881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A331987, Nat.add_sub_cancel, A331987.P6703681423679517881.a, A331987.P16427103461757914771.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A331987, Nat.add_sub_cancel, A331987.P6703681423679517881.a, A331987.P16427103461757914771.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A331987

/-! ## A331987.P8188556552920887410

`(n+1-9*(n+1)²+8*(n+1)^3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331987.P8188556552920887410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (9 * (n + 1) ^ 2 : ℤ) + (8 * (n + 1) ^ 3 : ℤ) : ℚ) / 6

end

end A331987.P8188556552920887410

namespace A331987

/-- `(n+1-9*(n+1)²+8*(n+1)^3)/6` -/
def P8188556552920887410.Spec : Prop :=
  ∀ n, P8188556552920887410.a n = (A331987 n : ℚ)

theorem P8188556552920887410.correct : P8188556552920887410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A331987, Nat.add_sub_cancel, A331987.P8188556552920887410.a, A331987.P16427103461757914771.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A331987, Nat.add_sub_cancel, A331987.P8188556552920887410.a, A331987.P16427103461757914771.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A331987

/-! ## A331987.P13299145506826612329

`C(n+2, 3)+C(n+1, 3)+2*(n+1)*C(n+1, 2)`
-/

namespace A331987.P13299145506826612329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + Nat.choose (n + 1) 3 + 2 * (n + 1) * Nat.choose (n + 1) 2

end

end A331987.P13299145506826612329

namespace A331987

/-- `C(n+2, 3)+C(n+1, 3)+2*(n+1)*C(n+1, 2)` -/
def P13299145506826612329.Spec : Prop :=
  ∀ n, (P13299145506826612329.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P16427103461757914771

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=23, a(3)=62`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331987

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16427103461757914771.Spec : Prop :=
  ∀ n, P16427103461757914771.a n = A331987 n

theorem P16427103461757914771.correct : P16427103461757914771.Spec := by
  intro n
  simp only [A331987]

end A331987

/-! ## A331987.P12627737658535377619

`∑[n*Δ[C(2*n, 2)]]`
-/

namespace A331987.P12627737658535377619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331987.P12627737658535377619

namespace A331987

/-- `∑[n*Δ[C(2*n, 2)]]` -/
def P12627737658535377619.Spec : Prop :=
  ∀ n, P12627737658535377619.a n = A331987 n

end A331987

/-! ## A331987.P7896194192375251993

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=5`
-/

namespace A331987.P7896194192375251993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331987.P7896194192375251993

namespace A331987

/-- `∑[∑[a(n-1)+8]]` -/
def P7896194192375251993.Spec : Prop :=
  ∀ n, (P7896194192375251993.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P9880888633545888890

`∑[n]+C(2*(n+1), 3)`
-/

namespace A331987.P9880888633545888890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * (n + 1)) 3

end

end A331987.P9880888633545888890

namespace A331987

/-- `∑[n]+C(2*(n+1), 3)` -/
def P9880888633545888890.Spec : Prop :=
  ∀ n, (P9880888633545888890.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P14494154777738532435

`∑[n²]+lcm(n, (n+1)²)`
-/

namespace A331987.P14494154777738532435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n ((n + 1) ^ 2)

end

end A331987.P14494154777738532435

namespace A331987

/-- `∑[n²]+lcm(n, (n+1)²)` -/
def P14494154777738532435.Spec : Prop :=
  ∀ n, (P14494154777738532435.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P14143877460262893492

`∑[∑[ogf((5x+3x^2)/(1-2x+x^2))]]`
-/

namespace A331987.P14143877460262893492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331987.P14143877460262893492

namespace A331987

/-- `∑[∑[ogf((5x+3x^2)/(1-2x+x^2))]]` -/
def P14143877460262893492.Spec : Prop :=
  ∀ n, P14143877460262893492.a n = A331987 n

end A331987

/-! ## A331987.P13090535862573043985

`ogf((5x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A331987.P13090535862573043985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -4, 6, -4, 1] n

end

end A331987.P13090535862573043985

namespace A331987

/-- `ogf((5x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13090535862573043985.Spec : Prop :=
  ∀ n, P13090535862573043985.a n = A331987 n

end A331987

/-! ## A331987.P8308796791334445073

`∑[3-∑[a(n-1)-8]]` with `a(0)=3`
-/

namespace A331987.P8308796791334445073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331987.P8308796791334445073

namespace A331987

/-- `∑[3-∑[a(n-1)-8]]` -/
def P8308796791334445073.Spec : Prop :=
  ∀ n, P8308796791334445073.a n = A331987 n

end A331987

/-! ## A331987.P8824129534797928568

`Δ[(2*n+1)*C(n+1, 3)]`
-/

namespace A331987.P8824129534797928568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A331987.P8824129534797928568

namespace A331987

/-- `Δ[(2*n+1)*C(n+1, 3)]` -/
def P8824129534797928568.Spec : Prop :=
  ∀ n, P8824129534797928568.a n = A331987 n

end A331987

/-! ## A331987.P4140411381059959641

`(2*n)²+a(n-1)+n` with `a(0)=0`
-/

namespace A331987.P4140411381059959641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n) ^ 2 + (a (n - 1) + n)

end

end A331987.P4140411381059959641

namespace A331987

/-- `(2*n)²+a(n-1)+n` -/
def P4140411381059959641.Spec : Prop :=
  ∀ n, (P4140411381059959641.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P18022166569124719216

`a(n-1)+n*(4*n+1)` with `a(0)=0`
-/

namespace A331987.P18022166569124719216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (4 * n + 1)

end

end A331987.P18022166569124719216

namespace A331987

/-- `a(n-1)+n*(4*n+1)` -/
def P18022166569124719216.Spec : Prop :=
  ∀ n, (P18022166569124719216.a n : ℤ) = A331987 n

end A331987

/-! ## A331987.P6649396364621817405

`-∑[n-lcm(2*n+1, 2*n)]`
-/

namespace A331987.P6649396364621817405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331987.P6649396364621817405

namespace A331987

/-- `-∑[n-lcm(2*n+1, 2*n)]` -/
def P6649396364621817405.Spec : Prop :=
  ∀ n, P6649396364621817405.a n = A331987 n

end A331987

/-! ## A331987.P9557206352657557137

`∑[lcm(2, (2*n+1)*2*n)]-∑[n]`
-/

namespace A331987.P9557206352657557137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n + 1) * (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A331987.P9557206352657557137

namespace A331987

/-- `∑[lcm(2, (2*n+1)*2*n)]-∑[n]` -/
def P9557206352657557137.Spec : Prop :=
  ∀ n, P9557206352657557137.a n = A331987 n

end A331987

/-! ## A331987.P14478415466968607873

`2*n-(n-(2*n)²-a(n-1))` with `a(0)=0`
-/

namespace A331987.P14478415466968607873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - ((2 * n) ^ 2 : ℤ) - a (n - 1))

end

end A331987.P14478415466968607873

namespace A331987

/-- `2*n-(n-(2*n)²-a(n-1))` -/
def P14478415466968607873.Spec : Prop :=
  ∀ n, P14478415466968607873.a n = A331987 n

end A331987

/-! ## A331987.P1930188612635890790

`∑[(2*n+1)*2*n]-∑[gcd(n, 2*n)]`
-/

namespace A331987.P1930188612635890790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A331987.P1930188612635890790

namespace A331987

/-- `∑[(2*n+1)*2*n]-∑[gcd(n, 2*n)]` -/
def P1930188612635890790.Spec : Prop :=
  ∀ n, P1930188612635890790.a n = A331987 n

end A331987

/-! ## A331987.P10236408286175520842

`∑[2*n*and(2*n+1, 2*n)]+∑[n]`
-/

namespace A331987.P10236408286175520842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A331987.P10236408286175520842

namespace A331987

/-- `∑[2*n*and(2*n+1, 2*n)]+∑[n]` -/
def P10236408286175520842.Spec : Prop :=
  ∀ n, (P10236408286175520842.a n : ℤ) = A331987 n

end A331987

/-!
# A331989: Lexicographically earliest sequence of distinct positive integers such that five successive digits are always distinct.

The programs for A331989, there is no canonical definition to state claims against.
-/

/-! ## A331989.P7023266488394438710

`A179978(A095966(n+1)+1)`
-/

namespace A331989.P7023266488394438710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (A095966 (n + 1) + 1).toNat

end

end A331989.P7023266488394438710

/-! ## A331989.P11531342723514896408

`lt[(n-1)/2-2, A072064(n+1)]+1`
-/

namespace A331989.P11531342723514896408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A331989.P11531342723514896408

/-! ## A331989.P3326200811771204495

`∑[A185126(A212389(n))]`
-/

namespace A331989.P3326200811771204495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185126 (A212389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331989.P3326200811771204495

/-! ## A331989.P8411455809910117602

`record[∑[A053119(A005134(n))]]`
-/

namespace A331989.P8411455809910117602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A005134 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331989.P8411455809910117602

/-! ## A331989.P14150403652289529429

`A291168(A067659(2*(n+1)))+n`
-/

namespace A331989.P14150403652289529429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A067659 (2 * (n + 1))).toNat + (n : ℤ)

end

end A331989.P14150403652289529429

/-!
# A331990: Balanced ternary expansion of e.

The programs for A331990, there is no canonical definition to state claims against.
-/

/-! ## A331990.P11869705739077036807

`A330025(or(A174410(n), A314929(n)))`
-/

namespace A331990.P11869705739077036807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (Int.lor (A174410 n) (A314929 n)).toNat

end

end A331990.P11869705739077036807

/-! ## A331990.P5170077539216566809

`A057078(A361384(3*n+5)+A237833(2*(n+2)))`
-/

namespace A331990.P5170077539216566809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A361384 (3 * n + 5) + A237833 (2 * (n + 2))).toNat

end

end A331990.P5170077539216566809

/-! ## A331990.P5027218458161734254

`A163806(record[A008619(A169908(n))])`
-/

namespace A331990.P5027218458161734254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A169908 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331990.P5027218458161734254

/-! ## A331990.P4433375424523764579

`A029883(or(A000332(n), A212742(n)))`
-/

namespace A331990.P4433375424523764579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (Int.lor (A000332 n) (A212742 n)).toNat

end

end A331990.P4433375424523764579

/-! ## A331990.P6355555834042695649

`A049347(A265601(2*n+1)-A132013(n))`
-/

namespace A331990.P6355555834042695649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A265601 (2 * n + 1) - A132013 n).toNat

end

end A331990.P6355555834042695649

/-!
# A331991: Number of semi-lone-child-avoiding achiral rooted trees with n vertices.

The programs for A331991, there is no canonical definition to state claims against.
-/

/-! ## A331991.P12825373222798842547

`A343371(n)-A167865(A028310(n))`
-/

namespace A331991.P12825373222798842547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n - A167865 (A028310 n).toNat

end

end A331991.P12825373222798842547

/-! ## A331991.P16394593356851047113

`A000007(n)+A343371(n)-A167865(n)`
-/

namespace A331991.P16394593356851047113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A343371 n - A167865 n)

end

end A331991.P16394593356851047113

/-! ## A331991.P6086410961777632735

`A054977(n)*A343371(n)-A167865(n)`
-/

namespace A331991.P6086410961777632735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A343371 n - A167865 n

end

end A331991.P6086410961777632735

/-! ## A331991.P6282239671670253359

`A343371(n)-A057427(n)*A167865(n)`
-/

namespace A331991.P6282239671670253359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n - A057427 n * A167865 n

end

end A331991.P6282239671670253359

/-! ## A331991.P13078045753212043140

`A343371(n)-A062157(n)²*A167865(n)`
-/

namespace A331991.P13078045753212043140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n - A062157 n ^ 2 * A167865 n

end

end A331991.P13078045753212043140

/-! ## A331991.P3698585460013349226

`(A343371(n)-A167865(n))^A019426(2*n)`
-/

namespace A331991.P3698585460013349226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343371 n - A167865 n : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A331991.P3698585460013349226

/-! ## A331991.P15340113302576833442

`A060054(A020483(n))+A343371(n)-A167865(n)`
-/

namespace A331991.P15340113302576833442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (A020483 n).toNat + (A343371 n - A167865 n)

end

end A331991.P15340113302576833442

/-!
# A331992: Matula-Goebel numbers of semi-lone-child-avoiding achiral rooted trees.

The programs for A331992, there is no canonical definition to state claims against.
-/

/-! ## A331992.P15805419421442403219

`∩[A127072(n+1), A331936(n+1)]`
-/

namespace A331992.P15805419421442403219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331992.P15805419421442403219

/-! ## A331992.P410558689967771852

`∩[A184155(n+1), A331936(n+1)]`
-/

namespace A331992.P410558689967771852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331992.P410558689967771852

/-! ## A331992.P5837470483812684821

`∩[A192139(n+1), A331936(n+1)]`
-/

namespace A331992.P5837470483812684821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331992.P5837470483812684821

/-! ## A331992.P14474659383945515583

`∩[A302498(n+1), A331936(n+1)]`
-/

namespace A331992.P14474659383945515583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331992.P14474659383945515583

/-! ## A331992.P17476398467402279988

`∩[A331936(n+1), A382215(n+1)]`
-/

namespace A331992.P17476398467402279988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331992.P17476398467402279988

/-!
# A331993: Number of semi-lone-child-avoiding rooted semi-identity trees with n unlabeled vertices.

The programs for A331993, there is no canonical definition to state claims against.
-/

/-! ## A331993.P6707876441290254521

`A316471(n+1)+A225099(A000045(n))`
-/

namespace A331993.P6707876441290254521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316471 (n + 1) + A225099 (A000045 n).toNat

end

end A331993.P6707876441290254521

/-! ## A331993.P1692656539574218430

`A023193(A036617(n)+A036612(n))`
-/

namespace A331993.P1692656539574218430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A036617 n + A036612 n).toNat

end

end A331993.P1692656539574218430

/-! ## A331993.P9227472595944794385

`A023193(A036618(n)+A036611(n))`
-/

namespace A331993.P9227472595944794385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A036618 n + A036611 n).toNat

end

end A331993.P9227472595944794385

/-! ## A331993.P17859562065474921173

`A007477(n)-A341027(A006721(n))`
-/

namespace A331993.P17859562065474921173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n - A341027 ((A006721 n).toNat + 220)

end

end A331993.P17859562065474921173

/-! ## A331993.P17345592110572874596

`A101886(A050253(n))`
-/

namespace A331993.P17345592110572874596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A050253 n).toNat

end

end A331993.P17345592110572874596

/-!
# A331994: Matula-Goebel numbers of semi-lone-child-avoiding rooted semi-identity trees.

The programs for A331994, there is no canonical definition to state claims against.
-/

/-! ## A331994.P6948832634405503461

`∩[A306202(n+1), A331935(n+1)]`
-/

namespace A331994.P6948832634405503461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331994.P6948832634405503461

/-! ## A331994.P12500670940073634830

`A287896(A026622(n)+∑{e}[n+1, #])`
-/

namespace A331994.P12500670940073634830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A026622 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A331994.P12500670940073634830

/-! ## A331994.P3847178609430174145

`A287896(A026622(n)+log2(∏{e}[n+1, 2^#]))`
-/

namespace A331994.P3847178609430174145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (SequenceMachineLib.roundAway ((A026622 n : ℝ) + Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ))).toNat

end

end A331994.P3847178609430174145

/-! ## A331994.P9403972311951495425

`A287896(A026622(n)+∑{p}[n+1, val(n+1, #)])`
-/

namespace A331994.P9403972311951495425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A026622 n + ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)).toNat

end

end A331994.P9403972311951495425

/-! ## A331994.P9217586372557656104

`A287896(A026622(n)+A001222(n+1))`
-/

namespace A331994.P9217586372557656104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A026622 n + A001222 (n + 1)).toNat

end

end A331994.P9217586372557656104

/-!
# A331995: Numbers with at most one distinct prime prime index.

The programs for A331995, there is no canonical definition to state claims against.
-/

/-! ## A331995.P15763305574675475039

`record[n/a(A279952(n))]` with `a(0)=1`
-/

namespace A331995.P15763305574675475039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A279952 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331995.P15763305574675475039

/-! ## A331995.P2125253322739353361

`lt[A279952(n+1), 2]+1`
-/

namespace A331995.P2125253322739353361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331995.P2125253322739353361

/-! ## A331995.P17645626236261894046

`eq[n, n*a(A279952(2*n))]` with `a(0)=1`
-/

namespace A331995.P17645626236261894046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A279952 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331995.P17645626236261894046

/-! ## A331995.P13332249073549739266

`∪[comp[2*lcm(3, n)-n], A331916(n+1)]`
-/

namespace A331995.P13332249073549739266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 3 n : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A331995.P13332249073549739266

/-! ## A331995.P16182341906713233384

`comp[n*C(A279952(A004277(n)), 2)]`
-/

namespace A331995.P16182341906713233384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A279952 (A004277 n).toNat).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A331995.P16182341906713233384

/-! ## A331995.P11117328372920664038

`record[A047439(a(A279952(n)))+n]` with `a(0)=1`
-/

namespace A331995.P11117328372920664038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A047439 (f1 (A279952 n).toNat).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331995.P11117328372920664038

/-! ## A331995.P34336142621633731

`record[n-A004760(a(A279952(n)))]` with `a(0)=1`
-/

namespace A331995.P34336142621633731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - A004760 (f1 (A279952 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331995.P34336142621633731

/-! ## A331995.P8072483483358162412

`lt[A001221(A295665(n+1)), 2]+1`
-/

namespace A331995.P8072483483358162412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295665 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331995.P8072483483358162412

/-! ## A331995.P14583101080334662163

`eq[A279952(A008574(n))!, A057427(n)]`
-/

namespace A331995.P14583101080334662163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A279952 (A008574 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331995.P14583101080334662163

/-! ## A331995.P1936908493412796430

`comp[A319058(n+1)*A328878(n+1)]`
-/

namespace A331995.P1936908493412796430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319058 (n + 1) * A328878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A331995.P1936908493412796430

/-!
# A331996: Number of Pythagorean triples mod n: total number of solutions (x,y,z) to x^2 + y^2 = z^2 mod n with x <= y.

The programs for A331996, there is no canonical definition to state claims against.
-/

/-! ## A331996.P17216152720145414767

`(A088964(n+1)+A062775(n+1))/2`
-/

namespace A331996.P17216152720145414767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088964 (n + 1) + A062775 (n + 1) : ℚ) / 2

end

end A331996.P17216152720145414767

/-! ## A331996.P15538369344227606297

`A001281(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P15538369344227606297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P15538369344227606297

/-! ## A331996.P8623898157838439769

`A004525(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P8623898157838439769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P8623898157838439769

/-! ## A331996.P12901348241912327427

`A004526(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P12901348241912327427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P12901348241912327427

/-! ## A331996.P16063567955101646590

`A014682(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P16063567955101646590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P16063567955101646590

/-! ## A331996.P606708256021479504

`A025480(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P606708256021479504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P606708256021479504

/-! ## A331996.P17928606029830470407

`A026741(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P17928606029830470407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P17928606029830470407

/-! ## A331996.P13910822769201003443

`A029578(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P13910822769201003443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P13910822769201003443

/-! ## A331996.P17223465746875310247

`A032742(A088964(n+1)+A062775(n+1))`
-/

namespace A331996.P17223465746875310247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A088964 (n + 1) + A062775 (n + 1)).toNat

end

end A331996.P17223465746875310247

/-!
# A331998: Triangle of coefficients of quasi-Stirling polynomials.

The programs for A331998, there is no canonical definition to state claims against.
-/

/-! ## A331998.P12959263987709509826

`A156653(∑[char[∑[n]]]²-n)`
-/

namespace A331998.P12959263987709509826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156653 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331998.P12959263987709509826

/-! ## A331998.P11080983351693814453

`gcd(floor(acot(n)²), A156653(A038722(n+1)))`
-/

namespace A331998.P11080983351693814453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A156653 (A038722 (n + 1)).toNat)

end

end A331998.P11080983351693814453

/-! ## A331998.P17319128345679137457

`A156653(A038722(n+1))+A025444(n)`
-/

namespace A331998.P17319128345679137457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156653 (A038722 (n + 1)).toNat + A025444 n

end

end A331998.P17319128345679137457

/-! ## A331998.P3958285120436911980

`A156653(A038722(n+1))^A178489(n)`
-/

namespace A331998.P3958285120436911980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156653 (A038722 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A331998.P3958285120436911980

/-! ## A331998.P4647380659531537993

`A156653(A038722(n+1))%A153893(n)`
-/

namespace A331998.P4647380659531537993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156653 (A038722 (n + 1)).toNat) (A153893 n)

end

end A331998.P4647380659531537993

/-!
# A331999: a(n) is the product of n, the n-th prime and the n-th composite number.

The programs for A331999, the canonical program `A331999.P3156831626282684287` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331999 has offset 1).

The definition of A331999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331999.P3156831626282684287

`(n+1)*A067563(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331999

/-- `(n+1)*A067563(n+1)` -/
def P3156831626282684287.Spec : Prop :=
  ∀ n, P3156831626282684287.a n = A331999 (n + 1)

theorem P3156831626282684287.correct : P3156831626282684287.Spec := by
  intro n
  simp only [A331999, Nat.add_sub_cancel]

end A331999

/-! ## A331999.P10321871208301553493

`(n+1)*A000040(n+1)*A002808(n+1)`
-/

namespace A331999.P10321871208301553493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) * A002808 (n + 1)

end

end A331999.P10321871208301553493

namespace A331999

/-- `(n+1)*A000040(n+1)*A002808(n+1)` -/
def P10321871208301553493.Spec : Prop :=
  ∀ n, P10321871208301553493.a n = A331999 (n + 1)

theorem P10321871208301553493.correct : P10321871208301553493.Spec := by
  intro n
  simp only [A331999, Nat.add_sub_cancel, A331999.P10321871208301553493.a, A331999.P3156831626282684287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A067563, A067563.P8241945958915333115.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331999

/-! ## A331999.P14928307947848051310

`Δ[A007504(n)]*A071228(n+1)`
-/

namespace A331999.P14928307947848051310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071228 (n + 1)

end

end A331999.P14928307947848051310

namespace A331999

/-- `Δ[A007504(n)]*A071228(n+1)` -/
def P14928307947848051310.Spec : Prop :=
  ∀ n, P14928307947848051310.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P1182566016163148483

`A002808(n+1)*A033286(n+1)`
-/

namespace A331999.P1182566016163148483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A033286 (n + 1)

end

end A331999.P1182566016163148483

namespace A331999

/-- `A002808(n+1)*A033286(n+1)` -/
def P1182566016163148483.Spec : Prop :=
  ∀ n, P1182566016163148483.a n = A331999 (n + 1)

theorem P1182566016163148483.correct : P1182566016163148483.Spec := by
  intro n
  simp only [A331999, Nat.add_sub_cancel, A331999.P1182566016163148483.a, A331999.P3156831626282684287.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A033286, A033286.P2794343547372572705.a, A067563, A067563.P8241945958915333115.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331999

/-! ## A331999.P14549032683931668470

`A000040(n+1)*A071228(n+1)`
-/

namespace A331999.P14549032683931668470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A071228 (n + 1)

end

end A331999.P14549032683931668470

namespace A331999

/-- `A000040(n+1)*A071228(n+1)` -/
def P14549032683931668470.Spec : Prop :=
  ∀ n, P14549032683931668470.a n = A331999 (n + 1)

theorem P14549032683931668470.correct : P14549032683931668470.Spec := by
  intro n
  simp only [A331999, Nat.add_sub_cancel, A331999.P14549032683931668470.a, A331999.P3156831626282684287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067563, A067563.P8241945958915333115.a, A071228, A071228.P4535194681487630780.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331999

/-! ## A331999.P8376179707033971225

`A018252(n+2)*A033286(n+1)`
-/

namespace A331999.P8376179707033971225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * A033286 (n + 1)

end

end A331999.P8376179707033971225

namespace A331999

/-- `A018252(n+2)*A033286(n+1)` -/
def P8376179707033971225.Spec : Prop :=
  ∀ n, P8376179707033971225.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P14114807114745356038

`lcm(A067563(n+1), A071228(n+1))`
-/

namespace A331999.P14114807114745356038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067563 (n + 1)) (A071228 (n + 1))

end

end A331999.P14114807114745356038

namespace A331999

/-- `lcm(A067563(n+1), A071228(n+1))` -/
def P14114807114745356038.Spec : Prop :=
  ∀ n, (P14114807114745356038.a n : ℤ) = A331999 (n + 1)

end A331999

/-! ## A331999.P5979568921679960668

`(n+1)*Δ[A007504(n)]*A002808(n+1)`
-/

namespace A331999.P5979568921679960668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) - f1 n) * A002808 (n + 1))

end

end A331999.P5979568921679960668

namespace A331999

/-- `(n+1)*Δ[A007504(n)]*A002808(n+1)` -/
def P5979568921679960668.Spec : Prop :=
  ∀ n, P5979568921679960668.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P1144103138920884344

`(n+1)*A000040(n+1)*A018252(n+2)`
-/

namespace A331999.P1144103138920884344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000040 (n + 1) * A018252 (n + 2))

end

end A331999.P1144103138920884344

namespace A331999

/-- `(n+1)*A000040(n+1)*A018252(n+2)` -/
def P1144103138920884344.Spec : Prop :=
  ∀ n, P1144103138920884344.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P3516886434322529809

`A008578(n+2)*A071228(n+1)`
-/

namespace A331999.P3516886434322529809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A071228 (n + 1)

end

end A331999.P3516886434322529809

namespace A331999

/-- `A008578(n+2)*A071228(n+1)` -/
def P3516886434322529809.Spec : Prop :=
  ∀ n, P3516886434322529809.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P15824671778108249020

`(A164931(n+2)-A033286(n+1))*A071228(n+1)`
-/

namespace A331999.P15824671778108249020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 2) - A033286 (n + 1)) * A071228 (n + 1)

end

end A331999.P15824671778108249020

namespace A331999

/-- `(A164931(n+2)-A033286(n+1))*A071228(n+1)` -/
def P15824671778108249020.Spec : Prop :=
  ∀ n, P15824671778108249020.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P7316591629682745406

`(A164931(n+2)-A008578(n+2))*A002808(n+1)`
-/

namespace A331999.P7316591629682745406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 2) - A008578 (n + 2)) * A002808 (n + 1)

end

end A331999.P7316591629682745406

namespace A331999

/-- `(A164931(n+2)-A008578(n+2))*A002808(n+1)` -/
def P7316591629682745406.Spec : Prop :=
  ∀ n, P7316591629682745406.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P10283294818797572277

`(A171523(n+2)-A002808(n+1))*A008578(n+2)`
-/

namespace A331999.P10283294818797572277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171523 (n + 2) - A002808 (n + 1)) * A008578 (n + 2)

end

end A331999.P10283294818797572277

namespace A331999

/-- `(A171523(n+2)-A002808(n+1))*A008578(n+2)` -/
def P10283294818797572277.Spec : Prop :=
  ∀ n, P10283294818797572277.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P10793990606945297585

`(n+1)*A018252(n+2)*record[A006530(n+2)]`
-/

namespace A331999.P10793990606945297585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A018252 (n + 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331999.P10793990606945297585

namespace A331999

/-- `(n+1)*A018252(n+2)*record[A006530(n+2)]` -/
def P10793990606945297585.Spec : Prop :=
  ∀ n, P10793990606945297585.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P937305106493095995

`(n+1)*A018252(n+2)*record[A020639(n+2)]`
-/

namespace A331999.P937305106493095995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A018252 (n + 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331999.P937305106493095995

namespace A331999

/-- `(n+1)*A018252(n+2)*record[A020639(n+2)]` -/
def P937305106493095995.Spec : Prop :=
  ∀ n, P937305106493095995.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P18264594805645533192

`(record[A000010(n+1)]+1)*(n+1)*A018252(n+2)`
-/

namespace A331999.P18264594805645533192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) * ((n + 1 : ℤ) * A018252 (n + 2))

end

end A331999.P18264594805645533192

namespace A331999

/-- `(record[A000010(n+1)]+1)*(n+1)*A018252(n+2)` -/
def P18264594805645533192.Spec : Prop :=
  ∀ n, P18264594805645533192.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P17201809048189108214

`A067747(2*n+1)*A067747(2*(n+1))*(n+1)`
-/

namespace A331999.P17201809048189108214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) * A067747 (2 * (n + 1)) * (n + 1 : ℤ)

end

end A331999.P17201809048189108214

namespace A331999

/-- `A067747(2*n+1)*A067747(2*(n+1))*(n+1)` -/
def P17201809048189108214.Spec : Prop :=
  ∀ n, P17201809048189108214.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P10151231574981700742

`(n+1)*p?[comp[A018252(n+1)]]*A018252(n+2)`
-/

namespace A331999.P10151231574981700742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A018252 (n + 2)

end

end A331999.P10151231574981700742

namespace A331999

/-- `(n+1)*p?[comp[A018252(n+1)]]*A018252(n+2)` -/
def P10151231574981700742.Spec : Prop :=
  ∀ n, P10151231574981700742.a n = A331999 (n + 1)

end A331999

/-! ## A331999.P1943404736451353755

`(n+1)*A018252(n+2)*record[A014963(n+2)]`
-/

namespace A331999.P1943404736451353755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A018252 (n + 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331999.P1943404736451353755

namespace A331999

/-- `(n+1)*A018252(n+2)*record[A014963(n+2)]` -/
def P1943404736451353755.Spec : Prop :=
  ∀ n, P1943404736451353755.a n = A331999 (n + 1)

end A331999

